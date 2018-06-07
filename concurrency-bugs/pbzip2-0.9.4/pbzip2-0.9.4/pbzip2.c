 *
 * 3. Altered source versions must be plainly marked as such, and must
 *    not be misrepresented as being the original software.
 *
 * 4. The name of the author may not be used to endorse or promote
 *    products derived from this software without specific prior written
 *    permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS
 * OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
 * DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
 * GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 * Jeff Gilchrist, Ottawa, Canada.
 * pbzip2@compression.ca
 * pbzip2 version 0.9.4 of August 30, 2005
 *
 */
#include <vector>
#include <sys/stat.h>
#include <sys/time.h>
#include <errno.h>
#include <fcntl.h>
#include <pthread.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <utime.h>
#include <unistd.h>
#include <bzlib.h>
#ifdef WIN32
#include <windows.h>
#endif

// uncomment for debug output
//#define PBZIP_DEBUG

#ifdef WIN32
#define usleep(x) Sleep(x/1000)
#ifndef _TIMEVAL_DEFINED /* also in winsock[2].h */
#define _TIMEVAL_DEFINED
struct timeval {
  long tv_sec;
  long tv_usec;
};
#endif
#endif

#ifndef WIN32
#define	FILE_MODE	(S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH)
#else
#define	FILE_MODE	(S_IRUSR | S_IWUSR )
#endif

#ifndef O_BINARY
#define O_BINARY 0
#endif

typedef struct
{
	char *buf;
	unsigned int bufSize;
} outBuff;

typedef struct
{
	char **buf;
	unsigned int *bufSize;
	int *blockNum;
	long head, tail;
	int full, empty;
	pthread_mutex_t *mut;
	pthread_cond_t *notFull, *notEmpty;
} queue;

typedef struct
{
	off_t dataStart;
	off_t dataSize;
} bz2BlockListing;

//
// GLOBALS
//
static int allDone = 0;
static int QUEUESIZE = 2;
static int NumBlocks = 0;
static int Verbosity = 0;
static int QuietMode = 0;
static int OutputStdOut = 0;
static int BWTblockSize = 9;
static int FileListCount = 0;
static std::vector <outBuff> OutputBuffer;
static pthread_mutex_t *OutMutex = NULL;
static pthread_mutex_t *MemMutex = NULL;
static struct stat fileMetaData;
static char *sigInFilename = NULL;
static char *sigOutFilename = NULL;
static char BWTblockSizeChar = '9';


void mySignalCatcher(int);
char *memstr(char *, int, char *, int);
int producer_decompress(int, off_t, queue *);
void *consumer_decompress(void *);
void *fileWriter(void *);
int producer(int, int, off_t, int, queue *);
void *consumer(void *);
queue *queueInit(int);
void queueDelete(queue *);
void queueAdd(queue *, char *, unsigned int, int);
char *queueDel(queue *, unsigned int *, int *);
int getFileMetaData(char *);
int writeFileMetaData(char *);
int testBZ2ErrorHandling(int, BZFILE *, int);
int testCompressedData(char *);


/*
 *********************************************************
 */
void mySignalCatcher(int n)
{
	struct stat statBuf;
	int ret = 0;

	fprintf(stderr, "\n *Control-C or similar caught, quitting...\n");
	#ifdef PBZIP_DEBUG
	fprintf(stderr, " Infile: %s   Outfile: %s\n", sigInFilename, sigOutFilename);
	#endif

	// only cleanup files if we did something with them
	if ((sigInFilename == NULL) || (sigOutFilename == NULL))
		exit(1);

	// check to see if input file still exists
	ret = stat(sigInFilename, &statBuf);
	if (ret == 0)
	{
		// only want to remove output file if input still exists
		if (QuietMode != 1)
			fprintf(stderr, "Deleting output file: %s, if it exists...\n", sigOutFilename);
		ret = remove(sigOutFilename);
		if (ret != 0)
			fprintf(stderr, " *WARNING: Deletion of output file (apparently) failed.\n");
	}
	else
	{
		fprintf(stderr, " *WARNING: Output file was not deleted since input file no longer exists.\n");
		fprintf(stderr, " *WARNING: Output file: %s, may be incomplete!\n", sigOutFilename);
	}

	exit(1);
}

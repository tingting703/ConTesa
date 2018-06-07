#include <unistd.h>
#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>

#define TIMES 10000

/* the number of threads */
int num_threads;

/* a mutex */
pthread_mutex_t lock;

/* a linked list node */
struct node_t {
  int data;
  struct node_t* next;
};


/* add an element at front of list */
void list_insert(struct node_t** head, int data) {
  struct node_t* new = malloc(sizeof(struct node_t));
  new->data = data;
  new->next = *head;
  *head = new;
}

/* check if an element is in the list */
int list_member(struct node_t* head, int data) {
  struct node_t* current = head;
  while (current) {
    if (current->data == data) {
      return 1;
    }
    current = current->next;
  }
  return 0;
}

/* remove the first instance of an element from a list */
void list_remove(struct node_t** head, int data) {
  struct node_t* previous = NULL;
  struct node_t* current = *head;
  while (current) {
    if (current->data == data) {
      if (previous) {
        previous->next = current->next;
      } else {
        *head = current->next;
      }
      free(current);
      return;
    }
    current = current->next;
  }
}

/* print a linked list to the screen */
/*void list_print(struct node_t* head) {
  struct node_t* current = head;
  while (current) {
    printf("%d ", current->data);
    current = current->next;
  }
  printf("\n");
}*/

/* our list is global */
struct node_t* head = NULL;

/* thread function which inserts and removes elements */
void* writer(void* idp) {
  /* continually insert and remove items */
  int i;
  unsigned int seed = 0;
  for (i = 0; i< TIMES; i++) {
    pthread_mutex_lock(&lock);
    list_insert(&head, rand_r(&seed) % 100);
    list_remove(&head, rand_r(&seed) % 100);
    list_remove(&head, rand_r(&seed) % 100);
    list_remove(&head, rand_r(&seed) % 100);
    pthread_mutex_unlock(&lock);
  }

  return NULL;
}

/* thread function which tests if elements are in the list */
void* reader(void* idp) {
  /* continually print the list */
  int i;
  int count = 0;
  unsigned int seed = 0;
  for (i = 0; i< TIMES; i++) {
    pthread_mutex_lock(&lock);
    count += list_member(head, rand_r(&seed) % 100);
    pthread_mutex_unlock(&lock);
  }

  //printf("Count = %d.\n", count);
  return NULL;
}

int main (int argc, char** argv) {
  /* get the number of threads */
  if (argc < 2) {
    printf("Pass the number of threads to use!\n");
    return 0;
  } else {
    num_threads = atoi(argv[1]);
  }

  /* an array of threads */
  pthread_t threads[num_threads];
  pthread_mutex_init(&lock, NULL);
  int i;

  /* spawn one writer thread */
  pthread_create(&threads[0], NULL, writer, NULL);

  /* spawn all reader threads */
  for (i = 1; i < num_threads; i++) {
    pthread_create(&threads[i], NULL, reader, NULL);
  }

  /* join all threads collecting answer */
  for (i = 0; i < num_threads; i++) {
    pthread_join(threads[i], (void**) NULL);
  }

  return 0;
}

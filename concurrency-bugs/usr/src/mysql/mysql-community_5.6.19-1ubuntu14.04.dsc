Format: 3.0 (quilt)
Source: mysql-community
Binary: mysql-server, mysql-community-server, mysql-client, mysql-community-client, libmysqlclient18, mysql-common, libmysqlclient-dev, libmysqld-dev, mysql-testsuite, mysql-community-test, mysql-community-bench, mysql-community-source
Architecture: any
Version: 5.6.19-1ubuntu14.04
Maintainer: MySQL Release Engineering <mysql-build@oss.oracle.com>
Homepage: http://www.mysql.com/
Standards-Version: 3.9.5
Build-Depends: debhelper (>= 8.0.0), libaio-dev [linux-any], libncurses5-dev (>= 5.0-6), perl, zlib1g-dev (>= 1:1.1.3-5), po-debconf, psmisc, bison, dh-apparmor, lsb-release, cmake
Package-List: 
 libmysqlclient-dev deb libdevel optional
 libmysqlclient18 deb libs optional
 libmysqld-dev deb libdevel optional
 mysql-client deb database optional
 mysql-common deb database optional
 mysql-community-bench deb database optional
 mysql-community-client deb database optional
 mysql-community-server deb database optional
 mysql-community-source deb database optional
 mysql-community-test deb database optional
 mysql-server deb database optional
 mysql-testsuite deb database optional
Checksums-Sha1: 
 855daa32a25d652384dc76818b57ca3f018bac0f 32914684 mysql-community_5.6.19.orig.tar.gz
 5f55416ff34f9082ffa5c55024cc74ffa9017095 71096832 mysql-community_5.6.19-1ubuntu14.04.debian.tar.gz
Checksums-Sha256: 
 c158dc70138bf980e31ccf630af444ee5925bdc6a60e6633ed2c258227efd328 32914684 mysql-community_5.6.19.orig.tar.gz
 f9f05bfc1b578ecb0693d94e7c2adccbc410f51e9c92b1e1536de7b23bd3e76e 71096832 mysql-community_5.6.19-1ubuntu14.04.debian.tar.gz
Files: 
 30ccbc92de4b6fcc14a8df02b77be05a 32914684 mysql-community_5.6.19.orig.tar.gz
 4441d44d8f974e6543083378049fad2f 71096832 mysql-community_5.6.19-1ubuntu14.04.debian.tar.gz

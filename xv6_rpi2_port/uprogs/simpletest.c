#include "param.h"
#include "types.h"
#include "stat.h"
#include "user.h"
#include "fs.h"
#include "fcntl.h"
#include "syscall.h"
#include "traps.h"
#include "memlayout.h"


main(int argc, char *argv[])
{
  int fd = 1;
  char c[] = "hello";
  int n = 1;
  int pid;
  int ticks = 2;
  int p[2];
  struct stat s;
  char *dir = "testdir";

  write(fd, &c, n);
  fd = open("small", O_CREATE|O_RDWR);
  fstat(fd, &s);
  read(fd, &c, n);
  dup(fd);
  close(fd);
  sleep(ticks);
  getpid();
  pipe(p);
  mkdir(dir);
  chdir(dir);
  sbrk(n);
  mknod(c, n, ticks);
  unlink("O_RDWR");
  link(dir,c);
  pid = fork();
  getpid();
  wait();
  kill(pid);
  exit();
}

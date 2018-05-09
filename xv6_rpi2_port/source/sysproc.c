#include "types.h"
#include "arm.h"
#include "defs.h"
#include "param.h"
#include "memlayout.h"
#include "mmu.h"
#include "proc.h"

int
sys_fork(void)
{
  if(curr_proc->trace == 1){
    cprintf("[%d]sys_fork()\n",curr_proc->pid);
  }
  return fork();
}

int
sys_exit(void)
{
  if(curr_proc->trace == 1){
    cprintf("[%d]sys_exit()\n",curr_proc->pid);
  }
  exit();
  return 0;  // not reached
}

int
sys_wait(void)
{
  if(curr_proc->trace == 1){
    cprintf("[%d]sys_wait()\n",curr_proc->pid);
  }
  return wait();
}

int
sys_kill(void)
{
  int pid;
  int argint_status=argint(0, &pid);

  if(curr_proc->trace == 1){  
    cprintf("[%d]sys_kill(%d)\n",curr_proc->pid, pid);
  }

  if(argint_status < 0)
    return -1;
  return kill(pid);
}

int
sys_getpid(void)
{
  if(curr_proc->trace == 1){
    cprintf("[%d]sys_getpid()\n",curr_proc->pid);
  }
  return curr_proc->pid;
}

int
sys_sbrk(void)
{
  int addr;
  int n;
  int argint_status=argint(0, &n);

  if(curr_proc->trace == 1){
    cprintf("[%d]sys_sbrk(%d)\n",curr_proc->pid,n);
  }
  if(argint_status < 0)
    return -1;
  addr = curr_proc->sz;
  if(growproc(n) < 0)
    return -1;
  return addr;
}

int
sys_sleep(void)
{
  int n;
  uint ticks0;
  acquire(&tickslock);
  ticks0 = ticks;
  int argint_status=argint(0, &n);

  if(curr_proc->trace == 1){
    cprintf("[%d]sys_sleep(%d)\n",curr_proc->pid,ticks0);
  }

  if(argint_status < 0)
    return -1;
  while(ticks - ticks0 < n){
    if(curr_proc->killed){
      release(&tickslock);
      return -1;
    }
    sleep(&ticks, &tickslock);
  }
  release(&tickslock);
  return 0;
}

// return how many clock tick interrupts have occurred
// since start.
int
sys_uptime(void)
{
  uint xticks;
  
  acquire(&tickslock);
  xticks = ticks;
  release(&tickslock);
  return xticks;
}

int 
sys_memfree(void) 
{ 
  if(curr_proc->trace == 1){
    cprintf("[%d]sys_memfree()\n",curr_proc->pid);
  }
  return kmemfree(); 
}

int 
sys_trace(void) 
{ 
  if(curr_proc->trace == 1){
    cprintf("[%d]sys_trace()\n",curr_proc->pid);
  }
  return trace(); 
}
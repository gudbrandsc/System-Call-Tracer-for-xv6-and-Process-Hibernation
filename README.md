## A System Call Tracer for xv6 and Process Hibernation

For this project you are going to be working at the user level and kernel level in the xv6 Operating System:

https://pdos.csail.mit.edu/6.828/2017/xv6.html

The original version from MIT only works on x86 computers and emulators. We are going to be using a port of xv6 to the ARMv7 processor and Raspberry Pi hardware:

https://github.com/zhiyihuang/xv6_rpi2_port

A USF Student, Siwadon Saosoong, has written an xmodem-based compession boot loader called rpi-xboot:

https://github.com/idewz/rpi-xboot

We will be using this boot loader to send our modified xv6 kernels directly to the Raspberry Pi over the UART USB serial cable. The kernel will run directly on the Raspberry Pi, there is no other OS kernel running.

### Part 1 - Setup your build environment and SD Card for booting kernels

Follow the instruction here:
https://github.com/idewz/rpi-xboot

These instructions assume that you have a dedicated SD Card for the rpi-xboot bootloader. If you want to preserve your Raspbian install on your SD card, folllow these steps.

If you download the ARM toolchain:
https://developer.arm.com/open-source/gnu-toolchain/gnu-rm

You should untar the file, e.g., on a Mac:
~~~~
tar xvjf gcc-arm-none-eabi-7-2017-q4-major-mac.tar.bz2
~~~~
 
Move the resulting directory to your home directory, say in ~/opt (Note that ~ is a shortcut for your home directory).

~~~~
$ cd
$ mkdir opt
$ mv ~/Downloads/gcc-arm-none-eabi-7-2017-q4-major-mac .
~~~~
 
Now you need to put the bin directory for the toolchain on your PATH. To do this you need to add  the following line to your ~/.bash_profile:
~~~~
export PATH=$PATH:~/opt/gcc-arm-none-eabi-7-2017-q4-major-mac/bin
~~~~
After you do this you will have to restart your Terminal, or do this:
~~~~
$ source ~/.bash_profile
~~~~

Now, with the toolchain setup you should be able to build both rpi-xboot and xv6-rpi2-port.

For rpi-xboot (clone from: https://github.com/idewz/rpi-xboot)

 
~~~~
$ cd rpi-xboot
$ make
~~~~
 
This will generate a file called:

_bootloader.img_

It will also create a test kernel called:

_uart.img_

To setup your SD Card that already has Raspbian on it, it turns out it should be much simpler than what I talked about in class.

You should just do the following (on a Mac)

 

~~~~
$ cp bootloader.img /Volumes/boot
~~~~

You should create the following _config.txt.xboot_, like this:

 
~~~~
$ cat > /Volumes/boot/config.txt.xboot

kernel_old=1
disable_commandline_tags=1
enable_uart=1
kernel=bootloader.img
^D
$
~~~~

(^D means CTRL-D to end the file).

Now do:

 
~~~~
$ cp /Volumes/boot/config.txt /Volumes/boot/config.txt.raspbian
~~~~
 
In order to switch between xboot and raspbian all you have to do now is copy the specific config.txt.<type> file to config.txt.

To switch to xboot:

 
~~~~
$ cd /Volumes/boot

$ cp config.txt.xboot config.txt
~~~~
 

To switch to raspbian

~~~~
$ cd /Volumes/boot

$ cp config.txt.raspbian config.txt
~~~~
 

That is, the only thing that needs to be changed now is the config.txt file.

You should now try to follow the rpi-xboot instructions (https://github.com/idewz/rpi-xboot) to send the uart test kernel and the xv6 kernel to xboot running on your Raspberry Pi.

Note, you will need to install Python 3, some Python libraries, and the ARM cross build tools.


### Part 2 - A System Call Tracer (strace)

You are going to write a user-level program and kernel support to trace the systems calls made by a process. For example, if you have helloworld:
~~~~
$ strace helloworld
[4] sys_write(1, "Hello, World!\n", 13)
Hello, World!
[4] sys_exit()
$
~~~~

The number in the brackets is the PID of the process you are tracing. You need to show each system call invoked with the arguments passed in.

To implement strace, you will need a way to turn tracing on for a process, then turn it off when the process exits. You can do this after you call fork() to create the process to run the target program and before you call exec. You need to add a new system call, sys_traceon(), that will turn on tracing for the current process.

In the kernel, you need to figure out how system calls work and where to add code to show the trace information.

### Part 3 - Process Hibernation (15 points extra credit and you can submit this by Wed May 16th at 11:59pm)

The main goal of this feature is to provide a command-line program that can suspend a running process and write it's state to disk. Then at a later time you can resume execution of the hibernated process. For example:
~~~~
$ suspend 11 foo.proc
~~~~
This will suspend the process with PID 11 and write it to disk as a file called foo.proc.

Then you can resume foo.proc:
~~~~
$ resume foo.proc
~~~~
When you resume a hibernated process it should resume from where it left off just before the suspend.


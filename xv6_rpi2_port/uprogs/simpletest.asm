
_simpletest:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:

int
main(int argc, char *argv[])
{
  int fd = 1;
  char c[] = "hello";
   0:	e3003c84 	movw	r3, #3204	; 0xc84
   4:	e3403000 	movt	r3, #0
{
   8:	e92d4830 	push	{r4, r5, fp, lr}
   c:	e28db00c 	add	fp, sp, #12
  10:	e24dd028 	sub	sp, sp, #40	; 0x28
  char c[] = "hello";
  14:	e8930003 	ldm	r3, {r0, r1}
  int ticks = 2;
  int p[2];
  struct stat s;
  char *dir = "testdir";

  write(fd,&c,n);
  18:	e3a02001 	mov	r2, #1
  dup(fd);
  close(fd);
  sleep(ticks);
  getpid();
  pipe(p);
  mkdir(dir);
  1c:	e3004c74 	movw	r4, #3188	; 0xc74
  20:	e3404000 	movt	r4, #0
  char c[] = "hello";
  24:	e50b0030 	str	r0, [fp, #-48]	; 0xffffffd0
  write(fd,&c,n);
  28:	e1a00002 	mov	r0, r2
  char c[] = "hello";
  2c:	e14b12bc 	strh	r1, [fp, #-44]	; 0xffffffd4
  write(fd,&c,n);
  30:	e24b1030 	sub	r1, fp, #48	; 0x30
  34:	eb000113 	bl	488 <write>
  fd = open("small", O_CREATE|O_RDWR);
  38:	e3001202 	movw	r1, #514	; 0x202
  3c:	e3000c6c 	movw	r0, #3180	; 0xc6c
  40:	e3400000 	movt	r0, #0
  44:	eb000143 	bl	558 <open>
  fstat(fd,&s);
  48:	e24b1020 	sub	r1, fp, #32
  fd = open("small", O_CREATE|O_RDWR);
  4c:	e1a05000 	mov	r5, r0
  fstat(fd,&s);
  50:	eb000167 	bl	5f4 <fstat>
  read(fd,&c,n);
  54:	e24b1030 	sub	r1, fp, #48	; 0x30
  58:	e3a02001 	mov	r2, #1
  5c:	e1a00005 	mov	r0, r5
  60:	eb0000fb 	bl	454 <read>
  dup(fd);
  64:	e1a00005 	mov	r0, r5
  68:	eb000195 	bl	6c4 <dup>
  close(fd);
  6c:	e1a00005 	mov	r0, r5
  70:	eb000111 	bl	4bc <close>
  sleep(ticks);
  74:	e3a00002 	mov	r0, #2
  78:	eb0001b8 	bl	760 <sleep>
  getpid();
  7c:	eb00019d 	bl	6f8 <getpid>
  pipe(p);
  80:	e24b0028 	sub	r0, fp, #40	; 0x28
  84:	eb0000e5 	bl	420 <pipe>
  mkdir(dir);
  88:	e1a00004 	mov	r0, r4
  8c:	eb000172 	bl	65c <mkdir>
  chdir(dir);
  90:	e1a00004 	mov	r0, r4
  94:	eb00017d 	bl	690 <chdir>
  sbrk(n);
  98:	e3a00001 	mov	r0, #1
  9c:	eb0001a2 	bl	72c <sbrk>
  mknod(c,n,ticks);
  a0:	e3a02002 	mov	r2, #2
  a4:	e3a01001 	mov	r1, #1
  a8:	e24b0030 	sub	r0, fp, #48	; 0x30
  ac:	eb000136 	bl	58c <mknod>
  unlink("O_RDWR");
  b0:	e3000c7c 	movw	r0, #3196	; 0xc7c
  b4:	e3400000 	movt	r0, #0
  b8:	eb000140 	bl	5c0 <unlink>
  link(dir,c);
  bc:	e24b1030 	sub	r1, fp, #48	; 0x30
  c0:	e1a00004 	mov	r0, r4
  c4:	eb000157 	bl	628 <link>


  pid=fork();
  c8:	eb0000ad 	bl	384 <fork>
  cc:	e1a04000 	mov	r4, r0
  getpid();
  d0:	eb000188 	bl	6f8 <getpid>
  wait();
  d4:	eb0000c4 	bl	3ec <wait>
  kill(pid);
  d8:	e1a00004 	mov	r0, r4
  dc:	eb000103 	bl	4f0 <kill>

 
  exit();
  e0:	eb0000b4 	bl	3b8 <exit>

000000e4 <opentest>:
{
  e4:	e92d4800 	push	{fp, lr}
  fd = open("echo", 0);
  e8:	e3000c54 	movw	r0, #3156	; 0xc54
{
  ec:	e28db004 	add	fp, sp, #4
  fd = open("echo", 0);
  f0:	e3a01000 	mov	r1, #0
  f4:	e3400000 	movt	r0, #0
  f8:	eb000116 	bl	558 <open>
  if(fd < 0){
  fc:	e3500000 	cmp	r0, #0
 100:	ba000006 	blt	120 <opentest+0x3c>
  close(fd);
 104:	eb0000ec 	bl	4bc <close>
  fd = open("doesnotexist", 0);
 108:	e3000c5c 	movw	r0, #3164	; 0xc5c
 10c:	e3a01000 	mov	r1, #0
 110:	e3400000 	movt	r0, #0
 114:	eb00010f 	bl	558 <open>
  if(fd >= 0){
 118:	e3500000 	cmp	r0, #0
 11c:	b8bd8800 	poplt	{fp, pc}
    exit();
 120:	eb0000a4 	bl	3b8 <exit>

00000124 <strcpy>:
 124:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 128:	e2402001 	sub	r2, r0, #1
 12c:	e28db000 	add	fp, sp, #0
 130:	e4d13001 	ldrb	r3, [r1], #1
 134:	e3530000 	cmp	r3, #0
 138:	e5e23001 	strb	r3, [r2, #1]!
 13c:	1afffffb 	bne	130 <strcpy+0xc>
 140:	e28bd000 	add	sp, fp, #0
 144:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 148:	e12fff1e 	bx	lr

0000014c <strcmp>:
 14c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 150:	e28db000 	add	fp, sp, #0
 154:	e5d03000 	ldrb	r3, [r0]
 158:	e5d12000 	ldrb	r2, [r1]
 15c:	e3530000 	cmp	r3, #0
 160:	1a000004 	bne	178 <strcmp+0x2c>
 164:	ea000005 	b	180 <strcmp+0x34>
 168:	e5f03001 	ldrb	r3, [r0, #1]!
 16c:	e5f12001 	ldrb	r2, [r1, #1]!
 170:	e3530000 	cmp	r3, #0
 174:	0a000001 	beq	180 <strcmp+0x34>
 178:	e1530002 	cmp	r3, r2
 17c:	0afffff9 	beq	168 <strcmp+0x1c>
 180:	e0430002 	sub	r0, r3, r2
 184:	e28bd000 	add	sp, fp, #0
 188:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 18c:	e12fff1e 	bx	lr

00000190 <strlen>:
 190:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 194:	e28db000 	add	fp, sp, #0
 198:	e5d03000 	ldrb	r3, [r0]
 19c:	e3530000 	cmp	r3, #0
 1a0:	01a00003 	moveq	r0, r3
 1a4:	0a000006 	beq	1c4 <strlen+0x34>
 1a8:	e1a02000 	mov	r2, r0
 1ac:	e3a03000 	mov	r3, #0
 1b0:	e5f21001 	ldrb	r1, [r2, #1]!
 1b4:	e2833001 	add	r3, r3, #1
 1b8:	e3510000 	cmp	r1, #0
 1bc:	e1a00003 	mov	r0, r3
 1c0:	1afffffa 	bne	1b0 <strlen+0x20>
 1c4:	e28bd000 	add	sp, fp, #0
 1c8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 1cc:	e12fff1e 	bx	lr

000001d0 <memset>:
 1d0:	e3520000 	cmp	r2, #0
 1d4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 1d8:	e28db000 	add	fp, sp, #0
 1dc:	0a000004 	beq	1f4 <memset+0x24>
 1e0:	e6ef1071 	uxtb	r1, r1
 1e4:	e0802002 	add	r2, r0, r2
 1e8:	e4c01001 	strb	r1, [r0], #1
 1ec:	e1520000 	cmp	r2, r0
 1f0:	1afffffc 	bne	1e8 <memset+0x18>
 1f4:	e28bd000 	add	sp, fp, #0
 1f8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 1fc:	e12fff1e 	bx	lr

00000200 <strchr>:
 200:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 204:	e28db000 	add	fp, sp, #0
 208:	e5d02000 	ldrb	r2, [r0]
 20c:	e3520000 	cmp	r2, #0
 210:	0a00000b 	beq	244 <strchr+0x44>
 214:	e1510002 	cmp	r1, r2
 218:	1a000002 	bne	228 <strchr+0x28>
 21c:	ea000005 	b	238 <strchr+0x38>
 220:	e1530001 	cmp	r3, r1
 224:	0a000003 	beq	238 <strchr+0x38>
 228:	e5f03001 	ldrb	r3, [r0, #1]!
 22c:	e3530000 	cmp	r3, #0
 230:	1afffffa 	bne	220 <strchr+0x20>
 234:	e1a00003 	mov	r0, r3
 238:	e28bd000 	add	sp, fp, #0
 23c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 240:	e12fff1e 	bx	lr
 244:	e1a00002 	mov	r0, r2
 248:	eafffffa 	b	238 <strchr+0x38>

0000024c <gets>:
 24c:	e92d48f0 	push	{r4, r5, r6, r7, fp, lr}
 250:	e1a03000 	mov	r3, r0
 254:	e28db014 	add	fp, sp, #20
 258:	e1a07000 	mov	r7, r0
 25c:	e24dd008 	sub	sp, sp, #8
 260:	e1a06001 	mov	r6, r1
 264:	e3a04000 	mov	r4, #0
 268:	ea000008 	b	290 <gets+0x44>
 26c:	eb000078 	bl	454 <read>
 270:	e1a03005 	mov	r3, r5
 274:	e3500000 	cmp	r0, #0
 278:	da00000b 	ble	2ac <gets+0x60>
 27c:	e55b2015 	ldrb	r2, [fp, #-21]	; 0xffffffeb
 280:	e352000d 	cmp	r2, #13
 284:	1352000a 	cmpne	r2, #10
 288:	e4c32001 	strb	r2, [r3], #1
 28c:	0a00000b 	beq	2c0 <gets+0x74>
 290:	e3a02001 	mov	r2, #1
 294:	e0844002 	add	r4, r4, r2
 298:	e1540006 	cmp	r4, r6
 29c:	e24b1015 	sub	r1, fp, #21
 2a0:	e3a00000 	mov	r0, #0
 2a4:	e1a05003 	mov	r5, r3
 2a8:	baffffef 	blt	26c <gets+0x20>
 2ac:	e1a00007 	mov	r0, r7
 2b0:	e3a03000 	mov	r3, #0
 2b4:	e5c53000 	strb	r3, [r5]
 2b8:	e24bd014 	sub	sp, fp, #20
 2bc:	e8bd88f0 	pop	{r4, r5, r6, r7, fp, pc}
 2c0:	e0875004 	add	r5, r7, r4
 2c4:	eafffff8 	b	2ac <gets+0x60>

000002c8 <stat>:
 2c8:	e92d4830 	push	{r4, r5, fp, lr}
 2cc:	e1a04001 	mov	r4, r1
 2d0:	e28db00c 	add	fp, sp, #12
 2d4:	e3a01000 	mov	r1, #0
 2d8:	eb00009e 	bl	558 <open>
 2dc:	e2505000 	subs	r5, r0, #0
 2e0:	ba000006 	blt	300 <stat+0x38>
 2e4:	e1a01004 	mov	r1, r4
 2e8:	eb0000c1 	bl	5f4 <fstat>
 2ec:	e1a04000 	mov	r4, r0
 2f0:	e1a00005 	mov	r0, r5
 2f4:	eb000070 	bl	4bc <close>
 2f8:	e1a00004 	mov	r0, r4
 2fc:	e8bd8830 	pop	{r4, r5, fp, pc}
 300:	e3e04000 	mvn	r4, #0
 304:	eafffffb 	b	2f8 <stat+0x30>

00000308 <atoi>:
 308:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 30c:	e28db000 	add	fp, sp, #0
 310:	e5d02000 	ldrb	r2, [r0]
 314:	e2423030 	sub	r3, r2, #48	; 0x30
 318:	e3530009 	cmp	r3, #9
 31c:	e3a03000 	mov	r3, #0
 320:	8a000006 	bhi	340 <atoi+0x38>
 324:	e3a0c00a 	mov	ip, #10
 328:	e023239c 	mla	r3, ip, r3, r2
 32c:	e5f02001 	ldrb	r2, [r0, #1]!
 330:	e2421030 	sub	r1, r2, #48	; 0x30
 334:	e3510009 	cmp	r1, #9
 338:	e2433030 	sub	r3, r3, #48	; 0x30
 33c:	9afffff9 	bls	328 <atoi+0x20>
 340:	e1a00003 	mov	r0, r3
 344:	e28bd000 	add	sp, fp, #0
 348:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 34c:	e12fff1e 	bx	lr

00000350 <memmove>:
 350:	e3520000 	cmp	r2, #0
 354:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 358:	e28db000 	add	fp, sp, #0
 35c:	da000005 	ble	378 <memmove+0x28>
 360:	e0812002 	add	r2, r1, r2
 364:	e2403001 	sub	r3, r0, #1
 368:	e4d1c001 	ldrb	ip, [r1], #1
 36c:	e1510002 	cmp	r1, r2
 370:	e5e3c001 	strb	ip, [r3, #1]!
 374:	1afffffb 	bne	368 <memmove+0x18>
 378:	e28bd000 	add	sp, fp, #0
 37c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 380:	e12fff1e 	bx	lr

00000384 <fork>:
 384:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 388:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 38c:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 390:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 394:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 398:	e3a00001 	mov	r0, #1
 39c:	ef000040 	svc	0x00000040
 3a0:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 3a4:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 3a8:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 3ac:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 3b0:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 3b4:	e12fff1e 	bx	lr

000003b8 <exit>:
 3b8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 3bc:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 3c0:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 3c4:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 3c8:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 3cc:	e3a00002 	mov	r0, #2
 3d0:	ef000040 	svc	0x00000040
 3d4:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 3d8:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 3dc:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 3e0:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 3e4:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 3e8:	e12fff1e 	bx	lr

000003ec <wait>:
 3ec:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 3f0:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 3f4:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 3f8:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 3fc:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 400:	e3a00003 	mov	r0, #3
 404:	ef000040 	svc	0x00000040
 408:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 40c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 410:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 414:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 418:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 41c:	e12fff1e 	bx	lr

00000420 <pipe>:
 420:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 424:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 428:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 42c:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 430:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 434:	e3a00004 	mov	r0, #4
 438:	ef000040 	svc	0x00000040
 43c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 440:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 444:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 448:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 44c:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 450:	e12fff1e 	bx	lr

00000454 <read>:
 454:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 458:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 45c:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 460:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 464:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 468:	e3a00005 	mov	r0, #5
 46c:	ef000040 	svc	0x00000040
 470:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 474:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 478:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 47c:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 480:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 484:	e12fff1e 	bx	lr

00000488 <write>:
 488:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 48c:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 490:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 494:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 498:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 49c:	e3a00010 	mov	r0, #16
 4a0:	ef000040 	svc	0x00000040
 4a4:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 4a8:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 4ac:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 4b0:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 4b4:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 4b8:	e12fff1e 	bx	lr

000004bc <close>:
 4bc:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 4c0:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 4c4:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 4c8:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 4cc:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 4d0:	e3a00015 	mov	r0, #21
 4d4:	ef000040 	svc	0x00000040
 4d8:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 4dc:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 4e0:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 4e4:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 4e8:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 4ec:	e12fff1e 	bx	lr

000004f0 <kill>:
 4f0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 4f4:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 4f8:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 4fc:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 500:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 504:	e3a00006 	mov	r0, #6
 508:	ef000040 	svc	0x00000040
 50c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 510:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 514:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 518:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 51c:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 520:	e12fff1e 	bx	lr

00000524 <exec>:
 524:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 528:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 52c:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 530:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 534:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 538:	e3a00007 	mov	r0, #7
 53c:	ef000040 	svc	0x00000040
 540:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 544:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 548:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 54c:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 550:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 554:	e12fff1e 	bx	lr

00000558 <open>:
 558:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 55c:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 560:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 564:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 568:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 56c:	e3a0000f 	mov	r0, #15
 570:	ef000040 	svc	0x00000040
 574:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 578:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 57c:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 580:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 584:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 588:	e12fff1e 	bx	lr

0000058c <mknod>:
 58c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 590:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 594:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 598:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 59c:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 5a0:	e3a00011 	mov	r0, #17
 5a4:	ef000040 	svc	0x00000040
 5a8:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 5ac:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 5b0:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 5b4:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 5b8:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 5bc:	e12fff1e 	bx	lr

000005c0 <unlink>:
 5c0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 5c4:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 5c8:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 5cc:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 5d0:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 5d4:	e3a00012 	mov	r0, #18
 5d8:	ef000040 	svc	0x00000040
 5dc:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 5e0:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 5e4:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 5e8:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 5ec:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 5f0:	e12fff1e 	bx	lr

000005f4 <fstat>:
 5f4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 5f8:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 5fc:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 600:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 604:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 608:	e3a00008 	mov	r0, #8
 60c:	ef000040 	svc	0x00000040
 610:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 614:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 618:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 61c:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 620:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 624:	e12fff1e 	bx	lr

00000628 <link>:
 628:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 62c:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 630:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 634:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 638:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 63c:	e3a00013 	mov	r0, #19
 640:	ef000040 	svc	0x00000040
 644:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 648:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 64c:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 650:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 654:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 658:	e12fff1e 	bx	lr

0000065c <mkdir>:
 65c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 660:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 664:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 668:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 66c:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 670:	e3a00014 	mov	r0, #20
 674:	ef000040 	svc	0x00000040
 678:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 67c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 680:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 684:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 688:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 68c:	e12fff1e 	bx	lr

00000690 <chdir>:
 690:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 694:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 698:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 69c:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 6a0:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 6a4:	e3a00009 	mov	r0, #9
 6a8:	ef000040 	svc	0x00000040
 6ac:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 6b0:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 6b4:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 6b8:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 6bc:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 6c0:	e12fff1e 	bx	lr

000006c4 <dup>:
 6c4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 6c8:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 6cc:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 6d0:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 6d4:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 6d8:	e3a0000a 	mov	r0, #10
 6dc:	ef000040 	svc	0x00000040
 6e0:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 6e4:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 6e8:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 6ec:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 6f0:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 6f4:	e12fff1e 	bx	lr

000006f8 <getpid>:
 6f8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 6fc:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 700:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 704:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 708:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 70c:	e3a0000b 	mov	r0, #11
 710:	ef000040 	svc	0x00000040
 714:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 718:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 71c:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 720:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 724:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 728:	e12fff1e 	bx	lr

0000072c <sbrk>:
 72c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 730:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 734:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 738:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 73c:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 740:	e3a0000c 	mov	r0, #12
 744:	ef000040 	svc	0x00000040
 748:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 74c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 750:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 754:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 758:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 75c:	e12fff1e 	bx	lr

00000760 <sleep>:
 760:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 764:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 768:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 76c:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 770:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 774:	e3a0000d 	mov	r0, #13
 778:	ef000040 	svc	0x00000040
 77c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 780:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 784:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 788:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 78c:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 790:	e12fff1e 	bx	lr

00000794 <uptime>:
 794:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 798:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 79c:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 7a0:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 7a4:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 7a8:	e3a0000e 	mov	r0, #14
 7ac:	ef000040 	svc	0x00000040
 7b0:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 7b4:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 7b8:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 7bc:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 7c0:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 7c4:	e12fff1e 	bx	lr

000007c8 <memfree>:
 7c8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 7cc:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 7d0:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 7d4:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 7d8:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 7dc:	e3a00016 	mov	r0, #22
 7e0:	ef000040 	svc	0x00000040
 7e4:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 7e8:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 7ec:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 7f0:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 7f4:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 7f8:	e12fff1e 	bx	lr

000007fc <trace>:
 7fc:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 800:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 804:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 808:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 80c:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 810:	e3a00017 	mov	r0, #23
 814:	ef000040 	svc	0x00000040
 818:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 81c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 820:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 824:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 828:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 82c:	e12fff1e 	bx	lr

00000830 <printint>:
 830:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 834:	e28db020 	add	fp, sp, #32
 838:	e013afa1 	ands	sl, r3, r1, lsr #31
 83c:	e24b4034 	sub	r4, fp, #52	; 0x34
 840:	e3009ca0 	movw	r9, #3232	; 0xca0
 844:	1261e000 	rsbne	lr, r1, #0
 848:	e3409000 	movt	r9, #0
 84c:	e1a05000 	mov	r5, r0
 850:	13a0a001 	movne	sl, #1
 854:	01a0e001 	moveq	lr, r1
 858:	e3a08000 	mov	r8, #0
 85c:	e1a07004 	mov	r7, r4
 860:	e3a06001 	mov	r6, #1
 864:	e24dd01c 	sub	sp, sp, #28
 868:	e3a0c000 	mov	ip, #0
 86c:	e3a0301f 	mov	r3, #31
 870:	e1a0100c 	mov	r1, ip
 874:	e1a0033e 	lsr	r0, lr, r3
 878:	e2000001 	and	r0, r0, #1
 87c:	e1801081 	orr	r1, r0, r1, lsl #1
 880:	e1520001 	cmp	r2, r1
 884:	90411002 	subls	r1, r1, r2
 888:	918cc316 	orrls	ip, ip, r6, lsl r3
 88c:	e2533001 	subs	r3, r3, #1
 890:	2afffff7 	bcs	874 <printint+0x44>
 894:	e061e29c 	mls	r1, ip, r2, lr
 898:	e35c0000 	cmp	ip, #0
 89c:	e1a0e00c 	mov	lr, ip
 8a0:	e2883001 	add	r3, r8, #1
 8a4:	e7d91001 	ldrb	r1, [r9, r1]
 8a8:	e4c71001 	strb	r1, [r7], #1
 8ac:	11a08003 	movne	r8, r3
 8b0:	1affffec 	bne	868 <printint+0x38>
 8b4:	e35a0000 	cmp	sl, #0
 8b8:	0a000004 	beq	8d0 <printint+0xa0>
 8bc:	e24b2024 	sub	r2, fp, #36	; 0x24
 8c0:	e3a0102d 	mov	r1, #45	; 0x2d
 8c4:	e0822003 	add	r2, r2, r3
 8c8:	e2883002 	add	r3, r8, #2
 8cc:	e5421010 	strb	r1, [r2, #-16]
 8d0:	e0846003 	add	r6, r4, r3
 8d4:	e5763001 	ldrb	r3, [r6, #-1]!
 8d8:	e3a02001 	mov	r2, #1
 8dc:	e24b1035 	sub	r1, fp, #53	; 0x35
 8e0:	e1a00005 	mov	r0, r5
 8e4:	e54b3035 	strb	r3, [fp, #-53]	; 0xffffffcb
 8e8:	ebfffee6 	bl	488 <write>
 8ec:	e1540006 	cmp	r4, r6
 8f0:	1afffff7 	bne	8d4 <printint+0xa4>
 8f4:	e24bd020 	sub	sp, fp, #32
 8f8:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

000008fc <div>:
 8fc:	e92d4810 	push	{r4, fp, lr}
 900:	e3a02000 	mov	r2, #0
 904:	e28db008 	add	fp, sp, #8
 908:	e1a0e000 	mov	lr, r0
 90c:	e3a0301f 	mov	r3, #31
 910:	e1a00002 	mov	r0, r2
 914:	e3a04001 	mov	r4, #1
 918:	e1a0c33e 	lsr	ip, lr, r3
 91c:	e20cc001 	and	ip, ip, #1
 920:	e18c2082 	orr	r2, ip, r2, lsl #1
 924:	e1520001 	cmp	r2, r1
 928:	20422001 	subcs	r2, r2, r1
 92c:	21800314 	orrcs	r0, r0, r4, lsl r3
 930:	e2533001 	subs	r3, r3, #1
 934:	38bd8810 	popcc	{r4, fp, pc}
 938:	eafffff6 	b	918 <div+0x1c>

0000093c <printf>:
 93c:	e92d000e 	push	{r1, r2, r3}
 940:	e92d49f0 	push	{r4, r5, r6, r7, r8, fp, lr}
 944:	e28db018 	add	fp, sp, #24
 948:	e24dd008 	sub	sp, sp, #8
 94c:	e59b5004 	ldr	r5, [fp, #4]
 950:	e5d54000 	ldrb	r4, [r5]
 954:	e3540000 	cmp	r4, #0
 958:	0a00002b 	beq	a0c <printf+0xd0>
 95c:	e1a07000 	mov	r7, r0
 960:	e28b8008 	add	r8, fp, #8
 964:	e3a06000 	mov	r6, #0
 968:	ea00000a 	b	998 <printf+0x5c>
 96c:	e3540025 	cmp	r4, #37	; 0x25
 970:	01a06004 	moveq	r6, r4
 974:	0a000004 	beq	98c <printf+0x50>
 978:	e24b1018 	sub	r1, fp, #24
 97c:	e3a02001 	mov	r2, #1
 980:	e1a00007 	mov	r0, r7
 984:	e5614006 	strb	r4, [r1, #-6]!
 988:	ebfffebe 	bl	488 <write>
 98c:	e5f54001 	ldrb	r4, [r5, #1]!
 990:	e3540000 	cmp	r4, #0
 994:	0a00001c 	beq	a0c <printf+0xd0>
 998:	e3560000 	cmp	r6, #0
 99c:	0afffff2 	beq	96c <printf+0x30>
 9a0:	e3560025 	cmp	r6, #37	; 0x25
 9a4:	1afffff8 	bne	98c <printf+0x50>
 9a8:	e3540064 	cmp	r4, #100	; 0x64
 9ac:	0a000030 	beq	a74 <printf+0x138>
 9b0:	e20430f7 	and	r3, r4, #247	; 0xf7
 9b4:	e3530070 	cmp	r3, #112	; 0x70
 9b8:	0a000017 	beq	a1c <printf+0xe0>
 9bc:	e3540073 	cmp	r4, #115	; 0x73
 9c0:	0a00001c 	beq	a38 <printf+0xfc>
 9c4:	e3540063 	cmp	r4, #99	; 0x63
 9c8:	0a000037 	beq	aac <printf+0x170>
 9cc:	e3540025 	cmp	r4, #37	; 0x25
 9d0:	0a00002e 	beq	a90 <printf+0x154>
 9d4:	e3a02001 	mov	r2, #1
 9d8:	e24b1019 	sub	r1, fp, #25
 9dc:	e1a00007 	mov	r0, r7
 9e0:	e54b6019 	strb	r6, [fp, #-25]	; 0xffffffe7
 9e4:	ebfffea7 	bl	488 <write>
 9e8:	e3a02001 	mov	r2, #1
 9ec:	e24b101a 	sub	r1, fp, #26
 9f0:	e1a00007 	mov	r0, r7
 9f4:	e54b401a 	strb	r4, [fp, #-26]	; 0xffffffe6
 9f8:	ebfffea2 	bl	488 <write>
 9fc:	e5f54001 	ldrb	r4, [r5, #1]!
 a00:	e3a06000 	mov	r6, #0
 a04:	e3540000 	cmp	r4, #0
 a08:	1affffe2 	bne	998 <printf+0x5c>
 a0c:	e24bd018 	sub	sp, fp, #24
 a10:	e8bd49f0 	pop	{r4, r5, r6, r7, r8, fp, lr}
 a14:	e28dd00c 	add	sp, sp, #12
 a18:	e12fff1e 	bx	lr
 a1c:	e3a03000 	mov	r3, #0
 a20:	e3a02010 	mov	r2, #16
 a24:	e4981004 	ldr	r1, [r8], #4
 a28:	e1a00007 	mov	r0, r7
 a2c:	ebffff7f 	bl	830 <printint>
 a30:	e3a06000 	mov	r6, #0
 a34:	eaffffd4 	b	98c <printf+0x50>
 a38:	e4984004 	ldr	r4, [r8], #4
 a3c:	e3540000 	cmp	r4, #0
 a40:	0a000021 	beq	acc <printf+0x190>
 a44:	e5d46000 	ldrb	r6, [r4]
 a48:	e3560000 	cmp	r6, #0
 a4c:	0affffce 	beq	98c <printf+0x50>
 a50:	e3a02001 	mov	r2, #1
 a54:	e24b101d 	sub	r1, fp, #29
 a58:	e1a00007 	mov	r0, r7
 a5c:	e54b601d 	strb	r6, [fp, #-29]	; 0xffffffe3
 a60:	ebfffe88 	bl	488 <write>
 a64:	e5f46001 	ldrb	r6, [r4, #1]!
 a68:	e3560000 	cmp	r6, #0
 a6c:	1afffff7 	bne	a50 <printf+0x114>
 a70:	eaffffc5 	b	98c <printf+0x50>
 a74:	e3a03001 	mov	r3, #1
 a78:	e3a0200a 	mov	r2, #10
 a7c:	e4981004 	ldr	r1, [r8], #4
 a80:	e1a00007 	mov	r0, r7
 a84:	ebffff69 	bl	830 <printint>
 a88:	e3a06000 	mov	r6, #0
 a8c:	eaffffbe 	b	98c <printf+0x50>
 a90:	e24b1018 	sub	r1, fp, #24
 a94:	e3a02001 	mov	r2, #1
 a98:	e1a00007 	mov	r0, r7
 a9c:	e5616003 	strb	r6, [r1, #-3]!
 aa0:	e3a06000 	mov	r6, #0
 aa4:	ebfffe77 	bl	488 <write>
 aa8:	eaffffb7 	b	98c <printf+0x50>
 aac:	e4983004 	ldr	r3, [r8], #4
 ab0:	e24b1018 	sub	r1, fp, #24
 ab4:	e3a02001 	mov	r2, #1
 ab8:	e1a00007 	mov	r0, r7
 abc:	e3a06000 	mov	r6, #0
 ac0:	e5613004 	strb	r3, [r1, #-4]!
 ac4:	ebfffe6f 	bl	488 <write>
 ac8:	eaffffaf 	b	98c <printf+0x50>
 acc:	e3004cb4 	movw	r4, #3252	; 0xcb4
 ad0:	e3a06028 	mov	r6, #40	; 0x28
 ad4:	e3404000 	movt	r4, #0
 ad8:	eaffffdc 	b	a50 <printf+0x114>

00000adc <free>:
 adc:	e300ccd4 	movw	ip, #3284	; 0xcd4
 ae0:	e340c000 	movt	ip, #0
 ae4:	e92d4810 	push	{r4, fp, lr}
 ae8:	e2401008 	sub	r1, r0, #8
 aec:	e59c3000 	ldr	r3, [ip]
 af0:	e28db008 	add	fp, sp, #8
 af4:	e1530001 	cmp	r3, r1
 af8:	e5932000 	ldr	r2, [r3]
 afc:	2a000017 	bcs	b60 <free+0x84>
 b00:	e1510002 	cmp	r1, r2
 b04:	3a000001 	bcc	b10 <free+0x34>
 b08:	e1530002 	cmp	r3, r2
 b0c:	3a000017 	bcc	b70 <free+0x94>
 b10:	e510e004 	ldr	lr, [r0, #-4]
 b14:	e58c3000 	str	r3, [ip]
 b18:	e081418e 	add	r4, r1, lr, lsl #3
 b1c:	e1520004 	cmp	r2, r4
 b20:	05922004 	ldreq	r2, [r2, #4]
 b24:	0082e00e 	addeq	lr, r2, lr
 b28:	0500e004 	streq	lr, [r0, #-4]
 b2c:	05932000 	ldreq	r2, [r3]
 b30:	05922000 	ldreq	r2, [r2]
 b34:	e5002008 	str	r2, [r0, #-8]
 b38:	e5932004 	ldr	r2, [r3, #4]
 b3c:	e083e182 	add	lr, r3, r2, lsl #3
 b40:	e151000e 	cmp	r1, lr
 b44:	15831000 	strne	r1, [r3]
 b48:	05101004 	ldreq	r1, [r0, #-4]
 b4c:	00812002 	addeq	r2, r1, r2
 b50:	05832004 	streq	r2, [r3, #4]
 b54:	05102008 	ldreq	r2, [r0, #-8]
 b58:	05832000 	streq	r2, [r3]
 b5c:	e8bd8810 	pop	{r4, fp, pc}
 b60:	e1530002 	cmp	r3, r2
 b64:	3a000001 	bcc	b70 <free+0x94>
 b68:	e1510002 	cmp	r1, r2
 b6c:	3affffe7 	bcc	b10 <free+0x34>
 b70:	e1a03002 	mov	r3, r2
 b74:	eaffffde 	b	af4 <free+0x18>

00000b78 <malloc>:
 b78:	e92d48f0 	push	{r4, r5, r6, r7, fp, lr}
 b7c:	e3007cd4 	movw	r7, #3284	; 0xcd4
 b80:	e3407000 	movt	r7, #0
 b84:	e2804007 	add	r4, r0, #7
 b88:	e28db014 	add	fp, sp, #20
 b8c:	e5973000 	ldr	r3, [r7]
 b90:	e1a041a4 	lsr	r4, r4, #3
 b94:	e2844001 	add	r4, r4, #1
 b98:	e3530000 	cmp	r3, #0
 b9c:	0a000027 	beq	c40 <malloc+0xc8>
 ba0:	e5930000 	ldr	r0, [r3]
 ba4:	e5902004 	ldr	r2, [r0, #4]
 ba8:	e1540002 	cmp	r4, r2
 bac:	9a000019 	bls	c18 <malloc+0xa0>
 bb0:	e3540a01 	cmp	r4, #4096	; 0x1000
 bb4:	21a05004 	movcs	r5, r4
 bb8:	33a05a01 	movcc	r5, #4096	; 0x1000
 bbc:	e1a06185 	lsl	r6, r5, #3
 bc0:	ea000003 	b	bd4 <malloc+0x5c>
 bc4:	e5930000 	ldr	r0, [r3]
 bc8:	e5902004 	ldr	r2, [r0, #4]
 bcc:	e1520004 	cmp	r2, r4
 bd0:	2a000010 	bcs	c18 <malloc+0xa0>
 bd4:	e5972000 	ldr	r2, [r7]
 bd8:	e1a03000 	mov	r3, r0
 bdc:	e1520000 	cmp	r2, r0
 be0:	1afffff7 	bne	bc4 <malloc+0x4c>
 be4:	e1a00006 	mov	r0, r6
 be8:	ebfffecf 	bl	72c <sbrk>
 bec:	e1a03000 	mov	r3, r0
 bf0:	e3730001 	cmn	r3, #1
 bf4:	e2800008 	add	r0, r0, #8
 bf8:	0a000004 	beq	c10 <malloc+0x98>
 bfc:	e5835004 	str	r5, [r3, #4]
 c00:	ebffffb5 	bl	adc <free>
 c04:	e5973000 	ldr	r3, [r7]
 c08:	e3530000 	cmp	r3, #0
 c0c:	1affffec 	bne	bc4 <malloc+0x4c>
 c10:	e3a00000 	mov	r0, #0
 c14:	e8bd88f0 	pop	{r4, r5, r6, r7, fp, pc}
 c18:	e1540002 	cmp	r4, r2
 c1c:	e5873000 	str	r3, [r7]
 c20:	10422004 	subne	r2, r2, r4
 c24:	15802004 	strne	r2, [r0, #4]
 c28:	05902000 	ldreq	r2, [r0]
 c2c:	10800182 	addne	r0, r0, r2, lsl #3
 c30:	e2800008 	add	r0, r0, #8
 c34:	15004004 	strne	r4, [r0, #-4]
 c38:	05832000 	streq	r2, [r3]
 c3c:	e8bd88f0 	pop	{r4, r5, r6, r7, fp, pc}
 c40:	e2870004 	add	r0, r7, #4
 c44:	e5873008 	str	r3, [r7, #8]
 c48:	e5870000 	str	r0, [r7]
 c4c:	e5870004 	str	r0, [r7, #4]
 c50:	eaffffd6 	b	bb0 <malloc+0x38>


_forkexec:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
#include "stat.h" 
#include "user.h" 

int 
main(void) 
{ 
   0:	e92d4800 	push	{fp, lr}
   4:	e28db004 	add	fp, sp, #4
   8:	e24dd010 	sub	sp, sp, #16
    int id; 
    char *argv[4]; 
    char *progname = "hello"; 
    argv[0] = progname; 
    argv[1] = 0; 
   c:	e3a02000 	mov	r2, #0
    argv[0] = progname; 
  10:	e3003b98 	movw	r3, #2968	; 0xb98
    argv[1] = 0; 
  14:	e50b2010 	str	r2, [fp, #-16]
    argv[0] = progname; 
  18:	e3403000 	movt	r3, #0
  1c:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec

    id = fork(); 
  20:	eb0000a8 	bl	2c8 <fork>

    if (id == 0) { 
  24:	e3500000 	cmp	r0, #0
  28:	1a000008 	bne	50 <main+0x50>
        /* we are in the child */ 
       exec("/hello", argv); 
  2c:	e24b1014 	sub	r1, fp, #20
  30:	e3000ba0 	movw	r0, #2976	; 0xba0
  34:	e3400000 	movt	r0, #0
  38:	eb00010a 	bl	468 <exec>
       printf(1, "Child: WE DON'T SEE THIS\n"); 
  3c:	e3001ba8 	movw	r1, #2984	; 0xba8
  40:	e3a00001 	mov	r0, #1
  44:	e3401000 	movt	r1, #0
  48:	eb00020c 	bl	880 <printf>
       exit(); 
  4c:	eb0000aa 	bl	2fc <exit>
    } else { 
        /* we are in the parent */ 
       id = wait(); 
  50:	eb0000b6 	bl	330 <wait>
       printf(1, "Parent: child terminated\n"); 
  54:	e3001bc4 	movw	r1, #3012	; 0xbc4
  58:	e3a00001 	mov	r0, #1
  5c:	e3401000 	movt	r1, #0
  60:	eb000206 	bl	880 <printf>
    } 

    exit(); 
  64:	eb0000a4 	bl	2fc <exit>

00000068 <strcpy>:
  68:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  6c:	e2402001 	sub	r2, r0, #1
  70:	e28db000 	add	fp, sp, #0
  74:	e4d13001 	ldrb	r3, [r1], #1
  78:	e3530000 	cmp	r3, #0
  7c:	e5e23001 	strb	r3, [r2, #1]!
  80:	1afffffb 	bne	74 <strcpy+0xc>
  84:	e28bd000 	add	sp, fp, #0
  88:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  8c:	e12fff1e 	bx	lr

00000090 <strcmp>:
  90:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  94:	e28db000 	add	fp, sp, #0
  98:	e5d03000 	ldrb	r3, [r0]
  9c:	e5d12000 	ldrb	r2, [r1]
  a0:	e3530000 	cmp	r3, #0
  a4:	1a000004 	bne	bc <strcmp+0x2c>
  a8:	ea000005 	b	c4 <strcmp+0x34>
  ac:	e5f03001 	ldrb	r3, [r0, #1]!
  b0:	e5f12001 	ldrb	r2, [r1, #1]!
  b4:	e3530000 	cmp	r3, #0
  b8:	0a000001 	beq	c4 <strcmp+0x34>
  bc:	e1530002 	cmp	r3, r2
  c0:	0afffff9 	beq	ac <strcmp+0x1c>
  c4:	e0430002 	sub	r0, r3, r2
  c8:	e28bd000 	add	sp, fp, #0
  cc:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  d0:	e12fff1e 	bx	lr

000000d4 <strlen>:
  d4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  d8:	e28db000 	add	fp, sp, #0
  dc:	e5d03000 	ldrb	r3, [r0]
  e0:	e3530000 	cmp	r3, #0
  e4:	01a00003 	moveq	r0, r3
  e8:	0a000006 	beq	108 <strlen+0x34>
  ec:	e1a02000 	mov	r2, r0
  f0:	e3a03000 	mov	r3, #0
  f4:	e5f21001 	ldrb	r1, [r2, #1]!
  f8:	e2833001 	add	r3, r3, #1
  fc:	e3510000 	cmp	r1, #0
 100:	e1a00003 	mov	r0, r3
 104:	1afffffa 	bne	f4 <strlen+0x20>
 108:	e28bd000 	add	sp, fp, #0
 10c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 110:	e12fff1e 	bx	lr

00000114 <memset>:
 114:	e3520000 	cmp	r2, #0
 118:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 11c:	e28db000 	add	fp, sp, #0
 120:	0a000004 	beq	138 <memset+0x24>
 124:	e6ef1071 	uxtb	r1, r1
 128:	e0802002 	add	r2, r0, r2
 12c:	e4c01001 	strb	r1, [r0], #1
 130:	e1520000 	cmp	r2, r0
 134:	1afffffc 	bne	12c <memset+0x18>
 138:	e28bd000 	add	sp, fp, #0
 13c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 140:	e12fff1e 	bx	lr

00000144 <strchr>:
 144:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 148:	e28db000 	add	fp, sp, #0
 14c:	e5d02000 	ldrb	r2, [r0]
 150:	e3520000 	cmp	r2, #0
 154:	0a00000b 	beq	188 <strchr+0x44>
 158:	e1510002 	cmp	r1, r2
 15c:	1a000002 	bne	16c <strchr+0x28>
 160:	ea000005 	b	17c <strchr+0x38>
 164:	e1530001 	cmp	r3, r1
 168:	0a000003 	beq	17c <strchr+0x38>
 16c:	e5f03001 	ldrb	r3, [r0, #1]!
 170:	e3530000 	cmp	r3, #0
 174:	1afffffa 	bne	164 <strchr+0x20>
 178:	e1a00003 	mov	r0, r3
 17c:	e28bd000 	add	sp, fp, #0
 180:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 184:	e12fff1e 	bx	lr
 188:	e1a00002 	mov	r0, r2
 18c:	eafffffa 	b	17c <strchr+0x38>

00000190 <gets>:
 190:	e92d48f0 	push	{r4, r5, r6, r7, fp, lr}
 194:	e1a03000 	mov	r3, r0
 198:	e28db014 	add	fp, sp, #20
 19c:	e1a07000 	mov	r7, r0
 1a0:	e24dd008 	sub	sp, sp, #8
 1a4:	e1a06001 	mov	r6, r1
 1a8:	e3a04000 	mov	r4, #0
 1ac:	ea000008 	b	1d4 <gets+0x44>
 1b0:	eb000078 	bl	398 <read>
 1b4:	e1a03005 	mov	r3, r5
 1b8:	e3500000 	cmp	r0, #0
 1bc:	da00000b 	ble	1f0 <gets+0x60>
 1c0:	e55b2015 	ldrb	r2, [fp, #-21]	; 0xffffffeb
 1c4:	e352000d 	cmp	r2, #13
 1c8:	1352000a 	cmpne	r2, #10
 1cc:	e4c32001 	strb	r2, [r3], #1
 1d0:	0a00000b 	beq	204 <gets+0x74>
 1d4:	e3a02001 	mov	r2, #1
 1d8:	e0844002 	add	r4, r4, r2
 1dc:	e1540006 	cmp	r4, r6
 1e0:	e24b1015 	sub	r1, fp, #21
 1e4:	e3a00000 	mov	r0, #0
 1e8:	e1a05003 	mov	r5, r3
 1ec:	baffffef 	blt	1b0 <gets+0x20>
 1f0:	e1a00007 	mov	r0, r7
 1f4:	e3a03000 	mov	r3, #0
 1f8:	e5c53000 	strb	r3, [r5]
 1fc:	e24bd014 	sub	sp, fp, #20
 200:	e8bd88f0 	pop	{r4, r5, r6, r7, fp, pc}
 204:	e0875004 	add	r5, r7, r4
 208:	eafffff8 	b	1f0 <gets+0x60>

0000020c <stat>:
 20c:	e92d4830 	push	{r4, r5, fp, lr}
 210:	e1a04001 	mov	r4, r1
 214:	e28db00c 	add	fp, sp, #12
 218:	e3a01000 	mov	r1, #0
 21c:	eb00009e 	bl	49c <open>
 220:	e2505000 	subs	r5, r0, #0
 224:	ba000006 	blt	244 <stat+0x38>
 228:	e1a01004 	mov	r1, r4
 22c:	eb0000c1 	bl	538 <fstat>
 230:	e1a04000 	mov	r4, r0
 234:	e1a00005 	mov	r0, r5
 238:	eb000070 	bl	400 <close>
 23c:	e1a00004 	mov	r0, r4
 240:	e8bd8830 	pop	{r4, r5, fp, pc}
 244:	e3e04000 	mvn	r4, #0
 248:	eafffffb 	b	23c <stat+0x30>

0000024c <atoi>:
 24c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 250:	e28db000 	add	fp, sp, #0
 254:	e5d02000 	ldrb	r2, [r0]
 258:	e2423030 	sub	r3, r2, #48	; 0x30
 25c:	e3530009 	cmp	r3, #9
 260:	e3a03000 	mov	r3, #0
 264:	8a000006 	bhi	284 <atoi+0x38>
 268:	e3a0c00a 	mov	ip, #10
 26c:	e023239c 	mla	r3, ip, r3, r2
 270:	e5f02001 	ldrb	r2, [r0, #1]!
 274:	e2421030 	sub	r1, r2, #48	; 0x30
 278:	e3510009 	cmp	r1, #9
 27c:	e2433030 	sub	r3, r3, #48	; 0x30
 280:	9afffff9 	bls	26c <atoi+0x20>
 284:	e1a00003 	mov	r0, r3
 288:	e28bd000 	add	sp, fp, #0
 28c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 290:	e12fff1e 	bx	lr

00000294 <memmove>:
 294:	e3520000 	cmp	r2, #0
 298:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 29c:	e28db000 	add	fp, sp, #0
 2a0:	da000005 	ble	2bc <memmove+0x28>
 2a4:	e0812002 	add	r2, r1, r2
 2a8:	e2403001 	sub	r3, r0, #1
 2ac:	e4d1c001 	ldrb	ip, [r1], #1
 2b0:	e1510002 	cmp	r1, r2
 2b4:	e5e3c001 	strb	ip, [r3, #1]!
 2b8:	1afffffb 	bne	2ac <memmove+0x18>
 2bc:	e28bd000 	add	sp, fp, #0
 2c0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 2c4:	e12fff1e 	bx	lr

000002c8 <fork>:
 2c8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 2cc:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 2d0:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 2d4:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 2d8:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 2dc:	e3a00001 	mov	r0, #1
 2e0:	ef000040 	svc	0x00000040
 2e4:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 2e8:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 2ec:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 2f0:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 2f4:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 2f8:	e12fff1e 	bx	lr

000002fc <exit>:
 2fc:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 300:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 304:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 308:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 30c:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 310:	e3a00002 	mov	r0, #2
 314:	ef000040 	svc	0x00000040
 318:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 31c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 320:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 324:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 328:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 32c:	e12fff1e 	bx	lr

00000330 <wait>:
 330:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 334:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 338:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 33c:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 340:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 344:	e3a00003 	mov	r0, #3
 348:	ef000040 	svc	0x00000040
 34c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 350:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 354:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 358:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 35c:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 360:	e12fff1e 	bx	lr

00000364 <pipe>:
 364:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 368:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 36c:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 370:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 374:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 378:	e3a00004 	mov	r0, #4
 37c:	ef000040 	svc	0x00000040
 380:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 384:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 388:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 38c:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 390:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 394:	e12fff1e 	bx	lr

00000398 <read>:
 398:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 39c:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 3a0:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 3a4:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 3a8:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 3ac:	e3a00005 	mov	r0, #5
 3b0:	ef000040 	svc	0x00000040
 3b4:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 3b8:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 3bc:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 3c0:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 3c4:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 3c8:	e12fff1e 	bx	lr

000003cc <write>:
 3cc:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 3d0:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 3d4:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 3d8:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 3dc:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 3e0:	e3a00010 	mov	r0, #16
 3e4:	ef000040 	svc	0x00000040
 3e8:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 3ec:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 3f0:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 3f4:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 3f8:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 3fc:	e12fff1e 	bx	lr

00000400 <close>:
 400:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 404:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 408:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 40c:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 410:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 414:	e3a00015 	mov	r0, #21
 418:	ef000040 	svc	0x00000040
 41c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 420:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 424:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 428:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 42c:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 430:	e12fff1e 	bx	lr

00000434 <kill>:
 434:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 438:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 43c:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 440:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 444:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 448:	e3a00006 	mov	r0, #6
 44c:	ef000040 	svc	0x00000040
 450:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 454:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 458:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 45c:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 460:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 464:	e12fff1e 	bx	lr

00000468 <exec>:
 468:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 46c:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 470:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 474:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 478:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 47c:	e3a00007 	mov	r0, #7
 480:	ef000040 	svc	0x00000040
 484:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 488:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 48c:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 490:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 494:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 498:	e12fff1e 	bx	lr

0000049c <open>:
 49c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 4a0:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 4a4:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 4a8:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 4ac:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 4b0:	e3a0000f 	mov	r0, #15
 4b4:	ef000040 	svc	0x00000040
 4b8:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 4bc:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 4c0:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 4c4:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 4c8:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 4cc:	e12fff1e 	bx	lr

000004d0 <mknod>:
 4d0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 4d4:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 4d8:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 4dc:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 4e0:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 4e4:	e3a00011 	mov	r0, #17
 4e8:	ef000040 	svc	0x00000040
 4ec:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 4f0:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 4f4:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 4f8:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 4fc:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 500:	e12fff1e 	bx	lr

00000504 <unlink>:
 504:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 508:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 50c:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 510:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 514:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 518:	e3a00012 	mov	r0, #18
 51c:	ef000040 	svc	0x00000040
 520:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 524:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 528:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 52c:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 530:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 534:	e12fff1e 	bx	lr

00000538 <fstat>:
 538:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 53c:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 540:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 544:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 548:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 54c:	e3a00008 	mov	r0, #8
 550:	ef000040 	svc	0x00000040
 554:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 558:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 55c:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 560:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 564:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 568:	e12fff1e 	bx	lr

0000056c <link>:
 56c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 570:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 574:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 578:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 57c:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 580:	e3a00013 	mov	r0, #19
 584:	ef000040 	svc	0x00000040
 588:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 58c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 590:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 594:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 598:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 59c:	e12fff1e 	bx	lr

000005a0 <mkdir>:
 5a0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 5a4:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 5a8:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 5ac:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 5b0:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 5b4:	e3a00014 	mov	r0, #20
 5b8:	ef000040 	svc	0x00000040
 5bc:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 5c0:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 5c4:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 5c8:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 5cc:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 5d0:	e12fff1e 	bx	lr

000005d4 <chdir>:
 5d4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 5d8:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 5dc:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 5e0:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 5e4:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 5e8:	e3a00009 	mov	r0, #9
 5ec:	ef000040 	svc	0x00000040
 5f0:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 5f4:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 5f8:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 5fc:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 600:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 604:	e12fff1e 	bx	lr

00000608 <dup>:
 608:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 60c:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 610:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 614:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 618:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 61c:	e3a0000a 	mov	r0, #10
 620:	ef000040 	svc	0x00000040
 624:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 628:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 62c:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 630:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 634:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 638:	e12fff1e 	bx	lr

0000063c <getpid>:
 63c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 640:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 644:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 648:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 64c:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 650:	e3a0000b 	mov	r0, #11
 654:	ef000040 	svc	0x00000040
 658:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 65c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 660:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 664:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 668:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 66c:	e12fff1e 	bx	lr

00000670 <sbrk>:
 670:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 674:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 678:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 67c:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 680:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 684:	e3a0000c 	mov	r0, #12
 688:	ef000040 	svc	0x00000040
 68c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 690:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 694:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 698:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 69c:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 6a0:	e12fff1e 	bx	lr

000006a4 <sleep>:
 6a4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 6a8:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 6ac:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 6b0:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 6b4:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 6b8:	e3a0000d 	mov	r0, #13
 6bc:	ef000040 	svc	0x00000040
 6c0:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 6c4:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 6c8:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 6cc:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 6d0:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 6d4:	e12fff1e 	bx	lr

000006d8 <uptime>:
 6d8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 6dc:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 6e0:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 6e4:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 6e8:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 6ec:	e3a0000e 	mov	r0, #14
 6f0:	ef000040 	svc	0x00000040
 6f4:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 6f8:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 6fc:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 700:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 704:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 708:	e12fff1e 	bx	lr

0000070c <memfree>:
 70c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 710:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 714:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 718:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 71c:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 720:	e3a00016 	mov	r0, #22
 724:	ef000040 	svc	0x00000040
 728:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 72c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 730:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 734:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 738:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 73c:	e12fff1e 	bx	lr

00000740 <trace>:
 740:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 744:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 748:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 74c:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 750:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 754:	e3a00017 	mov	r0, #23
 758:	ef000040 	svc	0x00000040
 75c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 760:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 764:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 768:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 76c:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 770:	e12fff1e 	bx	lr

00000774 <printint>:
 774:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 778:	e28db020 	add	fp, sp, #32
 77c:	e013afa1 	ands	sl, r3, r1, lsr #31
 780:	e24b4034 	sub	r4, fp, #52	; 0x34
 784:	e3009be0 	movw	r9, #3040	; 0xbe0
 788:	1261e000 	rsbne	lr, r1, #0
 78c:	e3409000 	movt	r9, #0
 790:	e1a05000 	mov	r5, r0
 794:	13a0a001 	movne	sl, #1
 798:	01a0e001 	moveq	lr, r1
 79c:	e3a08000 	mov	r8, #0
 7a0:	e1a07004 	mov	r7, r4
 7a4:	e3a06001 	mov	r6, #1
 7a8:	e24dd01c 	sub	sp, sp, #28
 7ac:	e3a0c000 	mov	ip, #0
 7b0:	e3a0301f 	mov	r3, #31
 7b4:	e1a0100c 	mov	r1, ip
 7b8:	e1a0033e 	lsr	r0, lr, r3
 7bc:	e2000001 	and	r0, r0, #1
 7c0:	e1801081 	orr	r1, r0, r1, lsl #1
 7c4:	e1520001 	cmp	r2, r1
 7c8:	90411002 	subls	r1, r1, r2
 7cc:	918cc316 	orrls	ip, ip, r6, lsl r3
 7d0:	e2533001 	subs	r3, r3, #1
 7d4:	2afffff7 	bcs	7b8 <printint+0x44>
 7d8:	e061e29c 	mls	r1, ip, r2, lr
 7dc:	e35c0000 	cmp	ip, #0
 7e0:	e1a0e00c 	mov	lr, ip
 7e4:	e2883001 	add	r3, r8, #1
 7e8:	e7d91001 	ldrb	r1, [r9, r1]
 7ec:	e4c71001 	strb	r1, [r7], #1
 7f0:	11a08003 	movne	r8, r3
 7f4:	1affffec 	bne	7ac <printint+0x38>
 7f8:	e35a0000 	cmp	sl, #0
 7fc:	0a000004 	beq	814 <printint+0xa0>
 800:	e24b2024 	sub	r2, fp, #36	; 0x24
 804:	e3a0102d 	mov	r1, #45	; 0x2d
 808:	e0822003 	add	r2, r2, r3
 80c:	e2883002 	add	r3, r8, #2
 810:	e5421010 	strb	r1, [r2, #-16]
 814:	e0846003 	add	r6, r4, r3
 818:	e5763001 	ldrb	r3, [r6, #-1]!
 81c:	e3a02001 	mov	r2, #1
 820:	e24b1035 	sub	r1, fp, #53	; 0x35
 824:	e1a00005 	mov	r0, r5
 828:	e54b3035 	strb	r3, [fp, #-53]	; 0xffffffcb
 82c:	ebfffee6 	bl	3cc <write>
 830:	e1540006 	cmp	r4, r6
 834:	1afffff7 	bne	818 <printint+0xa4>
 838:	e24bd020 	sub	sp, fp, #32
 83c:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

00000840 <div>:
 840:	e92d4810 	push	{r4, fp, lr}
 844:	e3a02000 	mov	r2, #0
 848:	e28db008 	add	fp, sp, #8
 84c:	e1a0e000 	mov	lr, r0
 850:	e3a0301f 	mov	r3, #31
 854:	e1a00002 	mov	r0, r2
 858:	e3a04001 	mov	r4, #1
 85c:	e1a0c33e 	lsr	ip, lr, r3
 860:	e20cc001 	and	ip, ip, #1
 864:	e18c2082 	orr	r2, ip, r2, lsl #1
 868:	e1520001 	cmp	r2, r1
 86c:	20422001 	subcs	r2, r2, r1
 870:	21800314 	orrcs	r0, r0, r4, lsl r3
 874:	e2533001 	subs	r3, r3, #1
 878:	38bd8810 	popcc	{r4, fp, pc}
 87c:	eafffff6 	b	85c <div+0x1c>

00000880 <printf>:
 880:	e92d000e 	push	{r1, r2, r3}
 884:	e92d49f0 	push	{r4, r5, r6, r7, r8, fp, lr}
 888:	e28db018 	add	fp, sp, #24
 88c:	e24dd008 	sub	sp, sp, #8
 890:	e59b5004 	ldr	r5, [fp, #4]
 894:	e5d54000 	ldrb	r4, [r5]
 898:	e3540000 	cmp	r4, #0
 89c:	0a00002b 	beq	950 <printf+0xd0>
 8a0:	e1a07000 	mov	r7, r0
 8a4:	e28b8008 	add	r8, fp, #8
 8a8:	e3a06000 	mov	r6, #0
 8ac:	ea00000a 	b	8dc <printf+0x5c>
 8b0:	e3540025 	cmp	r4, #37	; 0x25
 8b4:	01a06004 	moveq	r6, r4
 8b8:	0a000004 	beq	8d0 <printf+0x50>
 8bc:	e24b1018 	sub	r1, fp, #24
 8c0:	e3a02001 	mov	r2, #1
 8c4:	e1a00007 	mov	r0, r7
 8c8:	e5614006 	strb	r4, [r1, #-6]!
 8cc:	ebfffebe 	bl	3cc <write>
 8d0:	e5f54001 	ldrb	r4, [r5, #1]!
 8d4:	e3540000 	cmp	r4, #0
 8d8:	0a00001c 	beq	950 <printf+0xd0>
 8dc:	e3560000 	cmp	r6, #0
 8e0:	0afffff2 	beq	8b0 <printf+0x30>
 8e4:	e3560025 	cmp	r6, #37	; 0x25
 8e8:	1afffff8 	bne	8d0 <printf+0x50>
 8ec:	e3540064 	cmp	r4, #100	; 0x64
 8f0:	0a000030 	beq	9b8 <printf+0x138>
 8f4:	e20430f7 	and	r3, r4, #247	; 0xf7
 8f8:	e3530070 	cmp	r3, #112	; 0x70
 8fc:	0a000017 	beq	960 <printf+0xe0>
 900:	e3540073 	cmp	r4, #115	; 0x73
 904:	0a00001c 	beq	97c <printf+0xfc>
 908:	e3540063 	cmp	r4, #99	; 0x63
 90c:	0a000037 	beq	9f0 <printf+0x170>
 910:	e3540025 	cmp	r4, #37	; 0x25
 914:	0a00002e 	beq	9d4 <printf+0x154>
 918:	e3a02001 	mov	r2, #1
 91c:	e24b1019 	sub	r1, fp, #25
 920:	e1a00007 	mov	r0, r7
 924:	e54b6019 	strb	r6, [fp, #-25]	; 0xffffffe7
 928:	ebfffea7 	bl	3cc <write>
 92c:	e3a02001 	mov	r2, #1
 930:	e24b101a 	sub	r1, fp, #26
 934:	e1a00007 	mov	r0, r7
 938:	e54b401a 	strb	r4, [fp, #-26]	; 0xffffffe6
 93c:	ebfffea2 	bl	3cc <write>
 940:	e5f54001 	ldrb	r4, [r5, #1]!
 944:	e3a06000 	mov	r6, #0
 948:	e3540000 	cmp	r4, #0
 94c:	1affffe2 	bne	8dc <printf+0x5c>
 950:	e24bd018 	sub	sp, fp, #24
 954:	e8bd49f0 	pop	{r4, r5, r6, r7, r8, fp, lr}
 958:	e28dd00c 	add	sp, sp, #12
 95c:	e12fff1e 	bx	lr
 960:	e3a03000 	mov	r3, #0
 964:	e3a02010 	mov	r2, #16
 968:	e4981004 	ldr	r1, [r8], #4
 96c:	e1a00007 	mov	r0, r7
 970:	ebffff7f 	bl	774 <printint>
 974:	e3a06000 	mov	r6, #0
 978:	eaffffd4 	b	8d0 <printf+0x50>
 97c:	e4984004 	ldr	r4, [r8], #4
 980:	e3540000 	cmp	r4, #0
 984:	0a000021 	beq	a10 <printf+0x190>
 988:	e5d46000 	ldrb	r6, [r4]
 98c:	e3560000 	cmp	r6, #0
 990:	0affffce 	beq	8d0 <printf+0x50>
 994:	e3a02001 	mov	r2, #1
 998:	e24b101d 	sub	r1, fp, #29
 99c:	e1a00007 	mov	r0, r7
 9a0:	e54b601d 	strb	r6, [fp, #-29]	; 0xffffffe3
 9a4:	ebfffe88 	bl	3cc <write>
 9a8:	e5f46001 	ldrb	r6, [r4, #1]!
 9ac:	e3560000 	cmp	r6, #0
 9b0:	1afffff7 	bne	994 <printf+0x114>
 9b4:	eaffffc5 	b	8d0 <printf+0x50>
 9b8:	e3a03001 	mov	r3, #1
 9bc:	e3a0200a 	mov	r2, #10
 9c0:	e4981004 	ldr	r1, [r8], #4
 9c4:	e1a00007 	mov	r0, r7
 9c8:	ebffff69 	bl	774 <printint>
 9cc:	e3a06000 	mov	r6, #0
 9d0:	eaffffbe 	b	8d0 <printf+0x50>
 9d4:	e24b1018 	sub	r1, fp, #24
 9d8:	e3a02001 	mov	r2, #1
 9dc:	e1a00007 	mov	r0, r7
 9e0:	e5616003 	strb	r6, [r1, #-3]!
 9e4:	e3a06000 	mov	r6, #0
 9e8:	ebfffe77 	bl	3cc <write>
 9ec:	eaffffb7 	b	8d0 <printf+0x50>
 9f0:	e4983004 	ldr	r3, [r8], #4
 9f4:	e24b1018 	sub	r1, fp, #24
 9f8:	e3a02001 	mov	r2, #1
 9fc:	e1a00007 	mov	r0, r7
 a00:	e3a06000 	mov	r6, #0
 a04:	e5613004 	strb	r3, [r1, #-4]!
 a08:	ebfffe6f 	bl	3cc <write>
 a0c:	eaffffaf 	b	8d0 <printf+0x50>
 a10:	e3004bf4 	movw	r4, #3060	; 0xbf4
 a14:	e3a06028 	mov	r6, #40	; 0x28
 a18:	e3404000 	movt	r4, #0
 a1c:	eaffffdc 	b	994 <printf+0x114>

00000a20 <free>:
 a20:	e300cbfc 	movw	ip, #3068	; 0xbfc
 a24:	e340c000 	movt	ip, #0
 a28:	e92d4810 	push	{r4, fp, lr}
 a2c:	e2401008 	sub	r1, r0, #8
 a30:	e59c3000 	ldr	r3, [ip]
 a34:	e28db008 	add	fp, sp, #8
 a38:	e1530001 	cmp	r3, r1
 a3c:	e5932000 	ldr	r2, [r3]
 a40:	2a000017 	bcs	aa4 <free+0x84>
 a44:	e1510002 	cmp	r1, r2
 a48:	3a000001 	bcc	a54 <free+0x34>
 a4c:	e1530002 	cmp	r3, r2
 a50:	3a000017 	bcc	ab4 <free+0x94>
 a54:	e510e004 	ldr	lr, [r0, #-4]
 a58:	e58c3000 	str	r3, [ip]
 a5c:	e081418e 	add	r4, r1, lr, lsl #3
 a60:	e1520004 	cmp	r2, r4
 a64:	05922004 	ldreq	r2, [r2, #4]
 a68:	0082e00e 	addeq	lr, r2, lr
 a6c:	0500e004 	streq	lr, [r0, #-4]
 a70:	05932000 	ldreq	r2, [r3]
 a74:	05922000 	ldreq	r2, [r2]
 a78:	e5002008 	str	r2, [r0, #-8]
 a7c:	e5932004 	ldr	r2, [r3, #4]
 a80:	e083e182 	add	lr, r3, r2, lsl #3
 a84:	e151000e 	cmp	r1, lr
 a88:	15831000 	strne	r1, [r3]
 a8c:	05101004 	ldreq	r1, [r0, #-4]
 a90:	00812002 	addeq	r2, r1, r2
 a94:	05832004 	streq	r2, [r3, #4]
 a98:	05102008 	ldreq	r2, [r0, #-8]
 a9c:	05832000 	streq	r2, [r3]
 aa0:	e8bd8810 	pop	{r4, fp, pc}
 aa4:	e1530002 	cmp	r3, r2
 aa8:	3a000001 	bcc	ab4 <free+0x94>
 aac:	e1510002 	cmp	r1, r2
 ab0:	3affffe7 	bcc	a54 <free+0x34>
 ab4:	e1a03002 	mov	r3, r2
 ab8:	eaffffde 	b	a38 <free+0x18>

00000abc <malloc>:
 abc:	e92d48f0 	push	{r4, r5, r6, r7, fp, lr}
 ac0:	e3007bfc 	movw	r7, #3068	; 0xbfc
 ac4:	e3407000 	movt	r7, #0
 ac8:	e2804007 	add	r4, r0, #7
 acc:	e28db014 	add	fp, sp, #20
 ad0:	e5973000 	ldr	r3, [r7]
 ad4:	e1a041a4 	lsr	r4, r4, #3
 ad8:	e2844001 	add	r4, r4, #1
 adc:	e3530000 	cmp	r3, #0
 ae0:	0a000027 	beq	b84 <malloc+0xc8>
 ae4:	e5930000 	ldr	r0, [r3]
 ae8:	e5902004 	ldr	r2, [r0, #4]
 aec:	e1540002 	cmp	r4, r2
 af0:	9a000019 	bls	b5c <malloc+0xa0>
 af4:	e3540a01 	cmp	r4, #4096	; 0x1000
 af8:	21a05004 	movcs	r5, r4
 afc:	33a05a01 	movcc	r5, #4096	; 0x1000
 b00:	e1a06185 	lsl	r6, r5, #3
 b04:	ea000003 	b	b18 <malloc+0x5c>
 b08:	e5930000 	ldr	r0, [r3]
 b0c:	e5902004 	ldr	r2, [r0, #4]
 b10:	e1520004 	cmp	r2, r4
 b14:	2a000010 	bcs	b5c <malloc+0xa0>
 b18:	e5972000 	ldr	r2, [r7]
 b1c:	e1a03000 	mov	r3, r0
 b20:	e1520000 	cmp	r2, r0
 b24:	1afffff7 	bne	b08 <malloc+0x4c>
 b28:	e1a00006 	mov	r0, r6
 b2c:	ebfffecf 	bl	670 <sbrk>
 b30:	e1a03000 	mov	r3, r0
 b34:	e3730001 	cmn	r3, #1
 b38:	e2800008 	add	r0, r0, #8
 b3c:	0a000004 	beq	b54 <malloc+0x98>
 b40:	e5835004 	str	r5, [r3, #4]
 b44:	ebffffb5 	bl	a20 <free>
 b48:	e5973000 	ldr	r3, [r7]
 b4c:	e3530000 	cmp	r3, #0
 b50:	1affffec 	bne	b08 <malloc+0x4c>
 b54:	e3a00000 	mov	r0, #0
 b58:	e8bd88f0 	pop	{r4, r5, r6, r7, fp, pc}
 b5c:	e1540002 	cmp	r4, r2
 b60:	e5873000 	str	r3, [r7]
 b64:	10422004 	subne	r2, r2, r4
 b68:	15802004 	strne	r2, [r0, #4]
 b6c:	05902000 	ldreq	r2, [r0]
 b70:	10800182 	addne	r0, r0, r2, lsl #3
 b74:	e2800008 	add	r0, r0, #8
 b78:	15004004 	strne	r4, [r0, #-4]
 b7c:	05832000 	streq	r2, [r3]
 b80:	e8bd88f0 	pop	{r4, r5, r6, r7, fp, pc}
 b84:	e2870004 	add	r0, r7, #4
 b88:	e5873008 	str	r3, [r7, #8]
 b8c:	e5870000 	str	r0, [r7]
 b90:	e5870004 	str	r0, [r7, #4]
 b94:	eaffffd6 	b	af4 <malloc+0x38>


_memfree:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
#include "stat.h" 
#include "user.h" 

int 
main(int argc, char *argv[]) 
{ 
   0:	e92d4800 	push	{fp, lr}
   4:	e28db004 	add	fp, sp, #4
    printf(1, "Free memory pages in kernel: %d\n", memfree()); 
   8:	eb0001ae 	bl	6c8 <memfree>
   c:	e3001b54 	movw	r1, #2900	; 0xb54
  10:	e3401000 	movt	r1, #0
  14:	e1a02000 	mov	r2, r0
  18:	e3a00001 	mov	r0, #1
  1c:	eb000206 	bl	83c <printf>
    exit(); 
  20:	eb0000a4 	bl	2b8 <exit>

00000024 <strcpy>:
  24:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  28:	e2402001 	sub	r2, r0, #1
  2c:	e28db000 	add	fp, sp, #0
  30:	e4d13001 	ldrb	r3, [r1], #1
  34:	e3530000 	cmp	r3, #0
  38:	e5e23001 	strb	r3, [r2, #1]!
  3c:	1afffffb 	bne	30 <strcpy+0xc>
  40:	e28bd000 	add	sp, fp, #0
  44:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  48:	e12fff1e 	bx	lr

0000004c <strcmp>:
  4c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  50:	e28db000 	add	fp, sp, #0
  54:	e5d03000 	ldrb	r3, [r0]
  58:	e5d12000 	ldrb	r2, [r1]
  5c:	e3530000 	cmp	r3, #0
  60:	1a000004 	bne	78 <strcmp+0x2c>
  64:	ea000005 	b	80 <strcmp+0x34>
  68:	e5f03001 	ldrb	r3, [r0, #1]!
  6c:	e5f12001 	ldrb	r2, [r1, #1]!
  70:	e3530000 	cmp	r3, #0
  74:	0a000001 	beq	80 <strcmp+0x34>
  78:	e1530002 	cmp	r3, r2
  7c:	0afffff9 	beq	68 <strcmp+0x1c>
  80:	e0430002 	sub	r0, r3, r2
  84:	e28bd000 	add	sp, fp, #0
  88:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  8c:	e12fff1e 	bx	lr

00000090 <strlen>:
  90:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  94:	e28db000 	add	fp, sp, #0
  98:	e5d03000 	ldrb	r3, [r0]
  9c:	e3530000 	cmp	r3, #0
  a0:	01a00003 	moveq	r0, r3
  a4:	0a000006 	beq	c4 <strlen+0x34>
  a8:	e1a02000 	mov	r2, r0
  ac:	e3a03000 	mov	r3, #0
  b0:	e5f21001 	ldrb	r1, [r2, #1]!
  b4:	e2833001 	add	r3, r3, #1
  b8:	e3510000 	cmp	r1, #0
  bc:	e1a00003 	mov	r0, r3
  c0:	1afffffa 	bne	b0 <strlen+0x20>
  c4:	e28bd000 	add	sp, fp, #0
  c8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  cc:	e12fff1e 	bx	lr

000000d0 <memset>:
  d0:	e3520000 	cmp	r2, #0
  d4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  d8:	e28db000 	add	fp, sp, #0
  dc:	0a000004 	beq	f4 <memset+0x24>
  e0:	e6ef1071 	uxtb	r1, r1
  e4:	e0802002 	add	r2, r0, r2
  e8:	e4c01001 	strb	r1, [r0], #1
  ec:	e1520000 	cmp	r2, r0
  f0:	1afffffc 	bne	e8 <memset+0x18>
  f4:	e28bd000 	add	sp, fp, #0
  f8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  fc:	e12fff1e 	bx	lr

00000100 <strchr>:
 100:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 104:	e28db000 	add	fp, sp, #0
 108:	e5d02000 	ldrb	r2, [r0]
 10c:	e3520000 	cmp	r2, #0
 110:	0a00000b 	beq	144 <strchr+0x44>
 114:	e1510002 	cmp	r1, r2
 118:	1a000002 	bne	128 <strchr+0x28>
 11c:	ea000005 	b	138 <strchr+0x38>
 120:	e1530001 	cmp	r3, r1
 124:	0a000003 	beq	138 <strchr+0x38>
 128:	e5f03001 	ldrb	r3, [r0, #1]!
 12c:	e3530000 	cmp	r3, #0
 130:	1afffffa 	bne	120 <strchr+0x20>
 134:	e1a00003 	mov	r0, r3
 138:	e28bd000 	add	sp, fp, #0
 13c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 140:	e12fff1e 	bx	lr
 144:	e1a00002 	mov	r0, r2
 148:	eafffffa 	b	138 <strchr+0x38>

0000014c <gets>:
 14c:	e92d48f0 	push	{r4, r5, r6, r7, fp, lr}
 150:	e1a03000 	mov	r3, r0
 154:	e28db014 	add	fp, sp, #20
 158:	e1a07000 	mov	r7, r0
 15c:	e24dd008 	sub	sp, sp, #8
 160:	e1a06001 	mov	r6, r1
 164:	e3a04000 	mov	r4, #0
 168:	ea000008 	b	190 <gets+0x44>
 16c:	eb000078 	bl	354 <read>
 170:	e1a03005 	mov	r3, r5
 174:	e3500000 	cmp	r0, #0
 178:	da00000b 	ble	1ac <gets+0x60>
 17c:	e55b2015 	ldrb	r2, [fp, #-21]	; 0xffffffeb
 180:	e352000d 	cmp	r2, #13
 184:	1352000a 	cmpne	r2, #10
 188:	e4c32001 	strb	r2, [r3], #1
 18c:	0a00000b 	beq	1c0 <gets+0x74>
 190:	e3a02001 	mov	r2, #1
 194:	e0844002 	add	r4, r4, r2
 198:	e1540006 	cmp	r4, r6
 19c:	e24b1015 	sub	r1, fp, #21
 1a0:	e3a00000 	mov	r0, #0
 1a4:	e1a05003 	mov	r5, r3
 1a8:	baffffef 	blt	16c <gets+0x20>
 1ac:	e1a00007 	mov	r0, r7
 1b0:	e3a03000 	mov	r3, #0
 1b4:	e5c53000 	strb	r3, [r5]
 1b8:	e24bd014 	sub	sp, fp, #20
 1bc:	e8bd88f0 	pop	{r4, r5, r6, r7, fp, pc}
 1c0:	e0875004 	add	r5, r7, r4
 1c4:	eafffff8 	b	1ac <gets+0x60>

000001c8 <stat>:
 1c8:	e92d4830 	push	{r4, r5, fp, lr}
 1cc:	e1a04001 	mov	r4, r1
 1d0:	e28db00c 	add	fp, sp, #12
 1d4:	e3a01000 	mov	r1, #0
 1d8:	eb00009e 	bl	458 <open>
 1dc:	e2505000 	subs	r5, r0, #0
 1e0:	ba000006 	blt	200 <stat+0x38>
 1e4:	e1a01004 	mov	r1, r4
 1e8:	eb0000c1 	bl	4f4 <fstat>
 1ec:	e1a04000 	mov	r4, r0
 1f0:	e1a00005 	mov	r0, r5
 1f4:	eb000070 	bl	3bc <close>
 1f8:	e1a00004 	mov	r0, r4
 1fc:	e8bd8830 	pop	{r4, r5, fp, pc}
 200:	e3e04000 	mvn	r4, #0
 204:	eafffffb 	b	1f8 <stat+0x30>

00000208 <atoi>:
 208:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 20c:	e28db000 	add	fp, sp, #0
 210:	e5d02000 	ldrb	r2, [r0]
 214:	e2423030 	sub	r3, r2, #48	; 0x30
 218:	e3530009 	cmp	r3, #9
 21c:	e3a03000 	mov	r3, #0
 220:	8a000006 	bhi	240 <atoi+0x38>
 224:	e3a0c00a 	mov	ip, #10
 228:	e023239c 	mla	r3, ip, r3, r2
 22c:	e5f02001 	ldrb	r2, [r0, #1]!
 230:	e2421030 	sub	r1, r2, #48	; 0x30
 234:	e3510009 	cmp	r1, #9
 238:	e2433030 	sub	r3, r3, #48	; 0x30
 23c:	9afffff9 	bls	228 <atoi+0x20>
 240:	e1a00003 	mov	r0, r3
 244:	e28bd000 	add	sp, fp, #0
 248:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 24c:	e12fff1e 	bx	lr

00000250 <memmove>:
 250:	e3520000 	cmp	r2, #0
 254:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 258:	e28db000 	add	fp, sp, #0
 25c:	da000005 	ble	278 <memmove+0x28>
 260:	e0812002 	add	r2, r1, r2
 264:	e2403001 	sub	r3, r0, #1
 268:	e4d1c001 	ldrb	ip, [r1], #1
 26c:	e1510002 	cmp	r1, r2
 270:	e5e3c001 	strb	ip, [r3, #1]!
 274:	1afffffb 	bne	268 <memmove+0x18>
 278:	e28bd000 	add	sp, fp, #0
 27c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 280:	e12fff1e 	bx	lr

00000284 <fork>:
 284:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 288:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 28c:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 290:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 294:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 298:	e3a00001 	mov	r0, #1
 29c:	ef000040 	svc	0x00000040
 2a0:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 2a4:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 2a8:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 2ac:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 2b0:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 2b4:	e12fff1e 	bx	lr

000002b8 <exit>:
 2b8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 2bc:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 2c0:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 2c4:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 2c8:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 2cc:	e3a00002 	mov	r0, #2
 2d0:	ef000040 	svc	0x00000040
 2d4:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 2d8:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 2dc:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 2e0:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 2e4:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 2e8:	e12fff1e 	bx	lr

000002ec <wait>:
 2ec:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 2f0:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 2f4:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 2f8:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 2fc:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 300:	e3a00003 	mov	r0, #3
 304:	ef000040 	svc	0x00000040
 308:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 30c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 310:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 314:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 318:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 31c:	e12fff1e 	bx	lr

00000320 <pipe>:
 320:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 324:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 328:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 32c:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 330:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 334:	e3a00004 	mov	r0, #4
 338:	ef000040 	svc	0x00000040
 33c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 340:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 344:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 348:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 34c:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 350:	e12fff1e 	bx	lr

00000354 <read>:
 354:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 358:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 35c:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 360:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 364:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 368:	e3a00005 	mov	r0, #5
 36c:	ef000040 	svc	0x00000040
 370:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 374:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 378:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 37c:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 380:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 384:	e12fff1e 	bx	lr

00000388 <write>:
 388:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 38c:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 390:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 394:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 398:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 39c:	e3a00010 	mov	r0, #16
 3a0:	ef000040 	svc	0x00000040
 3a4:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 3a8:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 3ac:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 3b0:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 3b4:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 3b8:	e12fff1e 	bx	lr

000003bc <close>:
 3bc:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 3c0:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 3c4:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 3c8:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 3cc:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 3d0:	e3a00015 	mov	r0, #21
 3d4:	ef000040 	svc	0x00000040
 3d8:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 3dc:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 3e0:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 3e4:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 3e8:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 3ec:	e12fff1e 	bx	lr

000003f0 <kill>:
 3f0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 3f4:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 3f8:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 3fc:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 400:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 404:	e3a00006 	mov	r0, #6
 408:	ef000040 	svc	0x00000040
 40c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 410:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 414:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 418:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 41c:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 420:	e12fff1e 	bx	lr

00000424 <exec>:
 424:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 428:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 42c:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 430:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 434:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 438:	e3a00007 	mov	r0, #7
 43c:	ef000040 	svc	0x00000040
 440:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 444:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 448:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 44c:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 450:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 454:	e12fff1e 	bx	lr

00000458 <open>:
 458:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 45c:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 460:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 464:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 468:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 46c:	e3a0000f 	mov	r0, #15
 470:	ef000040 	svc	0x00000040
 474:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 478:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 47c:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 480:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 484:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 488:	e12fff1e 	bx	lr

0000048c <mknod>:
 48c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 490:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 494:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 498:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 49c:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 4a0:	e3a00011 	mov	r0, #17
 4a4:	ef000040 	svc	0x00000040
 4a8:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 4ac:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 4b0:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 4b4:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 4b8:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 4bc:	e12fff1e 	bx	lr

000004c0 <unlink>:
 4c0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 4c4:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 4c8:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 4cc:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 4d0:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 4d4:	e3a00012 	mov	r0, #18
 4d8:	ef000040 	svc	0x00000040
 4dc:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 4e0:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 4e4:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 4e8:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 4ec:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 4f0:	e12fff1e 	bx	lr

000004f4 <fstat>:
 4f4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 4f8:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 4fc:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 500:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 504:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 508:	e3a00008 	mov	r0, #8
 50c:	ef000040 	svc	0x00000040
 510:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 514:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 518:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 51c:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 520:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 524:	e12fff1e 	bx	lr

00000528 <link>:
 528:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 52c:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 530:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 534:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 538:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 53c:	e3a00013 	mov	r0, #19
 540:	ef000040 	svc	0x00000040
 544:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 548:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 54c:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 550:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 554:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 558:	e12fff1e 	bx	lr

0000055c <mkdir>:
 55c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 560:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 564:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 568:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 56c:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 570:	e3a00014 	mov	r0, #20
 574:	ef000040 	svc	0x00000040
 578:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 57c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 580:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 584:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 588:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 58c:	e12fff1e 	bx	lr

00000590 <chdir>:
 590:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 594:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 598:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 59c:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 5a0:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 5a4:	e3a00009 	mov	r0, #9
 5a8:	ef000040 	svc	0x00000040
 5ac:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 5b0:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 5b4:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 5b8:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 5bc:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 5c0:	e12fff1e 	bx	lr

000005c4 <dup>:
 5c4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 5c8:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 5cc:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 5d0:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 5d4:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 5d8:	e3a0000a 	mov	r0, #10
 5dc:	ef000040 	svc	0x00000040
 5e0:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 5e4:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 5e8:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 5ec:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 5f0:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 5f4:	e12fff1e 	bx	lr

000005f8 <getpid>:
 5f8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 5fc:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 600:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 604:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 608:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 60c:	e3a0000b 	mov	r0, #11
 610:	ef000040 	svc	0x00000040
 614:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 618:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 61c:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 620:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 624:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 628:	e12fff1e 	bx	lr

0000062c <sbrk>:
 62c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 630:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 634:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 638:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 63c:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 640:	e3a0000c 	mov	r0, #12
 644:	ef000040 	svc	0x00000040
 648:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 64c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 650:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 654:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 658:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 65c:	e12fff1e 	bx	lr

00000660 <sleep>:
 660:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 664:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 668:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 66c:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 670:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 674:	e3a0000d 	mov	r0, #13
 678:	ef000040 	svc	0x00000040
 67c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 680:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 684:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 688:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 68c:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 690:	e12fff1e 	bx	lr

00000694 <uptime>:
 694:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 698:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 69c:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 6a0:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 6a4:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 6a8:	e3a0000e 	mov	r0, #14
 6ac:	ef000040 	svc	0x00000040
 6b0:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 6b4:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 6b8:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 6bc:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 6c0:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 6c4:	e12fff1e 	bx	lr

000006c8 <memfree>:
 6c8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 6cc:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 6d0:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 6d4:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 6d8:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 6dc:	e3a00016 	mov	r0, #22
 6e0:	ef000040 	svc	0x00000040
 6e4:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 6e8:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 6ec:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 6f0:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 6f4:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 6f8:	e12fff1e 	bx	lr

000006fc <trace>:
 6fc:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 700:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 704:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 708:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 70c:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 710:	e3a00017 	mov	r0, #23
 714:	ef000040 	svc	0x00000040
 718:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 71c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 720:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 724:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 728:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 72c:	e12fff1e 	bx	lr

00000730 <printint>:
 730:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 734:	e28db020 	add	fp, sp, #32
 738:	e013afa1 	ands	sl, r3, r1, lsr #31
 73c:	e24b4034 	sub	r4, fp, #52	; 0x34
 740:	e3009b78 	movw	r9, #2936	; 0xb78
 744:	1261e000 	rsbne	lr, r1, #0
 748:	e3409000 	movt	r9, #0
 74c:	e1a05000 	mov	r5, r0
 750:	13a0a001 	movne	sl, #1
 754:	01a0e001 	moveq	lr, r1
 758:	e3a08000 	mov	r8, #0
 75c:	e1a07004 	mov	r7, r4
 760:	e3a06001 	mov	r6, #1
 764:	e24dd01c 	sub	sp, sp, #28
 768:	e3a0c000 	mov	ip, #0
 76c:	e3a0301f 	mov	r3, #31
 770:	e1a0100c 	mov	r1, ip
 774:	e1a0033e 	lsr	r0, lr, r3
 778:	e2000001 	and	r0, r0, #1
 77c:	e1801081 	orr	r1, r0, r1, lsl #1
 780:	e1520001 	cmp	r2, r1
 784:	90411002 	subls	r1, r1, r2
 788:	918cc316 	orrls	ip, ip, r6, lsl r3
 78c:	e2533001 	subs	r3, r3, #1
 790:	2afffff7 	bcs	774 <printint+0x44>
 794:	e061e29c 	mls	r1, ip, r2, lr
 798:	e35c0000 	cmp	ip, #0
 79c:	e1a0e00c 	mov	lr, ip
 7a0:	e2883001 	add	r3, r8, #1
 7a4:	e7d91001 	ldrb	r1, [r9, r1]
 7a8:	e4c71001 	strb	r1, [r7], #1
 7ac:	11a08003 	movne	r8, r3
 7b0:	1affffec 	bne	768 <printint+0x38>
 7b4:	e35a0000 	cmp	sl, #0
 7b8:	0a000004 	beq	7d0 <printint+0xa0>
 7bc:	e24b2024 	sub	r2, fp, #36	; 0x24
 7c0:	e3a0102d 	mov	r1, #45	; 0x2d
 7c4:	e0822003 	add	r2, r2, r3
 7c8:	e2883002 	add	r3, r8, #2
 7cc:	e5421010 	strb	r1, [r2, #-16]
 7d0:	e0846003 	add	r6, r4, r3
 7d4:	e5763001 	ldrb	r3, [r6, #-1]!
 7d8:	e3a02001 	mov	r2, #1
 7dc:	e24b1035 	sub	r1, fp, #53	; 0x35
 7e0:	e1a00005 	mov	r0, r5
 7e4:	e54b3035 	strb	r3, [fp, #-53]	; 0xffffffcb
 7e8:	ebfffee6 	bl	388 <write>
 7ec:	e1540006 	cmp	r4, r6
 7f0:	1afffff7 	bne	7d4 <printint+0xa4>
 7f4:	e24bd020 	sub	sp, fp, #32
 7f8:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

000007fc <div>:
 7fc:	e92d4810 	push	{r4, fp, lr}
 800:	e3a02000 	mov	r2, #0
 804:	e28db008 	add	fp, sp, #8
 808:	e1a0e000 	mov	lr, r0
 80c:	e3a0301f 	mov	r3, #31
 810:	e1a00002 	mov	r0, r2
 814:	e3a04001 	mov	r4, #1
 818:	e1a0c33e 	lsr	ip, lr, r3
 81c:	e20cc001 	and	ip, ip, #1
 820:	e18c2082 	orr	r2, ip, r2, lsl #1
 824:	e1520001 	cmp	r2, r1
 828:	20422001 	subcs	r2, r2, r1
 82c:	21800314 	orrcs	r0, r0, r4, lsl r3
 830:	e2533001 	subs	r3, r3, #1
 834:	38bd8810 	popcc	{r4, fp, pc}
 838:	eafffff6 	b	818 <div+0x1c>

0000083c <printf>:
 83c:	e92d000e 	push	{r1, r2, r3}
 840:	e92d49f0 	push	{r4, r5, r6, r7, r8, fp, lr}
 844:	e28db018 	add	fp, sp, #24
 848:	e24dd008 	sub	sp, sp, #8
 84c:	e59b5004 	ldr	r5, [fp, #4]
 850:	e5d54000 	ldrb	r4, [r5]
 854:	e3540000 	cmp	r4, #0
 858:	0a00002b 	beq	90c <printf+0xd0>
 85c:	e1a07000 	mov	r7, r0
 860:	e28b8008 	add	r8, fp, #8
 864:	e3a06000 	mov	r6, #0
 868:	ea00000a 	b	898 <printf+0x5c>
 86c:	e3540025 	cmp	r4, #37	; 0x25
 870:	01a06004 	moveq	r6, r4
 874:	0a000004 	beq	88c <printf+0x50>
 878:	e24b1018 	sub	r1, fp, #24
 87c:	e3a02001 	mov	r2, #1
 880:	e1a00007 	mov	r0, r7
 884:	e5614006 	strb	r4, [r1, #-6]!
 888:	ebfffebe 	bl	388 <write>
 88c:	e5f54001 	ldrb	r4, [r5, #1]!
 890:	e3540000 	cmp	r4, #0
 894:	0a00001c 	beq	90c <printf+0xd0>
 898:	e3560000 	cmp	r6, #0
 89c:	0afffff2 	beq	86c <printf+0x30>
 8a0:	e3560025 	cmp	r6, #37	; 0x25
 8a4:	1afffff8 	bne	88c <printf+0x50>
 8a8:	e3540064 	cmp	r4, #100	; 0x64
 8ac:	0a000030 	beq	974 <printf+0x138>
 8b0:	e20430f7 	and	r3, r4, #247	; 0xf7
 8b4:	e3530070 	cmp	r3, #112	; 0x70
 8b8:	0a000017 	beq	91c <printf+0xe0>
 8bc:	e3540073 	cmp	r4, #115	; 0x73
 8c0:	0a00001c 	beq	938 <printf+0xfc>
 8c4:	e3540063 	cmp	r4, #99	; 0x63
 8c8:	0a000037 	beq	9ac <printf+0x170>
 8cc:	e3540025 	cmp	r4, #37	; 0x25
 8d0:	0a00002e 	beq	990 <printf+0x154>
 8d4:	e3a02001 	mov	r2, #1
 8d8:	e24b1019 	sub	r1, fp, #25
 8dc:	e1a00007 	mov	r0, r7
 8e0:	e54b6019 	strb	r6, [fp, #-25]	; 0xffffffe7
 8e4:	ebfffea7 	bl	388 <write>
 8e8:	e3a02001 	mov	r2, #1
 8ec:	e24b101a 	sub	r1, fp, #26
 8f0:	e1a00007 	mov	r0, r7
 8f4:	e54b401a 	strb	r4, [fp, #-26]	; 0xffffffe6
 8f8:	ebfffea2 	bl	388 <write>
 8fc:	e5f54001 	ldrb	r4, [r5, #1]!
 900:	e3a06000 	mov	r6, #0
 904:	e3540000 	cmp	r4, #0
 908:	1affffe2 	bne	898 <printf+0x5c>
 90c:	e24bd018 	sub	sp, fp, #24
 910:	e8bd49f0 	pop	{r4, r5, r6, r7, r8, fp, lr}
 914:	e28dd00c 	add	sp, sp, #12
 918:	e12fff1e 	bx	lr
 91c:	e3a03000 	mov	r3, #0
 920:	e3a02010 	mov	r2, #16
 924:	e4981004 	ldr	r1, [r8], #4
 928:	e1a00007 	mov	r0, r7
 92c:	ebffff7f 	bl	730 <printint>
 930:	e3a06000 	mov	r6, #0
 934:	eaffffd4 	b	88c <printf+0x50>
 938:	e4984004 	ldr	r4, [r8], #4
 93c:	e3540000 	cmp	r4, #0
 940:	0a000021 	beq	9cc <printf+0x190>
 944:	e5d46000 	ldrb	r6, [r4]
 948:	e3560000 	cmp	r6, #0
 94c:	0affffce 	beq	88c <printf+0x50>
 950:	e3a02001 	mov	r2, #1
 954:	e24b101d 	sub	r1, fp, #29
 958:	e1a00007 	mov	r0, r7
 95c:	e54b601d 	strb	r6, [fp, #-29]	; 0xffffffe3
 960:	ebfffe88 	bl	388 <write>
 964:	e5f46001 	ldrb	r6, [r4, #1]!
 968:	e3560000 	cmp	r6, #0
 96c:	1afffff7 	bne	950 <printf+0x114>
 970:	eaffffc5 	b	88c <printf+0x50>
 974:	e3a03001 	mov	r3, #1
 978:	e3a0200a 	mov	r2, #10
 97c:	e4981004 	ldr	r1, [r8], #4
 980:	e1a00007 	mov	r0, r7
 984:	ebffff69 	bl	730 <printint>
 988:	e3a06000 	mov	r6, #0
 98c:	eaffffbe 	b	88c <printf+0x50>
 990:	e24b1018 	sub	r1, fp, #24
 994:	e3a02001 	mov	r2, #1
 998:	e1a00007 	mov	r0, r7
 99c:	e5616003 	strb	r6, [r1, #-3]!
 9a0:	e3a06000 	mov	r6, #0
 9a4:	ebfffe77 	bl	388 <write>
 9a8:	eaffffb7 	b	88c <printf+0x50>
 9ac:	e4983004 	ldr	r3, [r8], #4
 9b0:	e24b1018 	sub	r1, fp, #24
 9b4:	e3a02001 	mov	r2, #1
 9b8:	e1a00007 	mov	r0, r7
 9bc:	e3a06000 	mov	r6, #0
 9c0:	e5613004 	strb	r3, [r1, #-4]!
 9c4:	ebfffe6f 	bl	388 <write>
 9c8:	eaffffaf 	b	88c <printf+0x50>
 9cc:	e3004b8c 	movw	r4, #2956	; 0xb8c
 9d0:	e3a06028 	mov	r6, #40	; 0x28
 9d4:	e3404000 	movt	r4, #0
 9d8:	eaffffdc 	b	950 <printf+0x114>

000009dc <free>:
 9dc:	e300cb94 	movw	ip, #2964	; 0xb94
 9e0:	e340c000 	movt	ip, #0
 9e4:	e92d4810 	push	{r4, fp, lr}
 9e8:	e2401008 	sub	r1, r0, #8
 9ec:	e59c3000 	ldr	r3, [ip]
 9f0:	e28db008 	add	fp, sp, #8
 9f4:	e1530001 	cmp	r3, r1
 9f8:	e5932000 	ldr	r2, [r3]
 9fc:	2a000017 	bcs	a60 <free+0x84>
 a00:	e1510002 	cmp	r1, r2
 a04:	3a000001 	bcc	a10 <free+0x34>
 a08:	e1530002 	cmp	r3, r2
 a0c:	3a000017 	bcc	a70 <free+0x94>
 a10:	e510e004 	ldr	lr, [r0, #-4]
 a14:	e58c3000 	str	r3, [ip]
 a18:	e081418e 	add	r4, r1, lr, lsl #3
 a1c:	e1520004 	cmp	r2, r4
 a20:	05922004 	ldreq	r2, [r2, #4]
 a24:	0082e00e 	addeq	lr, r2, lr
 a28:	0500e004 	streq	lr, [r0, #-4]
 a2c:	05932000 	ldreq	r2, [r3]
 a30:	05922000 	ldreq	r2, [r2]
 a34:	e5002008 	str	r2, [r0, #-8]
 a38:	e5932004 	ldr	r2, [r3, #4]
 a3c:	e083e182 	add	lr, r3, r2, lsl #3
 a40:	e151000e 	cmp	r1, lr
 a44:	15831000 	strne	r1, [r3]
 a48:	05101004 	ldreq	r1, [r0, #-4]
 a4c:	00812002 	addeq	r2, r1, r2
 a50:	05832004 	streq	r2, [r3, #4]
 a54:	05102008 	ldreq	r2, [r0, #-8]
 a58:	05832000 	streq	r2, [r3]
 a5c:	e8bd8810 	pop	{r4, fp, pc}
 a60:	e1530002 	cmp	r3, r2
 a64:	3a000001 	bcc	a70 <free+0x94>
 a68:	e1510002 	cmp	r1, r2
 a6c:	3affffe7 	bcc	a10 <free+0x34>
 a70:	e1a03002 	mov	r3, r2
 a74:	eaffffde 	b	9f4 <free+0x18>

00000a78 <malloc>:
 a78:	e92d48f0 	push	{r4, r5, r6, r7, fp, lr}
 a7c:	e3007b94 	movw	r7, #2964	; 0xb94
 a80:	e3407000 	movt	r7, #0
 a84:	e2804007 	add	r4, r0, #7
 a88:	e28db014 	add	fp, sp, #20
 a8c:	e5973000 	ldr	r3, [r7]
 a90:	e1a041a4 	lsr	r4, r4, #3
 a94:	e2844001 	add	r4, r4, #1
 a98:	e3530000 	cmp	r3, #0
 a9c:	0a000027 	beq	b40 <malloc+0xc8>
 aa0:	e5930000 	ldr	r0, [r3]
 aa4:	e5902004 	ldr	r2, [r0, #4]
 aa8:	e1540002 	cmp	r4, r2
 aac:	9a000019 	bls	b18 <malloc+0xa0>
 ab0:	e3540a01 	cmp	r4, #4096	; 0x1000
 ab4:	21a05004 	movcs	r5, r4
 ab8:	33a05a01 	movcc	r5, #4096	; 0x1000
 abc:	e1a06185 	lsl	r6, r5, #3
 ac0:	ea000003 	b	ad4 <malloc+0x5c>
 ac4:	e5930000 	ldr	r0, [r3]
 ac8:	e5902004 	ldr	r2, [r0, #4]
 acc:	e1520004 	cmp	r2, r4
 ad0:	2a000010 	bcs	b18 <malloc+0xa0>
 ad4:	e5972000 	ldr	r2, [r7]
 ad8:	e1a03000 	mov	r3, r0
 adc:	e1520000 	cmp	r2, r0
 ae0:	1afffff7 	bne	ac4 <malloc+0x4c>
 ae4:	e1a00006 	mov	r0, r6
 ae8:	ebfffecf 	bl	62c <sbrk>
 aec:	e1a03000 	mov	r3, r0
 af0:	e3730001 	cmn	r3, #1
 af4:	e2800008 	add	r0, r0, #8
 af8:	0a000004 	beq	b10 <malloc+0x98>
 afc:	e5835004 	str	r5, [r3, #4]
 b00:	ebffffb5 	bl	9dc <free>
 b04:	e5973000 	ldr	r3, [r7]
 b08:	e3530000 	cmp	r3, #0
 b0c:	1affffec 	bne	ac4 <malloc+0x4c>
 b10:	e3a00000 	mov	r0, #0
 b14:	e8bd88f0 	pop	{r4, r5, r6, r7, fp, pc}
 b18:	e1540002 	cmp	r4, r2
 b1c:	e5873000 	str	r3, [r7]
 b20:	10422004 	subne	r2, r2, r4
 b24:	15802004 	strne	r2, [r0, #4]
 b28:	05902000 	ldreq	r2, [r0]
 b2c:	10800182 	addne	r0, r0, r2, lsl #3
 b30:	e2800008 	add	r0, r0, #8
 b34:	15004004 	strne	r4, [r0, #-4]
 b38:	05832000 	streq	r2, [r3]
 b3c:	e8bd88f0 	pop	{r4, r5, r6, r7, fp, pc}
 b40:	e2870004 	add	r0, r7, #4
 b44:	e5873008 	str	r3, [r7, #8]
 b48:	e5870000 	str	r0, [r7]
 b4c:	e5870004 	str	r0, [r7, #4]
 b50:	eaffffd6 	b	ab0 <malloc+0x38>

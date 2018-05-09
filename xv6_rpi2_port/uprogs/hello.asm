
_hello:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
   0:	e92d4800 	push	{fp, lr}
   4:	e3001b4c 	movw	r1, #2892	; 0xb4c
   8:	e28db004 	add	fp, sp, #4
   c:	e3a00001 	mov	r0, #1
  10:	e3401000 	movt	r1, #0
  14:	eb000206 	bl	834 <printf>
  18:	eb0000a4 	bl	2b0 <exit>

0000001c <strcpy>:
  1c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  20:	e2402001 	sub	r2, r0, #1
  24:	e28db000 	add	fp, sp, #0
  28:	e4d13001 	ldrb	r3, [r1], #1
  2c:	e3530000 	cmp	r3, #0
  30:	e5e23001 	strb	r3, [r2, #1]!
  34:	1afffffb 	bne	28 <strcpy+0xc>
  38:	e28bd000 	add	sp, fp, #0
  3c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  40:	e12fff1e 	bx	lr

00000044 <strcmp>:
  44:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  48:	e28db000 	add	fp, sp, #0
  4c:	e5d03000 	ldrb	r3, [r0]
  50:	e5d12000 	ldrb	r2, [r1]
  54:	e3530000 	cmp	r3, #0
  58:	1a000004 	bne	70 <strcmp+0x2c>
  5c:	ea000005 	b	78 <strcmp+0x34>
  60:	e5f03001 	ldrb	r3, [r0, #1]!
  64:	e5f12001 	ldrb	r2, [r1, #1]!
  68:	e3530000 	cmp	r3, #0
  6c:	0a000001 	beq	78 <strcmp+0x34>
  70:	e1530002 	cmp	r3, r2
  74:	0afffff9 	beq	60 <strcmp+0x1c>
  78:	e0430002 	sub	r0, r3, r2
  7c:	e28bd000 	add	sp, fp, #0
  80:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  84:	e12fff1e 	bx	lr

00000088 <strlen>:
  88:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  8c:	e28db000 	add	fp, sp, #0
  90:	e5d03000 	ldrb	r3, [r0]
  94:	e3530000 	cmp	r3, #0
  98:	01a00003 	moveq	r0, r3
  9c:	0a000006 	beq	bc <strlen+0x34>
  a0:	e1a02000 	mov	r2, r0
  a4:	e3a03000 	mov	r3, #0
  a8:	e5f21001 	ldrb	r1, [r2, #1]!
  ac:	e2833001 	add	r3, r3, #1
  b0:	e3510000 	cmp	r1, #0
  b4:	e1a00003 	mov	r0, r3
  b8:	1afffffa 	bne	a8 <strlen+0x20>
  bc:	e28bd000 	add	sp, fp, #0
  c0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  c4:	e12fff1e 	bx	lr

000000c8 <memset>:
  c8:	e3520000 	cmp	r2, #0
  cc:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  d0:	e28db000 	add	fp, sp, #0
  d4:	0a000004 	beq	ec <memset+0x24>
  d8:	e6ef1071 	uxtb	r1, r1
  dc:	e0802002 	add	r2, r0, r2
  e0:	e4c01001 	strb	r1, [r0], #1
  e4:	e1520000 	cmp	r2, r0
  e8:	1afffffc 	bne	e0 <memset+0x18>
  ec:	e28bd000 	add	sp, fp, #0
  f0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  f4:	e12fff1e 	bx	lr

000000f8 <strchr>:
  f8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  fc:	e28db000 	add	fp, sp, #0
 100:	e5d02000 	ldrb	r2, [r0]
 104:	e3520000 	cmp	r2, #0
 108:	0a00000b 	beq	13c <strchr+0x44>
 10c:	e1510002 	cmp	r1, r2
 110:	1a000002 	bne	120 <strchr+0x28>
 114:	ea000005 	b	130 <strchr+0x38>
 118:	e1530001 	cmp	r3, r1
 11c:	0a000003 	beq	130 <strchr+0x38>
 120:	e5f03001 	ldrb	r3, [r0, #1]!
 124:	e3530000 	cmp	r3, #0
 128:	1afffffa 	bne	118 <strchr+0x20>
 12c:	e1a00003 	mov	r0, r3
 130:	e28bd000 	add	sp, fp, #0
 134:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 138:	e12fff1e 	bx	lr
 13c:	e1a00002 	mov	r0, r2
 140:	eafffffa 	b	130 <strchr+0x38>

00000144 <gets>:
 144:	e92d48f0 	push	{r4, r5, r6, r7, fp, lr}
 148:	e1a03000 	mov	r3, r0
 14c:	e28db014 	add	fp, sp, #20
 150:	e1a07000 	mov	r7, r0
 154:	e24dd008 	sub	sp, sp, #8
 158:	e1a06001 	mov	r6, r1
 15c:	e3a04000 	mov	r4, #0
 160:	ea000008 	b	188 <gets+0x44>
 164:	eb000078 	bl	34c <read>
 168:	e1a03005 	mov	r3, r5
 16c:	e3500000 	cmp	r0, #0
 170:	da00000b 	ble	1a4 <gets+0x60>
 174:	e55b2015 	ldrb	r2, [fp, #-21]	; 0xffffffeb
 178:	e352000d 	cmp	r2, #13
 17c:	1352000a 	cmpne	r2, #10
 180:	e4c32001 	strb	r2, [r3], #1
 184:	0a00000b 	beq	1b8 <gets+0x74>
 188:	e3a02001 	mov	r2, #1
 18c:	e0844002 	add	r4, r4, r2
 190:	e1540006 	cmp	r4, r6
 194:	e24b1015 	sub	r1, fp, #21
 198:	e3a00000 	mov	r0, #0
 19c:	e1a05003 	mov	r5, r3
 1a0:	baffffef 	blt	164 <gets+0x20>
 1a4:	e1a00007 	mov	r0, r7
 1a8:	e3a03000 	mov	r3, #0
 1ac:	e5c53000 	strb	r3, [r5]
 1b0:	e24bd014 	sub	sp, fp, #20
 1b4:	e8bd88f0 	pop	{r4, r5, r6, r7, fp, pc}
 1b8:	e0875004 	add	r5, r7, r4
 1bc:	eafffff8 	b	1a4 <gets+0x60>

000001c0 <stat>:
 1c0:	e92d4830 	push	{r4, r5, fp, lr}
 1c4:	e1a04001 	mov	r4, r1
 1c8:	e28db00c 	add	fp, sp, #12
 1cc:	e3a01000 	mov	r1, #0
 1d0:	eb00009e 	bl	450 <open>
 1d4:	e2505000 	subs	r5, r0, #0
 1d8:	ba000006 	blt	1f8 <stat+0x38>
 1dc:	e1a01004 	mov	r1, r4
 1e0:	eb0000c1 	bl	4ec <fstat>
 1e4:	e1a04000 	mov	r4, r0
 1e8:	e1a00005 	mov	r0, r5
 1ec:	eb000070 	bl	3b4 <close>
 1f0:	e1a00004 	mov	r0, r4
 1f4:	e8bd8830 	pop	{r4, r5, fp, pc}
 1f8:	e3e04000 	mvn	r4, #0
 1fc:	eafffffb 	b	1f0 <stat+0x30>

00000200 <atoi>:
 200:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 204:	e28db000 	add	fp, sp, #0
 208:	e5d02000 	ldrb	r2, [r0]
 20c:	e2423030 	sub	r3, r2, #48	; 0x30
 210:	e3530009 	cmp	r3, #9
 214:	e3a03000 	mov	r3, #0
 218:	8a000006 	bhi	238 <atoi+0x38>
 21c:	e3a0c00a 	mov	ip, #10
 220:	e023239c 	mla	r3, ip, r3, r2
 224:	e5f02001 	ldrb	r2, [r0, #1]!
 228:	e2421030 	sub	r1, r2, #48	; 0x30
 22c:	e3510009 	cmp	r1, #9
 230:	e2433030 	sub	r3, r3, #48	; 0x30
 234:	9afffff9 	bls	220 <atoi+0x20>
 238:	e1a00003 	mov	r0, r3
 23c:	e28bd000 	add	sp, fp, #0
 240:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 244:	e12fff1e 	bx	lr

00000248 <memmove>:
 248:	e3520000 	cmp	r2, #0
 24c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 250:	e28db000 	add	fp, sp, #0
 254:	da000005 	ble	270 <memmove+0x28>
 258:	e0812002 	add	r2, r1, r2
 25c:	e2403001 	sub	r3, r0, #1
 260:	e4d1c001 	ldrb	ip, [r1], #1
 264:	e1510002 	cmp	r1, r2
 268:	e5e3c001 	strb	ip, [r3, #1]!
 26c:	1afffffb 	bne	260 <memmove+0x18>
 270:	e28bd000 	add	sp, fp, #0
 274:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 278:	e12fff1e 	bx	lr

0000027c <fork>:
 27c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 280:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 284:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 288:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 28c:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 290:	e3a00001 	mov	r0, #1
 294:	ef000040 	svc	0x00000040
 298:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 29c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 2a0:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 2a4:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 2a8:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 2ac:	e12fff1e 	bx	lr

000002b0 <exit>:
 2b0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 2b4:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 2b8:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 2bc:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 2c0:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 2c4:	e3a00002 	mov	r0, #2
 2c8:	ef000040 	svc	0x00000040
 2cc:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 2d0:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 2d4:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 2d8:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 2dc:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 2e0:	e12fff1e 	bx	lr

000002e4 <wait>:
 2e4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 2e8:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 2ec:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 2f0:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 2f4:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 2f8:	e3a00003 	mov	r0, #3
 2fc:	ef000040 	svc	0x00000040
 300:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 304:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 308:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 30c:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 310:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 314:	e12fff1e 	bx	lr

00000318 <pipe>:
 318:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 31c:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 320:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 324:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 328:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 32c:	e3a00004 	mov	r0, #4
 330:	ef000040 	svc	0x00000040
 334:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 338:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 33c:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 340:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 344:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 348:	e12fff1e 	bx	lr

0000034c <read>:
 34c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 350:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 354:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 358:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 35c:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 360:	e3a00005 	mov	r0, #5
 364:	ef000040 	svc	0x00000040
 368:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 36c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 370:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 374:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 378:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 37c:	e12fff1e 	bx	lr

00000380 <write>:
 380:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 384:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 388:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 38c:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 390:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 394:	e3a00010 	mov	r0, #16
 398:	ef000040 	svc	0x00000040
 39c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 3a0:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 3a4:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 3a8:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 3ac:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 3b0:	e12fff1e 	bx	lr

000003b4 <close>:
 3b4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 3b8:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 3bc:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 3c0:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 3c4:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 3c8:	e3a00015 	mov	r0, #21
 3cc:	ef000040 	svc	0x00000040
 3d0:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 3d4:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 3d8:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 3dc:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 3e0:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 3e4:	e12fff1e 	bx	lr

000003e8 <kill>:
 3e8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 3ec:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 3f0:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 3f4:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 3f8:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 3fc:	e3a00006 	mov	r0, #6
 400:	ef000040 	svc	0x00000040
 404:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 408:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 40c:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 410:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 414:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 418:	e12fff1e 	bx	lr

0000041c <exec>:
 41c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 420:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 424:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 428:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 42c:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 430:	e3a00007 	mov	r0, #7
 434:	ef000040 	svc	0x00000040
 438:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 43c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 440:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 444:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 448:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 44c:	e12fff1e 	bx	lr

00000450 <open>:
 450:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 454:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 458:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 45c:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 460:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 464:	e3a0000f 	mov	r0, #15
 468:	ef000040 	svc	0x00000040
 46c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 470:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 474:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 478:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 47c:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 480:	e12fff1e 	bx	lr

00000484 <mknod>:
 484:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 488:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 48c:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 490:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 494:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 498:	e3a00011 	mov	r0, #17
 49c:	ef000040 	svc	0x00000040
 4a0:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 4a4:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 4a8:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 4ac:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 4b0:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 4b4:	e12fff1e 	bx	lr

000004b8 <unlink>:
 4b8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 4bc:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 4c0:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 4c4:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 4c8:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 4cc:	e3a00012 	mov	r0, #18
 4d0:	ef000040 	svc	0x00000040
 4d4:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 4d8:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 4dc:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 4e0:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 4e4:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 4e8:	e12fff1e 	bx	lr

000004ec <fstat>:
 4ec:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 4f0:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 4f4:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 4f8:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 4fc:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 500:	e3a00008 	mov	r0, #8
 504:	ef000040 	svc	0x00000040
 508:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 50c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 510:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 514:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 518:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 51c:	e12fff1e 	bx	lr

00000520 <link>:
 520:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 524:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 528:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 52c:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 530:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 534:	e3a00013 	mov	r0, #19
 538:	ef000040 	svc	0x00000040
 53c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 540:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 544:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 548:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 54c:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 550:	e12fff1e 	bx	lr

00000554 <mkdir>:
 554:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 558:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 55c:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 560:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 564:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 568:	e3a00014 	mov	r0, #20
 56c:	ef000040 	svc	0x00000040
 570:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 574:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 578:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 57c:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 580:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 584:	e12fff1e 	bx	lr

00000588 <chdir>:
 588:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 58c:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 590:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 594:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 598:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 59c:	e3a00009 	mov	r0, #9
 5a0:	ef000040 	svc	0x00000040
 5a4:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 5a8:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 5ac:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 5b0:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 5b4:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 5b8:	e12fff1e 	bx	lr

000005bc <dup>:
 5bc:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 5c0:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 5c4:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 5c8:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 5cc:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 5d0:	e3a0000a 	mov	r0, #10
 5d4:	ef000040 	svc	0x00000040
 5d8:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 5dc:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 5e0:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 5e4:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 5e8:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 5ec:	e12fff1e 	bx	lr

000005f0 <getpid>:
 5f0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 5f4:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 5f8:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 5fc:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 600:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 604:	e3a0000b 	mov	r0, #11
 608:	ef000040 	svc	0x00000040
 60c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 610:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 614:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 618:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 61c:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 620:	e12fff1e 	bx	lr

00000624 <sbrk>:
 624:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 628:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 62c:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 630:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 634:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 638:	e3a0000c 	mov	r0, #12
 63c:	ef000040 	svc	0x00000040
 640:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 644:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 648:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 64c:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 650:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 654:	e12fff1e 	bx	lr

00000658 <sleep>:
 658:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 65c:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 660:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 664:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 668:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 66c:	e3a0000d 	mov	r0, #13
 670:	ef000040 	svc	0x00000040
 674:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 678:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 67c:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 680:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 684:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 688:	e12fff1e 	bx	lr

0000068c <uptime>:
 68c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 690:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 694:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 698:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 69c:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 6a0:	e3a0000e 	mov	r0, #14
 6a4:	ef000040 	svc	0x00000040
 6a8:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 6ac:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 6b0:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 6b4:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 6b8:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 6bc:	e12fff1e 	bx	lr

000006c0 <memfree>:
 6c0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 6c4:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 6c8:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 6cc:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 6d0:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 6d4:	e3a00016 	mov	r0, #22
 6d8:	ef000040 	svc	0x00000040
 6dc:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 6e0:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 6e4:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 6e8:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 6ec:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 6f0:	e12fff1e 	bx	lr

000006f4 <trace>:
 6f4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 6f8:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 6fc:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 700:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 704:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 708:	e3a00017 	mov	r0, #23
 70c:	ef000040 	svc	0x00000040
 710:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 714:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 718:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 71c:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 720:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 724:	e12fff1e 	bx	lr

00000728 <printint>:
 728:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 72c:	e28db020 	add	fp, sp, #32
 730:	e013afa1 	ands	sl, r3, r1, lsr #31
 734:	e24b4034 	sub	r4, fp, #52	; 0x34
 738:	e3009b5c 	movw	r9, #2908	; 0xb5c
 73c:	1261e000 	rsbne	lr, r1, #0
 740:	e3409000 	movt	r9, #0
 744:	e1a05000 	mov	r5, r0
 748:	13a0a001 	movne	sl, #1
 74c:	01a0e001 	moveq	lr, r1
 750:	e3a08000 	mov	r8, #0
 754:	e1a07004 	mov	r7, r4
 758:	e3a06001 	mov	r6, #1
 75c:	e24dd01c 	sub	sp, sp, #28
 760:	e3a0c000 	mov	ip, #0
 764:	e3a0301f 	mov	r3, #31
 768:	e1a0100c 	mov	r1, ip
 76c:	e1a0033e 	lsr	r0, lr, r3
 770:	e2000001 	and	r0, r0, #1
 774:	e1801081 	orr	r1, r0, r1, lsl #1
 778:	e1520001 	cmp	r2, r1
 77c:	90411002 	subls	r1, r1, r2
 780:	918cc316 	orrls	ip, ip, r6, lsl r3
 784:	e2533001 	subs	r3, r3, #1
 788:	2afffff7 	bcs	76c <printint+0x44>
 78c:	e061e29c 	mls	r1, ip, r2, lr
 790:	e35c0000 	cmp	ip, #0
 794:	e1a0e00c 	mov	lr, ip
 798:	e2883001 	add	r3, r8, #1
 79c:	e7d91001 	ldrb	r1, [r9, r1]
 7a0:	e4c71001 	strb	r1, [r7], #1
 7a4:	11a08003 	movne	r8, r3
 7a8:	1affffec 	bne	760 <printint+0x38>
 7ac:	e35a0000 	cmp	sl, #0
 7b0:	0a000004 	beq	7c8 <printint+0xa0>
 7b4:	e24b2024 	sub	r2, fp, #36	; 0x24
 7b8:	e3a0102d 	mov	r1, #45	; 0x2d
 7bc:	e0822003 	add	r2, r2, r3
 7c0:	e2883002 	add	r3, r8, #2
 7c4:	e5421010 	strb	r1, [r2, #-16]
 7c8:	e0846003 	add	r6, r4, r3
 7cc:	e5763001 	ldrb	r3, [r6, #-1]!
 7d0:	e3a02001 	mov	r2, #1
 7d4:	e24b1035 	sub	r1, fp, #53	; 0x35
 7d8:	e1a00005 	mov	r0, r5
 7dc:	e54b3035 	strb	r3, [fp, #-53]	; 0xffffffcb
 7e0:	ebfffee6 	bl	380 <write>
 7e4:	e1540006 	cmp	r4, r6
 7e8:	1afffff7 	bne	7cc <printint+0xa4>
 7ec:	e24bd020 	sub	sp, fp, #32
 7f0:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

000007f4 <div>:
 7f4:	e92d4810 	push	{r4, fp, lr}
 7f8:	e3a02000 	mov	r2, #0
 7fc:	e28db008 	add	fp, sp, #8
 800:	e1a0e000 	mov	lr, r0
 804:	e3a0301f 	mov	r3, #31
 808:	e1a00002 	mov	r0, r2
 80c:	e3a04001 	mov	r4, #1
 810:	e1a0c33e 	lsr	ip, lr, r3
 814:	e20cc001 	and	ip, ip, #1
 818:	e18c2082 	orr	r2, ip, r2, lsl #1
 81c:	e1520001 	cmp	r2, r1
 820:	20422001 	subcs	r2, r2, r1
 824:	21800314 	orrcs	r0, r0, r4, lsl r3
 828:	e2533001 	subs	r3, r3, #1
 82c:	38bd8810 	popcc	{r4, fp, pc}
 830:	eafffff6 	b	810 <div+0x1c>

00000834 <printf>:
 834:	e92d000e 	push	{r1, r2, r3}
 838:	e92d49f0 	push	{r4, r5, r6, r7, r8, fp, lr}
 83c:	e28db018 	add	fp, sp, #24
 840:	e24dd008 	sub	sp, sp, #8
 844:	e59b5004 	ldr	r5, [fp, #4]
 848:	e5d54000 	ldrb	r4, [r5]
 84c:	e3540000 	cmp	r4, #0
 850:	0a00002b 	beq	904 <printf+0xd0>
 854:	e1a07000 	mov	r7, r0
 858:	e28b8008 	add	r8, fp, #8
 85c:	e3a06000 	mov	r6, #0
 860:	ea00000a 	b	890 <printf+0x5c>
 864:	e3540025 	cmp	r4, #37	; 0x25
 868:	01a06004 	moveq	r6, r4
 86c:	0a000004 	beq	884 <printf+0x50>
 870:	e24b1018 	sub	r1, fp, #24
 874:	e3a02001 	mov	r2, #1
 878:	e1a00007 	mov	r0, r7
 87c:	e5614006 	strb	r4, [r1, #-6]!
 880:	ebfffebe 	bl	380 <write>
 884:	e5f54001 	ldrb	r4, [r5, #1]!
 888:	e3540000 	cmp	r4, #0
 88c:	0a00001c 	beq	904 <printf+0xd0>
 890:	e3560000 	cmp	r6, #0
 894:	0afffff2 	beq	864 <printf+0x30>
 898:	e3560025 	cmp	r6, #37	; 0x25
 89c:	1afffff8 	bne	884 <printf+0x50>
 8a0:	e3540064 	cmp	r4, #100	; 0x64
 8a4:	0a000030 	beq	96c <printf+0x138>
 8a8:	e20430f7 	and	r3, r4, #247	; 0xf7
 8ac:	e3530070 	cmp	r3, #112	; 0x70
 8b0:	0a000017 	beq	914 <printf+0xe0>
 8b4:	e3540073 	cmp	r4, #115	; 0x73
 8b8:	0a00001c 	beq	930 <printf+0xfc>
 8bc:	e3540063 	cmp	r4, #99	; 0x63
 8c0:	0a000037 	beq	9a4 <printf+0x170>
 8c4:	e3540025 	cmp	r4, #37	; 0x25
 8c8:	0a00002e 	beq	988 <printf+0x154>
 8cc:	e3a02001 	mov	r2, #1
 8d0:	e24b1019 	sub	r1, fp, #25
 8d4:	e1a00007 	mov	r0, r7
 8d8:	e54b6019 	strb	r6, [fp, #-25]	; 0xffffffe7
 8dc:	ebfffea7 	bl	380 <write>
 8e0:	e3a02001 	mov	r2, #1
 8e4:	e24b101a 	sub	r1, fp, #26
 8e8:	e1a00007 	mov	r0, r7
 8ec:	e54b401a 	strb	r4, [fp, #-26]	; 0xffffffe6
 8f0:	ebfffea2 	bl	380 <write>
 8f4:	e5f54001 	ldrb	r4, [r5, #1]!
 8f8:	e3a06000 	mov	r6, #0
 8fc:	e3540000 	cmp	r4, #0
 900:	1affffe2 	bne	890 <printf+0x5c>
 904:	e24bd018 	sub	sp, fp, #24
 908:	e8bd49f0 	pop	{r4, r5, r6, r7, r8, fp, lr}
 90c:	e28dd00c 	add	sp, sp, #12
 910:	e12fff1e 	bx	lr
 914:	e3a03000 	mov	r3, #0
 918:	e3a02010 	mov	r2, #16
 91c:	e4981004 	ldr	r1, [r8], #4
 920:	e1a00007 	mov	r0, r7
 924:	ebffff7f 	bl	728 <printint>
 928:	e3a06000 	mov	r6, #0
 92c:	eaffffd4 	b	884 <printf+0x50>
 930:	e4984004 	ldr	r4, [r8], #4
 934:	e3540000 	cmp	r4, #0
 938:	0a000021 	beq	9c4 <printf+0x190>
 93c:	e5d46000 	ldrb	r6, [r4]
 940:	e3560000 	cmp	r6, #0
 944:	0affffce 	beq	884 <printf+0x50>
 948:	e3a02001 	mov	r2, #1
 94c:	e24b101d 	sub	r1, fp, #29
 950:	e1a00007 	mov	r0, r7
 954:	e54b601d 	strb	r6, [fp, #-29]	; 0xffffffe3
 958:	ebfffe88 	bl	380 <write>
 95c:	e5f46001 	ldrb	r6, [r4, #1]!
 960:	e3560000 	cmp	r6, #0
 964:	1afffff7 	bne	948 <printf+0x114>
 968:	eaffffc5 	b	884 <printf+0x50>
 96c:	e3a03001 	mov	r3, #1
 970:	e3a0200a 	mov	r2, #10
 974:	e4981004 	ldr	r1, [r8], #4
 978:	e1a00007 	mov	r0, r7
 97c:	ebffff69 	bl	728 <printint>
 980:	e3a06000 	mov	r6, #0
 984:	eaffffbe 	b	884 <printf+0x50>
 988:	e24b1018 	sub	r1, fp, #24
 98c:	e3a02001 	mov	r2, #1
 990:	e1a00007 	mov	r0, r7
 994:	e5616003 	strb	r6, [r1, #-3]!
 998:	e3a06000 	mov	r6, #0
 99c:	ebfffe77 	bl	380 <write>
 9a0:	eaffffb7 	b	884 <printf+0x50>
 9a4:	e4983004 	ldr	r3, [r8], #4
 9a8:	e24b1018 	sub	r1, fp, #24
 9ac:	e3a02001 	mov	r2, #1
 9b0:	e1a00007 	mov	r0, r7
 9b4:	e3a06000 	mov	r6, #0
 9b8:	e5613004 	strb	r3, [r1, #-4]!
 9bc:	ebfffe6f 	bl	380 <write>
 9c0:	eaffffaf 	b	884 <printf+0x50>
 9c4:	e3004b70 	movw	r4, #2928	; 0xb70
 9c8:	e3a06028 	mov	r6, #40	; 0x28
 9cc:	e3404000 	movt	r4, #0
 9d0:	eaffffdc 	b	948 <printf+0x114>

000009d4 <free>:
 9d4:	e300cb78 	movw	ip, #2936	; 0xb78
 9d8:	e340c000 	movt	ip, #0
 9dc:	e92d4810 	push	{r4, fp, lr}
 9e0:	e2401008 	sub	r1, r0, #8
 9e4:	e59c3000 	ldr	r3, [ip]
 9e8:	e28db008 	add	fp, sp, #8
 9ec:	e1530001 	cmp	r3, r1
 9f0:	e5932000 	ldr	r2, [r3]
 9f4:	2a000017 	bcs	a58 <free+0x84>
 9f8:	e1510002 	cmp	r1, r2
 9fc:	3a000001 	bcc	a08 <free+0x34>
 a00:	e1530002 	cmp	r3, r2
 a04:	3a000017 	bcc	a68 <free+0x94>
 a08:	e510e004 	ldr	lr, [r0, #-4]
 a0c:	e58c3000 	str	r3, [ip]
 a10:	e081418e 	add	r4, r1, lr, lsl #3
 a14:	e1520004 	cmp	r2, r4
 a18:	05922004 	ldreq	r2, [r2, #4]
 a1c:	0082e00e 	addeq	lr, r2, lr
 a20:	0500e004 	streq	lr, [r0, #-4]
 a24:	05932000 	ldreq	r2, [r3]
 a28:	05922000 	ldreq	r2, [r2]
 a2c:	e5002008 	str	r2, [r0, #-8]
 a30:	e5932004 	ldr	r2, [r3, #4]
 a34:	e083e182 	add	lr, r3, r2, lsl #3
 a38:	e151000e 	cmp	r1, lr
 a3c:	15831000 	strne	r1, [r3]
 a40:	05101004 	ldreq	r1, [r0, #-4]
 a44:	00812002 	addeq	r2, r1, r2
 a48:	05832004 	streq	r2, [r3, #4]
 a4c:	05102008 	ldreq	r2, [r0, #-8]
 a50:	05832000 	streq	r2, [r3]
 a54:	e8bd8810 	pop	{r4, fp, pc}
 a58:	e1530002 	cmp	r3, r2
 a5c:	3a000001 	bcc	a68 <free+0x94>
 a60:	e1510002 	cmp	r1, r2
 a64:	3affffe7 	bcc	a08 <free+0x34>
 a68:	e1a03002 	mov	r3, r2
 a6c:	eaffffde 	b	9ec <free+0x18>

00000a70 <malloc>:
 a70:	e92d48f0 	push	{r4, r5, r6, r7, fp, lr}
 a74:	e3007b78 	movw	r7, #2936	; 0xb78
 a78:	e3407000 	movt	r7, #0
 a7c:	e2804007 	add	r4, r0, #7
 a80:	e28db014 	add	fp, sp, #20
 a84:	e5973000 	ldr	r3, [r7]
 a88:	e1a041a4 	lsr	r4, r4, #3
 a8c:	e2844001 	add	r4, r4, #1
 a90:	e3530000 	cmp	r3, #0
 a94:	0a000027 	beq	b38 <malloc+0xc8>
 a98:	e5930000 	ldr	r0, [r3]
 a9c:	e5902004 	ldr	r2, [r0, #4]
 aa0:	e1540002 	cmp	r4, r2
 aa4:	9a000019 	bls	b10 <malloc+0xa0>
 aa8:	e3540a01 	cmp	r4, #4096	; 0x1000
 aac:	21a05004 	movcs	r5, r4
 ab0:	33a05a01 	movcc	r5, #4096	; 0x1000
 ab4:	e1a06185 	lsl	r6, r5, #3
 ab8:	ea000003 	b	acc <malloc+0x5c>
 abc:	e5930000 	ldr	r0, [r3]
 ac0:	e5902004 	ldr	r2, [r0, #4]
 ac4:	e1520004 	cmp	r2, r4
 ac8:	2a000010 	bcs	b10 <malloc+0xa0>
 acc:	e5972000 	ldr	r2, [r7]
 ad0:	e1a03000 	mov	r3, r0
 ad4:	e1520000 	cmp	r2, r0
 ad8:	1afffff7 	bne	abc <malloc+0x4c>
 adc:	e1a00006 	mov	r0, r6
 ae0:	ebfffecf 	bl	624 <sbrk>
 ae4:	e1a03000 	mov	r3, r0
 ae8:	e3730001 	cmn	r3, #1
 aec:	e2800008 	add	r0, r0, #8
 af0:	0a000004 	beq	b08 <malloc+0x98>
 af4:	e5835004 	str	r5, [r3, #4]
 af8:	ebffffb5 	bl	9d4 <free>
 afc:	e5973000 	ldr	r3, [r7]
 b00:	e3530000 	cmp	r3, #0
 b04:	1affffec 	bne	abc <malloc+0x4c>
 b08:	e3a00000 	mov	r0, #0
 b0c:	e8bd88f0 	pop	{r4, r5, r6, r7, fp, pc}
 b10:	e1540002 	cmp	r4, r2
 b14:	e5873000 	str	r3, [r7]
 b18:	10422004 	subne	r2, r2, r4
 b1c:	15802004 	strne	r2, [r0, #4]
 b20:	05902000 	ldreq	r2, [r0]
 b24:	10800182 	addne	r0, r0, r2, lsl #3
 b28:	e2800008 	add	r0, r0, #8
 b2c:	15004004 	strne	r4, [r0, #-4]
 b30:	05832000 	streq	r2, [r3]
 b34:	e8bd88f0 	pop	{r4, r5, r6, r7, fp, pc}
 b38:	e2870004 	add	r0, r7, #4
 b3c:	e5873008 	str	r3, [r7, #8]
 b40:	e5870000 	str	r0, [r7]
 b44:	e5870004 	str	r0, [r7, #4]
 b48:	eaffffd6 	b	aa8 <malloc+0x38>

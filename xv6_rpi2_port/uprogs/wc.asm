
_wc:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
   0:	e3500001 	cmp	r0, #1
   4:	e92d4bf0 	push	{r4, r5, r6, r7, r8, r9, fp, lr}
   8:	c1a08000 	movgt	r8, r0
   c:	e28db01c 	add	fp, sp, #28
  10:	c2814004 	addgt	r4, r1, #4
  14:	c3a05001 	movgt	r5, #1
  18:	da000014 	ble	70 <main+0x70>
  1c:	e5940000 	ldr	r0, [r4]
  20:	e3a01000 	mov	r1, #0
  24:	eb000161 	bl	5b0 <open>
  28:	e1a06004 	mov	r6, r4
  2c:	e2844004 	add	r4, r4, #4
  30:	e2507000 	subs	r7, r0, #0
  34:	ba000007 	blt	58 <main+0x58>
  38:	e5141004 	ldr	r1, [r4, #-4]
  3c:	e2855001 	add	r5, r5, #1
  40:	eb00000f 	bl	84 <wc>
  44:	e1a00007 	mov	r0, r7
  48:	eb000131 	bl	514 <close>
  4c:	e1580005 	cmp	r8, r5
  50:	1afffff1 	bne	1c <main+0x1c>
  54:	eb0000ed 	bl	410 <exit>
  58:	e5962000 	ldr	r2, [r6]
  5c:	e3001cd4 	movw	r1, #3284	; 0xcd4
  60:	e3a00001 	mov	r0, #1
  64:	e3401000 	movt	r1, #0
  68:	eb000249 	bl	994 <printf>
  6c:	eb0000e7 	bl	410 <exit>
  70:	e3001cd0 	movw	r1, #3280	; 0xcd0
  74:	e3a00000 	mov	r0, #0
  78:	e3401000 	movt	r1, #0
  7c:	eb000000 	bl	84 <wc>
  80:	eb0000e2 	bl	410 <exit>

00000084 <wc>:
  84:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  88:	e3a04000 	mov	r4, #0
  8c:	e28db020 	add	fp, sp, #32
  90:	e3006cac 	movw	r6, #3244	; 0xcac
  94:	e3406000 	movt	r6, #0
  98:	e1a09004 	mov	r9, r4
  9c:	e1a07004 	mov	r7, r4
  a0:	e24dd01c 	sub	sp, sp, #28
  a4:	e3003d10 	movw	r3, #3344	; 0xd10
  a8:	e3403000 	movt	r3, #0
  ac:	e50b002c 	str	r0, [fp, #-44]	; 0xffffffd4
  b0:	e50b3030 	str	r3, [fp, #-48]	; 0xffffffd0
  b4:	e50b1034 	str	r1, [fp, #-52]	; 0xffffffcc
  b8:	e50b4028 	str	r4, [fp, #-40]	; 0xffffffd8
  bc:	e3a02c02 	mov	r2, #512	; 0x200
  c0:	e3001d10 	movw	r1, #3344	; 0xd10
  c4:	e51b002c 	ldr	r0, [fp, #-44]	; 0xffffffd4
  c8:	e3401000 	movt	r1, #0
  cc:	eb0000f6 	bl	4ac <read>
  d0:	e2508000 	subs	r8, r0, #0
  d4:	da000017 	ble	138 <wc+0xb4>
  d8:	e51b3030 	ldr	r3, [fp, #-48]	; 0xffffffd0
  dc:	e300ad10 	movw	sl, #3344	; 0xd10
  e0:	e340a000 	movt	sl, #0
  e4:	e0835008 	add	r5, r3, r8
  e8:	ea000001 	b	f4 <wc+0x70>
  ec:	e155000a 	cmp	r5, sl
  f0:	0a00000e 	beq	130 <wc+0xac>
  f4:	e4da1001 	ldrb	r1, [sl], #1
  f8:	e1a00006 	mov	r0, r6
  fc:	e351000a 	cmp	r1, #10
 100:	02877001 	addeq	r7, r7, #1
 104:	eb000053 	bl	258 <strchr>
 108:	e3500000 	cmp	r0, #0
 10c:	13a04000 	movne	r4, #0
 110:	1afffff5 	bne	ec <wc+0x68>
 114:	e3540000 	cmp	r4, #0
 118:	051b3028 	ldreq	r3, [fp, #-40]	; 0xffffffd8
 11c:	03a04001 	moveq	r4, #1
 120:	02833001 	addeq	r3, r3, #1
 124:	050b3028 	streq	r3, [fp, #-40]	; 0xffffffd8
 128:	e155000a 	cmp	r5, sl
 12c:	1afffff0 	bne	f4 <wc+0x70>
 130:	e0899008 	add	r9, r9, r8
 134:	eaffffe0 	b	bc <wc+0x38>
 138:	1a00000a 	bne	168 <wc+0xe4>
 13c:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
 140:	e1a02007 	mov	r2, r7
 144:	e58d9000 	str	r9, [sp]
 148:	e3a00001 	mov	r0, #1
 14c:	e3001cc4 	movw	r1, #3268	; 0xcc4
 150:	e3401000 	movt	r1, #0
 154:	e58d3004 	str	r3, [sp, #4]
 158:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
 15c:	eb00020c 	bl	994 <printf>
 160:	e24bd020 	sub	sp, fp, #32
 164:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 168:	e3001cb4 	movw	r1, #3252	; 0xcb4
 16c:	e3a00001 	mov	r0, #1
 170:	e3401000 	movt	r1, #0
 174:	eb000206 	bl	994 <printf>
 178:	eb0000a4 	bl	410 <exit>

0000017c <strcpy>:
 17c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 180:	e2402001 	sub	r2, r0, #1
 184:	e28db000 	add	fp, sp, #0
 188:	e4d13001 	ldrb	r3, [r1], #1
 18c:	e3530000 	cmp	r3, #0
 190:	e5e23001 	strb	r3, [r2, #1]!
 194:	1afffffb 	bne	188 <strcpy+0xc>
 198:	e28bd000 	add	sp, fp, #0
 19c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 1a0:	e12fff1e 	bx	lr

000001a4 <strcmp>:
 1a4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 1a8:	e28db000 	add	fp, sp, #0
 1ac:	e5d03000 	ldrb	r3, [r0]
 1b0:	e5d12000 	ldrb	r2, [r1]
 1b4:	e3530000 	cmp	r3, #0
 1b8:	1a000004 	bne	1d0 <strcmp+0x2c>
 1bc:	ea000005 	b	1d8 <strcmp+0x34>
 1c0:	e5f03001 	ldrb	r3, [r0, #1]!
 1c4:	e5f12001 	ldrb	r2, [r1, #1]!
 1c8:	e3530000 	cmp	r3, #0
 1cc:	0a000001 	beq	1d8 <strcmp+0x34>
 1d0:	e1530002 	cmp	r3, r2
 1d4:	0afffff9 	beq	1c0 <strcmp+0x1c>
 1d8:	e0430002 	sub	r0, r3, r2
 1dc:	e28bd000 	add	sp, fp, #0
 1e0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 1e4:	e12fff1e 	bx	lr

000001e8 <strlen>:
 1e8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 1ec:	e28db000 	add	fp, sp, #0
 1f0:	e5d03000 	ldrb	r3, [r0]
 1f4:	e3530000 	cmp	r3, #0
 1f8:	01a00003 	moveq	r0, r3
 1fc:	0a000006 	beq	21c <strlen+0x34>
 200:	e1a02000 	mov	r2, r0
 204:	e3a03000 	mov	r3, #0
 208:	e5f21001 	ldrb	r1, [r2, #1]!
 20c:	e2833001 	add	r3, r3, #1
 210:	e3510000 	cmp	r1, #0
 214:	e1a00003 	mov	r0, r3
 218:	1afffffa 	bne	208 <strlen+0x20>
 21c:	e28bd000 	add	sp, fp, #0
 220:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 224:	e12fff1e 	bx	lr

00000228 <memset>:
 228:	e3520000 	cmp	r2, #0
 22c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 230:	e28db000 	add	fp, sp, #0
 234:	0a000004 	beq	24c <memset+0x24>
 238:	e6ef1071 	uxtb	r1, r1
 23c:	e0802002 	add	r2, r0, r2
 240:	e4c01001 	strb	r1, [r0], #1
 244:	e1520000 	cmp	r2, r0
 248:	1afffffc 	bne	240 <memset+0x18>
 24c:	e28bd000 	add	sp, fp, #0
 250:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 254:	e12fff1e 	bx	lr

00000258 <strchr>:
 258:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 25c:	e28db000 	add	fp, sp, #0
 260:	e5d02000 	ldrb	r2, [r0]
 264:	e3520000 	cmp	r2, #0
 268:	0a00000b 	beq	29c <strchr+0x44>
 26c:	e1510002 	cmp	r1, r2
 270:	1a000002 	bne	280 <strchr+0x28>
 274:	ea000005 	b	290 <strchr+0x38>
 278:	e1530001 	cmp	r3, r1
 27c:	0a000003 	beq	290 <strchr+0x38>
 280:	e5f03001 	ldrb	r3, [r0, #1]!
 284:	e3530000 	cmp	r3, #0
 288:	1afffffa 	bne	278 <strchr+0x20>
 28c:	e1a00003 	mov	r0, r3
 290:	e28bd000 	add	sp, fp, #0
 294:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 298:	e12fff1e 	bx	lr
 29c:	e1a00002 	mov	r0, r2
 2a0:	eafffffa 	b	290 <strchr+0x38>

000002a4 <gets>:
 2a4:	e92d48f0 	push	{r4, r5, r6, r7, fp, lr}
 2a8:	e1a03000 	mov	r3, r0
 2ac:	e28db014 	add	fp, sp, #20
 2b0:	e1a07000 	mov	r7, r0
 2b4:	e24dd008 	sub	sp, sp, #8
 2b8:	e1a06001 	mov	r6, r1
 2bc:	e3a04000 	mov	r4, #0
 2c0:	ea000008 	b	2e8 <gets+0x44>
 2c4:	eb000078 	bl	4ac <read>
 2c8:	e1a03005 	mov	r3, r5
 2cc:	e3500000 	cmp	r0, #0
 2d0:	da00000b 	ble	304 <gets+0x60>
 2d4:	e55b2015 	ldrb	r2, [fp, #-21]	; 0xffffffeb
 2d8:	e352000d 	cmp	r2, #13
 2dc:	1352000a 	cmpne	r2, #10
 2e0:	e4c32001 	strb	r2, [r3], #1
 2e4:	0a00000b 	beq	318 <gets+0x74>
 2e8:	e3a02001 	mov	r2, #1
 2ec:	e0844002 	add	r4, r4, r2
 2f0:	e1540006 	cmp	r4, r6
 2f4:	e24b1015 	sub	r1, fp, #21
 2f8:	e3a00000 	mov	r0, #0
 2fc:	e1a05003 	mov	r5, r3
 300:	baffffef 	blt	2c4 <gets+0x20>
 304:	e1a00007 	mov	r0, r7
 308:	e3a03000 	mov	r3, #0
 30c:	e5c53000 	strb	r3, [r5]
 310:	e24bd014 	sub	sp, fp, #20
 314:	e8bd88f0 	pop	{r4, r5, r6, r7, fp, pc}
 318:	e0875004 	add	r5, r7, r4
 31c:	eafffff8 	b	304 <gets+0x60>

00000320 <stat>:
 320:	e92d4830 	push	{r4, r5, fp, lr}
 324:	e1a04001 	mov	r4, r1
 328:	e28db00c 	add	fp, sp, #12
 32c:	e3a01000 	mov	r1, #0
 330:	eb00009e 	bl	5b0 <open>
 334:	e2505000 	subs	r5, r0, #0
 338:	ba000006 	blt	358 <stat+0x38>
 33c:	e1a01004 	mov	r1, r4
 340:	eb0000c1 	bl	64c <fstat>
 344:	e1a04000 	mov	r4, r0
 348:	e1a00005 	mov	r0, r5
 34c:	eb000070 	bl	514 <close>
 350:	e1a00004 	mov	r0, r4
 354:	e8bd8830 	pop	{r4, r5, fp, pc}
 358:	e3e04000 	mvn	r4, #0
 35c:	eafffffb 	b	350 <stat+0x30>

00000360 <atoi>:
 360:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 364:	e28db000 	add	fp, sp, #0
 368:	e5d02000 	ldrb	r2, [r0]
 36c:	e2423030 	sub	r3, r2, #48	; 0x30
 370:	e3530009 	cmp	r3, #9
 374:	e3a03000 	mov	r3, #0
 378:	8a000006 	bhi	398 <atoi+0x38>
 37c:	e3a0c00a 	mov	ip, #10
 380:	e023239c 	mla	r3, ip, r3, r2
 384:	e5f02001 	ldrb	r2, [r0, #1]!
 388:	e2421030 	sub	r1, r2, #48	; 0x30
 38c:	e3510009 	cmp	r1, #9
 390:	e2433030 	sub	r3, r3, #48	; 0x30
 394:	9afffff9 	bls	380 <atoi+0x20>
 398:	e1a00003 	mov	r0, r3
 39c:	e28bd000 	add	sp, fp, #0
 3a0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 3a4:	e12fff1e 	bx	lr

000003a8 <memmove>:
 3a8:	e3520000 	cmp	r2, #0
 3ac:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 3b0:	e28db000 	add	fp, sp, #0
 3b4:	da000005 	ble	3d0 <memmove+0x28>
 3b8:	e0812002 	add	r2, r1, r2
 3bc:	e2403001 	sub	r3, r0, #1
 3c0:	e4d1c001 	ldrb	ip, [r1], #1
 3c4:	e1510002 	cmp	r1, r2
 3c8:	e5e3c001 	strb	ip, [r3, #1]!
 3cc:	1afffffb 	bne	3c0 <memmove+0x18>
 3d0:	e28bd000 	add	sp, fp, #0
 3d4:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 3d8:	e12fff1e 	bx	lr

000003dc <fork>:
 3dc:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 3e0:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 3e4:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 3e8:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 3ec:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 3f0:	e3a00001 	mov	r0, #1
 3f4:	ef000040 	svc	0x00000040
 3f8:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 3fc:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 400:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 404:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 408:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 40c:	e12fff1e 	bx	lr

00000410 <exit>:
 410:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 414:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 418:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 41c:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 420:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 424:	e3a00002 	mov	r0, #2
 428:	ef000040 	svc	0x00000040
 42c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 430:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 434:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 438:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 43c:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 440:	e12fff1e 	bx	lr

00000444 <wait>:
 444:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 448:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 44c:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 450:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 454:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 458:	e3a00003 	mov	r0, #3
 45c:	ef000040 	svc	0x00000040
 460:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 464:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 468:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 46c:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 470:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 474:	e12fff1e 	bx	lr

00000478 <pipe>:
 478:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 47c:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 480:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 484:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 488:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 48c:	e3a00004 	mov	r0, #4
 490:	ef000040 	svc	0x00000040
 494:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 498:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 49c:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 4a0:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 4a4:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 4a8:	e12fff1e 	bx	lr

000004ac <read>:
 4ac:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 4b0:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 4b4:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 4b8:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 4bc:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 4c0:	e3a00005 	mov	r0, #5
 4c4:	ef000040 	svc	0x00000040
 4c8:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 4cc:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 4d0:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 4d4:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 4d8:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 4dc:	e12fff1e 	bx	lr

000004e0 <write>:
 4e0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 4e4:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 4e8:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 4ec:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 4f0:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 4f4:	e3a00010 	mov	r0, #16
 4f8:	ef000040 	svc	0x00000040
 4fc:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 500:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 504:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 508:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 50c:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 510:	e12fff1e 	bx	lr

00000514 <close>:
 514:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 518:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 51c:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 520:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 524:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 528:	e3a00015 	mov	r0, #21
 52c:	ef000040 	svc	0x00000040
 530:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 534:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 538:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 53c:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 540:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 544:	e12fff1e 	bx	lr

00000548 <kill>:
 548:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 54c:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 550:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 554:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 558:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 55c:	e3a00006 	mov	r0, #6
 560:	ef000040 	svc	0x00000040
 564:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 568:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 56c:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 570:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 574:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 578:	e12fff1e 	bx	lr

0000057c <exec>:
 57c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 580:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 584:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 588:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 58c:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 590:	e3a00007 	mov	r0, #7
 594:	ef000040 	svc	0x00000040
 598:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 59c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 5a0:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 5a4:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 5a8:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 5ac:	e12fff1e 	bx	lr

000005b0 <open>:
 5b0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 5b4:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 5b8:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 5bc:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 5c0:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 5c4:	e3a0000f 	mov	r0, #15
 5c8:	ef000040 	svc	0x00000040
 5cc:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 5d0:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 5d4:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 5d8:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 5dc:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 5e0:	e12fff1e 	bx	lr

000005e4 <mknod>:
 5e4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 5e8:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 5ec:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 5f0:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 5f4:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 5f8:	e3a00011 	mov	r0, #17
 5fc:	ef000040 	svc	0x00000040
 600:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 604:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 608:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 60c:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 610:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 614:	e12fff1e 	bx	lr

00000618 <unlink>:
 618:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 61c:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 620:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 624:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 628:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 62c:	e3a00012 	mov	r0, #18
 630:	ef000040 	svc	0x00000040
 634:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 638:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 63c:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 640:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 644:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 648:	e12fff1e 	bx	lr

0000064c <fstat>:
 64c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 650:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 654:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 658:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 65c:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 660:	e3a00008 	mov	r0, #8
 664:	ef000040 	svc	0x00000040
 668:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 66c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 670:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 674:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 678:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 67c:	e12fff1e 	bx	lr

00000680 <link>:
 680:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 684:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 688:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 68c:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 690:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 694:	e3a00013 	mov	r0, #19
 698:	ef000040 	svc	0x00000040
 69c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 6a0:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 6a4:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 6a8:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 6ac:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 6b0:	e12fff1e 	bx	lr

000006b4 <mkdir>:
 6b4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 6b8:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 6bc:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 6c0:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 6c4:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 6c8:	e3a00014 	mov	r0, #20
 6cc:	ef000040 	svc	0x00000040
 6d0:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 6d4:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 6d8:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 6dc:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 6e0:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 6e4:	e12fff1e 	bx	lr

000006e8 <chdir>:
 6e8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 6ec:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 6f0:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 6f4:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 6f8:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 6fc:	e3a00009 	mov	r0, #9
 700:	ef000040 	svc	0x00000040
 704:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 708:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 70c:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 710:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 714:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 718:	e12fff1e 	bx	lr

0000071c <dup>:
 71c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 720:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 724:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 728:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 72c:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 730:	e3a0000a 	mov	r0, #10
 734:	ef000040 	svc	0x00000040
 738:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 73c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 740:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 744:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 748:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 74c:	e12fff1e 	bx	lr

00000750 <getpid>:
 750:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 754:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 758:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 75c:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 760:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 764:	e3a0000b 	mov	r0, #11
 768:	ef000040 	svc	0x00000040
 76c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 770:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 774:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 778:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 77c:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 780:	e12fff1e 	bx	lr

00000784 <sbrk>:
 784:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 788:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 78c:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 790:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 794:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 798:	e3a0000c 	mov	r0, #12
 79c:	ef000040 	svc	0x00000040
 7a0:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 7a4:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 7a8:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 7ac:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 7b0:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 7b4:	e12fff1e 	bx	lr

000007b8 <sleep>:
 7b8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 7bc:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 7c0:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 7c4:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 7c8:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 7cc:	e3a0000d 	mov	r0, #13
 7d0:	ef000040 	svc	0x00000040
 7d4:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 7d8:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 7dc:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 7e0:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 7e4:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 7e8:	e12fff1e 	bx	lr

000007ec <uptime>:
 7ec:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 7f0:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 7f4:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 7f8:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 7fc:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 800:	e3a0000e 	mov	r0, #14
 804:	ef000040 	svc	0x00000040
 808:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 80c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 810:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 814:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 818:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 81c:	e12fff1e 	bx	lr

00000820 <memfree>:
 820:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 824:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 828:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 82c:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 830:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 834:	e3a00016 	mov	r0, #22
 838:	ef000040 	svc	0x00000040
 83c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 840:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 844:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 848:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 84c:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 850:	e12fff1e 	bx	lr

00000854 <trace>:
 854:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 858:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 85c:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 860:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 864:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 868:	e3a00017 	mov	r0, #23
 86c:	ef000040 	svc	0x00000040
 870:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 874:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 878:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 87c:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 880:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 884:	e12fff1e 	bx	lr

00000888 <printint>:
 888:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 88c:	e28db020 	add	fp, sp, #32
 890:	e013afa1 	ands	sl, r3, r1, lsr #31
 894:	e24b4034 	sub	r4, fp, #52	; 0x34
 898:	e3009ce8 	movw	r9, #3304	; 0xce8
 89c:	1261e000 	rsbne	lr, r1, #0
 8a0:	e3409000 	movt	r9, #0
 8a4:	e1a05000 	mov	r5, r0
 8a8:	13a0a001 	movne	sl, #1
 8ac:	01a0e001 	moveq	lr, r1
 8b0:	e3a08000 	mov	r8, #0
 8b4:	e1a07004 	mov	r7, r4
 8b8:	e3a06001 	mov	r6, #1
 8bc:	e24dd01c 	sub	sp, sp, #28
 8c0:	e3a0c000 	mov	ip, #0
 8c4:	e3a0301f 	mov	r3, #31
 8c8:	e1a0100c 	mov	r1, ip
 8cc:	e1a0033e 	lsr	r0, lr, r3
 8d0:	e2000001 	and	r0, r0, #1
 8d4:	e1801081 	orr	r1, r0, r1, lsl #1
 8d8:	e1520001 	cmp	r2, r1
 8dc:	90411002 	subls	r1, r1, r2
 8e0:	918cc316 	orrls	ip, ip, r6, lsl r3
 8e4:	e2533001 	subs	r3, r3, #1
 8e8:	2afffff7 	bcs	8cc <printint+0x44>
 8ec:	e061e29c 	mls	r1, ip, r2, lr
 8f0:	e35c0000 	cmp	ip, #0
 8f4:	e1a0e00c 	mov	lr, ip
 8f8:	e2883001 	add	r3, r8, #1
 8fc:	e7d91001 	ldrb	r1, [r9, r1]
 900:	e4c71001 	strb	r1, [r7], #1
 904:	11a08003 	movne	r8, r3
 908:	1affffec 	bne	8c0 <printint+0x38>
 90c:	e35a0000 	cmp	sl, #0
 910:	0a000004 	beq	928 <printint+0xa0>
 914:	e24b2024 	sub	r2, fp, #36	; 0x24
 918:	e3a0102d 	mov	r1, #45	; 0x2d
 91c:	e0822003 	add	r2, r2, r3
 920:	e2883002 	add	r3, r8, #2
 924:	e5421010 	strb	r1, [r2, #-16]
 928:	e0846003 	add	r6, r4, r3
 92c:	e5763001 	ldrb	r3, [r6, #-1]!
 930:	e3a02001 	mov	r2, #1
 934:	e24b1035 	sub	r1, fp, #53	; 0x35
 938:	e1a00005 	mov	r0, r5
 93c:	e54b3035 	strb	r3, [fp, #-53]	; 0xffffffcb
 940:	ebfffee6 	bl	4e0 <write>
 944:	e1540006 	cmp	r4, r6
 948:	1afffff7 	bne	92c <printint+0xa4>
 94c:	e24bd020 	sub	sp, fp, #32
 950:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

00000954 <div>:
 954:	e92d4810 	push	{r4, fp, lr}
 958:	e3a02000 	mov	r2, #0
 95c:	e28db008 	add	fp, sp, #8
 960:	e1a0e000 	mov	lr, r0
 964:	e3a0301f 	mov	r3, #31
 968:	e1a00002 	mov	r0, r2
 96c:	e3a04001 	mov	r4, #1
 970:	e1a0c33e 	lsr	ip, lr, r3
 974:	e20cc001 	and	ip, ip, #1
 978:	e18c2082 	orr	r2, ip, r2, lsl #1
 97c:	e1520001 	cmp	r2, r1
 980:	20422001 	subcs	r2, r2, r1
 984:	21800314 	orrcs	r0, r0, r4, lsl r3
 988:	e2533001 	subs	r3, r3, #1
 98c:	38bd8810 	popcc	{r4, fp, pc}
 990:	eafffff6 	b	970 <div+0x1c>

00000994 <printf>:
 994:	e92d000e 	push	{r1, r2, r3}
 998:	e92d49f0 	push	{r4, r5, r6, r7, r8, fp, lr}
 99c:	e28db018 	add	fp, sp, #24
 9a0:	e24dd008 	sub	sp, sp, #8
 9a4:	e59b5004 	ldr	r5, [fp, #4]
 9a8:	e5d54000 	ldrb	r4, [r5]
 9ac:	e3540000 	cmp	r4, #0
 9b0:	0a00002b 	beq	a64 <printf+0xd0>
 9b4:	e1a07000 	mov	r7, r0
 9b8:	e28b8008 	add	r8, fp, #8
 9bc:	e3a06000 	mov	r6, #0
 9c0:	ea00000a 	b	9f0 <printf+0x5c>
 9c4:	e3540025 	cmp	r4, #37	; 0x25
 9c8:	01a06004 	moveq	r6, r4
 9cc:	0a000004 	beq	9e4 <printf+0x50>
 9d0:	e24b1018 	sub	r1, fp, #24
 9d4:	e3a02001 	mov	r2, #1
 9d8:	e1a00007 	mov	r0, r7
 9dc:	e5614006 	strb	r4, [r1, #-6]!
 9e0:	ebfffebe 	bl	4e0 <write>
 9e4:	e5f54001 	ldrb	r4, [r5, #1]!
 9e8:	e3540000 	cmp	r4, #0
 9ec:	0a00001c 	beq	a64 <printf+0xd0>
 9f0:	e3560000 	cmp	r6, #0
 9f4:	0afffff2 	beq	9c4 <printf+0x30>
 9f8:	e3560025 	cmp	r6, #37	; 0x25
 9fc:	1afffff8 	bne	9e4 <printf+0x50>
 a00:	e3540064 	cmp	r4, #100	; 0x64
 a04:	0a000030 	beq	acc <printf+0x138>
 a08:	e20430f7 	and	r3, r4, #247	; 0xf7
 a0c:	e3530070 	cmp	r3, #112	; 0x70
 a10:	0a000017 	beq	a74 <printf+0xe0>
 a14:	e3540073 	cmp	r4, #115	; 0x73
 a18:	0a00001c 	beq	a90 <printf+0xfc>
 a1c:	e3540063 	cmp	r4, #99	; 0x63
 a20:	0a000037 	beq	b04 <printf+0x170>
 a24:	e3540025 	cmp	r4, #37	; 0x25
 a28:	0a00002e 	beq	ae8 <printf+0x154>
 a2c:	e3a02001 	mov	r2, #1
 a30:	e24b1019 	sub	r1, fp, #25
 a34:	e1a00007 	mov	r0, r7
 a38:	e54b6019 	strb	r6, [fp, #-25]	; 0xffffffe7
 a3c:	ebfffea7 	bl	4e0 <write>
 a40:	e3a02001 	mov	r2, #1
 a44:	e24b101a 	sub	r1, fp, #26
 a48:	e1a00007 	mov	r0, r7
 a4c:	e54b401a 	strb	r4, [fp, #-26]	; 0xffffffe6
 a50:	ebfffea2 	bl	4e0 <write>
 a54:	e5f54001 	ldrb	r4, [r5, #1]!
 a58:	e3a06000 	mov	r6, #0
 a5c:	e3540000 	cmp	r4, #0
 a60:	1affffe2 	bne	9f0 <printf+0x5c>
 a64:	e24bd018 	sub	sp, fp, #24
 a68:	e8bd49f0 	pop	{r4, r5, r6, r7, r8, fp, lr}
 a6c:	e28dd00c 	add	sp, sp, #12
 a70:	e12fff1e 	bx	lr
 a74:	e3a03000 	mov	r3, #0
 a78:	e3a02010 	mov	r2, #16
 a7c:	e4981004 	ldr	r1, [r8], #4
 a80:	e1a00007 	mov	r0, r7
 a84:	ebffff7f 	bl	888 <printint>
 a88:	e3a06000 	mov	r6, #0
 a8c:	eaffffd4 	b	9e4 <printf+0x50>
 a90:	e4984004 	ldr	r4, [r8], #4
 a94:	e3540000 	cmp	r4, #0
 a98:	0a000021 	beq	b24 <printf+0x190>
 a9c:	e5d46000 	ldrb	r6, [r4]
 aa0:	e3560000 	cmp	r6, #0
 aa4:	0affffce 	beq	9e4 <printf+0x50>
 aa8:	e3a02001 	mov	r2, #1
 aac:	e24b101d 	sub	r1, fp, #29
 ab0:	e1a00007 	mov	r0, r7
 ab4:	e54b601d 	strb	r6, [fp, #-29]	; 0xffffffe3
 ab8:	ebfffe88 	bl	4e0 <write>
 abc:	e5f46001 	ldrb	r6, [r4, #1]!
 ac0:	e3560000 	cmp	r6, #0
 ac4:	1afffff7 	bne	aa8 <printf+0x114>
 ac8:	eaffffc5 	b	9e4 <printf+0x50>
 acc:	e3a03001 	mov	r3, #1
 ad0:	e3a0200a 	mov	r2, #10
 ad4:	e4981004 	ldr	r1, [r8], #4
 ad8:	e1a00007 	mov	r0, r7
 adc:	ebffff69 	bl	888 <printint>
 ae0:	e3a06000 	mov	r6, #0
 ae4:	eaffffbe 	b	9e4 <printf+0x50>
 ae8:	e24b1018 	sub	r1, fp, #24
 aec:	e3a02001 	mov	r2, #1
 af0:	e1a00007 	mov	r0, r7
 af4:	e5616003 	strb	r6, [r1, #-3]!
 af8:	e3a06000 	mov	r6, #0
 afc:	ebfffe77 	bl	4e0 <write>
 b00:	eaffffb7 	b	9e4 <printf+0x50>
 b04:	e4983004 	ldr	r3, [r8], #4
 b08:	e24b1018 	sub	r1, fp, #24
 b0c:	e3a02001 	mov	r2, #1
 b10:	e1a00007 	mov	r0, r7
 b14:	e3a06000 	mov	r6, #0
 b18:	e5613004 	strb	r3, [r1, #-4]!
 b1c:	ebfffe6f 	bl	4e0 <write>
 b20:	eaffffaf 	b	9e4 <printf+0x50>
 b24:	e3004cfc 	movw	r4, #3324	; 0xcfc
 b28:	e3a06028 	mov	r6, #40	; 0x28
 b2c:	e3404000 	movt	r4, #0
 b30:	eaffffdc 	b	aa8 <printf+0x114>

00000b34 <free>:
 b34:	e300cd04 	movw	ip, #3332	; 0xd04
 b38:	e340c000 	movt	ip, #0
 b3c:	e92d4810 	push	{r4, fp, lr}
 b40:	e2401008 	sub	r1, r0, #8
 b44:	e59c3000 	ldr	r3, [ip]
 b48:	e28db008 	add	fp, sp, #8
 b4c:	e1530001 	cmp	r3, r1
 b50:	e5932000 	ldr	r2, [r3]
 b54:	2a000017 	bcs	bb8 <free+0x84>
 b58:	e1510002 	cmp	r1, r2
 b5c:	3a000001 	bcc	b68 <free+0x34>
 b60:	e1530002 	cmp	r3, r2
 b64:	3a000017 	bcc	bc8 <free+0x94>
 b68:	e510e004 	ldr	lr, [r0, #-4]
 b6c:	e58c3000 	str	r3, [ip]
 b70:	e081418e 	add	r4, r1, lr, lsl #3
 b74:	e1520004 	cmp	r2, r4
 b78:	05922004 	ldreq	r2, [r2, #4]
 b7c:	0082e00e 	addeq	lr, r2, lr
 b80:	0500e004 	streq	lr, [r0, #-4]
 b84:	05932000 	ldreq	r2, [r3]
 b88:	05922000 	ldreq	r2, [r2]
 b8c:	e5002008 	str	r2, [r0, #-8]
 b90:	e5932004 	ldr	r2, [r3, #4]
 b94:	e083e182 	add	lr, r3, r2, lsl #3
 b98:	e151000e 	cmp	r1, lr
 b9c:	15831000 	strne	r1, [r3]
 ba0:	05101004 	ldreq	r1, [r0, #-4]
 ba4:	00812002 	addeq	r2, r1, r2
 ba8:	05832004 	streq	r2, [r3, #4]
 bac:	05102008 	ldreq	r2, [r0, #-8]
 bb0:	05832000 	streq	r2, [r3]
 bb4:	e8bd8810 	pop	{r4, fp, pc}
 bb8:	e1530002 	cmp	r3, r2
 bbc:	3a000001 	bcc	bc8 <free+0x94>
 bc0:	e1510002 	cmp	r1, r2
 bc4:	3affffe7 	bcc	b68 <free+0x34>
 bc8:	e1a03002 	mov	r3, r2
 bcc:	eaffffde 	b	b4c <free+0x18>

00000bd0 <malloc>:
 bd0:	e92d48f0 	push	{r4, r5, r6, r7, fp, lr}
 bd4:	e3007d04 	movw	r7, #3332	; 0xd04
 bd8:	e3407000 	movt	r7, #0
 bdc:	e2804007 	add	r4, r0, #7
 be0:	e28db014 	add	fp, sp, #20
 be4:	e5973000 	ldr	r3, [r7]
 be8:	e1a041a4 	lsr	r4, r4, #3
 bec:	e2844001 	add	r4, r4, #1
 bf0:	e3530000 	cmp	r3, #0
 bf4:	0a000027 	beq	c98 <malloc+0xc8>
 bf8:	e5930000 	ldr	r0, [r3]
 bfc:	e5902004 	ldr	r2, [r0, #4]
 c00:	e1540002 	cmp	r4, r2
 c04:	9a000019 	bls	c70 <malloc+0xa0>
 c08:	e3540a01 	cmp	r4, #4096	; 0x1000
 c0c:	21a05004 	movcs	r5, r4
 c10:	33a05a01 	movcc	r5, #4096	; 0x1000
 c14:	e1a06185 	lsl	r6, r5, #3
 c18:	ea000003 	b	c2c <malloc+0x5c>
 c1c:	e5930000 	ldr	r0, [r3]
 c20:	e5902004 	ldr	r2, [r0, #4]
 c24:	e1520004 	cmp	r2, r4
 c28:	2a000010 	bcs	c70 <malloc+0xa0>
 c2c:	e5972000 	ldr	r2, [r7]
 c30:	e1a03000 	mov	r3, r0
 c34:	e1520000 	cmp	r2, r0
 c38:	1afffff7 	bne	c1c <malloc+0x4c>
 c3c:	e1a00006 	mov	r0, r6
 c40:	ebfffecf 	bl	784 <sbrk>
 c44:	e1a03000 	mov	r3, r0
 c48:	e3730001 	cmn	r3, #1
 c4c:	e2800008 	add	r0, r0, #8
 c50:	0a000004 	beq	c68 <malloc+0x98>
 c54:	e5835004 	str	r5, [r3, #4]
 c58:	ebffffb5 	bl	b34 <free>
 c5c:	e5973000 	ldr	r3, [r7]
 c60:	e3530000 	cmp	r3, #0
 c64:	1affffec 	bne	c1c <malloc+0x4c>
 c68:	e3a00000 	mov	r0, #0
 c6c:	e8bd88f0 	pop	{r4, r5, r6, r7, fp, pc}
 c70:	e1540002 	cmp	r4, r2
 c74:	e5873000 	str	r3, [r7]
 c78:	10422004 	subne	r2, r2, r4
 c7c:	15802004 	strne	r2, [r0, #4]
 c80:	05902000 	ldreq	r2, [r0]
 c84:	10800182 	addne	r0, r0, r2, lsl #3
 c88:	e2800008 	add	r0, r0, #8
 c8c:	15004004 	strne	r4, [r0, #-4]
 c90:	05832000 	streq	r2, [r3]
 c94:	e8bd88f0 	pop	{r4, r5, r6, r7, fp, pc}
 c98:	e2870004 	add	r0, r7, #4
 c9c:	e5873008 	str	r3, [r7, #8]
 ca0:	e5870000 	str	r0, [r7]
 ca4:	e5870004 	str	r0, [r7, #4]
 ca8:	eaffffd6 	b	c08 <malloc+0x38>

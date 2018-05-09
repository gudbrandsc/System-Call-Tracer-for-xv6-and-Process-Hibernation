
_cat:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
   0:	e3500001 	cmp	r0, #1
   4:	e92d4bf0 	push	{r4, r5, r6, r7, r8, r9, fp, lr}
   8:	c1a08000 	movgt	r8, r0
   c:	e28db01c 	add	fp, sp, #28
  10:	c2814004 	addgt	r4, r1, #4
  14:	c3a05001 	movgt	r5, #1
  18:	da000013 	ble	6c <main+0x6c>
  1c:	e5940000 	ldr	r0, [r4]
  20:	e3a01000 	mov	r1, #0
  24:	eb000135 	bl	500 <open>
  28:	e1a06004 	mov	r6, r4
  2c:	e2844004 	add	r4, r4, #4
  30:	e2507000 	subs	r7, r0, #0
  34:	ba000006 	blt	54 <main+0x54>
  38:	eb00000e 	bl	78 <cat>
  3c:	e2855001 	add	r5, r5, #1
  40:	e1a00007 	mov	r0, r7
  44:	eb000106 	bl	464 <close>
  48:	e1580005 	cmp	r8, r5
  4c:	1afffff2 	bne	1c <main+0x1c>
  50:	eb0000c2 	bl	360 <exit>
  54:	e5962000 	ldr	r2, [r6]
  58:	e3001c10 	movw	r1, #3088	; 0xc10
  5c:	e3a00001 	mov	r0, #1
  60:	e3401000 	movt	r1, #0
  64:	eb00021e 	bl	8e4 <printf>
  68:	eb0000bc 	bl	360 <exit>
  6c:	e3a00000 	mov	r0, #0
  70:	eb000000 	bl	78 <cat>
  74:	eb0000b9 	bl	360 <exit>

00000078 <cat>:
  78:	e92d4830 	push	{r4, r5, fp, lr}
  7c:	e3004c50 	movw	r4, #3152	; 0xc50
  80:	e28db00c 	add	fp, sp, #12
  84:	e1a05000 	mov	r5, r0
  88:	e3404000 	movt	r4, #0
  8c:	ea000002 	b	9c <cat+0x24>
  90:	e1a01004 	mov	r1, r4
  94:	e3a00001 	mov	r0, #1
  98:	eb0000e4 	bl	430 <write>
  9c:	e3a02c02 	mov	r2, #512	; 0x200
  a0:	e1a01004 	mov	r1, r4
  a4:	e1a00005 	mov	r0, r5
  a8:	eb0000d3 	bl	3fc <read>
  ac:	e2502000 	subs	r2, r0, #0
  b0:	cafffff6 	bgt	90 <cat+0x18>
  b4:	08bd8830 	popeq	{r4, r5, fp, pc}
  b8:	e3001bfc 	movw	r1, #3068	; 0xbfc
  bc:	e3a00001 	mov	r0, #1
  c0:	e3401000 	movt	r1, #0
  c4:	eb000206 	bl	8e4 <printf>
  c8:	eb0000a4 	bl	360 <exit>

000000cc <strcpy>:
  cc:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  d0:	e2402001 	sub	r2, r0, #1
  d4:	e28db000 	add	fp, sp, #0
  d8:	e4d13001 	ldrb	r3, [r1], #1
  dc:	e3530000 	cmp	r3, #0
  e0:	e5e23001 	strb	r3, [r2, #1]!
  e4:	1afffffb 	bne	d8 <strcpy+0xc>
  e8:	e28bd000 	add	sp, fp, #0
  ec:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  f0:	e12fff1e 	bx	lr

000000f4 <strcmp>:
  f4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  f8:	e28db000 	add	fp, sp, #0
  fc:	e5d03000 	ldrb	r3, [r0]
 100:	e5d12000 	ldrb	r2, [r1]
 104:	e3530000 	cmp	r3, #0
 108:	1a000004 	bne	120 <strcmp+0x2c>
 10c:	ea000005 	b	128 <strcmp+0x34>
 110:	e5f03001 	ldrb	r3, [r0, #1]!
 114:	e5f12001 	ldrb	r2, [r1, #1]!
 118:	e3530000 	cmp	r3, #0
 11c:	0a000001 	beq	128 <strcmp+0x34>
 120:	e1530002 	cmp	r3, r2
 124:	0afffff9 	beq	110 <strcmp+0x1c>
 128:	e0430002 	sub	r0, r3, r2
 12c:	e28bd000 	add	sp, fp, #0
 130:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 134:	e12fff1e 	bx	lr

00000138 <strlen>:
 138:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 13c:	e28db000 	add	fp, sp, #0
 140:	e5d03000 	ldrb	r3, [r0]
 144:	e3530000 	cmp	r3, #0
 148:	01a00003 	moveq	r0, r3
 14c:	0a000006 	beq	16c <strlen+0x34>
 150:	e1a02000 	mov	r2, r0
 154:	e3a03000 	mov	r3, #0
 158:	e5f21001 	ldrb	r1, [r2, #1]!
 15c:	e2833001 	add	r3, r3, #1
 160:	e3510000 	cmp	r1, #0
 164:	e1a00003 	mov	r0, r3
 168:	1afffffa 	bne	158 <strlen+0x20>
 16c:	e28bd000 	add	sp, fp, #0
 170:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 174:	e12fff1e 	bx	lr

00000178 <memset>:
 178:	e3520000 	cmp	r2, #0
 17c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 180:	e28db000 	add	fp, sp, #0
 184:	0a000004 	beq	19c <memset+0x24>
 188:	e6ef1071 	uxtb	r1, r1
 18c:	e0802002 	add	r2, r0, r2
 190:	e4c01001 	strb	r1, [r0], #1
 194:	e1520000 	cmp	r2, r0
 198:	1afffffc 	bne	190 <memset+0x18>
 19c:	e28bd000 	add	sp, fp, #0
 1a0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 1a4:	e12fff1e 	bx	lr

000001a8 <strchr>:
 1a8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 1ac:	e28db000 	add	fp, sp, #0
 1b0:	e5d02000 	ldrb	r2, [r0]
 1b4:	e3520000 	cmp	r2, #0
 1b8:	0a00000b 	beq	1ec <strchr+0x44>
 1bc:	e1510002 	cmp	r1, r2
 1c0:	1a000002 	bne	1d0 <strchr+0x28>
 1c4:	ea000005 	b	1e0 <strchr+0x38>
 1c8:	e1530001 	cmp	r3, r1
 1cc:	0a000003 	beq	1e0 <strchr+0x38>
 1d0:	e5f03001 	ldrb	r3, [r0, #1]!
 1d4:	e3530000 	cmp	r3, #0
 1d8:	1afffffa 	bne	1c8 <strchr+0x20>
 1dc:	e1a00003 	mov	r0, r3
 1e0:	e28bd000 	add	sp, fp, #0
 1e4:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 1e8:	e12fff1e 	bx	lr
 1ec:	e1a00002 	mov	r0, r2
 1f0:	eafffffa 	b	1e0 <strchr+0x38>

000001f4 <gets>:
 1f4:	e92d48f0 	push	{r4, r5, r6, r7, fp, lr}
 1f8:	e1a03000 	mov	r3, r0
 1fc:	e28db014 	add	fp, sp, #20
 200:	e1a07000 	mov	r7, r0
 204:	e24dd008 	sub	sp, sp, #8
 208:	e1a06001 	mov	r6, r1
 20c:	e3a04000 	mov	r4, #0
 210:	ea000008 	b	238 <gets+0x44>
 214:	eb000078 	bl	3fc <read>
 218:	e1a03005 	mov	r3, r5
 21c:	e3500000 	cmp	r0, #0
 220:	da00000b 	ble	254 <gets+0x60>
 224:	e55b2015 	ldrb	r2, [fp, #-21]	; 0xffffffeb
 228:	e352000d 	cmp	r2, #13
 22c:	1352000a 	cmpne	r2, #10
 230:	e4c32001 	strb	r2, [r3], #1
 234:	0a00000b 	beq	268 <gets+0x74>
 238:	e3a02001 	mov	r2, #1
 23c:	e0844002 	add	r4, r4, r2
 240:	e1540006 	cmp	r4, r6
 244:	e24b1015 	sub	r1, fp, #21
 248:	e3a00000 	mov	r0, #0
 24c:	e1a05003 	mov	r5, r3
 250:	baffffef 	blt	214 <gets+0x20>
 254:	e1a00007 	mov	r0, r7
 258:	e3a03000 	mov	r3, #0
 25c:	e5c53000 	strb	r3, [r5]
 260:	e24bd014 	sub	sp, fp, #20
 264:	e8bd88f0 	pop	{r4, r5, r6, r7, fp, pc}
 268:	e0875004 	add	r5, r7, r4
 26c:	eafffff8 	b	254 <gets+0x60>

00000270 <stat>:
 270:	e92d4830 	push	{r4, r5, fp, lr}
 274:	e1a04001 	mov	r4, r1
 278:	e28db00c 	add	fp, sp, #12
 27c:	e3a01000 	mov	r1, #0
 280:	eb00009e 	bl	500 <open>
 284:	e2505000 	subs	r5, r0, #0
 288:	ba000006 	blt	2a8 <stat+0x38>
 28c:	e1a01004 	mov	r1, r4
 290:	eb0000c1 	bl	59c <fstat>
 294:	e1a04000 	mov	r4, r0
 298:	e1a00005 	mov	r0, r5
 29c:	eb000070 	bl	464 <close>
 2a0:	e1a00004 	mov	r0, r4
 2a4:	e8bd8830 	pop	{r4, r5, fp, pc}
 2a8:	e3e04000 	mvn	r4, #0
 2ac:	eafffffb 	b	2a0 <stat+0x30>

000002b0 <atoi>:
 2b0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 2b4:	e28db000 	add	fp, sp, #0
 2b8:	e5d02000 	ldrb	r2, [r0]
 2bc:	e2423030 	sub	r3, r2, #48	; 0x30
 2c0:	e3530009 	cmp	r3, #9
 2c4:	e3a03000 	mov	r3, #0
 2c8:	8a000006 	bhi	2e8 <atoi+0x38>
 2cc:	e3a0c00a 	mov	ip, #10
 2d0:	e023239c 	mla	r3, ip, r3, r2
 2d4:	e5f02001 	ldrb	r2, [r0, #1]!
 2d8:	e2421030 	sub	r1, r2, #48	; 0x30
 2dc:	e3510009 	cmp	r1, #9
 2e0:	e2433030 	sub	r3, r3, #48	; 0x30
 2e4:	9afffff9 	bls	2d0 <atoi+0x20>
 2e8:	e1a00003 	mov	r0, r3
 2ec:	e28bd000 	add	sp, fp, #0
 2f0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 2f4:	e12fff1e 	bx	lr

000002f8 <memmove>:
 2f8:	e3520000 	cmp	r2, #0
 2fc:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 300:	e28db000 	add	fp, sp, #0
 304:	da000005 	ble	320 <memmove+0x28>
 308:	e0812002 	add	r2, r1, r2
 30c:	e2403001 	sub	r3, r0, #1
 310:	e4d1c001 	ldrb	ip, [r1], #1
 314:	e1510002 	cmp	r1, r2
 318:	e5e3c001 	strb	ip, [r3, #1]!
 31c:	1afffffb 	bne	310 <memmove+0x18>
 320:	e28bd000 	add	sp, fp, #0
 324:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 328:	e12fff1e 	bx	lr

0000032c <fork>:
 32c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 330:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 334:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 338:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 33c:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 340:	e3a00001 	mov	r0, #1
 344:	ef000040 	svc	0x00000040
 348:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 34c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 350:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 354:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 358:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 35c:	e12fff1e 	bx	lr

00000360 <exit>:
 360:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 364:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 368:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 36c:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 370:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 374:	e3a00002 	mov	r0, #2
 378:	ef000040 	svc	0x00000040
 37c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 380:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 384:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 388:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 38c:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 390:	e12fff1e 	bx	lr

00000394 <wait>:
 394:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 398:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 39c:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 3a0:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 3a4:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 3a8:	e3a00003 	mov	r0, #3
 3ac:	ef000040 	svc	0x00000040
 3b0:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 3b4:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 3b8:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 3bc:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 3c0:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 3c4:	e12fff1e 	bx	lr

000003c8 <pipe>:
 3c8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 3cc:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 3d0:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 3d4:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 3d8:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 3dc:	e3a00004 	mov	r0, #4
 3e0:	ef000040 	svc	0x00000040
 3e4:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 3e8:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 3ec:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 3f0:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 3f4:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 3f8:	e12fff1e 	bx	lr

000003fc <read>:
 3fc:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 400:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 404:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 408:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 40c:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 410:	e3a00005 	mov	r0, #5
 414:	ef000040 	svc	0x00000040
 418:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 41c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 420:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 424:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 428:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 42c:	e12fff1e 	bx	lr

00000430 <write>:
 430:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 434:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 438:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 43c:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 440:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 444:	e3a00010 	mov	r0, #16
 448:	ef000040 	svc	0x00000040
 44c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 450:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 454:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 458:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 45c:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 460:	e12fff1e 	bx	lr

00000464 <close>:
 464:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 468:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 46c:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 470:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 474:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 478:	e3a00015 	mov	r0, #21
 47c:	ef000040 	svc	0x00000040
 480:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 484:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 488:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 48c:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 490:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 494:	e12fff1e 	bx	lr

00000498 <kill>:
 498:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 49c:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 4a0:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 4a4:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 4a8:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 4ac:	e3a00006 	mov	r0, #6
 4b0:	ef000040 	svc	0x00000040
 4b4:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 4b8:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 4bc:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 4c0:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 4c4:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 4c8:	e12fff1e 	bx	lr

000004cc <exec>:
 4cc:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 4d0:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 4d4:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 4d8:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 4dc:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 4e0:	e3a00007 	mov	r0, #7
 4e4:	ef000040 	svc	0x00000040
 4e8:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 4ec:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 4f0:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 4f4:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 4f8:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 4fc:	e12fff1e 	bx	lr

00000500 <open>:
 500:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 504:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 508:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 50c:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 510:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 514:	e3a0000f 	mov	r0, #15
 518:	ef000040 	svc	0x00000040
 51c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 520:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 524:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 528:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 52c:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 530:	e12fff1e 	bx	lr

00000534 <mknod>:
 534:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 538:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 53c:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 540:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 544:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 548:	e3a00011 	mov	r0, #17
 54c:	ef000040 	svc	0x00000040
 550:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 554:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 558:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 55c:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 560:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 564:	e12fff1e 	bx	lr

00000568 <unlink>:
 568:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 56c:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 570:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 574:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 578:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 57c:	e3a00012 	mov	r0, #18
 580:	ef000040 	svc	0x00000040
 584:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 588:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 58c:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 590:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 594:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 598:	e12fff1e 	bx	lr

0000059c <fstat>:
 59c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 5a0:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 5a4:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 5a8:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 5ac:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 5b0:	e3a00008 	mov	r0, #8
 5b4:	ef000040 	svc	0x00000040
 5b8:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 5bc:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 5c0:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 5c4:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 5c8:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 5cc:	e12fff1e 	bx	lr

000005d0 <link>:
 5d0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 5d4:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 5d8:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 5dc:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 5e0:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 5e4:	e3a00013 	mov	r0, #19
 5e8:	ef000040 	svc	0x00000040
 5ec:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 5f0:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 5f4:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 5f8:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 5fc:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 600:	e12fff1e 	bx	lr

00000604 <mkdir>:
 604:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 608:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 60c:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 610:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 614:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 618:	e3a00014 	mov	r0, #20
 61c:	ef000040 	svc	0x00000040
 620:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 624:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 628:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 62c:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 630:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 634:	e12fff1e 	bx	lr

00000638 <chdir>:
 638:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 63c:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 640:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 644:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 648:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 64c:	e3a00009 	mov	r0, #9
 650:	ef000040 	svc	0x00000040
 654:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 658:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 65c:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 660:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 664:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 668:	e12fff1e 	bx	lr

0000066c <dup>:
 66c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 670:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 674:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 678:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 67c:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 680:	e3a0000a 	mov	r0, #10
 684:	ef000040 	svc	0x00000040
 688:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 68c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 690:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 694:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 698:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 69c:	e12fff1e 	bx	lr

000006a0 <getpid>:
 6a0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 6a4:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 6a8:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 6ac:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 6b0:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 6b4:	e3a0000b 	mov	r0, #11
 6b8:	ef000040 	svc	0x00000040
 6bc:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 6c0:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 6c4:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 6c8:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 6cc:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 6d0:	e12fff1e 	bx	lr

000006d4 <sbrk>:
 6d4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 6d8:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 6dc:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 6e0:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 6e4:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 6e8:	e3a0000c 	mov	r0, #12
 6ec:	ef000040 	svc	0x00000040
 6f0:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 6f4:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 6f8:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 6fc:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 700:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 704:	e12fff1e 	bx	lr

00000708 <sleep>:
 708:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 70c:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 710:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 714:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 718:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 71c:	e3a0000d 	mov	r0, #13
 720:	ef000040 	svc	0x00000040
 724:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 728:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 72c:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 730:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 734:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 738:	e12fff1e 	bx	lr

0000073c <uptime>:
 73c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 740:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 744:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 748:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 74c:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 750:	e3a0000e 	mov	r0, #14
 754:	ef000040 	svc	0x00000040
 758:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 75c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 760:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 764:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 768:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 76c:	e12fff1e 	bx	lr

00000770 <memfree>:
 770:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 774:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 778:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 77c:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 780:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 784:	e3a00016 	mov	r0, #22
 788:	ef000040 	svc	0x00000040
 78c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 790:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 794:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 798:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 79c:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 7a0:	e12fff1e 	bx	lr

000007a4 <trace>:
 7a4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 7a8:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 7ac:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 7b0:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 7b4:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 7b8:	e3a00017 	mov	r0, #23
 7bc:	ef000040 	svc	0x00000040
 7c0:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 7c4:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 7c8:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 7cc:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 7d0:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 7d4:	e12fff1e 	bx	lr

000007d8 <printint>:
 7d8:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 7dc:	e28db020 	add	fp, sp, #32
 7e0:	e013afa1 	ands	sl, r3, r1, lsr #31
 7e4:	e24b4034 	sub	r4, fp, #52	; 0x34
 7e8:	e3009c28 	movw	r9, #3112	; 0xc28
 7ec:	1261e000 	rsbne	lr, r1, #0
 7f0:	e3409000 	movt	r9, #0
 7f4:	e1a05000 	mov	r5, r0
 7f8:	13a0a001 	movne	sl, #1
 7fc:	01a0e001 	moveq	lr, r1
 800:	e3a08000 	mov	r8, #0
 804:	e1a07004 	mov	r7, r4
 808:	e3a06001 	mov	r6, #1
 80c:	e24dd01c 	sub	sp, sp, #28
 810:	e3a0c000 	mov	ip, #0
 814:	e3a0301f 	mov	r3, #31
 818:	e1a0100c 	mov	r1, ip
 81c:	e1a0033e 	lsr	r0, lr, r3
 820:	e2000001 	and	r0, r0, #1
 824:	e1801081 	orr	r1, r0, r1, lsl #1
 828:	e1520001 	cmp	r2, r1
 82c:	90411002 	subls	r1, r1, r2
 830:	918cc316 	orrls	ip, ip, r6, lsl r3
 834:	e2533001 	subs	r3, r3, #1
 838:	2afffff7 	bcs	81c <printint+0x44>
 83c:	e061e29c 	mls	r1, ip, r2, lr
 840:	e35c0000 	cmp	ip, #0
 844:	e1a0e00c 	mov	lr, ip
 848:	e2883001 	add	r3, r8, #1
 84c:	e7d91001 	ldrb	r1, [r9, r1]
 850:	e4c71001 	strb	r1, [r7], #1
 854:	11a08003 	movne	r8, r3
 858:	1affffec 	bne	810 <printint+0x38>
 85c:	e35a0000 	cmp	sl, #0
 860:	0a000004 	beq	878 <printint+0xa0>
 864:	e24b2024 	sub	r2, fp, #36	; 0x24
 868:	e3a0102d 	mov	r1, #45	; 0x2d
 86c:	e0822003 	add	r2, r2, r3
 870:	e2883002 	add	r3, r8, #2
 874:	e5421010 	strb	r1, [r2, #-16]
 878:	e0846003 	add	r6, r4, r3
 87c:	e5763001 	ldrb	r3, [r6, #-1]!
 880:	e3a02001 	mov	r2, #1
 884:	e24b1035 	sub	r1, fp, #53	; 0x35
 888:	e1a00005 	mov	r0, r5
 88c:	e54b3035 	strb	r3, [fp, #-53]	; 0xffffffcb
 890:	ebfffee6 	bl	430 <write>
 894:	e1540006 	cmp	r4, r6
 898:	1afffff7 	bne	87c <printint+0xa4>
 89c:	e24bd020 	sub	sp, fp, #32
 8a0:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

000008a4 <div>:
 8a4:	e92d4810 	push	{r4, fp, lr}
 8a8:	e3a02000 	mov	r2, #0
 8ac:	e28db008 	add	fp, sp, #8
 8b0:	e1a0e000 	mov	lr, r0
 8b4:	e3a0301f 	mov	r3, #31
 8b8:	e1a00002 	mov	r0, r2
 8bc:	e3a04001 	mov	r4, #1
 8c0:	e1a0c33e 	lsr	ip, lr, r3
 8c4:	e20cc001 	and	ip, ip, #1
 8c8:	e18c2082 	orr	r2, ip, r2, lsl #1
 8cc:	e1520001 	cmp	r2, r1
 8d0:	20422001 	subcs	r2, r2, r1
 8d4:	21800314 	orrcs	r0, r0, r4, lsl r3
 8d8:	e2533001 	subs	r3, r3, #1
 8dc:	38bd8810 	popcc	{r4, fp, pc}
 8e0:	eafffff6 	b	8c0 <div+0x1c>

000008e4 <printf>:
 8e4:	e92d000e 	push	{r1, r2, r3}
 8e8:	e92d49f0 	push	{r4, r5, r6, r7, r8, fp, lr}
 8ec:	e28db018 	add	fp, sp, #24
 8f0:	e24dd008 	sub	sp, sp, #8
 8f4:	e59b5004 	ldr	r5, [fp, #4]
 8f8:	e5d54000 	ldrb	r4, [r5]
 8fc:	e3540000 	cmp	r4, #0
 900:	0a00002b 	beq	9b4 <printf+0xd0>
 904:	e1a07000 	mov	r7, r0
 908:	e28b8008 	add	r8, fp, #8
 90c:	e3a06000 	mov	r6, #0
 910:	ea00000a 	b	940 <printf+0x5c>
 914:	e3540025 	cmp	r4, #37	; 0x25
 918:	01a06004 	moveq	r6, r4
 91c:	0a000004 	beq	934 <printf+0x50>
 920:	e24b1018 	sub	r1, fp, #24
 924:	e3a02001 	mov	r2, #1
 928:	e1a00007 	mov	r0, r7
 92c:	e5614006 	strb	r4, [r1, #-6]!
 930:	ebfffebe 	bl	430 <write>
 934:	e5f54001 	ldrb	r4, [r5, #1]!
 938:	e3540000 	cmp	r4, #0
 93c:	0a00001c 	beq	9b4 <printf+0xd0>
 940:	e3560000 	cmp	r6, #0
 944:	0afffff2 	beq	914 <printf+0x30>
 948:	e3560025 	cmp	r6, #37	; 0x25
 94c:	1afffff8 	bne	934 <printf+0x50>
 950:	e3540064 	cmp	r4, #100	; 0x64
 954:	0a000030 	beq	a1c <printf+0x138>
 958:	e20430f7 	and	r3, r4, #247	; 0xf7
 95c:	e3530070 	cmp	r3, #112	; 0x70
 960:	0a000017 	beq	9c4 <printf+0xe0>
 964:	e3540073 	cmp	r4, #115	; 0x73
 968:	0a00001c 	beq	9e0 <printf+0xfc>
 96c:	e3540063 	cmp	r4, #99	; 0x63
 970:	0a000037 	beq	a54 <printf+0x170>
 974:	e3540025 	cmp	r4, #37	; 0x25
 978:	0a00002e 	beq	a38 <printf+0x154>
 97c:	e3a02001 	mov	r2, #1
 980:	e24b1019 	sub	r1, fp, #25
 984:	e1a00007 	mov	r0, r7
 988:	e54b6019 	strb	r6, [fp, #-25]	; 0xffffffe7
 98c:	ebfffea7 	bl	430 <write>
 990:	e3a02001 	mov	r2, #1
 994:	e24b101a 	sub	r1, fp, #26
 998:	e1a00007 	mov	r0, r7
 99c:	e54b401a 	strb	r4, [fp, #-26]	; 0xffffffe6
 9a0:	ebfffea2 	bl	430 <write>
 9a4:	e5f54001 	ldrb	r4, [r5, #1]!
 9a8:	e3a06000 	mov	r6, #0
 9ac:	e3540000 	cmp	r4, #0
 9b0:	1affffe2 	bne	940 <printf+0x5c>
 9b4:	e24bd018 	sub	sp, fp, #24
 9b8:	e8bd49f0 	pop	{r4, r5, r6, r7, r8, fp, lr}
 9bc:	e28dd00c 	add	sp, sp, #12
 9c0:	e12fff1e 	bx	lr
 9c4:	e3a03000 	mov	r3, #0
 9c8:	e3a02010 	mov	r2, #16
 9cc:	e4981004 	ldr	r1, [r8], #4
 9d0:	e1a00007 	mov	r0, r7
 9d4:	ebffff7f 	bl	7d8 <printint>
 9d8:	e3a06000 	mov	r6, #0
 9dc:	eaffffd4 	b	934 <printf+0x50>
 9e0:	e4984004 	ldr	r4, [r8], #4
 9e4:	e3540000 	cmp	r4, #0
 9e8:	0a000021 	beq	a74 <printf+0x190>
 9ec:	e5d46000 	ldrb	r6, [r4]
 9f0:	e3560000 	cmp	r6, #0
 9f4:	0affffce 	beq	934 <printf+0x50>
 9f8:	e3a02001 	mov	r2, #1
 9fc:	e24b101d 	sub	r1, fp, #29
 a00:	e1a00007 	mov	r0, r7
 a04:	e54b601d 	strb	r6, [fp, #-29]	; 0xffffffe3
 a08:	ebfffe88 	bl	430 <write>
 a0c:	e5f46001 	ldrb	r6, [r4, #1]!
 a10:	e3560000 	cmp	r6, #0
 a14:	1afffff7 	bne	9f8 <printf+0x114>
 a18:	eaffffc5 	b	934 <printf+0x50>
 a1c:	e3a03001 	mov	r3, #1
 a20:	e3a0200a 	mov	r2, #10
 a24:	e4981004 	ldr	r1, [r8], #4
 a28:	e1a00007 	mov	r0, r7
 a2c:	ebffff69 	bl	7d8 <printint>
 a30:	e3a06000 	mov	r6, #0
 a34:	eaffffbe 	b	934 <printf+0x50>
 a38:	e24b1018 	sub	r1, fp, #24
 a3c:	e3a02001 	mov	r2, #1
 a40:	e1a00007 	mov	r0, r7
 a44:	e5616003 	strb	r6, [r1, #-3]!
 a48:	e3a06000 	mov	r6, #0
 a4c:	ebfffe77 	bl	430 <write>
 a50:	eaffffb7 	b	934 <printf+0x50>
 a54:	e4983004 	ldr	r3, [r8], #4
 a58:	e24b1018 	sub	r1, fp, #24
 a5c:	e3a02001 	mov	r2, #1
 a60:	e1a00007 	mov	r0, r7
 a64:	e3a06000 	mov	r6, #0
 a68:	e5613004 	strb	r3, [r1, #-4]!
 a6c:	ebfffe6f 	bl	430 <write>
 a70:	eaffffaf 	b	934 <printf+0x50>
 a74:	e3004c3c 	movw	r4, #3132	; 0xc3c
 a78:	e3a06028 	mov	r6, #40	; 0x28
 a7c:	e3404000 	movt	r4, #0
 a80:	eaffffdc 	b	9f8 <printf+0x114>

00000a84 <free>:
 a84:	e300cc44 	movw	ip, #3140	; 0xc44
 a88:	e340c000 	movt	ip, #0
 a8c:	e92d4810 	push	{r4, fp, lr}
 a90:	e2401008 	sub	r1, r0, #8
 a94:	e59c3000 	ldr	r3, [ip]
 a98:	e28db008 	add	fp, sp, #8
 a9c:	e1530001 	cmp	r3, r1
 aa0:	e5932000 	ldr	r2, [r3]
 aa4:	2a000017 	bcs	b08 <free+0x84>
 aa8:	e1510002 	cmp	r1, r2
 aac:	3a000001 	bcc	ab8 <free+0x34>
 ab0:	e1530002 	cmp	r3, r2
 ab4:	3a000017 	bcc	b18 <free+0x94>
 ab8:	e510e004 	ldr	lr, [r0, #-4]
 abc:	e58c3000 	str	r3, [ip]
 ac0:	e081418e 	add	r4, r1, lr, lsl #3
 ac4:	e1520004 	cmp	r2, r4
 ac8:	05922004 	ldreq	r2, [r2, #4]
 acc:	0082e00e 	addeq	lr, r2, lr
 ad0:	0500e004 	streq	lr, [r0, #-4]
 ad4:	05932000 	ldreq	r2, [r3]
 ad8:	05922000 	ldreq	r2, [r2]
 adc:	e5002008 	str	r2, [r0, #-8]
 ae0:	e5932004 	ldr	r2, [r3, #4]
 ae4:	e083e182 	add	lr, r3, r2, lsl #3
 ae8:	e151000e 	cmp	r1, lr
 aec:	15831000 	strne	r1, [r3]
 af0:	05101004 	ldreq	r1, [r0, #-4]
 af4:	00812002 	addeq	r2, r1, r2
 af8:	05832004 	streq	r2, [r3, #4]
 afc:	05102008 	ldreq	r2, [r0, #-8]
 b00:	05832000 	streq	r2, [r3]
 b04:	e8bd8810 	pop	{r4, fp, pc}
 b08:	e1530002 	cmp	r3, r2
 b0c:	3a000001 	bcc	b18 <free+0x94>
 b10:	e1510002 	cmp	r1, r2
 b14:	3affffe7 	bcc	ab8 <free+0x34>
 b18:	e1a03002 	mov	r3, r2
 b1c:	eaffffde 	b	a9c <free+0x18>

00000b20 <malloc>:
 b20:	e92d48f0 	push	{r4, r5, r6, r7, fp, lr}
 b24:	e3007c44 	movw	r7, #3140	; 0xc44
 b28:	e3407000 	movt	r7, #0
 b2c:	e2804007 	add	r4, r0, #7
 b30:	e28db014 	add	fp, sp, #20
 b34:	e5973000 	ldr	r3, [r7]
 b38:	e1a041a4 	lsr	r4, r4, #3
 b3c:	e2844001 	add	r4, r4, #1
 b40:	e3530000 	cmp	r3, #0
 b44:	0a000027 	beq	be8 <malloc+0xc8>
 b48:	e5930000 	ldr	r0, [r3]
 b4c:	e5902004 	ldr	r2, [r0, #4]
 b50:	e1540002 	cmp	r4, r2
 b54:	9a000019 	bls	bc0 <malloc+0xa0>
 b58:	e3540a01 	cmp	r4, #4096	; 0x1000
 b5c:	21a05004 	movcs	r5, r4
 b60:	33a05a01 	movcc	r5, #4096	; 0x1000
 b64:	e1a06185 	lsl	r6, r5, #3
 b68:	ea000003 	b	b7c <malloc+0x5c>
 b6c:	e5930000 	ldr	r0, [r3]
 b70:	e5902004 	ldr	r2, [r0, #4]
 b74:	e1520004 	cmp	r2, r4
 b78:	2a000010 	bcs	bc0 <malloc+0xa0>
 b7c:	e5972000 	ldr	r2, [r7]
 b80:	e1a03000 	mov	r3, r0
 b84:	e1520000 	cmp	r2, r0
 b88:	1afffff7 	bne	b6c <malloc+0x4c>
 b8c:	e1a00006 	mov	r0, r6
 b90:	ebfffecf 	bl	6d4 <sbrk>
 b94:	e1a03000 	mov	r3, r0
 b98:	e3730001 	cmn	r3, #1
 b9c:	e2800008 	add	r0, r0, #8
 ba0:	0a000004 	beq	bb8 <malloc+0x98>
 ba4:	e5835004 	str	r5, [r3, #4]
 ba8:	ebffffb5 	bl	a84 <free>
 bac:	e5973000 	ldr	r3, [r7]
 bb0:	e3530000 	cmp	r3, #0
 bb4:	1affffec 	bne	b6c <malloc+0x4c>
 bb8:	e3a00000 	mov	r0, #0
 bbc:	e8bd88f0 	pop	{r4, r5, r6, r7, fp, pc}
 bc0:	e1540002 	cmp	r4, r2
 bc4:	e5873000 	str	r3, [r7]
 bc8:	10422004 	subne	r2, r2, r4
 bcc:	15802004 	strne	r2, [r0, #4]
 bd0:	05902000 	ldreq	r2, [r0]
 bd4:	10800182 	addne	r0, r0, r2, lsl #3
 bd8:	e2800008 	add	r0, r0, #8
 bdc:	15004004 	strne	r4, [r0, #-4]
 be0:	05832000 	streq	r2, [r3]
 be4:	e8bd88f0 	pop	{r4, r5, r6, r7, fp, pc}
 be8:	e2870004 	add	r0, r7, #4
 bec:	e5873008 	str	r3, [r7, #8]
 bf0:	e5870000 	str	r0, [r7]
 bf4:	e5870004 	str	r0, [r7, #4]
 bf8:	eaffffd6 	b	b58 <malloc+0x38>

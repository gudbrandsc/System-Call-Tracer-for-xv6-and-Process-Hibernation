
_fork:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
   0:	e92d4810 	push	{r4, fp, lr}
   4:	e3a03003 	mov	r3, #3
   8:	e28db008 	add	fp, sp, #8
   c:	e1a02003 	mov	r2, r3
  10:	e24dd00c 	sub	sp, sp, #12
  14:	e3a00001 	mov	r0, #1
  18:	e3001c60 	movw	r1, #3168	; 0xc60
  1c:	e3401000 	movt	r1, #0
  20:	e50b3010 	str	r3, [fp, #-16]
  24:	eb000247 	bl	948 <printf>
  28:	eb0000d8 	bl	390 <fork>
  2c:	e2504000 	subs	r4, r0, #0
  30:	1a00001d 	bne	ac <main+0xac>
  34:	e1a02004 	mov	r2, r4
  38:	e3a00001 	mov	r0, #1
  3c:	e3001c70 	movw	r1, #3184	; 0xc70
  40:	e3401000 	movt	r1, #0
  44:	eb00023f 	bl	948 <printf>
  48:	e24b400c 	sub	r4, fp, #12
  4c:	eb0001ac 	bl	704 <getpid>
  50:	e3001c80 	movw	r1, #3200	; 0xc80
  54:	e3401000 	movt	r1, #0
  58:	e1a02000 	mov	r2, r0
  5c:	e3a00001 	mov	r0, #1
  60:	eb000238 	bl	948 <printf>
  64:	e51b2010 	ldr	r2, [fp, #-16]
  68:	e3a00001 	mov	r0, #1
  6c:	e3001c90 	movw	r1, #3216	; 0xc90
  70:	e3401000 	movt	r1, #0
  74:	eb000233 	bl	948 <printf>
  78:	e3a03063 	mov	r3, #99	; 0x63
  7c:	e1a02003 	mov	r2, r3
  80:	e3a00001 	mov	r0, #1
  84:	e3001c90 	movw	r1, #3216	; 0xc90
  88:	e3401000 	movt	r1, #0
  8c:	e5243004 	str	r3, [r4, #-4]!
  90:	eb00022c 	bl	948 <printf>
  94:	e1a02004 	mov	r2, r4
  98:	e3001ca0 	movw	r1, #3232	; 0xca0
  9c:	e3a00001 	mov	r0, #1
  a0:	e3401000 	movt	r1, #0
  a4:	eb000227 	bl	948 <printf>
  a8:	eb0000c5 	bl	3c4 <exit>
  ac:	eb000194 	bl	704 <getpid>
  b0:	e3001cb0 	movw	r1, #3248	; 0xcb0
  b4:	e3401000 	movt	r1, #0
  b8:	e1a02000 	mov	r2, r0
  bc:	e3a00001 	mov	r0, #1
  c0:	eb000220 	bl	948 <printf>
  c4:	e1a02004 	mov	r2, r4
  c8:	e3a00001 	mov	r0, #1
  cc:	e3001cc4 	movw	r1, #3268	; 0xcc4
  d0:	e3401000 	movt	r1, #0
  d4:	e24b400c 	sub	r4, fp, #12
  d8:	eb00021a 	bl	948 <printf>
  dc:	e3a00001 	mov	r0, #1
  e0:	e3001cd8 	movw	r1, #3288	; 0xcd8
  e4:	e3401000 	movt	r1, #0
  e8:	eb000216 	bl	948 <printf>
  ec:	eb0000c1 	bl	3f8 <wait>
  f0:	e3001cf0 	movw	r1, #3312	; 0xcf0
  f4:	e3401000 	movt	r1, #0
  f8:	e1a02000 	mov	r2, r0
  fc:	e3a00001 	mov	r0, #1
 100:	eb000210 	bl	948 <printf>
 104:	e5342004 	ldr	r2, [r4, #-4]!
 108:	e3a00001 	mov	r0, #1
 10c:	e3001c60 	movw	r1, #3168	; 0xc60
 110:	e3401000 	movt	r1, #0
 114:	eb00020b 	bl	948 <printf>
 118:	e1a02004 	mov	r2, r4
 11c:	e3001d14 	movw	r1, #3348	; 0xd14
 120:	e3a00001 	mov	r0, #1
 124:	e3401000 	movt	r1, #0
 128:	eb000206 	bl	948 <printf>
 12c:	eb0000a4 	bl	3c4 <exit>

00000130 <strcpy>:
 130:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 134:	e2402001 	sub	r2, r0, #1
 138:	e28db000 	add	fp, sp, #0
 13c:	e4d13001 	ldrb	r3, [r1], #1
 140:	e3530000 	cmp	r3, #0
 144:	e5e23001 	strb	r3, [r2, #1]!
 148:	1afffffb 	bne	13c <strcpy+0xc>
 14c:	e28bd000 	add	sp, fp, #0
 150:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 154:	e12fff1e 	bx	lr

00000158 <strcmp>:
 158:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 15c:	e28db000 	add	fp, sp, #0
 160:	e5d03000 	ldrb	r3, [r0]
 164:	e5d12000 	ldrb	r2, [r1]
 168:	e3530000 	cmp	r3, #0
 16c:	1a000004 	bne	184 <strcmp+0x2c>
 170:	ea000005 	b	18c <strcmp+0x34>
 174:	e5f03001 	ldrb	r3, [r0, #1]!
 178:	e5f12001 	ldrb	r2, [r1, #1]!
 17c:	e3530000 	cmp	r3, #0
 180:	0a000001 	beq	18c <strcmp+0x34>
 184:	e1530002 	cmp	r3, r2
 188:	0afffff9 	beq	174 <strcmp+0x1c>
 18c:	e0430002 	sub	r0, r3, r2
 190:	e28bd000 	add	sp, fp, #0
 194:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 198:	e12fff1e 	bx	lr

0000019c <strlen>:
 19c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 1a0:	e28db000 	add	fp, sp, #0
 1a4:	e5d03000 	ldrb	r3, [r0]
 1a8:	e3530000 	cmp	r3, #0
 1ac:	01a00003 	moveq	r0, r3
 1b0:	0a000006 	beq	1d0 <strlen+0x34>
 1b4:	e1a02000 	mov	r2, r0
 1b8:	e3a03000 	mov	r3, #0
 1bc:	e5f21001 	ldrb	r1, [r2, #1]!
 1c0:	e2833001 	add	r3, r3, #1
 1c4:	e3510000 	cmp	r1, #0
 1c8:	e1a00003 	mov	r0, r3
 1cc:	1afffffa 	bne	1bc <strlen+0x20>
 1d0:	e28bd000 	add	sp, fp, #0
 1d4:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 1d8:	e12fff1e 	bx	lr

000001dc <memset>:
 1dc:	e3520000 	cmp	r2, #0
 1e0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 1e4:	e28db000 	add	fp, sp, #0
 1e8:	0a000004 	beq	200 <memset+0x24>
 1ec:	e6ef1071 	uxtb	r1, r1
 1f0:	e0802002 	add	r2, r0, r2
 1f4:	e4c01001 	strb	r1, [r0], #1
 1f8:	e1520000 	cmp	r2, r0
 1fc:	1afffffc 	bne	1f4 <memset+0x18>
 200:	e28bd000 	add	sp, fp, #0
 204:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 208:	e12fff1e 	bx	lr

0000020c <strchr>:
 20c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 210:	e28db000 	add	fp, sp, #0
 214:	e5d02000 	ldrb	r2, [r0]
 218:	e3520000 	cmp	r2, #0
 21c:	0a00000b 	beq	250 <strchr+0x44>
 220:	e1510002 	cmp	r1, r2
 224:	1a000002 	bne	234 <strchr+0x28>
 228:	ea000005 	b	244 <strchr+0x38>
 22c:	e1530001 	cmp	r3, r1
 230:	0a000003 	beq	244 <strchr+0x38>
 234:	e5f03001 	ldrb	r3, [r0, #1]!
 238:	e3530000 	cmp	r3, #0
 23c:	1afffffa 	bne	22c <strchr+0x20>
 240:	e1a00003 	mov	r0, r3
 244:	e28bd000 	add	sp, fp, #0
 248:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 24c:	e12fff1e 	bx	lr
 250:	e1a00002 	mov	r0, r2
 254:	eafffffa 	b	244 <strchr+0x38>

00000258 <gets>:
 258:	e92d48f0 	push	{r4, r5, r6, r7, fp, lr}
 25c:	e1a03000 	mov	r3, r0
 260:	e28db014 	add	fp, sp, #20
 264:	e1a07000 	mov	r7, r0
 268:	e24dd008 	sub	sp, sp, #8
 26c:	e1a06001 	mov	r6, r1
 270:	e3a04000 	mov	r4, #0
 274:	ea000008 	b	29c <gets+0x44>
 278:	eb000078 	bl	460 <read>
 27c:	e1a03005 	mov	r3, r5
 280:	e3500000 	cmp	r0, #0
 284:	da00000b 	ble	2b8 <gets+0x60>
 288:	e55b2015 	ldrb	r2, [fp, #-21]	; 0xffffffeb
 28c:	e352000d 	cmp	r2, #13
 290:	1352000a 	cmpne	r2, #10
 294:	e4c32001 	strb	r2, [r3], #1
 298:	0a00000b 	beq	2cc <gets+0x74>
 29c:	e3a02001 	mov	r2, #1
 2a0:	e0844002 	add	r4, r4, r2
 2a4:	e1540006 	cmp	r4, r6
 2a8:	e24b1015 	sub	r1, fp, #21
 2ac:	e3a00000 	mov	r0, #0
 2b0:	e1a05003 	mov	r5, r3
 2b4:	baffffef 	blt	278 <gets+0x20>
 2b8:	e1a00007 	mov	r0, r7
 2bc:	e3a03000 	mov	r3, #0
 2c0:	e5c53000 	strb	r3, [r5]
 2c4:	e24bd014 	sub	sp, fp, #20
 2c8:	e8bd88f0 	pop	{r4, r5, r6, r7, fp, pc}
 2cc:	e0875004 	add	r5, r7, r4
 2d0:	eafffff8 	b	2b8 <gets+0x60>

000002d4 <stat>:
 2d4:	e92d4830 	push	{r4, r5, fp, lr}
 2d8:	e1a04001 	mov	r4, r1
 2dc:	e28db00c 	add	fp, sp, #12
 2e0:	e3a01000 	mov	r1, #0
 2e4:	eb00009e 	bl	564 <open>
 2e8:	e2505000 	subs	r5, r0, #0
 2ec:	ba000006 	blt	30c <stat+0x38>
 2f0:	e1a01004 	mov	r1, r4
 2f4:	eb0000c1 	bl	600 <fstat>
 2f8:	e1a04000 	mov	r4, r0
 2fc:	e1a00005 	mov	r0, r5
 300:	eb000070 	bl	4c8 <close>
 304:	e1a00004 	mov	r0, r4
 308:	e8bd8830 	pop	{r4, r5, fp, pc}
 30c:	e3e04000 	mvn	r4, #0
 310:	eafffffb 	b	304 <stat+0x30>

00000314 <atoi>:
 314:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 318:	e28db000 	add	fp, sp, #0
 31c:	e5d02000 	ldrb	r2, [r0]
 320:	e2423030 	sub	r3, r2, #48	; 0x30
 324:	e3530009 	cmp	r3, #9
 328:	e3a03000 	mov	r3, #0
 32c:	8a000006 	bhi	34c <atoi+0x38>
 330:	e3a0c00a 	mov	ip, #10
 334:	e023239c 	mla	r3, ip, r3, r2
 338:	e5f02001 	ldrb	r2, [r0, #1]!
 33c:	e2421030 	sub	r1, r2, #48	; 0x30
 340:	e3510009 	cmp	r1, #9
 344:	e2433030 	sub	r3, r3, #48	; 0x30
 348:	9afffff9 	bls	334 <atoi+0x20>
 34c:	e1a00003 	mov	r0, r3
 350:	e28bd000 	add	sp, fp, #0
 354:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 358:	e12fff1e 	bx	lr

0000035c <memmove>:
 35c:	e3520000 	cmp	r2, #0
 360:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
 364:	e28db000 	add	fp, sp, #0
 368:	da000005 	ble	384 <memmove+0x28>
 36c:	e0812002 	add	r2, r1, r2
 370:	e2403001 	sub	r3, r0, #1
 374:	e4d1c001 	ldrb	ip, [r1], #1
 378:	e1510002 	cmp	r1, r2
 37c:	e5e3c001 	strb	ip, [r3, #1]!
 380:	1afffffb 	bne	374 <memmove+0x18>
 384:	e28bd000 	add	sp, fp, #0
 388:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
 38c:	e12fff1e 	bx	lr

00000390 <fork>:
 390:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 394:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 398:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 39c:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 3a0:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 3a4:	e3a00001 	mov	r0, #1
 3a8:	ef000040 	svc	0x00000040
 3ac:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 3b0:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 3b4:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 3b8:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 3bc:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 3c0:	e12fff1e 	bx	lr

000003c4 <exit>:
 3c4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 3c8:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 3cc:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 3d0:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 3d4:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 3d8:	e3a00002 	mov	r0, #2
 3dc:	ef000040 	svc	0x00000040
 3e0:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 3e4:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 3e8:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 3ec:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 3f0:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 3f4:	e12fff1e 	bx	lr

000003f8 <wait>:
 3f8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 3fc:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 400:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 404:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 408:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 40c:	e3a00003 	mov	r0, #3
 410:	ef000040 	svc	0x00000040
 414:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 418:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 41c:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 420:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 424:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 428:	e12fff1e 	bx	lr

0000042c <pipe>:
 42c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 430:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 434:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 438:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 43c:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 440:	e3a00004 	mov	r0, #4
 444:	ef000040 	svc	0x00000040
 448:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 44c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 450:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 454:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 458:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 45c:	e12fff1e 	bx	lr

00000460 <read>:
 460:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 464:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 468:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 46c:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 470:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 474:	e3a00005 	mov	r0, #5
 478:	ef000040 	svc	0x00000040
 47c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 480:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 484:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 488:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 48c:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 490:	e12fff1e 	bx	lr

00000494 <write>:
 494:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 498:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 49c:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 4a0:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 4a4:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 4a8:	e3a00010 	mov	r0, #16
 4ac:	ef000040 	svc	0x00000040
 4b0:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 4b4:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 4b8:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 4bc:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 4c0:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 4c4:	e12fff1e 	bx	lr

000004c8 <close>:
 4c8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 4cc:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 4d0:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 4d4:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 4d8:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 4dc:	e3a00015 	mov	r0, #21
 4e0:	ef000040 	svc	0x00000040
 4e4:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 4e8:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 4ec:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 4f0:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 4f4:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 4f8:	e12fff1e 	bx	lr

000004fc <kill>:
 4fc:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 500:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 504:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 508:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 50c:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 510:	e3a00006 	mov	r0, #6
 514:	ef000040 	svc	0x00000040
 518:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 51c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 520:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 524:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 528:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 52c:	e12fff1e 	bx	lr

00000530 <exec>:
 530:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 534:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 538:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 53c:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 540:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 544:	e3a00007 	mov	r0, #7
 548:	ef000040 	svc	0x00000040
 54c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 550:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 554:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 558:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 55c:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 560:	e12fff1e 	bx	lr

00000564 <open>:
 564:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 568:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 56c:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 570:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 574:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 578:	e3a0000f 	mov	r0, #15
 57c:	ef000040 	svc	0x00000040
 580:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 584:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 588:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 58c:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 590:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 594:	e12fff1e 	bx	lr

00000598 <mknod>:
 598:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 59c:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 5a0:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 5a4:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 5a8:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 5ac:	e3a00011 	mov	r0, #17
 5b0:	ef000040 	svc	0x00000040
 5b4:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 5b8:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 5bc:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 5c0:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 5c4:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 5c8:	e12fff1e 	bx	lr

000005cc <unlink>:
 5cc:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 5d0:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 5d4:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 5d8:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 5dc:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 5e0:	e3a00012 	mov	r0, #18
 5e4:	ef000040 	svc	0x00000040
 5e8:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 5ec:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 5f0:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 5f4:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 5f8:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 5fc:	e12fff1e 	bx	lr

00000600 <fstat>:
 600:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 604:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 608:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 60c:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 610:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 614:	e3a00008 	mov	r0, #8
 618:	ef000040 	svc	0x00000040
 61c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 620:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 624:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 628:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 62c:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 630:	e12fff1e 	bx	lr

00000634 <link>:
 634:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 638:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 63c:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 640:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 644:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 648:	e3a00013 	mov	r0, #19
 64c:	ef000040 	svc	0x00000040
 650:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 654:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 658:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 65c:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 660:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 664:	e12fff1e 	bx	lr

00000668 <mkdir>:
 668:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 66c:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 670:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 674:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 678:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 67c:	e3a00014 	mov	r0, #20
 680:	ef000040 	svc	0x00000040
 684:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 688:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 68c:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 690:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 694:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 698:	e12fff1e 	bx	lr

0000069c <chdir>:
 69c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 6a0:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 6a4:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 6a8:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 6ac:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 6b0:	e3a00009 	mov	r0, #9
 6b4:	ef000040 	svc	0x00000040
 6b8:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 6bc:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 6c0:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 6c4:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 6c8:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 6cc:	e12fff1e 	bx	lr

000006d0 <dup>:
 6d0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 6d4:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 6d8:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 6dc:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 6e0:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 6e4:	e3a0000a 	mov	r0, #10
 6e8:	ef000040 	svc	0x00000040
 6ec:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 6f0:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 6f4:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 6f8:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 6fc:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 700:	e12fff1e 	bx	lr

00000704 <getpid>:
 704:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 708:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 70c:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 710:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 714:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 718:	e3a0000b 	mov	r0, #11
 71c:	ef000040 	svc	0x00000040
 720:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 724:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 728:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 72c:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 730:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 734:	e12fff1e 	bx	lr

00000738 <sbrk>:
 738:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 73c:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 740:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 744:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 748:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 74c:	e3a0000c 	mov	r0, #12
 750:	ef000040 	svc	0x00000040
 754:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 758:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 75c:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 760:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 764:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 768:	e12fff1e 	bx	lr

0000076c <sleep>:
 76c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 770:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 774:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 778:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 77c:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 780:	e3a0000d 	mov	r0, #13
 784:	ef000040 	svc	0x00000040
 788:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 78c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 790:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 794:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 798:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 79c:	e12fff1e 	bx	lr

000007a0 <uptime>:
 7a0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 7a4:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 7a8:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 7ac:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 7b0:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 7b4:	e3a0000e 	mov	r0, #14
 7b8:	ef000040 	svc	0x00000040
 7bc:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 7c0:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 7c4:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 7c8:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 7cc:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 7d0:	e12fff1e 	bx	lr

000007d4 <memfree>:
 7d4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 7d8:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 7dc:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 7e0:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 7e4:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 7e8:	e3a00016 	mov	r0, #22
 7ec:	ef000040 	svc	0x00000040
 7f0:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 7f4:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 7f8:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 7fc:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 800:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 804:	e12fff1e 	bx	lr

00000808 <trace>:
 808:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 80c:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
 810:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
 814:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
 818:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
 81c:	e3a00017 	mov	r0, #23
 820:	ef000040 	svc	0x00000040
 824:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 828:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
 82c:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
 830:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
 834:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
 838:	e12fff1e 	bx	lr

0000083c <printint>:
 83c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
 840:	e28db020 	add	fp, sp, #32
 844:	e013afa1 	ands	sl, r3, r1, lsr #31
 848:	e24b4034 	sub	r4, fp, #52	; 0x34
 84c:	e3009d28 	movw	r9, #3368	; 0xd28
 850:	1261e000 	rsbne	lr, r1, #0
 854:	e3409000 	movt	r9, #0
 858:	e1a05000 	mov	r5, r0
 85c:	13a0a001 	movne	sl, #1
 860:	01a0e001 	moveq	lr, r1
 864:	e3a08000 	mov	r8, #0
 868:	e1a07004 	mov	r7, r4
 86c:	e3a06001 	mov	r6, #1
 870:	e24dd01c 	sub	sp, sp, #28
 874:	e3a0c000 	mov	ip, #0
 878:	e3a0301f 	mov	r3, #31
 87c:	e1a0100c 	mov	r1, ip
 880:	e1a0033e 	lsr	r0, lr, r3
 884:	e2000001 	and	r0, r0, #1
 888:	e1801081 	orr	r1, r0, r1, lsl #1
 88c:	e1520001 	cmp	r2, r1
 890:	90411002 	subls	r1, r1, r2
 894:	918cc316 	orrls	ip, ip, r6, lsl r3
 898:	e2533001 	subs	r3, r3, #1
 89c:	2afffff7 	bcs	880 <printint+0x44>
 8a0:	e061e29c 	mls	r1, ip, r2, lr
 8a4:	e35c0000 	cmp	ip, #0
 8a8:	e1a0e00c 	mov	lr, ip
 8ac:	e2883001 	add	r3, r8, #1
 8b0:	e7d91001 	ldrb	r1, [r9, r1]
 8b4:	e4c71001 	strb	r1, [r7], #1
 8b8:	11a08003 	movne	r8, r3
 8bc:	1affffec 	bne	874 <printint+0x38>
 8c0:	e35a0000 	cmp	sl, #0
 8c4:	0a000004 	beq	8dc <printint+0xa0>
 8c8:	e24b2024 	sub	r2, fp, #36	; 0x24
 8cc:	e3a0102d 	mov	r1, #45	; 0x2d
 8d0:	e0822003 	add	r2, r2, r3
 8d4:	e2883002 	add	r3, r8, #2
 8d8:	e5421010 	strb	r1, [r2, #-16]
 8dc:	e0846003 	add	r6, r4, r3
 8e0:	e5763001 	ldrb	r3, [r6, #-1]!
 8e4:	e3a02001 	mov	r2, #1
 8e8:	e24b1035 	sub	r1, fp, #53	; 0x35
 8ec:	e1a00005 	mov	r0, r5
 8f0:	e54b3035 	strb	r3, [fp, #-53]	; 0xffffffcb
 8f4:	ebfffee6 	bl	494 <write>
 8f8:	e1540006 	cmp	r4, r6
 8fc:	1afffff7 	bne	8e0 <printint+0xa4>
 900:	e24bd020 	sub	sp, fp, #32
 904:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

00000908 <div>:
 908:	e92d4810 	push	{r4, fp, lr}
 90c:	e3a02000 	mov	r2, #0
 910:	e28db008 	add	fp, sp, #8
 914:	e1a0e000 	mov	lr, r0
 918:	e3a0301f 	mov	r3, #31
 91c:	e1a00002 	mov	r0, r2
 920:	e3a04001 	mov	r4, #1
 924:	e1a0c33e 	lsr	ip, lr, r3
 928:	e20cc001 	and	ip, ip, #1
 92c:	e18c2082 	orr	r2, ip, r2, lsl #1
 930:	e1520001 	cmp	r2, r1
 934:	20422001 	subcs	r2, r2, r1
 938:	21800314 	orrcs	r0, r0, r4, lsl r3
 93c:	e2533001 	subs	r3, r3, #1
 940:	38bd8810 	popcc	{r4, fp, pc}
 944:	eafffff6 	b	924 <div+0x1c>

00000948 <printf>:
 948:	e92d000e 	push	{r1, r2, r3}
 94c:	e92d49f0 	push	{r4, r5, r6, r7, r8, fp, lr}
 950:	e28db018 	add	fp, sp, #24
 954:	e24dd008 	sub	sp, sp, #8
 958:	e59b5004 	ldr	r5, [fp, #4]
 95c:	e5d54000 	ldrb	r4, [r5]
 960:	e3540000 	cmp	r4, #0
 964:	0a00002b 	beq	a18 <printf+0xd0>
 968:	e1a07000 	mov	r7, r0
 96c:	e28b8008 	add	r8, fp, #8
 970:	e3a06000 	mov	r6, #0
 974:	ea00000a 	b	9a4 <printf+0x5c>
 978:	e3540025 	cmp	r4, #37	; 0x25
 97c:	01a06004 	moveq	r6, r4
 980:	0a000004 	beq	998 <printf+0x50>
 984:	e24b1018 	sub	r1, fp, #24
 988:	e3a02001 	mov	r2, #1
 98c:	e1a00007 	mov	r0, r7
 990:	e5614006 	strb	r4, [r1, #-6]!
 994:	ebfffebe 	bl	494 <write>
 998:	e5f54001 	ldrb	r4, [r5, #1]!
 99c:	e3540000 	cmp	r4, #0
 9a0:	0a00001c 	beq	a18 <printf+0xd0>
 9a4:	e3560000 	cmp	r6, #0
 9a8:	0afffff2 	beq	978 <printf+0x30>
 9ac:	e3560025 	cmp	r6, #37	; 0x25
 9b0:	1afffff8 	bne	998 <printf+0x50>
 9b4:	e3540064 	cmp	r4, #100	; 0x64
 9b8:	0a000030 	beq	a80 <printf+0x138>
 9bc:	e20430f7 	and	r3, r4, #247	; 0xf7
 9c0:	e3530070 	cmp	r3, #112	; 0x70
 9c4:	0a000017 	beq	a28 <printf+0xe0>
 9c8:	e3540073 	cmp	r4, #115	; 0x73
 9cc:	0a00001c 	beq	a44 <printf+0xfc>
 9d0:	e3540063 	cmp	r4, #99	; 0x63
 9d4:	0a000037 	beq	ab8 <printf+0x170>
 9d8:	e3540025 	cmp	r4, #37	; 0x25
 9dc:	0a00002e 	beq	a9c <printf+0x154>
 9e0:	e3a02001 	mov	r2, #1
 9e4:	e24b1019 	sub	r1, fp, #25
 9e8:	e1a00007 	mov	r0, r7
 9ec:	e54b6019 	strb	r6, [fp, #-25]	; 0xffffffe7
 9f0:	ebfffea7 	bl	494 <write>
 9f4:	e3a02001 	mov	r2, #1
 9f8:	e24b101a 	sub	r1, fp, #26
 9fc:	e1a00007 	mov	r0, r7
 a00:	e54b401a 	strb	r4, [fp, #-26]	; 0xffffffe6
 a04:	ebfffea2 	bl	494 <write>
 a08:	e5f54001 	ldrb	r4, [r5, #1]!
 a0c:	e3a06000 	mov	r6, #0
 a10:	e3540000 	cmp	r4, #0
 a14:	1affffe2 	bne	9a4 <printf+0x5c>
 a18:	e24bd018 	sub	sp, fp, #24
 a1c:	e8bd49f0 	pop	{r4, r5, r6, r7, r8, fp, lr}
 a20:	e28dd00c 	add	sp, sp, #12
 a24:	e12fff1e 	bx	lr
 a28:	e3a03000 	mov	r3, #0
 a2c:	e3a02010 	mov	r2, #16
 a30:	e4981004 	ldr	r1, [r8], #4
 a34:	e1a00007 	mov	r0, r7
 a38:	ebffff7f 	bl	83c <printint>
 a3c:	e3a06000 	mov	r6, #0
 a40:	eaffffd4 	b	998 <printf+0x50>
 a44:	e4984004 	ldr	r4, [r8], #4
 a48:	e3540000 	cmp	r4, #0
 a4c:	0a000021 	beq	ad8 <printf+0x190>
 a50:	e5d46000 	ldrb	r6, [r4]
 a54:	e3560000 	cmp	r6, #0
 a58:	0affffce 	beq	998 <printf+0x50>
 a5c:	e3a02001 	mov	r2, #1
 a60:	e24b101d 	sub	r1, fp, #29
 a64:	e1a00007 	mov	r0, r7
 a68:	e54b601d 	strb	r6, [fp, #-29]	; 0xffffffe3
 a6c:	ebfffe88 	bl	494 <write>
 a70:	e5f46001 	ldrb	r6, [r4, #1]!
 a74:	e3560000 	cmp	r6, #0
 a78:	1afffff7 	bne	a5c <printf+0x114>
 a7c:	eaffffc5 	b	998 <printf+0x50>
 a80:	e3a03001 	mov	r3, #1
 a84:	e3a0200a 	mov	r2, #10
 a88:	e4981004 	ldr	r1, [r8], #4
 a8c:	e1a00007 	mov	r0, r7
 a90:	ebffff69 	bl	83c <printint>
 a94:	e3a06000 	mov	r6, #0
 a98:	eaffffbe 	b	998 <printf+0x50>
 a9c:	e24b1018 	sub	r1, fp, #24
 aa0:	e3a02001 	mov	r2, #1
 aa4:	e1a00007 	mov	r0, r7
 aa8:	e5616003 	strb	r6, [r1, #-3]!
 aac:	e3a06000 	mov	r6, #0
 ab0:	ebfffe77 	bl	494 <write>
 ab4:	eaffffb7 	b	998 <printf+0x50>
 ab8:	e4983004 	ldr	r3, [r8], #4
 abc:	e24b1018 	sub	r1, fp, #24
 ac0:	e3a02001 	mov	r2, #1
 ac4:	e1a00007 	mov	r0, r7
 ac8:	e3a06000 	mov	r6, #0
 acc:	e5613004 	strb	r3, [r1, #-4]!
 ad0:	ebfffe6f 	bl	494 <write>
 ad4:	eaffffaf 	b	998 <printf+0x50>
 ad8:	e3004d3c 	movw	r4, #3388	; 0xd3c
 adc:	e3a06028 	mov	r6, #40	; 0x28
 ae0:	e3404000 	movt	r4, #0
 ae4:	eaffffdc 	b	a5c <printf+0x114>

00000ae8 <free>:
 ae8:	e300cd44 	movw	ip, #3396	; 0xd44
 aec:	e340c000 	movt	ip, #0
 af0:	e92d4810 	push	{r4, fp, lr}
 af4:	e2401008 	sub	r1, r0, #8
 af8:	e59c3000 	ldr	r3, [ip]
 afc:	e28db008 	add	fp, sp, #8
 b00:	e1530001 	cmp	r3, r1
 b04:	e5932000 	ldr	r2, [r3]
 b08:	2a000017 	bcs	b6c <free+0x84>
 b0c:	e1510002 	cmp	r1, r2
 b10:	3a000001 	bcc	b1c <free+0x34>
 b14:	e1530002 	cmp	r3, r2
 b18:	3a000017 	bcc	b7c <free+0x94>
 b1c:	e510e004 	ldr	lr, [r0, #-4]
 b20:	e58c3000 	str	r3, [ip]
 b24:	e081418e 	add	r4, r1, lr, lsl #3
 b28:	e1520004 	cmp	r2, r4
 b2c:	05922004 	ldreq	r2, [r2, #4]
 b30:	0082e00e 	addeq	lr, r2, lr
 b34:	0500e004 	streq	lr, [r0, #-4]
 b38:	05932000 	ldreq	r2, [r3]
 b3c:	05922000 	ldreq	r2, [r2]
 b40:	e5002008 	str	r2, [r0, #-8]
 b44:	e5932004 	ldr	r2, [r3, #4]
 b48:	e083e182 	add	lr, r3, r2, lsl #3
 b4c:	e151000e 	cmp	r1, lr
 b50:	15831000 	strne	r1, [r3]
 b54:	05101004 	ldreq	r1, [r0, #-4]
 b58:	00812002 	addeq	r2, r1, r2
 b5c:	05832004 	streq	r2, [r3, #4]
 b60:	05102008 	ldreq	r2, [r0, #-8]
 b64:	05832000 	streq	r2, [r3]
 b68:	e8bd8810 	pop	{r4, fp, pc}
 b6c:	e1530002 	cmp	r3, r2
 b70:	3a000001 	bcc	b7c <free+0x94>
 b74:	e1510002 	cmp	r1, r2
 b78:	3affffe7 	bcc	b1c <free+0x34>
 b7c:	e1a03002 	mov	r3, r2
 b80:	eaffffde 	b	b00 <free+0x18>

00000b84 <malloc>:
 b84:	e92d48f0 	push	{r4, r5, r6, r7, fp, lr}
 b88:	e3007d44 	movw	r7, #3396	; 0xd44
 b8c:	e3407000 	movt	r7, #0
 b90:	e2804007 	add	r4, r0, #7
 b94:	e28db014 	add	fp, sp, #20
 b98:	e5973000 	ldr	r3, [r7]
 b9c:	e1a041a4 	lsr	r4, r4, #3
 ba0:	e2844001 	add	r4, r4, #1
 ba4:	e3530000 	cmp	r3, #0
 ba8:	0a000027 	beq	c4c <malloc+0xc8>
 bac:	e5930000 	ldr	r0, [r3]
 bb0:	e5902004 	ldr	r2, [r0, #4]
 bb4:	e1540002 	cmp	r4, r2
 bb8:	9a000019 	bls	c24 <malloc+0xa0>
 bbc:	e3540a01 	cmp	r4, #4096	; 0x1000
 bc0:	21a05004 	movcs	r5, r4
 bc4:	33a05a01 	movcc	r5, #4096	; 0x1000
 bc8:	e1a06185 	lsl	r6, r5, #3
 bcc:	ea000003 	b	be0 <malloc+0x5c>
 bd0:	e5930000 	ldr	r0, [r3]
 bd4:	e5902004 	ldr	r2, [r0, #4]
 bd8:	e1520004 	cmp	r2, r4
 bdc:	2a000010 	bcs	c24 <malloc+0xa0>
 be0:	e5972000 	ldr	r2, [r7]
 be4:	e1a03000 	mov	r3, r0
 be8:	e1520000 	cmp	r2, r0
 bec:	1afffff7 	bne	bd0 <malloc+0x4c>
 bf0:	e1a00006 	mov	r0, r6
 bf4:	ebfffecf 	bl	738 <sbrk>
 bf8:	e1a03000 	mov	r3, r0
 bfc:	e3730001 	cmn	r3, #1
 c00:	e2800008 	add	r0, r0, #8
 c04:	0a000004 	beq	c1c <malloc+0x98>
 c08:	e5835004 	str	r5, [r3, #4]
 c0c:	ebffffb5 	bl	ae8 <free>
 c10:	e5973000 	ldr	r3, [r7]
 c14:	e3530000 	cmp	r3, #0
 c18:	1affffec 	bne	bd0 <malloc+0x4c>
 c1c:	e3a00000 	mov	r0, #0
 c20:	e8bd88f0 	pop	{r4, r5, r6, r7, fp, pc}
 c24:	e1540002 	cmp	r4, r2
 c28:	e5873000 	str	r3, [r7]
 c2c:	10422004 	subne	r2, r2, r4
 c30:	15802004 	strne	r2, [r0, #4]
 c34:	05902000 	ldreq	r2, [r0]
 c38:	10800182 	addne	r0, r0, r2, lsl #3
 c3c:	e2800008 	add	r0, r0, #8
 c40:	15004004 	strne	r4, [r0, #-4]
 c44:	05832000 	streq	r2, [r3]
 c48:	e8bd88f0 	pop	{r4, r5, r6, r7, fp, pc}
 c4c:	e2870004 	add	r0, r7, #4
 c50:	e5873008 	str	r3, [r7, #8]
 c54:	e5870000 	str	r0, [r7]
 c58:	e5870004 	str	r0, [r7, #4]
 c5c:	eaffffd6 	b	bbc <malloc+0x38>

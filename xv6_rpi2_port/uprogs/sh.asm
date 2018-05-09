
_sh:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d48f0 	push	{r4, r5, r6, r7, fp, lr}
       4:	e3014768 	movw	r4, #5992	; 0x1768
       8:	e28db014 	add	fp, sp, #20
       c:	e3404000 	movt	r4, #0
      10:	ea000001 	b	1c <main+0x1c>
      14:	e3530002 	cmp	r3, #2
      18:	ca00002d 	bgt	d4 <main+0xd4>
      1c:	e3a01002 	mov	r1, #2
      20:	e1a00004 	mov	r0, r4
      24:	eb0003de 	bl	fa4 <open>
      28:	e2503000 	subs	r3, r0, #0
      2c:	aafffff8 	bge	14 <main+0x14>
      30:	e30147ac 	movw	r4, #6060	; 0x17ac
      34:	e3404000 	movt	r4, #0
      38:	e3016770 	movw	r6, #6000	; 0x1770
      3c:	e2847003 	add	r7, r4, #3
      40:	e1a05004 	mov	r5, r4
      44:	e3406000 	movt	r6, #0
      48:	ea000005 	b	64 <main+0x64>
      4c:	eb00035f 	bl	dd0 <fork>
      50:	e3700001 	cmn	r0, #1
      54:	0a000021 	beq	e0 <main+0xe0>
      58:	e3500000 	cmp	r0, #0
      5c:	0a000022 	beq	ec <main+0xec>
      60:	eb000374 	bl	e38 <wait>
      64:	e3a01064 	mov	r1, #100	; 0x64
      68:	e1a00005 	mov	r0, r5
      6c:	eb000022 	bl	fc <getcmd>
      70:	e3500000 	cmp	r0, #0
      74:	ba000018 	blt	dc <main+0xdc>
      78:	e5d43000 	ldrb	r3, [r4]
      7c:	e3530063 	cmp	r3, #99	; 0x63
      80:	1afffff1 	bne	4c <main+0x4c>
      84:	e5d43001 	ldrb	r3, [r4, #1]
      88:	e3530064 	cmp	r3, #100	; 0x64
      8c:	1affffee 	bne	4c <main+0x4c>
      90:	e5d43002 	ldrb	r3, [r4, #2]
      94:	e3530020 	cmp	r3, #32
      98:	1affffeb 	bne	4c <main+0x4c>
      9c:	e1a00005 	mov	r0, r5
      a0:	eb0002cd 	bl	bdc <strlen>
      a4:	e3a02000 	mov	r2, #0
      a8:	e0843000 	add	r3, r4, r0
      ac:	e1a00007 	mov	r0, r7
      b0:	e5432001 	strb	r2, [r3, #-1]
      b4:	eb000408 	bl	10dc <chdir>
      b8:	e3500000 	cmp	r0, #0
      bc:	aaffffe8 	bge	64 <main+0x64>
      c0:	e1a02007 	mov	r2, r7
      c4:	e1a01006 	mov	r1, r6
      c8:	e3a00002 	mov	r0, #2
      cc:	eb0004ad 	bl	1388 <printf>
      d0:	eaffffe3 	b	64 <main+0x64>
      d4:	eb00038b 	bl	f08 <close>
      d8:	eaffffd4 	b	30 <main+0x30>
      dc:	eb000348 	bl	e04 <exit>
      e0:	e30106d0 	movw	r0, #5840	; 0x16d0
      e4:	e3400000 	movt	r0, #0
      e8:	eb000017 	bl	14c <panic>
      ec:	e30107ac 	movw	r0, #6060	; 0x17ac
      f0:	e3400000 	movt	r0, #0
      f4:	eb00027d 	bl	af0 <parsecmd>
      f8:	eb00001b 	bl	16c <runcmd>

000000fc <getcmd>:
      fc:	e92d4830 	push	{r4, r5, fp, lr}
     100:	e1a04000 	mov	r4, r0
     104:	e28db00c 	add	fp, sp, #12
     108:	e1a05001 	mov	r5, r1
     10c:	e3a00002 	mov	r0, #2
     110:	e30116a0 	movw	r1, #5792	; 0x16a0
     114:	e3401000 	movt	r1, #0
     118:	eb00049a 	bl	1388 <printf>
     11c:	e1a02005 	mov	r2, r5
     120:	e1a00004 	mov	r0, r4
     124:	e3a01000 	mov	r1, #0
     128:	eb0002bb 	bl	c1c <memset>
     12c:	e1a01005 	mov	r1, r5
     130:	e1a00004 	mov	r0, r4
     134:	eb0002d7 	bl	c98 <gets>
     138:	e5d40000 	ldrb	r0, [r4]
     13c:	e16f0f10 	clz	r0, r0
     140:	e1a002a0 	lsr	r0, r0, #5
     144:	e2600000 	rsb	r0, r0, #0
     148:	e8bd8830 	pop	{r4, r5, fp, pc}

0000014c <panic>:
     14c:	e92d4800 	push	{fp, lr}
     150:	e1a02000 	mov	r2, r0
     154:	e28db004 	add	fp, sp, #4
     158:	e30116a4 	movw	r1, #5796	; 0x16a4
     15c:	e3a00002 	mov	r0, #2
     160:	e3401000 	movt	r1, #0
     164:	eb000487 	bl	1388 <printf>
     168:	eb000325 	bl	e04 <exit>

0000016c <runcmd>:
     16c:	e92d4810 	push	{r4, fp, lr}
     170:	e2504000 	subs	r4, r0, #0
     174:	e28db008 	add	fp, sp, #8
     178:	e24dd00c 	sub	sp, sp, #12
     17c:	0a000015 	beq	1d8 <runcmd+0x6c>
     180:	e5943000 	ldr	r3, [r4]
     184:	e2433001 	sub	r3, r3, #1
     188:	e3530004 	cmp	r3, #4
     18c:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
     190:	ea000040 	b	298 <runcmd+0x12c>
     194:	000001f8 	.word	0x000001f8
     198:	000001a8 	.word	0x000001a8
     19c:	00000224 	.word	0x00000224
     1a0:	00000278 	.word	0x00000278
     1a4:	000001dc 	.word	0x000001dc
     1a8:	e5940014 	ldr	r0, [r4, #20]
     1ac:	eb000355 	bl	f08 <close>
     1b0:	e5941010 	ldr	r1, [r4, #16]
     1b4:	e5940008 	ldr	r0, [r4, #8]
     1b8:	eb000379 	bl	fa4 <open>
     1bc:	e3500000 	cmp	r0, #0
     1c0:	aa00000a 	bge	1f0 <runcmd+0x84>
     1c4:	e30116c0 	movw	r1, #5824	; 0x16c0
     1c8:	e5942008 	ldr	r2, [r4, #8]
     1cc:	e3a00002 	mov	r0, #2
     1d0:	e3401000 	movt	r1, #0
     1d4:	eb00046b 	bl	1388 <printf>
     1d8:	eb000309 	bl	e04 <exit>
     1dc:	eb0002fb 	bl	dd0 <fork>
     1e0:	e3700001 	cmn	r0, #1
     1e4:	0a00002e 	beq	2a4 <runcmd+0x138>
     1e8:	e3500000 	cmp	r0, #0
     1ec:	1afffff9 	bne	1d8 <runcmd+0x6c>
     1f0:	e5940004 	ldr	r0, [r4, #4]
     1f4:	ebffffdc 	bl	16c <runcmd>
     1f8:	e5940004 	ldr	r0, [r4, #4]
     1fc:	e3500000 	cmp	r0, #0
     200:	0afffff4 	beq	1d8 <runcmd+0x6c>
     204:	e2841004 	add	r1, r4, #4
     208:	eb000358 	bl	f70 <exec>
     20c:	e5942004 	ldr	r2, [r4, #4]
     210:	e30116b0 	movw	r1, #5808	; 0x16b0
     214:	e3a00002 	mov	r0, #2
     218:	e3401000 	movt	r1, #0
     21c:	eb000459 	bl	1388 <printf>
     220:	eaffffec 	b	1d8 <runcmd+0x6c>
     224:	e24b0014 	sub	r0, fp, #20
     228:	eb00030f 	bl	e6c <pipe>
     22c:	e3500000 	cmp	r0, #0
     230:	ba000027 	blt	2d4 <runcmd+0x168>
     234:	eb0002e5 	bl	dd0 <fork>
     238:	e3700001 	cmn	r0, #1
     23c:	0a000018 	beq	2a4 <runcmd+0x138>
     240:	e3500000 	cmp	r0, #0
     244:	0a000025 	beq	2e0 <runcmd+0x174>
     248:	eb0002e0 	bl	dd0 <fork>
     24c:	e3700001 	cmn	r0, #1
     250:	0a000013 	beq	2a4 <runcmd+0x138>
     254:	e3500000 	cmp	r0, #0
     258:	0a000014 	beq	2b0 <runcmd+0x144>
     25c:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
     260:	eb000328 	bl	f08 <close>
     264:	e51b0010 	ldr	r0, [fp, #-16]
     268:	eb000326 	bl	f08 <close>
     26c:	eb0002f1 	bl	e38 <wait>
     270:	eb0002f0 	bl	e38 <wait>
     274:	eaffffd7 	b	1d8 <runcmd+0x6c>
     278:	eb0002d4 	bl	dd0 <fork>
     27c:	e3700001 	cmn	r0, #1
     280:	0a000007 	beq	2a4 <runcmd+0x138>
     284:	e3500000 	cmp	r0, #0
     288:	0affffd8 	beq	1f0 <runcmd+0x84>
     28c:	eb0002e9 	bl	e38 <wait>
     290:	e5940008 	ldr	r0, [r4, #8]
     294:	ebffffb4 	bl	16c <runcmd>
     298:	e30106a8 	movw	r0, #5800	; 0x16a8
     29c:	e3400000 	movt	r0, #0
     2a0:	ebffffa9 	bl	14c <panic>
     2a4:	e30106d0 	movw	r0, #5840	; 0x16d0
     2a8:	e3400000 	movt	r0, #0
     2ac:	ebffffa6 	bl	14c <panic>
     2b0:	eb000314 	bl	f08 <close>
     2b4:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
     2b8:	eb000394 	bl	1110 <dup>
     2bc:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
     2c0:	eb000310 	bl	f08 <close>
     2c4:	e51b0010 	ldr	r0, [fp, #-16]
     2c8:	eb00030e 	bl	f08 <close>
     2cc:	e5940008 	ldr	r0, [r4, #8]
     2d0:	ebffffa5 	bl	16c <runcmd>
     2d4:	e30106d8 	movw	r0, #5848	; 0x16d8
     2d8:	e3400000 	movt	r0, #0
     2dc:	ebffff9a 	bl	14c <panic>
     2e0:	e3a00001 	mov	r0, #1
     2e4:	eb000307 	bl	f08 <close>
     2e8:	e51b0010 	ldr	r0, [fp, #-16]
     2ec:	eb000387 	bl	1110 <dup>
     2f0:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
     2f4:	eb000303 	bl	f08 <close>
     2f8:	e51b0010 	ldr	r0, [fp, #-16]
     2fc:	eb000301 	bl	f08 <close>
     300:	e5940004 	ldr	r0, [r4, #4]
     304:	ebffff98 	bl	16c <runcmd>

00000308 <fork1>:
     308:	e92d4800 	push	{fp, lr}
     30c:	e28db004 	add	fp, sp, #4
     310:	eb0002ae 	bl	dd0 <fork>
     314:	e3700001 	cmn	r0, #1
     318:	18bd8800 	popne	{fp, pc}
     31c:	e30106d0 	movw	r0, #5840	; 0x16d0
     320:	e3400000 	movt	r0, #0
     324:	ebffff88 	bl	14c <panic>

00000328 <execcmd>:
     328:	e92d4830 	push	{r4, r5, fp, lr}
     32c:	e3a00054 	mov	r0, #84	; 0x54
     330:	e28db00c 	add	fp, sp, #12
     334:	eb0004a2 	bl	15c4 <malloc>
     338:	e3a02054 	mov	r2, #84	; 0x54
     33c:	e3a01000 	mov	r1, #0
     340:	e1a04000 	mov	r4, r0
     344:	eb000234 	bl	c1c <memset>
     348:	e3a03001 	mov	r3, #1
     34c:	e1a00004 	mov	r0, r4
     350:	e5843000 	str	r3, [r4]
     354:	e8bd8830 	pop	{r4, r5, fp, pc}

00000358 <redircmd>:
     358:	e92d4bf0 	push	{r4, r5, r6, r7, r8, r9, fp, lr}
     35c:	e28db01c 	add	fp, sp, #28
     360:	e1a09000 	mov	r9, r0
     364:	e3a00018 	mov	r0, #24
     368:	e1a08001 	mov	r8, r1
     36c:	e1a07002 	mov	r7, r2
     370:	e1a06003 	mov	r6, r3
     374:	e59b5004 	ldr	r5, [fp, #4]
     378:	eb000491 	bl	15c4 <malloc>
     37c:	e3a02018 	mov	r2, #24
     380:	e3a01000 	mov	r1, #0
     384:	e1a04000 	mov	r4, r0
     388:	eb000223 	bl	c1c <memset>
     38c:	e3a02002 	mov	r2, #2
     390:	e5849004 	str	r9, [r4, #4]
     394:	e5848008 	str	r8, [r4, #8]
     398:	e1a00004 	mov	r0, r4
     39c:	e584700c 	str	r7, [r4, #12]
     3a0:	e5846010 	str	r6, [r4, #16]
     3a4:	e5845014 	str	r5, [r4, #20]
     3a8:	e5842000 	str	r2, [r4]
     3ac:	e8bd8bf0 	pop	{r4, r5, r6, r7, r8, r9, fp, pc}

000003b0 <pipecmd>:
     3b0:	e92d48f0 	push	{r4, r5, r6, r7, fp, lr}
     3b4:	e1a06000 	mov	r6, r0
     3b8:	e28db014 	add	fp, sp, #20
     3bc:	e3a0000c 	mov	r0, #12
     3c0:	e1a05001 	mov	r5, r1
     3c4:	eb00047e 	bl	15c4 <malloc>
     3c8:	e3a0200c 	mov	r2, #12
     3cc:	e3a01000 	mov	r1, #0
     3d0:	e1a04000 	mov	r4, r0
     3d4:	eb000210 	bl	c1c <memset>
     3d8:	e3a03003 	mov	r3, #3
     3dc:	e5846004 	str	r6, [r4, #4]
     3e0:	e5845008 	str	r5, [r4, #8]
     3e4:	e1a00004 	mov	r0, r4
     3e8:	e5843000 	str	r3, [r4]
     3ec:	e8bd88f0 	pop	{r4, r5, r6, r7, fp, pc}

000003f0 <listcmd>:
     3f0:	e92d48f0 	push	{r4, r5, r6, r7, fp, lr}
     3f4:	e1a06000 	mov	r6, r0
     3f8:	e28db014 	add	fp, sp, #20
     3fc:	e3a0000c 	mov	r0, #12
     400:	e1a05001 	mov	r5, r1
     404:	eb00046e 	bl	15c4 <malloc>
     408:	e3a0200c 	mov	r2, #12
     40c:	e3a01000 	mov	r1, #0
     410:	e1a04000 	mov	r4, r0
     414:	eb000200 	bl	c1c <memset>
     418:	e3a03004 	mov	r3, #4
     41c:	e5846004 	str	r6, [r4, #4]
     420:	e5845008 	str	r5, [r4, #8]
     424:	e1a00004 	mov	r0, r4
     428:	e5843000 	str	r3, [r4]
     42c:	e8bd88f0 	pop	{r4, r5, r6, r7, fp, pc}

00000430 <backcmd>:
     430:	e92d4830 	push	{r4, r5, fp, lr}
     434:	e1a05000 	mov	r5, r0
     438:	e28db00c 	add	fp, sp, #12
     43c:	e3a00008 	mov	r0, #8
     440:	eb00045f 	bl	15c4 <malloc>
     444:	e3a02008 	mov	r2, #8
     448:	e3a01000 	mov	r1, #0
     44c:	e1a04000 	mov	r4, r0
     450:	eb0001f1 	bl	c1c <memset>
     454:	e3a03005 	mov	r3, #5
     458:	e5845004 	str	r5, [r4, #4]
     45c:	e1a00004 	mov	r0, r4
     460:	e5843000 	str	r3, [r4]
     464:	e8bd8830 	pop	{r4, r5, fp, pc}

00000468 <gettoken>:
     468:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
     46c:	e1a08000 	mov	r8, r0
     470:	e5904000 	ldr	r4, [r0]
     474:	e28db024 	add	fp, sp, #36	; 0x24
     478:	e1a06001 	mov	r6, r1
     47c:	e1a0a002 	mov	sl, r2
     480:	e1540001 	cmp	r4, r1
     484:	e1a09003 	mov	r9, r3
     488:	2a00000d 	bcs	4c4 <gettoken+0x5c>
     48c:	e301779c 	movw	r7, #6044	; 0x179c
     490:	e1a05004 	mov	r5, r4
     494:	e3407000 	movt	r7, #0
     498:	ea000002 	b	4a8 <gettoken+0x40>
     49c:	e1550006 	cmp	r5, r6
     4a0:	e1a04005 	mov	r4, r5
     4a4:	0a000006 	beq	4c4 <gettoken+0x5c>
     4a8:	e5d51000 	ldrb	r1, [r5]
     4ac:	e1a00007 	mov	r0, r7
     4b0:	eb0001e5 	bl	c4c <strchr>
     4b4:	e1a04005 	mov	r4, r5
     4b8:	e2855001 	add	r5, r5, #1
     4bc:	e3500000 	cmp	r0, #0
     4c0:	1afffff5 	bne	49c <gettoken+0x34>
     4c4:	e35a0000 	cmp	sl, #0
     4c8:	158a4000 	strne	r4, [sl]
     4cc:	e5d41000 	ldrb	r1, [r4]
     4d0:	e3510029 	cmp	r1, #41	; 0x29
     4d4:	8a00001a 	bhi	544 <gettoken+0xdc>
     4d8:	e3510028 	cmp	r1, #40	; 0x28
     4dc:	2a000040 	bcs	5e4 <gettoken+0x17c>
     4e0:	e3510000 	cmp	r1, #0
     4e4:	1a000041 	bne	5f0 <gettoken+0x188>
     4e8:	e1a07001 	mov	r7, r1
     4ec:	e3590000 	cmp	r9, #0
     4f0:	0a000000 	beq	4f8 <gettoken+0x90>
     4f4:	e5894000 	str	r4, [r9]
     4f8:	e1540006 	cmp	r4, r6
     4fc:	2a00000d 	bcs	538 <gettoken+0xd0>
     500:	e301979c 	movw	r9, #6044	; 0x179c
     504:	e1a05004 	mov	r5, r4
     508:	e3409000 	movt	r9, #0
     50c:	ea000002 	b	51c <gettoken+0xb4>
     510:	e1550006 	cmp	r5, r6
     514:	e1a04005 	mov	r4, r5
     518:	0a000006 	beq	538 <gettoken+0xd0>
     51c:	e5d51000 	ldrb	r1, [r5]
     520:	e1a00009 	mov	r0, r9
     524:	eb0001c8 	bl	c4c <strchr>
     528:	e1a04005 	mov	r4, r5
     52c:	e2855001 	add	r5, r5, #1
     530:	e3500000 	cmp	r0, #0
     534:	1afffff5 	bne	510 <gettoken+0xa8>
     538:	e5884000 	str	r4, [r8]
     53c:	e1a00007 	mov	r0, r7
     540:	e8bd8ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
     544:	e351003e 	cmp	r1, #62	; 0x3e
     548:	1a000007 	bne	56c <gettoken+0x104>
     54c:	e5d43001 	ldrb	r3, [r4, #1]
     550:	e2842001 	add	r2, r4, #1
     554:	e353003e 	cmp	r3, #62	; 0x3e
     558:	02844002 	addeq	r4, r4, #2
     55c:	03a0702b 	moveq	r7, #43	; 0x2b
     560:	0affffe1 	beq	4ec <gettoken+0x84>
     564:	e1a04002 	mov	r4, r2
     568:	eaffffde 	b	4e8 <gettoken+0x80>
     56c:	8a00001a 	bhi	5dc <gettoken+0x174>
     570:	e241303b 	sub	r3, r1, #59	; 0x3b
     574:	e3530001 	cmp	r3, #1
     578:	9a000019 	bls	5e4 <gettoken+0x17c>
     57c:	e1560004 	cmp	r6, r4
     580:	9a00001d 	bls	5fc <gettoken+0x194>
     584:	e301579c 	movw	r5, #6044	; 0x179c
     588:	e3405000 	movt	r5, #0
     58c:	e1a0a004 	mov	sl, r4
     590:	e2857008 	add	r7, r5, #8
     594:	ea000007 	b	5b8 <gettoken+0x150>
     598:	e5d41000 	ldrb	r1, [r4]
     59c:	eb0001aa 	bl	c4c <strchr>
     5a0:	e3500000 	cmp	r0, #0
     5a4:	1a00000a 	bne	5d4 <gettoken+0x16c>
     5a8:	e15a0006 	cmp	sl, r6
     5ac:	e1a0400a 	mov	r4, sl
     5b0:	0a000011 	beq	5fc <gettoken+0x194>
     5b4:	e5da1000 	ldrb	r1, [sl]
     5b8:	e1a00005 	mov	r0, r5
     5bc:	e1a0400a 	mov	r4, sl
     5c0:	eb0001a1 	bl	c4c <strchr>
     5c4:	e28aa001 	add	sl, sl, #1
     5c8:	e3500000 	cmp	r0, #0
     5cc:	e1a00007 	mov	r0, r7
     5d0:	0afffff0 	beq	598 <gettoken+0x130>
     5d4:	e3a07061 	mov	r7, #97	; 0x61
     5d8:	eaffffc3 	b	4ec <gettoken+0x84>
     5dc:	e351007c 	cmp	r1, #124	; 0x7c
     5e0:	1affffe5 	bne	57c <gettoken+0x114>
     5e4:	e1a07001 	mov	r7, r1
     5e8:	e2844001 	add	r4, r4, #1
     5ec:	eaffffbe 	b	4ec <gettoken+0x84>
     5f0:	e3510026 	cmp	r1, #38	; 0x26
     5f4:	1affffe0 	bne	57c <gettoken+0x114>
     5f8:	eafffff9 	b	5e4 <gettoken+0x17c>
     5fc:	e3590000 	cmp	r9, #0
     600:	e3a07061 	mov	r7, #97	; 0x61
     604:	1affffba 	bne	4f4 <gettoken+0x8c>
     608:	eaffffca 	b	538 <gettoken+0xd0>

0000060c <peek>:
     60c:	e92d4bf0 	push	{r4, r5, r6, r7, r8, r9, fp, lr}
     610:	e1a08000 	mov	r8, r0
     614:	e5905000 	ldr	r5, [r0]
     618:	e28db01c 	add	fp, sp, #28
     61c:	e1a09002 	mov	r9, r2
     620:	e1550001 	cmp	r5, r1
     624:	2a00000e 	bcs	664 <peek+0x58>
     628:	e301679c 	movw	r6, #6044	; 0x179c
     62c:	e1a07001 	mov	r7, r1
     630:	e1a04005 	mov	r4, r5
     634:	e3406000 	movt	r6, #0
     638:	ea000002 	b	648 <peek+0x3c>
     63c:	e1540007 	cmp	r4, r7
     640:	e1a05004 	mov	r5, r4
     644:	0a000006 	beq	664 <peek+0x58>
     648:	e5d41000 	ldrb	r1, [r4]
     64c:	e1a00006 	mov	r0, r6
     650:	eb00017d 	bl	c4c <strchr>
     654:	e1a05004 	mov	r5, r4
     658:	e2844001 	add	r4, r4, #1
     65c:	e3500000 	cmp	r0, #0
     660:	1afffff5 	bne	63c <peek+0x30>
     664:	e5885000 	str	r5, [r8]
     668:	e5d51000 	ldrb	r1, [r5]
     66c:	e3510000 	cmp	r1, #0
     670:	1a000001 	bne	67c <peek+0x70>
     674:	e1a00001 	mov	r0, r1
     678:	e8bd8bf0 	pop	{r4, r5, r6, r7, r8, r9, fp, pc}
     67c:	e1a00009 	mov	r0, r9
     680:	eb000171 	bl	c4c <strchr>
     684:	e2900000 	adds	r0, r0, #0
     688:	13a00001 	movne	r0, #1
     68c:	e8bd8bf0 	pop	{r4, r5, r6, r7, r8, r9, fp, pc}

00000690 <parseredirs>:
     690:	e92d49f0 	push	{r4, r5, r6, r7, r8, fp, lr}
     694:	e3018700 	movw	r8, #5888	; 0x1700
     698:	e3408000 	movt	r8, #0
     69c:	e1a07000 	mov	r7, r0
     6a0:	e1a06001 	mov	r6, r1
     6a4:	e1a05002 	mov	r5, r2
     6a8:	e28db018 	add	fp, sp, #24
     6ac:	e24dd014 	sub	sp, sp, #20
     6b0:	e1a02008 	mov	r2, r8
     6b4:	e1a01005 	mov	r1, r5
     6b8:	e1a00006 	mov	r0, r6
     6bc:	ebffffd2 	bl	60c <peek>
     6c0:	e3500000 	cmp	r0, #0
     6c4:	0a000023 	beq	758 <parseredirs+0xc8>
     6c8:	e3a03000 	mov	r3, #0
     6cc:	e1a01005 	mov	r1, r5
     6d0:	e1a02003 	mov	r2, r3
     6d4:	e1a00006 	mov	r0, r6
     6d8:	ebffff62 	bl	468 <gettoken>
     6dc:	e24b3020 	sub	r3, fp, #32
     6e0:	e24b2024 	sub	r2, fp, #36	; 0x24
     6e4:	e1a01005 	mov	r1, r5
     6e8:	e1a04000 	mov	r4, r0
     6ec:	e1a00006 	mov	r0, r6
     6f0:	ebffff5c 	bl	468 <gettoken>
     6f4:	e3500061 	cmp	r0, #97	; 0x61
     6f8:	1a000019 	bne	764 <parseredirs+0xd4>
     6fc:	e354003c 	cmp	r4, #60	; 0x3c
     700:	0a00000c 	beq	738 <parseredirs+0xa8>
     704:	e354003e 	cmp	r4, #62	; 0x3e
     708:	0a000001 	beq	714 <parseredirs+0x84>
     70c:	e354002b 	cmp	r4, #43	; 0x2b
     710:	1affffe6 	bne	6b0 <parseredirs+0x20>
     714:	e1a00007 	mov	r0, r7
     718:	e3a0c001 	mov	ip, #1
     71c:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
     720:	e3003201 	movw	r3, #513	; 0x201
     724:	e51b1024 	ldr	r1, [fp, #-36]	; 0xffffffdc
     728:	e58dc000 	str	ip, [sp]
     72c:	ebffff09 	bl	358 <redircmd>
     730:	e1a07000 	mov	r7, r0
     734:	eaffffdd 	b	6b0 <parseredirs+0x20>
     738:	e3a03000 	mov	r3, #0
     73c:	e1a00007 	mov	r0, r7
     740:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
     744:	e51b1024 	ldr	r1, [fp, #-36]	; 0xffffffdc
     748:	e58d3000 	str	r3, [sp]
     74c:	ebffff01 	bl	358 <redircmd>
     750:	e1a07000 	mov	r7, r0
     754:	eaffffd5 	b	6b0 <parseredirs+0x20>
     758:	e1a00007 	mov	r0, r7
     75c:	e24bd018 	sub	sp, fp, #24
     760:	e8bd89f0 	pop	{r4, r5, r6, r7, r8, fp, pc}
     764:	e30106e0 	movw	r0, #5856	; 0x16e0
     768:	e3400000 	movt	r0, #0
     76c:	ebfffe76 	bl	14c <panic>

00000770 <parseexec>:
     770:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
     774:	e3012704 	movw	r2, #5892	; 0x1704
     778:	e28db020 	add	fp, sp, #32
     77c:	e3402000 	movt	r2, #0
     780:	e24dd00c 	sub	sp, sp, #12
     784:	e1a04000 	mov	r4, r0
     788:	e1a05001 	mov	r5, r1
     78c:	ebffff9e 	bl	60c <peek>
     790:	e2506000 	subs	r6, r0, #0
     794:	1a000027 	bne	838 <parseexec+0xc8>
     798:	ebfffee2 	bl	328 <execcmd>
     79c:	e1a02005 	mov	r2, r5
     7a0:	e1a01004 	mov	r1, r4
     7a4:	e3019720 	movw	r9, #5920	; 0x1720
     7a8:	e3409000 	movt	r9, #0
     7ac:	e1a0a000 	mov	sl, r0
     7b0:	ebffffb6 	bl	690 <parseredirs>
     7b4:	e1a0700a 	mov	r7, sl
     7b8:	e1a08000 	mov	r8, r0
     7bc:	ea000004 	b	7d4 <parseexec+0x64>
     7c0:	e1a00008 	mov	r0, r8
     7c4:	e1a02005 	mov	r2, r5
     7c8:	e1a01004 	mov	r1, r4
     7cc:	ebffffaf 	bl	690 <parseredirs>
     7d0:	e1a08000 	mov	r8, r0
     7d4:	e1a02009 	mov	r2, r9
     7d8:	e1a01005 	mov	r1, r5
     7dc:	e1a00004 	mov	r0, r4
     7e0:	ebffff89 	bl	60c <peek>
     7e4:	e3500000 	cmp	r0, #0
     7e8:	1a000019 	bne	854 <parseexec+0xe4>
     7ec:	e24b3028 	sub	r3, fp, #40	; 0x28
     7f0:	e24b202c 	sub	r2, fp, #44	; 0x2c
     7f4:	e1a01005 	mov	r1, r5
     7f8:	e1a00004 	mov	r0, r4
     7fc:	ebffff19 	bl	468 <gettoken>
     800:	e3500000 	cmp	r0, #0
     804:	0a000012 	beq	854 <parseexec+0xe4>
     808:	e3500061 	cmp	r0, #97	; 0x61
     80c:	1a000017 	bne	870 <parseexec+0x100>
     810:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
     814:	e2866001 	add	r6, r6, #1
     818:	e356000a 	cmp	r6, #10
     81c:	e5a73004 	str	r3, [r7, #4]!
     820:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
     824:	e5873028 	str	r3, [r7, #40]	; 0x28
     828:	1affffe4 	bne	7c0 <parseexec+0x50>
     82c:	e3010710 	movw	r0, #5904	; 0x1710
     830:	e3400000 	movt	r0, #0
     834:	ebfffe44 	bl	14c <panic>
     838:	e1a01005 	mov	r1, r5
     83c:	e1a00004 	mov	r0, r4
     840:	eb000054 	bl	998 <parseblock>
     844:	e1a08000 	mov	r8, r0
     848:	e1a00008 	mov	r0, r8
     84c:	e24bd020 	sub	sp, fp, #32
     850:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
     854:	e08a6106 	add	r6, sl, r6, lsl #2
     858:	e3a03000 	mov	r3, #0
     85c:	e1a00008 	mov	r0, r8
     860:	e5863004 	str	r3, [r6, #4]
     864:	e586302c 	str	r3, [r6, #44]	; 0x2c
     868:	e24bd020 	sub	sp, fp, #32
     86c:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
     870:	e3010708 	movw	r0, #5896	; 0x1708
     874:	e3400000 	movt	r0, #0
     878:	ebfffe33 	bl	14c <panic>

0000087c <parsepipe>:
     87c:	e92d48f0 	push	{r4, r5, r6, r7, fp, lr}
     880:	e28db014 	add	fp, sp, #20
     884:	e1a04000 	mov	r4, r0
     888:	e1a05001 	mov	r5, r1
     88c:	ebffffb7 	bl	770 <parseexec>
     890:	e1a01005 	mov	r1, r5
     894:	e3012728 	movw	r2, #5928	; 0x1728
     898:	e3402000 	movt	r2, #0
     89c:	e1a06000 	mov	r6, r0
     8a0:	e1a00004 	mov	r0, r4
     8a4:	ebffff58 	bl	60c <peek>
     8a8:	e3500000 	cmp	r0, #0
     8ac:	1a000001 	bne	8b8 <parsepipe+0x3c>
     8b0:	e1a00006 	mov	r0, r6
     8b4:	e8bd88f0 	pop	{r4, r5, r6, r7, fp, pc}
     8b8:	e3a03000 	mov	r3, #0
     8bc:	e1a01005 	mov	r1, r5
     8c0:	e1a02003 	mov	r2, r3
     8c4:	e1a00004 	mov	r0, r4
     8c8:	ebfffee6 	bl	468 <gettoken>
     8cc:	e1a01005 	mov	r1, r5
     8d0:	e1a00004 	mov	r0, r4
     8d4:	ebffffe8 	bl	87c <parsepipe>
     8d8:	e1a01000 	mov	r1, r0
     8dc:	e1a00006 	mov	r0, r6
     8e0:	e24bd014 	sub	sp, fp, #20
     8e4:	e8bd48f0 	pop	{r4, r5, r6, r7, fp, lr}
     8e8:	eafffeb0 	b	3b0 <pipecmd>

000008ec <parseline>:
     8ec:	e92d4bf0 	push	{r4, r5, r6, r7, r8, r9, fp, lr}
     8f0:	e28db01c 	add	fp, sp, #28
     8f4:	e1a04000 	mov	r4, r0
     8f8:	e1a05001 	mov	r5, r1
     8fc:	ebffffde 	bl	87c <parsepipe>
     900:	e301772c 	movw	r7, #5932	; 0x172c
     904:	e3407000 	movt	r7, #0
     908:	e1a06000 	mov	r6, r0
     90c:	ea000003 	b	920 <parseline+0x34>
     910:	ebfffed4 	bl	468 <gettoken>
     914:	e1a00006 	mov	r0, r6
     918:	ebfffec4 	bl	430 <backcmd>
     91c:	e1a06000 	mov	r6, r0
     920:	e1a02007 	mov	r2, r7
     924:	e1a01005 	mov	r1, r5
     928:	e1a00004 	mov	r0, r4
     92c:	ebffff36 	bl	60c <peek>
     930:	e3a03000 	mov	r3, #0
     934:	e1a02003 	mov	r2, r3
     938:	e1a01005 	mov	r1, r5
     93c:	e2508000 	subs	r8, r0, #0
     940:	e1a00004 	mov	r0, r4
     944:	1afffff1 	bne	910 <parseline+0x24>
     948:	e3012730 	movw	r2, #5936	; 0x1730
     94c:	e3402000 	movt	r2, #0
     950:	ebffff2d 	bl	60c <peek>
     954:	e3500000 	cmp	r0, #0
     958:	1a000001 	bne	964 <parseline+0x78>
     95c:	e1a00006 	mov	r0, r6
     960:	e8bd8bf0 	pop	{r4, r5, r6, r7, r8, r9, fp, pc}
     964:	e1a03008 	mov	r3, r8
     968:	e1a02008 	mov	r2, r8
     96c:	e1a01005 	mov	r1, r5
     970:	e1a00004 	mov	r0, r4
     974:	ebfffebb 	bl	468 <gettoken>
     978:	e1a01005 	mov	r1, r5
     97c:	e1a00004 	mov	r0, r4
     980:	ebffffd9 	bl	8ec <parseline>
     984:	e1a01000 	mov	r1, r0
     988:	e1a00006 	mov	r0, r6
     98c:	e24bd01c 	sub	sp, fp, #28
     990:	e8bd4bf0 	pop	{r4, r5, r6, r7, r8, r9, fp, lr}
     994:	eafffe95 	b	3f0 <listcmd>

00000998 <parseblock>:
     998:	e92d48f0 	push	{r4, r5, r6, r7, fp, lr}
     99c:	e3012704 	movw	r2, #5892	; 0x1704
     9a0:	e28db014 	add	fp, sp, #20
     9a4:	e3402000 	movt	r2, #0
     9a8:	e1a04000 	mov	r4, r0
     9ac:	e1a05001 	mov	r5, r1
     9b0:	ebffff15 	bl	60c <peek>
     9b4:	e3500000 	cmp	r0, #0
     9b8:	0a00001a 	beq	a28 <parseblock+0x90>
     9bc:	e3a03000 	mov	r3, #0
     9c0:	e1a01005 	mov	r1, r5
     9c4:	e1a02003 	mov	r2, r3
     9c8:	e1a00004 	mov	r0, r4
     9cc:	ebfffea5 	bl	468 <gettoken>
     9d0:	e1a01005 	mov	r1, r5
     9d4:	e1a00004 	mov	r0, r4
     9d8:	ebffffc3 	bl	8ec <parseline>
     9dc:	e3012740 	movw	r2, #5952	; 0x1740
     9e0:	e1a01005 	mov	r1, r5
     9e4:	e3402000 	movt	r2, #0
     9e8:	e1a06000 	mov	r6, r0
     9ec:	e1a00004 	mov	r0, r4
     9f0:	ebffff05 	bl	60c <peek>
     9f4:	e3500000 	cmp	r0, #0
     9f8:	0a00000d 	beq	a34 <parseblock+0x9c>
     9fc:	e3a03000 	mov	r3, #0
     a00:	e1a01005 	mov	r1, r5
     a04:	e1a02003 	mov	r2, r3
     a08:	e1a00004 	mov	r0, r4
     a0c:	ebfffe95 	bl	468 <gettoken>
     a10:	e1a02005 	mov	r2, r5
     a14:	e1a01004 	mov	r1, r4
     a18:	e1a00006 	mov	r0, r6
     a1c:	e24bd014 	sub	sp, fp, #20
     a20:	e8bd48f0 	pop	{r4, r5, r6, r7, fp, lr}
     a24:	eaffff19 	b	690 <parseredirs>
     a28:	e3010734 	movw	r0, #5940	; 0x1734
     a2c:	e3400000 	movt	r0, #0
     a30:	ebfffdc5 	bl	14c <panic>
     a34:	e3010744 	movw	r0, #5956	; 0x1744
     a38:	e3400000 	movt	r0, #0
     a3c:	ebfffdc2 	bl	14c <panic>

00000a40 <nulterminate>:
     a40:	e92d4830 	push	{r4, r5, fp, lr}
     a44:	e2504000 	subs	r4, r0, #0
     a48:	e28db00c 	add	fp, sp, #12
     a4c:	0a00000b 	beq	a80 <nulterminate+0x40>
     a50:	e5943000 	ldr	r3, [r4]
     a54:	e2433001 	sub	r3, r3, #1
     a58:	e3530004 	cmp	r3, #4
     a5c:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
     a60:	ea000006 	b	a80 <nulterminate+0x40>
     a64:	00000aa0 	.word	0x00000aa0
     a68:	00000ad4 	.word	0x00000ad4
     a6c:	00000a88 	.word	0x00000a88
     a70:	00000a88 	.word	0x00000a88
     a74:	00000a78 	.word	0x00000a78
     a78:	e5940004 	ldr	r0, [r4, #4]
     a7c:	ebffffef 	bl	a40 <nulterminate>
     a80:	e1a00004 	mov	r0, r4
     a84:	e8bd8830 	pop	{r4, r5, fp, pc}
     a88:	e5940004 	ldr	r0, [r4, #4]
     a8c:	ebffffeb 	bl	a40 <nulterminate>
     a90:	e5940008 	ldr	r0, [r4, #8]
     a94:	ebffffe9 	bl	a40 <nulterminate>
     a98:	e1a00004 	mov	r0, r4
     a9c:	e8bd8830 	pop	{r4, r5, fp, pc}
     aa0:	e5943004 	ldr	r3, [r4, #4]
     aa4:	e3530000 	cmp	r3, #0
     aa8:	0afffff4 	beq	a80 <nulterminate+0x40>
     aac:	e2842004 	add	r2, r4, #4
     ab0:	e2843028 	add	r3, r4, #40	; 0x28
     ab4:	e3a00000 	mov	r0, #0
     ab8:	e5b31004 	ldr	r1, [r3, #4]!
     abc:	e5c10000 	strb	r0, [r1]
     ac0:	e5b21004 	ldr	r1, [r2, #4]!
     ac4:	e3510000 	cmp	r1, #0
     ac8:	1afffffa 	bne	ab8 <nulterminate+0x78>
     acc:	e1a00004 	mov	r0, r4
     ad0:	e8bd8830 	pop	{r4, r5, fp, pc}
     ad4:	e5940004 	ldr	r0, [r4, #4]
     ad8:	ebffffd8 	bl	a40 <nulterminate>
     adc:	e594300c 	ldr	r3, [r4, #12]
     ae0:	e3a02000 	mov	r2, #0
     ae4:	e1a00004 	mov	r0, r4
     ae8:	e5c32000 	strb	r2, [r3]
     aec:	e8bd8830 	pop	{r4, r5, fp, pc}

00000af0 <parsecmd>:
     af0:	e92d4870 	push	{r4, r5, r6, fp, lr}
     af4:	e28db010 	add	fp, sp, #16
     af8:	e24b5014 	sub	r5, fp, #20
     afc:	e24dd00c 	sub	sp, sp, #12
     b00:	e1a04000 	mov	r4, r0
     b04:	e5250004 	str	r0, [r5, #-4]!
     b08:	eb000033 	bl	bdc <strlen>
     b0c:	e0844000 	add	r4, r4, r0
     b10:	e1a00005 	mov	r0, r5
     b14:	e1a01004 	mov	r1, r4
     b18:	ebffff73 	bl	8ec <parseline>
     b1c:	e1a01004 	mov	r1, r4
     b20:	e3012724 	movw	r2, #5924	; 0x1724
     b24:	e3402000 	movt	r2, #0
     b28:	e1a06000 	mov	r6, r0
     b2c:	e1a00005 	mov	r0, r5
     b30:	ebfffeb5 	bl	60c <peek>
     b34:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
     b38:	e1520004 	cmp	r2, r4
     b3c:	1a000004 	bne	b54 <parsecmd+0x64>
     b40:	e1a00006 	mov	r0, r6
     b44:	ebffffbd 	bl	a40 <nulterminate>
     b48:	e1a00006 	mov	r0, r6
     b4c:	e24bd010 	sub	sp, fp, #16
     b50:	e8bd8870 	pop	{r4, r5, r6, fp, pc}
     b54:	e3a00002 	mov	r0, #2
     b58:	e3011758 	movw	r1, #5976	; 0x1758
     b5c:	e3401000 	movt	r1, #0
     b60:	eb000208 	bl	1388 <printf>
     b64:	e3010708 	movw	r0, #5896	; 0x1708
     b68:	e3400000 	movt	r0, #0
     b6c:	ebfffd76 	bl	14c <panic>

00000b70 <strcpy>:
     b70:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     b74:	e2402001 	sub	r2, r0, #1
     b78:	e28db000 	add	fp, sp, #0
     b7c:	e4d13001 	ldrb	r3, [r1], #1
     b80:	e3530000 	cmp	r3, #0
     b84:	e5e23001 	strb	r3, [r2, #1]!
     b88:	1afffffb 	bne	b7c <strcpy+0xc>
     b8c:	e28bd000 	add	sp, fp, #0
     b90:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     b94:	e12fff1e 	bx	lr

00000b98 <strcmp>:
     b98:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     b9c:	e28db000 	add	fp, sp, #0
     ba0:	e5d03000 	ldrb	r3, [r0]
     ba4:	e5d12000 	ldrb	r2, [r1]
     ba8:	e3530000 	cmp	r3, #0
     bac:	1a000004 	bne	bc4 <strcmp+0x2c>
     bb0:	ea000005 	b	bcc <strcmp+0x34>
     bb4:	e5f03001 	ldrb	r3, [r0, #1]!
     bb8:	e5f12001 	ldrb	r2, [r1, #1]!
     bbc:	e3530000 	cmp	r3, #0
     bc0:	0a000001 	beq	bcc <strcmp+0x34>
     bc4:	e1530002 	cmp	r3, r2
     bc8:	0afffff9 	beq	bb4 <strcmp+0x1c>
     bcc:	e0430002 	sub	r0, r3, r2
     bd0:	e28bd000 	add	sp, fp, #0
     bd4:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     bd8:	e12fff1e 	bx	lr

00000bdc <strlen>:
     bdc:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     be0:	e28db000 	add	fp, sp, #0
     be4:	e5d03000 	ldrb	r3, [r0]
     be8:	e3530000 	cmp	r3, #0
     bec:	01a00003 	moveq	r0, r3
     bf0:	0a000006 	beq	c10 <strlen+0x34>
     bf4:	e1a02000 	mov	r2, r0
     bf8:	e3a03000 	mov	r3, #0
     bfc:	e5f21001 	ldrb	r1, [r2, #1]!
     c00:	e2833001 	add	r3, r3, #1
     c04:	e3510000 	cmp	r1, #0
     c08:	e1a00003 	mov	r0, r3
     c0c:	1afffffa 	bne	bfc <strlen+0x20>
     c10:	e28bd000 	add	sp, fp, #0
     c14:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     c18:	e12fff1e 	bx	lr

00000c1c <memset>:
     c1c:	e3520000 	cmp	r2, #0
     c20:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     c24:	e28db000 	add	fp, sp, #0
     c28:	0a000004 	beq	c40 <memset+0x24>
     c2c:	e6ef1071 	uxtb	r1, r1
     c30:	e0802002 	add	r2, r0, r2
     c34:	e4c01001 	strb	r1, [r0], #1
     c38:	e1520000 	cmp	r2, r0
     c3c:	1afffffc 	bne	c34 <memset+0x18>
     c40:	e28bd000 	add	sp, fp, #0
     c44:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     c48:	e12fff1e 	bx	lr

00000c4c <strchr>:
     c4c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     c50:	e28db000 	add	fp, sp, #0
     c54:	e5d02000 	ldrb	r2, [r0]
     c58:	e3520000 	cmp	r2, #0
     c5c:	0a00000b 	beq	c90 <strchr+0x44>
     c60:	e1510002 	cmp	r1, r2
     c64:	1a000002 	bne	c74 <strchr+0x28>
     c68:	ea000005 	b	c84 <strchr+0x38>
     c6c:	e1530001 	cmp	r3, r1
     c70:	0a000003 	beq	c84 <strchr+0x38>
     c74:	e5f03001 	ldrb	r3, [r0, #1]!
     c78:	e3530000 	cmp	r3, #0
     c7c:	1afffffa 	bne	c6c <strchr+0x20>
     c80:	e1a00003 	mov	r0, r3
     c84:	e28bd000 	add	sp, fp, #0
     c88:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     c8c:	e12fff1e 	bx	lr
     c90:	e1a00002 	mov	r0, r2
     c94:	eafffffa 	b	c84 <strchr+0x38>

00000c98 <gets>:
     c98:	e92d48f0 	push	{r4, r5, r6, r7, fp, lr}
     c9c:	e1a03000 	mov	r3, r0
     ca0:	e28db014 	add	fp, sp, #20
     ca4:	e1a07000 	mov	r7, r0
     ca8:	e24dd008 	sub	sp, sp, #8
     cac:	e1a06001 	mov	r6, r1
     cb0:	e3a04000 	mov	r4, #0
     cb4:	ea000008 	b	cdc <gets+0x44>
     cb8:	eb000078 	bl	ea0 <read>
     cbc:	e1a03005 	mov	r3, r5
     cc0:	e3500000 	cmp	r0, #0
     cc4:	da00000b 	ble	cf8 <gets+0x60>
     cc8:	e55b2015 	ldrb	r2, [fp, #-21]	; 0xffffffeb
     ccc:	e352000d 	cmp	r2, #13
     cd0:	1352000a 	cmpne	r2, #10
     cd4:	e4c32001 	strb	r2, [r3], #1
     cd8:	0a00000b 	beq	d0c <gets+0x74>
     cdc:	e3a02001 	mov	r2, #1
     ce0:	e0844002 	add	r4, r4, r2
     ce4:	e1540006 	cmp	r4, r6
     ce8:	e24b1015 	sub	r1, fp, #21
     cec:	e3a00000 	mov	r0, #0
     cf0:	e1a05003 	mov	r5, r3
     cf4:	baffffef 	blt	cb8 <gets+0x20>
     cf8:	e1a00007 	mov	r0, r7
     cfc:	e3a03000 	mov	r3, #0
     d00:	e5c53000 	strb	r3, [r5]
     d04:	e24bd014 	sub	sp, fp, #20
     d08:	e8bd88f0 	pop	{r4, r5, r6, r7, fp, pc}
     d0c:	e0875004 	add	r5, r7, r4
     d10:	eafffff8 	b	cf8 <gets+0x60>

00000d14 <stat>:
     d14:	e92d4830 	push	{r4, r5, fp, lr}
     d18:	e1a04001 	mov	r4, r1
     d1c:	e28db00c 	add	fp, sp, #12
     d20:	e3a01000 	mov	r1, #0
     d24:	eb00009e 	bl	fa4 <open>
     d28:	e2505000 	subs	r5, r0, #0
     d2c:	ba000006 	blt	d4c <stat+0x38>
     d30:	e1a01004 	mov	r1, r4
     d34:	eb0000c1 	bl	1040 <fstat>
     d38:	e1a04000 	mov	r4, r0
     d3c:	e1a00005 	mov	r0, r5
     d40:	eb000070 	bl	f08 <close>
     d44:	e1a00004 	mov	r0, r4
     d48:	e8bd8830 	pop	{r4, r5, fp, pc}
     d4c:	e3e04000 	mvn	r4, #0
     d50:	eafffffb 	b	d44 <stat+0x30>

00000d54 <atoi>:
     d54:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     d58:	e28db000 	add	fp, sp, #0
     d5c:	e5d02000 	ldrb	r2, [r0]
     d60:	e2423030 	sub	r3, r2, #48	; 0x30
     d64:	e3530009 	cmp	r3, #9
     d68:	e3a03000 	mov	r3, #0
     d6c:	8a000006 	bhi	d8c <atoi+0x38>
     d70:	e3a0c00a 	mov	ip, #10
     d74:	e023239c 	mla	r3, ip, r3, r2
     d78:	e5f02001 	ldrb	r2, [r0, #1]!
     d7c:	e2421030 	sub	r1, r2, #48	; 0x30
     d80:	e3510009 	cmp	r1, #9
     d84:	e2433030 	sub	r3, r3, #48	; 0x30
     d88:	9afffff9 	bls	d74 <atoi+0x20>
     d8c:	e1a00003 	mov	r0, r3
     d90:	e28bd000 	add	sp, fp, #0
     d94:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     d98:	e12fff1e 	bx	lr

00000d9c <memmove>:
     d9c:	e3520000 	cmp	r2, #0
     da0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     da4:	e28db000 	add	fp, sp, #0
     da8:	da000005 	ble	dc4 <memmove+0x28>
     dac:	e0812002 	add	r2, r1, r2
     db0:	e2403001 	sub	r3, r0, #1
     db4:	e4d1c001 	ldrb	ip, [r1], #1
     db8:	e1510002 	cmp	r1, r2
     dbc:	e5e3c001 	strb	ip, [r3, #1]!
     dc0:	1afffffb 	bne	db4 <memmove+0x18>
     dc4:	e28bd000 	add	sp, fp, #0
     dc8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     dcc:	e12fff1e 	bx	lr

00000dd0 <fork>:
     dd0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
     dd4:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
     dd8:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
     ddc:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
     de0:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
     de4:	e3a00001 	mov	r0, #1
     de8:	ef000040 	svc	0x00000040
     dec:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
     df0:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
     df4:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
     df8:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
     dfc:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
     e00:	e12fff1e 	bx	lr

00000e04 <exit>:
     e04:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
     e08:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
     e0c:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
     e10:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
     e14:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
     e18:	e3a00002 	mov	r0, #2
     e1c:	ef000040 	svc	0x00000040
     e20:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
     e24:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
     e28:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
     e2c:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
     e30:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
     e34:	e12fff1e 	bx	lr

00000e38 <wait>:
     e38:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
     e3c:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
     e40:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
     e44:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
     e48:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
     e4c:	e3a00003 	mov	r0, #3
     e50:	ef000040 	svc	0x00000040
     e54:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
     e58:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
     e5c:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
     e60:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
     e64:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
     e68:	e12fff1e 	bx	lr

00000e6c <pipe>:
     e6c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
     e70:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
     e74:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
     e78:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
     e7c:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
     e80:	e3a00004 	mov	r0, #4
     e84:	ef000040 	svc	0x00000040
     e88:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
     e8c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
     e90:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
     e94:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
     e98:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
     e9c:	e12fff1e 	bx	lr

00000ea0 <read>:
     ea0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
     ea4:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
     ea8:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
     eac:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
     eb0:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
     eb4:	e3a00005 	mov	r0, #5
     eb8:	ef000040 	svc	0x00000040
     ebc:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
     ec0:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
     ec4:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
     ec8:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
     ecc:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
     ed0:	e12fff1e 	bx	lr

00000ed4 <write>:
     ed4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
     ed8:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
     edc:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
     ee0:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
     ee4:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
     ee8:	e3a00010 	mov	r0, #16
     eec:	ef000040 	svc	0x00000040
     ef0:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
     ef4:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
     ef8:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
     efc:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
     f00:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
     f04:	e12fff1e 	bx	lr

00000f08 <close>:
     f08:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
     f0c:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
     f10:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
     f14:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
     f18:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
     f1c:	e3a00015 	mov	r0, #21
     f20:	ef000040 	svc	0x00000040
     f24:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
     f28:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
     f2c:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
     f30:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
     f34:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
     f38:	e12fff1e 	bx	lr

00000f3c <kill>:
     f3c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
     f40:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
     f44:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
     f48:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
     f4c:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
     f50:	e3a00006 	mov	r0, #6
     f54:	ef000040 	svc	0x00000040
     f58:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
     f5c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
     f60:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
     f64:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
     f68:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
     f6c:	e12fff1e 	bx	lr

00000f70 <exec>:
     f70:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
     f74:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
     f78:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
     f7c:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
     f80:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
     f84:	e3a00007 	mov	r0, #7
     f88:	ef000040 	svc	0x00000040
     f8c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
     f90:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
     f94:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
     f98:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
     f9c:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
     fa0:	e12fff1e 	bx	lr

00000fa4 <open>:
     fa4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
     fa8:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
     fac:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
     fb0:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
     fb4:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
     fb8:	e3a0000f 	mov	r0, #15
     fbc:	ef000040 	svc	0x00000040
     fc0:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
     fc4:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
     fc8:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
     fcc:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
     fd0:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
     fd4:	e12fff1e 	bx	lr

00000fd8 <mknod>:
     fd8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
     fdc:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
     fe0:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
     fe4:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
     fe8:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
     fec:	e3a00011 	mov	r0, #17
     ff0:	ef000040 	svc	0x00000040
     ff4:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
     ff8:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
     ffc:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
    1000:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
    1004:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
    1008:	e12fff1e 	bx	lr

0000100c <unlink>:
    100c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    1010:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
    1014:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
    1018:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
    101c:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
    1020:	e3a00012 	mov	r0, #18
    1024:	ef000040 	svc	0x00000040
    1028:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    102c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    1030:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
    1034:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
    1038:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
    103c:	e12fff1e 	bx	lr

00001040 <fstat>:
    1040:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    1044:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
    1048:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
    104c:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
    1050:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
    1054:	e3a00008 	mov	r0, #8
    1058:	ef000040 	svc	0x00000040
    105c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    1060:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    1064:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
    1068:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
    106c:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
    1070:	e12fff1e 	bx	lr

00001074 <link>:
    1074:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    1078:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
    107c:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
    1080:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
    1084:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
    1088:	e3a00013 	mov	r0, #19
    108c:	ef000040 	svc	0x00000040
    1090:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    1094:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    1098:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
    109c:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
    10a0:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
    10a4:	e12fff1e 	bx	lr

000010a8 <mkdir>:
    10a8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    10ac:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
    10b0:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
    10b4:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
    10b8:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
    10bc:	e3a00014 	mov	r0, #20
    10c0:	ef000040 	svc	0x00000040
    10c4:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    10c8:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    10cc:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
    10d0:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
    10d4:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
    10d8:	e12fff1e 	bx	lr

000010dc <chdir>:
    10dc:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    10e0:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
    10e4:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
    10e8:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
    10ec:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
    10f0:	e3a00009 	mov	r0, #9
    10f4:	ef000040 	svc	0x00000040
    10f8:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    10fc:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    1100:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
    1104:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
    1108:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
    110c:	e12fff1e 	bx	lr

00001110 <dup>:
    1110:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    1114:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
    1118:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
    111c:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
    1120:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
    1124:	e3a0000a 	mov	r0, #10
    1128:	ef000040 	svc	0x00000040
    112c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    1130:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    1134:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
    1138:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
    113c:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
    1140:	e12fff1e 	bx	lr

00001144 <getpid>:
    1144:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    1148:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
    114c:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
    1150:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
    1154:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
    1158:	e3a0000b 	mov	r0, #11
    115c:	ef000040 	svc	0x00000040
    1160:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    1164:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    1168:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
    116c:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
    1170:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
    1174:	e12fff1e 	bx	lr

00001178 <sbrk>:
    1178:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    117c:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
    1180:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
    1184:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
    1188:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
    118c:	e3a0000c 	mov	r0, #12
    1190:	ef000040 	svc	0x00000040
    1194:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    1198:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    119c:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
    11a0:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
    11a4:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
    11a8:	e12fff1e 	bx	lr

000011ac <sleep>:
    11ac:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    11b0:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
    11b4:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
    11b8:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
    11bc:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
    11c0:	e3a0000d 	mov	r0, #13
    11c4:	ef000040 	svc	0x00000040
    11c8:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    11cc:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    11d0:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
    11d4:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
    11d8:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
    11dc:	e12fff1e 	bx	lr

000011e0 <uptime>:
    11e0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    11e4:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
    11e8:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
    11ec:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
    11f0:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
    11f4:	e3a0000e 	mov	r0, #14
    11f8:	ef000040 	svc	0x00000040
    11fc:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    1200:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    1204:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
    1208:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
    120c:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
    1210:	e12fff1e 	bx	lr

00001214 <memfree>:
    1214:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    1218:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
    121c:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
    1220:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
    1224:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
    1228:	e3a00016 	mov	r0, #22
    122c:	ef000040 	svc	0x00000040
    1230:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    1234:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    1238:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
    123c:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
    1240:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
    1244:	e12fff1e 	bx	lr

00001248 <trace>:
    1248:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    124c:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
    1250:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
    1254:	e52d1004 	push	{r1}		; (str r1, [sp, #-4]!)
    1258:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
    125c:	e3a00017 	mov	r0, #23
    1260:	ef000040 	svc	0x00000040
    1264:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    1268:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    126c:	e49d2004 	pop	{r2}		; (ldr r2, [sp], #4)
    1270:	e49d3004 	pop	{r3}		; (ldr r3, [sp], #4)
    1274:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
    1278:	e12fff1e 	bx	lr

0000127c <printint>:
    127c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    1280:	e28db020 	add	fp, sp, #32
    1284:	e013afa1 	ands	sl, r3, r1, lsr #31
    1288:	e24b4034 	sub	r4, fp, #52	; 0x34
    128c:	e3019780 	movw	r9, #6016	; 0x1780
    1290:	1261e000 	rsbne	lr, r1, #0
    1294:	e3409000 	movt	r9, #0
    1298:	e1a05000 	mov	r5, r0
    129c:	13a0a001 	movne	sl, #1
    12a0:	01a0e001 	moveq	lr, r1
    12a4:	e3a08000 	mov	r8, #0
    12a8:	e1a07004 	mov	r7, r4
    12ac:	e3a06001 	mov	r6, #1
    12b0:	e24dd01c 	sub	sp, sp, #28
    12b4:	e3a0c000 	mov	ip, #0
    12b8:	e3a0301f 	mov	r3, #31
    12bc:	e1a0100c 	mov	r1, ip
    12c0:	e1a0033e 	lsr	r0, lr, r3
    12c4:	e2000001 	and	r0, r0, #1
    12c8:	e1801081 	orr	r1, r0, r1, lsl #1
    12cc:	e1520001 	cmp	r2, r1
    12d0:	90411002 	subls	r1, r1, r2
    12d4:	918cc316 	orrls	ip, ip, r6, lsl r3
    12d8:	e2533001 	subs	r3, r3, #1
    12dc:	2afffff7 	bcs	12c0 <printint+0x44>
    12e0:	e061e29c 	mls	r1, ip, r2, lr
    12e4:	e35c0000 	cmp	ip, #0
    12e8:	e1a0e00c 	mov	lr, ip
    12ec:	e2883001 	add	r3, r8, #1
    12f0:	e7d91001 	ldrb	r1, [r9, r1]
    12f4:	e4c71001 	strb	r1, [r7], #1
    12f8:	11a08003 	movne	r8, r3
    12fc:	1affffec 	bne	12b4 <printint+0x38>
    1300:	e35a0000 	cmp	sl, #0
    1304:	0a000004 	beq	131c <printint+0xa0>
    1308:	e24b2024 	sub	r2, fp, #36	; 0x24
    130c:	e3a0102d 	mov	r1, #45	; 0x2d
    1310:	e0822003 	add	r2, r2, r3
    1314:	e2883002 	add	r3, r8, #2
    1318:	e5421010 	strb	r1, [r2, #-16]
    131c:	e0846003 	add	r6, r4, r3
    1320:	e5763001 	ldrb	r3, [r6, #-1]!
    1324:	e3a02001 	mov	r2, #1
    1328:	e24b1035 	sub	r1, fp, #53	; 0x35
    132c:	e1a00005 	mov	r0, r5
    1330:	e54b3035 	strb	r3, [fp, #-53]	; 0xffffffcb
    1334:	ebfffee6 	bl	ed4 <write>
    1338:	e1540006 	cmp	r4, r6
    133c:	1afffff7 	bne	1320 <printint+0xa4>
    1340:	e24bd020 	sub	sp, fp, #32
    1344:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

00001348 <div>:
    1348:	e92d4810 	push	{r4, fp, lr}
    134c:	e3a02000 	mov	r2, #0
    1350:	e28db008 	add	fp, sp, #8
    1354:	e1a0e000 	mov	lr, r0
    1358:	e3a0301f 	mov	r3, #31
    135c:	e1a00002 	mov	r0, r2
    1360:	e3a04001 	mov	r4, #1
    1364:	e1a0c33e 	lsr	ip, lr, r3
    1368:	e20cc001 	and	ip, ip, #1
    136c:	e18c2082 	orr	r2, ip, r2, lsl #1
    1370:	e1520001 	cmp	r2, r1
    1374:	20422001 	subcs	r2, r2, r1
    1378:	21800314 	orrcs	r0, r0, r4, lsl r3
    137c:	e2533001 	subs	r3, r3, #1
    1380:	38bd8810 	popcc	{r4, fp, pc}
    1384:	eafffff6 	b	1364 <div+0x1c>

00001388 <printf>:
    1388:	e92d000e 	push	{r1, r2, r3}
    138c:	e92d49f0 	push	{r4, r5, r6, r7, r8, fp, lr}
    1390:	e28db018 	add	fp, sp, #24
    1394:	e24dd008 	sub	sp, sp, #8
    1398:	e59b5004 	ldr	r5, [fp, #4]
    139c:	e5d54000 	ldrb	r4, [r5]
    13a0:	e3540000 	cmp	r4, #0
    13a4:	0a00002b 	beq	1458 <printf+0xd0>
    13a8:	e1a07000 	mov	r7, r0
    13ac:	e28b8008 	add	r8, fp, #8
    13b0:	e3a06000 	mov	r6, #0
    13b4:	ea00000a 	b	13e4 <printf+0x5c>
    13b8:	e3540025 	cmp	r4, #37	; 0x25
    13bc:	01a06004 	moveq	r6, r4
    13c0:	0a000004 	beq	13d8 <printf+0x50>
    13c4:	e24b1018 	sub	r1, fp, #24
    13c8:	e3a02001 	mov	r2, #1
    13cc:	e1a00007 	mov	r0, r7
    13d0:	e5614006 	strb	r4, [r1, #-6]!
    13d4:	ebfffebe 	bl	ed4 <write>
    13d8:	e5f54001 	ldrb	r4, [r5, #1]!
    13dc:	e3540000 	cmp	r4, #0
    13e0:	0a00001c 	beq	1458 <printf+0xd0>
    13e4:	e3560000 	cmp	r6, #0
    13e8:	0afffff2 	beq	13b8 <printf+0x30>
    13ec:	e3560025 	cmp	r6, #37	; 0x25
    13f0:	1afffff8 	bne	13d8 <printf+0x50>
    13f4:	e3540064 	cmp	r4, #100	; 0x64
    13f8:	0a000030 	beq	14c0 <printf+0x138>
    13fc:	e20430f7 	and	r3, r4, #247	; 0xf7
    1400:	e3530070 	cmp	r3, #112	; 0x70
    1404:	0a000017 	beq	1468 <printf+0xe0>
    1408:	e3540073 	cmp	r4, #115	; 0x73
    140c:	0a00001c 	beq	1484 <printf+0xfc>
    1410:	e3540063 	cmp	r4, #99	; 0x63
    1414:	0a000037 	beq	14f8 <printf+0x170>
    1418:	e3540025 	cmp	r4, #37	; 0x25
    141c:	0a00002e 	beq	14dc <printf+0x154>
    1420:	e3a02001 	mov	r2, #1
    1424:	e24b1019 	sub	r1, fp, #25
    1428:	e1a00007 	mov	r0, r7
    142c:	e54b6019 	strb	r6, [fp, #-25]	; 0xffffffe7
    1430:	ebfffea7 	bl	ed4 <write>
    1434:	e3a02001 	mov	r2, #1
    1438:	e24b101a 	sub	r1, fp, #26
    143c:	e1a00007 	mov	r0, r7
    1440:	e54b401a 	strb	r4, [fp, #-26]	; 0xffffffe6
    1444:	ebfffea2 	bl	ed4 <write>
    1448:	e5f54001 	ldrb	r4, [r5, #1]!
    144c:	e3a06000 	mov	r6, #0
    1450:	e3540000 	cmp	r4, #0
    1454:	1affffe2 	bne	13e4 <printf+0x5c>
    1458:	e24bd018 	sub	sp, fp, #24
    145c:	e8bd49f0 	pop	{r4, r5, r6, r7, r8, fp, lr}
    1460:	e28dd00c 	add	sp, sp, #12
    1464:	e12fff1e 	bx	lr
    1468:	e3a03000 	mov	r3, #0
    146c:	e3a02010 	mov	r2, #16
    1470:	e4981004 	ldr	r1, [r8], #4
    1474:	e1a00007 	mov	r0, r7
    1478:	ebffff7f 	bl	127c <printint>
    147c:	e3a06000 	mov	r6, #0
    1480:	eaffffd4 	b	13d8 <printf+0x50>
    1484:	e4984004 	ldr	r4, [r8], #4
    1488:	e3540000 	cmp	r4, #0
    148c:	0a000021 	beq	1518 <printf+0x190>
    1490:	e5d46000 	ldrb	r6, [r4]
    1494:	e3560000 	cmp	r6, #0
    1498:	0affffce 	beq	13d8 <printf+0x50>
    149c:	e3a02001 	mov	r2, #1
    14a0:	e24b101d 	sub	r1, fp, #29
    14a4:	e1a00007 	mov	r0, r7
    14a8:	e54b601d 	strb	r6, [fp, #-29]	; 0xffffffe3
    14ac:	ebfffe88 	bl	ed4 <write>
    14b0:	e5f46001 	ldrb	r6, [r4, #1]!
    14b4:	e3560000 	cmp	r6, #0
    14b8:	1afffff7 	bne	149c <printf+0x114>
    14bc:	eaffffc5 	b	13d8 <printf+0x50>
    14c0:	e3a03001 	mov	r3, #1
    14c4:	e3a0200a 	mov	r2, #10
    14c8:	e4981004 	ldr	r1, [r8], #4
    14cc:	e1a00007 	mov	r0, r7
    14d0:	ebffff69 	bl	127c <printint>
    14d4:	e3a06000 	mov	r6, #0
    14d8:	eaffffbe 	b	13d8 <printf+0x50>
    14dc:	e24b1018 	sub	r1, fp, #24
    14e0:	e3a02001 	mov	r2, #1
    14e4:	e1a00007 	mov	r0, r7
    14e8:	e5616003 	strb	r6, [r1, #-3]!
    14ec:	e3a06000 	mov	r6, #0
    14f0:	ebfffe77 	bl	ed4 <write>
    14f4:	eaffffb7 	b	13d8 <printf+0x50>
    14f8:	e4983004 	ldr	r3, [r8], #4
    14fc:	e24b1018 	sub	r1, fp, #24
    1500:	e3a02001 	mov	r2, #1
    1504:	e1a00007 	mov	r0, r7
    1508:	e3a06000 	mov	r6, #0
    150c:	e5613004 	strb	r3, [r1, #-4]!
    1510:	ebfffe6f 	bl	ed4 <write>
    1514:	eaffffaf 	b	13d8 <printf+0x50>
    1518:	e3014794 	movw	r4, #6036	; 0x1794
    151c:	e3a06028 	mov	r6, #40	; 0x28
    1520:	e3404000 	movt	r4, #0
    1524:	eaffffdc 	b	149c <printf+0x114>

00001528 <free>:
    1528:	e301c810 	movw	ip, #6160	; 0x1810
    152c:	e340c000 	movt	ip, #0
    1530:	e92d4810 	push	{r4, fp, lr}
    1534:	e2401008 	sub	r1, r0, #8
    1538:	e59c3000 	ldr	r3, [ip]
    153c:	e28db008 	add	fp, sp, #8
    1540:	e1530001 	cmp	r3, r1
    1544:	e5932000 	ldr	r2, [r3]
    1548:	2a000017 	bcs	15ac <free+0x84>
    154c:	e1510002 	cmp	r1, r2
    1550:	3a000001 	bcc	155c <free+0x34>
    1554:	e1530002 	cmp	r3, r2
    1558:	3a000017 	bcc	15bc <free+0x94>
    155c:	e510e004 	ldr	lr, [r0, #-4]
    1560:	e58c3000 	str	r3, [ip]
    1564:	e081418e 	add	r4, r1, lr, lsl #3
    1568:	e1520004 	cmp	r2, r4
    156c:	05922004 	ldreq	r2, [r2, #4]
    1570:	0082e00e 	addeq	lr, r2, lr
    1574:	0500e004 	streq	lr, [r0, #-4]
    1578:	05932000 	ldreq	r2, [r3]
    157c:	05922000 	ldreq	r2, [r2]
    1580:	e5002008 	str	r2, [r0, #-8]
    1584:	e5932004 	ldr	r2, [r3, #4]
    1588:	e083e182 	add	lr, r3, r2, lsl #3
    158c:	e151000e 	cmp	r1, lr
    1590:	15831000 	strne	r1, [r3]
    1594:	05101004 	ldreq	r1, [r0, #-4]
    1598:	00812002 	addeq	r2, r1, r2
    159c:	05832004 	streq	r2, [r3, #4]
    15a0:	05102008 	ldreq	r2, [r0, #-8]
    15a4:	05832000 	streq	r2, [r3]
    15a8:	e8bd8810 	pop	{r4, fp, pc}
    15ac:	e1530002 	cmp	r3, r2
    15b0:	3a000001 	bcc	15bc <free+0x94>
    15b4:	e1510002 	cmp	r1, r2
    15b8:	3affffe7 	bcc	155c <free+0x34>
    15bc:	e1a03002 	mov	r3, r2
    15c0:	eaffffde 	b	1540 <free+0x18>

000015c4 <malloc>:
    15c4:	e92d48f0 	push	{r4, r5, r6, r7, fp, lr}
    15c8:	e3017810 	movw	r7, #6160	; 0x1810
    15cc:	e3407000 	movt	r7, #0
    15d0:	e2804007 	add	r4, r0, #7
    15d4:	e28db014 	add	fp, sp, #20
    15d8:	e5973000 	ldr	r3, [r7]
    15dc:	e1a041a4 	lsr	r4, r4, #3
    15e0:	e2844001 	add	r4, r4, #1
    15e4:	e3530000 	cmp	r3, #0
    15e8:	0a000027 	beq	168c <malloc+0xc8>
    15ec:	e5930000 	ldr	r0, [r3]
    15f0:	e5902004 	ldr	r2, [r0, #4]
    15f4:	e1540002 	cmp	r4, r2
    15f8:	9a000019 	bls	1664 <malloc+0xa0>
    15fc:	e3540a01 	cmp	r4, #4096	; 0x1000
    1600:	21a05004 	movcs	r5, r4
    1604:	33a05a01 	movcc	r5, #4096	; 0x1000
    1608:	e1a06185 	lsl	r6, r5, #3
    160c:	ea000003 	b	1620 <malloc+0x5c>
    1610:	e5930000 	ldr	r0, [r3]
    1614:	e5902004 	ldr	r2, [r0, #4]
    1618:	e1520004 	cmp	r2, r4
    161c:	2a000010 	bcs	1664 <malloc+0xa0>
    1620:	e5972000 	ldr	r2, [r7]
    1624:	e1a03000 	mov	r3, r0
    1628:	e1520000 	cmp	r2, r0
    162c:	1afffff7 	bne	1610 <malloc+0x4c>
    1630:	e1a00006 	mov	r0, r6
    1634:	ebfffecf 	bl	1178 <sbrk>
    1638:	e1a03000 	mov	r3, r0
    163c:	e3730001 	cmn	r3, #1
    1640:	e2800008 	add	r0, r0, #8
    1644:	0a000004 	beq	165c <malloc+0x98>
    1648:	e5835004 	str	r5, [r3, #4]
    164c:	ebffffb5 	bl	1528 <free>
    1650:	e5973000 	ldr	r3, [r7]
    1654:	e3530000 	cmp	r3, #0
    1658:	1affffec 	bne	1610 <malloc+0x4c>
    165c:	e3a00000 	mov	r0, #0
    1660:	e8bd88f0 	pop	{r4, r5, r6, r7, fp, pc}
    1664:	e1540002 	cmp	r4, r2
    1668:	e5873000 	str	r3, [r7]
    166c:	10422004 	subne	r2, r2, r4
    1670:	15802004 	strne	r2, [r0, #4]
    1674:	05902000 	ldreq	r2, [r0]
    1678:	10800182 	addne	r0, r0, r2, lsl #3
    167c:	e2800008 	add	r0, r0, #8
    1680:	15004004 	strne	r4, [r0, #-4]
    1684:	05832000 	streq	r2, [r3]
    1688:	e8bd88f0 	pop	{r4, r5, r6, r7, fp, pc}
    168c:	e2870004 	add	r0, r7, #4
    1690:	e5873008 	str	r3, [r7, #8]
    1694:	e5870000 	str	r0, [r7]
    1698:	e5870004 	str	r0, [r7, #4]
    169c:	eaffffd6 	b	15fc <malloc+0x38>

.class Lha/b$b;
.super Ljava/lang/Object;
.source "SimpleFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lha/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/StringBuilder;

.field private b:Ljava/util/Calendar;

.field private c:J

.field private d:J

.field private e:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lha/b$b;->a:Ljava/lang/StringBuilder;

    .line 3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lha/b$b;->b:Ljava/util/Calendar;

    return-void
.end method

.method synthetic constructor <init>(Lha/b$a;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lha/b$b;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    const/16 v1, 0x30

    .line 3
    .line 4
    const/16 v2, 0xa

    .line 5
    .line 6
    if-eq p3, v0, :cond_3

    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    if-eq p3, v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    if-ge p2, v2, :cond_1

    .line 16
    .line 17
    const-string p3, "00"

    .line 18
    .line 19
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/16 p3, 0x64

    .line 24
    .line 25
    if-ge p2, p3, :cond_2

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    :cond_2
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_3
    if-ge p2, v2, :cond_4

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    :cond_4
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    :goto_1
    return-object p1
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
.end method

.method private b(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lha/b$b;->a:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lha/b$b;->b:Ljava/util/Calendar;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lha/b$b;->a:Ljava/lang/StringBuilder;

    .line 13
    .line 14
    iget-object p2, p0, Lha/b$b;->b:Ljava/util/Calendar;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const/16 p2, 0x2d

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lha/b$b;->a:Ljava/lang/StringBuilder;

    .line 30
    .line 31
    iget-object v1, p0, Lha/b$b;->b:Ljava/util/Calendar;

    .line 32
    .line 33
    const/4 v2, 0x2

    .line 34
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    add-int/2addr v1, v0

    .line 39
    invoke-direct {p0, p1, v1, v2}, Lha/b$b;->a(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lha/b$b;->a:Ljava/lang/StringBuilder;

    .line 47
    .line 48
    iget-object p2, p0, Lha/b$b;->b:Ljava/util/Calendar;

    .line 49
    .line 50
    const/4 v0, 0x5

    .line 51
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    invoke-direct {p0, p1, p2, v2}, Lha/b$b;->a(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const/16 p2, 0x20

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lha/b$b;->a:Ljava/lang/StringBuilder;

    .line 65
    .line 66
    iget-object p2, p0, Lha/b$b;->b:Ljava/util/Calendar;

    .line 67
    .line 68
    const/16 v0, 0xb

    .line 69
    .line 70
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    invoke-direct {p0, p1, p2, v2}, Lha/b$b;->a(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const/16 p2, 0x3a

    .line 79
    .line 80
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lha/b$b;->a:Ljava/lang/StringBuilder;

    .line 84
    .line 85
    iget-object v0, p0, Lha/b$b;->b:Ljava/util/Calendar;

    .line 86
    .line 87
    const/16 v1, 0xc

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    invoke-direct {p0, p1, v0, v2}, Lha/b$b;->a(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lha/b$b;->a:Ljava/lang/StringBuilder;

    .line 101
    .line 102
    iget-object p2, p0, Lha/b$b;->b:Ljava/util/Calendar;

    .line 103
    .line 104
    const/16 v0, 0xd

    .line 105
    .line 106
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    invoke-direct {p0, p1, p2, v2}, Lha/b$b;->a(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    const/16 p2, 0x2c

    .line 115
    .line 116
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lha/b$b;->a:Ljava/lang/StringBuilder;

    .line 120
    .line 121
    iget-object p2, p0, Lha/b$b;->b:Ljava/util/Calendar;

    .line 122
    .line 123
    const/16 v0, 0xe

    .line 124
    .line 125
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    const/4 v0, 0x3

    .line 130
    invoke-direct {p0, p1, p2, v0}, Lha/b$b;->a(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    return-void
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
.end method


# virtual methods
.method public c(Ljava/lang/StringBuilder;J)V
    .locals 9

    .line 1
    iget-wide v0, p0, Lha/b$b;->c:J

    .line 2
    .line 3
    cmp-long v0, p2, v0

    .line 4
    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    iget-wide v0, p0, Lha/b$b;->d:J

    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    cmp-long v2, v0, v2

    .line 12
    .line 13
    const-wide/16 v3, 0x3e8

    .line 14
    .line 15
    const-wide/32 v5, 0xea60

    .line 16
    .line 17
    .line 18
    if-eqz v2, :cond_3

    .line 19
    .line 20
    cmp-long v2, p2, v0

    .line 21
    .line 22
    if-ltz v2, :cond_3

    .line 23
    .line 24
    add-long v7, v0, v5

    .line 25
    .line 26
    cmp-long v2, p2, v7

    .line 27
    .line 28
    if-ltz v2, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    iget-wide v5, p0, Lha/b$b;->e:J

    .line 32
    .line 33
    cmp-long v2, p2, v5

    .line 34
    .line 35
    const/4 v7, 0x3

    .line 36
    if-ltz v2, :cond_2

    .line 37
    .line 38
    add-long/2addr v3, v5

    .line 39
    cmp-long v2, p2, v3

    .line 40
    .line 41
    if-ltz v2, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    sub-long v0, p2, v5

    .line 45
    .line 46
    long-to-int v0, v0

    .line 47
    iget-object v1, p0, Lha/b$b;->a:Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    sub-int/2addr v2, v7

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lha/b$b;->a:Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {p0, v1, v0, v7}, Lha/b$b;->a(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    :goto_0
    sub-long v0, p2, v0

    .line 64
    .line 65
    long-to-int v0, v0

    .line 66
    div-int/lit16 v1, v0, 0x3e8

    .line 67
    .line 68
    mul-int/lit16 v2, v1, 0x3e8

    .line 69
    .line 70
    sub-int/2addr v0, v2

    .line 71
    iget-object v3, p0, Lha/b$b;->a:Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    add-int/lit8 v4, v4, -0x6

    .line 78
    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 80
    .line 81
    .line 82
    iget-object v3, p0, Lha/b$b;->a:Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const/4 v4, 0x2

    .line 85
    invoke-direct {p0, v3, v1, v4}, Lha/b$b;->a(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    const/16 v3, 0x2c

    .line 90
    .line 91
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget-object v1, p0, Lha/b$b;->a:Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {p0, v1, v0, v7}, Lha/b$b;->a(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-wide v0, p0, Lha/b$b;->d:J

    .line 100
    .line 101
    int-to-long v2, v2

    .line 102
    add-long/2addr v0, v2

    .line 103
    iput-wide v0, p0, Lha/b$b;->e:J

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_3
    :goto_1
    invoke-direct {p0, p2, p3}, Lha/b$b;->b(J)V

    .line 107
    .line 108
    .line 109
    div-long v0, p2, v5

    .line 110
    .line 111
    mul-long/2addr v0, v5

    .line 112
    iput-wide v0, p0, Lha/b$b;->d:J

    .line 113
    .line 114
    div-long v0, p2, v3

    .line 115
    .line 116
    mul-long/2addr v0, v3

    .line 117
    iput-wide v0, p0, Lha/b$b;->e:J

    .line 118
    .line 119
    :goto_2
    iput-wide p2, p0, Lha/b$b;->c:J

    .line 120
    .line 121
    :cond_4
    iget-object p2, p0, Lha/b$b;->a:Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    return-void
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
.end method

.class public Lcom/android/calendar/homepage/y0;
.super Ljava/lang/Object;
.source "MonthAnimationController.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/android/calendar/homepage/YearFrameLayout;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/miui/calendar/view/MonthMotionContainer;Lcom/android/calendar/homepage/YearFrameLayout;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/calendar/homepage/y0;->d:Landroid/view/View;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/miui/calendar/view/MonthMotionContainer;->getMonthContainer()Lcom/miui/calendar/view/MonthPanelContainer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/android/calendar/homepage/y0;->a:Landroid/view/View;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/miui/calendar/view/MonthMotionContainer;->getListContainer()Lcom/miui/calendar/view/VerticalMotionFrameLayout;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/android/calendar/homepage/y0;->c:Landroid/view/View;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/android/calendar/homepage/y0;->b:Lcom/android/calendar/homepage/YearFrameLayout;

    .line 19
    .line 20
    new-instance p1, Landroid/os/Handler;

    .line 21
    .line 22
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/calendar/homepage/y0;->e:Landroid/os/Handler;

    .line 26
    .line 27
    return-void
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method public static synthetic a(Lcom/android/calendar/homepage/y0;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/y0;->c(Landroid/content/Context;)V

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/y0;->e:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/android/calendar/homepage/x0;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/android/calendar/homepage/x0;-><init>(Lcom/android/calendar/homepage/y0;Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v2, 0xc8

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    .line 12
    .line 13
    return-void
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private synthetic c(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/miui/calendar/util/DeviceUtils;->u(Landroid/content/Context;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/android/calendar/homepage/y0;->a:Landroid/view/View;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sub-int/2addr p1, v0

    .line 12
    int-to-float p1, p1

    .line 13
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, v1, v1, p1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 17
    .line 18
    .line 19
    const-wide/16 v1, 0x12c

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 22
    .line 23
    .line 24
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    .line 25
    .line 26
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 27
    .line 28
    invoke-direct {p1, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/calendar/homepage/y0;->c:Landroid/view/View;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/android/calendar/homepage/y0;->c:Landroid/view/View;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 43
    .line 44
    .line 45
    return-void
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
.end method


# virtual methods
.method public d(Landroid/content/Context;IZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/y0;->b:Lcom/android/calendar/homepage/YearFrameLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/miui/calendar/util/DeviceUtils;->L()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/16 v2, 0x8

    .line 12
    .line 13
    const/4 v3, 0x4

    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    invoke-static {p1}, Lcom/miui/calendar/util/x0;->r0(Landroid/content/Context;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    if-ltz p2, :cond_2

    .line 23
    .line 24
    const/16 v0, 0xc

    .line 25
    .line 26
    if-ge p2, v0, :cond_2

    .line 27
    .line 28
    if-nez p3, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    rem-int/lit8 p3, p2, 0x3

    .line 32
    .line 33
    div-int/lit8 p2, p2, 0x3

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/calendar/homepage/y0;->b:Lcom/android/calendar/homepage/YearFrameLayout;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    int-to-float v0, v0

    .line 42
    const/high16 v4, 0x40400000    # 3.0f

    .line 43
    .line 44
    div-float/2addr v0, v4

    .line 45
    const/high16 v4, 0x41a00000    # 20.0f

    .line 46
    .line 47
    add-float/2addr v0, v4

    .line 48
    int-to-float p3, p3

    .line 49
    mul-float/2addr v0, p3

    .line 50
    add-float/2addr v0, v4

    .line 51
    invoke-static {p1, v0}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 52
    .line 53
    .line 54
    move-result p3

    .line 55
    const/high16 v0, 0x42480000    # 50.0f

    .line 56
    .line 57
    iget-object v4, p0, Lcom/android/calendar/homepage/y0;->b:Lcom/android/calendar/homepage/YearFrameLayout;

    .line 58
    .line 59
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    int-to-float v4, v4

    .line 64
    const/high16 v5, 0x40800000    # 4.0f

    .line 65
    .line 66
    div-float/2addr v4, v5

    .line 67
    const/high16 v5, 0x42200000    # 40.0f

    .line 68
    .line 69
    sub-float/2addr v4, v5

    .line 70
    int-to-float p2, p2

    .line 71
    mul-float/2addr v4, p2

    .line 72
    add-float/2addr v4, v0

    .line 73
    invoke-static {p1, v4}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .line 78
    .line 79
    const v4, 0x3e99999a    # 0.3f

    .line 80
    .line 81
    .line 82
    const/high16 v5, 0x3f800000    # 1.0f

    .line 83
    .line 84
    invoke-direct {v0, v4, v5, v4, v5}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 85
    .line 86
    .line 87
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    .line 88
    .line 89
    const/4 v5, 0x0

    .line 90
    invoke-direct {v4, p3, v5, p2, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 91
    .line 92
    .line 93
    new-instance p2, Landroid/view/animation/AnimationSet;

    .line 94
    .line 95
    const/4 p3, 0x1

    .line 96
    invoke-direct {p2, p3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 103
    .line 104
    .line 105
    const-wide/16 v4, 0x190

    .line 106
    .line 107
    invoke-virtual {p2, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 108
    .line 109
    .line 110
    new-instance p3, Landroid/view/animation/DecelerateInterpolator;

    .line 111
    .line 112
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 113
    .line 114
    invoke-direct {p3, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2, p3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 118
    .line 119
    .line 120
    iget-object p3, p0, Lcom/android/calendar/homepage/y0;->b:Lcom/android/calendar/homepage/YearFrameLayout;

    .line 121
    .line 122
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 123
    .line 124
    .line 125
    iget-object p3, p0, Lcom/android/calendar/homepage/y0;->d:Landroid/view/View;

    .line 126
    .line 127
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 128
    .line 129
    .line 130
    iget-object p3, p0, Lcom/android/calendar/homepage/y0;->c:Landroid/view/View;

    .line 131
    .line 132
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    iget-object p3, p0, Lcom/android/calendar/homepage/y0;->a:Landroid/view/View;

    .line 136
    .line 137
    invoke-virtual {p3, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 138
    .line 139
    .line 140
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/y0;->b(Landroid/content/Context;)V

    .line 141
    .line 142
    .line 143
    invoke-static {p1}, Lcom/android/calendar/homepage/t0;->p(Landroid/content/Context;)Lcom/android/calendar/homepage/t0;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p1, v3}, Lcom/android/calendar/homepage/t0;->K(I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, v3}, Lcom/android/calendar/homepage/t0;->N(I)V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/android/calendar/homepage/y0;->b:Lcom/android/calendar/homepage/YearFrameLayout;

    .line 155
    .line 156
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 157
    .line 158
    .line 159
    iget-object p2, p0, Lcom/android/calendar/homepage/y0;->d:Landroid/view/View;

    .line 160
    .line 161
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 162
    .line 163
    .line 164
    invoke-static {p1}, Lcom/android/calendar/homepage/t0;->p(Landroid/content/Context;)Lcom/android/calendar/homepage/t0;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {p1, v3}, Lcom/android/calendar/homepage/t0;->K(I)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v3}, Lcom/android/calendar/homepage/t0;->N(I)V

    .line 172
    .line 173
    .line 174
    return-void
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
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
.end method

.method public e(Landroid/content/Context;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/y0;->b:Lcom/android/calendar/homepage/YearFrameLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/miui/calendar/util/x0;->r0(Landroid/content/Context;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    const/4 v4, 0x5

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    invoke-static {}, Lcom/miui/calendar/util/DeviceUtils;->L()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    rem-int/lit8 v0, p2, 0x3

    .line 25
    .line 26
    div-int/lit8 p2, p2, 0x3

    .line 27
    .line 28
    iget-object v5, p0, Lcom/android/calendar/homepage/y0;->a:Landroid/view/View;

    .line 29
    .line 30
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    add-int/lit16 v5, v5, 0x96

    .line 35
    .line 36
    mul-int/2addr v5, v0

    .line 37
    rsub-int v0, v5, -0x96

    .line 38
    .line 39
    int-to-float v0, v0

    .line 40
    invoke-static {p1, v0}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iget-object v5, p0, Lcom/android/calendar/homepage/y0;->a:Landroid/view/View;

    .line 45
    .line 46
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    add-int/lit16 v5, v5, 0x2ee

    .line 51
    .line 52
    mul-int/2addr v5, p2

    .line 53
    rsub-int p2, v5, -0x3e8

    .line 54
    .line 55
    int-to-float p2, p2

    .line 56
    invoke-static {p1, p2}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    .line 61
    .line 62
    const v6, 0x4061eb85    # 3.53f

    .line 63
    .line 64
    .line 65
    const/high16 v7, 0x3f800000    # 1.0f

    .line 66
    .line 67
    invoke-direct {v5, v6, v7, v6, v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 68
    .line 69
    .line 70
    new-instance v6, Landroid/view/animation/TranslateAnimation;

    .line 71
    .line 72
    const/4 v7, 0x0

    .line 73
    invoke-direct {v6, v0, v7, p2, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 74
    .line 75
    .line 76
    new-instance p2, Landroid/view/animation/AnimationSet;

    .line 77
    .line 78
    invoke-direct {p2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 85
    .line 86
    .line 87
    const-wide/16 v5, 0x190

    .line 88
    .line 89
    invoke-virtual {p2, v5, v6}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 90
    .line 91
    .line 92
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 93
    .line 94
    const/high16 v5, 0x3fc00000    # 1.5f

    .line 95
    .line 96
    invoke-direct {v0, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/android/calendar/homepage/y0;->b:Lcom/android/calendar/homepage/YearFrameLayout;

    .line 103
    .line 104
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/android/calendar/homepage/y0;->d:Landroid/view/View;

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/android/calendar/homepage/y0;->b:Lcom/android/calendar/homepage/YearFrameLayout;

    .line 113
    .line 114
    invoke-static {}, Lcom/android/calendar/common/Utils;->V()Ljava/util/Calendar;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    invoke-virtual {v0, v1}, Lcom/android/calendar/homepage/YearFrameLayout;->e(I)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/android/calendar/homepage/y0;->b:Lcom/android/calendar/homepage/YearFrameLayout;

    .line 126
    .line 127
    invoke-virtual {v0, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 128
    .line 129
    .line 130
    invoke-static {p1}, Lcom/android/calendar/homepage/t0;->p(Landroid/content/Context;)Lcom/android/calendar/homepage/t0;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p1, v4}, Lcom/android/calendar/homepage/t0;->K(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v4}, Lcom/android/calendar/homepage/t0;->N(I)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/android/calendar/homepage/y0;->b:Lcom/android/calendar/homepage/YearFrameLayout;

    .line 142
    .line 143
    invoke-static {}, Lcom/android/calendar/common/Utils;->V()Ljava/util/Calendar;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    invoke-virtual {p2, v0}, Lcom/android/calendar/homepage/YearFrameLayout;->e(I)V

    .line 152
    .line 153
    .line 154
    iget-object p2, p0, Lcom/android/calendar/homepage/y0;->b:Lcom/android/calendar/homepage/YearFrameLayout;

    .line 155
    .line 156
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 157
    .line 158
    .line 159
    iget-object p2, p0, Lcom/android/calendar/homepage/y0;->d:Landroid/view/View;

    .line 160
    .line 161
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 162
    .line 163
    .line 164
    invoke-static {p1}, Lcom/android/calendar/homepage/t0;->p(Landroid/content/Context;)Lcom/android/calendar/homepage/t0;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {p1, v4}, Lcom/android/calendar/homepage/t0;->K(I)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v4}, Lcom/android/calendar/homepage/t0;->N(I)V

    .line 172
    .line 173
    .line 174
    return-void
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
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
.end method

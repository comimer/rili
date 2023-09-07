.class public Lkb/c;
.super Lkb/b;
.source "DefaultTrigger.java"


# static fields
.field private static n0:I


# instance fields
.field private U:Landroid/content/Context;

.field private V:Landroid/view/ViewGroup;

.field private W:Landroid/view/View;

.field private X:Landroid/view/View;

.field private Y:Landroid/widget/ProgressBar;

.field private Z:Landroid/widget/ProgressBar;

.field private a0:Landroid/widget/TextView;

.field private b0:Landroid/widget/TextView;

.field private c0:I

.field private d0:I

.field private e0:I

.field public f0:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public g0:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public h0:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i0:Lkb/b$j;

.field private j0:Lkb/b$k;

.field private k0:Lkb/a$b$b;

.field private l0:Lkb/a$d$a;

.field private m0:Lkb/a$c$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lkb/b;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iput v0, p0, Lkb/c;->c0:I

    .line 10
    .line 11
    iput v0, p0, Lkb/c;->d0:I

    .line 12
    .line 13
    iput v0, p0, Lkb/c;->e0:I

    .line 14
    .line 15
    new-instance v2, Lkb/c$a;

    .line 16
    .line 17
    invoke-direct {v2, p0}, Lkb/c$a;-><init>(Lkb/c;)V

    .line 18
    .line 19
    .line 20
    iput-object v2, p0, Lkb/c;->i0:Lkb/b$j;

    .line 21
    .line 22
    new-instance v2, Lkb/c$b;

    .line 23
    .line 24
    invoke-direct {v2, p0}, Lkb/c$b;-><init>(Lkb/c;)V

    .line 25
    .line 26
    .line 27
    iput-object v2, p0, Lkb/c;->j0:Lkb/b$k;

    .line 28
    .line 29
    new-instance v2, Lkb/c$c;

    .line 30
    .line 31
    invoke-direct {v2, p0}, Lkb/c$c;-><init>(Lkb/c;)V

    .line 32
    .line 33
    .line 34
    iput-object v2, p0, Lkb/c;->k0:Lkb/a$b$b;

    .line 35
    .line 36
    new-instance v2, Lkb/c$d;

    .line 37
    .line 38
    invoke-direct {v2, p0}, Lkb/c$d;-><init>(Lkb/c;)V

    .line 39
    .line 40
    .line 41
    iput-object v2, p0, Lkb/c;->l0:Lkb/a$d$a;

    .line 42
    .line 43
    new-instance v2, Lkb/c$e;

    .line 44
    .line 45
    invoke-direct {v2, p0}, Lkb/c$e;-><init>(Lkb/c;)V

    .line 46
    .line 47
    .line 48
    iput-object v2, p0, Lkb/c;->m0:Lkb/a$c$a;

    .line 49
    .line 50
    iput-object p1, p0, Lkb/c;->U:Landroid/content/Context;

    .line 51
    .line 52
    iget-object v2, p0, Lkb/c;->i0:Lkb/b$j;

    .line 53
    .line 54
    invoke-virtual {p0, v2}, Lkb/b;->P0(Lkb/b$j;)V

    .line 55
    .line 56
    .line 57
    iget-object v2, p0, Lkb/c;->j0:Lkb/b$k;

    .line 58
    .line 59
    invoke-virtual {p0, v2}, Lkb/b;->T0(Lkb/b$k;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    sget v2, Ljb/a;->d:I

    .line 67
    .line 68
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    sput p1, Lkb/c;->n0:I

    .line 73
    .line 74
    iget-object p1, p0, Lkb/c;->U:Landroid/content/Context;

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    sget v2, Ljb/a;->a:I

    .line 81
    .line 82
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    new-instance v2, Landroid/util/Pair;

    .line 87
    .line 88
    add-int/2addr p1, v0

    .line 89
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-direct {v2, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    iput-object v2, p0, Lkb/c;->f0:Landroid/util/Pair;

    .line 97
    .line 98
    iget-object p1, p0, Lkb/c;->U:Landroid/content/Context;

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    sget v2, Ljb/a;->c:I

    .line 105
    .line 106
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    new-instance v2, Landroid/util/Pair;

    .line 111
    .line 112
    add-int/2addr p1, v0

    .line 113
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-direct {v2, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    iput-object v2, p0, Lkb/c;->h0:Landroid/util/Pair;

    .line 121
    .line 122
    iget-object p1, p0, Lkb/c;->U:Landroid/content/Context;

    .line 123
    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    sget v0, Ljb/a;->b:I

    .line 129
    .line 130
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    new-instance v0, Landroid/util/Pair;

    .line 135
    .line 136
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    iput-object v0, p0, Lkb/c;->g0:Landroid/util/Pair;

    .line 148
    .line 149
    return-void
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

.method static synthetic V0(Lkb/c;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lkb/c;->Y:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method static synthetic W0(Lkb/c;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lkb/c;->W:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method static synthetic X0(Lkb/c;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lkb/c;->a0:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method static synthetic Y0(Lkb/c;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lkb/c;->b0:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method static synthetic Z0(Lkb/c;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lkb/c;->Z:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method static synthetic a1(Lkb/c;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lkb/c;->X:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method static synthetic b1(Lkb/c;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkb/c;->h1(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
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
.end method

.method static synthetic c1(Lkb/c;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lkb/c;->V:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method private d1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkb/b;->Y()Landroid/view/ViewGroup;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Ljb/b;->d:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lkb/c;->W:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {p0}, Lkb/b;->Y()Landroid/view/ViewGroup;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget v1, Ljb/b;->e:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/widget/TextView;

    .line 24
    .line 25
    iput-object v0, p0, Lkb/c;->a0:Landroid/widget/TextView;

    .line 26
    .line 27
    invoke-virtual {p0}, Lkb/b;->Y()Landroid/view/ViewGroup;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sget v1, Ljb/b;->b:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/widget/ProgressBar;

    .line 38
    .line 39
    iput-object v0, p0, Lkb/c;->Y:Landroid/widget/ProgressBar;

    .line 40
    .line 41
    return-void
    .line 42
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
.end method

.method private e1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkb/b;->T()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Ljb/b;->g:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/ViewGroup;

    .line 12
    .line 13
    iput-object v0, p0, Lkb/c;->V:Landroid/view/ViewGroup;

    .line 14
    .line 15
    invoke-virtual {p0}, Lkb/b;->T()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget v1, Ljb/b;->f:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lkb/c;->X:Landroid/view/View;

    .line 26
    .line 27
    invoke-virtual {p0}, Lkb/b;->T()Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sget v1, Ljb/b;->h:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/widget/TextView;

    .line 38
    .line 39
    iput-object v0, p0, Lkb/c;->b0:Landroid/widget/TextView;

    .line 40
    .line 41
    invoke-virtual {p0}, Lkb/b;->T()Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sget v1, Ljb/b;->c:I

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroid/widget/ProgressBar;

    .line 52
    .line 53
    iput-object v0, p0, Lkb/c;->Z:Landroid/widget/ProgressBar;

    .line 54
    .line 55
    return-void
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
.end method

.method private f1()V
    .locals 0

    return-void
.end method

.method private g1(Landroid/content/Context;[I[Ljava/lang/String;)V
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    :goto_0
    array-length v1, p2

    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    aget v2, p2, v0

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    aput-object v1, p3, v0

    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
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

.method private h1(Landroid/view/View;)V
    .locals 11

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Le9/a;

    .line 8
    .line 9
    const-string v2, "start"

    .line 10
    .line 11
    invoke-direct {v1, v2}, Le9/a;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    sget-object v2, Lmiuix/animation/property/h;->n:Lmiuix/animation/property/h;

    .line 15
    .line 16
    const-wide/16 v3, 0x0

    .line 17
    .line 18
    invoke-virtual {v1, v2, v3, v4}, Le9/a;->a(Ljava/lang/Object;D)Le9/a;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    sget-object v5, Lmiuix/animation/property/h;->b:Lmiuix/animation/property/h;

    .line 23
    .line 24
    const-wide v6, -0x3f99800000000000L    # -180.0

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v5, v6, v7}, Le9/a;->a(Ljava/lang/Object;D)Le9/a;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    new-instance v6, Le9/a;

    .line 34
    .line 35
    const-string v7, "show"

    .line 36
    .line 37
    invoke-direct {v6, v7}, Le9/a;-><init>(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 41
    .line 42
    invoke-virtual {v6, v2, v7, v8}, Le9/a;->a(Ljava/lang/Object;D)Le9/a;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    const-wide/high16 v9, 0x4039000000000000L    # 25.0

    .line 47
    .line 48
    invoke-virtual {v6, v5, v9, v10}, Le9/a;->a(Ljava/lang/Object;D)Le9/a;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    new-instance v9, Le9/a;

    .line 53
    .line 54
    const-string v10, "hide"

    .line 55
    .line 56
    invoke-direct {v9, v10}, Le9/a;-><init>(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v9, v2, v7, v8}, Le9/a;->a(Ljava/lang/Object;D)Le9/a;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v2, v5, v3, v4}, Le9/a;->a(Ljava/lang/Object;D)Le9/a;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    const/4 v3, 0x1

    .line 68
    new-array v4, v3, [Landroid/view/View;

    .line 69
    .line 70
    aput-object p1, v4, v0

    .line 71
    .line 72
    invoke-static {v4}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-interface {p1}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const-wide/16 v4, 0x1

    .line 81
    .line 82
    invoke-interface {p1, v4, v5}, Lmiuix/animation/f;->a(J)Lmiuix/animation/f;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    new-array v4, v3, [Ld9/a;

    .line 87
    .line 88
    new-instance v5, Ld9/a;

    .line 89
    .line 90
    invoke-direct {v5}, Ld9/a;-><init>()V

    .line 91
    .line 92
    .line 93
    const/4 v7, 0x3

    .line 94
    new-array v8, v7, [F

    .line 95
    .line 96
    fill-array-data v8, :array_0

    .line 97
    .line 98
    .line 99
    const/4 v9, 0x4

    .line 100
    invoke-static {v9, v8}, Lj9/c;->e(I[F)Lj9/c$a;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    invoke-virtual {v5, v8}, Ld9/a;->l(Lj9/c$a;)Ld9/a;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    aput-object v5, v4, v0

    .line 109
    .line 110
    invoke-interface {p1, v1, v6, v4}, Lmiuix/animation/f;->x(Ljava/lang/Object;Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    new-array v1, v3, [Ld9/a;

    .line 115
    .line 116
    new-instance v3, Ld9/a;

    .line 117
    .line 118
    invoke-direct {v3}, Ld9/a;-><init>()V

    .line 119
    .line 120
    .line 121
    new-array v4, v7, [F

    .line 122
    .line 123
    fill-array-data v4, :array_1

    .line 124
    .line 125
    .line 126
    invoke-static {v9, v4}, Lj9/c;->e(I[F)Lj9/c$a;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-virtual {v3, v4}, Ld9/a;->l(Lj9/c$a;)Ld9/a;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    aput-object v3, v1, v0

    .line 135
    .line 136
    invoke-interface {p1, v2, v1}, Lmiuix/animation/f;->K(Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 137
    .line 138
    .line 139
    :cond_0
    return-void

    .line 140
    nop

    .line 141
    :array_0
    .array-data 4
        0x42f00000    # 120.0f
        0x3f7d70a4    # 0.99f
        0x3dcccccd    # 0.1f
    .end array-data

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
    :array_1
    .array-data 4
        0x42200000    # 40.0f
        0x3f7d70a4    # 0.99f
        0x3dcccccd    # 0.1f
    .end array-data
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
.method public M0(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkb/b;->c0()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_6

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    move p2, p1

    .line 9
    :goto_0
    invoke-virtual {p0}, Lkb/a;->g()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    if-ge p2, p3, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lkb/a;->g()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    check-cast p3, Lkb/a$a;

    .line 28
    .line 29
    instance-of p4, p3, Lkb/a$b;

    .line 30
    .line 31
    if-eqz p4, :cond_0

    .line 32
    .line 33
    check-cast p3, Lkb/a$b;

    .line 34
    .line 35
    sget p4, Lkb/c;->n0:I

    .line 36
    .line 37
    iget-object p5, p0, Lkb/c;->W:Landroid/view/View;

    .line 38
    .line 39
    invoke-virtual {p5}, Landroid/view/View;->getTop()I

    .line 40
    .line 41
    .line 42
    move-result p5

    .line 43
    if-lt p4, p5, :cond_0

    .line 44
    .line 45
    iget-object p4, p0, Lkb/c;->Y:Landroid/widget/ProgressBar;

    .line 46
    .line 47
    iget p5, p3, Lkb/a$a;->a:I

    .line 48
    .line 49
    sub-int/2addr p5, p1

    .line 50
    invoke-virtual {p4, p5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 51
    .line 52
    .line 53
    iget-object p4, p0, Lkb/c;->W:Landroid/view/View;

    .line 54
    .line 55
    iget p5, p3, Lkb/a$a;->a:I

    .line 56
    .line 57
    sub-int/2addr p5, p1

    .line 58
    invoke-virtual {p4, p5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 59
    .line 60
    .line 61
    iget-object p4, p0, Lkb/c;->a0:Landroid/widget/TextView;

    .line 62
    .line 63
    iget p3, p3, Lkb/a$a;->a:I

    .line 64
    .line 65
    sub-int/2addr p3, p1

    .line 66
    invoke-virtual {p4, p3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 67
    .line 68
    .line 69
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    iget-object p1, p0, Lkb/c;->W:Landroid/view/View;

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-nez p1, :cond_6

    .line 79
    .line 80
    invoke-virtual {p0}, Lkb/b;->R()Lkb/a$a;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-eqz p1, :cond_6

    .line 85
    .line 86
    invoke-virtual {p0}, Lkb/b;->R()Lkb/a$a;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    instance-of p1, p1, Lkb/a$b;

    .line 91
    .line 92
    if-eqz p1, :cond_6

    .line 93
    .line 94
    iget p1, p0, Lkb/c;->c0:I

    .line 95
    .line 96
    if-gtz p1, :cond_2

    .line 97
    .line 98
    iget-object p1, p0, Lkb/c;->W:Landroid/view/View;

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    iput p1, p0, Lkb/c;->c0:I

    .line 105
    .line 106
    :cond_2
    iget p1, p0, Lkb/c;->d0:I

    .line 107
    .line 108
    if-lez p1, :cond_3

    .line 109
    .line 110
    iget p1, p0, Lkb/c;->e0:I

    .line 111
    .line 112
    if-gtz p1, :cond_4

    .line 113
    .line 114
    :cond_3
    iget-object p1, p0, Lkb/c;->a0:Landroid/widget/TextView;

    .line 115
    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    iput p1, p0, Lkb/c;->d0:I

    .line 121
    .line 122
    iget-object p1, p0, Lkb/c;->a0:Landroid/widget/TextView;

    .line 123
    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    iput p1, p0, Lkb/c;->e0:I

    .line 129
    .line 130
    :cond_4
    iget-object p1, p0, Lkb/c;->Y:Landroid/widget/ProgressBar;

    .line 131
    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    const/16 p2, 0x8

    .line 137
    .line 138
    if-eq p1, p2, :cond_5

    .line 139
    .line 140
    iget-object p1, p0, Lkb/c;->Y:Landroid/widget/ProgressBar;

    .line 141
    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    const/4 p2, 0x4

    .line 147
    if-ne p1, p2, :cond_6

    .line 148
    .line 149
    :cond_5
    invoke-virtual {p0}, Lkb/b;->S()Lkb/d;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    iget-object p2, p0, Lkb/b;->R:Lkb/b$f;

    .line 154
    .line 155
    if-eq p1, p2, :cond_6

    .line 156
    .line 157
    invoke-virtual {p0}, Lkb/b;->Y()Landroid/view/ViewGroup;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    invoke-virtual {p0}, Lkb/b;->R()Lkb/a$a;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    iget p2, p2, Lkb/a$a;->b:I

    .line 170
    .line 171
    if-le p1, p2, :cond_6

    .line 172
    .line 173
    iget-object p1, p0, Lkb/c;->W:Landroid/view/View;

    .line 174
    .line 175
    iget p2, p0, Lkb/c;->c0:I

    .line 176
    .line 177
    invoke-virtual {p0}, Lkb/b;->Y()Landroid/view/ViewGroup;

    .line 178
    .line 179
    .line 180
    move-result-object p3

    .line 181
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 182
    .line 183
    .line 184
    move-result p3

    .line 185
    invoke-virtual {p0}, Lkb/b;->R()Lkb/a$a;

    .line 186
    .line 187
    .line 188
    move-result-object p4

    .line 189
    iget p4, p4, Lkb/a$a;->b:I

    .line 190
    .line 191
    sub-int/2addr p3, p4

    .line 192
    add-int/2addr p2, p3

    .line 193
    invoke-virtual {p1, p2}, Landroid/view/View;->setBottom(I)V

    .line 194
    .line 195
    .line 196
    :cond_6
    invoke-virtual {p0}, Lkb/b;->e0()Z

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    if-eqz p1, :cond_7

    .line 201
    .line 202
    invoke-virtual {p0}, Lkb/b;->X()Landroid/view/ViewGroup;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    if-nez p1, :cond_7

    .line 211
    .line 212
    invoke-virtual {p0}, Lkb/b;->X()Landroid/view/ViewGroup;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    iget p2, p0, Lkb/b;->A:I

    .line 217
    .line 218
    invoke-virtual {p0}, Lkb/b;->X()Landroid/view/ViewGroup;

    .line 219
    .line 220
    .line 221
    move-result-object p3

    .line 222
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    .line 223
    .line 224
    .line 225
    move-result p3

    .line 226
    sub-int/2addr p2, p3

    .line 227
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 228
    .line 229
    .line 230
    :cond_7
    return-void
.end method

.method public N0(Lmiuix/springback/view/SpringBackLayout;III)V
    .locals 6

    const/4 p1, 0x0

    if-gez p4, :cond_0

    .line 1
    invoke-virtual {p0}, Lkb/b;->d0()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lkb/b;->R()Lkb/a$a;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0}, Lkb/b;->R()Lkb/a$a;

    move-result-object p2

    instance-of p2, p2, Lkb/a$c;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0}, Lkb/b;->T()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {p0}, Lkb/a;->i()Lkb/a$c;

    move-result-object p4

    iget p4, p4, Lkb/a$a;->b:I

    sub-int/2addr p2, p4

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 4
    iget-object p4, p0, Lkb/c;->V:Landroid/view/ViewGroup;

    int-to-float p2, p2

    invoke-virtual {p4, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lkb/b;->c0()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Lkb/b;->R()Lkb/a$a;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Lkb/b;->R()Lkb/a$a;

    move-result-object p2

    instance-of p2, p2, Lkb/a$b;

    if-eqz p2, :cond_8

    .line 6
    invoke-virtual {p0}, Lkb/b;->R()Lkb/a$a;

    move-result-object p2

    check-cast p2, Lkb/a$b;

    .line 7
    iget-object p4, p0, Lkb/c;->W:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p4

    if-nez p4, :cond_8

    .line 8
    iget-object p4, p0, Lkb/c;->W:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result p4

    iget-object v0, p0, Lkb/c;->W:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr p4, v0

    iput p4, p0, Lkb/c;->c0:I

    .line 9
    iget-object p4, p0, Lkb/c;->a0:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result p4

    iput p4, p0, Lkb/c;->d0:I

    .line 10
    iget-object p4, p0, Lkb/c;->a0:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/view/View;->getBottom()I

    move-result p4

    iput p4, p0, Lkb/c;->e0:I

    .line 11
    iget p4, p2, Lkb/a$a;->b:I

    .line 12
    invoke-virtual {p0}, Lkb/b;->Y()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    int-to-float p4, p4

    div-float/2addr v0, p4

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 13
    invoke-virtual {p0}, Lkb/b;->Y()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v4, p4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    move v3, v2

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p0}, Lkb/b;->Y()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v4

    div-float/2addr v3, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 15
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 16
    invoke-virtual {p0}, Lkb/b;->Y()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v5, v4

    if-gez v4, :cond_2

    move p4, v2

    goto :goto_1

    .line 17
    :cond_2
    invoke-virtual {p0}, Lkb/b;->Y()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f333333    # 0.7f

    mul-float/2addr v5, p4

    sub-float/2addr v4, v5

    const v5, 0x3e99999a    # 0.3f

    mul-float/2addr p4, v5

    div-float/2addr v4, p4

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result p4

    .line 18
    :goto_1
    invoke-static {v2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p4

    .line 19
    iget-object v4, p0, Lkb/c;->W:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    sub-float/2addr v1, v0

    mul-float/2addr v4, v1

    .line 20
    iget-object v1, p0, Lkb/c;->W:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 21
    iget-object v1, p0, Lkb/c;->W:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 22
    iget-object v1, p0, Lkb/c;->W:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 23
    iget-object v1, p0, Lkb/c;->a0:Landroid/widget/TextView;

    invoke-virtual {v1, p4}, Landroid/view/View;->setAlpha(F)V

    .line 24
    iget-object v1, p0, Lkb/c;->a0:Landroid/widget/TextView;

    iget v5, p0, Lkb/c;->d0:I

    invoke-virtual {v1, v5}, Landroid/view/View;->setTop(I)V

    .line 25
    iget-object v1, p0, Lkb/c;->a0:Landroid/widget/TextView;

    iget v5, p0, Lkb/c;->e0:I

    invoke-virtual {v1, v5}, Landroid/view/View;->setBottom(I)V

    .line 26
    iget-object v1, p0, Lkb/c;->Y:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 27
    iget-object v1, p0, Lkb/c;->Y:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 28
    iget-object v1, p0, Lkb/c;->Y:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 29
    iget-object v1, p0, Lkb/c;->Y:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 30
    :cond_3
    invoke-virtual {p0}, Lkb/b;->Y()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p2, Lkb/a$a;->b:I

    if-ge v0, v1, :cond_6

    cmpl-float p4, p4, v2

    if-lez p4, :cond_4

    .line 31
    iget-object p4, p0, Lkb/c;->a0:Landroid/widget/TextView;

    invoke-virtual {p4, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 32
    :cond_4
    invoke-virtual {p0}, Lkb/b;->S()Lkb/d;

    move-result-object p4

    iget-object v0, p0, Lkb/b;->P:Lkb/b$l;

    if-ne p4, v0, :cond_5

    .line 33
    iget-object p4, p0, Lkb/c;->a0:Landroid/widget/TextView;

    iget-object p2, p2, Lkb/a$b;->f:[Ljava/lang/String;

    aget-object p2, p2, p1

    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    :cond_5
    iget-object p2, p0, Lkb/c;->W:Landroid/view/View;

    iget p4, p0, Lkb/c;->c0:I

    invoke-virtual {p2, p4}, Landroid/view/View;->setBottom(I)V

    goto :goto_3

    .line 35
    :cond_6
    invoke-virtual {p0}, Lkb/b;->Y()Landroid/view/ViewGroup;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p4

    iget v0, p2, Lkb/a$a;->b:I

    if-lt p4, v0, :cond_8

    .line 36
    iget p4, p0, Lkb/c;->c0:I

    invoke-virtual {p0}, Lkb/b;->Y()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p2, Lkb/a$a;->b:I

    sub-int/2addr v0, v1

    add-int/2addr p4, v0

    .line 37
    iget-object v0, p0, Lkb/c;->Y:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lkb/b;->S()Lkb/d;

    move-result-object v0

    iget-object v1, p0, Lkb/b;->R:Lkb/b$f;

    if-eq v0, v1, :cond_7

    .line 38
    iget-object v0, p0, Lkb/c;->W:Landroid/view/View;

    invoke-virtual {v0, p4}, Landroid/view/View;->setBottom(I)V

    .line 39
    iget-object p4, p0, Lkb/c;->a0:Landroid/widget/TextView;

    .line 40
    invoke-virtual {p0}, Lkb/b;->Y()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p2, Lkb/a$a;->b:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p4, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    .line 41
    :cond_7
    iget-object p4, p0, Lkb/c;->a0:Landroid/widget/TextView;

    invoke-virtual {p4, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 42
    :goto_2
    invoke-virtual {p0}, Lkb/b;->S()Lkb/d;

    move-result-object p4

    iget-object v0, p0, Lkb/b;->P:Lkb/b$l;

    if-ne p4, v0, :cond_8

    .line 43
    iget-object p4, p0, Lkb/c;->a0:Landroid/widget/TextView;

    iget-object p2, p2, Lkb/a$b;->f:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object p2, p2, v0

    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lkb/b;->e0()Z

    move-result p2

    const/16 p4, 0x8

    if-eqz p2, :cond_9

    invoke-virtual {p0}, Lkb/b;->R()Lkb/a$a;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {p0}, Lkb/b;->R()Lkb/a$a;

    move-result-object p2

    instance-of p2, p2, Lkb/a$d;

    if-eqz p2, :cond_9

    .line 45
    invoke-virtual {p0}, Lkb/b;->Y()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {p0}, Lkb/b;->R()Lkb/a$a;

    move-result-object v0

    iget v0, v0, Lkb/a$a;->a:I

    if-ge p2, v0, :cond_9

    .line 46
    invoke-virtual {p0}, Lkb/b;->X()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 47
    :cond_9
    invoke-virtual {p0}, Lkb/b;->e0()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-virtual {p0}, Lkb/b;->R()Lkb/a$a;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-virtual {p0}, Lkb/b;->R()Lkb/a$a;

    move-result-object p2

    instance-of p2, p2, Lkb/a$d;

    if-eqz p2, :cond_a

    .line 48
    invoke-virtual {p0}, Lkb/b;->Y()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {p0}, Lkb/b;->R()Lkb/a$a;

    move-result-object v0

    iget v0, v0, Lkb/a$a;->a:I

    if-lt p2, v0, :cond_a

    .line 49
    invoke-virtual {p0}, Lkb/b;->X()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-ne p2, p4, :cond_a

    .line 50
    invoke-virtual {p0}, Lkb/b;->X()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    invoke-virtual {p0}, Lkb/b;->X()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-direct {p0, p1}, Lkb/c;->h1(Landroid/view/View;)V

    .line 52
    :cond_a
    :goto_4
    invoke-virtual {p0}, Lkb/b;->e0()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lkb/b;->R()Lkb/a$a;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lkb/b;->X()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_b

    .line 53
    invoke-virtual {p0}, Lkb/b;->X()Landroid/view/ViewGroup;

    move-result-object p1

    neg-int p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_b
    return-void
.end method

.method public e(Lkb/a$a;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lkb/b;->e(Lkb/a$a;)V

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Lkb/a$c;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lkb/c;->e1()V

    .line 9
    .line 10
    .line 11
    check-cast p1, Lkb/a$c;

    .line 12
    .line 13
    iget-object v0, p0, Lkb/c;->m0:Lkb/a$c$a;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lkb/b;->R0(Lkb/a$c$a;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lkb/c;->U:Landroid/content/Context;

    .line 19
    .line 20
    iget-object v1, p1, Lkb/a$c;->d:[I

    .line 21
    .line 22
    iget-object p1, p1, Lkb/a$c;->e:[Ljava/lang/String;

    .line 23
    .line 24
    invoke-direct {p0, v0, v1, p1}, Lkb/c;->g1(Landroid/content/Context;[I[Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    instance-of v0, p1, Lkb/a$b;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-direct {p0}, Lkb/c;->d1()V

    .line 33
    .line 34
    .line 35
    check-cast p1, Lkb/a$b;

    .line 36
    .line 37
    iget-object v0, p0, Lkb/c;->k0:Lkb/a$b$b;

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lkb/b;->Q0(Lkb/a$b$b;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lkb/c;->U:Landroid/content/Context;

    .line 43
    .line 44
    iget-object v1, p1, Lkb/a$b;->e:[I

    .line 45
    .line 46
    iget-object p1, p1, Lkb/a$b;->f:[Ljava/lang/String;

    .line 47
    .line 48
    invoke-direct {p0, v0, v1, p1}, Lkb/c;->g1(Landroid/content/Context;[I[Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    instance-of p1, p1, Lkb/a$d;

    .line 53
    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    invoke-direct {p0}, Lkb/c;->f1()V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lkb/c;->l0:Lkb/a$d$a;

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lkb/b;->S0(Lkb/a$d$a;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_0
    return-void
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
.end method

.method public f(Lkb/a$a;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lkb/a;->f(Lkb/a$a;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method public j()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lkb/b;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

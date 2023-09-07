.class public Lcom/android/calendar/homepage/h1;
.super Landroid/widget/LinearLayout;
.source "MonthView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/homepage/h1$b;,
        Lcom/android/calendar/homepage/h1$a;,
        Lcom/android/calendar/homepage/h1$c;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field private c:Z

.field private d:Landroid/content/Context;

.field protected e:Lcom/android/calendar/common/e;

.field private f:Landroid/view/GestureDetector;

.field private g:[Lcom/android/calendar/homepage/c0;

.field private h:[Lcom/android/calendar/homepage/WeekAgendaView;

.field private i:Lcom/android/calendar/homepage/h1$b;

.field private j:Z

.field private k:I

.field private l:I

.field private m:Ljava/lang/Runnable;

.field private n:Landroid/os/Handler;

.field private o:Lcom/android/calendar/homepage/c0;

.field private p:Lcom/android/calendar/homepage/h1$c;

.field private q:Lcom/android/calendar/homepage/h1$c;

.field private r:[Z

.field v:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/calendar/homepage/h1;->c:Z

    .line 6
    .line 7
    const/4 v1, 0x6

    .line 8
    new-array v2, v1, [Lcom/android/calendar/homepage/c0;

    .line 9
    .line 10
    iput-object v2, p0, Lcom/android/calendar/homepage/h1;->g:[Lcom/android/calendar/homepage/c0;

    .line 11
    .line 12
    new-array v1, v1, [Lcom/android/calendar/homepage/WeekAgendaView;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/android/calendar/homepage/h1;->h:[Lcom/android/calendar/homepage/WeekAgendaView;

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/android/calendar/homepage/h1;->j:Z

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/android/calendar/homepage/h1;->m:Ljava/lang/Runnable;

    .line 20
    .line 21
    new-instance v1, Landroid/os/Handler;

    .line 22
    .line 23
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/android/calendar/homepage/h1;->n:Landroid/os/Handler;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/calendar/homepage/h1;->o:Lcom/android/calendar/homepage/c0;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/calendar/homepage/h1;->v:Ljava/lang/Runnable;

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/android/calendar/homepage/h1;->d:Landroid/content/Context;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/android/calendar/common/e;->g(Landroid/content/Context;)Lcom/android/calendar/common/e;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/android/calendar/homepage/h1;->e:Lcom/android/calendar/common/e;

    .line 43
    .line 44
    new-instance v0, Lcom/android/calendar/homepage/h1$c;

    .line 45
    .line 46
    invoke-direct {v0, p0}, Lcom/android/calendar/homepage/h1$c;-><init>(Lcom/android/calendar/homepage/h1;)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/android/calendar/homepage/h1;->p:Lcom/android/calendar/homepage/h1$c;

    .line 50
    .line 51
    new-instance v0, Landroid/view/GestureDetector;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/calendar/homepage/h1;->d:Landroid/content/Context;

    .line 54
    .line 55
    new-instance v2, Lcom/android/calendar/homepage/h1$a;

    .line 56
    .line 57
    invoke-direct {v2, p0}, Lcom/android/calendar/homepage/h1$a;-><init>(Lcom/android/calendar/homepage/h1;)V

    .line 58
    .line 59
    .line 60
    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lcom/android/calendar/homepage/h1;->f:Landroid/view/GestureDetector;

    .line 64
    .line 65
    iget-object v0, p0, Lcom/android/calendar/homepage/h1;->p:Lcom/android/calendar/homepage/h1$c;

    .line 66
    .line 67
    iput-object p2, v0, Lcom/android/calendar/homepage/h1$c;->a:Ljava/util/Calendar;

    .line 68
    .line 69
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    iput-object p2, v0, Lcom/android/calendar/homepage/h1$c;->b:Ljava/util/Calendar;

    .line 74
    .line 75
    iget-object p2, p0, Lcom/android/calendar/homepage/h1;->p:Lcom/android/calendar/homepage/h1$c;

    .line 76
    .line 77
    iget-object v0, p0, Lcom/android/calendar/homepage/h1;->d:Landroid/content/Context;

    .line 78
    .line 79
    iget-object v1, p2, Lcom/android/calendar/homepage/h1$c;->a:Ljava/util/Calendar;

    .line 80
    .line 81
    invoke-static {v0, v1}, Lcom/miui/calendar/util/e0;->n(Landroid/content/Context;Ljava/util/Calendar;)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    iput v0, p2, Lcom/android/calendar/homepage/h1$c;->d:I

    .line 86
    .line 87
    iget-object p2, p0, Lcom/android/calendar/homepage/h1;->p:Lcom/android/calendar/homepage/h1$c;

    .line 88
    .line 89
    iput-object p3, p2, Lcom/android/calendar/homepage/h1$c;->c:Ljava/util/Calendar;

    .line 90
    .line 91
    iget-object p2, p0, Lcom/android/calendar/homepage/h1;->d:Landroid/content/Context;

    .line 92
    .line 93
    invoke-static {p2}, Lcom/miui/calendar/util/x0;->I(Landroid/content/Context;)F

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    float-to-int p2, p2

    .line 98
    iput p2, p0, Lcom/android/calendar/homepage/h1;->k:I

    .line 99
    .line 100
    const/high16 p2, -0x3db80000    # -50.0f

    .line 101
    .line 102
    invoke-static {p1, p2}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    float-to-int p2, p2

    .line 107
    iput p2, p0, Lcom/android/calendar/homepage/h1;->a:I

    .line 108
    .line 109
    const/high16 p2, -0x3d380000    # -100.0f

    .line 110
    .line 111
    invoke-static {p1, p2}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 112
    .line 113
    .line 114
    move-result p2

    .line 115
    float-to-int p2, p2

    .line 116
    iput p2, p0, Lcom/android/calendar/homepage/h1;->b:I

    .line 117
    .line 118
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    iput p1, p0, Lcom/android/calendar/homepage/h1;->l:I

    .line 127
    .line 128
    return-void
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

.method public static synthetic a(Lcom/android/calendar/homepage/h1;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/h1;->f(Z)V

    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string v0, "generateDefaultLayoutParams() cannot return null"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_2
    :goto_0
    const/4 v1, -0x1

    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 28
    .line 29
    .line 30
    return-void
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
.end method

.method private synthetic f(Z)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "refresh ------ 1 hashCode:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, " mHasFirstRefresh:"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-boolean v2, p0, Lcom/android/calendar/homepage/h1;->c:Z

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v2, "Cal:D:MonthView"

    .line 33
    .line 34
    invoke-static {v2, v0}, Lcom/miui/calendar/util/z;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-boolean v0, p0, Lcom/android/calendar/homepage/h1;->c:Z

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    if-nez p1, :cond_0

    .line 43
    .line 44
    invoke-direct {p0, v3}, Lcom/android/calendar/homepage/h1;->o(Z)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 p1, 0x0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/h1;->o(Z)V

    .line 50
    .line 51
    .line 52
    iput-boolean v3, p0, Lcom/android/calendar/homepage/h1;->c:Z

    .line 53
    .line 54
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v0, "refresh ------ 2 hashCode:"

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-boolean v0, p0, Lcom/android/calendar/homepage/h1;->c:Z

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {v2, p1}, Lcom/miui/calendar/util/z;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const/4 p1, 0x0

    .line 87
    iput-object p1, p0, Lcom/android/calendar/homepage/h1;->v:Ljava/lang/Runnable;

    .line 88
    .line 89
    return-void
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
.end method

.method private g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/h1;->q:Lcom/android/calendar/homepage/h1$c;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/calendar/homepage/h1;->p:Lcom/android/calendar/homepage/h1$c;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/calendar/homepage/h1$c;->f:Ljava/util/List;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/calendar/homepage/h1$c;->f:Ljava/util/List;

    .line 10
    .line 11
    if-eq v1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private h()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/h1;->q:Lcom/android/calendar/homepage/h1$c;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/calendar/homepage/h1;->p:Lcom/android/calendar/homepage/h1$c;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/calendar/homepage/h1$c;->a:Ljava/util/Calendar;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/calendar/homepage/h1$c;->a:Ljava/util/Calendar;

    .line 10
    .line 11
    invoke-static {v1, v0}, Lcom/miui/calendar/util/s0;->u(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/calendar/homepage/h1;->p:Lcom/android/calendar/homepage/h1$c;

    .line 18
    .line 19
    iget v1, v0, Lcom/android/calendar/homepage/h1$c;->d:I

    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/calendar/homepage/h1;->q:Lcom/android/calendar/homepage/h1$c;

    .line 22
    .line 23
    iget v3, v2, Lcom/android/calendar/homepage/h1$c;->d:I

    .line 24
    .line 25
    if-ne v1, v3, :cond_1

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/calendar/homepage/h1$c;->f:Ljava/util/List;

    .line 28
    .line 29
    iget-object v1, v2, Lcom/android/calendar/homepage/h1$c;->f:Ljava/util/List;

    .line 30
    .line 31
    if-ne v0, v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Lcom/android/calendar/common/e;->g(Landroid/content/Context;)Lcom/android/calendar/common/e;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/android/calendar/common/e;->h()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 v0, 0x0

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 51
    :goto_1
    return v0
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
.end method

.method private i(Ljava/util/Calendar;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/h1;->q:Lcom/android/calendar/homepage/h1$c;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/homepage/h1;->p:Lcom/android/calendar/homepage/h1$c;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/android/calendar/homepage/h1$c;->b:Ljava/util/Calendar;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/calendar/homepage/h1$c;->b:Ljava/util/Calendar;

    .line 12
    .line 13
    invoke-static {v2, v0}, Lcom/miui/calendar/util/s0;->u(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    xor-int/2addr v0, v1

    .line 18
    iget-object v2, p0, Lcom/android/calendar/homepage/h1;->d:Landroid/content/Context;

    .line 19
    .line 20
    iget-object v3, p0, Lcom/android/calendar/homepage/h1;->p:Lcom/android/calendar/homepage/h1$c;

    .line 21
    .line 22
    iget-object v3, v3, Lcom/android/calendar/homepage/h1$c;->b:Ljava/util/Calendar;

    .line 23
    .line 24
    invoke-static {v2, p1, v3}, Lcom/miui/calendar/util/s0;->x(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    iget-object v3, p0, Lcom/android/calendar/homepage/h1;->d:Landroid/content/Context;

    .line 29
    .line 30
    iget-object v4, p0, Lcom/android/calendar/homepage/h1;->q:Lcom/android/calendar/homepage/h1$c;

    .line 31
    .line 32
    iget-object v4, v4, Lcom/android/calendar/homepage/h1$c;->b:Ljava/util/Calendar;

    .line 33
    .line 34
    invoke-static {v3, p1, v4}, Lcom/miui/calendar/util/s0;->x(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    if-nez v2, :cond_1

    .line 41
    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    :cond_1
    return v1

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/homepage/h1;->p:Lcom/android/calendar/homepage/h1$c;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/android/calendar/homepage/h1$c;->c:Ljava/util/Calendar;

    .line 48
    .line 49
    iget-object v3, p0, Lcom/android/calendar/homepage/h1;->q:Lcom/android/calendar/homepage/h1$c;

    .line 50
    .line 51
    iget-object v3, v3, Lcom/android/calendar/homepage/h1$c;->c:Ljava/util/Calendar;

    .line 52
    .line 53
    invoke-static {v0, v3}, Lcom/miui/calendar/util/s0;->u(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    xor-int/2addr v0, v1

    .line 58
    iget-object v3, p0, Lcom/android/calendar/homepage/h1;->d:Landroid/content/Context;

    .line 59
    .line 60
    iget-object v4, p0, Lcom/android/calendar/homepage/h1;->q:Lcom/android/calendar/homepage/h1$c;

    .line 61
    .line 62
    iget-object v4, v4, Lcom/android/calendar/homepage/h1$c;->c:Ljava/util/Calendar;

    .line 63
    .line 64
    invoke-static {v3, p1, v4}, Lcom/miui/calendar/util/s0;->x(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    if-eqz v3, :cond_3

    .line 71
    .line 72
    return v1

    .line 73
    :cond_3
    iget-object v3, p0, Lcom/android/calendar/homepage/h1;->d:Landroid/content/Context;

    .line 74
    .line 75
    iget-object v4, p0, Lcom/android/calendar/homepage/h1;->p:Lcom/android/calendar/homepage/h1$c;

    .line 76
    .line 77
    iget-object v4, v4, Lcom/android/calendar/homepage/h1$c;->c:Ljava/util/Calendar;

    .line 78
    .line 79
    invoke-static {v3, p1, v4}, Lcom/miui/calendar/util/s0;->x(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_5

    .line 84
    .line 85
    if-eqz v0, :cond_4

    .line 86
    .line 87
    return v1

    .line 88
    :cond_4
    iget-object p1, p0, Lcom/android/calendar/homepage/h1;->q:Lcom/android/calendar/homepage/h1$c;

    .line 89
    .line 90
    iget-boolean p1, p1, Lcom/android/calendar/homepage/h1$c;->e:Z

    .line 91
    .line 92
    iget-object v0, p0, Lcom/android/calendar/homepage/h1;->e:Lcom/android/calendar/common/e;

    .line 93
    .line 94
    iget-boolean v0, v0, Lcom/android/calendar/common/e;->t:Z

    .line 95
    .line 96
    if-eq p1, v0, :cond_5

    .line 97
    .line 98
    return v1

    .line 99
    :cond_5
    iget-object p1, p0, Lcom/android/calendar/homepage/h1;->p:Lcom/android/calendar/homepage/h1$c;

    .line 100
    .line 101
    iget-object p1, p1, Lcom/android/calendar/homepage/h1$c;->g:Ljava/lang/String;

    .line 102
    .line 103
    iget-object v0, p0, Lcom/android/calendar/homepage/h1;->q:Lcom/android/calendar/homepage/h1$c;

    .line 104
    .line 105
    iget-object v0, v0, Lcom/android/calendar/homepage/h1$c;->g:Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    xor-int/2addr p1, v1

    .line 112
    if-eqz v2, :cond_6

    .line 113
    .line 114
    if-eqz p1, :cond_6

    .line 115
    .line 116
    return v1

    .line 117
    :cond_6
    const/4 p1, 0x0

    .line 118
    return p1
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
.end method

.method private o(Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/homepage/h1;->r()V

    .line 4
    .line 5
    .line 6
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/homepage/h1;->h()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iget-object v2, v0, Lcom/android/calendar/homepage/h1;->d:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {v2}, Lcom/miui/calendar/util/x0;->j0(Landroid/content/Context;)F

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    float-to-int v2, v2

    .line 17
    iget-object v3, v0, Lcom/android/calendar/homepage/h1;->d:Landroid/content/Context;

    .line 18
    .line 19
    iget-object v4, v0, Lcom/android/calendar/homepage/h1;->p:Lcom/android/calendar/homepage/h1$c;

    .line 20
    .line 21
    iget v4, v4, Lcom/android/calendar/homepage/h1$c;->d:I

    .line 22
    .line 23
    invoke-static {v3, v4}, Lcom/miui/calendar/util/x0;->P(Landroid/content/Context;I)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/4 v4, 0x0

    .line 28
    move v5, v4

    .line 29
    :goto_0
    iget-object v6, v0, Lcom/android/calendar/homepage/h1;->p:Lcom/android/calendar/homepage/h1$c;

    .line 30
    .line 31
    iget v7, v6, Lcom/android/calendar/homepage/h1$c;->d:I

    .line 32
    .line 33
    const/4 v8, 0x4

    .line 34
    const/4 v9, 0x1

    .line 35
    if-ge v5, v7, :cond_6

    .line 36
    .line 37
    iget-object v7, v0, Lcom/android/calendar/homepage/h1;->d:Landroid/content/Context;

    .line 38
    .line 39
    iget-object v6, v6, Lcom/android/calendar/homepage/h1$c;->a:Ljava/util/Calendar;

    .line 40
    .line 41
    invoke-static {v7, v6}, Lcom/miui/calendar/util/e0;->s(Landroid/content/Context;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    invoke-virtual {v6, v8, v5}, Ljava/util/Calendar;->add(II)V

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v6}, Lcom/android/calendar/homepage/h1;->i(Ljava/util/Calendar;)Z

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    if-nez v1, :cond_0

    .line 53
    .line 54
    if-eqz v7, :cond_5

    .line 55
    .line 56
    :cond_0
    iget-object v7, v0, Lcom/android/calendar/homepage/h1;->g:[Lcom/android/calendar/homepage/c0;

    .line 57
    .line 58
    aget-object v8, v7, v5

    .line 59
    .line 60
    if-nez v8, :cond_2

    .line 61
    .line 62
    new-instance v8, Lcom/android/calendar/homepage/c0;

    .line 63
    .line 64
    iget-object v11, v0, Lcom/android/calendar/homepage/h1;->d:Landroid/content/Context;

    .line 65
    .line 66
    int-to-float v12, v2

    .line 67
    iget-object v10, v0, Lcom/android/calendar/homepage/h1;->p:Lcom/android/calendar/homepage/h1$c;

    .line 68
    .line 69
    iget-object v14, v10, Lcom/android/calendar/homepage/h1$c;->c:Ljava/util/Calendar;

    .line 70
    .line 71
    iget-object v15, v10, Lcom/android/calendar/homepage/h1$c;->a:Ljava/util/Calendar;

    .line 72
    .line 73
    move-object v10, v8

    .line 74
    move-object v13, v6

    .line 75
    invoke-direct/range {v10 .. v15}, Lcom/android/calendar/homepage/c0;-><init>(Landroid/content/Context;FLjava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 76
    .line 77
    .line 78
    aput-object v8, v7, v5

    .line 79
    .line 80
    iget-object v7, v0, Lcom/android/calendar/homepage/h1;->g:[Lcom/android/calendar/homepage/c0;

    .line 81
    .line 82
    aget-object v7, v7, v5

    .line 83
    .line 84
    invoke-virtual {v7, v9}, Landroid/view/View;->setClickable(Z)V

    .line 85
    .line 86
    .line 87
    iget-object v7, v0, Lcom/android/calendar/homepage/h1;->g:[Lcom/android/calendar/homepage/c0;

    .line 88
    .line 89
    aget-object v7, v7, v5

    .line 90
    .line 91
    invoke-virtual {v7, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 92
    .line 93
    .line 94
    iget-object v7, v0, Lcom/android/calendar/homepage/h1;->g:[Lcom/android/calendar/homepage/c0;

    .line 95
    .line 96
    aget-object v7, v7, v5

    .line 97
    .line 98
    invoke-direct {v0, v7}, Lcom/android/calendar/homepage/h1;->b(Landroid/view/View;)V

    .line 99
    .line 100
    .line 101
    iget-object v7, v0, Lcom/android/calendar/homepage/h1;->g:[Lcom/android/calendar/homepage/c0;

    .line 102
    .line 103
    aget-object v7, v7, v5

    .line 104
    .line 105
    iget-boolean v8, v0, Lcom/android/calendar/homepage/h1;->j:Z

    .line 106
    .line 107
    invoke-virtual {v7, v8}, Lcom/android/calendar/homepage/c0;->setShowDetails(Z)V

    .line 108
    .line 109
    .line 110
    iget-object v7, v0, Lcom/android/calendar/homepage/h1;->h:[Lcom/android/calendar/homepage/WeekAgendaView;

    .line 111
    .line 112
    new-instance v8, Lcom/android/calendar/homepage/WeekAgendaView;

    .line 113
    .line 114
    iget-object v10, v0, Lcom/android/calendar/homepage/h1;->d:Landroid/content/Context;

    .line 115
    .line 116
    invoke-direct {v8, v10, v6, v3}, Lcom/android/calendar/homepage/WeekAgendaView;-><init>(Landroid/content/Context;Ljava/util/Calendar;I)V

    .line 117
    .line 118
    .line 119
    aput-object v8, v7, v5

    .line 120
    .line 121
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 122
    .line 123
    const/4 v8, -0x1

    .line 124
    invoke-direct {v7, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 125
    .line 126
    .line 127
    const/high16 v8, 0x3f800000    # 1.0f

    .line 128
    .line 129
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 130
    .line 131
    iget-object v8, v0, Lcom/android/calendar/homepage/h1;->h:[Lcom/android/calendar/homepage/WeekAgendaView;

    .line 132
    .line 133
    aget-object v8, v8, v5

    .line 134
    .line 135
    invoke-virtual {v8, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    .line 137
    .line 138
    iget-boolean v7, v0, Lcom/android/calendar/homepage/h1;->j:Z

    .line 139
    .line 140
    if-eqz v7, :cond_1

    .line 141
    .line 142
    iget-object v7, v0, Lcom/android/calendar/homepage/h1;->h:[Lcom/android/calendar/homepage/WeekAgendaView;

    .line 143
    .line 144
    aget-object v7, v7, v5

    .line 145
    .line 146
    invoke-virtual {v7}, Lcom/android/calendar/homepage/WeekAgendaView;->A()V

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_1
    iget-object v7, v0, Lcom/android/calendar/homepage/h1;->h:[Lcom/android/calendar/homepage/WeekAgendaView;

    .line 151
    .line 152
    aget-object v7, v7, v5

    .line 153
    .line 154
    invoke-virtual {v7}, Lcom/android/calendar/homepage/WeekAgendaView;->v()V

    .line 155
    .line 156
    .line 157
    :goto_1
    iget-object v7, v0, Lcom/android/calendar/homepage/h1;->h:[Lcom/android/calendar/homepage/WeekAgendaView;

    .line 158
    .line 159
    aget-object v7, v7, v5

    .line 160
    .line 161
    invoke-direct {v0, v7}, Lcom/android/calendar/homepage/h1;->b(Landroid/view/View;)V

    .line 162
    .line 163
    .line 164
    :cond_2
    iget-object v7, v0, Lcom/android/calendar/homepage/h1;->i:Lcom/android/calendar/homepage/h1$b;

    .line 165
    .line 166
    if-nez v7, :cond_3

    .line 167
    .line 168
    new-instance v7, Lcom/android/calendar/homepage/g1;

    .line 169
    .line 170
    invoke-direct {v7, v0}, Lcom/android/calendar/homepage/g1;-><init>(Lcom/android/calendar/homepage/h1;)V

    .line 171
    .line 172
    .line 173
    iput-object v7, v0, Lcom/android/calendar/homepage/h1;->i:Lcom/android/calendar/homepage/h1$b;

    .line 174
    .line 175
    :cond_3
    iget-object v7, v0, Lcom/android/calendar/homepage/h1;->g:[Lcom/android/calendar/homepage/c0;

    .line 176
    .line 177
    aget-object v7, v7, v5

    .line 178
    .line 179
    invoke-virtual {v7, v2}, Lcom/android/calendar/homepage/c0;->setHeight(I)V

    .line 180
    .line 181
    .line 182
    iget-object v7, v0, Lcom/android/calendar/homepage/h1;->g:[Lcom/android/calendar/homepage/c0;

    .line 183
    .line 184
    aget-object v7, v7, v5

    .line 185
    .line 186
    invoke-virtual {v7, v6}, Lcom/android/calendar/homepage/c0;->setWeekFirstDay(Ljava/util/Calendar;)V

    .line 187
    .line 188
    .line 189
    iget-object v7, v0, Lcom/android/calendar/homepage/h1;->g:[Lcom/android/calendar/homepage/c0;

    .line 190
    .line 191
    aget-object v7, v7, v5

    .line 192
    .line 193
    iget-object v8, v0, Lcom/android/calendar/homepage/h1;->p:Lcom/android/calendar/homepage/h1$c;

    .line 194
    .line 195
    iget v8, v8, Lcom/android/calendar/homepage/h1$c;->d:I

    .line 196
    .line 197
    invoke-virtual {v7, v8}, Lcom/android/calendar/homepage/c0;->setWeekNum(I)V

    .line 198
    .line 199
    .line 200
    iget-object v7, v0, Lcom/android/calendar/homepage/h1;->g:[Lcom/android/calendar/homepage/c0;

    .line 201
    .line 202
    aget-object v7, v7, v5

    .line 203
    .line 204
    iget-object v8, v0, Lcom/android/calendar/homepage/h1;->p:Lcom/android/calendar/homepage/h1$c;

    .line 205
    .line 206
    iget-object v8, v8, Lcom/android/calendar/homepage/h1$c;->c:Ljava/util/Calendar;

    .line 207
    .line 208
    invoke-virtual {v7, v8}, Lcom/android/calendar/homepage/c0;->setSelectedDay(Ljava/util/Calendar;)V

    .line 209
    .line 210
    .line 211
    iget-object v7, v0, Lcom/android/calendar/homepage/h1;->g:[Lcom/android/calendar/homepage/c0;

    .line 212
    .line 213
    aget-object v7, v7, v5

    .line 214
    .line 215
    iget-object v8, v0, Lcom/android/calendar/homepage/h1;->p:Lcom/android/calendar/homepage/h1$c;

    .line 216
    .line 217
    iget-object v8, v8, Lcom/android/calendar/homepage/h1$c;->a:Ljava/util/Calendar;

    .line 218
    .line 219
    invoke-virtual {v7, v8}, Lcom/android/calendar/homepage/c0;->setFocusDay(Ljava/util/Calendar;)V

    .line 220
    .line 221
    .line 222
    iget-object v7, v0, Lcom/android/calendar/homepage/h1;->g:[Lcom/android/calendar/homepage/c0;

    .line 223
    .line 224
    aget-object v7, v7, v5

    .line 225
    .line 226
    invoke-virtual {v7, v9}, Lcom/android/calendar/homepage/c0;->setMonthView(Z)V

    .line 227
    .line 228
    .line 229
    iget-object v7, v0, Lcom/android/calendar/homepage/h1;->g:[Lcom/android/calendar/homepage/c0;

    .line 230
    .line 231
    aget-object v7, v7, v5

    .line 232
    .line 233
    iget-object v8, v0, Lcom/android/calendar/homepage/h1;->i:Lcom/android/calendar/homepage/h1$b;

    .line 234
    .line 235
    invoke-virtual {v7, v8}, Lcom/android/calendar/homepage/c0;->setMonthViewTouchEventCallback(Lcom/android/calendar/homepage/h1$b;)V

    .line 236
    .line 237
    .line 238
    iget-object v7, v0, Lcom/android/calendar/homepage/h1;->g:[Lcom/android/calendar/homepage/c0;

    .line 239
    .line 240
    aget-object v7, v7, v5

    .line 241
    .line 242
    iget-object v8, v0, Lcom/android/calendar/homepage/h1;->r:[Z

    .line 243
    .line 244
    mul-int/lit8 v9, v5, 0x7

    .line 245
    .line 246
    add-int/lit8 v10, v5, 0x1

    .line 247
    .line 248
    mul-int/lit8 v10, v10, 0x7

    .line 249
    .line 250
    invoke-static {v8, v9, v10}, Ljava/util/Arrays;->copyOfRange([ZII)[Z

    .line 251
    .line 252
    .line 253
    move-result-object v8

    .line 254
    invoke-virtual {v7, v8}, Lcom/android/calendar/homepage/c0;->setEvents([Z)V

    .line 255
    .line 256
    .line 257
    if-eqz p1, :cond_4

    .line 258
    .line 259
    iget-object v7, v0, Lcom/android/calendar/homepage/h1;->g:[Lcom/android/calendar/homepage/c0;

    .line 260
    .line 261
    aget-object v7, v7, v5

    .line 262
    .line 263
    invoke-virtual {v7}, Lcom/android/calendar/homepage/c0;->b0()V

    .line 264
    .line 265
    .line 266
    goto :goto_2

    .line 267
    :cond_4
    iget-object v7, v0, Lcom/android/calendar/homepage/h1;->h:[Lcom/android/calendar/homepage/WeekAgendaView;

    .line 268
    .line 269
    aget-object v7, v7, v5

    .line 270
    .line 271
    iget-object v8, v0, Lcom/android/calendar/homepage/h1;->p:Lcom/android/calendar/homepage/h1$c;

    .line 272
    .line 273
    iget-object v8, v8, Lcom/android/calendar/homepage/h1$c;->f:Ljava/util/List;

    .line 274
    .line 275
    invoke-virtual {v7, v8}, Lcom/android/calendar/homepage/WeekAgendaView;->setEvents(Ljava/util/List;)V

    .line 276
    .line 277
    .line 278
    iget-object v7, v0, Lcom/android/calendar/homepage/h1;->g:[Lcom/android/calendar/homepage/c0;

    .line 279
    .line 280
    aget-object v7, v7, v5

    .line 281
    .line 282
    invoke-virtual {v7}, Lcom/android/calendar/homepage/c0;->Y()V

    .line 283
    .line 284
    .line 285
    :goto_2
    iget-object v7, v0, Lcom/android/calendar/homepage/h1;->h:[Lcom/android/calendar/homepage/WeekAgendaView;

    .line 286
    .line 287
    aget-object v7, v7, v5

    .line 288
    .line 289
    invoke-virtual {v7, v6}, Lcom/android/calendar/homepage/WeekAgendaView;->setWeekFirstDay(Ljava/util/Calendar;)V

    .line 290
    .line 291
    .line 292
    iget-object v6, v0, Lcom/android/calendar/homepage/h1;->h:[Lcom/android/calendar/homepage/WeekAgendaView;

    .line 293
    .line 294
    aget-object v6, v6, v5

    .line 295
    .line 296
    iget-object v7, v0, Lcom/android/calendar/homepage/h1;->i:Lcom/android/calendar/homepage/h1$b;

    .line 297
    .line 298
    invoke-virtual {v6, v7}, Lcom/android/calendar/homepage/WeekAgendaView;->setMonthViewTouchEventCallback(Lcom/android/calendar/homepage/h1$b;)V

    .line 299
    .line 300
    .line 301
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 302
    .line 303
    goto/16 :goto_0

    .line 304
    .line 305
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestLayout()V

    .line 306
    .line 307
    .line 308
    iget-object v1, v0, Lcom/android/calendar/homepage/h1;->q:Lcom/android/calendar/homepage/h1$c;

    .line 309
    .line 310
    if-eqz v1, :cond_7

    .line 311
    .line 312
    iget-object v2, v0, Lcom/android/calendar/homepage/h1;->p:Lcom/android/calendar/homepage/h1$c;

    .line 313
    .line 314
    iget v2, v2, Lcom/android/calendar/homepage/h1$c;->d:I

    .line 315
    .line 316
    iget v1, v1, Lcom/android/calendar/homepage/h1$c;->d:I

    .line 317
    .line 318
    if-eq v2, v1, :cond_c

    .line 319
    .line 320
    :cond_7
    iget-object v1, v0, Lcom/android/calendar/homepage/h1;->p:Lcom/android/calendar/homepage/h1$c;

    .line 321
    .line 322
    iget v1, v1, Lcom/android/calendar/homepage/h1$c;->d:I

    .line 323
    .line 324
    const/4 v2, 0x6

    .line 325
    const/4 v5, 0x5

    .line 326
    if-ne v1, v2, :cond_a

    .line 327
    .line 328
    move v1, v4

    .line 329
    :goto_3
    if-ge v1, v8, :cond_8

    .line 330
    .line 331
    iget-object v6, v0, Lcom/android/calendar/homepage/h1;->h:[Lcom/android/calendar/homepage/WeekAgendaView;

    .line 332
    .line 333
    aget-object v6, v6, v1

    .line 334
    .line 335
    invoke-virtual {v6, v2, v4}, Lcom/android/calendar/homepage/WeekAgendaView;->y(IZ)V

    .line 336
    .line 337
    .line 338
    add-int/lit8 v1, v1, 0x1

    .line 339
    .line 340
    goto :goto_3

    .line 341
    :cond_8
    iget-object v1, v0, Lcom/android/calendar/homepage/h1;->h:[Lcom/android/calendar/homepage/WeekAgendaView;

    .line 342
    .line 343
    aget-object v1, v1, v5

    .line 344
    .line 345
    invoke-virtual {v1, v2, v9}, Lcom/android/calendar/homepage/WeekAgendaView;->y(IZ)V

    .line 346
    .line 347
    .line 348
    iget-object v1, v0, Lcom/android/calendar/homepage/h1;->h:[Lcom/android/calendar/homepage/WeekAgendaView;

    .line 349
    .line 350
    aget-object v1, v1, v8

    .line 351
    .line 352
    invoke-virtual {v1, v2, v4}, Lcom/android/calendar/homepage/WeekAgendaView;->y(IZ)V

    .line 353
    .line 354
    .line 355
    iget-object v1, v0, Lcom/android/calendar/homepage/h1;->g:[Lcom/android/calendar/homepage/c0;

    .line 356
    .line 357
    aget-object v1, v1, v5

    .line 358
    .line 359
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 360
    .line 361
    .line 362
    iget-object v1, v0, Lcom/android/calendar/homepage/h1;->h:[Lcom/android/calendar/homepage/WeekAgendaView;

    .line 363
    .line 364
    aget-object v1, v1, v5

    .line 365
    .line 366
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 367
    .line 368
    .line 369
    iget-boolean v1, v0, Lcom/android/calendar/homepage/h1;->j:Z

    .line 370
    .line 371
    if-eqz v1, :cond_9

    .line 372
    .line 373
    iget-object v1, v0, Lcom/android/calendar/homepage/h1;->h:[Lcom/android/calendar/homepage/WeekAgendaView;

    .line 374
    .line 375
    aget-object v1, v1, v5

    .line 376
    .line 377
    invoke-virtual {v1}, Lcom/android/calendar/homepage/WeekAgendaView;->A()V

    .line 378
    .line 379
    .line 380
    goto :goto_5

    .line 381
    :cond_9
    iget-object v1, v0, Lcom/android/calendar/homepage/h1;->h:[Lcom/android/calendar/homepage/WeekAgendaView;

    .line 382
    .line 383
    aget-object v1, v1, v5

    .line 384
    .line 385
    invoke-virtual {v1}, Lcom/android/calendar/homepage/WeekAgendaView;->v()V

    .line 386
    .line 387
    .line 388
    goto :goto_5

    .line 389
    :cond_a
    iget-object v1, v0, Lcom/android/calendar/homepage/h1;->g:[Lcom/android/calendar/homepage/c0;

    .line 390
    .line 391
    aget-object v1, v1, v5

    .line 392
    .line 393
    if-eqz v1, :cond_c

    .line 394
    .line 395
    move v1, v4

    .line 396
    :goto_4
    if-ge v1, v8, :cond_b

    .line 397
    .line 398
    iget-object v2, v0, Lcom/android/calendar/homepage/h1;->h:[Lcom/android/calendar/homepage/WeekAgendaView;

    .line 399
    .line 400
    aget-object v2, v2, v1

    .line 401
    .line 402
    invoke-virtual {v2, v5, v4}, Lcom/android/calendar/homepage/WeekAgendaView;->y(IZ)V

    .line 403
    .line 404
    .line 405
    add-int/lit8 v1, v1, 0x1

    .line 406
    .line 407
    goto :goto_4

    .line 408
    :cond_b
    iget-object v1, v0, Lcom/android/calendar/homepage/h1;->h:[Lcom/android/calendar/homepage/WeekAgendaView;

    .line 409
    .line 410
    aget-object v1, v1, v8

    .line 411
    .line 412
    invoke-virtual {v1, v5, v9}, Lcom/android/calendar/homepage/WeekAgendaView;->y(IZ)V

    .line 413
    .line 414
    .line 415
    iget-object v1, v0, Lcom/android/calendar/homepage/h1;->g:[Lcom/android/calendar/homepage/c0;

    .line 416
    .line 417
    aget-object v1, v1, v5

    .line 418
    .line 419
    const/16 v2, 0x8

    .line 420
    .line 421
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 422
    .line 423
    .line 424
    iget-object v1, v0, Lcom/android/calendar/homepage/h1;->h:[Lcom/android/calendar/homepage/WeekAgendaView;

    .line 425
    .line 426
    aget-object v1, v1, v5

    .line 427
    .line 428
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 429
    .line 430
    .line 431
    :cond_c
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 432
    .line 433
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    .line 435
    .line 436
    const-string v2, "zhl: refreshViews: "

    .line 437
    .line 438
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 442
    .line 443
    .line 444
    move-result-object v2

    .line 445
    invoke-static {v2}, Lcom/android/calendar/common/Utils;->t(Landroid/content/Context;)I

    .line 446
    .line 447
    .line 448
    move-result v2

    .line 449
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    const-string v2, " weekNum: "

    .line 453
    .line 454
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    iget-object v2, v0, Lcom/android/calendar/homepage/h1;->p:Lcom/android/calendar/homepage/h1$c;

    .line 458
    .line 459
    iget v2, v2, Lcom/android/calendar/homepage/h1$c;->d:I

    .line 460
    .line 461
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    const-string v2, " itemCount: "

    .line 465
    .line 466
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v1

    .line 476
    const-string v2, "Cal:D:MonthView"

    .line 477
    .line 478
    invoke-static {v2, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    iget-object v1, v0, Lcom/android/calendar/homepage/h1;->h:[Lcom/android/calendar/homepage/WeekAgendaView;

    .line 482
    .line 483
    array-length v5, v1

    .line 484
    :goto_6
    if-ge v4, v5, :cond_e

    .line 485
    .line 486
    aget-object v6, v1, v4

    .line 487
    .line 488
    if-eqz v6, :cond_d

    .line 489
    .line 490
    invoke-virtual {v6, v3}, Lcom/android/calendar/homepage/WeekAgendaView;->setItemCount(I)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {v6}, Lcom/android/calendar/homepage/WeekAgendaView;->B()V

    .line 494
    .line 495
    .line 496
    :cond_d
    add-int/lit8 v4, v4, 0x1

    .line 497
    .line 498
    goto :goto_6

    .line 499
    :cond_e
    if-nez p1, :cond_f

    .line 500
    .line 501
    iget-object v1, v0, Lcom/android/calendar/homepage/h1;->p:Lcom/android/calendar/homepage/h1$c;

    .line 502
    .line 503
    invoke-virtual {v1}, Lcom/android/calendar/homepage/h1$c;->a()Lcom/android/calendar/homepage/h1$c;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    iput-object v1, v0, Lcom/android/calendar/homepage/h1;->q:Lcom/android/calendar/homepage/h1$c;

    .line 508
    .line 509
    iget-object v3, v0, Lcom/android/calendar/homepage/h1;->e:Lcom/android/calendar/common/e;

    .line 510
    .line 511
    iget-boolean v3, v3, Lcom/android/calendar/common/e;->t:Z

    .line 512
    .line 513
    iput-boolean v3, v1, Lcom/android/calendar/homepage/h1$c;->e:Z

    .line 514
    .line 515
    :cond_f
    new-instance v1, Lcom/miui/calendar/util/g$i0;

    .line 516
    .line 517
    invoke-direct {v1}, Lcom/miui/calendar/util/g$i0;-><init>()V

    .line 518
    .line 519
    .line 520
    invoke-static {v1}, Lcom/miui/calendar/util/g;->c(Lcom/miui/calendar/util/g$j;)V

    .line 521
    .line 522
    .line 523
    const-string v1, "timecost-----  refresh finshed"

    .line 524
    .line 525
    invoke-static {v2, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    return-void
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
.end method

.method private r()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/h1;->q:Lcom/android/calendar/homepage/h1$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/calendar/homepage/h1;->p:Lcom/android/calendar/homepage/h1$c;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/calendar/homepage/h1$c;->a:Ljava/util/Calendar;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/calendar/homepage/h1$c;->a:Ljava/util/Calendar;

    .line 10
    .line 11
    invoke-static {v1, v0}, Lcom/miui/calendar/util/s0;->u(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/calendar/homepage/h1;->p:Lcom/android/calendar/homepage/h1$c;

    .line 18
    .line 19
    iget-object v1, v0, Lcom/android/calendar/homepage/h1$c;->f:Ljava/util/List;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/calendar/homepage/h1;->q:Lcom/android/calendar/homepage/h1$c;

    .line 22
    .line 23
    iget-object v2, v2, Lcom/android/calendar/homepage/h1$c;->f:Ljava/util/List;

    .line 24
    .line 25
    if-ne v1, v2, :cond_0

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    iput-object v1, v0, Lcom/android/calendar/homepage/h1$c;->f:Ljava/util/List;

    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/homepage/h1;->p:Lcom/android/calendar/homepage/h1$c;

    .line 31
    .line 32
    iget v0, v0, Lcom/android/calendar/homepage/h1$c;->d:I

    .line 33
    .line 34
    mul-int/lit8 v0, v0, 0x7

    .line 35
    .line 36
    invoke-direct {p0}, Lcom/android/calendar/homepage/h1;->g()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_4

    .line 41
    .line 42
    iget-object v1, p0, Lcom/android/calendar/homepage/h1;->p:Lcom/android/calendar/homepage/h1$c;

    .line 43
    .line 44
    iget-object v2, v1, Lcom/android/calendar/homepage/h1$c;->f:Ljava/util/List;

    .line 45
    .line 46
    if-eqz v2, :cond_4

    .line 47
    .line 48
    new-array v2, v0, [Z

    .line 49
    .line 50
    iput-object v2, p0, Lcom/android/calendar/homepage/h1;->r:[Z

    .line 51
    .line 52
    iget-object v2, p0, Lcom/android/calendar/homepage/h1;->d:Landroid/content/Context;

    .line 53
    .line 54
    iget-object v1, v1, Lcom/android/calendar/homepage/h1$c;->a:Ljava/util/Calendar;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-static {v2, v1}, Lcom/miui/calendar/util/e0;->b(Landroid/content/Context;Ljava/util/Date;)Ljava/util/Calendar;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v1}, Lcom/miui/calendar/util/s0;->m(Ljava/util/Calendar;)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    iget-object v2, p0, Lcom/android/calendar/homepage/h1;->p:Lcom/android/calendar/homepage/h1$c;

    .line 69
    .line 70
    iget-object v2, v2, Lcom/android/calendar/homepage/h1$c;->f:Ljava/util/List;

    .line 71
    .line 72
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_5

    .line 81
    .line 82
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    check-cast v3, Lcom/android/calendar/common/event/schema/Event;

    .line 87
    .line 88
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/EventEx;->getStartJulianDay()I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    sub-int/2addr v4, v1

    .line 97
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/EventEx;->getEndJulianDay()I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    sub-int/2addr v3, v1

    .line 106
    if-gt v4, v3, :cond_1

    .line 107
    .line 108
    if-ge v4, v0, :cond_1

    .line 109
    .line 110
    if-ltz v3, :cond_1

    .line 111
    .line 112
    if-gez v4, :cond_2

    .line 113
    .line 114
    const/4 v4, 0x0

    .line 115
    :cond_2
    if-lt v3, v0, :cond_3

    .line 116
    .line 117
    add-int/lit8 v3, v0, -0x1

    .line 118
    .line 119
    :cond_3
    :goto_0
    if-gt v4, v3, :cond_1

    .line 120
    .line 121
    iget-object v5, p0, Lcom/android/calendar/homepage/h1;->r:[Z

    .line 122
    .line 123
    const/4 v6, 0x1

    .line 124
    aput-boolean v6, v5, v4

    .line 125
    .line 126
    add-int/lit8 v4, v4, 0x1

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_4
    iget-object v1, p0, Lcom/android/calendar/homepage/h1;->r:[Z

    .line 130
    .line 131
    if-nez v1, :cond_5

    .line 132
    .line 133
    new-array v0, v0, [Z

    .line 134
    .line 135
    iput-object v0, p0, Lcom/android/calendar/homepage/h1;->r:[Z

    .line 136
    .line 137
    :cond_5
    return-void
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
.end method

.method private s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/h1;->p:Lcom/android/calendar/homepage/h1$c;

    .line 2
    .line 3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iput-object v1, v0, Lcom/android/calendar/homepage/h1$c;->b:Ljava/util/Calendar;

    .line 8
    .line 9
    return-void
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
.end method


# virtual methods
.method public c()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "cancelAnimationLunarTexts weekViews:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/calendar/homepage/h1;->g:[Lcom/android/calendar/homepage/c0;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "Cal:D:MonthView"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/calendar/homepage/h1;->g:[Lcom/android/calendar/homepage/c0;

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    array-length v1, v0

    .line 31
    const/4 v2, 0x0

    .line 32
    move v3, v2

    .line 33
    :goto_0
    if-ge v3, v1, :cond_2

    .line 34
    .line 35
    aget-object v4, v0, v3

    .line 36
    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    invoke-virtual {v4, v2}, Lcom/android/calendar/homepage/c0;->setPageSelect(Z)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Lcom/android/calendar/homepage/c0;->N()V

    .line 43
    .line 44
    .line 45
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    return-void
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
.end method

.method public d()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "clearValueAnimationStatus weekViews:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/calendar/homepage/h1;->g:[Lcom/android/calendar/homepage/c0;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "Cal:D:MonthView"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/calendar/homepage/h1;->g:[Lcom/android/calendar/homepage/c0;

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    array-length v1, v0

    .line 31
    const/4 v2, 0x0

    .line 32
    :goto_0
    if-ge v2, v1, :cond_2

    .line 33
    .line 34
    aget-object v3, v0, v2

    .line 35
    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/android/calendar/homepage/c0;->O()V

    .line 39
    .line 40
    .line 41
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    return-void
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
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/calendar/homepage/h1;->j:Z

    .line 2
    .line 3
    return v0
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
.end method

.method public getWeekNum()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/h1;->p:Lcom/android/calendar/homepage/h1$c;

    .line 2
    .line 3
    iget v0, v0, Lcom/android/calendar/homepage/h1$c;->d:I

    .line 4
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
.end method

.method public invalidate()V
    .locals 0

    return-void
.end method

.method public invalidate(IIII)V
    .locals 0

    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public j(Ljava/util/Calendar;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/android/calendar/common/k;->h(Ljava/util/Calendar;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget v0, Lmiuix/view/f;->A:I

    .line 9
    .line 10
    sget v1, Lmiuix/view/f;->k:I

    .line 11
    .line 12
    invoke-static {p0, v0, v1}, Lmiuix/view/HapticCompat;->e(Landroid/view/View;II)Z

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/miui/calendar/util/g$a0;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lcom/miui/calendar/util/g$a0;-><init>(Ljava/util/Calendar;)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    invoke-virtual {v0, p1}, Lcom/miui/calendar/util/g$a0;->d(Z)Lcom/miui/calendar/util/g$a0;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-boolean v0, p0, Lcom/android/calendar/homepage/h1;->j:Z

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/miui/calendar/util/g$a0;->e(Z)Lcom/miui/calendar/util/g$a0;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lcom/miui/calendar/util/g;->c(Lcom/miui/calendar/util/g$j;)V

    .line 32
    .line 33
    .line 34
    return-void
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
.end method

.method public k()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "pauseAnimationLunarTexts weekViews:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/calendar/homepage/h1;->g:[Lcom/android/calendar/homepage/c0;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "Cal:D:MonthView"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/calendar/homepage/h1;->g:[Lcom/android/calendar/homepage/c0;

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    array-length v1, v0

    .line 31
    const/4 v2, 0x0

    .line 32
    move v3, v2

    .line 33
    :goto_0
    if-ge v3, v1, :cond_2

    .line 34
    .line 35
    aget-object v4, v0, v3

    .line 36
    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    invoke-virtual {v4, v2}, Lcom/android/calendar/homepage/c0;->setPageSelect(Z)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Lcom/android/calendar/homepage/c0;->X()V

    .line 43
    .line 44
    .line 45
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    return-void
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
.end method

.method public l()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/homepage/h1;->s()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/calendar/homepage/h1;->v:Ljava/lang/Runnable;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    :cond_0
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/calendar/homepage/h1;->p:Lcom/android/calendar/homepage/h1$c;

    .line 14
    .line 15
    iget-object v2, v2, Lcom/android/calendar/homepage/h1$c;->a:Ljava/util/Calendar;

    .line 16
    .line 17
    invoke-static {}, Lcom/android/calendar/common/Utils;->V()Ljava/util/Calendar;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {v2, v3}, Lcom/miui/calendar/util/s0;->w(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    const-wide/16 v0, 0x64

    .line 28
    .line 29
    :cond_1
    new-instance v3, Lcom/android/calendar/homepage/f1;

    .line 30
    .line 31
    invoke-direct {v3, p0, v2}, Lcom/android/calendar/homepage/f1;-><init>(Lcom/android/calendar/homepage/h1;Z)V

    .line 32
    .line 33
    .line 34
    iput-object v3, p0, Lcom/android/calendar/homepage/h1;->v:Ljava/lang/Runnable;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/android/calendar/homepage/h1;->n:Landroid/os/Handler;

    .line 37
    .line 38
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 39
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
.end method

.method public m(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/h1;->h:[Lcom/android/calendar/homepage/WeekAgendaView;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    invoke-virtual {v3, p1}, Lcom/android/calendar/homepage/WeekAgendaView;->z(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    return-void
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public n()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/h1;->h:[Lcom/android/calendar/homepage/WeekAgendaView;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    invoke-virtual {v3}, Lcom/android/calendar/homepage/WeekAgendaView;->C()V

    .line 12
    .line 13
    .line 14
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    return-void
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/calendar/homepage/h1;->v:Ljava/lang/Runnable;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
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
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Month: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/calendar/homepage/h1;->p:Lcom/android/calendar/homepage/h1$c;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/calendar/homepage/h1$c;->a:Ljava/util/Calendar;

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " onSizeChange: "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "Cal:D:MonthView"

    .line 36
    .line 37
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-boolean v0, p0, Lcom/android/calendar/homepage/h1;->j:Z

    .line 41
    .line 42
    invoke-static {p2}, Lcom/miui/calendar/util/x0;->J0(I)V

    .line 43
    .line 44
    .line 45
    iget v1, p0, Lcom/android/calendar/homepage/h1;->k:I

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    if-lt p2, v1, :cond_0

    .line 49
    .line 50
    const/4 v1, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move v1, v2

    .line 53
    :goto_0
    iput-boolean v1, p0, Lcom/android/calendar/homepage/h1;->j:Z

    .line 54
    .line 55
    if-eq v1, v0, :cond_2

    .line 56
    .line 57
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/homepage/h1;->p:Lcom/android/calendar/homepage/h1$c;

    .line 58
    .line 59
    iget v0, v0, Lcom/android/calendar/homepage/h1$c;->d:I

    .line 60
    .line 61
    if-ge v2, v0, :cond_2

    .line 62
    .line 63
    iget-object v0, p0, Lcom/android/calendar/homepage/h1;->g:[Lcom/android/calendar/homepage/c0;

    .line 64
    .line 65
    aget-object v0, v0, v2

    .line 66
    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    iget-boolean v1, p0, Lcom/android/calendar/homepage/h1;->j:Z

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lcom/android/calendar/homepage/c0;->setShowDetails(Z)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/android/calendar/homepage/c0;->Y()V

    .line 75
    .line 76
    .line 77
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 81
    .line 82
    .line 83
    return-void
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
    .line 183
    .line 184
    .line 185
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/h1;->f:Landroid/view/GestureDetector;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    instance-of v0, p1, Lcom/android/calendar/homepage/c0;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    check-cast p1, Lcom/android/calendar/homepage/c0;

    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    float-to-int p2, p2

    .line 20
    int-to-float p2, p2

    .line 21
    invoke-virtual {p1, p2}, Lcom/android/calendar/homepage/c0;->S(F)Ljava/util/Calendar;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/calendar/homepage/h1;->j(Ljava/util/Calendar;)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    return p1
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

.method public p()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "resumeAnimationLunarTexts weekViews:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/calendar/homepage/h1;->g:[Lcom/android/calendar/homepage/c0;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "Cal:D:MonthView"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/calendar/homepage/h1;->g:[Lcom/android/calendar/homepage/c0;

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    array-length v1, v0

    .line 31
    const/4 v2, 0x0

    .line 32
    :goto_0
    if-ge v2, v1, :cond_2

    .line 33
    .line 34
    aget-object v3, v0, v2

    .line 35
    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    const/4 v4, 0x1

    .line 39
    invoke-virtual {v3, v4}, Lcom/android/calendar/homepage/c0;->setPageSelect(Z)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/android/calendar/homepage/c0;->g0()V

    .line 43
    .line 44
    .line 45
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    return-void
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
.end method

.method public q()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "startAnimationLunarTexts weekViews:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/calendar/homepage/h1;->g:[Lcom/android/calendar/homepage/c0;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "Cal:D:MonthView"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/calendar/homepage/h1;->g:[Lcom/android/calendar/homepage/c0;

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    array-length v1, v0

    .line 31
    const/4 v2, 0x0

    .line 32
    :goto_0
    if-ge v2, v1, :cond_2

    .line 33
    .line 34
    aget-object v3, v0, v2

    .line 35
    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    const/4 v4, 0x1

    .line 39
    invoke-virtual {v3, v4}, Lcom/android/calendar/homepage/c0;->setPageSelect(Z)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/android/calendar/homepage/c0;->i0()V

    .line 43
    .line 44
    .line 45
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    return-void
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
.end method

.method public setEvents(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/calendar/common/event/schema/Event;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setEvents: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "Cal:D:MonthView"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/calendar/homepage/h1;->p:Lcom/android/calendar/homepage/h1$c;

    .line 28
    .line 29
    iput-object p1, v0, Lcom/android/calendar/homepage/h1$c;->f:Ljava/util/List;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/calendar/homepage/h1;->h:[Lcom/android/calendar/homepage/WeekAgendaView;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    array-length v1, v0

    .line 36
    const/4 v2, 0x0

    .line 37
    :goto_0
    if-ge v2, v1, :cond_1

    .line 38
    .line 39
    aget-object v3, v0, v2

    .line 40
    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    invoke-virtual {v3, p1}, Lcom/android/calendar/homepage/WeekAgendaView;->setEvents(Ljava/util/List;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-nez v4, :cond_0

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/android/calendar/homepage/h1;->e()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_0

    .line 57
    .line 58
    invoke-static {}, Lcom/miui/calendar/util/x0;->v0()Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_0

    .line 63
    .line 64
    const/4 v4, 0x1

    .line 65
    invoke-virtual {v3, v4}, Lcom/android/calendar/homepage/WeekAgendaView;->z(Z)V

    .line 66
    .line 67
    .line 68
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    return-void
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
.end method

.method public setFirstDay(Ljava/util/Calendar;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/h1;->p:Lcom/android/calendar/homepage/h1$c;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/android/calendar/homepage/h1$c;->a:Ljava/util/Calendar;

    .line 4
    .line 5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, v0, Lcom/android/calendar/homepage/h1$c;->b:Ljava/util/Calendar;

    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/calendar/homepage/h1;->p:Lcom/android/calendar/homepage/h1$c;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/calendar/homepage/h1;->d:Landroid/content/Context;

    .line 14
    .line 15
    iget-object v1, p1, Lcom/android/calendar/homepage/h1$c;->a:Ljava/util/Calendar;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/miui/calendar/util/e0;->n(Landroid/content/Context;Ljava/util/Calendar;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iput v0, p1, Lcom/android/calendar/homepage/h1$c;->d:I

    .line 22
    .line 23
    return-void
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
.end method

.method public setPageSelects(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/h1;->g:[Lcom/android/calendar/homepage/c0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    array-length v1, v0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_2

    .line 9
    .line 10
    aget-object v3, v0, v2

    .line 11
    .line 12
    if-eqz v3, :cond_1

    .line 13
    .line 14
    invoke-virtual {v3, p1}, Lcom/android/calendar/homepage/c0;->setPageSelect(Z)V

    .line 15
    .line 16
    .line 17
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    return-void
    .line 21
    .line 22
.end method

.method public setSelectedDay(Ljava/util/Calendar;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/h1;->p:Lcom/android/calendar/homepage/h1$c;

    .line 2
    .line 3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iput-object v1, v0, Lcom/android/calendar/homepage/h1$c;->c:Ljava/util/Calendar;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/calendar/homepage/h1;->p:Lcom/android/calendar/homepage/h1$c;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/calendar/homepage/h1$c;->c:Ljava/util/Calendar;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 18
    .line 19
    .line 20
    return-void
    .line 21
    .line 22
.end method

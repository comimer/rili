.class public Landroidx/constraintlayout/core/widgets/analyzer/b;
.super Ljava/lang/Object;
.source "BasicMeasure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/widgets/analyzer/b$a;,
        Landroidx/constraintlayout/core/widgets/analyzer/b$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroidx/constraintlayout/core/widgets/analyzer/b$a;

.field private c:Landroidx/constraintlayout/core/widgets/d;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/widgets/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/b;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/b$a;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/analyzer/b$a;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/b;->b:Landroidx/constraintlayout/core/widgets/analyzer/b$a;

    .line 17
    .line 18
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/b;->c:Landroidx/constraintlayout/core/widgets/d;

    .line 19
    .line 20
    return-void
    .line 21
    .line 22
.end method

.method private a(Landroidx/constraintlayout/core/widgets/analyzer/b$b;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/b;->b:Landroidx/constraintlayout/core/widgets/analyzer/b$a;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->A()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iput-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/b;->b:Landroidx/constraintlayout/core/widgets/analyzer/b$a;

    .line 10
    .line 11
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/b;->b:Landroidx/constraintlayout/core/widgets/analyzer/b$a;

    .line 18
    .line 19
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iput v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->c:I

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/b;->b:Landroidx/constraintlayout/core/widgets/analyzer/b$a;

    .line 26
    .line 27
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iput v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->d:I

    .line 32
    .line 33
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/b;->b:Landroidx/constraintlayout/core/widgets/analyzer/b$a;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    iput-boolean v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->i:Z

    .line 37
    .line 38
    iput p3, v0, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->j:I

    .line 39
    .line 40
    iget-object p3, v0, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 41
    .line 42
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 43
    .line 44
    const/4 v3, 0x1

    .line 45
    if-ne p3, v2, :cond_0

    .line 46
    .line 47
    move p3, v3

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move p3, v1

    .line 50
    :goto_0
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 51
    .line 52
    if-ne v4, v2, :cond_1

    .line 53
    .line 54
    move v2, v3

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    move v2, v1

    .line 57
    :goto_1
    const/4 v4, 0x0

    .line 58
    if-eqz p3, :cond_2

    .line 59
    .line 60
    iget p3, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:F

    .line 61
    .line 62
    cmpl-float p3, p3, v4

    .line 63
    .line 64
    if-lez p3, :cond_2

    .line 65
    .line 66
    move p3, v3

    .line 67
    goto :goto_2

    .line 68
    :cond_2
    move p3, v1

    .line 69
    :goto_2
    if-eqz v2, :cond_3

    .line 70
    .line 71
    iget v2, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:F

    .line 72
    .line 73
    cmpl-float v2, v2, v4

    .line 74
    .line 75
    if-lez v2, :cond_3

    .line 76
    .line 77
    move v2, v3

    .line 78
    goto :goto_3

    .line 79
    :cond_3
    move v2, v1

    .line 80
    :goto_3
    const/4 v4, 0x4

    .line 81
    if-eqz p3, :cond_4

    .line 82
    .line 83
    iget-object p3, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y:[I

    .line 84
    .line 85
    aget p3, p3, v1

    .line 86
    .line 87
    if-ne p3, v4, :cond_4

    .line 88
    .line 89
    sget-object p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 90
    .line 91
    iput-object p3, v0, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 92
    .line 93
    :cond_4
    if-eqz v2, :cond_5

    .line 94
    .line 95
    iget-object p3, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y:[I

    .line 96
    .line 97
    aget p3, p3, v3

    .line 98
    .line 99
    if-ne p3, v4, :cond_5

    .line 100
    .line 101
    sget-object p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 102
    .line 103
    iput-object p3, v0, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 104
    .line 105
    :cond_5
    invoke-interface {p1, p2, v0}, Landroidx/constraintlayout/core/widgets/analyzer/b$b;->b(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/b$a;)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/b;->b:Landroidx/constraintlayout/core/widgets/analyzer/b$a;

    .line 109
    .line 110
    iget p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->e:I

    .line 111
    .line 112
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k1(I)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/b;->b:Landroidx/constraintlayout/core/widgets/analyzer/b$a;

    .line 116
    .line 117
    iget p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->f:I

    .line 118
    .line 119
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L0(I)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/b;->b:Landroidx/constraintlayout/core/widgets/analyzer/b$a;

    .line 123
    .line 124
    iget-boolean p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->h:Z

    .line 125
    .line 126
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K0(Z)V

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/b;->b:Landroidx/constraintlayout/core/widgets/analyzer/b$a;

    .line 130
    .line 131
    iget p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->g:I

    .line 132
    .line 133
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->A0(I)V

    .line 134
    .line 135
    .line 136
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/b;->b:Landroidx/constraintlayout/core/widgets/analyzer/b$a;

    .line 137
    .line 138
    sget p2, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->k:I

    .line 139
    .line 140
    iput p2, p1, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->j:I

    .line 141
    .line 142
    iget-boolean p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->i:Z

    .line 143
    .line 144
    return p1
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

.method private b(Landroidx/constraintlayout/core/widgets/d;)V
    .locals 12

    .line 1
    iget-object v0, p1, Lq/c;->L0:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x40

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/widgets/d;->T1(I)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/d;->I1()Landroidx/constraintlayout/core/widgets/analyzer/b$b;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x0

    .line 18
    move v4, v3

    .line 19
    :goto_0
    if-ge v4, v0, :cond_a

    .line 20
    .line 21
    iget-object v5, p1, Lq/c;->L0:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 28
    .line 29
    instance-of v6, v5, Landroidx/constraintlayout/core/widgets/f;

    .line 30
    .line 31
    if-eqz v6, :cond_0

    .line 32
    .line 33
    goto/16 :goto_3

    .line 34
    .line 35
    :cond_0
    instance-of v6, v5, Landroidx/constraintlayout/core/widgets/a;

    .line 36
    .line 37
    if-eqz v6, :cond_1

    .line 38
    .line 39
    goto/16 :goto_3

    .line 40
    .line 41
    :cond_1
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l0()Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-eqz v6, :cond_2

    .line 46
    .line 47
    goto/16 :goto_3

    .line 48
    .line 49
    :cond_2
    if-eqz v1, :cond_3

    .line 50
    .line 51
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/k;

    .line 52
    .line 53
    if-eqz v6, :cond_3

    .line 54
    .line 55
    iget-object v7, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f:Landroidx/constraintlayout/core/widgets/analyzer/m;

    .line 56
    .line 57
    if-eqz v7, :cond_3

    .line 58
    .line 59
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 60
    .line 61
    iget-boolean v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 62
    .line 63
    if-eqz v6, :cond_3

    .line 64
    .line 65
    iget-object v6, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 66
    .line 67
    iget-boolean v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 68
    .line 69
    if-eqz v6, :cond_3

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_3
    invoke-virtual {v5, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    const/4 v7, 0x1

    .line 77
    invoke-virtual {v5, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 82
    .line 83
    if-ne v6, v9, :cond_4

    .line 84
    .line 85
    iget v10, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w:I

    .line 86
    .line 87
    if-eq v10, v7, :cond_4

    .line 88
    .line 89
    if-ne v8, v9, :cond_4

    .line 90
    .line 91
    iget v10, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x:I

    .line 92
    .line 93
    if-eq v10, v7, :cond_4

    .line 94
    .line 95
    move v10, v7

    .line 96
    goto :goto_1

    .line 97
    :cond_4
    move v10, v3

    .line 98
    :goto_1
    if-nez v10, :cond_8

    .line 99
    .line 100
    invoke-virtual {p1, v7}, Landroidx/constraintlayout/core/widgets/d;->T1(I)Z

    .line 101
    .line 102
    .line 103
    move-result v11

    .line 104
    if-eqz v11, :cond_8

    .line 105
    .line 106
    instance-of v11, v5, Landroidx/constraintlayout/core/widgets/h;

    .line 107
    .line 108
    if-nez v11, :cond_8

    .line 109
    .line 110
    if-ne v6, v9, :cond_5

    .line 111
    .line 112
    iget v11, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w:I

    .line 113
    .line 114
    if-nez v11, :cond_5

    .line 115
    .line 116
    if-eq v8, v9, :cond_5

    .line 117
    .line 118
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i0()Z

    .line 119
    .line 120
    .line 121
    move-result v11

    .line 122
    if-nez v11, :cond_5

    .line 123
    .line 124
    move v10, v7

    .line 125
    :cond_5
    if-ne v8, v9, :cond_6

    .line 126
    .line 127
    iget v11, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x:I

    .line 128
    .line 129
    if-nez v11, :cond_6

    .line 130
    .line 131
    if-eq v6, v9, :cond_6

    .line 132
    .line 133
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i0()Z

    .line 134
    .line 135
    .line 136
    move-result v11

    .line 137
    if-nez v11, :cond_6

    .line 138
    .line 139
    move v10, v7

    .line 140
    :cond_6
    if-eq v6, v9, :cond_7

    .line 141
    .line 142
    if-ne v8, v9, :cond_8

    .line 143
    .line 144
    :cond_7
    iget v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:F

    .line 145
    .line 146
    const/4 v8, 0x0

    .line 147
    cmpl-float v6, v6, v8

    .line 148
    .line 149
    if-lez v6, :cond_8

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_8
    move v7, v10

    .line 153
    :goto_2
    if-eqz v7, :cond_9

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_9
    sget v6, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->k:I

    .line 157
    .line 158
    invoke-direct {p0, v2, v5, v6}, Landroidx/constraintlayout/core/widgets/analyzer/b;->a(Landroidx/constraintlayout/core/widgets/analyzer/b$b;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)Z

    .line 159
    .line 160
    .line 161
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 162
    .line 163
    goto/16 :goto_0

    .line 164
    .line 165
    :cond_a
    invoke-interface {v2}, Landroidx/constraintlayout/core/widgets/analyzer/b$b;->a()V

    .line 166
    .line 167
    .line 168
    return-void
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
.end method

.method private c(Landroidx/constraintlayout/core/widgets/d;Ljava/lang/String;III)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a1(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z0(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k1(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L0(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a1(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z0(I)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/b;->c:Landroidx/constraintlayout/core/widgets/d;

    .line 29
    .line 30
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/core/widgets/d;->X1(I)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/b;->c:Landroidx/constraintlayout/core/widgets/d;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/d;->s1()V

    .line 36
    .line 37
    .line 38
    return-void
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
.end method


# virtual methods
.method public d(Landroidx/constraintlayout/core/widgets/d;IIIIIIIII)J
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p5

    .line 8
    .line 9
    move/from16 v4, p7

    .line 10
    .line 11
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/d;->I1()Landroidx/constraintlayout/core/widgets/analyzer/b$b;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    iget-object v6, v1, Lq/c;->L0:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W()I

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()I

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    const/16 v9, 0x80

    .line 30
    .line 31
    invoke-static {v2, v9}, Landroidx/constraintlayout/core/widgets/g;->b(II)Z

    .line 32
    .line 33
    .line 34
    move-result v9

    .line 35
    const/4 v10, 0x0

    .line 36
    if-nez v9, :cond_1

    .line 37
    .line 38
    const/16 v12, 0x40

    .line 39
    .line 40
    invoke-static {v2, v12}, Landroidx/constraintlayout/core/widgets/g;->b(II)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move v2, v10

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 50
    :goto_1
    if-eqz v2, :cond_a

    .line 51
    .line 52
    move v12, v10

    .line 53
    :goto_2
    if-ge v12, v6, :cond_a

    .line 54
    .line 55
    iget-object v13, v1, Lq/c;->L0:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v13

    .line 61
    check-cast v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 62
    .line 63
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->A()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 64
    .line 65
    .line 66
    move-result-object v14

    .line 67
    sget-object v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 68
    .line 69
    if-ne v14, v15, :cond_2

    .line 70
    .line 71
    const/4 v14, 0x1

    .line 72
    goto :goto_3

    .line 73
    :cond_2
    move v14, v10

    .line 74
    :goto_3
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 75
    .line 76
    .line 77
    move-result-object v11

    .line 78
    if-ne v11, v15, :cond_3

    .line 79
    .line 80
    const/4 v11, 0x1

    .line 81
    goto :goto_4

    .line 82
    :cond_3
    move v11, v10

    .line 83
    :goto_4
    if-eqz v14, :cond_4

    .line 84
    .line 85
    if-eqz v11, :cond_4

    .line 86
    .line 87
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()F

    .line 88
    .line 89
    .line 90
    move-result v11

    .line 91
    const/4 v14, 0x0

    .line 92
    cmpl-float v11, v11, v14

    .line 93
    .line 94
    if-lez v11, :cond_4

    .line 95
    .line 96
    const/4 v11, 0x1

    .line 97
    goto :goto_5

    .line 98
    :cond_4
    move v11, v10

    .line 99
    :goto_5
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i0()Z

    .line 100
    .line 101
    .line 102
    move-result v14

    .line 103
    if-eqz v14, :cond_6

    .line 104
    .line 105
    if-eqz v11, :cond_6

    .line 106
    .line 107
    :cond_5
    :goto_6
    move v2, v10

    .line 108
    goto :goto_7

    .line 109
    :cond_6
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k0()Z

    .line 110
    .line 111
    .line 112
    move-result v14

    .line 113
    if-eqz v14, :cond_7

    .line 114
    .line 115
    if-eqz v11, :cond_7

    .line 116
    .line 117
    goto :goto_6

    .line 118
    :cond_7
    instance-of v11, v13, Landroidx/constraintlayout/core/widgets/h;

    .line 119
    .line 120
    if-eqz v11, :cond_8

    .line 121
    .line 122
    goto :goto_6

    .line 123
    :cond_8
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i0()Z

    .line 124
    .line 125
    .line 126
    move-result v11

    .line 127
    if-nez v11, :cond_5

    .line 128
    .line 129
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k0()Z

    .line 130
    .line 131
    .line 132
    move-result v11

    .line 133
    if-eqz v11, :cond_9

    .line 134
    .line 135
    goto :goto_6

    .line 136
    :cond_9
    add-int/lit8 v12, v12, 0x1

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_a
    :goto_7
    if-eqz v2, :cond_b

    .line 140
    .line 141
    sget-boolean v11, Landroidx/constraintlayout/core/d;->r:Z

    .line 142
    .line 143
    :cond_b
    const/high16 v11, 0x40000000    # 2.0f

    .line 144
    .line 145
    if-ne v3, v11, :cond_c

    .line 146
    .line 147
    if-eq v4, v11, :cond_d

    .line 148
    .line 149
    :cond_c
    if-eqz v9, :cond_e

    .line 150
    .line 151
    :cond_d
    const/4 v12, 0x1

    .line 152
    goto :goto_8

    .line 153
    :cond_e
    move v12, v10

    .line 154
    :goto_8
    and-int/2addr v2, v12

    .line 155
    const/4 v12, 0x2

    .line 156
    if-eqz v2, :cond_16

    .line 157
    .line 158
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->G()I

    .line 159
    .line 160
    .line 161
    move-result v13

    .line 162
    move/from16 v14, p6

    .line 163
    .line 164
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    .line 165
    .line 166
    .line 167
    move-result v13

    .line 168
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F()I

    .line 169
    .line 170
    .line 171
    move-result v14

    .line 172
    move/from16 v15, p8

    .line 173
    .line 174
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    .line 175
    .line 176
    .line 177
    move-result v14

    .line 178
    if-ne v3, v11, :cond_f

    .line 179
    .line 180
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W()I

    .line 181
    .line 182
    .line 183
    move-result v15

    .line 184
    if-eq v15, v13, :cond_f

    .line 185
    .line 186
    invoke-virtual {v1, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k1(I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/d;->M1()V

    .line 190
    .line 191
    .line 192
    :cond_f
    if-ne v4, v11, :cond_10

    .line 193
    .line 194
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()I

    .line 195
    .line 196
    .line 197
    move-result v13

    .line 198
    if-eq v13, v14, :cond_10

    .line 199
    .line 200
    invoke-virtual {v1, v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L0(I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/d;->M1()V

    .line 204
    .line 205
    .line 206
    :cond_10
    if-ne v3, v11, :cond_11

    .line 207
    .line 208
    if-ne v4, v11, :cond_11

    .line 209
    .line 210
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/core/widgets/d;->F1(Z)Z

    .line 211
    .line 212
    .line 213
    move-result v9

    .line 214
    move v14, v12

    .line 215
    goto :goto_a

    .line 216
    :cond_11
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/core/widgets/d;->G1(Z)Z

    .line 217
    .line 218
    .line 219
    move-result v13

    .line 220
    if-ne v3, v11, :cond_12

    .line 221
    .line 222
    invoke-virtual {v1, v9, v10}, Landroidx/constraintlayout/core/widgets/d;->H1(ZI)Z

    .line 223
    .line 224
    .line 225
    move-result v14

    .line 226
    and-int/2addr v13, v14

    .line 227
    const/4 v14, 0x1

    .line 228
    goto :goto_9

    .line 229
    :cond_12
    move v14, v10

    .line 230
    :goto_9
    if-ne v4, v11, :cond_13

    .line 231
    .line 232
    const/4 v15, 0x1

    .line 233
    invoke-virtual {v1, v9, v15}, Landroidx/constraintlayout/core/widgets/d;->H1(ZI)Z

    .line 234
    .line 235
    .line 236
    move-result v9

    .line 237
    and-int/2addr v9, v13

    .line 238
    add-int/lit8 v14, v14, 0x1

    .line 239
    .line 240
    goto :goto_a

    .line 241
    :cond_13
    move v9, v13

    .line 242
    :goto_a
    if-eqz v9, :cond_17

    .line 243
    .line 244
    if-ne v3, v11, :cond_14

    .line 245
    .line 246
    const/4 v15, 0x1

    .line 247
    goto :goto_b

    .line 248
    :cond_14
    move v15, v10

    .line 249
    :goto_b
    if-ne v4, v11, :cond_15

    .line 250
    .line 251
    const/4 v3, 0x1

    .line 252
    goto :goto_c

    .line 253
    :cond_15
    move v3, v10

    .line 254
    :goto_c
    invoke-virtual {v1, v15, v3}, Landroidx/constraintlayout/core/widgets/d;->p1(ZZ)V

    .line 255
    .line 256
    .line 257
    goto :goto_d

    .line 258
    :cond_16
    move v9, v10

    .line 259
    move v14, v9

    .line 260
    :cond_17
    :goto_d
    if-eqz v9, :cond_18

    .line 261
    .line 262
    if-eq v14, v12, :cond_32

    .line 263
    .line 264
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/d;->J1()I

    .line 265
    .line 266
    .line 267
    move-result v3

    .line 268
    if-lez v6, :cond_19

    .line 269
    .line 270
    invoke-direct/range {p0 .. p1}, Landroidx/constraintlayout/core/widgets/analyzer/b;->b(Landroidx/constraintlayout/core/widgets/d;)V

    .line 271
    .line 272
    .line 273
    :cond_19
    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/core/widgets/analyzer/b;->e(Landroidx/constraintlayout/core/widgets/d;)V

    .line 274
    .line 275
    .line 276
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/b;->a:Ljava/util/ArrayList;

    .line 277
    .line 278
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 279
    .line 280
    .line 281
    move-result v4

    .line 282
    if-lez v6, :cond_1a

    .line 283
    .line 284
    const/4 v6, 0x0

    .line 285
    const-string v9, "First pass"

    .line 286
    .line 287
    move-object/from16 p2, p0

    .line 288
    .line 289
    move-object/from16 p3, p1

    .line 290
    .line 291
    move-object/from16 p4, v9

    .line 292
    .line 293
    move/from16 p5, v6

    .line 294
    .line 295
    move/from16 p6, v7

    .line 296
    .line 297
    move/from16 p7, v8

    .line 298
    .line 299
    invoke-direct/range {p2 .. p7}, Landroidx/constraintlayout/core/widgets/analyzer/b;->c(Landroidx/constraintlayout/core/widgets/d;Ljava/lang/String;III)V

    .line 300
    .line 301
    .line 302
    :cond_1a
    if-lez v4, :cond_31

    .line 303
    .line 304
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->A()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 305
    .line 306
    .line 307
    move-result-object v6

    .line 308
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 309
    .line 310
    if-ne v6, v9, :cond_1b

    .line 311
    .line 312
    const/4 v15, 0x1

    .line 313
    goto :goto_e

    .line 314
    :cond_1b
    move v15, v10

    .line 315
    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 316
    .line 317
    .line 318
    move-result-object v6

    .line 319
    if-ne v6, v9, :cond_1c

    .line 320
    .line 321
    const/4 v6, 0x1

    .line 322
    goto :goto_f

    .line 323
    :cond_1c
    move v6, v10

    .line 324
    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W()I

    .line 325
    .line 326
    .line 327
    move-result v9

    .line 328
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/analyzer/b;->c:Landroidx/constraintlayout/core/widgets/d;

    .line 329
    .line 330
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I()I

    .line 331
    .line 332
    .line 333
    move-result v11

    .line 334
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    .line 335
    .line 336
    .line 337
    move-result v9

    .line 338
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()I

    .line 339
    .line 340
    .line 341
    move-result v11

    .line 342
    iget-object v13, v0, Landroidx/constraintlayout/core/widgets/analyzer/b;->c:Landroidx/constraintlayout/core/widgets/d;

    .line 343
    .line 344
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H()I

    .line 345
    .line 346
    .line 347
    move-result v13

    .line 348
    invoke-static {v11, v13}, Ljava/lang/Math;->max(II)I

    .line 349
    .line 350
    .line 351
    move-result v11

    .line 352
    move v13, v10

    .line 353
    move v14, v13

    .line 354
    :goto_10
    if-ge v13, v4, :cond_22

    .line 355
    .line 356
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/analyzer/b;->a:Ljava/util/ArrayList;

    .line 357
    .line 358
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v10

    .line 362
    check-cast v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 363
    .line 364
    instance-of v12, v10, Landroidx/constraintlayout/core/widgets/h;

    .line 365
    .line 366
    if-nez v12, :cond_1d

    .line 367
    .line 368
    move/from16 p8, v3

    .line 369
    .line 370
    goto :goto_12

    .line 371
    :cond_1d
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W()I

    .line 372
    .line 373
    .line 374
    move-result v12

    .line 375
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()I

    .line 376
    .line 377
    .line 378
    move-result v1

    .line 379
    move/from16 p8, v3

    .line 380
    .line 381
    sget v3, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->l:I

    .line 382
    .line 383
    invoke-direct {v0, v5, v10, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->a(Landroidx/constraintlayout/core/widgets/analyzer/b$b;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)Z

    .line 384
    .line 385
    .line 386
    move-result v3

    .line 387
    or-int/2addr v3, v14

    .line 388
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W()I

    .line 389
    .line 390
    .line 391
    move-result v14

    .line 392
    move/from16 p2, v3

    .line 393
    .line 394
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()I

    .line 395
    .line 396
    .line 397
    move-result v3

    .line 398
    if-eq v14, v12, :cond_1f

    .line 399
    .line 400
    invoke-virtual {v10, v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k1(I)V

    .line 401
    .line 402
    .line 403
    if-eqz v15, :cond_1e

    .line 404
    .line 405
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M()I

    .line 406
    .line 407
    .line 408
    move-result v12

    .line 409
    if-le v12, v9, :cond_1e

    .line 410
    .line 411
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M()I

    .line 412
    .line 413
    .line 414
    move-result v12

    .line 415
    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 416
    .line 417
    invoke-virtual {v10, v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 418
    .line 419
    .line 420
    move-result-object v14

    .line 421
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()I

    .line 422
    .line 423
    .line 424
    move-result v14

    .line 425
    add-int/2addr v12, v14

    .line 426
    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    .line 427
    .line 428
    .line 429
    move-result v9

    .line 430
    :cond_1e
    const/4 v12, 0x1

    .line 431
    goto :goto_11

    .line 432
    :cond_1f
    move/from16 v12, p2

    .line 433
    .line 434
    :goto_11
    if-eq v3, v1, :cond_21

    .line 435
    .line 436
    invoke-virtual {v10, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L0(I)V

    .line 437
    .line 438
    .line 439
    if-eqz v6, :cond_20

    .line 440
    .line 441
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r()I

    .line 442
    .line 443
    .line 444
    move-result v1

    .line 445
    if-le v1, v11, :cond_20

    .line 446
    .line 447
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r()I

    .line 448
    .line 449
    .line 450
    move-result v1

    .line 451
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 452
    .line 453
    invoke-virtual {v10, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 454
    .line 455
    .line 456
    move-result-object v3

    .line 457
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()I

    .line 458
    .line 459
    .line 460
    move-result v3

    .line 461
    add-int/2addr v1, v3

    .line 462
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    .line 463
    .line 464
    .line 465
    move-result v1

    .line 466
    move v11, v1

    .line 467
    :cond_20
    const/4 v12, 0x1

    .line 468
    :cond_21
    check-cast v10, Landroidx/constraintlayout/core/widgets/h;

    .line 469
    .line 470
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/h;->F1()Z

    .line 471
    .line 472
    .line 473
    move-result v1

    .line 474
    or-int v14, v12, v1

    .line 475
    .line 476
    :goto_12
    add-int/lit8 v13, v13, 0x1

    .line 477
    .line 478
    move-object/from16 v1, p1

    .line 479
    .line 480
    move/from16 v3, p8

    .line 481
    .line 482
    const/4 v10, 0x0

    .line 483
    const/4 v12, 0x2

    .line 484
    goto/16 :goto_10

    .line 485
    .line 486
    :cond_22
    move/from16 p8, v3

    .line 487
    .line 488
    move v3, v12

    .line 489
    const/4 v1, 0x0

    .line 490
    :goto_13
    if-ge v1, v3, :cond_30

    .line 491
    .line 492
    const/4 v10, 0x0

    .line 493
    :goto_14
    if-ge v10, v4, :cond_2f

    .line 494
    .line 495
    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/analyzer/b;->a:Ljava/util/ArrayList;

    .line 496
    .line 497
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v12

    .line 501
    check-cast v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 502
    .line 503
    instance-of v13, v12, Lq/a;

    .line 504
    .line 505
    if-eqz v13, :cond_23

    .line 506
    .line 507
    instance-of v13, v12, Landroidx/constraintlayout/core/widgets/h;

    .line 508
    .line 509
    if-eqz v13, :cond_27

    .line 510
    .line 511
    :cond_23
    instance-of v13, v12, Landroidx/constraintlayout/core/widgets/f;

    .line 512
    .line 513
    if-eqz v13, :cond_24

    .line 514
    .line 515
    goto :goto_15

    .line 516
    :cond_24
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V()I

    .line 517
    .line 518
    .line 519
    move-result v13

    .line 520
    const/16 v3, 0x8

    .line 521
    .line 522
    if-ne v13, v3, :cond_25

    .line 523
    .line 524
    goto :goto_15

    .line 525
    :cond_25
    if-eqz v2, :cond_26

    .line 526
    .line 527
    iget-object v3, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/k;

    .line 528
    .line 529
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 530
    .line 531
    iget-boolean v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 532
    .line 533
    if-eqz v3, :cond_26

    .line 534
    .line 535
    iget-object v3, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f:Landroidx/constraintlayout/core/widgets/analyzer/m;

    .line 536
    .line 537
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 538
    .line 539
    iget-boolean v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 540
    .line 541
    if-eqz v3, :cond_26

    .line 542
    .line 543
    goto :goto_15

    .line 544
    :cond_26
    instance-of v3, v12, Landroidx/constraintlayout/core/widgets/h;

    .line 545
    .line 546
    if-eqz v3, :cond_28

    .line 547
    .line 548
    :cond_27
    :goto_15
    move/from16 v16, v2

    .line 549
    .line 550
    move/from16 v18, v4

    .line 551
    .line 552
    goto/16 :goto_16

    .line 553
    .line 554
    :cond_28
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W()I

    .line 555
    .line 556
    .line 557
    move-result v3

    .line 558
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()I

    .line 559
    .line 560
    .line 561
    move-result v13

    .line 562
    move/from16 v16, v2

    .line 563
    .line 564
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p()I

    .line 565
    .line 566
    .line 567
    move-result v2

    .line 568
    sget v17, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->l:I

    .line 569
    .line 570
    move/from16 v18, v4

    .line 571
    .line 572
    const/4 v4, 0x1

    .line 573
    if-ne v1, v4, :cond_29

    .line 574
    .line 575
    sget v17, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->m:I

    .line 576
    .line 577
    :cond_29
    move/from16 v4, v17

    .line 578
    .line 579
    invoke-direct {v0, v5, v12, v4}, Landroidx/constraintlayout/core/widgets/analyzer/b;->a(Landroidx/constraintlayout/core/widgets/analyzer/b$b;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)Z

    .line 580
    .line 581
    .line 582
    move-result v4

    .line 583
    or-int/2addr v4, v14

    .line 584
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W()I

    .line 585
    .line 586
    .line 587
    move-result v14

    .line 588
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()I

    .line 589
    .line 590
    .line 591
    move-result v0

    .line 592
    if-eq v14, v3, :cond_2b

    .line 593
    .line 594
    invoke-virtual {v12, v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k1(I)V

    .line 595
    .line 596
    .line 597
    if-eqz v15, :cond_2a

    .line 598
    .line 599
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M()I

    .line 600
    .line 601
    .line 602
    move-result v3

    .line 603
    if-le v3, v9, :cond_2a

    .line 604
    .line 605
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M()I

    .line 606
    .line 607
    .line 608
    move-result v3

    .line 609
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 610
    .line 611
    invoke-virtual {v12, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 612
    .line 613
    .line 614
    move-result-object v4

    .line 615
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()I

    .line 616
    .line 617
    .line 618
    move-result v4

    .line 619
    add-int/2addr v3, v4

    .line 620
    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    .line 621
    .line 622
    .line 623
    move-result v9

    .line 624
    :cond_2a
    const/4 v4, 0x1

    .line 625
    :cond_2b
    if-eq v0, v13, :cond_2d

    .line 626
    .line 627
    invoke-virtual {v12, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L0(I)V

    .line 628
    .line 629
    .line 630
    if-eqz v6, :cond_2c

    .line 631
    .line 632
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r()I

    .line 633
    .line 634
    .line 635
    move-result v0

    .line 636
    if-le v0, v11, :cond_2c

    .line 637
    .line 638
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r()I

    .line 639
    .line 640
    .line 641
    move-result v0

    .line 642
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 643
    .line 644
    invoke-virtual {v12, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 645
    .line 646
    .line 647
    move-result-object v3

    .line 648
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()I

    .line 649
    .line 650
    .line 651
    move-result v3

    .line 652
    add-int/2addr v0, v3

    .line 653
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    .line 654
    .line 655
    .line 656
    move-result v0

    .line 657
    move v11, v0

    .line 658
    :cond_2c
    const/4 v4, 0x1

    .line 659
    :cond_2d
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z()Z

    .line 660
    .line 661
    .line 662
    move-result v0

    .line 663
    if-eqz v0, :cond_2e

    .line 664
    .line 665
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p()I

    .line 666
    .line 667
    .line 668
    move-result v0

    .line 669
    if-eq v2, v0, :cond_2e

    .line 670
    .line 671
    const/4 v14, 0x1

    .line 672
    goto :goto_16

    .line 673
    :cond_2e
    move v14, v4

    .line 674
    :goto_16
    add-int/lit8 v10, v10, 0x1

    .line 675
    .line 676
    move-object/from16 v0, p0

    .line 677
    .line 678
    move/from16 v2, v16

    .line 679
    .line 680
    move/from16 v4, v18

    .line 681
    .line 682
    const/4 v3, 0x2

    .line 683
    goto/16 :goto_14

    .line 684
    .line 685
    :cond_2f
    move/from16 v16, v2

    .line 686
    .line 687
    move/from16 v18, v4

    .line 688
    .line 689
    if-eqz v14, :cond_30

    .line 690
    .line 691
    add-int/lit8 v1, v1, 0x1

    .line 692
    .line 693
    const-string v0, "intermediate pass"

    .line 694
    .line 695
    move-object/from16 p2, p0

    .line 696
    .line 697
    move-object/from16 p3, p1

    .line 698
    .line 699
    move-object/from16 p4, v0

    .line 700
    .line 701
    move/from16 p5, v1

    .line 702
    .line 703
    move/from16 p6, v7

    .line 704
    .line 705
    move/from16 p7, v8

    .line 706
    .line 707
    invoke-direct/range {p2 .. p7}, Landroidx/constraintlayout/core/widgets/analyzer/b;->c(Landroidx/constraintlayout/core/widgets/d;Ljava/lang/String;III)V

    .line 708
    .line 709
    .line 710
    move-object/from16 v0, p0

    .line 711
    .line 712
    move/from16 v2, v16

    .line 713
    .line 714
    move/from16 v4, v18

    .line 715
    .line 716
    const/4 v3, 0x2

    .line 717
    const/4 v14, 0x0

    .line 718
    goto/16 :goto_13

    .line 719
    .line 720
    :cond_30
    move-object/from16 v0, p1

    .line 721
    .line 722
    move/from16 v1, p8

    .line 723
    .line 724
    goto :goto_17

    .line 725
    :cond_31
    move-object/from16 v0, p1

    .line 726
    .line 727
    move v1, v3

    .line 728
    :goto_17
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/d;->W1(I)V

    .line 729
    .line 730
    .line 731
    :cond_32
    const-wide/16 v0, 0x0

    .line 732
    .line 733
    return-wide v0
.end method

.method public e(Landroidx/constraintlayout/core/widgets/d;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/b;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lq/c;->L0:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_2

    .line 14
    .line 15
    iget-object v2, p1, Lq/c;->L0:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->A()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 28
    .line 29
    if-eq v3, v4, :cond_0

    .line 30
    .line 31
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    if-ne v3, v4, :cond_1

    .line 36
    .line 37
    :cond_0
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/b;->a:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/d;->M1()V

    .line 46
    .line 47
    .line 48
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
.end method

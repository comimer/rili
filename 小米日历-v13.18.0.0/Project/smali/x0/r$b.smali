.class Lx0/r$b;
.super Landroidx/room/d;
.source "WorkSpecDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx0/r;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/d<",
        "Lx0/p;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lx0/r;


# direct methods
.method constructor <init>(Lx0/r;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx0/r$b;->a:Lx0/r;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/room/d;-><init>(Landroidx/room/RoomDatabase;)V

    .line 4
    .line 5
    .line 6
    return-void
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
.end method


# virtual methods
.method public a(Ll0/f;Lx0/p;)V
    .locals 10

    .line 1
    iget-object v0, p2, Lx0/p;->a:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-interface {p1, v1}, Ll0/d;->X(I)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {p1, v1, v0}, Ll0/d;->l(ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :goto_0
    iget-object v0, p2, Lx0/p;->b:Landroidx/work/WorkInfo$State;

    .line 14
    .line 15
    invoke-static {v0}, Lx0/v;->j(Landroidx/work/WorkInfo$State;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x2

    .line 20
    int-to-long v2, v0

    .line 21
    invoke-interface {p1, v1, v2, v3}, Ll0/d;->B(IJ)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p2, Lx0/p;->c:Ljava/lang/String;

    .line 25
    .line 26
    const/4 v1, 0x3

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    invoke-interface {p1, v1}, Ll0/d;->X(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-interface {p1, v1, v0}, Ll0/d;->l(ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :goto_1
    iget-object v0, p2, Lx0/p;->d:Ljava/lang/String;

    .line 37
    .line 38
    const/4 v1, 0x4

    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    invoke-interface {p1, v1}, Ll0/d;->X(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    invoke-interface {p1, v1, v0}, Ll0/d;->l(ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :goto_2
    iget-object v0, p2, Lx0/p;->e:Landroidx/work/d;

    .line 49
    .line 50
    invoke-static {v0}, Landroidx/work/d;->k(Landroidx/work/d;)[B

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const/4 v1, 0x5

    .line 55
    if-nez v0, :cond_3

    .line 56
    .line 57
    invoke-interface {p1, v1}, Ll0/d;->X(I)V

    .line 58
    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_3
    invoke-interface {p1, v1, v0}, Ll0/d;->F(I[B)V

    .line 62
    .line 63
    .line 64
    :goto_3
    iget-object v0, p2, Lx0/p;->f:Landroidx/work/d;

    .line 65
    .line 66
    invoke-static {v0}, Landroidx/work/d;->k(Landroidx/work/d;)[B

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const/4 v1, 0x6

    .line 71
    if-nez v0, :cond_4

    .line 72
    .line 73
    invoke-interface {p1, v1}, Ll0/d;->X(I)V

    .line 74
    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_4
    invoke-interface {p1, v1, v0}, Ll0/d;->F(I[B)V

    .line 78
    .line 79
    .line 80
    :goto_4
    const/4 v0, 0x7

    .line 81
    iget-wide v1, p2, Lx0/p;->g:J

    .line 82
    .line 83
    invoke-interface {p1, v0, v1, v2}, Ll0/d;->B(IJ)V

    .line 84
    .line 85
    .line 86
    const/16 v0, 0x8

    .line 87
    .line 88
    iget-wide v1, p2, Lx0/p;->h:J

    .line 89
    .line 90
    invoke-interface {p1, v0, v1, v2}, Ll0/d;->B(IJ)V

    .line 91
    .line 92
    .line 93
    const/16 v0, 0x9

    .line 94
    .line 95
    iget-wide v1, p2, Lx0/p;->i:J

    .line 96
    .line 97
    invoke-interface {p1, v0, v1, v2}, Ll0/d;->B(IJ)V

    .line 98
    .line 99
    .line 100
    const/16 v0, 0xa

    .line 101
    .line 102
    iget v1, p2, Lx0/p;->k:I

    .line 103
    .line 104
    int-to-long v1, v1

    .line 105
    invoke-interface {p1, v0, v1, v2}, Ll0/d;->B(IJ)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p2, Lx0/p;->l:Landroidx/work/BackoffPolicy;

    .line 109
    .line 110
    invoke-static {v0}, Lx0/v;->a(Landroidx/work/BackoffPolicy;)I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    const/16 v1, 0xb

    .line 115
    .line 116
    int-to-long v2, v0

    .line 117
    invoke-interface {p1, v1, v2, v3}, Ll0/d;->B(IJ)V

    .line 118
    .line 119
    .line 120
    const/16 v0, 0xc

    .line 121
    .line 122
    iget-wide v1, p2, Lx0/p;->m:J

    .line 123
    .line 124
    invoke-interface {p1, v0, v1, v2}, Ll0/d;->B(IJ)V

    .line 125
    .line 126
    .line 127
    const/16 v0, 0xd

    .line 128
    .line 129
    iget-wide v1, p2, Lx0/p;->n:J

    .line 130
    .line 131
    invoke-interface {p1, v0, v1, v2}, Ll0/d;->B(IJ)V

    .line 132
    .line 133
    .line 134
    const/16 v0, 0xe

    .line 135
    .line 136
    iget-wide v1, p2, Lx0/p;->o:J

    .line 137
    .line 138
    invoke-interface {p1, v0, v1, v2}, Ll0/d;->B(IJ)V

    .line 139
    .line 140
    .line 141
    const/16 v0, 0xf

    .line 142
    .line 143
    iget-wide v1, p2, Lx0/p;->p:J

    .line 144
    .line 145
    invoke-interface {p1, v0, v1, v2}, Ll0/d;->B(IJ)V

    .line 146
    .line 147
    .line 148
    iget-boolean v0, p2, Lx0/p;->q:Z

    .line 149
    .line 150
    const/16 v1, 0x10

    .line 151
    .line 152
    int-to-long v2, v0

    .line 153
    invoke-interface {p1, v1, v2, v3}, Ll0/d;->B(IJ)V

    .line 154
    .line 155
    .line 156
    iget-object v0, p2, Lx0/p;->r:Landroidx/work/OutOfQuotaPolicy;

    .line 157
    .line 158
    invoke-static {v0}, Lx0/v;->i(Landroidx/work/OutOfQuotaPolicy;)I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    const/16 v1, 0x11

    .line 163
    .line 164
    int-to-long v2, v0

    .line 165
    invoke-interface {p1, v1, v2, v3}, Ll0/d;->B(IJ)V

    .line 166
    .line 167
    .line 168
    iget-object p2, p2, Lx0/p;->j:Landroidx/work/b;

    .line 169
    .line 170
    const/16 v0, 0x18

    .line 171
    .line 172
    const/16 v1, 0x17

    .line 173
    .line 174
    const/16 v2, 0x16

    .line 175
    .line 176
    const/16 v3, 0x15

    .line 177
    .line 178
    const/16 v4, 0x14

    .line 179
    .line 180
    const/16 v5, 0x13

    .line 181
    .line 182
    const/16 v6, 0x12

    .line 183
    .line 184
    const/16 v7, 0x19

    .line 185
    .line 186
    if-eqz p2, :cond_6

    .line 187
    .line 188
    invoke-virtual {p2}, Landroidx/work/b;->b()Landroidx/work/NetworkType;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    invoke-static {v8}, Lx0/v;->h(Landroidx/work/NetworkType;)I

    .line 193
    .line 194
    .line 195
    move-result v8

    .line 196
    int-to-long v8, v8

    .line 197
    invoke-interface {p1, v6, v8, v9}, Ll0/d;->B(IJ)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p2}, Landroidx/work/b;->g()Z

    .line 201
    .line 202
    .line 203
    move-result v6

    .line 204
    int-to-long v8, v6

    .line 205
    invoke-interface {p1, v5, v8, v9}, Ll0/d;->B(IJ)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p2}, Landroidx/work/b;->h()Z

    .line 209
    .line 210
    .line 211
    move-result v5

    .line 212
    int-to-long v5, v5

    .line 213
    invoke-interface {p1, v4, v5, v6}, Ll0/d;->B(IJ)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p2}, Landroidx/work/b;->f()Z

    .line 217
    .line 218
    .line 219
    move-result v4

    .line 220
    int-to-long v4, v4

    .line 221
    invoke-interface {p1, v3, v4, v5}, Ll0/d;->B(IJ)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p2}, Landroidx/work/b;->i()Z

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    int-to-long v3, v3

    .line 229
    invoke-interface {p1, v2, v3, v4}, Ll0/d;->B(IJ)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p2}, Landroidx/work/b;->c()J

    .line 233
    .line 234
    .line 235
    move-result-wide v2

    .line 236
    invoke-interface {p1, v1, v2, v3}, Ll0/d;->B(IJ)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p2}, Landroidx/work/b;->d()J

    .line 240
    .line 241
    .line 242
    move-result-wide v1

    .line 243
    invoke-interface {p1, v0, v1, v2}, Ll0/d;->B(IJ)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p2}, Landroidx/work/b;->a()Landroidx/work/c;

    .line 247
    .line 248
    .line 249
    move-result-object p2

    .line 250
    invoke-static {p2}, Lx0/v;->c(Landroidx/work/c;)[B

    .line 251
    .line 252
    .line 253
    move-result-object p2

    .line 254
    if-nez p2, :cond_5

    .line 255
    .line 256
    invoke-interface {p1, v7}, Ll0/d;->X(I)V

    .line 257
    .line 258
    .line 259
    goto :goto_5

    .line 260
    :cond_5
    invoke-interface {p1, v7, p2}, Ll0/d;->F(I[B)V

    .line 261
    .line 262
    .line 263
    goto :goto_5

    .line 264
    :cond_6
    invoke-interface {p1, v6}, Ll0/d;->X(I)V

    .line 265
    .line 266
    .line 267
    invoke-interface {p1, v5}, Ll0/d;->X(I)V

    .line 268
    .line 269
    .line 270
    invoke-interface {p1, v4}, Ll0/d;->X(I)V

    .line 271
    .line 272
    .line 273
    invoke-interface {p1, v3}, Ll0/d;->X(I)V

    .line 274
    .line 275
    .line 276
    invoke-interface {p1, v2}, Ll0/d;->X(I)V

    .line 277
    .line 278
    .line 279
    invoke-interface {p1, v1}, Ll0/d;->X(I)V

    .line 280
    .line 281
    .line 282
    invoke-interface {p1, v0}, Ll0/d;->X(I)V

    .line 283
    .line 284
    .line 285
    invoke-interface {p1, v7}, Ll0/d;->X(I)V

    .line 286
    .line 287
    .line 288
    :goto_5
    return-void
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

.method public bridge synthetic bind(Ll0/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lx0/p;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lx0/r$b;->a(Ll0/f;Lx0/p;)V

    .line 4
    .line 5
    .line 6
    return-void
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
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`period_start_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method

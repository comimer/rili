.class public Lcom/android/calendar/cards/t$d;
.super Ljava/lang/Object;
.source "CardController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/cards/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public static a(ILcom/android/calendar/cards/t;)Lcom/android/calendar/cards/b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/calendar/cards/t;",
            ")",
            "Lcom/android/calendar/cards/b<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/miui/calendar/util/DeviceUtils;->M()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "Cal:D:CardController"

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x0

    .line 9
    const/16 v4, 0x14

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    if-eq p0, v2, :cond_0

    .line 14
    .line 15
    if-eq p0, v4, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Lcom/android/calendar/cards/t;->w(I)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v0, "createSingleCard() New MIUI Lite device not support card type:"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {v1, p0}, Lcom/miui/calendar/util/z;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-object v3

    .line 44
    :cond_1
    if-ne p0, v4, :cond_2

    .line 45
    .line 46
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0}, Lcom/android/calendar/settings/j;->g(Landroid/content/Context;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v0, "createSingleCard() content promotion setting off, card type:"

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {v1, p0}, Lcom/miui/calendar/util/z;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-object v3

    .line 77
    :cond_2
    if-eqz p0, :cond_f

    .line 78
    .line 79
    const/4 v0, 0x1

    .line 80
    if-eq p0, v0, :cond_e

    .line 81
    .line 82
    if-eq p0, v2, :cond_d

    .line 83
    .line 84
    const/4 v0, 0x3

    .line 85
    if-eq p0, v0, :cond_c

    .line 86
    .line 87
    if-eq p0, v4, :cond_b

    .line 88
    .line 89
    const/16 v0, 0x1c

    .line 90
    .line 91
    if-eq p0, v0, :cond_a

    .line 92
    .line 93
    const/16 v0, 0x2a

    .line 94
    .line 95
    if-eq p0, v0, :cond_9

    .line 96
    .line 97
    const/16 v0, 0x2f

    .line 98
    .line 99
    if-eq p0, v0, :cond_8

    .line 100
    .line 101
    const/16 v0, 0x64

    .line 102
    .line 103
    if-eq p0, v0, :cond_7

    .line 104
    .line 105
    const/16 v0, 0x34

    .line 106
    .line 107
    if-eq p0, v0, :cond_6

    .line 108
    .line 109
    const/16 v0, 0x35

    .line 110
    .line 111
    if-eq p0, v0, :cond_5

    .line 112
    .line 113
    const/16 v0, 0x39

    .line 114
    .line 115
    if-eq p0, v0, :cond_4

    .line 116
    .line 117
    const/16 v0, 0x3a

    .line 118
    .line 119
    if-eq p0, v0, :cond_3

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_3
    new-instance v3, Lcom/android/calendar/cards/ClassSchedulePresenter;

    .line 123
    .line 124
    invoke-direct {v3, p1}, Lcom/android/calendar/cards/ClassSchedulePresenter;-><init>(Lcom/android/calendar/cards/t;)V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_4
    new-instance v3, Lcom/android/calendar/cards/l1;

    .line 129
    .line 130
    invoke-direct {v3, p1}, Lcom/android/calendar/cards/l1;-><init>(Lcom/android/calendar/cards/t;)V

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_5
    new-instance v3, Lcom/android/calendar/cards/ShiftPresenter;

    .line 135
    .line 136
    invoke-direct {v3, p1}, Lcom/android/calendar/cards/ShiftPresenter;-><init>(Lcom/android/calendar/cards/t;)V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_6
    new-instance v3, Lcom/android/calendar/cards/f1;

    .line 141
    .line 142
    invoke-direct {v3, p1}, Lcom/android/calendar/cards/f1;-><init>(Lcom/android/calendar/cards/t;)V

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_7
    new-instance v3, Lcom/android/calendar/cards/m0;

    .line 147
    .line 148
    invoke-direct {v3, p1}, Lcom/android/calendar/cards/m0;-><init>(Lcom/android/calendar/cards/t;)V

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_8
    new-instance v3, Lcom/android/calendar/cards/t0;

    .line 153
    .line 154
    invoke-direct {v3, p1}, Lcom/android/calendar/cards/t0;-><init>(Lcom/android/calendar/cards/t;)V

    .line 155
    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_9
    new-instance v3, Lcom/android/calendar/cards/FortunePresenter;

    .line 159
    .line 160
    invoke-direct {v3, p1}, Lcom/android/calendar/cards/FortunePresenter;-><init>(Lcom/android/calendar/cards/t;)V

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_a
    new-instance v3, Lcom/android/calendar/cards/HoroscopePresenter;

    .line 165
    .line 166
    invoke-direct {v3, p1}, Lcom/android/calendar/cards/HoroscopePresenter;-><init>(Lcom/android/calendar/cards/t;)V

    .line 167
    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_b
    new-instance v3, Lcom/android/calendar/cards/m;

    .line 171
    .line 172
    invoke-direct {v3, p1}, Lcom/android/calendar/cards/m;-><init>(Lcom/android/calendar/cards/t;)V

    .line 173
    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_c
    new-instance v3, Lcom/android/calendar/cards/e2;

    .line 177
    .line 178
    invoke-direct {v3, p1}, Lcom/android/calendar/cards/e2;-><init>(Lcom/android/calendar/cards/t;)V

    .line 179
    .line 180
    .line 181
    goto :goto_0

    .line 182
    :cond_d
    new-instance v3, Lcom/android/calendar/cards/x0;

    .line 183
    .line 184
    invoke-direct {v3, p1}, Lcom/android/calendar/cards/x0;-><init>(Lcom/android/calendar/cards/t;)V

    .line 185
    .line 186
    .line 187
    goto :goto_0

    .line 188
    :cond_e
    new-instance v3, Lcom/android/calendar/cards/SummaryPresenter;

    .line 189
    .line 190
    invoke-direct {v3, p1}, Lcom/android/calendar/cards/SummaryPresenter;-><init>(Lcom/android/calendar/cards/t;)V

    .line 191
    .line 192
    .line 193
    goto :goto_0

    .line 194
    :cond_f
    new-instance v3, Lcom/android/calendar/cards/k0;

    .line 195
    .line 196
    invoke-direct {v3, p1}, Lcom/android/calendar/cards/k0;-><init>(Lcom/android/calendar/cards/t;)V

    .line 197
    .line 198
    .line 199
    :goto_0
    return-object v3
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

.method public static b(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 4

    .line 1
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const/16 v0, 0x14

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz p1, :cond_c

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-eq p1, v3, :cond_b

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    if-eq p1, v3, :cond_a

    .line 16
    .line 17
    const/4 v3, 0x3

    .line 18
    if-eq p1, v3, :cond_9

    .line 19
    .line 20
    if-eq p1, v0, :cond_8

    .line 21
    .line 22
    const/16 v3, 0x1c

    .line 23
    .line 24
    if-eq p1, v3, :cond_7

    .line 25
    .line 26
    const/16 v3, 0x2a

    .line 27
    .line 28
    if-eq p1, v3, :cond_6

    .line 29
    .line 30
    const/16 v3, 0x2f

    .line 31
    .line 32
    if-eq p1, v3, :cond_5

    .line 33
    .line 34
    const/16 v3, 0x64

    .line 35
    .line 36
    if-eq p1, v3, :cond_4

    .line 37
    .line 38
    const/16 v3, 0x34

    .line 39
    .line 40
    if-eq p1, v3, :cond_3

    .line 41
    .line 42
    const/16 v3, 0x35

    .line 43
    .line 44
    if-eq p1, v3, :cond_2

    .line 45
    .line 46
    const/16 v3, 0x39

    .line 47
    .line 48
    if-eq p1, v3, :cond_1

    .line 49
    .line 50
    const/16 v3, 0x3a

    .line 51
    .line 52
    if-eq p1, v3, :cond_0

    .line 53
    .line 54
    move-object p0, v1

    .line 55
    goto/16 :goto_0

    .line 56
    .line 57
    :cond_0
    const v1, 0x7f0d0069

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    new-instance p0, Lcom/android/calendar/cards/d0$b;

    .line 65
    .line 66
    invoke-direct {p0, v1}, Lcom/android/calendar/cards/d0$b;-><init>(Landroid/view/View;)V

    .line 67
    .line 68
    .line 69
    goto/16 :goto_0

    .line 70
    .line 71
    :cond_1
    const v1, 0x7f0d0111

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    new-instance p0, Lcom/android/calendar/cards/j1$a;

    .line 79
    .line 80
    invoke-direct {p0, v1}, Lcom/android/calendar/cards/j1$a;-><init>(Landroid/view/View;)V

    .line 81
    .line 82
    .line 83
    goto/16 :goto_0

    .line 84
    .line 85
    :cond_2
    const v1, 0x7f0d0214

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    new-instance p0, Lcom/android/calendar/cards/q1$a;

    .line 93
    .line 94
    invoke-direct {p0, v1}, Lcom/android/calendar/cards/q1$a;-><init>(Landroid/view/View;)V

    .line 95
    .line 96
    .line 97
    goto/16 :goto_0

    .line 98
    .line 99
    :cond_3
    const v1, 0x7f0d0101

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    new-instance p0, Lcom/android/calendar/cards/d1$a;

    .line 107
    .line 108
    invoke-direct {p0, v1}, Lcom/android/calendar/cards/d1$a;-><init>(Landroid/view/View;)V

    .line 109
    .line 110
    .line 111
    goto/16 :goto_0

    .line 112
    .line 113
    :cond_4
    const v1, 0x7f0d00a9

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    new-instance p0, Lcom/android/calendar/cards/l0$a;

    .line 121
    .line 122
    invoke-direct {p0, v1}, Lcom/android/calendar/cards/l0$a;-><init>(Landroid/view/View;)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_5
    const v1, 0x7f0d00c6

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    new-instance p0, Lcom/android/calendar/cards/r0$b;

    .line 134
    .line 135
    invoke-direct {p0, v1}, Lcom/android/calendar/cards/r0$b;-><init>(Landroid/view/View;)V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_6
    const v1, 0x7f0d00aa

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    new-instance p0, Lcom/android/calendar/cards/p0$a;

    .line 147
    .line 148
    invoke-direct {p0, v1}, Lcom/android/calendar/cards/p0$a;-><init>(Landroid/view/View;)V

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_7
    const v1, 0x7f0d00d3

    .line 153
    .line 154
    .line 155
    invoke-virtual {p2, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    new-instance p0, Lcom/android/calendar/cards/a1$b;

    .line 160
    .line 161
    invoke-direct {p0, v1}, Lcom/android/calendar/cards/a1$b;-><init>(Landroid/view/View;)V

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_8
    const v1, 0x7f0d0036

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    new-instance p0, Lcom/android/calendar/cards/j$b;

    .line 173
    .line 174
    invoke-direct {p0, v1}, Lcom/android/calendar/cards/j$b;-><init>(Landroid/view/View;)V

    .line 175
    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_9
    const v1, 0x7f0d023f

    .line 179
    .line 180
    .line 181
    invoke-virtual {p2, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    new-instance p0, Lcom/android/calendar/cards/b2$c;

    .line 186
    .line 187
    invoke-direct {p0, v1}, Lcom/android/calendar/cards/b2$c;-><init>(Landroid/view/View;)V

    .line 188
    .line 189
    .line 190
    goto :goto_0

    .line 191
    :cond_a
    const v1, 0x7f0d00c7

    .line 192
    .line 193
    .line 194
    invoke-virtual {p2, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    new-instance p0, Lcom/android/calendar/cards/w0$d;

    .line 199
    .line 200
    invoke-direct {p0, v1}, Lcom/android/calendar/cards/w0$d;-><init>(Landroid/view/View;)V

    .line 201
    .line 202
    .line 203
    goto :goto_0

    .line 204
    :cond_b
    const v1, 0x7f0d0228

    .line 205
    .line 206
    .line 207
    invoke-virtual {p2, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    new-instance p0, Lcom/android/calendar/cards/x1$c;

    .line 212
    .line 213
    invoke-direct {p0, v1}, Lcom/android/calendar/cards/x1$c;-><init>(Landroid/view/View;)V

    .line 214
    .line 215
    .line 216
    goto :goto_0

    .line 217
    :cond_c
    const v1, 0x7f0d003c

    .line 218
    .line 219
    .line 220
    invoke-virtual {p2, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    new-instance p0, Lcom/android/calendar/cards/f0$e;

    .line 225
    .line 226
    invoke-direct {p0, v1}, Lcom/android/calendar/cards/f0$e;-><init>(Landroid/view/View;)V

    .line 227
    .line 228
    .line 229
    :goto_0
    if-eqz v1, :cond_d

    .line 230
    .line 231
    if-eq p1, v0, :cond_d

    .line 232
    .line 233
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    :cond_d
    return-object p0
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

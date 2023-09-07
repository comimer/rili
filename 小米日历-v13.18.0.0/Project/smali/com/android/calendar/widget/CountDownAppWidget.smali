.class public Lcom/android/calendar/widget/CountDownAppWidget;
.super Lcom/android/calendar/widget/base/BaseWidgetProvider;
.source "CountDownAppWidget.java"


# static fields
.field private static final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/calendar/widget/CountDownAppWidget;->c:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
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

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/widget/base/BaseWidgetProvider;-><init>()V

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
.end method

.method private l(Landroid/content/Context;Lcom/android/calendar/common/event/schema/CountdownEvent;)Landroid/widget/RemoteViews;
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v7, p2

    .line 4
    .line 5
    sget-object v9, Lcom/android/calendar/widget/CountDownAppWidget;->c:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v9

    .line 8
    :try_start_0
    new-instance v10, Landroid/widget/RemoteViews;

    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const v2, 0x7f0d025d

    .line 15
    .line 16
    .line 17
    invoke-direct {v10, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 21
    .line 22
    .line 23
    move-result-object v8

    .line 24
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v4

    .line 32
    const v6, 0x80014

    .line 33
    .line 34
    .line 35
    move-object/from16 v1, p1

    .line 36
    .line 37
    invoke-static/range {v1 .. v6}, Lcom/android/calendar/common/Utils;->p(Landroid/content/Context;JJI)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const v11, 0x7f0a066c

    .line 42
    .line 43
    .line 44
    invoke-virtual {v10, v11, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    const v12, 0x7f0a0671

    .line 48
    .line 49
    .line 50
    const/4 v1, 0x1

    .line 51
    const v2, 0x7f0a038b

    .line 52
    .line 53
    .line 54
    const v3, 0x7f0a0355

    .line 55
    .line 56
    .line 57
    const v13, 0x7f0a0673

    .line 58
    .line 59
    .line 60
    const/4 v4, 0x0

    .line 61
    if-eqz v7, :cond_0

    .line 62
    .line 63
    const/16 v5, 0x8

    .line 64
    .line 65
    invoke-virtual {v10, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v10, v13, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v10, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 72
    .line 73
    .line 74
    const v2, 0x7f1205c8

    .line 75
    .line 76
    .line 77
    new-array v3, v1, [Ljava/lang/Object;

    .line 78
    .line 79
    invoke-virtual/range {p2 .. p2}, Lcom/android/calendar/common/event/schema/CountdownEvent;->getContent()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    aput-object v5, v3, v4

    .line 84
    .line 85
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v10, v13, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v7, v8}, Lcom/android/calendar/common/event/schema/CountdownEvent;->calDays(Ljava/util/Calendar;)I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    const v4, 0x7f0a066d

    .line 101
    .line 102
    .line 103
    invoke-virtual {v10, v4, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    const v5, 0x7f10004b

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, v5, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v10, v12, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    const v2, 0x7f060585

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    invoke-virtual {v10, v4, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {v10, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 132
    .line 133
    .line 134
    const v3, 0x7f120133

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-virtual {v10, v13, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 142
    .line 143
    .line 144
    const/4 v3, 0x4

    .line 145
    invoke-virtual {v10, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 146
    .line 147
    .line 148
    :goto_0
    const/4 v14, 0x7

    .line 149
    invoke-virtual {v8, v14}, Ljava/util/Calendar;->get(I)I

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    const/16 v3, 0xa

    .line 154
    .line 155
    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    const v15, 0x7f0a069a

    .line 160
    .line 161
    .line 162
    invoke-virtual {v10, v15, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 163
    .line 164
    .line 165
    const v8, 0x7f0a06f6

    .line 166
    .line 167
    .line 168
    const/high16 v6, 0xc000000

    .line 169
    .line 170
    if-eqz v7, :cond_1

    .line 171
    .line 172
    invoke-virtual/range {p2 .. p2}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 173
    .line 174
    .line 175
    move-result-wide v2

    .line 176
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 181
    .line 182
    .line 183
    move-result-wide v4

    .line 184
    invoke-virtual/range {p2 .. p2}, Lcom/android/calendar/common/event/schema/CountdownEvent;->getTimeMillis()J

    .line 185
    .line 186
    .line 187
    move-result-wide v16

    .line 188
    invoke-virtual/range {p2 .. p2}, Lcom/android/calendar/common/event/schema/Event;->getEventType()I

    .line 189
    .line 190
    .line 191
    move-result v18

    .line 192
    move-object/from16 v1, p1

    .line 193
    .line 194
    move v14, v6

    .line 195
    move-wide/from16 v6, v16

    .line 196
    .line 197
    move v15, v8

    .line 198
    move/from16 v8, v18

    .line 199
    .line 200
    invoke-static/range {v1 .. v8}, Lf2/d;->a(Landroid/content/Context;JJJI)Landroid/content/Intent;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    const/16 v2, 0xfa1

    .line 205
    .line 206
    invoke-static {v0, v2, v1, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-virtual {v10, v15, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 211
    .line 212
    .line 213
    goto :goto_1

    .line 214
    :cond_1
    move v14, v6

    .line 215
    move v15, v8

    .line 216
    invoke-static {}, Lf2/d;->d()Landroid/content/Intent;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-static {v0, v1, v2, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-virtual {v10, v15, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    .line 226
    .line 227
    :goto_1
    move-object/from16 v1, p0

    .line 228
    .line 229
    :try_start_1
    iget-boolean v2, v1, Lcom/android/calendar/widget/base/BaseWidgetProvider;->a:Z

    .line 230
    .line 231
    if-nez v2, :cond_2

    .line 232
    .line 233
    const v2, 0x7f060555

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    invoke-virtual {v10, v11, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 241
    .line 242
    .line 243
    const v2, 0x7f060556

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    invoke-virtual {v10, v13, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 251
    .line 252
    .line 253
    const v2, 0x7f060558

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    .line 257
    .line 258
    .line 259
    move-result v3

    .line 260
    invoke-virtual {v10, v12, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    const v3, 0x7f0a069a

    .line 268
    .line 269
    .line 270
    invoke-virtual {v10, v3, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 271
    .line 272
    .line 273
    const/4 v2, 0x7

    .line 274
    invoke-static {v0, v10, v2}, Lf2/c;->f(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    .line 275
    .line 276
    .line 277
    :cond_2
    monitor-exit v9

    .line 278
    return-object v10

    .line 279
    :catchall_0
    move-exception v0

    .line 280
    move-object/from16 v1, p0

    .line 281
    .line 282
    :goto_2
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 283
    throw v0

    .line 284
    :catchall_1
    move-exception v0

    .line 285
    goto :goto_2
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

.method private static m(Ljava/util/List;Ljava/util/Calendar;)Lcom/android/calendar/common/event/schema/CountdownEvent;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/calendar/common/event/schema/CountdownEvent;",
            ">;",
            "Ljava/util/Calendar;",
            ")",
            "Lcom/android/calendar/common/event/schema/CountdownEvent;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_3

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/calendar/common/event/schema/CountdownEvent;

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Lcom/android/calendar/common/event/schema/CountdownEvent;->calDays(Ljava/util/Calendar;)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-ltz v2, :cond_1

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    :goto_1
    move-object v0, v1

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/CountdownEvent;->getTimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/CountdownEvent;->getTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v4

    .line 39
    cmp-long v2, v2, v4

    .line 40
    .line 41
    if-lez v2, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_3
    return-object v0
    .line 45
    .line 46
    .line 47
.end method


# virtual methods
.method protected e()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/calendar/widget/base/BaseWidgetProvider;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/android/calendar/widget/CountDownAppWidget;

    .line 2
    .line 3
    return-object v0
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

.method protected k(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/widget/CountDownAppWidget;->n(Landroid/content/Context;I)V

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
.end method

.method public n(Landroid/content/Context;I)V
    .locals 6

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Ls1/c;->h(Landroid/content/Context;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v3, "count down events size : "

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-string v3, "Cal:D:CountDownAppWidget"

    .line 31
    .line 32
    invoke-static {v3, v2}, Lcom/miui/calendar/util/z;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v1}, Ls1/e;->j(Landroid/content/Context;Ljava/util/List;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v0}, Lcom/android/calendar/widget/CountDownAppWidget;->m(Ljava/util/List;Ljava/util/Calendar;)Lcom/android/calendar/common/event/schema/CountdownEvent;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/android/calendar/widget/CountDownAppWidget;->l(Landroid/content/Context;Lcom/android/calendar/common/event/schema/CountdownEvent;)Landroid/widget/RemoteViews;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    new-instance v2, Landroid/content/ComponentName;

    .line 47
    .line 48
    const-class v3, Lcom/android/calendar/widget/CountDownAppWidget;

    .line 49
    .line 50
    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-boolean v3, p0, Lcom/android/calendar/widget/base/BaseWidgetProvider;->a:Z

    .line 58
    .line 59
    if-eqz v3, :cond_2

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v0, v3}, Lcom/android/calendar/common/event/schema/CountdownEvent;->calDays(Ljava/util/Calendar;)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_0

    .line 72
    .line 73
    const-string v0, "notice1"

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    const/4 v3, 0x3

    .line 77
    if-gt v0, v3, :cond_1

    .line 78
    .line 79
    const-string v0, "notice10"

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    const-string v0, "event_type_other"

    .line 83
    .line 84
    :goto_0
    new-instance v3, Landroid/os/Bundle;

    .line 85
    .line 86
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v4, "miuiWidgetEventCode"

    .line 90
    .line 91
    invoke-virtual {v3, v4, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 95
    .line 96
    .line 97
    move-result-wide v4

    .line 98
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    const-string v4, "miuiWidgetTimestamp"

    .line 103
    .line 104
    invoke-virtual {v3, v4, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, p2, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidgetOptions(ILandroid/os/Bundle;)V

    .line 108
    .line 109
    .line 110
    :cond_2
    invoke-virtual {p1, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 111
    .line 112
    .line 113
    return-void
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

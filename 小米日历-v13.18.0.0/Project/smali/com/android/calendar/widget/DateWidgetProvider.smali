.class public Lcom/android/calendar/widget/DateWidgetProvider;
.super Lcom/android/calendar/widget/base/a;
.source "DateWidgetProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/widget/base/a;-><init>()V

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

.method private r(Landroid/content/Context;I)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move/from16 v8, p2

    .line 6
    .line 7
    invoke-static/range {p1 .. p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 8
    .line 9
    .line 10
    move-result-object v9

    .line 11
    new-instance v10, Landroid/widget/RemoteViews;

    .line 12
    .line 13
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const v2, 0x7f0d025f

    .line 18
    .line 19
    .line 20
    invoke-direct {v10, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    iget-boolean v1, v0, Lcom/android/calendar/widget/base/BaseWidgetProvider;->a:Z

    .line 24
    .line 25
    invoke-virtual {v0, v7, v10, v1}, Lcom/android/calendar/widget/base/a;->l(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 26
    .line 27
    .line 28
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 29
    .line 30
    const/16 v2, 0x1f

    .line 31
    .line 32
    if-lt v1, v2, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0, v10, v7, v8, v9}, Lcom/android/calendar/widget/base/a;->q(Landroid/widget/RemoteViews;Landroid/content/Context;ILandroid/appwidget/AppWidgetManager;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v0, v10, v7, v8, v9}, Lcom/android/calendar/widget/base/a;->p(Landroid/widget/RemoteViews;Landroid/content/Context;ILandroid/appwidget/AppWidgetManager;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 42
    .line 43
    .line 44
    move-result-object v11

    .line 45
    const/4 v12, 0x5

    .line 46
    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    .line 47
    .line 48
    .line 49
    move-result v13

    .line 50
    new-instance v1, Lcom/miui/calendar/util/r0;

    .line 51
    .line 52
    invoke-static/range {p1 .. p1}, Lcom/android/calendar/common/Utils;->U(Landroid/content/Context;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-direct {v1, v2}, Lcom/miui/calendar/util/r0;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/miui/calendar/util/r0;->M()V

    .line 60
    .line 61
    .line 62
    const/4 v2, 0x1

    .line 63
    invoke-virtual {v1, v2}, Lcom/miui/calendar/util/r0;->P(Z)J

    .line 64
    .line 65
    .line 66
    move-result-wide v4

    .line 67
    const v6, 0x80024

    .line 68
    .line 69
    .line 70
    move-object/from16 v1, p1

    .line 71
    .line 72
    move-wide v2, v4

    .line 73
    invoke-static/range {v1 .. v6}, Lcom/android/calendar/common/Utils;->p(Landroid/content/Context;JJI)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const v2, 0x7f0a069b

    .line 78
    .line 79
    .line 80
    invoke-virtual {v10, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    const v3, 0x7f0a0670

    .line 88
    .line 89
    .line 90
    invoke-virtual {v10, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    invoke-static {}, Lcom/miui/calendar/util/y;->a()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    const v4, 0x7f0a067b

    .line 98
    .line 99
    .line 100
    const/4 v5, 0x4

    .line 101
    const v6, 0x7f0a067a

    .line 102
    .line 103
    .line 104
    if-eqz v1, :cond_1

    .line 105
    .line 106
    invoke-static {v11}, La4/d;->g(Ljava/util/Calendar;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    new-instance v13, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    const v14, 0x7f120303

    .line 116
    .line 117
    .line 118
    invoke-virtual {v7, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v14

    .line 122
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v10, v6, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 133
    .line 134
    .line 135
    invoke-static {v11}, La4/d;->q(Ljava/util/Calendar;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v10, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_1
    invoke-virtual {v10, v6, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v10, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 147
    .line 148
    .line 149
    :goto_1
    const/4 v1, 0x0

    .line 150
    invoke-static {}, Lz3/d;->i()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v13

    .line 154
    invoke-static {v7, v13}, Lcom/miui/calendar/util/y;->d(Landroid/content/Context;Ljava/lang/String;)Z

    .line 155
    .line 156
    .line 157
    move-result v13

    .line 158
    if-eqz v13, :cond_2

    .line 159
    .line 160
    const-string v1, "Cal:D:DateWidgetProvider"

    .line 161
    .line 162
    const-string v13, "isSameLanguage"

    .line 163
    .line 164
    invoke-static {v1, v13}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-static/range {p1 .. p1}, Lz3/d;->h(Landroid/content/Context;)Lz3/d;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 172
    .line 173
    .line 174
    move-result-wide v13

    .line 175
    const/16 v15, 0xf

    .line 176
    .line 177
    invoke-virtual {v11, v15}, Ljava/util/Calendar;->get(I)I

    .line 178
    .line 179
    .line 180
    move-result v11

    .line 181
    int-to-long v3, v11

    .line 182
    add-long/2addr v13, v3

    .line 183
    invoke-virtual {v1, v13, v14}, Lz3/d;->g(J)Ljava/util/ArrayList;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    :cond_2
    const/4 v3, 0x0

    .line 188
    const v4, 0x7f0a0674

    .line 189
    .line 190
    .line 191
    if-eqz v1, :cond_4

    .line 192
    .line 193
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 194
    .line 195
    .line 196
    move-result v11

    .line 197
    if-eqz v11, :cond_3

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_3
    invoke-virtual {v10, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 201
    .line 202
    .line 203
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    check-cast v1, Lcom/miui/calendar/holiday/model/HolidaySchema;

    .line 208
    .line 209
    iget-object v1, v1, Lcom/miui/calendar/holiday/model/HolidaySchema;->name:Ljava/lang/String;

    .line 210
    .line 211
    invoke-virtual {v10, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 212
    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_4
    :goto_2
    invoke-virtual {v10, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 216
    .line 217
    .line 218
    :goto_3
    invoke-static/range {p1 .. p1}, Lf2/d;->c(Landroid/content/Context;)Landroid/content/Intent;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    const/high16 v5, 0xc000000

    .line 223
    .line 224
    invoke-static {v7, v3, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    const v3, 0x7f0a01e0

    .line 229
    .line 230
    .line 231
    invoke-virtual {v10, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 232
    .line 233
    .line 234
    invoke-static/range {p1 .. p1}, Lf2/d;->e(Landroid/content/Context;)Landroid/app/PendingIntent;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    const v3, 0x7f0a02d2

    .line 239
    .line 240
    .line 241
    invoke-virtual {v10, v3, v1}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 242
    .line 243
    .line 244
    iget-boolean v1, v0, Lcom/android/calendar/widget/base/BaseWidgetProvider;->a:Z

    .line 245
    .line 246
    if-nez v1, :cond_5

    .line 247
    .line 248
    const v1, 0x7f060558

    .line 249
    .line 250
    .line 251
    invoke-virtual {v7, v1}, Landroid/content/Context;->getColor(I)I

    .line 252
    .line 253
    .line 254
    move-result v3

    .line 255
    invoke-virtual {v10, v2, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 256
    .line 257
    .line 258
    const v2, 0x7f060557

    .line 259
    .line 260
    .line 261
    invoke-virtual {v7, v2}, Landroid/content/Context;->getColor(I)I

    .line 262
    .line 263
    .line 264
    move-result v2

    .line 265
    const v3, 0x7f0a0670

    .line 266
    .line 267
    .line 268
    invoke-virtual {v10, v3, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v7, v1}, Landroid/content/Context;->getColor(I)I

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    invoke-virtual {v10, v6, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v7, v1}, Landroid/content/Context;->getColor(I)I

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    const v3, 0x7f0a067b

    .line 283
    .line 284
    .line 285
    invoke-virtual {v10, v3, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v7, v1}, Landroid/content/Context;->getColor(I)I

    .line 289
    .line 290
    .line 291
    move-result v1

    .line 292
    invoke-virtual {v10, v4, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 293
    .line 294
    .line 295
    invoke-static {v7, v10, v12}, Lf2/c;->f(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    .line 296
    .line 297
    .line 298
    :cond_5
    invoke-virtual {v9, v8, v10}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 299
    .line 300
    .line 301
    return-void
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
    const-class v0, Lcom/android/calendar/widget/DateWidgetProvider;

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
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/widget/DateWidgetProvider;->r(Landroid/content/Context;I)V

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

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/calendar/widget/base/BaseWidgetProvider;->d(Landroid/content/Context;)Landroid/content/ComponentName;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v4, "onReceive action: "

    .line 23
    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const-string v4, "Cal:D:DateWidgetProvider"

    .line 35
    .line 36
    invoke-static {v4, v3}, Lcom/miui/calendar/util/z;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v3, "miui.intent.action.START_WEEK_DAY_CHANGED"

    .line 40
    .line 41
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    const-string v2, "key_widget_first_day_of_week"

    .line 48
    .line 49
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_0

    .line 58
    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v3, "provider change firstWeek : "

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {v4, v2}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-string v2, "preferences_key_widget_first_day_of_week"

    .line 80
    .line 81
    invoke-static {p1, v2, p2}, Lf2/k;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/calendar/widget/base/BaseWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/calendar/widget/base/BaseWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 89
    .line 90
    .line 91
    :goto_0
    return-void
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

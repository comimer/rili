.class public Lcom/android/calendar/event/NewBaseEditFragment$f;
.super Landroid/widget/ResourceCursorAdapter;
.source "NewBaseEditFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/NewBaseEditFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/NewBaseEditFragment$f$a;
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1

    const v0, 0x7f0d0061

    .line 1
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/android/calendar/event/NewBaseEditFragment$f;->a:I

    const p1, 0x7f0d0060

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/ResourceCursorAdapter;->setDropDownViewResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;II)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p3, p2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 8
    iput p4, p0, Lcom/android/calendar/event/NewBaseEditFragment$f;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 1

    const v0, 0x7f0d0061

    .line 4
    invoke-direct {p0, p1, v0, p2, p3}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/android/calendar/event/NewBaseEditFragment$f;->a:I

    const p1, 0x7f0d0060

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/ResourceCursorAdapter;->setDropDownViewResource(I)V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const-string v0, "calendar_displayName"

    .line 6
    .line 7
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "ownerAccount"

    .line 12
    .line 13
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const-string v2, "calendar_color"

    .line 18
    .line 19
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const-string v3, "account_type"

    .line 24
    .line 25
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const-string v4, "account_name"

    .line 30
    .line 31
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    const/4 v5, 0x0

    .line 36
    :try_start_0
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-static {p2, v4, v3, v0, v2}, Lcom/android/calendar/common/Utils;->x(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 53
    .line 54
    .line 55
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 56
    :try_start_1
    invoke-static {p2, v0}, Lcom/android/calendar/common/Utils;->o1(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 60
    goto :goto_1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    goto :goto_0

    .line 63
    :catch_1
    move-exception v0

    .line 64
    move v2, v5

    .line 65
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v3, "Cal:D:BaseEditFragment"

    .line 70
    .line 71
    invoke-static {v3, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string v0, ""

    .line 75
    .line 76
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    check-cast v3, Lcom/android/calendar/event/NewBaseEditFragment$f$a;

    .line 81
    .line 82
    const/4 v4, 0x0

    .line 83
    if-nez v3, :cond_0

    .line 84
    .line 85
    new-instance v3, Lcom/android/calendar/event/NewBaseEditFragment$f$a;

    .line 86
    .line 87
    invoke-direct {v3, v4}, Lcom/android/calendar/event/NewBaseEditFragment$f$a;-><init>(Lcom/android/calendar/event/NewBaseEditFragment$a;)V

    .line 88
    .line 89
    .line 90
    const v6, 0x7f0a0275

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    check-cast v6, Landroid/widget/TextView;

    .line 98
    .line 99
    iput-object v6, v3, Lcom/android/calendar/event/NewBaseEditFragment$f$a;->a:Landroid/widget/TextView;

    .line 100
    .line 101
    const v6, 0x7f0a0130

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    check-cast v6, Landroid/widget/TextView;

    .line 109
    .line 110
    iput-object v6, v3, Lcom/android/calendar/event/NewBaseEditFragment$f$a;->b:Landroid/widget/TextView;

    .line 111
    .line 112
    const v6, 0x7f0a0035

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    check-cast v6, Landroid/widget/TextView;

    .line 120
    .line 121
    iput-object v6, v3, Lcom/android/calendar/event/NewBaseEditFragment$f$a;->c:Landroid/widget/TextView;

    .line 122
    .line 123
    const v6, 0x7f0a012e

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    check-cast v6, Landroid/widget/ImageView;

    .line 131
    .line 132
    iput-object v6, v3, Lcom/android/calendar/event/NewBaseEditFragment$f$a;->d:Landroid/widget/ImageView;

    .line 133
    .line 134
    const v6, 0x7f0a0165

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    iput-object v6, v3, Lcom/android/calendar/event/NewBaseEditFragment$f$a;->e:Landroid/view/View;

    .line 142
    .line 143
    invoke-virtual {p1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    :cond_0
    iget-object p1, v3, Lcom/android/calendar/event/NewBaseEditFragment$f$a;->a:Landroid/widget/TextView;

    .line 147
    .line 148
    const v6, 0x7f07033b

    .line 149
    .line 150
    .line 151
    if-eqz p1, :cond_1

    .line 152
    .line 153
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    invoke-static {p2, v2, p1}, Lcom/miui/calendar/util/x0;->n(Landroid/content/res/Resources;II)Landroid/graphics/Bitmap;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    iget-object v7, v3, Lcom/android/calendar/event/NewBaseEditFragment$f$a;->a:Landroid/widget/TextView;

    .line 165
    .line 166
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    .line 167
    .line 168
    invoke-direct {v8, p2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v7, v4, v4, v8, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 172
    .line 173
    .line 174
    iget-object p1, v3, Lcom/android/calendar/event/NewBaseEditFragment$f$a;->a:Landroid/widget/TextView;

    .line 175
    .line 176
    const/4 v4, -0x1

    .line 177
    invoke-static {p1, v4, v4, v5, v4}, Lcom/miui/calendar/view/d0;->a(Landroid/view/View;IIII)V

    .line 178
    .line 179
    .line 180
    iget-object p1, v3, Lcom/android/calendar/event/NewBaseEditFragment$f$a;->a:Landroid/widget/TextView;

    .line 181
    .line 182
    const v4, 0x7f070238

    .line 183
    .line 184
    .line 185
    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 186
    .line 187
    .line 188
    move-result v4

    .line 189
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 190
    .line 191
    .line 192
    :cond_1
    iget-object p1, v3, Lcom/android/calendar/event/NewBaseEditFragment$f$a;->b:Landroid/widget/TextView;

    .line 193
    .line 194
    if-eqz p1, :cond_2

    .line 195
    .line 196
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    .line 198
    .line 199
    iget-object p1, v3, Lcom/android/calendar/event/NewBaseEditFragment$f$a;->c:Landroid/widget/TextView;

    .line 200
    .line 201
    if-eqz p1, :cond_2

    .line 202
    .line 203
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-static {p2, v0}, Lcom/android/calendar/common/Utils;->p1(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    .line 213
    .line 214
    :cond_2
    iget-object p1, v3, Lcom/android/calendar/event/NewBaseEditFragment$f$a;->d:Landroid/widget/ImageView;

    .line 215
    .line 216
    if-eqz p1, :cond_3

    .line 217
    .line 218
    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    invoke-static {p2, v2, v0}, Lcom/miui/calendar/util/x0;->n(Landroid/content/res/Resources;II)Landroid/graphics/Bitmap;

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 227
    .line 228
    .line 229
    :cond_3
    iget-object p1, v3, Lcom/android/calendar/event/NewBaseEditFragment$f$a;->e:Landroid/view/View;

    .line 230
    .line 231
    if-eqz p1, :cond_5

    .line 232
    .line 233
    iget p2, p0, Lcom/android/calendar/event/NewBaseEditFragment$f;->a:I

    .line 234
    .line 235
    if-ltz p2, :cond_5

    .line 236
    .line 237
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    .line 238
    .line 239
    .line 240
    move-result p3

    .line 241
    if-ne p2, p3, :cond_4

    .line 242
    .line 243
    const p2, 0x7f080254

    .line 244
    .line 245
    .line 246
    goto :goto_2

    .line 247
    :cond_4
    const p2, 0x7f0800fd

    .line 248
    .line 249
    .line 250
    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 251
    .line 252
    .line 253
    :cond_5
    return-void
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

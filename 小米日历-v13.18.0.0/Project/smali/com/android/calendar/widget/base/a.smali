.class public Lcom/android/calendar/widget/base/a;
.super Lcom/android/calendar/widget/base/BaseWidgetProvider;
.source "BaseMonthAppWidget.java"


# direct methods
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

.method private m(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/RemoteViews;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const v1, 0x7f0d0266

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p1, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    return-object v0
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

.method private n(Landroid/content/Context;Ljava/lang/String;ZIILjava/util/Calendar;)Landroid/widget/RemoteViews;
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move/from16 v2, p4

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    const/4 v4, 0x7

    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    new-instance v5, Landroid/widget/RemoteViews;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v6

    .line 15
    const v7, 0x7f0d0265

    .line 16
    .line 17
    .line 18
    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    if-eq v2, v4, :cond_2

    .line 23
    .line 24
    if-ne v2, v3, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    new-instance v5, Landroid/widget/RemoteViews;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    const v7, 0x7f0d0264

    .line 34
    .line 35
    .line 36
    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    :goto_0
    new-instance v5, Landroid/widget/RemoteViews;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    const v7, 0x7f0d0267

    .line 47
    .line 48
    .line 49
    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 50
    .line 51
    .line 52
    :goto_1
    const v6, 0x7f0a066c

    .line 53
    .line 54
    .line 55
    move-object/from16 v7, p2

    .line 56
    .line 57
    invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lcom/miui/calendar/util/x0;->x0()Z

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    if-nez v7, :cond_3

    .line 65
    .line 66
    const v9, 0x7f0a042f

    .line 67
    .line 68
    .line 69
    const/4 v10, 0x7

    .line 70
    const/4 v12, 0x0

    .line 71
    const/4 v13, 0x0

    .line 72
    move-object v8, v5

    .line 73
    move/from16 v11, p5

    .line 74
    .line 75
    invoke-virtual/range {v8 .. v13}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_3
    const v9, 0x7f0a042f

    .line 80
    .line 81
    .line 82
    const/4 v10, 0x0

    .line 83
    const/4 v12, 0x7

    .line 84
    const/4 v13, 0x0

    .line 85
    move-object v8, v5

    .line 86
    move/from16 v11, p5

    .line 87
    .line 88
    invoke-virtual/range {v8 .. v13}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 89
    .line 90
    .line 91
    :goto_2
    if-eqz p3, :cond_4

    .line 92
    .line 93
    const v2, 0x7f060584

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    invoke-virtual {v5, v6, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 101
    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_4
    iget-boolean v7, v0, Lcom/android/calendar/widget/base/BaseWidgetProvider;->a:Z

    .line 105
    .line 106
    if-nez v7, :cond_7

    .line 107
    .line 108
    if-eq v2, v4, :cond_6

    .line 109
    .line 110
    if-ne v2, v3, :cond_5

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_5
    const v2, 0x7f06057b

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    invoke-virtual {v5, v6, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 121
    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_6
    :goto_3
    const v2, 0x7f060582

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    invoke-virtual {v5, v6, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 132
    .line 133
    .line 134
    :cond_7
    :goto_4
    if-eqz p3, :cond_8

    .line 135
    .line 136
    const v2, 0x7f08070f

    .line 137
    .line 138
    .line 139
    invoke-direct {p0, v5, v6, v2}, Lcom/android/calendar/widget/base/a;->o(Landroid/widget/RemoteViews;II)V

    .line 140
    .line 141
    .line 142
    goto :goto_5

    .line 143
    :cond_8
    const v2, 0x7f08070e

    .line 144
    .line 145
    .line 146
    invoke-direct {p0, v5, v6, v2}, Lcom/android/calendar/widget/base/a;->o(Landroid/widget/RemoteViews;II)V

    .line 147
    .line 148
    .line 149
    :goto_5
    invoke-virtual/range {p6 .. p6}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 150
    .line 151
    .line 152
    move-result-wide v2

    .line 153
    invoke-static {p1, v2, v3}, Lf2/d;->b(Landroid/content/Context;J)Landroid/content/Intent;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    const v2, 0x7f0a042f

    .line 158
    .line 159
    .line 160
    invoke-virtual {v5, v2, v1}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 161
    .line 162
    .line 163
    return-object v5
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
.end method

.method private o(Landroid/widget/RemoteViews;II)V
    .locals 1

    .line 1
    const-string v0, "setBackgroundResource"

    .line 2
    .line 3
    invoke-virtual {p1, p2, v0, p3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

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
    const-class v0, Lcom/android/calendar/widget/base/a;

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

    return-void
.end method

.method protected l(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V
    .locals 10

    .line 1
    invoke-static {p1}, Lf2/l;->c(Landroid/content/Context;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const v3, 0x7f07026a

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    float-to-int v2, v2

    .line 19
    const/16 v3, 0xe

    .line 20
    .line 21
    new-array v4, v3, [Ljava/lang/String;

    .line 22
    .line 23
    :goto_0
    const/4 v5, 0x7

    .line 24
    if-gt v1, v5, :cond_0

    .line 25
    .line 26
    add-int/lit8 v6, v1, -0x1

    .line 27
    .line 28
    const/16 v7, 0x32

    .line 29
    .line 30
    invoke-static {v1, v7}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    aput-object v7, v4, v6

    .line 39
    .line 40
    add-int/2addr v6, v5

    .line 41
    aput-object v7, v4, v6

    .line 42
    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    new-array v1, v5, [I

    .line 47
    .line 48
    fill-array-data v1, :array_0

    .line 49
    .line 50
    .line 51
    const/4 v6, 0x0

    .line 52
    move v7, v6

    .line 53
    :goto_1
    if-ge v7, v5, :cond_3

    .line 54
    .line 55
    add-int v8, v7, v0

    .line 56
    .line 57
    if-lt v8, v3, :cond_1

    .line 58
    .line 59
    add-int/lit8 v8, v8, -0xe

    .line 60
    .line 61
    :cond_1
    aget v9, v1, v7

    .line 62
    .line 63
    aget-object v8, v4, v8

    .line 64
    .line 65
    invoke-virtual {p2, v9, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    aget v8, v1, v7

    .line 69
    .line 70
    int-to-float v9, v2

    .line 71
    invoke-virtual {p2, v8, v6, v9}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 72
    .line 73
    .line 74
    if-nez p3, :cond_2

    .line 75
    .line 76
    aget v8, v1, v7

    .line 77
    .line 78
    const v9, 0x7f060581

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v9}, Landroid/content/Context;->getColor(I)I

    .line 82
    .line 83
    .line 84
    move-result v9

    .line 85
    invoke-virtual {p2, v8, v9}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 86
    .line 87
    .line 88
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    return-void

    .line 92
    nop

    .line 93
    :array_0
    .array-data 4
        0x7f0a029f
        0x7f0a0537
        0x7f0a061e
        0x7f0a02b0
        0x7f0a0291
        0x7f0a0560
        0x7f0a054e
    .end array-data
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
.end method

.method protected p(Landroid/widget/RemoteViews;Landroid/content/Context;ILandroid/appwidget/AppWidgetManager;)V
    .locals 2

    .line 1
    const-string v0, "Cal:D:NearEventAppWidget"

    .line 2
    .line 3
    const-string v1, "updateMonthPanel"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroid/content/Intent;

    .line 9
    .line 10
    const-class v1, Lcom/android/calendar/widget/NearEventWidgetService;

    .line 11
    .line 12
    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v1, ""

    .line 21
    .line 22
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    const-string p2, "appWidgetId"

    .line 36
    .line 37
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    const p2, 0x7f0a02d2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p4, p3, p2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p4, p3, p1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 50
    .line 51
    .line 52
    return-void
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
.end method

.method protected q(Landroid/widget/RemoteViews;Landroid/content/Context;ILandroid/appwidget/AppWidgetManager;)V
    .locals 23

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v8, p2

    .line 4
    .line 5
    move/from16 v9, p3

    .line 6
    .line 7
    const-string v10, "Cal:D:NearEventAppWidget"

    .line 8
    .line 9
    const-string v1, "updateMonthPanelAtLeastS"

    .line 10
    .line 11
    invoke-static {v10, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v11

    .line 18
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v2, Ljava/util/Date;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 29
    .line 30
    .line 31
    invoke-static {v8, v2}, Lf2/l;->b(Landroid/content/Context;Ljava/util/Date;)Ljava/util/Calendar;

    .line 32
    .line 33
    .line 34
    move-result-object v13

    .line 35
    if-nez v13, :cond_0

    .line 36
    .line 37
    const/4 v15, 0x5

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-static {v8, v2}, Lcom/miui/calendar/util/e0;->u(Landroid/content/Context;Ljava/util/Date;)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    move v15, v1

    .line 44
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v2, "preferences_key_widget_max_height"

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const/4 v7, 0x0

    .line 62
    invoke-static {v8, v1, v7}, Lf2/k;->a(Landroid/content/Context;Ljava/lang/String;I)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    int-to-float v1, v1

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v3, "oldMaxHeight : "

    .line 73
    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v3, " appWidgetId : "

    .line 81
    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-static {v10, v2}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    const v3, 0x7f0708ed

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    int-to-float v2, v2

    .line 107
    invoke-static {v8, v2}, Lcom/miui/calendar/util/DeviceUtils;->P(Landroid/content/Context;F)I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    const v4, 0x7f070937

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    int-to-float v3, v3

    .line 123
    invoke-static {v8, v3}, Lcom/miui/calendar/util/DeviceUtils;->P(Landroid/content/Context;F)I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    mul-int/lit8 v4, v2, 0x2

    .line 128
    .line 129
    int-to-float v4, v4

    .line 130
    sub-float/2addr v1, v4

    .line 131
    const/high16 v4, 0x41800000    # 16.0f

    .line 132
    .line 133
    sub-float/2addr v1, v4

    .line 134
    mul-int v4, v3, v15

    .line 135
    .line 136
    int-to-float v4, v4

    .line 137
    sub-float/2addr v1, v4

    .line 138
    int-to-float v4, v15

    .line 139
    div-float/2addr v1, v4

    .line 140
    const/4 v4, 0x0

    .line 141
    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    invoke-static {v8, v4}, Lcom/miui/calendar/util/DeviceUtils;->e(Landroid/content/Context;F)I

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    const-string v5, "padding:"

    .line 155
    .line 156
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v5, " paddingDp:"

    .line 163
    .line 164
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string v1, " text size:"

    .line 171
    .line 172
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string v1, " topMargin:"

    .line 179
    .line 180
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-static {v10, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    new-instance v5, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    .line 194
    .line 195
    invoke-direct {v5}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;-><init>()V

    .line 196
    .line 197
    .line 198
    move v4, v7

    .line 199
    :goto_1
    const/4 v1, 0x7

    .line 200
    mul-int/lit8 v2, v15, 0x7

    .line 201
    .line 202
    if-ge v4, v2, :cond_3

    .line 203
    .line 204
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    move/from16 v17, v15

    .line 209
    .line 210
    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 211
    .line 212
    .line 213
    move-result-wide v14

    .line 214
    invoke-virtual {v2, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 215
    .line 216
    .line 217
    const/4 v14, 0x6

    .line 218
    invoke-virtual {v2, v14, v4}, Ljava/util/Calendar;->add(II)V

    .line 219
    .line 220
    .line 221
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 222
    .line 223
    .line 224
    move-result-object v14

    .line 225
    invoke-static {v2, v14}, Lcom/miui/calendar/util/s0;->u(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    .line 226
    .line 227
    .line 228
    move-result v14

    .line 229
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 230
    .line 231
    .line 232
    move-result-object v15

    .line 233
    const/4 v3, 0x2

    .line 234
    invoke-virtual {v15, v3, v7}, Ljava/util/Calendar;->add(II)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    .line 238
    .line 239
    .line 240
    move-result v7

    .line 241
    invoke-virtual {v15, v3}, Ljava/util/Calendar;->get(I)I

    .line 242
    .line 243
    .line 244
    move-result v3

    .line 245
    if-ne v7, v3, :cond_1

    .line 246
    .line 247
    const/4 v3, 0x1

    .line 248
    goto :goto_2

    .line 249
    :cond_1
    const/4 v3, 0x0

    .line 250
    :goto_2
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    .line 251
    .line 252
    .line 253
    move-result v7

    .line 254
    const/4 v15, 0x5

    .line 255
    invoke-virtual {v2, v15}, Ljava/util/Calendar;->get(I)I

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v16

    .line 263
    if-nez v3, :cond_2

    .line 264
    .line 265
    int-to-long v1, v4

    .line 266
    move-object/from16 v3, p0

    .line 267
    .line 268
    invoke-direct {v3, v8}, Lcom/android/calendar/widget/base/a;->m(Landroid/content/Context;)Landroid/widget/RemoteViews;

    .line 269
    .line 270
    .line 271
    move-result-object v7

    .line 272
    invoke-virtual {v5, v1, v2, v7}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->addItem(JLandroid/widget/RemoteViews;)Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    .line 273
    .line 274
    .line 275
    move/from16 v16, v4

    .line 276
    .line 277
    move-object v14, v5

    .line 278
    move/from16 v22, v6

    .line 279
    .line 280
    move-object/from16 v19, v10

    .line 281
    .line 282
    move-wide/from16 v20, v11

    .line 283
    .line 284
    const/16 v18, 0x0

    .line 285
    .line 286
    goto :goto_3

    .line 287
    :cond_2
    move-object/from16 v3, p0

    .line 288
    .line 289
    move-object/from16 v19, v10

    .line 290
    .line 291
    move-wide/from16 v20, v11

    .line 292
    .line 293
    int-to-long v10, v4

    .line 294
    move-object/from16 v1, p0

    .line 295
    .line 296
    move-object v12, v2

    .line 297
    move-object/from16 v2, p2

    .line 298
    .line 299
    move-object/from16 v3, v16

    .line 300
    .line 301
    move/from16 v16, v4

    .line 302
    .line 303
    move v4, v14

    .line 304
    move-object v14, v5

    .line 305
    move v5, v7

    .line 306
    move/from16 v22, v6

    .line 307
    .line 308
    const/16 v18, 0x0

    .line 309
    .line 310
    move-object v7, v12

    .line 311
    invoke-direct/range {v1 .. v7}, Lcom/android/calendar/widget/base/a;->n(Landroid/content/Context;Ljava/lang/String;ZIILjava/util/Calendar;)Landroid/widget/RemoteViews;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    invoke-virtual {v14, v10, v11, v1}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->addItem(JLandroid/widget/RemoteViews;)Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    .line 316
    .line 317
    .line 318
    :goto_3
    add-int/lit8 v4, v16, 0x1

    .line 319
    .line 320
    move-object v5, v14

    .line 321
    move/from16 v15, v17

    .line 322
    .line 323
    move/from16 v7, v18

    .line 324
    .line 325
    move-object/from16 v10, v19

    .line 326
    .line 327
    move-wide/from16 v11, v20

    .line 328
    .line 329
    move/from16 v6, v22

    .line 330
    .line 331
    goto/16 :goto_1

    .line 332
    .line 333
    :cond_3
    move-object v14, v5

    .line 334
    move-object/from16 v19, v10

    .line 335
    .line 336
    move-wide/from16 v20, v11

    .line 337
    .line 338
    const v1, 0x7f0a02d2

    .line 339
    .line 340
    .line 341
    const/4 v2, 0x1

    .line 342
    invoke-virtual {v14, v2}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->setHasStableIds(Z)Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    const/4 v3, 0x4

    .line 347
    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->setViewTypeCount(I)Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    invoke-virtual {v2}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->build()Landroid/widget/RemoteViews$RemoteCollectionItems;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    invoke-static {v0, v1, v2}, Le2/a;->a(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews$RemoteCollectionItems;)V

    .line 356
    .line 357
    .line 358
    move-object/from16 v1, p4

    .line 359
    .line 360
    invoke-virtual {v1, v9, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 361
    .line 362
    .line 363
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 364
    .line 365
    .line 366
    move-result-wide v0

    .line 367
    sub-long v0, v0, v20

    .line 368
    .line 369
    new-instance v2, Ljava/lang/StringBuilder;

    .line 370
    .line 371
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    .line 373
    .line 374
    const-string v3, "updateMonthPanelAtLeastS() end, cost "

    .line 375
    .line 376
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    const-string v0, "ms"

    .line 383
    .line 384
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    move-object/from16 v1, v19

    .line 392
    .line 393
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    return-void
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
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
.end method

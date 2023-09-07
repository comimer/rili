.class public Lz3/k;
.super Ljava/lang/Object;
.source "Holidays.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz3/k$c;,
        Lz3/k$b;
    }
.end annotation


# static fields
.field private static final d:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[[I>;"
        }
    .end annotation
.end field

.field private static final e:[[I

.field private static final f:Lmiuix/core/util/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/core/util/f<",
            "Lz3/k;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Lmiuix/core/util/e$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/core/util/e$e<",
            "Lcom/miui/calendar/holiday/utils/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Landroid/util/SparseIntArray;

.field private static i:Lz3/k$c;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/res/Resources;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v1, v0, [[I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v3, v2, [I

    .line 7
    .line 8
    fill-array-data v3, :array_0

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    aput-object v3, v1, v4

    .line 13
    .line 14
    new-array v3, v2, [I

    .line 15
    .line 16
    fill-array-data v3, :array_1

    .line 17
    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    aput-object v3, v1, v5

    .line 21
    .line 22
    new-array v3, v2, [I

    .line 23
    .line 24
    fill-array-data v3, :array_2

    .line 25
    .line 26
    .line 27
    aput-object v3, v1, v2

    .line 28
    .line 29
    new-array v3, v2, [I

    .line 30
    .line 31
    fill-array-data v3, :array_3

    .line 32
    .line 33
    .line 34
    const/4 v6, 0x3

    .line 35
    aput-object v3, v1, v6

    .line 36
    .line 37
    new-array v3, v2, [I

    .line 38
    .line 39
    fill-array-data v3, :array_4

    .line 40
    .line 41
    .line 42
    const/4 v7, 0x4

    .line 43
    aput-object v3, v1, v7

    .line 44
    .line 45
    new-array v3, v2, [I

    .line 46
    .line 47
    fill-array-data v3, :array_5

    .line 48
    .line 49
    .line 50
    const/4 v8, 0x5

    .line 51
    aput-object v3, v1, v8

    .line 52
    .line 53
    new-array v3, v2, [I

    .line 54
    .line 55
    fill-array-data v3, :array_6

    .line 56
    .line 57
    .line 58
    const/4 v9, 0x6

    .line 59
    aput-object v3, v1, v9

    .line 60
    .line 61
    new-array v3, v2, [I

    .line 62
    .line 63
    fill-array-data v3, :array_7

    .line 64
    .line 65
    .line 66
    const/4 v10, 0x7

    .line 67
    aput-object v3, v1, v10

    .line 68
    .line 69
    new-array v3, v2, [I

    .line 70
    .line 71
    fill-array-data v3, :array_8

    .line 72
    .line 73
    .line 74
    const/16 v11, 0x8

    .line 75
    .line 76
    aput-object v3, v1, v11

    .line 77
    .line 78
    new-array v3, v2, [I

    .line 79
    .line 80
    fill-array-data v3, :array_9

    .line 81
    .line 82
    .line 83
    const/16 v12, 0x9

    .line 84
    .line 85
    aput-object v3, v1, v12

    .line 86
    .line 87
    new-array v3, v2, [I

    .line 88
    .line 89
    fill-array-data v3, :array_a

    .line 90
    .line 91
    .line 92
    const/16 v13, 0xa

    .line 93
    .line 94
    aput-object v3, v1, v13

    .line 95
    .line 96
    new-array v3, v2, [I

    .line 97
    .line 98
    fill-array-data v3, :array_b

    .line 99
    .line 100
    .line 101
    const/16 v14, 0xb

    .line 102
    .line 103
    aput-object v3, v1, v14

    .line 104
    .line 105
    new-array v3, v2, [I

    .line 106
    .line 107
    fill-array-data v3, :array_c

    .line 108
    .line 109
    .line 110
    const/16 v15, 0xc

    .line 111
    .line 112
    aput-object v3, v1, v15

    .line 113
    .line 114
    new-array v3, v2, [I

    .line 115
    .line 116
    fill-array-data v3, :array_d

    .line 117
    .line 118
    .line 119
    const/16 v0, 0xd

    .line 120
    .line 121
    aput-object v3, v1, v0

    .line 122
    .line 123
    new-array v3, v2, [I

    .line 124
    .line 125
    fill-array-data v3, :array_e

    .line 126
    .line 127
    .line 128
    const/16 v16, 0xe

    .line 129
    .line 130
    aput-object v3, v1, v16

    .line 131
    .line 132
    new-array v3, v2, [I

    .line 133
    .line 134
    fill-array-data v3, :array_f

    .line 135
    .line 136
    .line 137
    const/16 v17, 0xf

    .line 138
    .line 139
    aput-object v3, v1, v17

    .line 140
    .line 141
    sput-object v1, Lz3/k;->e:[[I

    .line 142
    .line 143
    new-instance v1, Landroid/util/ArrayMap;

    .line 144
    .line 145
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 146
    .line 147
    .line 148
    sput-object v1, Lz3/k;->d:Landroid/util/ArrayMap;

    .line 149
    .line 150
    new-array v3, v10, [[I

    .line 151
    .line 152
    new-array v15, v2, [I

    .line 153
    .line 154
    fill-array-data v15, :array_10

    .line 155
    .line 156
    .line 157
    aput-object v15, v3, v4

    .line 158
    .line 159
    new-array v15, v2, [I

    .line 160
    .line 161
    fill-array-data v15, :array_11

    .line 162
    .line 163
    .line 164
    aput-object v15, v3, v5

    .line 165
    .line 166
    new-array v15, v2, [I

    .line 167
    .line 168
    fill-array-data v15, :array_12

    .line 169
    .line 170
    .line 171
    aput-object v15, v3, v2

    .line 172
    .line 173
    new-array v15, v2, [I

    .line 174
    .line 175
    fill-array-data v15, :array_13

    .line 176
    .line 177
    .line 178
    aput-object v15, v3, v6

    .line 179
    .line 180
    new-array v15, v2, [I

    .line 181
    .line 182
    fill-array-data v15, :array_14

    .line 183
    .line 184
    .line 185
    aput-object v15, v3, v7

    .line 186
    .line 187
    new-array v15, v2, [I

    .line 188
    .line 189
    fill-array-data v15, :array_15

    .line 190
    .line 191
    .line 192
    aput-object v15, v3, v8

    .line 193
    .line 194
    new-array v15, v2, [I

    .line 195
    .line 196
    fill-array-data v15, :array_16

    .line 197
    .line 198
    .line 199
    aput-object v15, v3, v9

    .line 200
    .line 201
    const-string v15, ""

    .line 202
    .line 203
    invoke-virtual {v1, v15, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    new-array v3, v0, [[I

    .line 207
    .line 208
    new-array v15, v2, [I

    .line 209
    .line 210
    fill-array-data v15, :array_17

    .line 211
    .line 212
    .line 213
    aput-object v15, v3, v4

    .line 214
    .line 215
    new-array v15, v2, [I

    .line 216
    .line 217
    fill-array-data v15, :array_18

    .line 218
    .line 219
    .line 220
    aput-object v15, v3, v5

    .line 221
    .line 222
    new-array v15, v2, [I

    .line 223
    .line 224
    fill-array-data v15, :array_19

    .line 225
    .line 226
    .line 227
    aput-object v15, v3, v2

    .line 228
    .line 229
    new-array v15, v2, [I

    .line 230
    .line 231
    fill-array-data v15, :array_1a

    .line 232
    .line 233
    .line 234
    aput-object v15, v3, v6

    .line 235
    .line 236
    new-array v15, v2, [I

    .line 237
    .line 238
    fill-array-data v15, :array_1b

    .line 239
    .line 240
    .line 241
    aput-object v15, v3, v7

    .line 242
    .line 243
    new-array v15, v2, [I

    .line 244
    .line 245
    fill-array-data v15, :array_1c

    .line 246
    .line 247
    .line 248
    aput-object v15, v3, v8

    .line 249
    .line 250
    new-array v15, v2, [I

    .line 251
    .line 252
    fill-array-data v15, :array_1d

    .line 253
    .line 254
    .line 255
    aput-object v15, v3, v9

    .line 256
    .line 257
    new-array v15, v2, [I

    .line 258
    .line 259
    fill-array-data v15, :array_1e

    .line 260
    .line 261
    .line 262
    aput-object v15, v3, v10

    .line 263
    .line 264
    new-array v15, v2, [I

    .line 265
    .line 266
    fill-array-data v15, :array_1f

    .line 267
    .line 268
    .line 269
    aput-object v15, v3, v11

    .line 270
    .line 271
    new-array v15, v2, [I

    .line 272
    .line 273
    fill-array-data v15, :array_20

    .line 274
    .line 275
    .line 276
    aput-object v15, v3, v12

    .line 277
    .line 278
    new-array v15, v2, [I

    .line 279
    .line 280
    fill-array-data v15, :array_21

    .line 281
    .line 282
    .line 283
    aput-object v15, v3, v13

    .line 284
    .line 285
    new-array v15, v2, [I

    .line 286
    .line 287
    fill-array-data v15, :array_22

    .line 288
    .line 289
    .line 290
    aput-object v15, v3, v14

    .line 291
    .line 292
    new-array v15, v2, [I

    .line 293
    .line 294
    fill-array-data v15, :array_23

    .line 295
    .line 296
    .line 297
    const/16 v18, 0xc

    .line 298
    .line 299
    aput-object v15, v3, v18

    .line 300
    .line 301
    const-string v15, "CN"

    .line 302
    .line 303
    invoke-virtual {v1, v15, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    const/16 v3, 0x12

    .line 307
    .line 308
    new-array v3, v3, [[I

    .line 309
    .line 310
    new-array v15, v2, [I

    .line 311
    .line 312
    fill-array-data v15, :array_24

    .line 313
    .line 314
    .line 315
    aput-object v15, v3, v4

    .line 316
    .line 317
    new-array v15, v2, [I

    .line 318
    .line 319
    fill-array-data v15, :array_25

    .line 320
    .line 321
    .line 322
    aput-object v15, v3, v5

    .line 323
    .line 324
    new-array v15, v2, [I

    .line 325
    .line 326
    fill-array-data v15, :array_26

    .line 327
    .line 328
    .line 329
    aput-object v15, v3, v2

    .line 330
    .line 331
    new-array v15, v2, [I

    .line 332
    .line 333
    fill-array-data v15, :array_27

    .line 334
    .line 335
    .line 336
    aput-object v15, v3, v6

    .line 337
    .line 338
    new-array v15, v2, [I

    .line 339
    .line 340
    fill-array-data v15, :array_28

    .line 341
    .line 342
    .line 343
    aput-object v15, v3, v7

    .line 344
    .line 345
    new-array v15, v2, [I

    .line 346
    .line 347
    fill-array-data v15, :array_29

    .line 348
    .line 349
    .line 350
    aput-object v15, v3, v8

    .line 351
    .line 352
    new-array v15, v2, [I

    .line 353
    .line 354
    fill-array-data v15, :array_2a

    .line 355
    .line 356
    .line 357
    aput-object v15, v3, v9

    .line 358
    .line 359
    new-array v15, v2, [I

    .line 360
    .line 361
    fill-array-data v15, :array_2b

    .line 362
    .line 363
    .line 364
    aput-object v15, v3, v10

    .line 365
    .line 366
    new-array v15, v2, [I

    .line 367
    .line 368
    fill-array-data v15, :array_2c

    .line 369
    .line 370
    .line 371
    aput-object v15, v3, v11

    .line 372
    .line 373
    new-array v11, v2, [I

    .line 374
    .line 375
    fill-array-data v11, :array_2d

    .line 376
    .line 377
    .line 378
    aput-object v11, v3, v12

    .line 379
    .line 380
    new-array v11, v2, [I

    .line 381
    .line 382
    fill-array-data v11, :array_2e

    .line 383
    .line 384
    .line 385
    aput-object v11, v3, v13

    .line 386
    .line 387
    new-array v11, v2, [I

    .line 388
    .line 389
    fill-array-data v11, :array_2f

    .line 390
    .line 391
    .line 392
    aput-object v11, v3, v14

    .line 393
    .line 394
    new-array v11, v2, [I

    .line 395
    .line 396
    fill-array-data v11, :array_30

    .line 397
    .line 398
    .line 399
    const/16 v12, 0xc

    .line 400
    .line 401
    aput-object v11, v3, v12

    .line 402
    .line 403
    new-array v11, v2, [I

    .line 404
    .line 405
    fill-array-data v11, :array_31

    .line 406
    .line 407
    .line 408
    aput-object v11, v3, v0

    .line 409
    .line 410
    new-array v0, v2, [I

    .line 411
    .line 412
    fill-array-data v0, :array_32

    .line 413
    .line 414
    .line 415
    aput-object v0, v3, v16

    .line 416
    .line 417
    new-array v0, v2, [I

    .line 418
    .line 419
    fill-array-data v0, :array_33

    .line 420
    .line 421
    .line 422
    aput-object v0, v3, v17

    .line 423
    .line 424
    new-array v0, v2, [I

    .line 425
    .line 426
    fill-array-data v0, :array_34

    .line 427
    .line 428
    .line 429
    const/16 v11, 0x10

    .line 430
    .line 431
    aput-object v0, v3, v11

    .line 432
    .line 433
    new-array v0, v2, [I

    .line 434
    .line 435
    fill-array-data v0, :array_35

    .line 436
    .line 437
    .line 438
    const/16 v11, 0x11

    .line 439
    .line 440
    aput-object v0, v3, v11

    .line 441
    .line 442
    const-string v0, "TW"

    .line 443
    .line 444
    invoke-virtual {v1, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    new-array v0, v10, [[I

    .line 448
    .line 449
    new-array v3, v2, [I

    .line 450
    .line 451
    fill-array-data v3, :array_36

    .line 452
    .line 453
    .line 454
    aput-object v3, v0, v4

    .line 455
    .line 456
    new-array v3, v2, [I

    .line 457
    .line 458
    fill-array-data v3, :array_37

    .line 459
    .line 460
    .line 461
    aput-object v3, v0, v5

    .line 462
    .line 463
    new-array v3, v2, [I

    .line 464
    .line 465
    fill-array-data v3, :array_38

    .line 466
    .line 467
    .line 468
    aput-object v3, v0, v2

    .line 469
    .line 470
    new-array v3, v2, [I

    .line 471
    .line 472
    fill-array-data v3, :array_39

    .line 473
    .line 474
    .line 475
    aput-object v3, v0, v6

    .line 476
    .line 477
    new-array v3, v2, [I

    .line 478
    .line 479
    fill-array-data v3, :array_3a

    .line 480
    .line 481
    .line 482
    aput-object v3, v0, v7

    .line 483
    .line 484
    new-array v3, v2, [I

    .line 485
    .line 486
    fill-array-data v3, :array_3b

    .line 487
    .line 488
    .line 489
    aput-object v3, v0, v8

    .line 490
    .line 491
    new-array v2, v2, [I

    .line 492
    .line 493
    fill-array-data v2, :array_3c

    .line 494
    .line 495
    .line 496
    aput-object v2, v0, v9

    .line 497
    .line 498
    const-string v2, "HK"

    .line 499
    .line 500
    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    new-instance v0, Lz3/k$b;

    .line 504
    .line 505
    const/4 v1, 0x0

    .line 506
    invoke-direct {v0, v1}, Lz3/k$b;-><init>(Lz3/k$a;)V

    .line 507
    .line 508
    .line 509
    sput-object v0, Lz3/k;->f:Lmiuix/core/util/f;

    .line 510
    .line 511
    new-instance v0, Lz3/k$a;

    .line 512
    .line 513
    invoke-direct {v0}, Lz3/k$a;-><init>()V

    .line 514
    .line 515
    .line 516
    invoke-static {v0, v5}, Lmiuix/core/util/e;->b(Lmiuix/core/util/e$d;I)Lmiuix/core/util/e$g;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    sput-object v0, Lz3/k;->g:Lmiuix/core/util/e$e;

    .line 521
    .line 522
    new-instance v0, Landroid/util/SparseIntArray;

    .line 523
    .line 524
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 525
    .line 526
    .line 527
    sput-object v0, Lz3/k;->h:Landroid/util/SparseIntArray;

    .line 528
    .line 529
    return-void

    .line 530
    nop

    .line 531
    :array_0
    .array-data 4
        -0x1
        0x7f120615
    .end array-data

    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    :array_1
    .array-data 4
        0x65
        0x7f12062f
    .end array-data

    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    :array_2
    .array-data 4
        0x66
        0x7f12062b
    .end array-data

    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    :array_3
    .array-data 4
        0x67
        0x7f120632
    .end array-data

    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    :array_4
    .array-data 4
        0x68
        0x7f120618
    .end array-data

    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    :array_5
    .array-data 4
        0x69
        0x7f120616
    .end array-data

    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    :array_6
    .array-data 4
        0x6a
        0x7f12062d
    .end array-data

    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    :array_7
    .array-data 4
        0x6b
        0x7f12062c
    .end array-data

    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    :array_8
    .array-data 4
        0x73
        0x7f12061f
    .end array-data

    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    :array_9
    .array-data 4
        0x1f9
        0x7f120612
    .end array-data

    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    :array_a
    .array-data 4
        0x2c3
        0x7f120625
    .end array-data

    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    :array_b
    .array-data 4
        0x2cb
        0x7f12062e
    .end array-data

    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    :array_c
    .array-data 4
        0x32f
        0x7f120620
    .end array-data

    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    :array_d
    .array-data 4
        0x38d
        0x7f120610
    .end array-data

    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    :array_e
    .array-data 4
        0x3f7
        0x7f120637
    .end array-data

    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    :array_f
    .array-data 4
        0x4b8
        0x7f12061b
    .end array-data

    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    :array_10
    .array-data 4
        0x65
        0x7f120624
    .end array-data

    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    :array_11
    .array-data 4
        0xd6
        0x7f120636
    .end array-data

    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    :array_12
    .array-data 4
        0x134
        0x7f12061a
    .end array-data

    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    :array_13
    .array-data 4
        0x138
        0x7f120609
    .end array-data

    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    :array_14
    .array-data 4
        0x191
        0x7f120617
    .end array-data

    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    :array_15
    .array-data 4
        0x1f5
        0x7f12061e
    .end array-data

    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    :array_16
    .array-data 4
        0x4c9
        0x7f12060f
    .end array-data

    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    :array_17
    .array-data 4
        0x65
        0x7f120624
    .end array-data

    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    :array_18
    .array-data 4
        0xd6
        0x7f120636
    .end array-data

    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    :array_19
    .array-data 4
        0x134
        0x7f12061a
    .end array-data

    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    :array_1a
    .array-data 4
        0x138
        0x7f120609
    .end array-data

    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    :array_1b
    .array-data 4
        0x191
        0x7f120617
    .end array-data

    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    :array_1c
    .array-data 4
        0x1f5
        0x7f12061e
    .end array-data

    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    :array_1d
    .array-data 4
        0x1f8
        0x7f12060e
    .end array-data

    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    :array_1e
    .array-data 4
        0x259
        0x7f12060d
    .end array-data

    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    :array_1f
    .array-data 4
        0x2bd
        0x7f120626
    .end array-data

    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    :array_20
    .array-data 4
        0x321
        0x7f12060b
    .end array-data

    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    :array_21
    .array-data 4
        0x38e
        0x7f120631
    .end array-data

    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    :array_22
    .array-data 4
        0x3e9
        0x7f120622
    .end array-data

    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    :array_23
    .array-data 4
        0x4c9
        0x7f12060f
    .end array-data

    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    :array_24
    .array-data 4
        0x65
        0x7f120624
    .end array-data

    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    :array_25
    .array-data 4
        0xd6
        0x7f120636
    .end array-data

    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    :array_26
    .array-data 4
        0xe4
        0x7f120627
    .end array-data

    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    :array_27
    .array-data 4
        0x134
        0x7f12061a
    .end array-data

    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    :array_28
    .array-data 4
        0x138
        0x7f120609
    .end array-data

    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    :array_29
    .array-data 4
        0x13a
        0x7f120608
    .end array-data

    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    :array_2a
    .array-data 4
        0x149
        0x7f120634
    .end array-data

    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    :array_2b
    .array-data 4
        0x191
        0x7f120617
    .end array-data

    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    :array_2c
    .array-data 4
        0x194
        0x7f120633
    .end array-data

    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    :array_2d
    .array-data 4
        0x1f5
        0x7f12061e
    .end array-data

    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    :array_2e
    .array-data 4
        0x2cb
        0x7f120607
    .end array-data

    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    :array_2f
    .array-data 4
        0x387
        0x7f12060a
    .end array-data

    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    :array_30
    .array-data 4
        0x3a0
        0x7f120631
    .end array-data

    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    :array_31
    .array-data 4
        0x3f2
        0x7f120622
    .end array-data

    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    :array_32
    .array-data 4
        0x400
        0x7f120635
    .end array-data

    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    :array_33
    .array-data 4
        0x401
        0x7f12062a
    .end array-data

    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    :array_34
    .array-data 4
        0x458
        0x7f120623
    .end array-data

    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    :array_35
    .array-data 4
        0x4c9
        0x7f12060f
    .end array-data

    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    :array_36
    .array-data 4
        -0x1
        0x7f120614
    .end array-data

    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    :array_37
    .array-data 4
        0x65
        0x7f120624
    .end array-data

    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    :array_38
    .array-data 4
        0xd6
        0x7f120636
    .end array-data

    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    :array_39
    .array-data 4
        0x1f5
        0x7f12061e
    .end array-data

    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    :array_3a
    .array-data 4
        0x2bd
        0x7f120619
    .end array-data

    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    :array_3b
    .array-data 4
        0x3e9
        0x7f120622
    .end array-data

    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    :array_3c
    .array-data 4
        0x4c9
        0x7f12060f
    .end array-data
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
.end method

.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lz3/k;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lz3/k;->b:Landroid/content/res/Resources;

    .line 5
    invoke-direct {p0, p1}, Lz3/k;->g(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lz3/k$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lz3/k;-><init>()V

    return-void
.end method

.method static synthetic a()Lmiuix/core/util/f;
    .locals 1

    .line 1
    sget-object v0, Lz3/k;->f:Lmiuix/core/util/f;

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

.method static synthetic b(Lz3/k;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lz3/k;->g(Ljava/lang/String;)V

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

.method public static c()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lz3/k;->i:Lz3/k$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Lz3/k;->i:Lz3/k$c;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    sput-object v0, Lz3/k;->i:Lz3/k$c;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    :cond_0
    :goto_0
    return-void
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
.end method

.method public static d()Lz3/k;
    .locals 1

    .line 1
    sget-object v0, Lz3/k;->f:Lmiuix/core/util/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lmiuix/core/util/f;->c()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lz3/k;

    .line 8
    .line 9
    return-object v0
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

.method private g(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lz3/k;->a:Ljava/lang/String;

    .line 6
    .line 7
    const-string v0, "CN"

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, Lz3/k;->a:Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "HK"

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lz3/k;->a:Ljava/lang/String;

    .line 26
    .line 27
    const-string v0, "TW"

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p1, 0x0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 39
    :goto_1
    iput-boolean p1, p0, Lz3/k;->c:Z

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
.end method


# virtual methods
.method protected final e(I)I
    .locals 11

    .line 1
    sget-object v0, Lz3/k;->h:Landroid/util/SparseIntArray;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_2

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-static {p1, v1}, Lcom/miui/calendar/holiday/utils/Calendar;->solarTermDaysOfMonth(II)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    and-int/lit16 v6, v2, 0xff

    .line 16
    .line 17
    sget-object v2, Lz3/k;->g:Lmiuix/core/util/e$e;

    .line 18
    .line 19
    invoke-interface {v2}, Lmiuix/core/util/e$e;->b()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lcom/miui/calendar/holiday/utils/Calendar;

    .line 24
    .line 25
    const/4 v5, 0x2

    .line 26
    const/4 v7, 0x0

    .line 27
    const/4 v8, 0x0

    .line 28
    const/4 v9, 0x0

    .line 29
    const/4 v10, 0x0

    .line 30
    move v4, p1

    .line 31
    invoke-virtual/range {v3 .. v10}, Lcom/miui/calendar/holiday/utils/Calendar;->set(IIIIIII)Lcom/miui/calendar/holiday/utils/Calendar;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const/16 v4, 0xa

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Lcom/miui/calendar/holiday/utils/Calendar;->get(I)I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    const/4 v6, 0x6

    .line 42
    const/16 v7, 0xf

    .line 43
    .line 44
    if-ge v5, v7, :cond_0

    .line 45
    .line 46
    invoke-virtual {v3, v4}, Lcom/miui/calendar/holiday/utils/Calendar;->get(I)I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    sub-int/2addr v7, v4

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    invoke-virtual {v3}, Lcom/miui/calendar/holiday/utils/Calendar;->isChineseLeapMonth()Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-eqz v5, :cond_1

    .line 57
    .line 58
    invoke-static {p1}, Lcom/miui/calendar/holiday/utils/Calendar;->leapDaysInChineseYear(I)I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {v3, v6}, Lcom/miui/calendar/holiday/utils/Calendar;->get(I)I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    invoke-static {p1, v5}, Lcom/miui/calendar/holiday/utils/Calendar;->daysInChineseMonth(II)I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    :goto_0
    invoke-virtual {v3, v4}, Lcom/miui/calendar/holiday/utils/Calendar;->get(I)I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    sub-int/2addr v5, v4

    .line 76
    add-int/2addr v7, v5

    .line 77
    :goto_1
    const/16 v4, 0x9

    .line 78
    .line 79
    invoke-virtual {v3, v4, v7}, Lcom/miui/calendar/holiday/utils/Calendar;->add(II)Lcom/miui/calendar/holiday/utils/Calendar;

    .line 80
    .line 81
    .line 82
    const/16 v5, 0xe

    .line 83
    .line 84
    invoke-virtual {v3, v5}, Lcom/miui/calendar/holiday/utils/Calendar;->get(I)I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    const/4 v7, 0x1

    .line 89
    const/4 v8, 0x5

    .line 90
    packed-switch v5, :pswitch_data_0

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :pswitch_0
    invoke-virtual {v3, v4, v7}, Lcom/miui/calendar/holiday/utils/Calendar;->add(II)Lcom/miui/calendar/holiday/utils/Calendar;

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :pswitch_1
    invoke-virtual {v3, v4, v1}, Lcom/miui/calendar/holiday/utils/Calendar;->add(II)Lcom/miui/calendar/holiday/utils/Calendar;

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :pswitch_2
    const/4 v1, 0x3

    .line 103
    invoke-virtual {v3, v4, v1}, Lcom/miui/calendar/holiday/utils/Calendar;->add(II)Lcom/miui/calendar/holiday/utils/Calendar;

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :pswitch_3
    const/4 v1, 0x4

    .line 108
    invoke-virtual {v3, v4, v1}, Lcom/miui/calendar/holiday/utils/Calendar;->add(II)Lcom/miui/calendar/holiday/utils/Calendar;

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :pswitch_4
    invoke-virtual {v3, v4, v8}, Lcom/miui/calendar/holiday/utils/Calendar;->add(II)Lcom/miui/calendar/holiday/utils/Calendar;

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :pswitch_5
    invoke-virtual {v3, v4, v6}, Lcom/miui/calendar/holiday/utils/Calendar;->add(II)Lcom/miui/calendar/holiday/utils/Calendar;

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :pswitch_6
    const/4 v1, 0x7

    .line 121
    invoke-virtual {v3, v4, v1}, Lcom/miui/calendar/holiday/utils/Calendar;->add(II)Lcom/miui/calendar/holiday/utils/Calendar;

    .line 122
    .line 123
    .line 124
    :goto_2
    invoke-virtual {v3, v8}, Lcom/miui/calendar/holiday/utils/Calendar;->get(I)I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    add-int/2addr v1, v7

    .line 129
    mul-int/lit8 v1, v1, 0x64

    .line 130
    .line 131
    invoke-virtual {v3, v4}, Lcom/miui/calendar/holiday/utils/Calendar;->get(I)I

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    add-int/2addr v1, v4

    .line 136
    invoke-interface {v2, v3}, Lmiuix/core/util/e$e;->a(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 140
    .line 141
    .line 142
    :cond_2
    return v1

    .line 143
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

.method public f(Lcom/miui/calendar/holiday/utils/Calendar;)Ljava/lang/String;
    .locals 11

    .line 1
    sget-object v0, Lz3/k;->d:Landroid/util/ArrayMap;

    .line 2
    .line 3
    iget-object v1, p0, Lz3/k;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, [[I

    .line 10
    .line 11
    const-string v2, ""

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    move-object v1, v0

    .line 20
    check-cast v1, [[I

    .line 21
    .line 22
    :cond_0
    const/4 v0, 0x5

    .line 23
    invoke-virtual {p1, v0}, Lcom/miui/calendar/holiday/utils/Calendar;->get(I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v3, 0x1

    .line 28
    add-int/2addr v0, v3

    .line 29
    mul-int/lit8 v0, v0, 0x64

    .line 30
    .line 31
    const/16 v4, 0x9

    .line 32
    .line 33
    invoke-virtual {p1, v4}, Lcom/miui/calendar/holiday/utils/Calendar;->get(I)I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    add-int/2addr v0, v4

    .line 38
    array-length v4, v1

    .line 39
    const/4 v5, 0x0

    .line 40
    move v6, v5

    .line 41
    :goto_0
    const/4 v7, -0x1

    .line 42
    if-ge v6, v4, :cond_3

    .line 43
    .line 44
    aget-object v8, v1, v6

    .line 45
    .line 46
    aget v9, v8, v5

    .line 47
    .line 48
    if-eq v9, v7, :cond_1

    .line 49
    .line 50
    if-ne v9, v0, :cond_2

    .line 51
    .line 52
    iget-object p1, p0, Lz3/k;->b:Landroid/content/res/Resources;

    .line 53
    .line 54
    aget v0, v8, v3

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1

    .line 61
    :cond_1
    invoke-virtual {p1, v3}, Lcom/miui/calendar/holiday/utils/Calendar;->get(I)I

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    invoke-virtual {p0, v7}, Lz3/k;->e(I)I

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    if-ne v0, v7, :cond_2

    .line 70
    .line 71
    iget-object p1, p0, Lz3/k;->b:Landroid/content/res/Resources;

    .line 72
    .line 73
    aget v0, v8, v3

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    return-object p1

    .line 80
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    iget-boolean v0, p0, Lz3/k;->c:Z

    .line 84
    .line 85
    if-eqz v0, :cond_6

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/miui/calendar/holiday/utils/Calendar;->outOfChineseCalendarRange()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-nez v0, :cond_6

    .line 92
    .line 93
    const/4 v0, 0x6

    .line 94
    invoke-virtual {p1, v0}, Lcom/miui/calendar/holiday/utils/Calendar;->get(I)I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    add-int/2addr v0, v3

    .line 99
    mul-int/lit8 v0, v0, 0x64

    .line 100
    .line 101
    const/16 v1, 0xa

    .line 102
    .line 103
    invoke-virtual {p1, v1}, Lcom/miui/calendar/holiday/utils/Calendar;->get(I)I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    add-int/2addr v0, v1

    .line 108
    sget-object v1, Lz3/k;->e:[[I

    .line 109
    .line 110
    array-length v4, v1

    .line 111
    move v6, v5

    .line 112
    :goto_1
    if-ge v6, v4, :cond_6

    .line 113
    .line 114
    aget-object v8, v1, v6

    .line 115
    .line 116
    aget v9, v8, v5

    .line 117
    .line 118
    if-eq v9, v7, :cond_4

    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/miui/calendar/holiday/utils/Calendar;->isChineseLeapMonth()Z

    .line 121
    .line 122
    .line 123
    move-result v9

    .line 124
    if-nez v9, :cond_5

    .line 125
    .line 126
    aget v9, v8, v5

    .line 127
    .line 128
    if-ne v0, v9, :cond_5

    .line 129
    .line 130
    iget-object p1, p0, Lz3/k;->b:Landroid/content/res/Resources;

    .line 131
    .line 132
    aget v0, v8, v3

    .line 133
    .line 134
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    return-object p1

    .line 139
    :cond_4
    const/4 v9, 0x2

    .line 140
    invoke-virtual {p1, v9}, Lcom/miui/calendar/holiday/utils/Calendar;->get(I)I

    .line 141
    .line 142
    .line 143
    move-result v9

    .line 144
    invoke-static {v9}, Lcom/miui/calendar/holiday/utils/Calendar;->daysInChineseYear(I)I

    .line 145
    .line 146
    .line 147
    move-result v9

    .line 148
    const/16 v10, 0xd

    .line 149
    .line 150
    invoke-virtual {p1, v10}, Lcom/miui/calendar/holiday/utils/Calendar;->get(I)I

    .line 151
    .line 152
    .line 153
    move-result v10

    .line 154
    if-ne v9, v10, :cond_5

    .line 155
    .line 156
    iget-object p1, p0, Lz3/k;->b:Landroid/content/res/Resources;

    .line 157
    .line 158
    aget v0, v8, v3

    .line 159
    .line 160
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    return-object p1

    .line 165
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_6
    return-object v2
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

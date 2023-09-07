.class public Lbb/b;
.super Lbb/a;
.source "MiuiDefaultItemAnimator.java"


# static fields
.field public static v:Landroid/view/View$OnAttachStateChangeListener;

.field public static w:Ld9/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lbb/b$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lbb/b$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lbb/b;->v:Landroid/view/View$OnAttachStateChangeListener;

    .line 7
    .line 8
    new-instance v0, Ld9/a;

    .line 9
    .line 10
    invoke-direct {v0}, Ld9/a;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Ld9/a;->m(F)Ld9/a;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lbb/b;->w:Ld9/a;

    .line 19
    .line 20
    return-void
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lbb/a;-><init>()V

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
.end method


# virtual methods
.method S(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lbb/a;->e0(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    new-array v1, v0, [Landroid/view/View;

    .line 6
    .line 7
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    aput-object v2, v1, v3

    .line 11
    .line 12
    invoke-static {v1}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x3

    .line 21
    new-array v2, v2, [Ljava/lang/Object;

    .line 22
    .line 23
    sget-object v4, Lmiuix/animation/property/h;->n:Lmiuix/animation/property/h;

    .line 24
    .line 25
    aput-object v4, v2, v3

    .line 26
    .line 27
    const/high16 v5, 0x3f800000    # 1.0f

    .line 28
    .line 29
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    aput-object v5, v2, v0

    .line 34
    .line 35
    sget-object v6, Lbb/b;->w:Ld9/a;

    .line 36
    .line 37
    const/4 v7, 0x2

    .line 38
    aput-object v6, v2, v7

    .line 39
    .line 40
    invoke-interface {v1, v2}, Lmiuix/animation/f;->I([Ljava/lang/Object;)Lmiuix/animation/f;

    .line 41
    .line 42
    .line 43
    new-array v1, v0, [Landroid/view/View;

    .line 44
    .line 45
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    .line 46
    .line 47
    aput-object v2, v1, v3

    .line 48
    .line 49
    invoke-static {v1}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-interface {v1}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    new-array v2, v7, [Ljava/lang/Object;

    .line 58
    .line 59
    aput-object v4, v2, v3

    .line 60
    .line 61
    aput-object v5, v2, v0

    .line 62
    .line 63
    invoke-interface {v1, v2}, Lmiuix/animation/f;->h([Ljava/lang/Object;)J

    .line 64
    .line 65
    .line 66
    move-result-wide v0

    .line 67
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    .line 68
    .line 69
    new-instance v3, Lbb/b$d;

    .line 70
    .line 71
    invoke-direct {v3, p0, p1}, Lbb/b$d;-><init>(Lbb/b;Landroidx/recyclerview/widget/RecyclerView$c0;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 75
    .line 76
    .line 77
    return-void
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

.method T(Lbb/a$c;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Lbb/a$c;->a:Landroidx/recyclerview/widget/RecyclerView$c0;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    move-object v4, v3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v4, v2, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    .line 13
    .line 14
    :goto_0
    iget-object v5, v1, Lbb/a$c;->b:Landroidx/recyclerview/widget/RecyclerView$c0;

    .line 15
    .line 16
    if-eqz v5, :cond_1

    .line 17
    .line 18
    iget-object v3, v5, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    .line 19
    .line 20
    :cond_1
    const/4 v6, 0x5

    .line 21
    const/4 v7, 0x4

    .line 22
    const/4 v8, 0x3

    .line 23
    const/4 v9, 0x2

    .line 24
    const/4 v10, 0x1

    .line 25
    const/4 v11, 0x0

    .line 26
    if-eqz v4, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0, v2, v10}, Lbb/a;->g0(Landroidx/recyclerview/widget/RecyclerView$c0;Z)V

    .line 29
    .line 30
    .line 31
    sget-object v12, Lbb/b;->v:Landroid/view/View$OnAttachStateChangeListener;

    .line 32
    .line 33
    invoke-virtual {v4, v12}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 34
    .line 35
    .line 36
    new-array v12, v10, [Landroid/view/View;

    .line 37
    .line 38
    aput-object v4, v12, v11

    .line 39
    .line 40
    invoke-static {v12}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 41
    .line 42
    .line 43
    move-result-object v12

    .line 44
    invoke-interface {v12}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 45
    .line 46
    .line 47
    move-result-object v12

    .line 48
    new-array v13, v6, [Ljava/lang/Object;

    .line 49
    .line 50
    sget-object v14, Lmiuix/animation/property/h;->a:Lmiuix/animation/property/h;

    .line 51
    .line 52
    aput-object v14, v13, v11

    .line 53
    .line 54
    iget v15, v1, Lbb/a$c;->e:I

    .line 55
    .line 56
    iget v6, v1, Lbb/a$c;->c:I

    .line 57
    .line 58
    sub-int/2addr v15, v6

    .line 59
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    aput-object v6, v13, v10

    .line 64
    .line 65
    sget-object v6, Lmiuix/animation/property/h;->b:Lmiuix/animation/property/h;

    .line 66
    .line 67
    aput-object v6, v13, v9

    .line 68
    .line 69
    iget v15, v1, Lbb/a$c;->f:I

    .line 70
    .line 71
    iget v9, v1, Lbb/a$c;->d:I

    .line 72
    .line 73
    sub-int/2addr v15, v9

    .line 74
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    aput-object v9, v13, v8

    .line 79
    .line 80
    sget-object v9, Lbb/b;->w:Ld9/a;

    .line 81
    .line 82
    aput-object v9, v13, v7

    .line 83
    .line 84
    invoke-interface {v12, v13}, Lmiuix/animation/f;->I([Ljava/lang/Object;)Lmiuix/animation/f;

    .line 85
    .line 86
    .line 87
    new-array v9, v10, [Landroid/view/View;

    .line 88
    .line 89
    aput-object v4, v9, v11

    .line 90
    .line 91
    invoke-static {v9}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    invoke-interface {v9}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 96
    .line 97
    .line 98
    move-result-object v9

    .line 99
    new-array v12, v7, [Ljava/lang/Object;

    .line 100
    .line 101
    aput-object v14, v12, v11

    .line 102
    .line 103
    iget v13, v1, Lbb/a$c;->e:I

    .line 104
    .line 105
    iget v14, v1, Lbb/a$c;->c:I

    .line 106
    .line 107
    sub-int/2addr v13, v14

    .line 108
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v13

    .line 112
    aput-object v13, v12, v10

    .line 113
    .line 114
    const/4 v13, 0x2

    .line 115
    aput-object v6, v12, v13

    .line 116
    .line 117
    iget v6, v1, Lbb/a$c;->f:I

    .line 118
    .line 119
    iget v1, v1, Lbb/a$c;->d:I

    .line 120
    .line 121
    sub-int/2addr v6, v1

    .line 122
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    aput-object v1, v12, v8

    .line 127
    .line 128
    invoke-interface {v9, v12}, Lmiuix/animation/f;->h([Ljava/lang/Object;)J

    .line 129
    .line 130
    .line 131
    move-result-wide v12

    .line 132
    new-instance v1, Lbb/b$e;

    .line 133
    .line 134
    invoke-direct {v1, v0, v4, v2}, Lbb/b$e;-><init>(Lbb/b;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$c0;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v4, v1, v12, v13}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 138
    .line 139
    .line 140
    :cond_2
    if-eqz v3, :cond_3

    .line 141
    .line 142
    invoke-virtual {v0, v5, v11}, Lbb/a;->g0(Landroidx/recyclerview/widget/RecyclerView$c0;Z)V

    .line 143
    .line 144
    .line 145
    new-array v1, v10, [Landroid/view/View;

    .line 146
    .line 147
    aput-object v3, v1, v11

    .line 148
    .line 149
    invoke-static {v1}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-interface {v1}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    const/4 v2, 0x5

    .line 158
    new-array v2, v2, [Ljava/lang/Object;

    .line 159
    .line 160
    sget-object v6, Lmiuix/animation/property/h;->a:Lmiuix/animation/property/h;

    .line 161
    .line 162
    aput-object v6, v2, v11

    .line 163
    .line 164
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object v9

    .line 168
    aput-object v9, v2, v10

    .line 169
    .line 170
    sget-object v9, Lmiuix/animation/property/h;->b:Lmiuix/animation/property/h;

    .line 171
    .line 172
    const/4 v12, 0x2

    .line 173
    aput-object v9, v2, v12

    .line 174
    .line 175
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object v12

    .line 179
    aput-object v12, v2, v8

    .line 180
    .line 181
    sget-object v12, Lbb/b;->w:Ld9/a;

    .line 182
    .line 183
    aput-object v12, v2, v7

    .line 184
    .line 185
    invoke-interface {v1, v2}, Lmiuix/animation/f;->I([Ljava/lang/Object;)Lmiuix/animation/f;

    .line 186
    .line 187
    .line 188
    new-array v1, v10, [Landroid/view/View;

    .line 189
    .line 190
    aput-object v3, v1, v11

    .line 191
    .line 192
    invoke-static {v1}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-interface {v1}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    new-array v2, v7, [Ljava/lang/Object;

    .line 201
    .line 202
    aput-object v6, v2, v11

    .line 203
    .line 204
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    aput-object v6, v2, v10

    .line 209
    .line 210
    const/4 v6, 0x2

    .line 211
    aput-object v9, v2, v6

    .line 212
    .line 213
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 214
    .line 215
    .line 216
    move-result-object v6

    .line 217
    aput-object v6, v2, v8

    .line 218
    .line 219
    invoke-interface {v1, v2}, Lmiuix/animation/f;->h([Ljava/lang/Object;)J

    .line 220
    .line 221
    .line 222
    move-result-wide v1

    .line 223
    new-instance v6, Lbb/b$f;

    .line 224
    .line 225
    invoke-direct {v6, v0, v4, v5}, Lbb/b$f;-><init>(Lbb/b;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$c0;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v3, v6, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 229
    .line 230
    .line 231
    :cond_3
    return-void
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

.method U(Lbb/a$d;)V
    .locals 12

    .line 1
    iget-object v0, p1, Lbb/a$d;->a:Landroidx/recyclerview/widget/RecyclerView$c0;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lbb/a;->i0(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lbb/a$d;->a:Landroidx/recyclerview/widget/RecyclerView$c0;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    new-array v2, v1, [Landroid/view/View;

    .line 10
    .line 11
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    aput-object v3, v2, v4

    .line 19
    .line 20
    invoke-static {v2}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-interface {v2}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const/4 v3, 0x5

    .line 29
    new-array v3, v3, [Ljava/lang/Object;

    .line 30
    .line 31
    sget-object v6, Lmiuix/animation/property/h;->a:Lmiuix/animation/property/h;

    .line 32
    .line 33
    aput-object v6, v3, v4

    .line 34
    .line 35
    aput-object v5, v3, v1

    .line 36
    .line 37
    sget-object v7, Lmiuix/animation/property/h;->b:Lmiuix/animation/property/h;

    .line 38
    .line 39
    const/4 v8, 0x2

    .line 40
    aput-object v7, v3, v8

    .line 41
    .line 42
    const/4 v9, 0x3

    .line 43
    aput-object v5, v3, v9

    .line 44
    .line 45
    sget-object v10, Lbb/b;->w:Ld9/a;

    .line 46
    .line 47
    const/4 v11, 0x4

    .line 48
    aput-object v10, v3, v11

    .line 49
    .line 50
    invoke-interface {v2, v3}, Lmiuix/animation/f;->I([Ljava/lang/Object;)Lmiuix/animation/f;

    .line 51
    .line 52
    .line 53
    new-array v2, v1, [Landroid/view/View;

    .line 54
    .line 55
    iget-object v3, p1, Lbb/a$d;->a:Landroidx/recyclerview/widget/RecyclerView$c0;

    .line 56
    .line 57
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    .line 58
    .line 59
    aput-object v3, v2, v4

    .line 60
    .line 61
    invoke-static {v2}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-interface {v2}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    new-array v3, v11, [Ljava/lang/Object;

    .line 70
    .line 71
    aput-object v6, v3, v4

    .line 72
    .line 73
    aput-object v5, v3, v1

    .line 74
    .line 75
    aput-object v7, v3, v8

    .line 76
    .line 77
    aput-object v5, v3, v9

    .line 78
    .line 79
    invoke-interface {v2, v3}, Lmiuix/animation/f;->h([Ljava/lang/Object;)J

    .line 80
    .line 81
    .line 82
    move-result-wide v1

    .line 83
    iget-object p1, p1, Lbb/a$d;->a:Landroidx/recyclerview/widget/RecyclerView$c0;

    .line 84
    .line 85
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    .line 86
    .line 87
    new-instance v3, Lbb/b$c;

    .line 88
    .line 89
    invoke-direct {v3, p0, v0}, Lbb/b$c;-><init>(Lbb/b;Landroidx/recyclerview/widget/RecyclerView$c0;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v3, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    .line 94
    .line 95
    return-void
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

.method V(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lbb/a;->k0(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    .line 5
    .line 6
    sget-object v1, Lbb/b;->v:Landroid/view/View$OnAttachStateChangeListener;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    new-array v1, v0, [Landroid/view/View;

    .line 13
    .line 14
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    aput-object v2, v1, v3

    .line 18
    .line 19
    invoke-static {v1}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v1}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x3

    .line 28
    new-array v2, v2, [Ljava/lang/Object;

    .line 29
    .line 30
    sget-object v4, Lmiuix/animation/property/h;->n:Lmiuix/animation/property/h;

    .line 31
    .line 32
    aput-object v4, v2, v3

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    aput-object v5, v2, v0

    .line 40
    .line 41
    sget-object v6, Lbb/b;->w:Ld9/a;

    .line 42
    .line 43
    const/4 v7, 0x2

    .line 44
    aput-object v6, v2, v7

    .line 45
    .line 46
    invoke-interface {v1, v2}, Lmiuix/animation/f;->I([Ljava/lang/Object;)Lmiuix/animation/f;

    .line 47
    .line 48
    .line 49
    new-array v1, v0, [Landroid/view/View;

    .line 50
    .line 51
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    .line 52
    .line 53
    aput-object v2, v1, v3

    .line 54
    .line 55
    invoke-static {v1}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-interface {v1}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    new-array v2, v7, [Ljava/lang/Object;

    .line 64
    .line 65
    aput-object v4, v2, v3

    .line 66
    .line 67
    aput-object v5, v2, v0

    .line 68
    .line 69
    invoke-interface {v1, v2}, Lmiuix/animation/f;->h([Ljava/lang/Object;)J

    .line 70
    .line 71
    .line 72
    move-result-wide v0

    .line 73
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    .line 74
    .line 75
    new-instance v3, Lbb/b$b;

    .line 76
    .line 77
    invoke-direct {v3, p0, p1}, Lbb/b$b;-><init>(Lbb/b;Landroidx/recyclerview/widget/RecyclerView$c0;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

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
.end method

.method l0(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lbb/b;->p0(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 8
    .line 9
    .line 10
    return-void
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

.method m0(Lbb/a$c;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lbb/a$c;->a:Landroidx/recyclerview/widget/RecyclerView$c0;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p1, Lbb/a$c;->a:Landroidx/recyclerview/widget/RecyclerView$c0;

    .line 10
    .line 11
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v2, p1, Lbb/a$c;->a:Landroidx/recyclerview/widget/RecyclerView$c0;

    .line 18
    .line 19
    invoke-virtual {p0, v2}, Lbb/b;->p0(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    .line 20
    .line 21
    .line 22
    iget v2, p1, Lbb/a$c;->e:I

    .line 23
    .line 24
    iget v3, p1, Lbb/a$c;->c:I

    .line 25
    .line 26
    sub-int/2addr v2, v3

    .line 27
    int-to-float v2, v2

    .line 28
    sub-float/2addr v2, v0

    .line 29
    float-to-int v2, v2

    .line 30
    iget v3, p1, Lbb/a$c;->f:I

    .line 31
    .line 32
    iget v4, p1, Lbb/a$c;->d:I

    .line 33
    .line 34
    sub-int/2addr v3, v4

    .line 35
    int-to-float v3, v3

    .line 36
    sub-float/2addr v3, v1

    .line 37
    float-to-int v3, v3

    .line 38
    iget-object v4, p1, Lbb/a$c;->a:Landroidx/recyclerview/widget/RecyclerView$c0;

    .line 39
    .line 40
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    .line 41
    .line 42
    invoke-virtual {v4, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p1, Lbb/a$c;->a:Landroidx/recyclerview/widget/RecyclerView$c0;

    .line 46
    .line 47
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p1, Lbb/a$c;->b:Landroidx/recyclerview/widget/RecyclerView$c0;

    .line 53
    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lbb/b;->p0(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p1, Lbb/a$c;->b:Landroidx/recyclerview/widget/RecyclerView$c0;

    .line 60
    .line 61
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    .line 62
    .line 63
    neg-int v1, v2

    .line 64
    int-to-float v1, v1

    .line 65
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p1, Lbb/a$c;->b:Landroidx/recyclerview/widget/RecyclerView$c0;

    .line 69
    .line 70
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    .line 71
    .line 72
    neg-int v0, v3

    .line 73
    int-to-float v0, v0

    .line 74
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 75
    .line 76
    .line 77
    :cond_0
    return-void
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

.method n0(Lbb/a$d;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lbb/a$d;->a:Landroidx/recyclerview/widget/RecyclerView$c0;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    .line 4
    .line 5
    iget v1, p1, Lbb/a$d;->b:I

    .line 6
    .line 7
    iget v2, p1, Lbb/a$d;->d:I

    .line 8
    .line 9
    sub-int/2addr v1, v2

    .line 10
    int-to-float v1, v1

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p1, Lbb/a$d;->a:Landroidx/recyclerview/widget/RecyclerView$c0;

    .line 15
    .line 16
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    .line 17
    .line 18
    iget v1, p1, Lbb/a$d;->c:I

    .line 19
    .line 20
    iget p1, p1, Lbb/a$d;->e:I

    .line 21
    .line 22
    sub-int/2addr v1, p1

    .line 23
    int-to-float p1, v1

    .line 24
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 25
    .line 26
    .line 27
    return-void
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method p0(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 5

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    new-array v1, v0, [Landroid/view/View;

    .line 5
    .line 6
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 10
    .line 11
    invoke-static {v1}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x3

    .line 20
    new-array v2, v2, [Ljava/lang/Object;

    .line 21
    .line 22
    sget-object v4, Lmiuix/animation/property/h;->a:Lmiuix/animation/property/h;

    .line 23
    .line 24
    aput-object v4, v2, v3

    .line 25
    .line 26
    sget-object v3, Lmiuix/animation/property/h;->b:Lmiuix/animation/property/h;

    .line 27
    .line 28
    aput-object v3, v2, v0

    .line 29
    .line 30
    const/4 v0, 0x2

    .line 31
    sget-object v3, Lmiuix/animation/property/h;->n:Lmiuix/animation/property/h;

    .line 32
    .line 33
    aput-object v3, v2, v0

    .line 34
    .line 35
    invoke-interface {v1, v2}, Lmiuix/animation/c;->C([Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    .line 39
    .line 40
    invoke-static {p1}, Lbb/a;->o0(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
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
.end method

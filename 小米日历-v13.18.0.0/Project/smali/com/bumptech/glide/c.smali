.class public final Lcom/bumptech/glide/c;
.super Ljava/lang/Object;
.source "GlideBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/c$c;,
        Lcom/bumptech/glide/c$b;,
        Lcom/bumptech/glide/c$d;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/i<",
            "**>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/bumptech/glide/e$a;

.field private c:Lcom/bumptech/glide/load/engine/i;

.field private d:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

.field private e:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

.field private f:Lp2/h;

.field private g:Lq2/a;

.field private h:Lq2/a;

.field private i:Lp2/a$a;

.field private j:Lp2/i;

.field private k:Lz2/d;

.field private l:I

.field private m:Lcom/bumptech/glide/b$a;

.field private n:Lz2/p$b;

.field private o:Lq2/a;

.field private p:Z

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/request/d<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ln/a;

    .line 5
    .line 6
    invoke-direct {v0}, Ln/a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bumptech/glide/c;->a:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Lcom/bumptech/glide/e$a;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/bumptech/glide/e$a;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/bumptech/glide/c;->b:Lcom/bumptech/glide/e$a;

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    iput v0, p0, Lcom/bumptech/glide/c;->l:I

    .line 20
    .line 21
    new-instance v0, Lcom/bumptech/glide/c$a;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/bumptech/glide/c$a;-><init>(Lcom/bumptech/glide/c;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/bumptech/glide/c;->m:Lcom/bumptech/glide/b$a;

    .line 27
    .line 28
    return-void
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


# virtual methods
.method a(Landroid/content/Context;)Lcom/bumptech/glide/b;
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/c;->g:Lq2/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lq2/a;->g()Lq2/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/bumptech/glide/c;->g:Lq2/a;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/c;->h:Lq2/a;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-static {}, Lq2/a;->e()Lq2/a;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/bumptech/glide/c;->h:Lq2/a;

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/c;->o:Lq2/a;

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    invoke-static {}, Lq2/a;->c()Lq2/a;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/bumptech/glide/c;->o:Lq2/a;

    .line 30
    .line 31
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/c;->j:Lp2/i;

    .line 32
    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    new-instance v0, Lp2/i$a;

    .line 36
    .line 37
    invoke-direct {v0, p1}, Lp2/i$a;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lp2/i$a;->a()Lp2/i;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/bumptech/glide/c;->j:Lp2/i;

    .line 45
    .line 46
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/c;->k:Lz2/d;

    .line 47
    .line 48
    if-nez v0, :cond_4

    .line 49
    .line 50
    new-instance v0, Lz2/f;

    .line 51
    .line 52
    invoke-direct {v0}, Lz2/f;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/bumptech/glide/c;->k:Lz2/d;

    .line 56
    .line 57
    :cond_4
    iget-object v0, p0, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    .line 58
    .line 59
    if-nez v0, :cond_6

    .line 60
    .line 61
    iget-object v0, p0, Lcom/bumptech/glide/c;->j:Lp2/i;

    .line 62
    .line 63
    invoke-virtual {v0}, Lp2/i;->b()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-lez v0, :cond_5

    .line 68
    .line 69
    new-instance v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;

    .line 70
    .line 71
    int-to-long v2, v0

    .line 72
    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/j;-><init>(J)V

    .line 73
    .line 74
    .line 75
    iput-object v1, p0, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_5
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

    .line 79
    .line 80
    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/e;-><init>()V

    .line 81
    .line 82
    .line 83
    iput-object v0, p0, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    .line 84
    .line 85
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/c;->e:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    .line 86
    .line 87
    if-nez v0, :cond_7

    .line 88
    .line 89
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;

    .line 90
    .line 91
    iget-object v1, p0, Lcom/bumptech/glide/c;->j:Lp2/i;

    .line 92
    .line 93
    invoke-virtual {v1}, Lp2/i;->a()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;-><init>(I)V

    .line 98
    .line 99
    .line 100
    iput-object v0, p0, Lcom/bumptech/glide/c;->e:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    .line 101
    .line 102
    :cond_7
    iget-object v0, p0, Lcom/bumptech/glide/c;->f:Lp2/h;

    .line 103
    .line 104
    if-nez v0, :cond_8

    .line 105
    .line 106
    new-instance v0, Lp2/g;

    .line 107
    .line 108
    iget-object v1, p0, Lcom/bumptech/glide/c;->j:Lp2/i;

    .line 109
    .line 110
    invoke-virtual {v1}, Lp2/i;->d()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    int-to-long v1, v1

    .line 115
    invoke-direct {v0, v1, v2}, Lp2/g;-><init>(J)V

    .line 116
    .line 117
    .line 118
    iput-object v0, p0, Lcom/bumptech/glide/c;->f:Lp2/h;

    .line 119
    .line 120
    :cond_8
    iget-object v0, p0, Lcom/bumptech/glide/c;->i:Lp2/a$a;

    .line 121
    .line 122
    if-nez v0, :cond_9

    .line 123
    .line 124
    new-instance v0, Lp2/f;

    .line 125
    .line 126
    invoke-direct {v0, p1}, Lp2/f;-><init>(Landroid/content/Context;)V

    .line 127
    .line 128
    .line 129
    iput-object v0, p0, Lcom/bumptech/glide/c;->i:Lp2/a$a;

    .line 130
    .line 131
    :cond_9
    iget-object v0, p0, Lcom/bumptech/glide/c;->c:Lcom/bumptech/glide/load/engine/i;

    .line 132
    .line 133
    if-nez v0, :cond_a

    .line 134
    .line 135
    new-instance v0, Lcom/bumptech/glide/load/engine/i;

    .line 136
    .line 137
    iget-object v2, p0, Lcom/bumptech/glide/c;->f:Lp2/h;

    .line 138
    .line 139
    iget-object v3, p0, Lcom/bumptech/glide/c;->i:Lp2/a$a;

    .line 140
    .line 141
    iget-object v4, p0, Lcom/bumptech/glide/c;->h:Lq2/a;

    .line 142
    .line 143
    iget-object v5, p0, Lcom/bumptech/glide/c;->g:Lq2/a;

    .line 144
    .line 145
    invoke-static {}, Lq2/a;->h()Lq2/a;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    iget-object v7, p0, Lcom/bumptech/glide/c;->o:Lq2/a;

    .line 150
    .line 151
    iget-boolean v8, p0, Lcom/bumptech/glide/c;->p:Z

    .line 152
    .line 153
    move-object v1, v0

    .line 154
    invoke-direct/range {v1 .. v8}, Lcom/bumptech/glide/load/engine/i;-><init>(Lp2/h;Lp2/a$a;Lq2/a;Lq2/a;Lq2/a;Lq2/a;Z)V

    .line 155
    .line 156
    .line 157
    iput-object v0, p0, Lcom/bumptech/glide/c;->c:Lcom/bumptech/glide/load/engine/i;

    .line 158
    .line 159
    :cond_a
    iget-object v0, p0, Lcom/bumptech/glide/c;->q:Ljava/util/List;

    .line 160
    .line 161
    if-nez v0, :cond_b

    .line 162
    .line 163
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    iput-object v0, p0, Lcom/bumptech/glide/c;->q:Ljava/util/List;

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_b
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    iput-object v0, p0, Lcom/bumptech/glide/c;->q:Ljava/util/List;

    .line 175
    .line 176
    :goto_1
    iget-object v0, p0, Lcom/bumptech/glide/c;->b:Lcom/bumptech/glide/e$a;

    .line 177
    .line 178
    invoke-virtual {v0}, Lcom/bumptech/glide/e$a;->b()Lcom/bumptech/glide/e;

    .line 179
    .line 180
    .line 181
    move-result-object v13

    .line 182
    new-instance v7, Lz2/p;

    .line 183
    .line 184
    iget-object v0, p0, Lcom/bumptech/glide/c;->n:Lz2/p$b;

    .line 185
    .line 186
    invoke-direct {v7, v0, v13}, Lz2/p;-><init>(Lz2/p$b;Lcom/bumptech/glide/e;)V

    .line 187
    .line 188
    .line 189
    new-instance v0, Lcom/bumptech/glide/b;

    .line 190
    .line 191
    iget-object v3, p0, Lcom/bumptech/glide/c;->c:Lcom/bumptech/glide/load/engine/i;

    .line 192
    .line 193
    iget-object v4, p0, Lcom/bumptech/glide/c;->f:Lp2/h;

    .line 194
    .line 195
    iget-object v5, p0, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    .line 196
    .line 197
    iget-object v6, p0, Lcom/bumptech/glide/c;->e:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    .line 198
    .line 199
    iget-object v8, p0, Lcom/bumptech/glide/c;->k:Lz2/d;

    .line 200
    .line 201
    iget v9, p0, Lcom/bumptech/glide/c;->l:I

    .line 202
    .line 203
    iget-object v10, p0, Lcom/bumptech/glide/c;->m:Lcom/bumptech/glide/b$a;

    .line 204
    .line 205
    iget-object v11, p0, Lcom/bumptech/glide/c;->a:Ljava/util/Map;

    .line 206
    .line 207
    iget-object v12, p0, Lcom/bumptech/glide/c;->q:Ljava/util/List;

    .line 208
    .line 209
    move-object v1, v0

    .line 210
    move-object v2, p1

    .line 211
    invoke-direct/range {v1 .. v13}, Lcom/bumptech/glide/b;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/i;Lp2/h;Lcom/bumptech/glide/load/engine/bitmap_recycle/d;Lcom/bumptech/glide/load/engine/bitmap_recycle/b;Lz2/p;Lz2/d;ILcom/bumptech/glide/b$a;Ljava/util/Map;Ljava/util/List;Lcom/bumptech/glide/e;)V

    .line 212
    .line 213
    .line 214
    return-object v0
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

.method b(Lz2/p$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/c;->n:Lz2/p$b;

    .line 2
    .line 3
    return-void
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

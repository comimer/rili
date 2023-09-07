.class public Lcom/miui/calendar/util/calendarcommon2/b;
.super Ljava/lang/Object;
.source "RecurrenceProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/calendar/util/calendarcommon2/b$a;
    }
.end annotation


# static fields
.field private static final f:[I

.field private static final g:[I


# instance fields
.field private a:Lcom/miui/calendar/util/r0;

.field private b:Lcom/miui/calendar/util/r0;

.field private c:Ljava/lang/StringBuilder;

.field private d:Lcom/miui/calendar/util/r0;

.field private e:Lcom/miui/calendar/util/calendarcommon2/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, Lcom/miui/calendar/util/calendarcommon2/b;->f:[I

    .line 9
    .line 10
    new-array v0, v0, [I

    .line 11
    .line 12
    fill-array-data v0, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/miui/calendar/util/calendarcommon2/b;->g:[I

    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :array_0
    .array-data 4
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data

    .line 20
    .line 21
    .line 22
    :array_1
    .array-data 4
        0x0
        0x1f
        0x3b
        0x5a
        0x78
        0x97
        0xb4
        0xd4
        0xf3
        0x111
        0x130
        0x14e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/miui/calendar/util/r0;

    .line 5
    .line 6
    const-string v1, "UTC"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/miui/calendar/util/r0;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/miui/calendar/util/calendarcommon2/b;->a:Lcom/miui/calendar/util/r0;

    .line 12
    .line 13
    new-instance v0, Lcom/miui/calendar/util/r0;

    .line 14
    .line 15
    invoke-direct {v0, v1}, Lcom/miui/calendar/util/r0;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/miui/calendar/util/calendarcommon2/b;->b:Lcom/miui/calendar/util/r0;

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/miui/calendar/util/calendarcommon2/b;->c:Ljava/lang/StringBuilder;

    .line 26
    .line 27
    new-instance v0, Lcom/miui/calendar/util/r0;

    .line 28
    .line 29
    invoke-direct {v0, v1}, Lcom/miui/calendar/util/r0;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/miui/calendar/util/calendarcommon2/b;->d:Lcom/miui/calendar/util/r0;

    .line 33
    .line 34
    new-instance v0, Lcom/miui/calendar/util/calendarcommon2/b$a;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-direct {v0, v1}, Lcom/miui/calendar/util/calendarcommon2/b$a;-><init>(Z)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/miui/calendar/util/calendarcommon2/b;->e:Lcom/miui/calendar/util/calendarcommon2/b$a;

    .line 41
    .line 42
    return-void
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

.method private static c(Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;Lcom/miui/calendar/util/r0;)I
    .locals 14

    .line 1
    iget v0, p0, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->b:I

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    const/4 v2, 0x1

    .line 5
    if-lt v1, v0, :cond_0

    .line 6
    .line 7
    iget v3, p0, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->w:I

    .line 8
    .line 9
    if-lez v3, :cond_0

    .line 10
    .line 11
    iget-object v4, p0, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->v:[I

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/miui/calendar/util/r0;->p()I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    add-int/2addr v5, v2

    .line 18
    invoke-static {v4, v3, v5}, Lcom/miui/calendar/util/calendarcommon2/b;->f([III)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    return v2

    .line 25
    :cond_0
    const/16 v3, 0x9

    .line 26
    .line 27
    const/4 v4, 0x5

    .line 28
    const/4 v5, 0x2

    .line 29
    if-lt v4, v0, :cond_1

    .line 30
    .line 31
    iget v6, p0, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->u:I

    .line 32
    .line 33
    if-lez v6, :cond_1

    .line 34
    .line 35
    iget-object v7, p0, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->t:[I

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/miui/calendar/util/r0;->u()I

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    invoke-virtual {p1, v3}, Lcom/miui/calendar/util/r0;->g(I)I

    .line 42
    .line 43
    .line 44
    move-result v9

    .line 45
    invoke-static {v7, v6, v8, v9}, Lcom/miui/calendar/util/calendarcommon2/b;->g([IIII)Z

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    if-nez v6, :cond_1

    .line 50
    .line 51
    return v5

    .line 52
    :cond_1
    const/4 v6, 0x0

    .line 53
    const/16 v7, 0x8

    .line 54
    .line 55
    const/4 v8, 0x3

    .line 56
    const/4 v9, 0x4

    .line 57
    if-lt v9, v0, :cond_6

    .line 58
    .line 59
    iget v10, p0, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->s:I

    .line 60
    .line 61
    if-lez v10, :cond_2

    .line 62
    .line 63
    iget-object v11, p0, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->r:[I

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/miui/calendar/util/r0;->w()I

    .line 66
    .line 67
    .line 68
    move-result v12

    .line 69
    invoke-virtual {p1, v7}, Lcom/miui/calendar/util/r0;->g(I)I

    .line 70
    .line 71
    .line 72
    move-result v13

    .line 73
    invoke-static {v11, v10, v12, v13}, Lcom/miui/calendar/util/calendarcommon2/b;->g([IIII)Z

    .line 74
    .line 75
    .line 76
    move-result v10

    .line 77
    if-nez v10, :cond_2

    .line 78
    .line 79
    return v8

    .line 80
    :cond_2
    iget v10, p0, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->q:I

    .line 81
    .line 82
    if-lez v10, :cond_3

    .line 83
    .line 84
    iget-object v11, p0, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->p:[I

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/miui/calendar/util/r0;->q()I

    .line 87
    .line 88
    .line 89
    move-result v12

    .line 90
    invoke-virtual {p1, v9}, Lcom/miui/calendar/util/r0;->g(I)I

    .line 91
    .line 92
    .line 93
    move-result v13

    .line 94
    invoke-static {v11, v10, v12, v13}, Lcom/miui/calendar/util/calendarcommon2/b;->g([IIII)Z

    .line 95
    .line 96
    .line 97
    move-result v10

    .line 98
    if-nez v10, :cond_3

    .line 99
    .line 100
    return v9

    .line 101
    :cond_3
    iget v9, p0, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->o:I

    .line 102
    .line 103
    if-lez v9, :cond_6

    .line 104
    .line 105
    iget-object v10, p0, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->m:[I

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/miui/calendar/util/r0;->t()I

    .line 108
    .line 109
    .line 110
    move-result v11

    .line 111
    invoke-static {v11}, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->n(I)I

    .line 112
    .line 113
    .line 114
    move-result v11

    .line 115
    move v12, v6

    .line 116
    :goto_0
    if-ge v12, v9, :cond_5

    .line 117
    .line 118
    aget v13, v10, v12

    .line 119
    .line 120
    if-ne v13, v11, :cond_4

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_4
    add-int/lit8 v12, v12, 0x1

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_5
    return v4

    .line 127
    :cond_6
    :goto_1
    if-lt v8, v0, :cond_7

    .line 128
    .line 129
    iget-object v4, p0, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->k:[I

    .line 130
    .line 131
    iget v9, p0, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->l:I

    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/miui/calendar/util/r0;->m()I

    .line 134
    .line 135
    .line 136
    move-result v10

    .line 137
    invoke-virtual {p1, v8}, Lcom/miui/calendar/util/r0;->g(I)I

    .line 138
    .line 139
    .line 140
    move-result v8

    .line 141
    invoke-static {v4, v9, v10, v8}, Lcom/miui/calendar/util/calendarcommon2/b;->g([IIII)Z

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    if-nez v4, :cond_7

    .line 146
    .line 147
    return v1

    .line 148
    :cond_7
    if-lt v5, v0, :cond_8

    .line 149
    .line 150
    iget-object v4, p0, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->i:[I

    .line 151
    .line 152
    iget v8, p0, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->j:I

    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/miui/calendar/util/r0;->o()I

    .line 155
    .line 156
    .line 157
    move-result v9

    .line 158
    invoke-virtual {p1, v5}, Lcom/miui/calendar/util/r0;->g(I)I

    .line 159
    .line 160
    .line 161
    move-result v10

    .line 162
    invoke-static {v4, v8, v9, v10}, Lcom/miui/calendar/util/calendarcommon2/b;->g([IIII)Z

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    if-nez v4, :cond_8

    .line 167
    .line 168
    const/4 p0, 0x7

    .line 169
    return p0

    .line 170
    :cond_8
    if-lt v2, v0, :cond_9

    .line 171
    .line 172
    iget-object v4, p0, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->g:[I

    .line 173
    .line 174
    iget v8, p0, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->h:I

    .line 175
    .line 176
    invoke-virtual {p1}, Lcom/miui/calendar/util/r0;->r()I

    .line 177
    .line 178
    .line 179
    move-result v9

    .line 180
    invoke-virtual {p1, v2}, Lcom/miui/calendar/util/r0;->g(I)I

    .line 181
    .line 182
    .line 183
    move-result v10

    .line 184
    invoke-static {v4, v8, v9, v10}, Lcom/miui/calendar/util/calendarcommon2/b;->g([IIII)Z

    .line 185
    .line 186
    .line 187
    move-result v4

    .line 188
    if-nez v4, :cond_9

    .line 189
    .line 190
    return v7

    .line 191
    :cond_9
    iget v4, p0, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->y:I

    .line 192
    .line 193
    if-lez v4, :cond_d

    .line 194
    .line 195
    const-string v4, "BYSETPOS not supported with these rules: "

    .line 196
    .line 197
    const-string v7, "RecurrenceProcessor"

    .line 198
    .line 199
    if-ne v0, v1, :cond_c

    .line 200
    .line 201
    iget v0, p0, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->o:I

    .line 202
    .line 203
    if-lez v0, :cond_c

    .line 204
    .line 205
    sub-int/2addr v0, v2

    .line 206
    :goto_2
    if-ltz v0, :cond_b

    .line 207
    .line 208
    iget-object v1, p0, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->n:[I

    .line 209
    .line 210
    aget v1, v1, v0

    .line 211
    .line 212
    if-eqz v1, :cond_a

    .line 213
    .line 214
    invoke-static {v7, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    if-eqz p1, :cond_d

    .line 219
    .line 220
    new-instance p1, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    invoke-static {v7, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    goto :goto_3

    .line 239
    :cond_a
    add-int/lit8 v0, v0, -0x1

    .line 240
    .line 241
    goto :goto_2

    .line 242
    :cond_b
    invoke-static {p0, p1}, Lcom/miui/calendar/util/calendarcommon2/b;->d(Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;Lcom/miui/calendar/util/r0;)Z

    .line 243
    .line 244
    .line 245
    move-result p0

    .line 246
    if-nez p0, :cond_d

    .line 247
    .line 248
    return v3

    .line 249
    :cond_c
    invoke-static {v7, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 250
    .line 251
    .line 252
    move-result p1

    .line 253
    if-eqz p1, :cond_d

    .line 254
    .line 255
    new-instance p1, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p0

    .line 270
    invoke-static {v7, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .line 272
    .line 273
    :cond_d
    :goto_3
    return v6
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

.method private static d(Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;Lcom/miui/calendar/util/r0;)Z
    .locals 10

    .line 1
    invoke-virtual {p1}, Lcom/miui/calendar/util/r0;->t()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/miui/calendar/util/r0;->q()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    add-int/lit8 v0, v0, 0x24

    .line 11
    .line 12
    const/4 v1, 0x7

    .line 13
    rem-int/2addr v0, v1

    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    move v4, v3

    .line 17
    :goto_0
    iget v5, p0, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->o:I

    .line 18
    .line 19
    if-ge v3, v5, :cond_0

    .line 20
    .line 21
    iget-object v5, p0, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->m:[I

    .line 22
    .line 23
    aget v5, v5, v3

    .line 24
    .line 25
    or-int/2addr v4, v5

    .line 26
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v3, 0x4

    .line 30
    invoke-virtual {p1, v3}, Lcom/miui/calendar/util/r0;->g(I)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    new-array v5, v3, [I

    .line 35
    .line 36
    const/4 v6, 0x1

    .line 37
    move v8, v2

    .line 38
    move v7, v6

    .line 39
    :goto_1
    if-gt v7, v3, :cond_3

    .line 40
    .line 41
    const/high16 v9, 0x10000

    .line 42
    .line 43
    shl-int/2addr v9, v0

    .line 44
    and-int/2addr v9, v4

    .line 45
    if-eqz v9, :cond_1

    .line 46
    .line 47
    add-int/lit8 v9, v8, 0x1

    .line 48
    .line 49
    aput v7, v5, v8

    .line 50
    .line 51
    move v8, v9

    .line 52
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 53
    .line 54
    if-ne v0, v1, :cond_2

    .line 55
    .line 56
    move v0, v2

    .line 57
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    iget v0, p0, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->y:I

    .line 61
    .line 62
    sub-int/2addr v0, v6

    .line 63
    :goto_2
    if-ltz v0, :cond_9

    .line 64
    .line 65
    iget-object v1, p0, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->x:[I

    .line 66
    .line 67
    aget v1, v1, v0

    .line 68
    .line 69
    if-lez v1, :cond_5

    .line 70
    .line 71
    if-le v1, v8, :cond_4

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_4
    add-int/lit8 v1, v1, -0x1

    .line 75
    .line 76
    aget v1, v5, v1

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/miui/calendar/util/r0;->q()I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-ne v1, v3, :cond_7

    .line 83
    .line 84
    return v6

    .line 85
    :cond_5
    if-gez v1, :cond_8

    .line 86
    .line 87
    add-int/2addr v1, v8

    .line 88
    if-gez v1, :cond_6

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_6
    aget v1, v5, v1

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/miui/calendar/util/r0;->q()I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-ne v1, v3, :cond_7

    .line 98
    .line 99
    return v6

    .line 100
    :cond_7
    :goto_3
    add-int/lit8 v0, v0, -0x1

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    .line 104
    .line 105
    const-string p1, "invalid bysetpos value"

    .line 106
    .line 107
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p0

    .line 111
    :cond_9
    return v2
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

.method static e(I)Z
    .locals 1

    .line 1
    rem-int/lit8 v0, p0, 0x4

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    rem-int/lit8 v0, p0, 0x64

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    rem-int/lit16 p0, p0, 0x190

    .line 10
    .line 11
    if-nez p0, :cond_1

    .line 12
    .line 13
    :cond_0
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private static f([III)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    if-ge v1, p1, :cond_1

    .line 4
    .line 5
    aget v2, p0, v1

    .line 6
    .line 7
    if-ne v2, p2, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    return v0
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

.method private static g([IIII)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    if-ge v1, p1, :cond_2

    .line 4
    .line 5
    aget v2, p0, v1

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-lez v2, :cond_0

    .line 9
    .line 10
    if-ne v2, p2, :cond_1

    .line 11
    .line 12
    return v3

    .line 13
    :cond_0
    add-int/2addr p3, v2

    .line 14
    if-ne p3, p2, :cond_1

    .line 15
    .line 16
    return v3

    .line 17
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    return v0
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

.method static h(II)I
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/calendar/util/calendarcommon2/b;->f:[I

    .line 2
    .line 3
    aget p1, v0, p1

    .line 4
    .line 5
    const/16 v0, 0x1c

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    return p1

    .line 10
    :cond_0
    invoke-static {p0}, Lcom/miui/calendar/util/calendarcommon2/b;->e(I)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    const/16 v0, 0x1d

    .line 17
    .line 18
    :cond_1
    return v0
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

.method private static final i(Lcom/miui/calendar/util/r0;)J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/miui/calendar/util/r0;->v()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    const/16 v2, 0x1a

    .line 7
    .line 8
    shl-long/2addr v0, v2

    .line 9
    invoke-virtual {p0}, Lcom/miui/calendar/util/r0;->p()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    shl-int/lit8 v2, v2, 0x16

    .line 14
    .line 15
    int-to-long v2, v2

    .line 16
    add-long/2addr v0, v2

    .line 17
    invoke-virtual {p0}, Lcom/miui/calendar/util/r0;->q()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    shl-int/lit8 v2, v2, 0x11

    .line 22
    .line 23
    int-to-long v2, v2

    .line 24
    add-long/2addr v0, v2

    .line 25
    invoke-virtual {p0}, Lcom/miui/calendar/util/r0;->m()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    shl-int/lit8 v2, v2, 0xc

    .line 30
    .line 31
    int-to-long v2, v2

    .line 32
    add-long/2addr v0, v2

    .line 33
    invoke-virtual {p0}, Lcom/miui/calendar/util/r0;->o()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    shl-int/lit8 v2, v2, 0x6

    .line 38
    .line 39
    int-to-long v2, v2

    .line 40
    add-long/2addr v0, v2

    .line 41
    invoke-virtual {p0}, Lcom/miui/calendar/util/r0;->r()I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    int-to-long v2, p0

    .line 46
    add-long/2addr v0, v2

    .line 47
    return-wide v0
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

.method private static final j(Lcom/miui/calendar/util/r0;J)V
    .locals 2

    .line 1
    const/16 v0, 0x1a

    .line 2
    .line 3
    shr-long v0, p1, v0

    .line 4
    .line 5
    long-to-int v0, v0

    .line 6
    invoke-virtual {p0, v0}, Lcom/miui/calendar/util/r0;->N(I)V

    .line 7
    .line 8
    .line 9
    const/16 v0, 0x16

    .line 10
    .line 11
    shr-long v0, p1, v0

    .line 12
    .line 13
    long-to-int v0, v0

    .line 14
    and-int/lit8 v0, v0, 0xf

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/miui/calendar/util/r0;->I(I)V

    .line 17
    .line 18
    .line 19
    const/16 v0, 0x11

    .line 20
    .line 21
    shr-long v0, p1, v0

    .line 22
    .line 23
    long-to-int v0, v0

    .line 24
    and-int/lit8 v0, v0, 0x1f

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lcom/miui/calendar/util/r0;->J(I)V

    .line 27
    .line 28
    .line 29
    const/16 v0, 0xc

    .line 30
    .line 31
    shr-long v0, p1, v0

    .line 32
    .line 33
    long-to-int v0, v0

    .line 34
    and-int/lit8 v0, v0, 0x1f

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lcom/miui/calendar/util/r0;->F(I)V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x6

    .line 40
    shr-long v0, p1, v0

    .line 41
    .line 42
    long-to-int v0, v0

    .line 43
    and-int/lit8 v0, v0, 0x3f

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lcom/miui/calendar/util/r0;->H(I)V

    .line 46
    .line 47
    .line 48
    const-wide/16 v0, 0x3f

    .line 49
    .line 50
    and-long/2addr p1, v0

    .line 51
    long-to-int p1, p1

    .line 52
    invoke-virtual {p0, p1}, Lcom/miui/calendar/util/r0;->K(I)V

    .line 53
    .line 54
    .line 55
    return-void
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
.end method

.method static k(Lcom/miui/calendar/util/r0;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/miui/calendar/util/r0;->r()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/miui/calendar/util/r0;->o()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Lcom/miui/calendar/util/r0;->m()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0}, Lcom/miui/calendar/util/r0;->q()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-virtual {p0}, Lcom/miui/calendar/util/r0;->p()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    invoke-virtual {p0}, Lcom/miui/calendar/util/r0;->v()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-gez v0, :cond_0

    .line 26
    .line 27
    add-int/lit8 v6, v0, -0x3b

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v6, v0

    .line 31
    :goto_0
    div-int/lit8 v6, v6, 0x3c

    .line 32
    .line 33
    mul-int/lit8 v7, v6, 0x3c

    .line 34
    .line 35
    sub-int/2addr v0, v7

    .line 36
    add-int/2addr v1, v6

    .line 37
    if-gez v1, :cond_1

    .line 38
    .line 39
    add-int/lit8 v6, v1, -0x3b

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move v6, v1

    .line 43
    :goto_1
    div-int/lit8 v6, v6, 0x3c

    .line 44
    .line 45
    mul-int/lit8 v7, v6, 0x3c

    .line 46
    .line 47
    sub-int/2addr v1, v7

    .line 48
    add-int/2addr v2, v6

    .line 49
    if-gez v2, :cond_2

    .line 50
    .line 51
    add-int/lit8 v6, v2, -0x17

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    move v6, v2

    .line 55
    :goto_2
    div-int/lit8 v6, v6, 0x18

    .line 56
    .line 57
    mul-int/lit8 v7, v6, 0x18

    .line 58
    .line 59
    sub-int/2addr v2, v7

    .line 60
    add-int/2addr v3, v6

    .line 61
    :goto_3
    const/4 v6, 0x1

    .line 62
    if-gtz v3, :cond_4

    .line 63
    .line 64
    if-le v4, v6, :cond_3

    .line 65
    .line 66
    invoke-static {v5}, Lcom/miui/calendar/util/calendarcommon2/b;->m(I)I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    goto :goto_4

    .line 71
    :cond_3
    add-int/lit8 v6, v5, -0x1

    .line 72
    .line 73
    invoke-static {v6}, Lcom/miui/calendar/util/calendarcommon2/b;->m(I)I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    :goto_4
    add-int/2addr v3, v6

    .line 78
    add-int/lit8 v5, v5, -0x1

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_4
    const/16 v7, 0xc

    .line 82
    .line 83
    if-gez v4, :cond_5

    .line 84
    .line 85
    add-int/lit8 v8, v4, 0x1

    .line 86
    .line 87
    div-int/2addr v8, v7

    .line 88
    sub-int/2addr v8, v6

    .line 89
    add-int/2addr v5, v8

    .line 90
    mul-int/2addr v8, v7

    .line 91
    sub-int/2addr v4, v8

    .line 92
    goto :goto_5

    .line 93
    :cond_5
    if-lt v4, v7, :cond_6

    .line 94
    .line 95
    div-int/lit8 v6, v4, 0xc

    .line 96
    .line 97
    add-int/2addr v5, v6

    .line 98
    mul-int/2addr v6, v7

    .line 99
    sub-int/2addr v4, v6

    .line 100
    :cond_6
    :goto_5
    if-nez v4, :cond_7

    .line 101
    .line 102
    invoke-static {v5}, Lcom/miui/calendar/util/calendarcommon2/b;->m(I)I

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    if-le v3, v6, :cond_7

    .line 107
    .line 108
    add-int/lit8 v5, v5, 0x1

    .line 109
    .line 110
    sub-int/2addr v3, v6

    .line 111
    :cond_7
    invoke-static {v5, v4}, Lcom/miui/calendar/util/calendarcommon2/b;->h(II)I

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-le v3, v6, :cond_8

    .line 116
    .line 117
    sub-int/2addr v3, v6

    .line 118
    add-int/lit8 v4, v4, 0x1

    .line 119
    .line 120
    if-lt v4, v7, :cond_6

    .line 121
    .line 122
    add-int/lit8 v4, v4, -0xc

    .line 123
    .line 124
    add-int/lit8 v5, v5, 0x1

    .line 125
    .line 126
    goto :goto_5

    .line 127
    :cond_8
    invoke-virtual {p0, v0}, Lcom/miui/calendar/util/r0;->K(I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, v1}, Lcom/miui/calendar/util/r0;->H(I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v2}, Lcom/miui/calendar/util/r0;->F(I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v3}, Lcom/miui/calendar/util/r0;->J(I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, v4}, Lcom/miui/calendar/util/r0;->I(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, v5}, Lcom/miui/calendar/util/r0;->N(I)V

    .line 143
    .line 144
    .line 145
    return-void
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

.method private static l(III)Z
    .locals 0

    if-le p0, p1, :cond_0

    if-lez p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static m(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/miui/calendar/util/calendarcommon2/b;->e(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/16 p0, 0x16e

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/16 p0, 0x16d

    .line 11
    .line 12
    :goto_0
    return p0
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


# virtual methods
.method public a(Lcom/miui/calendar/util/r0;Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;JJZLjava/util/TreeSet;)V
    .locals 55
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/calendar/util/r0;",
            "Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;",
            "JJZ",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/calendar/util/calendarcommon2/DateException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v0, p8

    const-string v7, " rangeEnd="

    const-string v8, " rangeStart="

    const-string v9, "RecurrenceProcessor"

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/miui/calendar/util/calendarcommon2/b;->k(Lcom/miui/calendar/util/r0;)V

    .line 2
    invoke-static/range {p1 .. p1}, Lcom/miui/calendar/util/calendarcommon2/b;->i(Lcom/miui/calendar/util/r0;)J

    move-result-wide v10

    if-eqz p7, :cond_0

    cmp-long v14, v10, v3

    if-ltz v14, :cond_0

    cmp-long v14, v10, v5

    if-gez v14, :cond_0

    .line 3
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x1

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    .line 4
    :goto_0
    iget-object v15, v1, Lcom/miui/calendar/util/calendarcommon2/b;->a:Lcom/miui/calendar/util/r0;

    .line 5
    iget-object v12, v1, Lcom/miui/calendar/util/calendarcommon2/b;->b:Lcom/miui/calendar/util/r0;

    .line 6
    iget-object v13, v1, Lcom/miui/calendar/util/calendarcommon2/b;->c:Ljava/lang/StringBuilder;

    move/from16 v17, v14

    .line 7
    iget-object v14, v1, Lcom/miui/calendar/util/calendarcommon2/b;->d:Lcom/miui/calendar/util/r0;

    .line 8
    iget-object v0, v1, Lcom/miui/calendar/util/calendarcommon2/b;->e:Lcom/miui/calendar/util/calendarcommon2/b$a;

    .line 9
    :try_start_0
    invoke-virtual {v0, v2}, Lcom/miui/calendar/util/calendarcommon2/b$a;->c(Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;)V

    const-wide v18, 0x7fffffffffffffffL

    cmp-long v20, v5, v18

    if-nez v20, :cond_2

    .line 10
    iget-object v1, v2, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->c:Ljava/lang/String;

    if-nez v1, :cond_2

    iget v1, v2, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->d:I

    if-eqz v1, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    new-instance v0, Lcom/miui/calendar/util/calendarcommon2/DateException;

    const-string v1, "No range end provided for a recurrence that has no UNTIL or COUNT."

    invoke-direct {v0, v1}, Lcom/miui/calendar/util/calendarcommon2/DateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_2
    :goto_1
    iget v1, v2, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->e:I

    move-wide/from16 v24, v10

    .line 13
    iget v10, v2, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->b:I
    :try_end_0
    .catch Lcom/miui/calendar/util/calendarcommon2/DateException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6

    const/16 v26, 0x7

    packed-switch v10, :pswitch_data_0

    move-object/from16 v45, v7

    move-object/from16 v46, v8

    move-object/from16 v38, v9

    move/from16 v50, v10

    .line 14
    :try_start_1
    new-instance v0, Lcom/miui/calendar/util/calendarcommon2/DateException;
    :try_end_1
    .catch Lcom/miui/calendar/util/calendarcommon2/DateException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4

    goto/16 :goto_1e

    :pswitch_0
    const/16 v27, 0x6

    goto :goto_2

    :pswitch_1
    const/16 v27, 0x5

    goto :goto_2

    :pswitch_2
    mul-int/lit8 v1, v1, 0x7

    if-gtz v1, :cond_3

    move/from16 v1, v26

    :cond_3
    :pswitch_3
    const/16 v27, 0x4

    goto :goto_2

    :pswitch_4
    const/16 v27, 0x3

    goto :goto_2

    :pswitch_5
    const/16 v27, 0x2

    goto :goto_2

    :pswitch_6
    const/16 v27, 0x1

    :goto_2
    if-gtz v1, :cond_4

    const/4 v1, 0x1

    .line 15
    :cond_4
    :try_start_2
    iget v11, v2, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->w:I

    move/from16 v28, v1

    const/4 v1, 0x6

    .line 16
    invoke-static {v10, v1, v11}, Lcom/miui/calendar/util/calendarcommon2/b;->l(III)Z

    move-result v29

    const/4 v1, 0x5

    if-lt v10, v1, :cond_6

    .line 17
    iget v1, v2, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->o:I

    if-gtz v1, :cond_5

    iget v1, v2, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->q:I

    if-lez v1, :cond_6

    :cond_5
    move/from16 v30, v11

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    move/from16 v30, v11

    const/4 v1, 0x0

    .line 18
    :goto_3
    iget v11, v2, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->l:I

    move-object/from16 v31, v0

    const/4 v0, 0x3

    .line 19
    invoke-static {v10, v0, v11}, Lcom/miui/calendar/util/calendarcommon2/b;->l(III)Z

    move-result v0

    move/from16 v32, v11

    .line 20
    iget v11, v2, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->j:I

    move/from16 v33, v0

    const/4 v0, 0x2

    .line 21
    invoke-static {v10, v0, v11}, Lcom/miui/calendar/util/calendarcommon2/b;->l(III)Z

    move-result v0

    move/from16 v34, v11

    .line 22
    iget v11, v2, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->h:I

    move/from16 v35, v0

    const/4 v0, 0x1

    .line 23
    invoke-static {v10, v0, v11}, Lcom/miui/calendar/util/calendarcommon2/b;->l(III)Z

    move-result v36

    move-object/from16 v0, p1

    .line 24
    invoke-virtual {v15, v0}, Lcom/miui/calendar/util/r0;->E(Lcom/miui/calendar/util/r0;)V

    move/from16 v0, v27

    move/from16 v27, v11

    const/4 v11, 0x5

    if-ne v0, v11, :cond_7

    if-eqz v1, :cond_7

    const/4 v11, 0x1

    .line 25
    invoke-virtual {v15, v11}, Lcom/miui/calendar/util/r0;->J(I)V

    .line 26
    :cond_7
    iget-object v11, v2, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->c:Ljava/lang/String;

    move/from16 v37, v0

    if-eqz v11, :cond_9

    .line 27
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    move/from16 v38, v10

    const/16 v10, 0xf

    if-ne v0, v10, :cond_8

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x5a

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 29
    :cond_8
    invoke-virtual {v12, v11}, Lcom/miui/calendar/util/r0;->z(Ljava/lang/String;)Z

    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/miui/calendar/util/r0;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/miui/calendar/util/r0;->O(Ljava/lang/String;)V

    .line 31
    invoke-static {v12}, Lcom/miui/calendar/util/calendarcommon2/b;->i(Lcom/miui/calendar/util/r0;)J

    move-result-wide v18

    goto :goto_4

    :cond_9
    move/from16 v38, v10

    :goto_4
    move-wide/from16 v10, v18

    const/16 v0, 0xf

    .line 32
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 33
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v0, 0x0

    :goto_5
    add-int/lit8 v12, v0, 0x1

    const/16 v13, 0x7d0

    if-le v0, v13, :cond_a

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recurrence processing stuck with r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 35
    :cond_a
    invoke-static {v15}, Lcom/miui/calendar/util/calendarcommon2/b;->k(Lcom/miui/calendar/util/r0;)V

    .line 36
    invoke-virtual {v15}, Lcom/miui/calendar/util/r0;->v()I

    move-result v0

    .line 37
    invoke-virtual {v15}, Lcom/miui/calendar/util/r0;->p()I

    move-result v13

    const/16 v16, 0x1

    add-int/lit8 v13, v13, 0x1

    .line 38
    invoke-virtual {v15}, Lcom/miui/calendar/util/r0;->q()I

    move-result v39

    .line 39
    invoke-virtual {v15}, Lcom/miui/calendar/util/r0;->m()I

    move-result v40

    .line 40
    invoke-virtual {v15}, Lcom/miui/calendar/util/r0;->o()I

    move-result v41

    .line 41
    invoke-virtual {v15}, Lcom/miui/calendar/util/r0;->r()I

    move-result v42

    .line 42
    invoke-virtual {v14, v15}, Lcom/miui/calendar/util/r0;->E(Lcom/miui/calendar/util/r0;)V

    const/16 v43, 0x0

    :goto_6
    if-eqz v29, :cond_b

    move/from16 p1, v12

    .line 43
    iget-object v12, v2, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->v:[I

    aget v12, v12, v43
    :try_end_2
    .catch Lcom/miui/calendar/util/calendarcommon2/DateException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_7

    :cond_b
    move/from16 p1, v12

    move v12, v13

    :goto_7
    add-int/lit8 v12, v12, -0x1

    if-eqz v1, :cond_d

    move/from16 v44, v13

    move/from16 v13, v38

    move-object/from16 v38, v9

    const/4 v9, 0x5

    if-ne v13, v9, :cond_c

    .line 44
    :try_start_3
    invoke-virtual {v15}, Lcom/miui/calendar/util/r0;->t()I

    move-result v9
    :try_end_3
    .catch Lcom/miui/calendar/util/calendarcommon2/DateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v45, v7

    :try_start_4
    iget v7, v2, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->f:I

    .line 45
    invoke-static {v7}, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->i(I)I

    move-result v7

    sub-int/2addr v9, v7

    add-int/lit8 v9, v9, 0x7

    rem-int/lit8 v9, v9, 0x7

    .line 46
    invoke-virtual {v15}, Lcom/miui/calendar/util/r0;->q()I

    move-result v7

    sub-int/2addr v7, v9

    add-int/lit8 v9, v7, 0x6

    move/from16 v54, v9

    move v9, v7

    move/from16 v7, v54

    goto :goto_9

    :catch_0
    move-exception v0

    move-object/from16 v45, v7

    goto :goto_8

    :catch_1
    move-exception v0

    move-object/from16 v9, v38

    goto/16 :goto_20

    :cond_c
    move-object/from16 v45, v7

    const/4 v7, 0x4

    .line 47
    invoke-virtual {v14, v7}, Lcom/miui/calendar/util/r0;->g(I)I

    move-result v9
    :try_end_4
    .catch Lcom/miui/calendar/util/calendarcommon2/DateException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    move v7, v9

    move/from16 v9, v16

    goto :goto_9

    :catch_2
    move-exception v0

    :goto_8
    move-object/from16 v46, v8

    goto/16 :goto_1f

    :catch_3
    move-exception v0

    move-object v7, v8

    move-object/from16 v9, v38

    move-object/from16 v8, v45

    goto/16 :goto_21

    :cond_d
    move-object/from16 v45, v7

    move/from16 v44, v13

    move/from16 v13, v38

    move-object/from16 v38, v9

    move/from16 v9, v16

    const/4 v7, 0x0

    :goto_9
    if-eqz v1, :cond_f

    move-object/from16 v46, v8

    move-object/from16 v8, v31

    .line 48
    :try_start_5
    invoke-virtual {v8, v15, v9}, Lcom/miui/calendar/util/calendarcommon2/b$a;->b(Lcom/miui/calendar/util/r0;I)Z

    move-result v18

    if-nez v18, :cond_e

    add-int/lit8 v9, v9, 0x1

    move/from16 v19, v0

    move-object/from16 v21, v8

    move/from16 v50, v13

    move-object/from16 v53, v15

    move/from16 v15, v27

    move/from16 v8, v32

    move/from16 v13, v34

    goto/16 :goto_17

    :cond_e
    move/from16 v31, v9

    goto :goto_a

    :cond_f
    move-object/from16 v46, v8

    move-object/from16 v8, v31

    move/from16 v31, v39

    :goto_a
    const/16 v47, 0x0

    :goto_b
    if-eqz v33, :cond_10

    move-object/from16 v48, v8

    .line 49
    iget-object v8, v2, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->k:[I

    aget v8, v8, v47

    goto :goto_c

    :cond_10
    move-object/from16 v48, v8

    move/from16 v8, v40

    :goto_c
    const/16 v49, 0x0

    :goto_d
    if-eqz v35, :cond_11

    move/from16 v50, v13

    .line 50
    iget-object v13, v2, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->i:[I

    aget v13, v13, v49

    goto :goto_e

    :cond_11
    move/from16 v50, v13

    move/from16 v13, v41

    :goto_e
    move/from16 v51, v17

    const/16 v52, 0x0

    :goto_f
    if-eqz v36, :cond_12

    move-object/from16 v53, v15

    .line 51
    iget-object v15, v2, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->g:[I

    aget v15, v15, v52

    move/from16 v18, v15

    goto :goto_10

    :cond_12
    move-object/from16 v53, v15

    move/from16 v18, v42

    :goto_10
    move-object/from16 v17, v14

    move/from16 v19, v13

    move/from16 v20, v8

    move/from16 v21, v31

    move/from16 v22, v12

    move/from16 v23, v0

    .line 52
    invoke-virtual/range {v17 .. v23}, Lcom/miui/calendar/util/r0;->C(IIIIII)V

    .line 53
    invoke-static {v14}, Lcom/miui/calendar/util/calendarcommon2/b;->k(Lcom/miui/calendar/util/r0;)V

    .line 54
    invoke-static {v14}, Lcom/miui/calendar/util/calendarcommon2/b;->i(Lcom/miui/calendar/util/r0;)J

    move-result-wide v17

    cmp-long v15, v17, v24

    if-ltz v15, :cond_1a

    .line 55
    invoke-static {v2, v14}, Lcom/miui/calendar/util/calendarcommon2/b;->c(Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;Lcom/miui/calendar/util/r0;)I

    move-result v15

    if-nez v15, :cond_1a

    cmp-long v15, v24, v17

    if-nez v15, :cond_13

    if-eqz p7, :cond_13

    cmp-long v15, v24, v3

    if-ltz v15, :cond_13

    cmp-long v15, v24, v5

    if-ltz v15, :cond_14

    :cond_13
    add-int/lit8 v51, v51, 0x1

    :cond_14
    move/from16 v15, v51

    cmp-long v19, v17, v10

    if-lez v19, :cond_15

    goto :goto_12

    :cond_15
    cmp-long v19, v17, v5

    if-ltz v19, :cond_16

    goto :goto_12

    :cond_16
    cmp-long v19, v17, v3

    if-ltz v19, :cond_18

    if-eqz p7, :cond_17

    move/from16 v19, v0

    .line 56
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move/from16 v20, v8

    move-object/from16 v21, v48

    move-object/from16 v8, p8

    invoke-virtual {v8, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_17
    move/from16 v19, v0

    move/from16 v20, v8

    move-object/from16 v21, v48

    move-object/from16 v8, p8

    .line 57
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_18
    move/from16 v19, v0

    move/from16 v20, v8

    move-object/from16 v21, v48

    move-object/from16 v8, p8

    .line 58
    :goto_11
    iget v0, v2, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->d:I

    if-lez v0, :cond_19

    if-ne v0, v15, :cond_19

    :goto_12
    return-void

    :cond_19
    move/from16 v51, v15

    goto :goto_13

    :cond_1a
    move/from16 v19, v0

    move/from16 v20, v8

    move-object/from16 v21, v48

    move-object/from16 v8, p8

    :goto_13
    add-int/lit8 v0, v52, 0x1

    move/from16 v15, v27

    if-eqz v36, :cond_1c

    if-lt v0, v15, :cond_1b

    goto :goto_14

    :cond_1b
    move/from16 v52, v0

    move/from16 v27, v15

    move/from16 v0, v19

    move/from16 v8, v20

    move-object/from16 v48, v21

    move-object/from16 v15, v53

    goto/16 :goto_f

    :cond_1c
    :goto_14
    add-int/lit8 v0, v49, 0x1

    move/from16 v13, v34

    if-eqz v35, :cond_1e

    if-lt v0, v13, :cond_1d

    goto :goto_15

    :cond_1d
    move/from16 v49, v0

    move/from16 v34, v13

    move/from16 v27, v15

    move/from16 v0, v19

    move/from16 v8, v20

    move-object/from16 v48, v21

    move/from16 v13, v50

    move/from16 v17, v51

    move-object/from16 v15, v53

    goto/16 :goto_d

    :cond_1e
    :goto_15
    add-int/lit8 v0, v47, 0x1

    move/from16 v8, v32

    if-eqz v33, :cond_20

    if-lt v0, v8, :cond_1f

    goto :goto_16

    :cond_1f
    move/from16 v47, v0

    move/from16 v32, v8

    move/from16 v34, v13

    move/from16 v27, v15

    move/from16 v0, v19

    move-object/from16 v8, v21

    move/from16 v13, v50

    move/from16 v17, v51

    move-object/from16 v15, v53

    goto/16 :goto_b

    :cond_20
    :goto_16
    add-int/lit8 v9, v9, 0x1

    move/from16 v17, v51

    :goto_17
    if-eqz v1, :cond_22

    if-le v9, v7, :cond_21

    goto :goto_18

    :cond_21
    move/from16 v32, v8

    move/from16 v34, v13

    move/from16 v27, v15

    move/from16 v0, v19

    move-object/from16 v31, v21

    move-object/from16 v8, v46

    move/from16 v13, v50

    move-object/from16 v15, v53

    goto/16 :goto_9

    :cond_22
    :goto_18
    add-int/lit8 v0, v43, 0x1

    move/from16 v7, v30

    if-eqz v29, :cond_24

    if-lt v0, v7, :cond_23

    goto :goto_19

    :cond_23
    move/from16 v12, p1

    move/from16 v43, v0

    move/from16 v30, v7

    move/from16 v32, v8

    move/from16 v34, v13

    move/from16 v27, v15

    move/from16 v0, v19

    move-object/from16 v31, v21

    move-object/from16 v9, v38

    move/from16 v13, v44

    move-object/from16 v7, v45

    move-object/from16 v8, v46

    move/from16 v38, v50

    move-object/from16 v15, v53

    goto/16 :goto_6

    .line 59
    :cond_24
    :goto_19
    invoke-virtual/range {v53 .. v53}, Lcom/miui/calendar/util/r0;->q()I

    move-result v0

    move-object/from16 v9, v53

    .line 60
    invoke-virtual {v14, v9}, Lcom/miui/calendar/util/r0;->E(Lcom/miui/calendar/util/r0;)V

    move/from16 v12, v16

    :goto_1a
    mul-int v18, v28, v12

    packed-switch v37, :pswitch_data_1

    move/from16 v1, v37

    .line 61
    new-instance v0, Ljava/lang/RuntimeException;

    goto/16 :goto_1d

    .line 62
    :pswitch_7
    invoke-virtual {v9}, Lcom/miui/calendar/util/r0;->q()I

    move-result v19

    move/from16 v20, v1

    add-int v1, v19, v18

    invoke-virtual {v9, v1}, Lcom/miui/calendar/util/r0;->J(I)V

    goto :goto_1b

    :pswitch_8
    move/from16 v20, v1

    .line 63
    invoke-virtual {v9}, Lcom/miui/calendar/util/r0;->q()I

    move-result v1

    add-int v1, v1, v18

    invoke-virtual {v9, v1}, Lcom/miui/calendar/util/r0;->J(I)V

    goto :goto_1b

    :pswitch_9
    move/from16 v20, v1

    .line 64
    invoke-virtual {v9}, Lcom/miui/calendar/util/r0;->v()I

    move-result v1

    add-int v1, v1, v18

    invoke-virtual {v9, v1}, Lcom/miui/calendar/util/r0;->N(I)V

    goto :goto_1b

    :pswitch_a
    move/from16 v20, v1

    .line 65
    invoke-virtual {v9}, Lcom/miui/calendar/util/r0;->p()I

    move-result v1

    add-int v1, v1, v18

    invoke-virtual {v9, v1}, Lcom/miui/calendar/util/r0;->I(I)V

    goto :goto_1b

    :pswitch_b
    move/from16 v20, v1

    .line 66
    invoke-virtual {v9}, Lcom/miui/calendar/util/r0;->q()I

    move-result v1

    add-int v1, v1, v18

    invoke-virtual {v9, v1}, Lcom/miui/calendar/util/r0;->J(I)V

    goto :goto_1b

    :pswitch_c
    move/from16 v20, v1

    .line 67
    invoke-virtual {v9}, Lcom/miui/calendar/util/r0;->m()I

    move-result v1

    add-int v1, v1, v18

    invoke-virtual {v9, v1}, Lcom/miui/calendar/util/r0;->F(I)V

    goto :goto_1b

    :pswitch_d
    move/from16 v20, v1

    .line 68
    invoke-virtual {v9}, Lcom/miui/calendar/util/r0;->o()I

    move-result v1

    add-int v1, v1, v18

    invoke-virtual {v9, v1}, Lcom/miui/calendar/util/r0;->H(I)V

    goto :goto_1b

    :pswitch_e
    move/from16 v20, v1

    .line 69
    invoke-virtual {v9}, Lcom/miui/calendar/util/r0;->r()I

    move-result v1

    add-int v1, v1, v18

    invoke-virtual {v9, v1}, Lcom/miui/calendar/util/r0;->K(I)V

    .line 70
    :goto_1b
    invoke-static {v9}, Lcom/miui/calendar/util/calendarcommon2/b;->k(Lcom/miui/calendar/util/r0;)V

    move/from16 v30, v7

    move/from16 v1, v37

    const/4 v7, 0x6

    if-eq v1, v7, :cond_25

    const/4 v7, 0x5

    if-eq v1, v7, :cond_25

    goto :goto_1c

    .line 71
    :cond_25
    invoke-virtual {v9}, Lcom/miui/calendar/util/r0;->q()I

    move-result v7

    if-ne v7, v0, :cond_26

    :goto_1c
    move/from16 v0, p1

    move/from16 v37, v1

    move/from16 v32, v8

    move/from16 v34, v13

    move/from16 v27, v15

    move/from16 v1, v20

    move-object/from16 v31, v21

    move-object/from16 v7, v45

    move-object/from16 v8, v46

    move-object v15, v9

    move-object/from16 v9, v38

    move/from16 v38, v50

    goto/16 :goto_5

    :cond_26
    add-int/lit8 v12, v12, 0x1

    .line 72
    invoke-virtual {v9, v14}, Lcom/miui/calendar/util/r0;->E(Lcom/miui/calendar/util/r0;)V

    move/from16 v37, v1

    move/from16 v1, v20

    move/from16 v7, v30

    goto/16 :goto_1a

    .line 73
    :goto_1d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bad field="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :goto_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bad freq="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, v50

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/calendar/util/calendarcommon2/DateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Lcom/miui/calendar/util/calendarcommon2/DateException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    move-exception v0

    goto :goto_1f

    :catch_5
    move-exception v0

    move-object/from16 v9, v38

    move-object/from16 v8, v45

    move-object/from16 v7, v46

    goto :goto_21

    :catch_6
    move-exception v0

    move-object/from16 v45, v7

    move-object/from16 v46, v8

    move-object/from16 v38, v9

    .line 75
    :goto_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RuntimeException with r="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v46

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v8, v45

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v9, v38

    invoke-static {v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    throw v0

    :catch_7
    move-exception v0

    :goto_20
    move-object/from16 v54, v8

    move-object v8, v7

    move-object/from16 v7, v54

    .line 77
    :goto_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DateException with r="

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    throw v0

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

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public b(Lcom/miui/calendar/util/r0;Lcom/miui/calendar/util/calendarcommon2/c;JJ)[J
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/calendar/util/calendarcommon2/DateException;
        }
    .end annotation

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v10, p2

    .line 4
    .line 5
    move-wide/from16 v0, p5

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/miui/calendar/util/r0;->s()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, v9, Lcom/miui/calendar/util/calendarcommon2/b;->a:Lcom/miui/calendar/util/r0;

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Lcom/miui/calendar/util/r0;->c(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v3, v9, Lcom/miui/calendar/util/calendarcommon2/b;->d:Lcom/miui/calendar/util/r0;

    .line 17
    .line 18
    invoke-virtual {v3, v2}, Lcom/miui/calendar/util/r0;->c(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v2, v9, Lcom/miui/calendar/util/calendarcommon2/b;->a:Lcom/miui/calendar/util/r0;

    .line 22
    .line 23
    move-wide/from16 v3, p3

    .line 24
    .line 25
    invoke-virtual {v2, v3, v4}, Lcom/miui/calendar/util/r0;->D(J)V

    .line 26
    .line 27
    .line 28
    iget-object v2, v9, Lcom/miui/calendar/util/calendarcommon2/b;->a:Lcom/miui/calendar/util/r0;

    .line 29
    .line 30
    invoke-static {v2}, Lcom/miui/calendar/util/calendarcommon2/b;->i(Lcom/miui/calendar/util/r0;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v11

    .line 34
    const-wide/16 v2, -0x1

    .line 35
    .line 36
    cmp-long v2, v0, v2

    .line 37
    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    iget-object v2, v9, Lcom/miui/calendar/util/calendarcommon2/b;->a:Lcom/miui/calendar/util/r0;

    .line 41
    .line 42
    invoke-virtual {v2, v0, v1}, Lcom/miui/calendar/util/r0;->D(J)V

    .line 43
    .line 44
    .line 45
    iget-object v0, v9, Lcom/miui/calendar/util/calendarcommon2/b;->a:Lcom/miui/calendar/util/r0;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/miui/calendar/util/calendarcommon2/b;->i(Lcom/miui/calendar/util/r0;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    :goto_0
    move-wide v13, v0

    .line 58
    new-instance v15, Ljava/util/TreeSet;

    .line 59
    .line 60
    invoke-direct {v15}, Ljava/util/TreeSet;-><init>()V

    .line 61
    .line 62
    .line 63
    iget-object v8, v10, Lcom/miui/calendar/util/calendarcommon2/c;->a:[Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;

    .line 64
    .line 65
    const/4 v7, 0x0

    .line 66
    if-eqz v8, :cond_1

    .line 67
    .line 68
    array-length v5, v8

    .line 69
    move v6, v7

    .line 70
    :goto_1
    if-ge v6, v5, :cond_1

    .line 71
    .line 72
    aget-object v2, v8, v6

    .line 73
    .line 74
    const/16 v16, 0x1

    .line 75
    .line 76
    move-object/from16 v0, p0

    .line 77
    .line 78
    move-object/from16 v1, p1

    .line 79
    .line 80
    move-wide v3, v11

    .line 81
    move/from16 v17, v5

    .line 82
    .line 83
    move/from16 v18, v6

    .line 84
    .line 85
    move-wide v5, v13

    .line 86
    move/from16 v7, v16

    .line 87
    .line 88
    move-object/from16 v16, v8

    .line 89
    .line 90
    move-object v8, v15

    .line 91
    invoke-virtual/range {v0 .. v8}, Lcom/miui/calendar/util/calendarcommon2/b;->a(Lcom/miui/calendar/util/r0;Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;JJZLjava/util/TreeSet;)V

    .line 92
    .line 93
    .line 94
    add-int/lit8 v6, v18, 0x1

    .line 95
    .line 96
    move-object/from16 v8, v16

    .line 97
    .line 98
    move/from16 v5, v17

    .line 99
    .line 100
    const/4 v7, 0x0

    .line 101
    goto :goto_1

    .line 102
    :cond_1
    iget-object v0, v10, Lcom/miui/calendar/util/calendarcommon2/c;->b:[J

    .line 103
    .line 104
    if-eqz v0, :cond_2

    .line 105
    .line 106
    array-length v1, v0

    .line 107
    const/4 v7, 0x0

    .line 108
    :goto_2
    if-ge v7, v1, :cond_2

    .line 109
    .line 110
    aget-wide v2, v0, v7

    .line 111
    .line 112
    iget-object v4, v9, Lcom/miui/calendar/util/calendarcommon2/b;->a:Lcom/miui/calendar/util/r0;

    .line 113
    .line 114
    invoke-virtual {v4, v2, v3}, Lcom/miui/calendar/util/r0;->D(J)V

    .line 115
    .line 116
    .line 117
    iget-object v2, v9, Lcom/miui/calendar/util/calendarcommon2/b;->a:Lcom/miui/calendar/util/r0;

    .line 118
    .line 119
    invoke-static {v2}, Lcom/miui/calendar/util/calendarcommon2/b;->i(Lcom/miui/calendar/util/r0;)J

    .line 120
    .line 121
    .line 122
    move-result-wide v2

    .line 123
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v15, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    add-int/lit8 v7, v7, 0x1

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_2
    iget-object v8, v10, Lcom/miui/calendar/util/calendarcommon2/c;->c:[Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;

    .line 134
    .line 135
    if-eqz v8, :cond_3

    .line 136
    .line 137
    array-length v7, v8

    .line 138
    const/4 v5, 0x0

    .line 139
    :goto_3
    if-ge v5, v7, :cond_3

    .line 140
    .line 141
    aget-object v2, v8, v5

    .line 142
    .line 143
    const/16 v16, 0x0

    .line 144
    .line 145
    move-object/from16 v0, p0

    .line 146
    .line 147
    move-object/from16 v1, p1

    .line 148
    .line 149
    move-wide v3, v11

    .line 150
    move/from16 v17, v5

    .line 151
    .line 152
    move-wide v5, v13

    .line 153
    move/from16 v18, v7

    .line 154
    .line 155
    move/from16 v7, v16

    .line 156
    .line 157
    move-object/from16 v16, v8

    .line 158
    .line 159
    move-object v8, v15

    .line 160
    invoke-virtual/range {v0 .. v8}, Lcom/miui/calendar/util/calendarcommon2/b;->a(Lcom/miui/calendar/util/r0;Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;JJZLjava/util/TreeSet;)V

    .line 161
    .line 162
    .line 163
    add-int/lit8 v5, v17, 0x1

    .line 164
    .line 165
    move-object/from16 v8, v16

    .line 166
    .line 167
    move/from16 v7, v18

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_3
    iget-object v0, v10, Lcom/miui/calendar/util/calendarcommon2/c;->d:[J

    .line 171
    .line 172
    if-eqz v0, :cond_4

    .line 173
    .line 174
    array-length v1, v0

    .line 175
    const/4 v7, 0x0

    .line 176
    :goto_4
    if-ge v7, v1, :cond_4

    .line 177
    .line 178
    aget-wide v2, v0, v7

    .line 179
    .line 180
    iget-object v4, v9, Lcom/miui/calendar/util/calendarcommon2/b;->a:Lcom/miui/calendar/util/r0;

    .line 181
    .line 182
    invoke-virtual {v4, v2, v3}, Lcom/miui/calendar/util/r0;->D(J)V

    .line 183
    .line 184
    .line 185
    iget-object v2, v9, Lcom/miui/calendar/util/calendarcommon2/b;->a:Lcom/miui/calendar/util/r0;

    .line 186
    .line 187
    invoke-static {v2}, Lcom/miui/calendar/util/calendarcommon2/b;->i(Lcom/miui/calendar/util/r0;)J

    .line 188
    .line 189
    .line 190
    move-result-wide v2

    .line 191
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-virtual {v15, v2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    add-int/lit8 v7, v7, 0x1

    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_4
    invoke-virtual {v15}, Ljava/util/TreeSet;->isEmpty()Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-eqz v0, :cond_5

    .line 206
    .line 207
    const/4 v0, 0x0

    .line 208
    new-array v0, v0, [J

    .line 209
    .line 210
    return-object v0

    .line 211
    :cond_5
    const/4 v0, 0x0

    .line 212
    invoke-virtual {v15}, Ljava/util/TreeSet;->size()I

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    new-array v1, v1, [J

    .line 217
    .line 218
    invoke-virtual {v15}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    :goto_5
    move v7, v0

    .line 223
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    if-eqz v0, :cond_6

    .line 228
    .line 229
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    check-cast v0, Ljava/lang/Long;

    .line 234
    .line 235
    iget-object v3, v9, Lcom/miui/calendar/util/calendarcommon2/b;->a:Lcom/miui/calendar/util/r0;

    .line 236
    .line 237
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 238
    .line 239
    .line 240
    move-result-wide v4

    .line 241
    invoke-static {v3, v4, v5}, Lcom/miui/calendar/util/calendarcommon2/b;->j(Lcom/miui/calendar/util/r0;J)V

    .line 242
    .line 243
    .line 244
    add-int/lit8 v0, v7, 0x1

    .line 245
    .line 246
    iget-object v3, v9, Lcom/miui/calendar/util/calendarcommon2/b;->a:Lcom/miui/calendar/util/r0;

    .line 247
    .line 248
    const/4 v4, 0x1

    .line 249
    invoke-virtual {v3, v4}, Lcom/miui/calendar/util/r0;->P(Z)J

    .line 250
    .line 251
    .line 252
    move-result-wide v3

    .line 253
    aput-wide v3, v1, v7

    .line 254
    .line 255
    goto :goto_5

    .line 256
    :cond_6
    return-object v1
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

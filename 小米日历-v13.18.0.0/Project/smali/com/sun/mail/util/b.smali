.class public Lcom/sun/mail/util/b;
.super Ljava/io/FilterInputStream;
.source "BASE64DecoderStream.java"


# static fields
.field private static final h:[C

.field private static final i:[B


# instance fields
.field private a:[B

.field private b:I

.field private c:I

.field private d:[B

.field private e:I

.field private f:I

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    new-array v0, v0, [C

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/sun/mail/util/b;->h:[C

    .line 9
    .line 10
    const/16 v0, 0x100

    .line 11
    .line 12
    new-array v0, v0, [B

    .line 13
    .line 14
    sput-object v0, Lcom/sun/mail/util/b;->i:[B

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    move v1, v0

    .line 18
    :goto_0
    const/16 v2, 0xff

    .line 19
    .line 20
    if-ge v1, v2, :cond_0

    .line 21
    .line 22
    sget-object v2, Lcom/sun/mail/util/b;->i:[B

    .line 23
    .line 24
    const/4 v3, -0x1

    .line 25
    aput-byte v3, v2, v1

    .line 26
    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    :goto_1
    sget-object v1, Lcom/sun/mail/util/b;->h:[C

    .line 31
    .line 32
    array-length v2, v1

    .line 33
    if-ge v0, v2, :cond_1

    .line 34
    .line 35
    sget-object v2, Lcom/sun/mail/util/b;->i:[B

    .line 36
    .line 37
    aget-char v1, v1, v0

    .line 38
    .line 39
    int-to-byte v3, v0

    .line 40
    aput-byte v3, v2, v1

    .line 41
    .line 42
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    return-void

    .line 46
    nop

    .line 47
    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data
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

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x3

    .line 5
    new-array p1, p1, [B

    .line 6
    .line 7
    iput-object p1, p0, Lcom/sun/mail/util/b;->a:[B

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/sun/mail/util/b;->b:I

    .line 11
    .line 12
    iput p1, p0, Lcom/sun/mail/util/b;->c:I

    .line 13
    .line 14
    const/16 v0, 0x1ffe

    .line 15
    .line 16
    new-array v0, v0, [B

    .line 17
    .line 18
    iput-object v0, p0, Lcom/sun/mail/util/b;->d:[B

    .line 19
    .line 20
    iput p1, p0, Lcom/sun/mail/util/b;->e:I

    .line 21
    .line 22
    iput p1, p0, Lcom/sun/mail/util/b;->f:I

    .line 23
    .line 24
    iput-boolean p1, p0, Lcom/sun/mail/util/b;->g:Z

    .line 25
    .line 26
    const-string v0, "mail.mime.base64.ignoreerrors"

    .line 27
    .line 28
    invoke-static {v0, p1}, Lcom/sun/mail/util/h;->b(Ljava/lang/String;Z)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput-boolean p1, p0, Lcom/sun/mail/util/b;->g:Z

    .line 33
    .line 34
    return-void
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
.end method

.method private c([BII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move v0, p2

    .line 2
    :goto_0
    const/4 v1, 0x3

    .line 3
    if-lt p3, v1, :cond_10

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    move v3, v2

    .line 8
    :goto_1
    const/4 v4, 0x4

    .line 9
    if-ge v2, v4, :cond_f

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/sun/mail/util/b;->d()I

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    const/4 v6, -0x2

    .line 16
    const/4 v7, -0x1

    .line 17
    if-eq v5, v7, :cond_1

    .line 18
    .line 19
    if-ne v5, v6, :cond_0

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_0
    shl-int/lit8 v3, v3, 0x6

    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    or-int/2addr v3, v5

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_2
    const/4 p3, 0x2

    .line 29
    const/4 v8, 0x1

    .line 30
    if-ne v5, v7, :cond_4

    .line 31
    .line 32
    if-nez v2, :cond_2

    .line 33
    .line 34
    sub-int/2addr v0, p2

    .line 35
    return v0

    .line 36
    :cond_2
    iget-boolean v1, p0, Lcom/sun/mail/util/b;->g:Z

    .line 37
    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    move v1, v8

    .line 41
    goto :goto_4

    .line 42
    :cond_3
    new-instance p1, Lcom/sun/mail/util/DecodingException;

    .line 43
    .line 44
    new-instance p2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string p3, "BASE64Decoder: Error in encoded stream: needed 4 valid base64 characters but only got "

    .line 50
    .line 51
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p3, " before EOF"

    .line 58
    .line 59
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-direct {p0}, Lcom/sun/mail/util/b;->e()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-direct {p1, p2}, Lcom/sun/mail/util/DecodingException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p1

    .line 77
    :cond_4
    if-ge v2, p3, :cond_6

    .line 78
    .line 79
    iget-boolean v5, p0, Lcom/sun/mail/util/b;->g:Z

    .line 80
    .line 81
    if-eqz v5, :cond_5

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_5
    new-instance p1, Lcom/sun/mail/util/DecodingException;

    .line 85
    .line 86
    new-instance p2, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string p3, "BASE64Decoder: Error in encoded stream: needed at least 2 valid base64 characters, but only got "

    .line 92
    .line 93
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string p3, " before padding character (=)"

    .line 100
    .line 101
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-direct {p0}, Lcom/sun/mail/util/b;->e()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p3

    .line 108
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-direct {p1, p2}, Lcom/sun/mail/util/DecodingException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p1

    .line 119
    :cond_6
    :goto_3
    if-nez v2, :cond_7

    .line 120
    .line 121
    sub-int/2addr v0, p2

    .line 122
    return v0

    .line 123
    :cond_7
    :goto_4
    add-int/lit8 v5, v2, -0x1

    .line 124
    .line 125
    if-nez v5, :cond_8

    .line 126
    .line 127
    move v5, v8

    .line 128
    :cond_8
    add-int/2addr v2, v8

    .line 129
    shl-int/lit8 v3, v3, 0x6

    .line 130
    .line 131
    :goto_5
    if-ge v2, v4, :cond_d

    .line 132
    .line 133
    if-nez v1, :cond_c

    .line 134
    .line 135
    invoke-direct {p0}, Lcom/sun/mail/util/b;->d()I

    .line 136
    .line 137
    .line 138
    move-result v8

    .line 139
    if-ne v8, v7, :cond_a

    .line 140
    .line 141
    iget-boolean v8, p0, Lcom/sun/mail/util/b;->g:Z

    .line 142
    .line 143
    if-eqz v8, :cond_9

    .line 144
    .line 145
    goto :goto_6

    .line 146
    :cond_9
    new-instance p1, Lcom/sun/mail/util/DecodingException;

    .line 147
    .line 148
    new-instance p2, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    const-string p3, "BASE64Decoder: Error in encoded stream: hit EOF while looking for padding characters (=)"

    .line 154
    .line 155
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-direct {p0}, Lcom/sun/mail/util/b;->e()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p3

    .line 162
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    invoke-direct {p1, p2}, Lcom/sun/mail/util/DecodingException;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw p1

    .line 173
    :cond_a
    if-eq v8, v6, :cond_c

    .line 174
    .line 175
    iget-boolean v8, p0, Lcom/sun/mail/util/b;->g:Z

    .line 176
    .line 177
    if-eqz v8, :cond_b

    .line 178
    .line 179
    goto :goto_6

    .line 180
    :cond_b
    new-instance p1, Lcom/sun/mail/util/DecodingException;

    .line 181
    .line 182
    new-instance p2, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    .line 187
    const-string p3, "BASE64Decoder: Error in encoded stream: found valid base64 character after a padding character (=)"

    .line 188
    .line 189
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-direct {p0}, Lcom/sun/mail/util/b;->e()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p3

    .line 196
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    invoke-direct {p1, p2}, Lcom/sun/mail/util/DecodingException;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw p1

    .line 207
    :cond_c
    :goto_6
    shl-int/lit8 v3, v3, 0x6

    .line 208
    .line 209
    add-int/lit8 v2, v2, 0x1

    .line 210
    .line 211
    goto :goto_5

    .line 212
    :cond_d
    shr-int/lit8 v1, v3, 0x8

    .line 213
    .line 214
    if-ne v5, p3, :cond_e

    .line 215
    .line 216
    add-int/lit8 p3, v0, 0x1

    .line 217
    .line 218
    and-int/lit16 v2, v1, 0xff

    .line 219
    .line 220
    int-to-byte v2, v2

    .line 221
    aput-byte v2, p1, p3

    .line 222
    .line 223
    :cond_e
    shr-int/lit8 p3, v1, 0x8

    .line 224
    .line 225
    and-int/lit16 p3, p3, 0xff

    .line 226
    .line 227
    int-to-byte p3, p3

    .line 228
    aput-byte p3, p1, v0

    .line 229
    .line 230
    add-int/2addr v0, v5

    .line 231
    sub-int/2addr v0, p2

    .line 232
    return v0

    .line 233
    :cond_f
    add-int/lit8 v1, v0, 0x2

    .line 234
    .line 235
    and-int/lit16 v2, v3, 0xff

    .line 236
    .line 237
    int-to-byte v2, v2

    .line 238
    aput-byte v2, p1, v1

    .line 239
    .line 240
    shr-int/lit8 v1, v3, 0x8

    .line 241
    .line 242
    add-int/lit8 v2, v0, 0x1

    .line 243
    .line 244
    and-int/lit16 v3, v1, 0xff

    .line 245
    .line 246
    int-to-byte v3, v3

    .line 247
    aput-byte v3, p1, v2

    .line 248
    .line 249
    shr-int/lit8 v1, v1, 0x8

    .line 250
    .line 251
    and-int/lit16 v1, v1, 0xff

    .line 252
    .line 253
    int-to-byte v1, v1

    .line 254
    aput-byte v1, p1, v0

    .line 255
    .line 256
    add-int/lit8 p3, p3, -0x3

    .line 257
    .line 258
    add-int/lit8 v0, v0, 0x3

    .line 259
    .line 260
    goto/16 :goto_0

    .line 261
    .line 262
    :cond_10
    sub-int/2addr v0, p2

    .line 263
    return v0
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

.method private d()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    iget v0, p0, Lcom/sun/mail/util/b;->e:I

    .line 2
    .line 3
    iget v1, p0, Lcom/sun/mail/util/b;->f:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-lt v0, v1, :cond_2

    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/sun/mail/util/b;->d:[B

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/sun/mail/util/b;->f:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    if-gtz v0, :cond_1

    .line 19
    .line 20
    return v2

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/sun/mail/util/b;->e:I

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    return v2

    .line 26
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sun/mail/util/b;->d:[B

    .line 27
    .line 28
    iget v1, p0, Lcom/sun/mail/util/b;->e:I

    .line 29
    .line 30
    add-int/lit8 v3, v1, 0x1

    .line 31
    .line 32
    iput v3, p0, Lcom/sun/mail/util/b;->e:I

    .line 33
    .line 34
    aget-byte v0, v0, v1

    .line 35
    .line 36
    and-int/lit16 v0, v0, 0xff

    .line 37
    .line 38
    const/16 v1, 0x3d

    .line 39
    .line 40
    if-ne v0, v1, :cond_3

    .line 41
    .line 42
    const/4 v0, -0x2

    .line 43
    return v0

    .line 44
    :cond_3
    sget-object v1, Lcom/sun/mail/util/b;->i:[B

    .line 45
    .line 46
    aget-byte v0, v1, v0

    .line 47
    .line 48
    if-eq v0, v2, :cond_0

    .line 49
    .line 50
    return v0
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

.method private e()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lcom/sun/mail/util/b;->e:I

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    if-le v0, v1, :cond_0

    .line 6
    .line 7
    move v0, v1

    .line 8
    :cond_0
    const-string v2, ""

    .line 9
    .line 10
    if-lez v0, :cond_6

    .line 11
    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, ", the "

    .line 21
    .line 22
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, " most recent characters were: \""

    .line 29
    .line 30
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget v3, p0, Lcom/sun/mail/util/b;->e:I

    .line 38
    .line 39
    sub-int/2addr v3, v0

    .line 40
    :goto_0
    iget v0, p0, Lcom/sun/mail/util/b;->e:I

    .line 41
    .line 42
    if-ge v3, v0, :cond_5

    .line 43
    .line 44
    iget-object v0, p0, Lcom/sun/mail/util/b;->d:[B

    .line 45
    .line 46
    aget-byte v0, v0, v3

    .line 47
    .line 48
    and-int/lit16 v0, v0, 0xff

    .line 49
    .line 50
    int-to-char v0, v0

    .line 51
    const/16 v4, 0x9

    .line 52
    .line 53
    if-eq v0, v4, :cond_4

    .line 54
    .line 55
    if-eq v0, v1, :cond_3

    .line 56
    .line 57
    const/16 v4, 0xd

    .line 58
    .line 59
    if-eq v0, v4, :cond_2

    .line 60
    .line 61
    const/16 v4, 0x20

    .line 62
    .line 63
    if-lt v0, v4, :cond_1

    .line 64
    .line 65
    const/16 v4, 0x7f

    .line 66
    .line 67
    if-ge v0, v4, :cond_1

    .line 68
    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    goto :goto_1

    .line 85
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v2, "\\"

    .line 94
    .line 95
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    goto :goto_1

    .line 106
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v2, "\\r"

    .line 115
    .line 116
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    goto :goto_1

    .line 124
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v2, "\\n"

    .line 133
    .line 134
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    goto :goto_1

    .line 142
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v2, "\\t"

    .line 151
    .line 152
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    :goto_1
    move-object v2, v0

    .line 160
    add-int/lit8 v3, v3, 0x1

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v1, "\""

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    :cond_6
    return-object v2
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
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x3

    .line 8
    .line 9
    div-int/lit8 v0, v0, 0x4

    .line 10
    .line 11
    iget v1, p0, Lcom/sun/mail/util/b;->b:I

    .line 12
    .line 13
    iget v2, p0, Lcom/sun/mail/util/b;->c:I

    .line 14
    .line 15
    sub-int/2addr v1, v2

    .line 16
    add-int/2addr v0, v1

    .line 17
    return v0
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/sun/mail/util/b;->c:I

    iget v1, p0, Lcom/sun/mail/util/b;->b:I

    if-lt v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/sun/mail/util/b;->a:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/sun/mail/util/b;->c([BII)I

    move-result v0

    iput v0, p0, Lcom/sun/mail/util/b;->b:I

    if-gtz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 3
    :cond_0
    iput v2, p0, Lcom/sun/mail/util/b;->c:I

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/util/b;->a:[B

    iget v1, p0, Lcom/sun/mail/util/b;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/util/b;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    move v1, p2

    .line 5
    :goto_0
    iget v2, p0, Lcom/sun/mail/util/b;->c:I

    iget v3, p0, Lcom/sun/mail/util/b;->b:I

    if-ge v2, v3, :cond_1

    if-lez p3, :cond_1

    add-int/lit8 v3, v1, 0x1

    .line 6
    iget-object v4, p0, Lcom/sun/mail/util/b;->a:[B

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/sun/mail/util/b;->c:I

    aget-byte v2, v4, v2

    aput-byte v2, p1, v1

    add-int/lit8 p3, p3, -0x1

    move v1, v3

    goto :goto_0

    :cond_1
    if-lt v2, v3, :cond_2

    .line 7
    iput v0, p0, Lcom/sun/mail/util/b;->c:I

    iput v0, p0, Lcom/sun/mail/util/b;->b:I

    .line 8
    :cond_2
    div-int/lit8 v0, p3, 0x3

    mul-int/lit8 v0, v0, 0x3

    const/4 v2, -0x1

    if-lez v0, :cond_4

    .line 9
    invoke-direct {p0, p1, v1, v0}, Lcom/sun/mail/util/b;->c([BII)I

    move-result v3

    add-int/2addr v1, v3

    sub-int/2addr p3, v3

    if-eq v3, v0, :cond_4

    if-ne v1, p2, :cond_3

    return v2

    :cond_3
    sub-int/2addr v1, p2

    return v1

    :cond_4
    :goto_1
    if-lez p3, :cond_6

    .line 10
    invoke-virtual {p0}, Lcom/sun/mail/util/b;->read()I

    move-result v0

    if-ne v0, v2, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v1, 0x1

    int-to-byte v0, v0

    .line 11
    aput-byte v0, p1, v1

    add-int/lit8 p3, p3, -0x1

    move v1, v3

    goto :goto_1

    :cond_6
    :goto_2
    if-ne v1, p2, :cond_7

    return v2

    :cond_7
    sub-int/2addr v1, p2

    return v1
.end method

.method public skip(J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    move-wide v2, v0

    .line 4
    :goto_0
    const-wide/16 v4, 0x1

    .line 5
    .line 6
    sub-long v6, p1, v4

    .line 7
    .line 8
    cmp-long p1, p1, v0

    .line 9
    .line 10
    if-lez p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/sun/mail/util/b;->read()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-ltz p1, :cond_0

    .line 17
    .line 18
    add-long/2addr v2, v4

    .line 19
    move-wide p1, v6

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-wide v2
    .line 22
.end method

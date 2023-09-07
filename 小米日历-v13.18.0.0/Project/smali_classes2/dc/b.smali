.class public final Ldc/b;
.super Ljava/lang/Object;
.source "ByteString.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u0019\n\u0002\u0008\u0005\u001a$\u0010\u0007\u001a\u00020\u0006*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003H\u0000\u001a\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0008H\u0002\u001a\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0003H\u0002\"\u001a\u0010\u000f\u001a\u00020\u000e8\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lokio/ByteString;",
        "Lcc/e;",
        "buffer",
        "",
        "offset",
        "byteCount",
        "Lkotlin/u;",
        "d",
        "",
        "c",
        "e",
        "",
        "s",
        "codePointCount",
        "",
        "HEX_DIGIT_CHARS",
        "[C",
        "f",
        "()[C",
        "okio"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [C

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Ldc/b;->a:[C

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 2
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
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
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

.method public static final synthetic a([BI)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ldc/b;->c([BI)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
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
.end method

.method public static final synthetic b(C)I
    .locals 0

    .line 1
    invoke-static {p0}, Ldc/b;->e(C)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
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
.end method

.method private static final c([BI)I
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    array-length v2, v0

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x0

    .line 8
    const/4 v6, 0x0

    .line 9
    :cond_0
    :goto_0
    if-ge v4, v2, :cond_59

    .line 10
    .line 11
    aget-byte v7, v0, v4

    .line 12
    .line 13
    const/16 v8, 0x7f

    .line 14
    .line 15
    const/16 v9, 0x9f

    .line 16
    .line 17
    const/16 v10, 0x1f

    .line 18
    .line 19
    const/16 v11, 0xd

    .line 20
    .line 21
    const v12, 0xfffd

    .line 22
    .line 23
    .line 24
    const/16 v13, 0xa

    .line 25
    .line 26
    const/high16 v14, 0x10000

    .line 27
    .line 28
    const/16 v16, -0x1

    .line 29
    .line 30
    const/16 v17, 0x1

    .line 31
    .line 32
    if-ltz v7, :cond_13

    .line 33
    .line 34
    add-int/lit8 v18, v6, 0x1

    .line 35
    .line 36
    if-ne v6, v1, :cond_1

    .line 37
    .line 38
    return v5

    .line 39
    :cond_1
    if-eq v7, v13, :cond_6

    .line 40
    .line 41
    if-eq v7, v11, :cond_6

    .line 42
    .line 43
    if-ltz v7, :cond_2

    .line 44
    .line 45
    if-ge v10, v7, :cond_4

    .line 46
    .line 47
    :cond_2
    if-le v8, v7, :cond_3

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_3
    if-lt v9, v7, :cond_5

    .line 51
    .line 52
    :cond_4
    move/from16 v6, v17

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_5
    :goto_1
    const/4 v6, 0x0

    .line 56
    :goto_2
    if-nez v6, :cond_7

    .line 57
    .line 58
    :cond_6
    if-ne v7, v12, :cond_8

    .line 59
    .line 60
    :cond_7
    return v16

    .line 61
    :cond_8
    if-ge v7, v14, :cond_9

    .line 62
    .line 63
    move/from16 v6, v17

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_9
    const/4 v6, 0x2

    .line 67
    :goto_3
    add-int/2addr v5, v6

    .line 68
    add-int/lit8 v4, v4, 0x1

    .line 69
    .line 70
    :goto_4
    move/from16 v6, v18

    .line 71
    .line 72
    if-ge v4, v2, :cond_0

    .line 73
    .line 74
    aget-byte v7, v0, v4

    .line 75
    .line 76
    if-ltz v7, :cond_0

    .line 77
    .line 78
    add-int/lit8 v4, v4, 0x1

    .line 79
    .line 80
    add-int/lit8 v18, v6, 0x1

    .line 81
    .line 82
    if-ne v6, v1, :cond_a

    .line 83
    .line 84
    return v5

    .line 85
    :cond_a
    if-eq v7, v13, :cond_f

    .line 86
    .line 87
    if-eq v7, v11, :cond_f

    .line 88
    .line 89
    if-ltz v7, :cond_b

    .line 90
    .line 91
    if-ge v10, v7, :cond_d

    .line 92
    .line 93
    :cond_b
    if-le v8, v7, :cond_c

    .line 94
    .line 95
    goto :goto_5

    .line 96
    :cond_c
    if-lt v9, v7, :cond_e

    .line 97
    .line 98
    :cond_d
    move/from16 v6, v17

    .line 99
    .line 100
    goto :goto_6

    .line 101
    :cond_e
    :goto_5
    const/4 v6, 0x0

    .line 102
    :goto_6
    if-nez v6, :cond_10

    .line 103
    .line 104
    :cond_f
    if-ne v7, v12, :cond_11

    .line 105
    .line 106
    :cond_10
    return v16

    .line 107
    :cond_11
    if-ge v7, v14, :cond_12

    .line 108
    .line 109
    move/from16 v6, v17

    .line 110
    .line 111
    goto :goto_7

    .line 112
    :cond_12
    const/4 v6, 0x2

    .line 113
    :goto_7
    add-int/2addr v5, v6

    .line 114
    goto :goto_4

    .line 115
    :cond_13
    shr-int/lit8 v3, v7, 0x5

    .line 116
    .line 117
    const/4 v15, -0x2

    .line 118
    const/16 v14, 0x80

    .line 119
    .line 120
    if-ne v3, v15, :cond_24

    .line 121
    .line 122
    add-int/lit8 v3, v4, 0x1

    .line 123
    .line 124
    if-gt v2, v3, :cond_15

    .line 125
    .line 126
    if-ne v6, v1, :cond_14

    .line 127
    .line 128
    return v5

    .line 129
    :cond_14
    return v16

    .line 130
    :cond_15
    aget-byte v3, v0, v3

    .line 131
    .line 132
    and-int/lit16 v15, v3, 0xc0

    .line 133
    .line 134
    if-ne v15, v14, :cond_16

    .line 135
    .line 136
    move/from16 v15, v17

    .line 137
    .line 138
    goto :goto_8

    .line 139
    :cond_16
    const/4 v15, 0x0

    .line 140
    :goto_8
    if-nez v15, :cond_18

    .line 141
    .line 142
    if-ne v6, v1, :cond_17

    .line 143
    .line 144
    return v5

    .line 145
    :cond_17
    return v16

    .line 146
    :cond_18
    xor-int/lit16 v3, v3, 0xf80

    .line 147
    .line 148
    shl-int/lit8 v7, v7, 0x6

    .line 149
    .line 150
    xor-int/2addr v3, v7

    .line 151
    if-ge v3, v14, :cond_1a

    .line 152
    .line 153
    if-ne v6, v1, :cond_19

    .line 154
    .line 155
    return v5

    .line 156
    :cond_19
    return v16

    .line 157
    :cond_1a
    add-int/lit8 v7, v6, 0x1

    .line 158
    .line 159
    if-ne v6, v1, :cond_1b

    .line 160
    .line 161
    return v5

    .line 162
    :cond_1b
    if-eq v3, v13, :cond_20

    .line 163
    .line 164
    if-eq v3, v11, :cond_20

    .line 165
    .line 166
    if-ltz v3, :cond_1c

    .line 167
    .line 168
    if-ge v10, v3, :cond_1e

    .line 169
    .line 170
    :cond_1c
    if-le v8, v3, :cond_1d

    .line 171
    .line 172
    goto :goto_9

    .line 173
    :cond_1d
    if-lt v9, v3, :cond_1f

    .line 174
    .line 175
    :cond_1e
    move/from16 v6, v17

    .line 176
    .line 177
    goto :goto_a

    .line 178
    :cond_1f
    :goto_9
    const/4 v6, 0x0

    .line 179
    :goto_a
    if-nez v6, :cond_21

    .line 180
    .line 181
    :cond_20
    if-ne v3, v12, :cond_22

    .line 182
    .line 183
    :cond_21
    return v16

    .line 184
    :cond_22
    const/high16 v6, 0x10000

    .line 185
    .line 186
    if-ge v3, v6, :cond_23

    .line 187
    .line 188
    move/from16 v15, v17

    .line 189
    .line 190
    goto :goto_b

    .line 191
    :cond_23
    const/4 v15, 0x2

    .line 192
    :goto_b
    add-int/2addr v5, v15

    .line 193
    add-int/lit8 v4, v4, 0x2

    .line 194
    .line 195
    :goto_c
    move v6, v7

    .line 196
    goto/16 :goto_0

    .line 197
    .line 198
    :cond_24
    shr-int/lit8 v3, v7, 0x4

    .line 199
    .line 200
    const v12, 0xd800

    .line 201
    .line 202
    .line 203
    const v9, 0xdfff

    .line 204
    .line 205
    .line 206
    if-ne v3, v15, :cond_3b

    .line 207
    .line 208
    add-int/lit8 v3, v4, 0x2

    .line 209
    .line 210
    if-gt v2, v3, :cond_26

    .line 211
    .line 212
    if-ne v6, v1, :cond_25

    .line 213
    .line 214
    return v5

    .line 215
    :cond_25
    return v16

    .line 216
    :cond_26
    add-int/lit8 v15, v4, 0x1

    .line 217
    .line 218
    aget-byte v15, v0, v15

    .line 219
    .line 220
    and-int/lit16 v8, v15, 0xc0

    .line 221
    .line 222
    if-ne v8, v14, :cond_27

    .line 223
    .line 224
    move/from16 v8, v17

    .line 225
    .line 226
    goto :goto_d

    .line 227
    :cond_27
    const/4 v8, 0x0

    .line 228
    :goto_d
    if-nez v8, :cond_29

    .line 229
    .line 230
    if-ne v6, v1, :cond_28

    .line 231
    .line 232
    return v5

    .line 233
    :cond_28
    return v16

    .line 234
    :cond_29
    aget-byte v3, v0, v3

    .line 235
    .line 236
    and-int/lit16 v8, v3, 0xc0

    .line 237
    .line 238
    if-ne v8, v14, :cond_2a

    .line 239
    .line 240
    move/from16 v8, v17

    .line 241
    .line 242
    goto :goto_e

    .line 243
    :cond_2a
    const/4 v8, 0x0

    .line 244
    :goto_e
    if-nez v8, :cond_2c

    .line 245
    .line 246
    if-ne v6, v1, :cond_2b

    .line 247
    .line 248
    return v5

    .line 249
    :cond_2b
    return v16

    .line 250
    :cond_2c
    const v8, -0x1e080

    .line 251
    .line 252
    .line 253
    xor-int/2addr v3, v8

    .line 254
    shl-int/lit8 v8, v15, 0x6

    .line 255
    .line 256
    xor-int/2addr v3, v8

    .line 257
    shl-int/lit8 v7, v7, 0xc

    .line 258
    .line 259
    xor-int/2addr v3, v7

    .line 260
    const/16 v7, 0x800

    .line 261
    .line 262
    if-ge v3, v7, :cond_2e

    .line 263
    .line 264
    if-ne v6, v1, :cond_2d

    .line 265
    .line 266
    return v5

    .line 267
    :cond_2d
    return v16

    .line 268
    :cond_2e
    if-le v12, v3, :cond_2f

    .line 269
    .line 270
    goto :goto_f

    .line 271
    :cond_2f
    if-lt v9, v3, :cond_31

    .line 272
    .line 273
    if-ne v6, v1, :cond_30

    .line 274
    .line 275
    return v5

    .line 276
    :cond_30
    return v16

    .line 277
    :cond_31
    :goto_f
    add-int/lit8 v7, v6, 0x1

    .line 278
    .line 279
    if-ne v6, v1, :cond_32

    .line 280
    .line 281
    return v5

    .line 282
    :cond_32
    if-eq v3, v13, :cond_37

    .line 283
    .line 284
    if-eq v3, v11, :cond_37

    .line 285
    .line 286
    if-ltz v3, :cond_33

    .line 287
    .line 288
    if-ge v10, v3, :cond_35

    .line 289
    .line 290
    :cond_33
    const/16 v6, 0x7f

    .line 291
    .line 292
    if-le v6, v3, :cond_34

    .line 293
    .line 294
    goto :goto_10

    .line 295
    :cond_34
    const/16 v6, 0x9f

    .line 296
    .line 297
    if-lt v6, v3, :cond_36

    .line 298
    .line 299
    :cond_35
    move/from16 v6, v17

    .line 300
    .line 301
    goto :goto_11

    .line 302
    :cond_36
    :goto_10
    const/4 v6, 0x0

    .line 303
    :goto_11
    if-nez v6, :cond_38

    .line 304
    .line 305
    :cond_37
    const v6, 0xfffd

    .line 306
    .line 307
    .line 308
    if-ne v3, v6, :cond_39

    .line 309
    .line 310
    :cond_38
    return v16

    .line 311
    :cond_39
    const/high16 v6, 0x10000

    .line 312
    .line 313
    if-ge v3, v6, :cond_3a

    .line 314
    .line 315
    move/from16 v15, v17

    .line 316
    .line 317
    goto :goto_12

    .line 318
    :cond_3a
    const/4 v15, 0x2

    .line 319
    :goto_12
    add-int/2addr v5, v15

    .line 320
    add-int/lit8 v4, v4, 0x3

    .line 321
    .line 322
    goto :goto_c

    .line 323
    :cond_3b
    shr-int/lit8 v3, v7, 0x3

    .line 324
    .line 325
    if-ne v3, v15, :cond_57

    .line 326
    .line 327
    add-int/lit8 v3, v4, 0x3

    .line 328
    .line 329
    if-gt v2, v3, :cond_3d

    .line 330
    .line 331
    if-ne v6, v1, :cond_3c

    .line 332
    .line 333
    return v5

    .line 334
    :cond_3c
    return v16

    .line 335
    :cond_3d
    add-int/lit8 v8, v4, 0x1

    .line 336
    .line 337
    aget-byte v8, v0, v8

    .line 338
    .line 339
    and-int/lit16 v15, v8, 0xc0

    .line 340
    .line 341
    if-ne v15, v14, :cond_3e

    .line 342
    .line 343
    move/from16 v15, v17

    .line 344
    .line 345
    goto :goto_13

    .line 346
    :cond_3e
    const/4 v15, 0x0

    .line 347
    :goto_13
    if-nez v15, :cond_40

    .line 348
    .line 349
    if-ne v6, v1, :cond_3f

    .line 350
    .line 351
    return v5

    .line 352
    :cond_3f
    return v16

    .line 353
    :cond_40
    add-int/lit8 v15, v4, 0x2

    .line 354
    .line 355
    aget-byte v15, v0, v15

    .line 356
    .line 357
    and-int/lit16 v10, v15, 0xc0

    .line 358
    .line 359
    if-ne v10, v14, :cond_41

    .line 360
    .line 361
    move/from16 v10, v17

    .line 362
    .line 363
    goto :goto_14

    .line 364
    :cond_41
    const/4 v10, 0x0

    .line 365
    :goto_14
    if-nez v10, :cond_43

    .line 366
    .line 367
    if-ne v6, v1, :cond_42

    .line 368
    .line 369
    return v5

    .line 370
    :cond_42
    return v16

    .line 371
    :cond_43
    aget-byte v3, v0, v3

    .line 372
    .line 373
    and-int/lit16 v10, v3, 0xc0

    .line 374
    .line 375
    if-ne v10, v14, :cond_44

    .line 376
    .line 377
    move/from16 v10, v17

    .line 378
    .line 379
    goto :goto_15

    .line 380
    :cond_44
    const/4 v10, 0x0

    .line 381
    :goto_15
    if-nez v10, :cond_46

    .line 382
    .line 383
    if-ne v6, v1, :cond_45

    .line 384
    .line 385
    return v5

    .line 386
    :cond_45
    return v16

    .line 387
    :cond_46
    const v10, 0x381f80

    .line 388
    .line 389
    .line 390
    xor-int/2addr v3, v10

    .line 391
    shl-int/lit8 v10, v15, 0x6

    .line 392
    .line 393
    xor-int/2addr v3, v10

    .line 394
    shl-int/lit8 v8, v8, 0xc

    .line 395
    .line 396
    xor-int/2addr v3, v8

    .line 397
    shl-int/lit8 v7, v7, 0x12

    .line 398
    .line 399
    xor-int/2addr v3, v7

    .line 400
    const v7, 0x10ffff

    .line 401
    .line 402
    .line 403
    if-le v3, v7, :cond_48

    .line 404
    .line 405
    if-ne v6, v1, :cond_47

    .line 406
    .line 407
    return v5

    .line 408
    :cond_47
    return v16

    .line 409
    :cond_48
    if-le v12, v3, :cond_49

    .line 410
    .line 411
    goto :goto_16

    .line 412
    :cond_49
    if-lt v9, v3, :cond_4b

    .line 413
    .line 414
    if-ne v6, v1, :cond_4a

    .line 415
    .line 416
    return v5

    .line 417
    :cond_4a
    return v16

    .line 418
    :cond_4b
    :goto_16
    const/high16 v7, 0x10000

    .line 419
    .line 420
    if-ge v3, v7, :cond_4d

    .line 421
    .line 422
    if-ne v6, v1, :cond_4c

    .line 423
    .line 424
    return v5

    .line 425
    :cond_4c
    return v16

    .line 426
    :cond_4d
    add-int/lit8 v7, v6, 0x1

    .line 427
    .line 428
    if-ne v6, v1, :cond_4e

    .line 429
    .line 430
    return v5

    .line 431
    :cond_4e
    if-eq v3, v13, :cond_53

    .line 432
    .line 433
    if-eq v3, v11, :cond_53

    .line 434
    .line 435
    if-ltz v3, :cond_4f

    .line 436
    .line 437
    const/16 v6, 0x1f

    .line 438
    .line 439
    if-ge v6, v3, :cond_51

    .line 440
    .line 441
    :cond_4f
    const/16 v6, 0x7f

    .line 442
    .line 443
    if-le v6, v3, :cond_50

    .line 444
    .line 445
    goto :goto_17

    .line 446
    :cond_50
    const/16 v6, 0x9f

    .line 447
    .line 448
    if-lt v6, v3, :cond_52

    .line 449
    .line 450
    :cond_51
    move/from16 v6, v17

    .line 451
    .line 452
    goto :goto_18

    .line 453
    :cond_52
    :goto_17
    const/4 v6, 0x0

    .line 454
    :goto_18
    if-nez v6, :cond_54

    .line 455
    .line 456
    :cond_53
    const v6, 0xfffd

    .line 457
    .line 458
    .line 459
    if-ne v3, v6, :cond_55

    .line 460
    .line 461
    :cond_54
    return v16

    .line 462
    :cond_55
    const/high16 v6, 0x10000

    .line 463
    .line 464
    if-ge v3, v6, :cond_56

    .line 465
    .line 466
    move/from16 v15, v17

    .line 467
    .line 468
    goto :goto_19

    .line 469
    :cond_56
    const/4 v15, 0x2

    .line 470
    :goto_19
    add-int/2addr v5, v15

    .line 471
    add-int/lit8 v4, v4, 0x4

    .line 472
    .line 473
    goto/16 :goto_c

    .line 474
    .line 475
    :cond_57
    if-ne v6, v1, :cond_58

    .line 476
    .line 477
    return v5

    .line 478
    :cond_58
    return v16

    .line 479
    :cond_59
    return v5
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
.end method

.method public static final d(Lokio/ByteString;Lcc/e;II)V
    .locals 1

    .line 1
    const-string v0, "$this$commonWrite"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "buffer"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p1, p0, p2, p3}, Lcc/e;->y0([BII)Lcc/e;

    .line 16
    .line 17
    .line 18
    return-void
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
.end method

.method private static final e(C)I
    .locals 3

    .line 1
    const/16 v0, 0x30

    .line 2
    .line 3
    if-le v0, p0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/16 v1, 0x39

    .line 7
    .line 8
    if-lt v1, p0, :cond_1

    .line 9
    .line 10
    sub-int/2addr p0, v0

    .line 11
    goto :goto_3

    .line 12
    :cond_1
    :goto_0
    const/16 v0, 0x66

    .line 13
    .line 14
    const/16 v1, 0x61

    .line 15
    .line 16
    if-le v1, p0, :cond_2

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_2
    if-lt v0, p0, :cond_3

    .line 20
    .line 21
    :goto_1
    sub-int/2addr p0, v1

    .line 22
    add-int/lit8 p0, p0, 0xa

    .line 23
    .line 24
    goto :goto_3

    .line 25
    :cond_3
    :goto_2
    const/16 v0, 0x46

    .line 26
    .line 27
    const/16 v1, 0x41

    .line 28
    .line 29
    if-gt v1, p0, :cond_4

    .line 30
    .line 31
    if-lt v0, p0, :cond_4

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :goto_3
    return p0

    .line 35
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v2, "Unexpected hex digit: "

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0
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

.method public static final f()[C
    .locals 1

    .line 1
    sget-object v0, Ldc/b;->a:[C

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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

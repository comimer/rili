.class public final Lcc/e;
.super Ljava/lang/Object;
.source "Buffer.kt"

# interfaces
.implements Lcc/g;
.implements Lcc/f;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u00a2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0005\n\u0002\u0008\u0004\n\u0002\u0010\n\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0014\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008{\u0010|J\u0008\u0010\u0005\u001a\u00020\u0000H\u0016J\u0008\u0010\u0007\u001a\u00020\u0006H\u0016J\u0008\u0010\t\u001a\u00020\u0008H\u0016J\u0010\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0010\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0008\u0010\u000f\u001a\u00020\u0001H\u0016J\u0008\u0010\u0011\u001a\u00020\u0010H\u0016J \u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0013\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nJ\u001a\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000b\u001a\u00020\nH\u0007J\u0006\u0010\u0016\u001a\u00020\nJ\u0008\u0010\u0018\u001a\u00020\u0017H\u0016J\u0018\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\nH\u0087\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0008\u0010\u001d\u001a\u00020\u001cH\u0016J\u0008\u0010\u001f\u001a\u00020\u001eH\u0016J\u0008\u0010 \u001a\u00020\u001cH\u0016J\u0008\u0010!\u001a\u00020\u001eH\u0016J\u0008\u0010\"\u001a\u00020\nH\u0016J\u0008\u0010$\u001a\u00020#H\u0016J\u0010\u0010%\u001a\u00020#2\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0010\u0010(\u001a\u00020\u001e2\u0006\u0010\'\u001a\u00020&H\u0016J\u0010\u0010+\u001a\u00020\n2\u0006\u0010*\u001a\u00020)H\u0016J\u0008\u0010-\u001a\u00020,H\u0016J\u0010\u0010.\u001a\u00020,2\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0010\u00101\u001a\u00020,2\u0006\u00100\u001a\u00020/H\u0016J\u0018\u00102\u001a\u00020,2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u00100\u001a\u00020/H\u0016J\u0008\u00103\u001a\u00020,H\u0016J\u0010\u00105\u001a\u00020,2\u0006\u00104\u001a\u00020\nH\u0016J\u0008\u00107\u001a\u000206H\u0016J\u0010\u00108\u001a\u0002062\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0010\u00109\u001a\u00020\u000c2\u0006\u0010*\u001a\u000206H\u0016J \u0010:\u001a\u00020\u001e2\u0006\u0010*\u001a\u0002062\u0006\u0010\u0013\u001a\u00020\u001e2\u0006\u0010\u000b\u001a\u00020\u001eH\u0016J\u0010\u0010:\u001a\u00020\u001e2\u0006\u0010*\u001a\u00020;H\u0016J\u0006\u0010<\u001a\u00020\u000cJ\u0010\u0010=\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0010\u0010?\u001a\u00020\u00002\u0006\u0010>\u001a\u00020#H\u0016J\u0010\u0010A\u001a\u00020\u00002\u0006\u0010@\u001a\u00020,H\u0016J \u0010D\u001a\u00020\u00002\u0006\u0010@\u001a\u00020,2\u0006\u0010B\u001a\u00020\u001e2\u0006\u0010C\u001a\u00020\u001eH\u0016J\u0010\u0010F\u001a\u00020\u00002\u0006\u0010E\u001a\u00020\u001eH\u0016J(\u0010G\u001a\u00020\u00002\u0006\u0010@\u001a\u00020,2\u0006\u0010B\u001a\u00020\u001e2\u0006\u0010C\u001a\u00020\u001e2\u0006\u00100\u001a\u00020/H\u0016J\u0010\u0010I\u001a\u00020\u00002\u0006\u0010H\u001a\u000206H\u0016J \u0010J\u001a\u00020\u00002\u0006\u0010H\u001a\u0002062\u0006\u0010\u0013\u001a\u00020\u001e2\u0006\u0010\u000b\u001a\u00020\u001eH\u0016J\u0010\u0010K\u001a\u00020\u001e2\u0006\u0010H\u001a\u00020;H\u0016J\u0010\u0010M\u001a\u00020\n2\u0006\u0010H\u001a\u00020LH\u0016J\u0018\u0010N\u001a\u00020\u00002\u0006\u0010H\u001a\u00020L2\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0010\u0010P\u001a\u00020\u00002\u0006\u0010O\u001a\u00020\u001eH\u0016J\u0010\u0010R\u001a\u00020\u00002\u0006\u0010Q\u001a\u00020\u001eH\u0016J\u0010\u0010S\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\u001eH\u0016J\u0010\u0010U\u001a\u00020\u00002\u0006\u0010T\u001a\u00020\nH\u0016J\u0010\u0010V\u001a\u00020\u00002\u0006\u0010T\u001a\u00020\nH\u0016J\u0017\u0010Y\u001a\u00020X2\u0006\u0010W\u001a\u00020\u001eH\u0000\u00a2\u0006\u0004\u0008Y\u0010ZJ\u0018\u0010[\u001a\u00020\u000c2\u0006\u0010H\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0018\u0010\\\u001a\u00020\n2\u0006\u0010*\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\nH\u0016J \u0010_\u001a\u00020\n2\u0006\u0010O\u001a\u00020\u00172\u0006\u0010]\u001a\u00020\n2\u0006\u0010^\u001a\u00020\nH\u0016J\u0010\u0010T\u001a\u00020\n2\u0006\u0010`\u001a\u00020#H\u0016J\u0018\u0010a\u001a\u00020\n2\u0006\u0010`\u001a\u00020#2\u0006\u0010]\u001a\u00020\nH\u0016J\u0010\u0010c\u001a\u00020\n2\u0006\u0010b\u001a\u00020#H\u0016J\u0018\u0010d\u001a\u00020\n2\u0006\u0010b\u001a\u00020#2\u0006\u0010]\u001a\u00020\nH\u0016J\u0008\u0010e\u001a\u00020\u000cH\u0016J\u0008\u0010f\u001a\u00020\u0008H\u0016J\u0008\u0010g\u001a\u00020\u000cH\u0016J\u0008\u0010O\u001a\u00020hH\u0016J\u0013\u0010k\u001a\u00020\u00082\u0008\u0010j\u001a\u0004\u0018\u00010iH\u0096\u0002J\u0008\u0010l\u001a\u00020\u001eH\u0016J\u0008\u0010m\u001a\u00020,H\u0016J\u0006\u0010n\u001a\u00020\u0000J\u0008\u0010o\u001a\u00020\u0000H\u0016J\u0006\u0010p\u001a\u00020#J\u000e\u0010q\u001a\u00020#2\u0006\u0010\u000b\u001a\u00020\u001eR*\u0010s\u001a\u00020\n2\u0006\u0010r\u001a\u00020\n8G@@X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008s\u0010t\u001a\u0004\u0008s\u0010u\"\u0004\u0008v\u0010wR\u0014\u0010z\u001a\u00020\u00008VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008x\u0010y\u00a8\u0006}"
    }
    d2 = {
        "Lcc/e;",
        "Lcc/g;",
        "Lcc/f;",
        "",
        "Ljava/nio/channels/ByteChannel;",
        "h",
        "Ljava/io/OutputStream;",
        "a0",
        "",
        "w",
        "",
        "byteCount",
        "Lkotlin/u;",
        "j0",
        "U",
        "peek",
        "Ljava/io/InputStream;",
        "o0",
        "out",
        "offset",
        "E",
        "G0",
        "x",
        "",
        "readByte",
        "pos",
        "H",
        "(J)B",
        "",
        "readShort",
        "",
        "readInt",
        "i0",
        "h0",
        "n0",
        "Lokio/ByteString;",
        "c0",
        "i",
        "Lcc/q;",
        "options",
        "Q",
        "Lcc/y;",
        "sink",
        "G",
        "",
        "p0",
        "q0",
        "Ljava/nio/charset/Charset;",
        "charset",
        "N",
        "l0",
        "Y",
        "limit",
        "A",
        "",
        "t",
        "e0",
        "d0",
        "read",
        "Ljava/nio/ByteBuffer;",
        "d",
        "skip",
        "byteString",
        "w0",
        "string",
        "I0",
        "beginIndex",
        "endIndex",
        "J0",
        "codePoint",
        "K0",
        "F0",
        "source",
        "x0",
        "y0",
        "write",
        "Lcc/a0;",
        "z0",
        "v0",
        "b",
        "A0",
        "s",
        "E0",
        "D0",
        "v",
        "B0",
        "C0",
        "minimumCapacity",
        "Lcc/v;",
        "u0",
        "(I)Lcc/v;",
        "n",
        "u",
        "fromIndex",
        "toIndex",
        "V",
        "bytes",
        "W",
        "targetBytes",
        "y",
        "Z",
        "flush",
        "isOpen",
        "close",
        "Lcc/b0;",
        "",
        "other",
        "equals",
        "hashCode",
        "toString",
        "z",
        "e",
        "s0",
        "t0",
        "<set-?>",
        "size",
        "J",
        "()J",
        "r0",
        "(J)V",
        "a",
        "()Lcc/e;",
        "buffer",
        "<init>",
        "()V",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field public a:Lcc/v;

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic H0(Lcc/e;Ljava/io/OutputStream;JILjava/lang/Object;)Lcc/e;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    and-int/lit8 p4, p4, 0x2

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    iget-wide p2, p0, Lcc/e;->b:J

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcc/e;->G0(Ljava/io/OutputStream;J)Lcc/e;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
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
.end method


# virtual methods
.method public A(J)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    if-eqz v0, :cond_4

    .line 11
    .line 12
    const-wide v0, 0x7fffffffffffffffL

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    cmp-long v2, p1, v0

    .line 18
    .line 19
    const-wide/16 v3, 0x1

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    add-long v0, p1, v3

    .line 25
    .line 26
    :goto_1
    const/16 v2, 0xa

    .line 27
    .line 28
    int-to-byte v2, v2

    .line 29
    const-wide/16 v7, 0x0

    .line 30
    .line 31
    move-object v5, p0

    .line 32
    move v6, v2

    .line 33
    move-wide v9, v0

    .line 34
    invoke-virtual/range {v5 .. v10}, Lcc/e;->V(BJJ)J

    .line 35
    .line 36
    .line 37
    move-result-wide v5

    .line 38
    const-wide/16 v7, -0x1

    .line 39
    .line 40
    cmp-long v7, v5, v7

    .line 41
    .line 42
    if-eqz v7, :cond_2

    .line 43
    .line 44
    invoke-static {p0, v5, v6}, Ldc/a;->c(Lcc/e;J)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 50
    .line 51
    .line 52
    move-result-wide v5

    .line 53
    cmp-long v5, v0, v5

    .line 54
    .line 55
    if-gez v5, :cond_3

    .line 56
    .line 57
    sub-long v3, v0, v3

    .line 58
    .line 59
    invoke-virtual {p0, v3, v4}, Lcc/e;->H(J)B

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    const/16 v4, 0xd

    .line 64
    .line 65
    int-to-byte v4, v4

    .line 66
    if-ne v3, v4, :cond_3

    .line 67
    .line 68
    invoke-virtual {p0, v0, v1}, Lcc/e;->H(J)B

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-ne v3, v2, :cond_3

    .line 73
    .line 74
    invoke-static {p0, v0, v1}, Ldc/a;->c(Lcc/e;J)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    :goto_2
    return-object p1

    .line 79
    :cond_3
    new-instance v6, Lcc/e;

    .line 80
    .line 81
    invoke-direct {v6}, Lcc/e;-><init>()V

    .line 82
    .line 83
    .line 84
    const-wide/16 v2, 0x0

    .line 85
    .line 86
    const/16 v0, 0x20

    .line 87
    .line 88
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 89
    .line 90
    .line 91
    move-result-wide v4

    .line 92
    int-to-long v0, v0

    .line 93
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 94
    .line 95
    .line 96
    move-result-wide v4

    .line 97
    move-object v0, p0

    .line 98
    move-object v1, v6

    .line 99
    invoke-virtual/range {v0 .. v5}, Lcc/e;->E(Lcc/e;JJ)Lcc/e;

    .line 100
    .line 101
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v1, "\\n not found: limit="

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 113
    .line 114
    .line 115
    move-result-wide v1

    .line 116
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 117
    .line 118
    .line 119
    move-result-wide p1

    .line 120
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string p1, " content="

    .line 124
    .line 125
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v6}, Lcc/e;->c0()Lokio/ByteString;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p1}, Lokio/ByteString;->hex()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const/16 p1, 0x2026

    .line 140
    .line 141
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    new-instance p2, Ljava/io/EOFException;

    .line 149
    .line 150
    invoke-direct {p2, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw p2

    .line 154
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    const-string v1, "limit < 0: "

    .line 160
    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 172
    .line 173
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw p2
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

.method public A0(I)Lcc/e;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcc/e;->u0(I)Lcc/v;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-object v1, v0, Lcc/v;->a:[B

    .line 7
    .line 8
    iget v2, v0, Lcc/v;->c:I

    .line 9
    .line 10
    add-int/lit8 v3, v2, 0x1

    .line 11
    .line 12
    iput v3, v0, Lcc/v;->c:I

    .line 13
    .line 14
    int-to-byte p1, p1

    .line 15
    aput-byte p1, v1, v2

    .line 16
    .line 17
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    const-wide/16 v2, 0x1

    .line 22
    .line 23
    add-long/2addr v0, v2

    .line 24
    invoke-virtual {p0, v0, v1}, Lcc/e;->r0(J)V

    .line 25
    .line 26
    .line 27
    return-object p0
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method public B0(J)Lcc/e;
    .locals 12

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    const/16 p1, 0x30

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcc/e;->A0(I)Lcc/e;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto/16 :goto_3

    .line 14
    .line 15
    :cond_0
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x1

    .line 17
    if-gez v2, :cond_2

    .line 18
    .line 19
    neg-long p1, p1

    .line 20
    cmp-long v2, p1, v0

    .line 21
    .line 22
    if-gez v2, :cond_1

    .line 23
    .line 24
    const-string p1, "-9223372036854775808"

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcc/e;->I0(Ljava/lang/String;)Lcc/e;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    goto/16 :goto_3

    .line 31
    .line 32
    :cond_1
    move v3, v4

    .line 33
    :cond_2
    const-wide/32 v5, 0x5f5e100

    .line 34
    .line 35
    .line 36
    cmp-long v2, p1, v5

    .line 37
    .line 38
    const/16 v5, 0xa

    .line 39
    .line 40
    if-gez v2, :cond_a

    .line 41
    .line 42
    const-wide/16 v6, 0x2710

    .line 43
    .line 44
    cmp-long v2, p1, v6

    .line 45
    .line 46
    if-gez v2, :cond_6

    .line 47
    .line 48
    const-wide/16 v6, 0x64

    .line 49
    .line 50
    cmp-long v2, p1, v6

    .line 51
    .line 52
    if-gez v2, :cond_4

    .line 53
    .line 54
    const-wide/16 v6, 0xa

    .line 55
    .line 56
    cmp-long v2, p1, v6

    .line 57
    .line 58
    if-gez v2, :cond_3

    .line 59
    .line 60
    goto/16 :goto_1

    .line 61
    .line 62
    :cond_3
    const/4 v4, 0x2

    .line 63
    goto/16 :goto_1

    .line 64
    .line 65
    :cond_4
    const-wide/16 v6, 0x3e8

    .line 66
    .line 67
    cmp-long v2, p1, v6

    .line 68
    .line 69
    if-gez v2, :cond_5

    .line 70
    .line 71
    const/4 v2, 0x3

    .line 72
    goto :goto_0

    .line 73
    :cond_5
    const/4 v2, 0x4

    .line 74
    :goto_0
    move v4, v2

    .line 75
    goto/16 :goto_1

    .line 76
    .line 77
    :cond_6
    const-wide/32 v6, 0xf4240

    .line 78
    .line 79
    .line 80
    cmp-long v2, p1, v6

    .line 81
    .line 82
    if-gez v2, :cond_8

    .line 83
    .line 84
    const-wide/32 v6, 0x186a0

    .line 85
    .line 86
    .line 87
    cmp-long v2, p1, v6

    .line 88
    .line 89
    if-gez v2, :cond_7

    .line 90
    .line 91
    const/4 v2, 0x5

    .line 92
    goto :goto_0

    .line 93
    :cond_7
    const/4 v2, 0x6

    .line 94
    goto :goto_0

    .line 95
    :cond_8
    const-wide/32 v6, 0x989680

    .line 96
    .line 97
    .line 98
    cmp-long v2, p1, v6

    .line 99
    .line 100
    if-gez v2, :cond_9

    .line 101
    .line 102
    const/4 v2, 0x7

    .line 103
    goto :goto_0

    .line 104
    :cond_9
    const/16 v2, 0x8

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_a
    const-wide v6, 0xe8d4a51000L

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    cmp-long v2, p1, v6

    .line 113
    .line 114
    if-gez v2, :cond_e

    .line 115
    .line 116
    const-wide v6, 0x2540be400L

    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    cmp-long v2, p1, v6

    .line 122
    .line 123
    if-gez v2, :cond_c

    .line 124
    .line 125
    const-wide/32 v6, 0x3b9aca00

    .line 126
    .line 127
    .line 128
    cmp-long v2, p1, v6

    .line 129
    .line 130
    if-gez v2, :cond_b

    .line 131
    .line 132
    const/16 v4, 0x9

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_b
    move v4, v5

    .line 136
    goto :goto_1

    .line 137
    :cond_c
    const-wide v6, 0x174876e800L

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    cmp-long v2, p1, v6

    .line 143
    .line 144
    if-gez v2, :cond_d

    .line 145
    .line 146
    const/16 v2, 0xb

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_d
    const/16 v2, 0xc

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_e
    const-wide v6, 0x38d7ea4c68000L

    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    cmp-long v2, p1, v6

    .line 158
    .line 159
    if-gez v2, :cond_11

    .line 160
    .line 161
    const-wide v6, 0x9184e72a000L

    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    cmp-long v2, p1, v6

    .line 167
    .line 168
    if-gez v2, :cond_f

    .line 169
    .line 170
    const/16 v4, 0xd

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_f
    const-wide v6, 0x5af3107a4000L

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    cmp-long v2, p1, v6

    .line 179
    .line 180
    if-gez v2, :cond_10

    .line 181
    .line 182
    const/16 v2, 0xe

    .line 183
    .line 184
    goto :goto_0

    .line 185
    :cond_10
    const/16 v2, 0xf

    .line 186
    .line 187
    goto :goto_0

    .line 188
    :cond_11
    const-wide v6, 0x16345785d8a0000L

    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    cmp-long v2, p1, v6

    .line 194
    .line 195
    if-gez v2, :cond_13

    .line 196
    .line 197
    const-wide v6, 0x2386f26fc10000L

    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    cmp-long v2, p1, v6

    .line 203
    .line 204
    if-gez v2, :cond_12

    .line 205
    .line 206
    const/16 v4, 0x10

    .line 207
    .line 208
    goto :goto_1

    .line 209
    :cond_12
    const/16 v4, 0x11

    .line 210
    .line 211
    goto :goto_1

    .line 212
    :cond_13
    const-wide v6, 0xde0b6b3a7640000L

    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    cmp-long v2, p1, v6

    .line 218
    .line 219
    if-gez v2, :cond_14

    .line 220
    .line 221
    const/16 v4, 0x12

    .line 222
    .line 223
    goto :goto_1

    .line 224
    :cond_14
    const/16 v4, 0x13

    .line 225
    .line 226
    :goto_1
    if-eqz v3, :cond_15

    .line 227
    .line 228
    add-int/lit8 v4, v4, 0x1

    .line 229
    .line 230
    :cond_15
    invoke-virtual {p0, v4}, Lcc/e;->u0(I)Lcc/v;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    iget-object v6, v2, Lcc/v;->a:[B

    .line 235
    .line 236
    iget v7, v2, Lcc/v;->c:I

    .line 237
    .line 238
    add-int/2addr v7, v4

    .line 239
    :goto_2
    cmp-long v8, p1, v0

    .line 240
    .line 241
    if-eqz v8, :cond_16

    .line 242
    .line 243
    int-to-long v8, v5

    .line 244
    rem-long v10, p1, v8

    .line 245
    .line 246
    long-to-int v10, v10

    .line 247
    add-int/lit8 v7, v7, -0x1

    .line 248
    .line 249
    invoke-static {}, Ldc/a;->a()[B

    .line 250
    .line 251
    .line 252
    move-result-object v11

    .line 253
    aget-byte v10, v11, v10

    .line 254
    .line 255
    aput-byte v10, v6, v7

    .line 256
    .line 257
    div-long/2addr p1, v8

    .line 258
    goto :goto_2

    .line 259
    :cond_16
    if-eqz v3, :cond_17

    .line 260
    .line 261
    add-int/lit8 v7, v7, -0x1

    .line 262
    .line 263
    const/16 p1, 0x2d

    .line 264
    .line 265
    int-to-byte p1, p1

    .line 266
    aput-byte p1, v6, v7

    .line 267
    .line 268
    :cond_17
    iget p1, v2, Lcc/v;->c:I

    .line 269
    .line 270
    add-int/2addr p1, v4

    .line 271
    iput p1, v2, Lcc/v;->c:I

    .line 272
    .line 273
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 274
    .line 275
    .line 276
    move-result-wide p1

    .line 277
    int-to-long v0, v4

    .line 278
    add-long/2addr p1, v0

    .line 279
    invoke-virtual {p0, p1, p2}, Lcc/e;->r0(J)V

    .line 280
    .line 281
    .line 282
    move-object p1, p0

    .line 283
    :goto_3
    return-object p1
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

.method public C0(J)Lcc/e;
    .locals 12

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/16 p1, 0x30

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcc/e;->A0(I)Lcc/e;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    ushr-long v1, p1, v0

    .line 16
    .line 17
    or-long/2addr v1, p1

    .line 18
    const/4 v3, 0x2

    .line 19
    ushr-long v4, v1, v3

    .line 20
    .line 21
    or-long/2addr v1, v4

    .line 22
    const/4 v4, 0x4

    .line 23
    ushr-long v5, v1, v4

    .line 24
    .line 25
    or-long/2addr v1, v5

    .line 26
    const/16 v5, 0x8

    .line 27
    .line 28
    ushr-long v6, v1, v5

    .line 29
    .line 30
    or-long/2addr v1, v6

    .line 31
    const/16 v6, 0x10

    .line 32
    .line 33
    ushr-long v7, v1, v6

    .line 34
    .line 35
    or-long/2addr v1, v7

    .line 36
    const/16 v7, 0x20

    .line 37
    .line 38
    ushr-long v8, v1, v7

    .line 39
    .line 40
    or-long/2addr v1, v8

    .line 41
    ushr-long v8, v1, v0

    .line 42
    .line 43
    const-wide v10, 0x5555555555555555L    # 1.1945305291614955E103

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    and-long/2addr v8, v10

    .line 49
    sub-long/2addr v1, v8

    .line 50
    ushr-long v8, v1, v3

    .line 51
    .line 52
    const-wide v10, 0x3333333333333333L    # 4.667261458395856E-62

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    and-long/2addr v8, v10

    .line 58
    and-long/2addr v1, v10

    .line 59
    add-long/2addr v8, v1

    .line 60
    ushr-long v1, v8, v4

    .line 61
    .line 62
    add-long/2addr v1, v8

    .line 63
    const-wide v8, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    and-long/2addr v1, v8

    .line 69
    ushr-long v8, v1, v5

    .line 70
    .line 71
    add-long/2addr v1, v8

    .line 72
    ushr-long v5, v1, v6

    .line 73
    .line 74
    add-long/2addr v1, v5

    .line 75
    const-wide/16 v5, 0x3f

    .line 76
    .line 77
    and-long v8, v1, v5

    .line 78
    .line 79
    ushr-long/2addr v1, v7

    .line 80
    and-long/2addr v1, v5

    .line 81
    add-long/2addr v8, v1

    .line 82
    const/4 v1, 0x3

    .line 83
    int-to-long v1, v1

    .line 84
    add-long/2addr v8, v1

    .line 85
    int-to-long v1, v4

    .line 86
    div-long/2addr v8, v1

    .line 87
    long-to-int v1, v8

    .line 88
    invoke-virtual {p0, v1}, Lcc/e;->u0(I)Lcc/v;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    iget-object v3, v2, Lcc/v;->a:[B

    .line 93
    .line 94
    iget v5, v2, Lcc/v;->c:I

    .line 95
    .line 96
    add-int v6, v5, v1

    .line 97
    .line 98
    sub-int/2addr v6, v0

    .line 99
    :goto_0
    if-lt v6, v5, :cond_1

    .line 100
    .line 101
    invoke-static {}, Ldc/a;->a()[B

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const-wide/16 v7, 0xf

    .line 106
    .line 107
    and-long/2addr v7, p1

    .line 108
    long-to-int v7, v7

    .line 109
    aget-byte v0, v0, v7

    .line 110
    .line 111
    aput-byte v0, v3, v6

    .line 112
    .line 113
    ushr-long/2addr p1, v4

    .line 114
    add-int/lit8 v6, v6, -0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_1
    iget p1, v2, Lcc/v;->c:I

    .line 118
    .line 119
    add-int/2addr p1, v1

    .line 120
    iput p1, v2, Lcc/v;->c:I

    .line 121
    .line 122
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 123
    .line 124
    .line 125
    move-result-wide p1

    .line 126
    int-to-long v0, v1

    .line 127
    add-long/2addr p1, v0

    .line 128
    invoke-virtual {p0, p1, p2}, Lcc/e;->r0(J)V

    .line 129
    .line 130
    .line 131
    move-object p1, p0

    .line 132
    :goto_1
    return-object p1
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

.method public D0(I)Lcc/e;
    .locals 5

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lcc/e;->u0(I)Lcc/v;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-object v1, v0, Lcc/v;->a:[B

    .line 7
    .line 8
    iget v2, v0, Lcc/v;->c:I

    .line 9
    .line 10
    add-int/lit8 v3, v2, 0x1

    .line 11
    .line 12
    ushr-int/lit8 v4, p1, 0x18

    .line 13
    .line 14
    and-int/lit16 v4, v4, 0xff

    .line 15
    .line 16
    int-to-byte v4, v4

    .line 17
    aput-byte v4, v1, v2

    .line 18
    .line 19
    add-int/lit8 v2, v3, 0x1

    .line 20
    .line 21
    ushr-int/lit8 v4, p1, 0x10

    .line 22
    .line 23
    and-int/lit16 v4, v4, 0xff

    .line 24
    .line 25
    int-to-byte v4, v4

    .line 26
    aput-byte v4, v1, v3

    .line 27
    .line 28
    add-int/lit8 v3, v2, 0x1

    .line 29
    .line 30
    ushr-int/lit8 v4, p1, 0x8

    .line 31
    .line 32
    and-int/lit16 v4, v4, 0xff

    .line 33
    .line 34
    int-to-byte v4, v4

    .line 35
    aput-byte v4, v1, v2

    .line 36
    .line 37
    add-int/lit8 v2, v3, 0x1

    .line 38
    .line 39
    and-int/lit16 p1, p1, 0xff

    .line 40
    .line 41
    int-to-byte p1, p1

    .line 42
    aput-byte p1, v1, v3

    .line 43
    .line 44
    iput v2, v0, Lcc/v;->c:I

    .line 45
    .line 46
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    const-wide/16 v2, 0x4

    .line 51
    .line 52
    add-long/2addr v0, v2

    .line 53
    invoke-virtual {p0, v0, v1}, Lcc/e;->r0(J)V

    .line 54
    .line 55
    .line 56
    return-object p0
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

.method public final E(Lcc/e;JJ)Lcc/e;
    .locals 7

    .line 1
    const-string v0, "out"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    move-wide v3, p2

    .line 11
    move-wide v5, p4

    .line 12
    invoke-static/range {v1 .. v6}, Lcc/c;->b(JJJ)V

    .line 13
    .line 14
    .line 15
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    cmp-long v2, p4, v0

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    goto :goto_3

    .line 22
    :cond_0
    invoke-virtual {p1}, Lcc/e;->size()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    add-long/2addr v2, p4

    .line 27
    invoke-virtual {p1, v2, v3}, Lcc/e;->r0(J)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcc/e;->a:Lcc/v;

    .line 31
    .line 32
    :goto_0
    if-nez v2, :cond_1

    .line 33
    .line 34
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget v3, v2, Lcc/v;->c:I

    .line 38
    .line 39
    iget v4, v2, Lcc/v;->b:I

    .line 40
    .line 41
    sub-int v5, v3, v4

    .line 42
    .line 43
    int-to-long v5, v5

    .line 44
    cmp-long v5, p2, v5

    .line 45
    .line 46
    if-ltz v5, :cond_2

    .line 47
    .line 48
    sub-int/2addr v3, v4

    .line 49
    int-to-long v3, v3

    .line 50
    sub-long/2addr p2, v3

    .line 51
    iget-object v2, v2, Lcc/v;->f:Lcc/v;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    :goto_1
    cmp-long v3, p4, v0

    .line 55
    .line 56
    if-lez v3, :cond_7

    .line 57
    .line 58
    if-nez v2, :cond_3

    .line 59
    .line 60
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 61
    .line 62
    .line 63
    :cond_3
    invoke-virtual {v2}, Lcc/v;->d()Lcc/v;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    iget v4, v3, Lcc/v;->b:I

    .line 68
    .line 69
    long-to-int p2, p2

    .line 70
    add-int/2addr v4, p2

    .line 71
    iput v4, v3, Lcc/v;->b:I

    .line 72
    .line 73
    long-to-int p2, p4

    .line 74
    add-int/2addr v4, p2

    .line 75
    iget p2, v3, Lcc/v;->c:I

    .line 76
    .line 77
    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    iput p2, v3, Lcc/v;->c:I

    .line 82
    .line 83
    iget-object p2, p1, Lcc/e;->a:Lcc/v;

    .line 84
    .line 85
    if-nez p2, :cond_4

    .line 86
    .line 87
    iput-object v3, v3, Lcc/v;->g:Lcc/v;

    .line 88
    .line 89
    iput-object v3, v3, Lcc/v;->f:Lcc/v;

    .line 90
    .line 91
    iput-object v3, p1, Lcc/e;->a:Lcc/v;

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_4
    if-nez p2, :cond_5

    .line 95
    .line 96
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 97
    .line 98
    .line 99
    :cond_5
    iget-object p2, p2, Lcc/v;->g:Lcc/v;

    .line 100
    .line 101
    if-nez p2, :cond_6

    .line 102
    .line 103
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 104
    .line 105
    .line 106
    :cond_6
    invoke-virtual {p2, v3}, Lcc/v;->c(Lcc/v;)Lcc/v;

    .line 107
    .line 108
    .line 109
    :goto_2
    iget p2, v3, Lcc/v;->c:I

    .line 110
    .line 111
    iget p3, v3, Lcc/v;->b:I

    .line 112
    .line 113
    sub-int/2addr p2, p3

    .line 114
    int-to-long p2, p2

    .line 115
    sub-long/2addr p4, p2

    .line 116
    iget-object v2, v2, Lcc/v;->f:Lcc/v;

    .line 117
    .line 118
    move-wide p2, v0

    .line 119
    goto :goto_1

    .line 120
    :cond_7
    :goto_3
    return-object p0
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
.end method

.method public E0(I)Lcc/e;
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcc/e;->u0(I)Lcc/v;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-object v1, v0, Lcc/v;->a:[B

    .line 7
    .line 8
    iget v2, v0, Lcc/v;->c:I

    .line 9
    .line 10
    add-int/lit8 v3, v2, 0x1

    .line 11
    .line 12
    ushr-int/lit8 v4, p1, 0x8

    .line 13
    .line 14
    and-int/lit16 v4, v4, 0xff

    .line 15
    .line 16
    int-to-byte v4, v4

    .line 17
    aput-byte v4, v1, v2

    .line 18
    .line 19
    add-int/lit8 v2, v3, 0x1

    .line 20
    .line 21
    and-int/lit16 p1, p1, 0xff

    .line 22
    .line 23
    int-to-byte p1, p1

    .line 24
    aput-byte p1, v1, v3

    .line 25
    .line 26
    iput v2, v0, Lcc/v;->c:I

    .line 27
    .line 28
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    const-wide/16 v2, 0x2

    .line 33
    .line 34
    add-long/2addr v0, v2

    .line 35
    invoke-virtual {p0, v0, v1}, Lcc/e;->r0(J)V

    .line 36
    .line 37
    .line 38
    return-object p0
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
.end method

.method public F0(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcc/e;
    .locals 3

    .line 1
    const-string v0, "string"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "charset"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    const/4 v1, 0x0

    .line 13
    if-ltz p2, :cond_0

    .line 14
    .line 15
    move v2, v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v2, v1

    .line 18
    :goto_0
    if-eqz v2, :cond_7

    .line 19
    .line 20
    if-lt p3, p2, :cond_1

    .line 21
    .line 22
    move v2, v0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v2, v1

    .line 25
    :goto_1
    if-eqz v2, :cond_6

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-gt p3, v2, :cond_2

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_2
    move v0, v1

    .line 35
    :goto_2
    if-eqz v0, :cond_5

    .line 36
    .line 37
    sget-object v0, Lkotlin/text/d;->b:Ljava/nio/charset/Charset;

    .line 38
    .line 39
    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    invoke-virtual {p0, p1, p2, p3}, Lcc/e;->J0(Ljava/lang/String;II)Lcc/e;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    return-object p1

    .line 50
    :cond_3
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string p2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    .line 55
    .line 56
    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    if-eqz p1, :cond_4

    .line 60
    .line 61
    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const-string p2, "(this as java.lang.String).getBytes(charset)"

    .line 66
    .line 67
    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    array-length p2, p1

    .line 71
    invoke-virtual {p0, p1, v1, p2}, Lcc/e;->y0([BII)Lcc/e;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    return-object p1

    .line 76
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    .line 77
    .line 78
    const-string p2, "null cannot be cast to non-null type java.lang.String"

    .line 79
    .line 80
    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p1

    .line 84
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string p4, "endIndex > string.length: "

    .line 90
    .line 91
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string p3, " > "

    .line 98
    .line 99
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p2

    .line 123
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    const-string p4, "endIndex < beginIndex: "

    .line 129
    .line 130
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string p3, " < "

    .line 137
    .line 138
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 149
    .line 150
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p2

    .line 158
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    const-string p3, "beginIndex < 0: "

    .line 164
    .line 165
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 176
    .line 177
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    throw p2
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

.method public G(Lcc/y;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    cmp-long v2, v0, v2

    .line 13
    .line 14
    if-lez v2, :cond_0

    .line 15
    .line 16
    invoke-interface {p1, p0, v0, v1}, Lcc/y;->n(Lcc/e;J)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-wide v0
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

.method public final G0(Ljava/io/OutputStream;J)Lcc/e;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "out"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Lcc/e;->b:J

    .line 7
    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    move-wide v5, p2

    .line 11
    invoke-static/range {v1 .. v6}, Lcc/c;->b(JJJ)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcc/e;->a:Lcc/v;

    .line 15
    .line 16
    :cond_0
    :goto_0
    const-wide/16 v1, 0x0

    .line 17
    .line 18
    cmp-long v1, p2, v1

    .line 19
    .line 20
    if-lez v1, :cond_2

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget v1, v0, Lcc/v;->c:I

    .line 28
    .line 29
    iget v2, v0, Lcc/v;->b:I

    .line 30
    .line 31
    sub-int/2addr v1, v2

    .line 32
    int-to-long v1, v1

    .line 33
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 34
    .line 35
    .line 36
    move-result-wide v1

    .line 37
    long-to-int v1, v1

    .line 38
    iget-object v2, v0, Lcc/v;->a:[B

    .line 39
    .line 40
    iget v3, v0, Lcc/v;->b:I

    .line 41
    .line 42
    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 43
    .line 44
    .line 45
    iget v2, v0, Lcc/v;->b:I

    .line 46
    .line 47
    add-int/2addr v2, v1

    .line 48
    iput v2, v0, Lcc/v;->b:I

    .line 49
    .line 50
    iget-wide v3, p0, Lcc/e;->b:J

    .line 51
    .line 52
    int-to-long v5, v1

    .line 53
    sub-long/2addr v3, v5

    .line 54
    iput-wide v3, p0, Lcc/e;->b:J

    .line 55
    .line 56
    sub-long/2addr p2, v5

    .line 57
    iget v1, v0, Lcc/v;->c:I

    .line 58
    .line 59
    if-ne v2, v1, :cond_0

    .line 60
    .line 61
    invoke-virtual {v0}, Lcc/v;->b()Lcc/v;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iput-object v1, p0, Lcc/e;->a:Lcc/v;

    .line 66
    .line 67
    invoke-static {v0}, Lcc/x;->b(Lcc/v;)V

    .line 68
    .line 69
    .line 70
    move-object v0, v1

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    return-object p0
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
.end method

.method public final H(J)B
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v4, 0x1

    .line 6
    .line 7
    move-wide v2, p1

    .line 8
    invoke-static/range {v0 .. v5}, Lcc/c;->b(JJJ)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcc/e;->a:Lcc/v;

    .line 12
    .line 13
    if-eqz v0, :cond_5

    .line 14
    .line 15
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    sub-long/2addr v1, p1

    .line 20
    cmp-long v1, v1, p1

    .line 21
    .line 22
    if-gez v1, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    :goto_0
    cmp-long v3, v1, p1

    .line 29
    .line 30
    if-lez v3, :cond_1

    .line 31
    .line 32
    iget-object v0, v0, Lcc/v;->g:Lcc/v;

    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget v3, v0, Lcc/v;->c:I

    .line 40
    .line 41
    iget v4, v0, Lcc/v;->b:I

    .line 42
    .line 43
    sub-int/2addr v3, v4

    .line 44
    int-to-long v3, v3

    .line 45
    sub-long/2addr v1, v3

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v3, v0, Lcc/v;->a:[B

    .line 48
    .line 49
    iget v0, v0, Lcc/v;->b:I

    .line 50
    .line 51
    int-to-long v4, v0

    .line 52
    add-long/2addr v4, p1

    .line 53
    sub-long/2addr v4, v1

    .line 54
    long-to-int p1, v4

    .line 55
    aget-byte p1, v3, p1

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    const-wide/16 v1, 0x0

    .line 59
    .line 60
    :goto_1
    iget v3, v0, Lcc/v;->c:I

    .line 61
    .line 62
    iget v4, v0, Lcc/v;->b:I

    .line 63
    .line 64
    sub-int/2addr v3, v4

    .line 65
    int-to-long v5, v3

    .line 66
    add-long/2addr v5, v1

    .line 67
    cmp-long v3, v5, p1

    .line 68
    .line 69
    if-lez v3, :cond_3

    .line 70
    .line 71
    iget-object v0, v0, Lcc/v;->a:[B

    .line 72
    .line 73
    int-to-long v3, v4

    .line 74
    add-long/2addr v3, p1

    .line 75
    sub-long/2addr v3, v1

    .line 76
    long-to-int p1, v3

    .line 77
    aget-byte p1, v0, p1

    .line 78
    .line 79
    :goto_2
    return p1

    .line 80
    :cond_3
    iget-object v0, v0, Lcc/v;->f:Lcc/v;

    .line 81
    .line 82
    if-nez v0, :cond_4

    .line 83
    .line 84
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 85
    .line 86
    .line 87
    :cond_4
    move-wide v1, v5

    .line 88
    goto :goto_1

    .line 89
    :cond_5
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 90
    .line 91
    .line 92
    const/4 p1, 0x0

    .line 93
    throw p1
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

.method public I0(Ljava/lang/String;)Lcc/e;
    .locals 2

    .line 1
    const-string v0, "string"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, p1, v1, v0}, Lcc/e;->J0(Ljava/lang/String;II)Lcc/e;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
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

.method public bridge synthetic J(Ljava/lang/String;)Lcc/f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcc/e;->I0(Ljava/lang/String;)Lcc/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
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

.method public J0(Ljava/lang/String;II)Lcc/e;
    .locals 11

    .line 1
    const-string v0, "string"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ltz p2, :cond_0

    .line 9
    .line 10
    move v2, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v2, v0

    .line 13
    :goto_0
    if-eqz v2, :cond_f

    .line 14
    .line 15
    if-lt p3, p2, :cond_1

    .line 16
    .line 17
    move v2, v1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move v2, v0

    .line 20
    :goto_1
    if-eqz v2, :cond_e

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-gt p3, v2, :cond_2

    .line 27
    .line 28
    move v2, v1

    .line 29
    goto :goto_2

    .line 30
    :cond_2
    move v2, v0

    .line 31
    :goto_2
    if-eqz v2, :cond_d

    .line 32
    .line 33
    :goto_3
    if-ge p2, p3, :cond_c

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const/16 v3, 0x80

    .line 40
    .line 41
    if-ge v2, v3, :cond_5

    .line 42
    .line 43
    invoke-virtual {p0, v1}, Lcc/e;->u0(I)Lcc/v;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    iget-object v5, v4, Lcc/v;->a:[B

    .line 48
    .line 49
    iget v6, v4, Lcc/v;->c:I

    .line 50
    .line 51
    sub-int/2addr v6, p2

    .line 52
    rsub-int v7, v6, 0x2000

    .line 53
    .line 54
    invoke-static {p3, v7}, Ljava/lang/Math;->min(II)I

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    add-int/lit8 v8, p2, 0x1

    .line 59
    .line 60
    add-int/2addr p2, v6

    .line 61
    int-to-byte v2, v2

    .line 62
    aput-byte v2, v5, p2

    .line 63
    .line 64
    :goto_4
    if-ge v8, v7, :cond_4

    .line 65
    .line 66
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    if-lt p2, v3, :cond_3

    .line 71
    .line 72
    goto :goto_5

    .line 73
    :cond_3
    add-int/lit8 v2, v8, 0x1

    .line 74
    .line 75
    add-int/2addr v8, v6

    .line 76
    int-to-byte p2, p2

    .line 77
    aput-byte p2, v5, v8

    .line 78
    .line 79
    move v8, v2

    .line 80
    goto :goto_4

    .line 81
    :cond_4
    :goto_5
    add-int/2addr v6, v8

    .line 82
    iget p2, v4, Lcc/v;->c:I

    .line 83
    .line 84
    sub-int/2addr v6, p2

    .line 85
    add-int/2addr p2, v6

    .line 86
    iput p2, v4, Lcc/v;->c:I

    .line 87
    .line 88
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 89
    .line 90
    .line 91
    move-result-wide v2

    .line 92
    int-to-long v4, v6

    .line 93
    add-long/2addr v2, v4

    .line 94
    invoke-virtual {p0, v2, v3}, Lcc/e;->r0(J)V

    .line 95
    .line 96
    .line 97
    move p2, v8

    .line 98
    goto :goto_3

    .line 99
    :cond_5
    const/16 v4, 0x800

    .line 100
    .line 101
    if-ge v2, v4, :cond_6

    .line 102
    .line 103
    const/4 v4, 0x2

    .line 104
    invoke-virtual {p0, v4}, Lcc/e;->u0(I)Lcc/v;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    iget-object v6, v5, Lcc/v;->a:[B

    .line 109
    .line 110
    iget v7, v5, Lcc/v;->c:I

    .line 111
    .line 112
    shr-int/lit8 v8, v2, 0x6

    .line 113
    .line 114
    or-int/lit16 v8, v8, 0xc0

    .line 115
    .line 116
    int-to-byte v8, v8

    .line 117
    aput-byte v8, v6, v7

    .line 118
    .line 119
    add-int/lit8 v8, v7, 0x1

    .line 120
    .line 121
    and-int/lit8 v2, v2, 0x3f

    .line 122
    .line 123
    or-int/2addr v2, v3

    .line 124
    int-to-byte v2, v2

    .line 125
    aput-byte v2, v6, v8

    .line 126
    .line 127
    add-int/2addr v7, v4

    .line 128
    iput v7, v5, Lcc/v;->c:I

    .line 129
    .line 130
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 131
    .line 132
    .line 133
    move-result-wide v2

    .line 134
    const-wide/16 v4, 0x2

    .line 135
    .line 136
    add-long/2addr v2, v4

    .line 137
    invoke-virtual {p0, v2, v3}, Lcc/e;->r0(J)V

    .line 138
    .line 139
    .line 140
    :goto_6
    add-int/lit8 p2, p2, 0x1

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_6
    const v4, 0xd800

    .line 144
    .line 145
    .line 146
    const/16 v5, 0x3f

    .line 147
    .line 148
    if-lt v2, v4, :cond_b

    .line 149
    .line 150
    const v4, 0xdfff

    .line 151
    .line 152
    .line 153
    if-le v2, v4, :cond_7

    .line 154
    .line 155
    goto :goto_9

    .line 156
    :cond_7
    add-int/lit8 v6, p2, 0x1

    .line 157
    .line 158
    if-ge v6, p3, :cond_8

    .line 159
    .line 160
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    .line 161
    .line 162
    .line 163
    move-result v7

    .line 164
    goto :goto_7

    .line 165
    :cond_8
    move v7, v0

    .line 166
    :goto_7
    const v8, 0xdbff

    .line 167
    .line 168
    .line 169
    if-gt v2, v8, :cond_a

    .line 170
    .line 171
    const v8, 0xdc00

    .line 172
    .line 173
    .line 174
    if-gt v8, v7, :cond_a

    .line 175
    .line 176
    if-ge v4, v7, :cond_9

    .line 177
    .line 178
    goto :goto_8

    .line 179
    :cond_9
    const/high16 v4, 0x10000

    .line 180
    .line 181
    and-int/lit16 v2, v2, 0x3ff

    .line 182
    .line 183
    shl-int/lit8 v2, v2, 0xa

    .line 184
    .line 185
    and-int/lit16 v6, v7, 0x3ff

    .line 186
    .line 187
    or-int/2addr v2, v6

    .line 188
    add-int/2addr v2, v4

    .line 189
    const/4 v4, 0x4

    .line 190
    invoke-virtual {p0, v4}, Lcc/e;->u0(I)Lcc/v;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    iget-object v7, v6, Lcc/v;->a:[B

    .line 195
    .line 196
    iget v8, v6, Lcc/v;->c:I

    .line 197
    .line 198
    shr-int/lit8 v9, v2, 0x12

    .line 199
    .line 200
    or-int/lit16 v9, v9, 0xf0

    .line 201
    .line 202
    int-to-byte v9, v9

    .line 203
    aput-byte v9, v7, v8

    .line 204
    .line 205
    add-int/lit8 v9, v8, 0x1

    .line 206
    .line 207
    shr-int/lit8 v10, v2, 0xc

    .line 208
    .line 209
    and-int/2addr v10, v5

    .line 210
    or-int/2addr v10, v3

    .line 211
    int-to-byte v10, v10

    .line 212
    aput-byte v10, v7, v9

    .line 213
    .line 214
    add-int/lit8 v9, v8, 0x2

    .line 215
    .line 216
    shr-int/lit8 v10, v2, 0x6

    .line 217
    .line 218
    and-int/2addr v10, v5

    .line 219
    or-int/2addr v10, v3

    .line 220
    int-to-byte v10, v10

    .line 221
    aput-byte v10, v7, v9

    .line 222
    .line 223
    add-int/lit8 v9, v8, 0x3

    .line 224
    .line 225
    and-int/2addr v2, v5

    .line 226
    or-int/2addr v2, v3

    .line 227
    int-to-byte v2, v2

    .line 228
    aput-byte v2, v7, v9

    .line 229
    .line 230
    add-int/2addr v8, v4

    .line 231
    iput v8, v6, Lcc/v;->c:I

    .line 232
    .line 233
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 234
    .line 235
    .line 236
    move-result-wide v2

    .line 237
    const-wide/16 v4, 0x4

    .line 238
    .line 239
    add-long/2addr v2, v4

    .line 240
    invoke-virtual {p0, v2, v3}, Lcc/e;->r0(J)V

    .line 241
    .line 242
    .line 243
    add-int/lit8 p2, p2, 0x2

    .line 244
    .line 245
    goto/16 :goto_3

    .line 246
    .line 247
    :cond_a
    :goto_8
    invoke-virtual {p0, v5}, Lcc/e;->A0(I)Lcc/e;

    .line 248
    .line 249
    .line 250
    move p2, v6

    .line 251
    goto/16 :goto_3

    .line 252
    .line 253
    :cond_b
    :goto_9
    const/4 v4, 0x3

    .line 254
    invoke-virtual {p0, v4}, Lcc/e;->u0(I)Lcc/v;

    .line 255
    .line 256
    .line 257
    move-result-object v6

    .line 258
    iget-object v7, v6, Lcc/v;->a:[B

    .line 259
    .line 260
    iget v8, v6, Lcc/v;->c:I

    .line 261
    .line 262
    shr-int/lit8 v9, v2, 0xc

    .line 263
    .line 264
    or-int/lit16 v9, v9, 0xe0

    .line 265
    .line 266
    int-to-byte v9, v9

    .line 267
    aput-byte v9, v7, v8

    .line 268
    .line 269
    add-int/lit8 v9, v8, 0x1

    .line 270
    .line 271
    shr-int/lit8 v10, v2, 0x6

    .line 272
    .line 273
    and-int/2addr v5, v10

    .line 274
    or-int/2addr v5, v3

    .line 275
    int-to-byte v5, v5

    .line 276
    aput-byte v5, v7, v9

    .line 277
    .line 278
    add-int/lit8 v5, v8, 0x2

    .line 279
    .line 280
    and-int/lit8 v2, v2, 0x3f

    .line 281
    .line 282
    or-int/2addr v2, v3

    .line 283
    int-to-byte v2, v2

    .line 284
    aput-byte v2, v7, v5

    .line 285
    .line 286
    add-int/2addr v8, v4

    .line 287
    iput v8, v6, Lcc/v;->c:I

    .line 288
    .line 289
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 290
    .line 291
    .line 292
    move-result-wide v2

    .line 293
    const-wide/16 v4, 0x3

    .line 294
    .line 295
    add-long/2addr v2, v4

    .line 296
    invoke-virtual {p0, v2, v3}, Lcc/e;->r0(J)V

    .line 297
    .line 298
    .line 299
    goto/16 :goto_6

    .line 300
    .line 301
    :cond_c
    return-object p0

    .line 302
    :cond_d
    new-instance p2, Ljava/lang/StringBuilder;

    .line 303
    .line 304
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .line 306
    .line 307
    const-string v0, "endIndex > string.length: "

    .line 308
    .line 309
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    const-string p3, " > "

    .line 316
    .line 317
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 321
    .line 322
    .line 323
    move-result p1

    .line 324
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object p1

    .line 331
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 332
    .line 333
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object p1

    .line 337
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    throw p2

    .line 341
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    .line 342
    .line 343
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    .line 345
    .line 346
    const-string v0, "endIndex < beginIndex: "

    .line 347
    .line 348
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    const-string p3, " < "

    .line 355
    .line 356
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object p1

    .line 366
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 367
    .line 368
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object p1

    .line 372
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    throw p2

    .line 376
    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    .line 377
    .line 378
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    .line 380
    .line 381
    const-string p3, "beginIndex < 0: "

    .line 382
    .line 383
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object p1

    .line 393
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 394
    .line 395
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object p1

    .line 399
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    throw p2
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
.end method

.method public K0(I)Lcc/e;
    .locals 8

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    if-ge p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcc/e;->A0(I)Lcc/e;

    .line 6
    .line 7
    .line 8
    goto/16 :goto_1

    .line 9
    .line 10
    :cond_0
    const/16 v1, 0x800

    .line 11
    .line 12
    const/16 v2, 0x3f

    .line 13
    .line 14
    if-ge p1, v1, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    invoke-virtual {p0, v1}, Lcc/e;->u0(I)Lcc/v;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iget-object v4, v3, Lcc/v;->a:[B

    .line 22
    .line 23
    iget v5, v3, Lcc/v;->c:I

    .line 24
    .line 25
    shr-int/lit8 v6, p1, 0x6

    .line 26
    .line 27
    or-int/lit16 v6, v6, 0xc0

    .line 28
    .line 29
    int-to-byte v6, v6

    .line 30
    aput-byte v6, v4, v5

    .line 31
    .line 32
    add-int/lit8 v6, v5, 0x1

    .line 33
    .line 34
    and-int/2addr p1, v2

    .line 35
    or-int/2addr p1, v0

    .line 36
    int-to-byte p1, p1

    .line 37
    aput-byte p1, v4, v6

    .line 38
    .line 39
    add-int/2addr v5, v1

    .line 40
    iput v5, v3, Lcc/v;->c:I

    .line 41
    .line 42
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    const-wide/16 v2, 0x2

    .line 47
    .line 48
    add-long/2addr v0, v2

    .line 49
    invoke-virtual {p0, v0, v1}, Lcc/e;->r0(J)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_1

    .line 53
    .line 54
    :cond_1
    const v1, 0xdfff

    .line 55
    .line 56
    .line 57
    const v3, 0xd800

    .line 58
    .line 59
    .line 60
    if-le v3, p1, :cond_2

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    if-lt v1, p1, :cond_3

    .line 64
    .line 65
    invoke-virtual {p0, v2}, Lcc/e;->A0(I)Lcc/e;

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    :goto_0
    const/high16 v1, 0x10000

    .line 70
    .line 71
    if-ge p1, v1, :cond_4

    .line 72
    .line 73
    const/4 v1, 0x3

    .line 74
    invoke-virtual {p0, v1}, Lcc/e;->u0(I)Lcc/v;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    iget-object v4, v3, Lcc/v;->a:[B

    .line 79
    .line 80
    iget v5, v3, Lcc/v;->c:I

    .line 81
    .line 82
    shr-int/lit8 v6, p1, 0xc

    .line 83
    .line 84
    or-int/lit16 v6, v6, 0xe0

    .line 85
    .line 86
    int-to-byte v6, v6

    .line 87
    aput-byte v6, v4, v5

    .line 88
    .line 89
    add-int/lit8 v6, v5, 0x1

    .line 90
    .line 91
    shr-int/lit8 v7, p1, 0x6

    .line 92
    .line 93
    and-int/2addr v7, v2

    .line 94
    or-int/2addr v7, v0

    .line 95
    int-to-byte v7, v7

    .line 96
    aput-byte v7, v4, v6

    .line 97
    .line 98
    add-int/lit8 v6, v5, 0x2

    .line 99
    .line 100
    and-int/2addr p1, v2

    .line 101
    or-int/2addr p1, v0

    .line 102
    int-to-byte p1, p1

    .line 103
    aput-byte p1, v4, v6

    .line 104
    .line 105
    add-int/2addr v5, v1

    .line 106
    iput v5, v3, Lcc/v;->c:I

    .line 107
    .line 108
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 109
    .line 110
    .line 111
    move-result-wide v0

    .line 112
    const-wide/16 v2, 0x3

    .line 113
    .line 114
    add-long/2addr v0, v2

    .line 115
    invoke-virtual {p0, v0, v1}, Lcc/e;->r0(J)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_4
    const v1, 0x10ffff

    .line 120
    .line 121
    .line 122
    if-gt p1, v1, :cond_5

    .line 123
    .line 124
    const/4 v1, 0x4

    .line 125
    invoke-virtual {p0, v1}, Lcc/e;->u0(I)Lcc/v;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    iget-object v4, v3, Lcc/v;->a:[B

    .line 130
    .line 131
    iget v5, v3, Lcc/v;->c:I

    .line 132
    .line 133
    shr-int/lit8 v6, p1, 0x12

    .line 134
    .line 135
    or-int/lit16 v6, v6, 0xf0

    .line 136
    .line 137
    int-to-byte v6, v6

    .line 138
    aput-byte v6, v4, v5

    .line 139
    .line 140
    add-int/lit8 v6, v5, 0x1

    .line 141
    .line 142
    shr-int/lit8 v7, p1, 0xc

    .line 143
    .line 144
    and-int/2addr v7, v2

    .line 145
    or-int/2addr v7, v0

    .line 146
    int-to-byte v7, v7

    .line 147
    aput-byte v7, v4, v6

    .line 148
    .line 149
    add-int/lit8 v6, v5, 0x2

    .line 150
    .line 151
    shr-int/lit8 v7, p1, 0x6

    .line 152
    .line 153
    and-int/2addr v7, v2

    .line 154
    or-int/2addr v7, v0

    .line 155
    int-to-byte v7, v7

    .line 156
    aput-byte v7, v4, v6

    .line 157
    .line 158
    add-int/lit8 v6, v5, 0x3

    .line 159
    .line 160
    and-int/2addr p1, v2

    .line 161
    or-int/2addr p1, v0

    .line 162
    int-to-byte p1, p1

    .line 163
    aput-byte p1, v4, v6

    .line 164
    .line 165
    add-int/2addr v5, v1

    .line 166
    iput v5, v3, Lcc/v;->c:I

    .line 167
    .line 168
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 169
    .line 170
    .line 171
    move-result-wide v0

    .line 172
    const-wide/16 v2, 0x4

    .line 173
    .line 174
    add-long/2addr v0, v2

    .line 175
    invoke-virtual {p0, v0, v1}, Lcc/e;->r0(J)V

    .line 176
    .line 177
    .line 178
    :goto_1
    return-object p0

    .line 179
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 180
    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .line 185
    .line 186
    const-string v2, "Unexpected code point: 0x"

    .line 187
    .line 188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-static {p1}, Lcc/c;->f(I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    throw v0
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

.method public N(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "charset"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lcc/e;->b:J

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1, p1}, Lcc/e;->l0(JLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
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

.method public Q(Lcc/q;)I
    .locals 3

    .line 1
    const-string v0, "options"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {p0, p1, v0, v1, v2}, Ldc/a;->e(Lcc/e;Lcc/q;ZILjava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, -0x1

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    move v0, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcc/q;->k()[Lokio/ByteString;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    aget-object p1, p1, v0

    .line 23
    .line 24
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    int-to-long v1, p1

    .line 29
    invoke-virtual {p0, v1, v2}, Lcc/e;->skip(J)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return v0
    .line 33
.end method

.method public bridge synthetic R(Ljava/lang/String;II)Lcc/f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcc/e;->J0(Ljava/lang/String;II)Lcc/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
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
.end method

.method public bridge synthetic S(J)Lcc/f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcc/e;->C0(J)Lcc/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
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

.method public U(J)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcc/e;->b:J

    .line 2
    .line 3
    cmp-long p1, v0, p1

    .line 4
    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
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

.method public V(BJJ)J
    .locals 10

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, v0, p2

    .line 4
    .line 5
    if-lez v2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    cmp-long v2, p4, p2

    .line 9
    .line 10
    if-ltz v2, :cond_1

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 15
    :goto_1
    if-eqz v2, :cond_10

    .line 16
    .line 17
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    cmp-long v2, p4, v2

    .line 22
    .line 23
    if-lez v2, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 26
    .line 27
    .line 28
    move-result-wide p4

    .line 29
    :cond_2
    cmp-long v2, p2, p4

    .line 30
    .line 31
    const-wide/16 v3, -0x1

    .line 32
    .line 33
    if-nez v2, :cond_3

    .line 34
    .line 35
    goto/16 :goto_9

    .line 36
    .line 37
    :cond_3
    iget-object v2, p0, Lcc/e;->a:Lcc/v;

    .line 38
    .line 39
    if-eqz v2, :cond_f

    .line 40
    .line 41
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 42
    .line 43
    .line 44
    move-result-wide v5

    .line 45
    sub-long/2addr v5, p2

    .line 46
    cmp-long v5, v5, p2

    .line 47
    .line 48
    if-gez v5, :cond_9

    .line 49
    .line 50
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 51
    .line 52
    .line 53
    move-result-wide v0

    .line 54
    :goto_2
    cmp-long v5, v0, p2

    .line 55
    .line 56
    if-lez v5, :cond_5

    .line 57
    .line 58
    iget-object v2, v2, Lcc/v;->g:Lcc/v;

    .line 59
    .line 60
    if-nez v2, :cond_4

    .line 61
    .line 62
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 63
    .line 64
    .line 65
    :cond_4
    iget v5, v2, Lcc/v;->c:I

    .line 66
    .line 67
    iget v6, v2, Lcc/v;->b:I

    .line 68
    .line 69
    sub-int/2addr v5, v6

    .line 70
    int-to-long v5, v5

    .line 71
    sub-long/2addr v0, v5

    .line 72
    goto :goto_2

    .line 73
    :cond_5
    :goto_3
    cmp-long v5, v0, p4

    .line 74
    .line 75
    if-gez v5, :cond_f

    .line 76
    .line 77
    iget-object v5, v2, Lcc/v;->a:[B

    .line 78
    .line 79
    iget v6, v2, Lcc/v;->c:I

    .line 80
    .line 81
    int-to-long v6, v6

    .line 82
    iget v8, v2, Lcc/v;->b:I

    .line 83
    .line 84
    int-to-long v8, v8

    .line 85
    add-long/2addr v8, p4

    .line 86
    sub-long/2addr v8, v0

    .line 87
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 88
    .line 89
    .line 90
    move-result-wide v6

    .line 91
    long-to-int v6, v6

    .line 92
    iget v7, v2, Lcc/v;->b:I

    .line 93
    .line 94
    int-to-long v7, v7

    .line 95
    add-long/2addr v7, p2

    .line 96
    sub-long/2addr v7, v0

    .line 97
    long-to-int p2, v7

    .line 98
    :goto_4
    if-ge p2, v6, :cond_7

    .line 99
    .line 100
    aget-byte p3, v5, p2

    .line 101
    .line 102
    if-ne p3, p1, :cond_6

    .line 103
    .line 104
    :goto_5
    iget p1, v2, Lcc/v;->b:I

    .line 105
    .line 106
    sub-int/2addr p2, p1

    .line 107
    int-to-long p1, p2

    .line 108
    add-long v3, p1, v0

    .line 109
    .line 110
    goto :goto_9

    .line 111
    :cond_6
    add-int/lit8 p2, p2, 0x1

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_7
    iget p2, v2, Lcc/v;->c:I

    .line 115
    .line 116
    iget p3, v2, Lcc/v;->b:I

    .line 117
    .line 118
    sub-int/2addr p2, p3

    .line 119
    int-to-long p2, p2

    .line 120
    add-long/2addr v0, p2

    .line 121
    iget-object v2, v2, Lcc/v;->f:Lcc/v;

    .line 122
    .line 123
    if-nez v2, :cond_8

    .line 124
    .line 125
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 126
    .line 127
    .line 128
    :cond_8
    move-wide p2, v0

    .line 129
    goto :goto_3

    .line 130
    :cond_9
    :goto_6
    iget v5, v2, Lcc/v;->c:I

    .line 131
    .line 132
    iget v6, v2, Lcc/v;->b:I

    .line 133
    .line 134
    sub-int/2addr v5, v6

    .line 135
    int-to-long v5, v5

    .line 136
    add-long/2addr v5, v0

    .line 137
    cmp-long v7, v5, p2

    .line 138
    .line 139
    if-lez v7, :cond_d

    .line 140
    .line 141
    :goto_7
    cmp-long v5, v0, p4

    .line 142
    .line 143
    if-gez v5, :cond_f

    .line 144
    .line 145
    iget-object v5, v2, Lcc/v;->a:[B

    .line 146
    .line 147
    iget v6, v2, Lcc/v;->c:I

    .line 148
    .line 149
    int-to-long v6, v6

    .line 150
    iget v8, v2, Lcc/v;->b:I

    .line 151
    .line 152
    int-to-long v8, v8

    .line 153
    add-long/2addr v8, p4

    .line 154
    sub-long/2addr v8, v0

    .line 155
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 156
    .line 157
    .line 158
    move-result-wide v6

    .line 159
    long-to-int v6, v6

    .line 160
    iget v7, v2, Lcc/v;->b:I

    .line 161
    .line 162
    int-to-long v7, v7

    .line 163
    add-long/2addr v7, p2

    .line 164
    sub-long/2addr v7, v0

    .line 165
    long-to-int p2, v7

    .line 166
    :goto_8
    if-ge p2, v6, :cond_b

    .line 167
    .line 168
    aget-byte p3, v5, p2

    .line 169
    .line 170
    if-ne p3, p1, :cond_a

    .line 171
    .line 172
    goto :goto_5

    .line 173
    :cond_a
    add-int/lit8 p2, p2, 0x1

    .line 174
    .line 175
    goto :goto_8

    .line 176
    :cond_b
    iget p2, v2, Lcc/v;->c:I

    .line 177
    .line 178
    iget p3, v2, Lcc/v;->b:I

    .line 179
    .line 180
    sub-int/2addr p2, p3

    .line 181
    int-to-long p2, p2

    .line 182
    add-long/2addr v0, p2

    .line 183
    iget-object v2, v2, Lcc/v;->f:Lcc/v;

    .line 184
    .line 185
    if-nez v2, :cond_c

    .line 186
    .line 187
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 188
    .line 189
    .line 190
    :cond_c
    move-wide p2, v0

    .line 191
    goto :goto_7

    .line 192
    :cond_d
    iget-object v2, v2, Lcc/v;->f:Lcc/v;

    .line 193
    .line 194
    if-nez v2, :cond_e

    .line 195
    .line 196
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 197
    .line 198
    .line 199
    :cond_e
    move-wide v0, v5

    .line 200
    goto :goto_6

    .line 201
    :cond_f
    :goto_9
    return-wide v3

    .line 202
    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .line 206
    .line 207
    const-string v0, "size="

    .line 208
    .line 209
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 213
    .line 214
    .line 215
    move-result-wide v0

    .line 216
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    const-string v0, " fromIndex="

    .line 220
    .line 221
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string p2, " toIndex="

    .line 228
    .line 229
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 240
    .line 241
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    throw p2
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
.end method

.method public W(Lokio/ByteString;J)J
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-wide/from16 v0, p2

    .line 2
    .line 3
    const-string v2, "bytes"

    .line 4
    .line 5
    move-object/from16 v3, p1

    .line 6
    .line 7
    invoke-static {v3, v2}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v4, 0x0

    .line 15
    if-lez v2, :cond_0

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v2, v4

    .line 20
    :goto_0
    if-eqz v2, :cond_10

    .line 21
    .line 22
    const-wide/16 v6, 0x0

    .line 23
    .line 24
    cmp-long v2, v0, v6

    .line 25
    .line 26
    if-ltz v2, :cond_1

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v2, v4

    .line 31
    :goto_1
    if-eqz v2, :cond_f

    .line 32
    .line 33
    move-object/from16 v2, p0

    .line 34
    .line 35
    iget-object v8, v2, Lcc/e;->a:Lcc/v;

    .line 36
    .line 37
    if-eqz v8, :cond_e

    .line 38
    .line 39
    invoke-virtual/range {p0 .. p0}, Lcc/e;->size()J

    .line 40
    .line 41
    .line 42
    move-result-wide v11

    .line 43
    sub-long/2addr v11, v0

    .line 44
    cmp-long v11, v11, v0

    .line 45
    .line 46
    const-wide/16 v12, 0x1

    .line 47
    .line 48
    if-gez v11, :cond_7

    .line 49
    .line 50
    invoke-virtual/range {p0 .. p0}, Lcc/e;->size()J

    .line 51
    .line 52
    .line 53
    move-result-wide v6

    .line 54
    :goto_2
    cmp-long v11, v6, v0

    .line 55
    .line 56
    if-lez v11, :cond_3

    .line 57
    .line 58
    iget-object v8, v8, Lcc/v;->g:Lcc/v;

    .line 59
    .line 60
    if-nez v8, :cond_2

    .line 61
    .line 62
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 63
    .line 64
    .line 65
    :cond_2
    iget v11, v8, Lcc/v;->c:I

    .line 66
    .line 67
    iget v14, v8, Lcc/v;->b:I

    .line 68
    .line 69
    sub-int/2addr v11, v14

    .line 70
    int-to-long v14, v11

    .line 71
    sub-long/2addr v6, v14

    .line 72
    goto :goto_2

    .line 73
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->internalArray$okio()[B

    .line 74
    .line 75
    .line 76
    move-result-object v11

    .line 77
    aget-byte v4, v11, v4

    .line 78
    .line 79
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcc/e;->size()J

    .line 84
    .line 85
    .line 86
    move-result-wide v14

    .line 87
    int-to-long v9, v3

    .line 88
    sub-long/2addr v14, v9

    .line 89
    add-long/2addr v14, v12

    .line 90
    :goto_3
    cmp-long v9, v6, v14

    .line 91
    .line 92
    if-gez v9, :cond_e

    .line 93
    .line 94
    iget-object v9, v8, Lcc/v;->a:[B

    .line 95
    .line 96
    iget v10, v8, Lcc/v;->c:I

    .line 97
    .line 98
    iget v12, v8, Lcc/v;->b:I

    .line 99
    .line 100
    int-to-long v12, v12

    .line 101
    add-long/2addr v12, v14

    .line 102
    sub-long/2addr v12, v6

    .line 103
    move-wide/from16 p1, v6

    .line 104
    .line 105
    int-to-long v5, v10

    .line 106
    invoke-static {v5, v6, v12, v13}, Ljava/lang/Math;->min(JJ)J

    .line 107
    .line 108
    .line 109
    move-result-wide v5

    .line 110
    long-to-int v5, v5

    .line 111
    iget v6, v8, Lcc/v;->b:I

    .line 112
    .line 113
    int-to-long v6, v6

    .line 114
    add-long/2addr v6, v0

    .line 115
    move-wide/from16 v0, p1

    .line 116
    .line 117
    sub-long/2addr v6, v0

    .line 118
    long-to-int v6, v6

    .line 119
    :goto_4
    if-ge v6, v5, :cond_5

    .line 120
    .line 121
    aget-byte v7, v9, v6

    .line 122
    .line 123
    if-ne v7, v4, :cond_4

    .line 124
    .line 125
    add-int/lit8 v7, v6, 0x1

    .line 126
    .line 127
    const/4 v10, 0x1

    .line 128
    invoke-static {v8, v7, v11, v10, v3}, Ldc/a;->b(Lcc/v;I[BII)Z

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    if-eqz v7, :cond_4

    .line 133
    .line 134
    iget v3, v8, Lcc/v;->b:I

    .line 135
    .line 136
    sub-int/2addr v6, v3

    .line 137
    int-to-long v3, v6

    .line 138
    add-long v9, v3, v0

    .line 139
    .line 140
    goto/16 :goto_8

    .line 141
    .line 142
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_5
    iget v5, v8, Lcc/v;->c:I

    .line 146
    .line 147
    iget v6, v8, Lcc/v;->b:I

    .line 148
    .line 149
    sub-int/2addr v5, v6

    .line 150
    int-to-long v5, v5

    .line 151
    add-long v6, v0, v5

    .line 152
    .line 153
    iget-object v8, v8, Lcc/v;->f:Lcc/v;

    .line 154
    .line 155
    if-nez v8, :cond_6

    .line 156
    .line 157
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 158
    .line 159
    .line 160
    :cond_6
    move-wide v0, v6

    .line 161
    goto :goto_3

    .line 162
    :cond_7
    :goto_5
    iget v5, v8, Lcc/v;->c:I

    .line 163
    .line 164
    iget v9, v8, Lcc/v;->b:I

    .line 165
    .line 166
    sub-int/2addr v5, v9

    .line 167
    int-to-long v9, v5

    .line 168
    add-long/2addr v9, v6

    .line 169
    cmp-long v5, v9, v0

    .line 170
    .line 171
    if-lez v5, :cond_c

    .line 172
    .line 173
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->internalArray$okio()[B

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    aget-byte v4, v5, v4

    .line 178
    .line 179
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcc/e;->size()J

    .line 184
    .line 185
    .line 186
    move-result-wide v9

    .line 187
    int-to-long v14, v3

    .line 188
    sub-long/2addr v9, v14

    .line 189
    add-long/2addr v9, v12

    .line 190
    :goto_6
    cmp-long v11, v6, v9

    .line 191
    .line 192
    if-gez v11, :cond_e

    .line 193
    .line 194
    iget-object v11, v8, Lcc/v;->a:[B

    .line 195
    .line 196
    iget v12, v8, Lcc/v;->c:I

    .line 197
    .line 198
    iget v13, v8, Lcc/v;->b:I

    .line 199
    .line 200
    int-to-long v13, v13

    .line 201
    add-long/2addr v13, v9

    .line 202
    sub-long/2addr v13, v6

    .line 203
    move-wide/from16 v16, v9

    .line 204
    .line 205
    int-to-long v9, v12

    .line 206
    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->min(JJ)J

    .line 207
    .line 208
    .line 209
    move-result-wide v9

    .line 210
    long-to-int v9, v9

    .line 211
    iget v10, v8, Lcc/v;->b:I

    .line 212
    .line 213
    int-to-long v12, v10

    .line 214
    add-long/2addr v12, v0

    .line 215
    sub-long/2addr v12, v6

    .line 216
    long-to-int v0, v12

    .line 217
    :goto_7
    if-ge v0, v9, :cond_a

    .line 218
    .line 219
    aget-byte v1, v11, v0

    .line 220
    .line 221
    if-ne v1, v4, :cond_8

    .line 222
    .line 223
    add-int/lit8 v1, v0, 0x1

    .line 224
    .line 225
    const/4 v14, 0x1

    .line 226
    invoke-static {v8, v1, v5, v14, v3}, Ldc/a;->b(Lcc/v;I[BII)Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-eqz v1, :cond_9

    .line 231
    .line 232
    iget v1, v8, Lcc/v;->b:I

    .line 233
    .line 234
    sub-int/2addr v0, v1

    .line 235
    int-to-long v0, v0

    .line 236
    add-long v9, v0, v6

    .line 237
    .line 238
    goto :goto_8

    .line 239
    :cond_8
    const/4 v14, 0x1

    .line 240
    :cond_9
    add-int/lit8 v0, v0, 0x1

    .line 241
    .line 242
    goto :goto_7

    .line 243
    :cond_a
    const/4 v14, 0x1

    .line 244
    iget v0, v8, Lcc/v;->c:I

    .line 245
    .line 246
    iget v1, v8, Lcc/v;->b:I

    .line 247
    .line 248
    sub-int/2addr v0, v1

    .line 249
    int-to-long v0, v0

    .line 250
    add-long/2addr v6, v0

    .line 251
    iget-object v8, v8, Lcc/v;->f:Lcc/v;

    .line 252
    .line 253
    if-nez v8, :cond_b

    .line 254
    .line 255
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 256
    .line 257
    .line 258
    :cond_b
    move-wide v0, v6

    .line 259
    move-wide/from16 v9, v16

    .line 260
    .line 261
    goto :goto_6

    .line 262
    :cond_c
    const/4 v14, 0x1

    .line 263
    iget-object v8, v8, Lcc/v;->f:Lcc/v;

    .line 264
    .line 265
    if-nez v8, :cond_d

    .line 266
    .line 267
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 268
    .line 269
    .line 270
    :cond_d
    move-wide v6, v9

    .line 271
    goto :goto_5

    .line 272
    :cond_e
    const-wide/16 v9, -0x1

    .line 273
    .line 274
    :goto_8
    return-wide v9

    .line 275
    :cond_f
    move-object/from16 v2, p0

    .line 276
    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .line 281
    .line 282
    const-string v4, "fromIndex < 0: "

    .line 283
    .line 284
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 295
    .line 296
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    throw v1

    .line 304
    :cond_10
    move-object/from16 v2, p0

    .line 305
    .line 306
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 307
    .line 308
    const-string v1, "bytes is empty"

    .line 309
    .line 310
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    throw v0
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
.end method

.method public Y()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    const-wide v0, 0x7fffffffffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Lcc/e;->A(J)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
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

.method public Z(Lokio/ByteString;J)J
    .locals 11

    .line 1
    const-string v0, "targetBytes"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v2, p2, v0

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x1

    .line 12
    if-ltz v2, :cond_0

    .line 13
    .line 14
    move v2, v4

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v2, v3

    .line 17
    :goto_0
    if-eqz v2, :cond_18

    .line 18
    .line 19
    iget-object v2, p0, Lcc/e;->a:Lcc/v;

    .line 20
    .line 21
    const-wide/16 v5, -0x1

    .line 22
    .line 23
    if-eqz v2, :cond_17

    .line 24
    .line 25
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 26
    .line 27
    .line 28
    move-result-wide v7

    .line 29
    sub-long/2addr v7, p2

    .line 30
    cmp-long v7, v7, p2

    .line 31
    .line 32
    const/4 v8, 0x2

    .line 33
    if-gez v7, :cond_c

    .line 34
    .line 35
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    :goto_1
    cmp-long v7, v0, p2

    .line 40
    .line 41
    if-lez v7, :cond_2

    .line 42
    .line 43
    iget-object v2, v2, Lcc/v;->g:Lcc/v;

    .line 44
    .line 45
    if-nez v2, :cond_1

    .line 46
    .line 47
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 48
    .line 49
    .line 50
    :cond_1
    iget v7, v2, Lcc/v;->c:I

    .line 51
    .line 52
    iget v9, v2, Lcc/v;->b:I

    .line 53
    .line 54
    sub-int/2addr v7, v9

    .line 55
    int-to-long v9, v7

    .line 56
    sub-long/2addr v0, v9

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    if-ne v7, v8, :cond_7

    .line 63
    .line 64
    invoke-virtual {p1, v3}, Lokio/ByteString;->getByte(I)B

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    invoke-virtual {p1, v4}, Lokio/ByteString;->getByte(I)B

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    :goto_2
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 73
    .line 74
    .line 75
    move-result-wide v7

    .line 76
    cmp-long v4, v0, v7

    .line 77
    .line 78
    if-gez v4, :cond_17

    .line 79
    .line 80
    iget-object v4, v2, Lcc/v;->a:[B

    .line 81
    .line 82
    iget v7, v2, Lcc/v;->b:I

    .line 83
    .line 84
    int-to-long v7, v7

    .line 85
    add-long/2addr v7, p2

    .line 86
    sub-long/2addr v7, v0

    .line 87
    long-to-int p2, v7

    .line 88
    iget p3, v2, Lcc/v;->c:I

    .line 89
    .line 90
    :goto_3
    if-ge p2, p3, :cond_5

    .line 91
    .line 92
    aget-byte v7, v4, p2

    .line 93
    .line 94
    if-eq v7, v3, :cond_4

    .line 95
    .line 96
    if-ne v7, p1, :cond_3

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_4
    :goto_4
    iget p1, v2, Lcc/v;->b:I

    .line 103
    .line 104
    :goto_5
    sub-int/2addr p2, p1

    .line 105
    int-to-long p1, p2

    .line 106
    add-long v5, p1, v0

    .line 107
    .line 108
    goto/16 :goto_10

    .line 109
    .line 110
    :cond_5
    iget p2, v2, Lcc/v;->c:I

    .line 111
    .line 112
    iget p3, v2, Lcc/v;->b:I

    .line 113
    .line 114
    sub-int/2addr p2, p3

    .line 115
    int-to-long p2, p2

    .line 116
    add-long/2addr v0, p2

    .line 117
    iget-object v2, v2, Lcc/v;->f:Lcc/v;

    .line 118
    .line 119
    if-nez v2, :cond_6

    .line 120
    .line 121
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 122
    .line 123
    .line 124
    :cond_6
    move-wide p2, v0

    .line 125
    goto :goto_2

    .line 126
    :cond_7
    invoke-virtual {p1}, Lokio/ByteString;->internalArray$okio()[B

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    :goto_6
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 131
    .line 132
    .line 133
    move-result-wide v7

    .line 134
    cmp-long v4, v0, v7

    .line 135
    .line 136
    if-gez v4, :cond_17

    .line 137
    .line 138
    iget-object v4, v2, Lcc/v;->a:[B

    .line 139
    .line 140
    iget v7, v2, Lcc/v;->b:I

    .line 141
    .line 142
    int-to-long v7, v7

    .line 143
    add-long/2addr v7, p2

    .line 144
    sub-long/2addr v7, v0

    .line 145
    long-to-int p2, v7

    .line 146
    iget p3, v2, Lcc/v;->c:I

    .line 147
    .line 148
    :goto_7
    if-ge p2, p3, :cond_a

    .line 149
    .line 150
    aget-byte v7, v4, p2

    .line 151
    .line 152
    array-length v8, p1

    .line 153
    move v9, v3

    .line 154
    :goto_8
    if-ge v9, v8, :cond_9

    .line 155
    .line 156
    aget-byte v10, p1, v9

    .line 157
    .line 158
    if-ne v7, v10, :cond_8

    .line 159
    .line 160
    :goto_9
    iget p1, v2, Lcc/v;->b:I

    .line 161
    .line 162
    goto :goto_5

    .line 163
    :cond_8
    add-int/lit8 v9, v9, 0x1

    .line 164
    .line 165
    goto :goto_8

    .line 166
    :cond_9
    add-int/lit8 p2, p2, 0x1

    .line 167
    .line 168
    goto :goto_7

    .line 169
    :cond_a
    iget p2, v2, Lcc/v;->c:I

    .line 170
    .line 171
    iget p3, v2, Lcc/v;->b:I

    .line 172
    .line 173
    sub-int/2addr p2, p3

    .line 174
    int-to-long p2, p2

    .line 175
    add-long/2addr v0, p2

    .line 176
    iget-object v2, v2, Lcc/v;->f:Lcc/v;

    .line 177
    .line 178
    if-nez v2, :cond_b

    .line 179
    .line 180
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 181
    .line 182
    .line 183
    :cond_b
    move-wide p2, v0

    .line 184
    goto :goto_6

    .line 185
    :cond_c
    :goto_a
    iget v7, v2, Lcc/v;->c:I

    .line 186
    .line 187
    iget v9, v2, Lcc/v;->b:I

    .line 188
    .line 189
    sub-int/2addr v7, v9

    .line 190
    int-to-long v9, v7

    .line 191
    add-long/2addr v9, v0

    .line 192
    cmp-long v7, v9, p2

    .line 193
    .line 194
    if-lez v7, :cond_15

    .line 195
    .line 196
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    .line 197
    .line 198
    .line 199
    move-result v7

    .line 200
    if-ne v7, v8, :cond_10

    .line 201
    .line 202
    invoke-virtual {p1, v3}, Lokio/ByteString;->getByte(I)B

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    invoke-virtual {p1, v4}, Lokio/ByteString;->getByte(I)B

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    :goto_b
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 211
    .line 212
    .line 213
    move-result-wide v7

    .line 214
    cmp-long v4, v0, v7

    .line 215
    .line 216
    if-gez v4, :cond_17

    .line 217
    .line 218
    iget-object v4, v2, Lcc/v;->a:[B

    .line 219
    .line 220
    iget v7, v2, Lcc/v;->b:I

    .line 221
    .line 222
    int-to-long v7, v7

    .line 223
    add-long/2addr v7, p2

    .line 224
    sub-long/2addr v7, v0

    .line 225
    long-to-int p2, v7

    .line 226
    iget p3, v2, Lcc/v;->c:I

    .line 227
    .line 228
    :goto_c
    if-ge p2, p3, :cond_e

    .line 229
    .line 230
    aget-byte v7, v4, p2

    .line 231
    .line 232
    if-eq v7, v3, :cond_4

    .line 233
    .line 234
    if-ne v7, p1, :cond_d

    .line 235
    .line 236
    goto/16 :goto_4

    .line 237
    .line 238
    :cond_d
    add-int/lit8 p2, p2, 0x1

    .line 239
    .line 240
    goto :goto_c

    .line 241
    :cond_e
    iget p2, v2, Lcc/v;->c:I

    .line 242
    .line 243
    iget p3, v2, Lcc/v;->b:I

    .line 244
    .line 245
    sub-int/2addr p2, p3

    .line 246
    int-to-long p2, p2

    .line 247
    add-long/2addr v0, p2

    .line 248
    iget-object v2, v2, Lcc/v;->f:Lcc/v;

    .line 249
    .line 250
    if-nez v2, :cond_f

    .line 251
    .line 252
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 253
    .line 254
    .line 255
    :cond_f
    move-wide p2, v0

    .line 256
    goto :goto_b

    .line 257
    :cond_10
    invoke-virtual {p1}, Lokio/ByteString;->internalArray$okio()[B

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    :goto_d
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 262
    .line 263
    .line 264
    move-result-wide v7

    .line 265
    cmp-long v4, v0, v7

    .line 266
    .line 267
    if-gez v4, :cond_17

    .line 268
    .line 269
    iget-object v4, v2, Lcc/v;->a:[B

    .line 270
    .line 271
    iget v7, v2, Lcc/v;->b:I

    .line 272
    .line 273
    int-to-long v7, v7

    .line 274
    add-long/2addr v7, p2

    .line 275
    sub-long/2addr v7, v0

    .line 276
    long-to-int p2, v7

    .line 277
    iget p3, v2, Lcc/v;->c:I

    .line 278
    .line 279
    :goto_e
    if-ge p2, p3, :cond_13

    .line 280
    .line 281
    aget-byte v7, v4, p2

    .line 282
    .line 283
    array-length v8, p1

    .line 284
    move v9, v3

    .line 285
    :goto_f
    if-ge v9, v8, :cond_12

    .line 286
    .line 287
    aget-byte v10, p1, v9

    .line 288
    .line 289
    if-ne v7, v10, :cond_11

    .line 290
    .line 291
    goto/16 :goto_9

    .line 292
    .line 293
    :cond_11
    add-int/lit8 v9, v9, 0x1

    .line 294
    .line 295
    goto :goto_f

    .line 296
    :cond_12
    add-int/lit8 p2, p2, 0x1

    .line 297
    .line 298
    goto :goto_e

    .line 299
    :cond_13
    iget p2, v2, Lcc/v;->c:I

    .line 300
    .line 301
    iget p3, v2, Lcc/v;->b:I

    .line 302
    .line 303
    sub-int/2addr p2, p3

    .line 304
    int-to-long p2, p2

    .line 305
    add-long/2addr v0, p2

    .line 306
    iget-object v2, v2, Lcc/v;->f:Lcc/v;

    .line 307
    .line 308
    if-nez v2, :cond_14

    .line 309
    .line 310
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 311
    .line 312
    .line 313
    :cond_14
    move-wide p2, v0

    .line 314
    goto :goto_d

    .line 315
    :cond_15
    iget-object v2, v2, Lcc/v;->f:Lcc/v;

    .line 316
    .line 317
    if-nez v2, :cond_16

    .line 318
    .line 319
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 320
    .line 321
    .line 322
    :cond_16
    move-wide v0, v9

    .line 323
    goto/16 :goto_a

    .line 324
    .line 325
    :cond_17
    :goto_10
    return-wide v5

    .line 326
    :cond_18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 327
    .line 328
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .line 330
    .line 331
    const-string v0, "fromIndex < 0: "

    .line 332
    .line 333
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 344
    .line 345
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object p1

    .line 349
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    throw p2
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
.end method

.method public a()Lcc/e;
    .locals 0

    return-object p0
.end method

.method public a0()Ljava/io/OutputStream;
    .locals 1

    .line 1
    new-instance v0, Lcc/e$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcc/e$b;-><init>(Lcc/e;)V

    .line 4
    .line 5
    .line 6
    return-object v0
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

.method public b()Lcc/b0;
    .locals 1

    .line 1
    sget-object v0, Lcc/b0;->d:Lcc/b0;

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

.method public c0()Lokio/ByteString;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0, v0, v1}, Lcc/e;->i(J)Lokio/ByteString;

    .line 6
    .line 7
    .line 8
    move-result-object v0

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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcc/e;->e()Lcc/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
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

.method public close()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0, v0, v1}, Lcc/e;->skip(J)V

    .line 6
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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public d0([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :goto_0
    array-length v1, p1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    array-length v1, p1

    .line 11
    sub-int/2addr v1, v0

    .line 12
    invoke-virtual {p0, p1, v0, v1}, Lcc/e;->read([BII)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, -0x1

    .line 17
    if-eq v1, v2, :cond_0

    .line 18
    .line 19
    add-int/2addr v0, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    return-void
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method public e()Lcc/e;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcc/e;->z()Lcc/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
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

.method public e0(J)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    const v0, 0x7fffffff

    .line 8
    .line 9
    .line 10
    int-to-long v0, v0

    .line 11
    cmp-long v0, p1, v0

    .line 12
    .line 13
    if-gtz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    cmp-long v0, v0, p1

    .line 25
    .line 26
    if-ltz v0, :cond_1

    .line 27
    .line 28
    long-to-int p1, p1

    .line 29
    new-array p1, p1, [B

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcc/e;->d0([B)V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    .line 36
    .line 37
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 38
    .line 39
    .line 40
    throw p1

    .line 41
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v1, "byteCount: "

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p2
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

.method public equals(Ljava/lang/Object;)Z
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    :cond_0
    :goto_0
    move v2, v3

    .line 10
    goto/16 :goto_3

    .line 11
    .line 12
    :cond_1
    instance-of v4, v1, Lcc/e;

    .line 13
    .line 14
    if-nez v4, :cond_2

    .line 15
    .line 16
    goto/16 :goto_3

    .line 17
    .line 18
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcc/e;->size()J

    .line 19
    .line 20
    .line 21
    move-result-wide v4

    .line 22
    check-cast v1, Lcc/e;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcc/e;->size()J

    .line 25
    .line 26
    .line 27
    move-result-wide v6

    .line 28
    cmp-long v4, v4, v6

    .line 29
    .line 30
    if-eqz v4, :cond_3

    .line 31
    .line 32
    goto/16 :goto_3

    .line 33
    .line 34
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcc/e;->size()J

    .line 35
    .line 36
    .line 37
    move-result-wide v4

    .line 38
    const-wide/16 v6, 0x0

    .line 39
    .line 40
    cmp-long v4, v4, v6

    .line 41
    .line 42
    if-nez v4, :cond_4

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_4
    iget-object v4, v0, Lcc/e;->a:Lcc/v;

    .line 46
    .line 47
    if-nez v4, :cond_5

    .line 48
    .line 49
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 50
    .line 51
    .line 52
    :cond_5
    iget-object v1, v1, Lcc/e;->a:Lcc/v;

    .line 53
    .line 54
    if-nez v1, :cond_6

    .line 55
    .line 56
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 57
    .line 58
    .line 59
    :cond_6
    iget v5, v4, Lcc/v;->b:I

    .line 60
    .line 61
    iget v8, v1, Lcc/v;->b:I

    .line 62
    .line 63
    move-wide v9, v6

    .line 64
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcc/e;->size()J

    .line 65
    .line 66
    .line 67
    move-result-wide v11

    .line 68
    cmp-long v11, v9, v11

    .line 69
    .line 70
    if-gez v11, :cond_0

    .line 71
    .line 72
    iget v11, v4, Lcc/v;->c:I

    .line 73
    .line 74
    sub-int/2addr v11, v5

    .line 75
    iget v12, v1, Lcc/v;->c:I

    .line 76
    .line 77
    sub-int/2addr v12, v8

    .line 78
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    .line 79
    .line 80
    .line 81
    move-result v11

    .line 82
    int-to-long v11, v11

    .line 83
    move-wide v13, v6

    .line 84
    :goto_2
    cmp-long v15, v13, v11

    .line 85
    .line 86
    if-gez v15, :cond_8

    .line 87
    .line 88
    iget-object v15, v4, Lcc/v;->a:[B

    .line 89
    .line 90
    add-int/lit8 v16, v5, 0x1

    .line 91
    .line 92
    aget-byte v5, v15, v5

    .line 93
    .line 94
    iget-object v15, v1, Lcc/v;->a:[B

    .line 95
    .line 96
    add-int/lit8 v17, v8, 0x1

    .line 97
    .line 98
    aget-byte v8, v15, v8

    .line 99
    .line 100
    if-eq v5, v8, :cond_7

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_7
    const-wide/16 v18, 0x1

    .line 104
    .line 105
    add-long v13, v13, v18

    .line 106
    .line 107
    move/from16 v5, v16

    .line 108
    .line 109
    move/from16 v8, v17

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_8
    iget v13, v4, Lcc/v;->c:I

    .line 113
    .line 114
    if-ne v5, v13, :cond_a

    .line 115
    .line 116
    iget-object v4, v4, Lcc/v;->f:Lcc/v;

    .line 117
    .line 118
    if-nez v4, :cond_9

    .line 119
    .line 120
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 121
    .line 122
    .line 123
    :cond_9
    iget v5, v4, Lcc/v;->b:I

    .line 124
    .line 125
    :cond_a
    iget v13, v1, Lcc/v;->c:I

    .line 126
    .line 127
    if-ne v8, v13, :cond_c

    .line 128
    .line 129
    iget-object v1, v1, Lcc/v;->f:Lcc/v;

    .line 130
    .line 131
    if-nez v1, :cond_b

    .line 132
    .line 133
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 134
    .line 135
    .line 136
    :cond_b
    iget v8, v1, Lcc/v;->b:I

    .line 137
    .line 138
    :cond_c
    add-long/2addr v9, v11

    .line 139
    goto :goto_1

    .line 140
    :goto_3
    return v2
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

.method public flush()V
    .locals 0

    return-void
.end method

.method public bridge synthetic g0(Lokio/ByteString;)Lcc/f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcc/e;->w0(Lokio/ByteString;)Lcc/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
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

.method public h()Lcc/e;
    .locals 0

    return-object p0
.end method

.method public h0()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcc/e;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcc/c;->c(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
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

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcc/e;->a:Lcc/v;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    :cond_0
    iget v2, v0, Lcc/v;->b:I

    .line 7
    .line 8
    iget v3, v0, Lcc/v;->c:I

    .line 9
    .line 10
    :goto_0
    if-ge v2, v3, :cond_1

    .line 11
    .line 12
    mul-int/lit8 v1, v1, 0x1f

    .line 13
    .line 14
    iget-object v4, v0, Lcc/v;->a:[B

    .line 15
    .line 16
    aget-byte v4, v4, v2

    .line 17
    .line 18
    add-int/2addr v1, v4

    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object v0, v0, Lcc/v;->f:Lcc/v;

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 27
    .line 28
    .line 29
    :cond_2
    iget-object v2, p0, Lcc/e;->a:Lcc/v;

    .line 30
    .line 31
    if-ne v0, v2, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_3
    const/4 v1, 0x0

    .line 35
    :goto_1
    return v1
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
.end method

.method public i(J)Lokio/ByteString;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    const v0, 0x7fffffff

    .line 8
    .line 9
    .line 10
    int-to-long v0, v0

    .line 11
    cmp-long v0, p1, v0

    .line 12
    .line 13
    if-gtz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-eqz v0, :cond_3

    .line 19
    .line 20
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    cmp-long v0, v0, p1

    .line 25
    .line 26
    if-ltz v0, :cond_2

    .line 27
    .line 28
    const/16 v0, 0x1000

    .line 29
    .line 30
    int-to-long v0, v0

    .line 31
    cmp-long v0, p1, v0

    .line 32
    .line 33
    if-ltz v0, :cond_1

    .line 34
    .line 35
    long-to-int v0, p1

    .line 36
    invoke-virtual {p0, v0}, Lcc/e;->t0(I)Lokio/ByteString;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p0, p1, p2}, Lcc/e;->skip(J)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    new-instance v0, Lokio/ByteString;

    .line 45
    .line 46
    invoke-virtual {p0, p1, p2}, Lcc/e;->e0(J)[B

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {v0, p1}, Lokio/ByteString;-><init>([B)V

    .line 51
    .line 52
    .line 53
    :goto_1
    return-object v0

    .line 54
    :cond_2
    new-instance p1, Ljava/io/EOFException;

    .line 55
    .line 56
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v1, "byteCount: "

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p2
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

.method public i0()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcc/e;->readShort()S

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcc/c;->d(S)S

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
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

.method public isOpen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j0(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcc/e;->b:J

    .line 2
    .line 3
    cmp-long p1, v0, p1

    .line 4
    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 11
    .line 12
    .line 13
    throw p1
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

.method public bridge synthetic k0(J)Lcc/f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcc/e;->B0(J)Lcc/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
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

.method public l0(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    const-string v0, "charset"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v0, p1, v0

    .line 9
    .line 10
    if-ltz v0, :cond_0

    .line 11
    .line 12
    const v1, 0x7fffffff

    .line 13
    .line 14
    .line 15
    int-to-long v1, v1

    .line 16
    cmp-long v1, p1, v1

    .line 17
    .line 18
    if-gtz v1, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    :goto_0
    if-eqz v1, :cond_6

    .line 24
    .line 25
    iget-wide v1, p0, Lcc/e;->b:J

    .line 26
    .line 27
    cmp-long v1, v1, p1

    .line 28
    .line 29
    if-ltz v1, :cond_5

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    const-string p1, ""

    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_1
    iget-object v0, p0, Lcc/e;->a:Lcc/v;

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 41
    .line 42
    .line 43
    :cond_2
    iget v1, v0, Lcc/v;->b:I

    .line 44
    .line 45
    int-to-long v2, v1

    .line 46
    add-long/2addr v2, p1

    .line 47
    iget v4, v0, Lcc/v;->c:I

    .line 48
    .line 49
    int-to-long v4, v4

    .line 50
    cmp-long v2, v2, v4

    .line 51
    .line 52
    if-lez v2, :cond_3

    .line 53
    .line 54
    invoke-virtual {p0, p1, p2}, Lcc/e;->e0(J)[B

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    new-instance p2, Ljava/lang/String;

    .line 59
    .line 60
    invoke-direct {p2, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 61
    .line 62
    .line 63
    return-object p2

    .line 64
    :cond_3
    iget-object v2, v0, Lcc/v;->a:[B

    .line 65
    .line 66
    long-to-int v3, p1

    .line 67
    new-instance v4, Ljava/lang/String;

    .line 68
    .line 69
    invoke-direct {v4, v2, v1, v3, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 70
    .line 71
    .line 72
    iget p3, v0, Lcc/v;->b:I

    .line 73
    .line 74
    add-int/2addr p3, v3

    .line 75
    iput p3, v0, Lcc/v;->b:I

    .line 76
    .line 77
    iget-wide v1, p0, Lcc/e;->b:J

    .line 78
    .line 79
    sub-long/2addr v1, p1

    .line 80
    iput-wide v1, p0, Lcc/e;->b:J

    .line 81
    .line 82
    iget p1, v0, Lcc/v;->c:I

    .line 83
    .line 84
    if-ne p3, p1, :cond_4

    .line 85
    .line 86
    invoke-virtual {v0}, Lcc/v;->b()Lcc/v;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iput-object p1, p0, Lcc/e;->a:Lcc/v;

    .line 91
    .line 92
    invoke-static {v0}, Lcc/x;->b(Lcc/v;)V

    .line 93
    .line 94
    .line 95
    :cond_4
    return-object v4

    .line 96
    :cond_5
    new-instance p1, Ljava/io/EOFException;

    .line 97
    .line 98
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 99
    .line 100
    .line 101
    throw p1

    .line 102
    :cond_6
    new-instance p3, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v0, "byteCount: "

    .line 108
    .line 109
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p2
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
.end method

.method public n(Lcc/e;J)V
    .locals 8

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-eq p1, p0, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v1, v0

    .line 12
    :goto_0
    if-eqz v1, :cond_f

    .line 13
    .line 14
    invoke-virtual {p1}, Lcc/e;->size()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    const-wide/16 v4, 0x0

    .line 19
    .line 20
    move-wide v6, p2

    .line 21
    invoke-static/range {v2 .. v7}, Lcc/c;->b(JJJ)V

    .line 22
    .line 23
    .line 24
    :goto_1
    const-wide/16 v1, 0x0

    .line 25
    .line 26
    cmp-long v1, p2, v1

    .line 27
    .line 28
    if-lez v1, :cond_e

    .line 29
    .line 30
    iget-object v1, p1, Lcc/e;->a:Lcc/v;

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget v1, v1, Lcc/v;->c:I

    .line 38
    .line 39
    iget-object v2, p1, Lcc/e;->a:Lcc/v;

    .line 40
    .line 41
    if-nez v2, :cond_2

    .line 42
    .line 43
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 44
    .line 45
    .line 46
    :cond_2
    iget v2, v2, Lcc/v;->b:I

    .line 47
    .line 48
    sub-int/2addr v1, v2

    .line 49
    int-to-long v1, v1

    .line 50
    cmp-long v1, p2, v1

    .line 51
    .line 52
    if-gez v1, :cond_9

    .line 53
    .line 54
    iget-object v1, p0, Lcc/e;->a:Lcc/v;

    .line 55
    .line 56
    if-eqz v1, :cond_4

    .line 57
    .line 58
    if-nez v1, :cond_3

    .line 59
    .line 60
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 61
    .line 62
    .line 63
    :cond_3
    iget-object v1, v1, Lcc/v;->g:Lcc/v;

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_4
    const/4 v1, 0x0

    .line 67
    :goto_2
    if-eqz v1, :cond_7

    .line 68
    .line 69
    iget-boolean v2, v1, Lcc/v;->e:Z

    .line 70
    .line 71
    if-eqz v2, :cond_7

    .line 72
    .line 73
    iget v2, v1, Lcc/v;->c:I

    .line 74
    .line 75
    int-to-long v2, v2

    .line 76
    add-long/2addr v2, p2

    .line 77
    iget-boolean v4, v1, Lcc/v;->d:Z

    .line 78
    .line 79
    if-eqz v4, :cond_5

    .line 80
    .line 81
    move v4, v0

    .line 82
    goto :goto_3

    .line 83
    :cond_5
    iget v4, v1, Lcc/v;->b:I

    .line 84
    .line 85
    :goto_3
    int-to-long v4, v4

    .line 86
    sub-long/2addr v2, v4

    .line 87
    const/16 v4, 0x2000

    .line 88
    .line 89
    int-to-long v4, v4

    .line 90
    cmp-long v2, v2, v4

    .line 91
    .line 92
    if-gtz v2, :cond_7

    .line 93
    .line 94
    iget-object v0, p1, Lcc/e;->a:Lcc/v;

    .line 95
    .line 96
    if-nez v0, :cond_6

    .line 97
    .line 98
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 99
    .line 100
    .line 101
    :cond_6
    long-to-int v2, p2

    .line 102
    invoke-virtual {v0, v1, v2}, Lcc/v;->f(Lcc/v;I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Lcc/e;->size()J

    .line 106
    .line 107
    .line 108
    move-result-wide v0

    .line 109
    sub-long/2addr v0, p2

    .line 110
    invoke-virtual {p1, v0, v1}, Lcc/e;->r0(J)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 114
    .line 115
    .line 116
    move-result-wide v0

    .line 117
    add-long/2addr v0, p2

    .line 118
    invoke-virtual {p0, v0, v1}, Lcc/e;->r0(J)V

    .line 119
    .line 120
    .line 121
    goto :goto_5

    .line 122
    :cond_7
    iget-object v1, p1, Lcc/e;->a:Lcc/v;

    .line 123
    .line 124
    if-nez v1, :cond_8

    .line 125
    .line 126
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 127
    .line 128
    .line 129
    :cond_8
    long-to-int v2, p2

    .line 130
    invoke-virtual {v1, v2}, Lcc/v;->e(I)Lcc/v;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    iput-object v1, p1, Lcc/e;->a:Lcc/v;

    .line 135
    .line 136
    :cond_9
    iget-object v1, p1, Lcc/e;->a:Lcc/v;

    .line 137
    .line 138
    if-nez v1, :cond_a

    .line 139
    .line 140
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 141
    .line 142
    .line 143
    :cond_a
    iget v2, v1, Lcc/v;->c:I

    .line 144
    .line 145
    iget v3, v1, Lcc/v;->b:I

    .line 146
    .line 147
    sub-int/2addr v2, v3

    .line 148
    int-to-long v2, v2

    .line 149
    invoke-virtual {v1}, Lcc/v;->b()Lcc/v;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    iput-object v4, p1, Lcc/e;->a:Lcc/v;

    .line 154
    .line 155
    iget-object v4, p0, Lcc/e;->a:Lcc/v;

    .line 156
    .line 157
    if-nez v4, :cond_b

    .line 158
    .line 159
    iput-object v1, p0, Lcc/e;->a:Lcc/v;

    .line 160
    .line 161
    iput-object v1, v1, Lcc/v;->g:Lcc/v;

    .line 162
    .line 163
    iput-object v1, v1, Lcc/v;->f:Lcc/v;

    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_b
    if-nez v4, :cond_c

    .line 167
    .line 168
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 169
    .line 170
    .line 171
    :cond_c
    iget-object v4, v4, Lcc/v;->g:Lcc/v;

    .line 172
    .line 173
    if-nez v4, :cond_d

    .line 174
    .line 175
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 176
    .line 177
    .line 178
    :cond_d
    invoke-virtual {v4, v1}, Lcc/v;->c(Lcc/v;)Lcc/v;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {v1}, Lcc/v;->a()V

    .line 183
    .line 184
    .line 185
    :goto_4
    invoke-virtual {p1}, Lcc/e;->size()J

    .line 186
    .line 187
    .line 188
    move-result-wide v4

    .line 189
    sub-long/2addr v4, v2

    .line 190
    invoke-virtual {p1, v4, v5}, Lcc/e;->r0(J)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 194
    .line 195
    .line 196
    move-result-wide v4

    .line 197
    add-long/2addr v4, v2

    .line 198
    invoke-virtual {p0, v4, v5}, Lcc/e;->r0(J)V

    .line 199
    .line 200
    .line 201
    sub-long/2addr p2, v2

    .line 202
    goto/16 :goto_1

    .line 203
    .line 204
    :cond_e
    :goto_5
    return-void

    .line 205
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 206
    .line 207
    const-string p2, "source == this"

    .line 208
    .line 209
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    throw p1
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
.end method

.method public n0()J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-eqz v0, :cond_a

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    move v1, v0

    .line 13
    move-wide v4, v2

    .line 14
    :cond_0
    iget-object v6, p0, Lcc/e;->a:Lcc/v;

    .line 15
    .line 16
    if-nez v6, :cond_1

    .line 17
    .line 18
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object v7, v6, Lcc/v;->a:[B

    .line 22
    .line 23
    iget v8, v6, Lcc/v;->b:I

    .line 24
    .line 25
    iget v9, v6, Lcc/v;->c:I

    .line 26
    .line 27
    :goto_0
    if-ge v8, v9, :cond_7

    .line 28
    .line 29
    aget-byte v10, v7, v8

    .line 30
    .line 31
    const/16 v11, 0x30

    .line 32
    .line 33
    int-to-byte v11, v11

    .line 34
    if-lt v10, v11, :cond_2

    .line 35
    .line 36
    const/16 v12, 0x39

    .line 37
    .line 38
    int-to-byte v12, v12

    .line 39
    if-gt v10, v12, :cond_2

    .line 40
    .line 41
    sub-int v11, v10, v11

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    const/16 v11, 0x61

    .line 45
    .line 46
    int-to-byte v11, v11

    .line 47
    if-lt v10, v11, :cond_3

    .line 48
    .line 49
    const/16 v12, 0x66

    .line 50
    .line 51
    int-to-byte v12, v12

    .line 52
    if-gt v10, v12, :cond_3

    .line 53
    .line 54
    :goto_1
    sub-int v11, v10, v11

    .line 55
    .line 56
    add-int/lit8 v11, v11, 0xa

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    const/16 v11, 0x41

    .line 60
    .line 61
    int-to-byte v11, v11

    .line 62
    if-lt v10, v11, :cond_5

    .line 63
    .line 64
    const/16 v12, 0x46

    .line 65
    .line 66
    int-to-byte v12, v12

    .line 67
    if-gt v10, v12, :cond_5

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :goto_2
    const-wide/high16 v12, -0x1000000000000000L    # -3.105036184601418E231

    .line 71
    .line 72
    and-long/2addr v12, v4

    .line 73
    cmp-long v12, v12, v2

    .line 74
    .line 75
    if-nez v12, :cond_4

    .line 76
    .line 77
    const/4 v10, 0x4

    .line 78
    shl-long/2addr v4, v10

    .line 79
    int-to-long v10, v11

    .line 80
    or-long/2addr v4, v10

    .line 81
    add-int/lit8 v8, v8, 0x1

    .line 82
    .line 83
    add-int/lit8 v0, v0, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_4
    new-instance v0, Lcc/e;

    .line 87
    .line 88
    invoke-direct {v0}, Lcc/e;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v4, v5}, Lcc/e;->C0(J)Lcc/e;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0, v10}, Lcc/e;->A0(I)Lcc/e;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    new-instance v1, Ljava/lang/NumberFormatException;

    .line 100
    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string v3, "Number too large: "

    .line 107
    .line 108
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Lcc/e;->p0()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw v1

    .line 126
    :cond_5
    if-eqz v0, :cond_6

    .line 127
    .line 128
    const/4 v1, 0x1

    .line 129
    goto :goto_3

    .line 130
    :cond_6
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 131
    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    const-string v2, "Expected leading [0-9a-fA-F] character but was 0x"

    .line 138
    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-static {v10}, Lcc/c;->e(B)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw v0

    .line 157
    :cond_7
    :goto_3
    if-ne v8, v9, :cond_8

    .line 158
    .line 159
    invoke-virtual {v6}, Lcc/v;->b()Lcc/v;

    .line 160
    .line 161
    .line 162
    move-result-object v7

    .line 163
    iput-object v7, p0, Lcc/e;->a:Lcc/v;

    .line 164
    .line 165
    invoke-static {v6}, Lcc/x;->b(Lcc/v;)V

    .line 166
    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_8
    iput v8, v6, Lcc/v;->b:I

    .line 170
    .line 171
    :goto_4
    if-nez v1, :cond_9

    .line 172
    .line 173
    iget-object v6, p0, Lcc/e;->a:Lcc/v;

    .line 174
    .line 175
    if-nez v6, :cond_0

    .line 176
    .line 177
    :cond_9
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 178
    .line 179
    .line 180
    move-result-wide v1

    .line 181
    int-to-long v6, v0

    .line 182
    sub-long/2addr v1, v6

    .line 183
    invoke-virtual {p0, v1, v2}, Lcc/e;->r0(J)V

    .line 184
    .line 185
    .line 186
    return-wide v4

    .line 187
    :cond_a
    new-instance v0, Ljava/io/EOFException;

    .line 188
    .line 189
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 190
    .line 191
    .line 192
    throw v0
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
.end method

.method public o0()Ljava/io/InputStream;
    .locals 1

    .line 1
    new-instance v0, Lcc/e$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcc/e$a;-><init>(Lcc/e;)V

    .line 4
    .line 5
    .line 6
    return-object v0
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

.method public p0()Ljava/lang/String;
    .locals 3

    .line 1
    iget-wide v0, p0, Lcc/e;->b:J

    .line 2
    .line 3
    sget-object v2, Lkotlin/text/d;->b:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lcc/e;->l0(JLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public peek()Lcc/g;
    .locals 1

    .line 1
    new-instance v0, Lcc/s;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcc/s;-><init>(Lcc/g;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcc/n;->b(Lcc/a0;)Lcc/g;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
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

.method public q0(J)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    sget-object v0, Lkotlin/text/d;->b:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcc/e;->l0(JLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
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

.method public final r0(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcc/e;->b:J

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

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcc/e;->a:Lcc/v;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    iget v2, v0, Lcc/v;->c:I

    iget v3, v0, Lcc/v;->b:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3
    iget-object v2, v0, Lcc/v;->a:[B

    iget v3, v0, Lcc/v;->b:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 4
    iget p1, v0, Lcc/v;->b:I

    add-int/2addr p1, v1

    iput p1, v0, Lcc/v;->b:I

    .line 5
    iget-wide v2, p0, Lcc/e;->b:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcc/e;->b:J

    .line 6
    iget v2, v0, Lcc/v;->c:I

    if-ne p1, v2, :cond_0

    .line 7
    invoke-virtual {v0}, Lcc/v;->b()Lcc/v;

    move-result-object p1

    iput-object p1, p0, Lcc/e;->a:Lcc/v;

    .line 8
    invoke-static {v0}, Lcc/x;->b(Lcc/v;)V

    :cond_0
    return v1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public read([BII)I
    .locals 7

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lcc/c;->b(JJJ)V

    .line 10
    iget-object v0, p0, Lcc/e;->a:Lcc/v;

    if-eqz v0, :cond_0

    .line 11
    iget v1, v0, Lcc/v;->c:I

    iget v2, v0, Lcc/v;->b:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 12
    iget-object v1, v0, Lcc/v;->a:[B

    .line 13
    iget v2, v0, Lcc/v;->b:I

    add-int v3, v2, p3

    .line 14
    invoke-static {v1, p1, p2, v2, v3}, Lkotlin/collections/j;->d([B[BIII)[B

    .line 15
    iget p1, v0, Lcc/v;->b:I

    add-int/2addr p1, p3

    iput p1, v0, Lcc/v;->b:I

    .line 16
    invoke-virtual {p0}, Lcc/e;->size()J

    move-result-wide p1

    int-to-long v1, p3

    sub-long/2addr p1, v1

    invoke-virtual {p0, p1, p2}, Lcc/e;->r0(J)V

    .line 17
    iget p1, v0, Lcc/v;->b:I

    iget p2, v0, Lcc/v;->c:I

    if-ne p1, p2, :cond_1

    .line 18
    invoke-virtual {v0}, Lcc/v;->b()Lcc/v;

    move-result-object p1

    iput-object p1, p0, Lcc/e;->a:Lcc/v;

    .line 19
    invoke-static {v0}, Lcc/x;->b(Lcc/v;)V

    goto :goto_0

    :cond_0
    const/4 p3, -0x1

    :cond_1
    :goto_0
    return p3
.end method

.method public readByte()B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lcc/e;->a:Lcc/v;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget v1, v0, Lcc/v;->b:I

    .line 19
    .line 20
    iget v2, v0, Lcc/v;->c:I

    .line 21
    .line 22
    iget-object v3, v0, Lcc/v;->a:[B

    .line 23
    .line 24
    add-int/lit8 v4, v1, 0x1

    .line 25
    .line 26
    aget-byte v1, v3, v1

    .line 27
    .line 28
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 29
    .line 30
    .line 31
    move-result-wide v5

    .line 32
    const-wide/16 v7, 0x1

    .line 33
    .line 34
    sub-long/2addr v5, v7

    .line 35
    invoke-virtual {p0, v5, v6}, Lcc/e;->r0(J)V

    .line 36
    .line 37
    .line 38
    if-ne v4, v2, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0}, Lcc/v;->b()Lcc/v;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iput-object v2, p0, Lcc/e;->a:Lcc/v;

    .line 45
    .line 46
    invoke-static {v0}, Lcc/x;->b(Lcc/v;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iput v4, v0, Lcc/v;->b:I

    .line 51
    .line 52
    :goto_0
    return v1

    .line 53
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 56
    .line 57
    .line 58
    throw v0
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
.end method

.method public readInt()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x4

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-ltz v0, :cond_3

    .line 10
    .line 11
    iget-object v0, p0, Lcc/e;->a:Lcc/v;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget v1, v0, Lcc/v;->b:I

    .line 19
    .line 20
    iget v4, v0, Lcc/v;->c:I

    .line 21
    .line 22
    sub-int v5, v4, v1

    .line 23
    .line 24
    int-to-long v5, v5

    .line 25
    cmp-long v5, v5, v2

    .line 26
    .line 27
    if-gez v5, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Lcc/e;->readByte()B

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    and-int/lit16 v0, v0, 0xff

    .line 34
    .line 35
    shl-int/lit8 v0, v0, 0x18

    .line 36
    .line 37
    invoke-virtual {p0}, Lcc/e;->readByte()B

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    and-int/lit16 v1, v1, 0xff

    .line 42
    .line 43
    shl-int/lit8 v1, v1, 0x10

    .line 44
    .line 45
    or-int/2addr v0, v1

    .line 46
    invoke-virtual {p0}, Lcc/e;->readByte()B

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    and-int/lit16 v1, v1, 0xff

    .line 51
    .line 52
    shl-int/lit8 v1, v1, 0x8

    .line 53
    .line 54
    or-int/2addr v0, v1

    .line 55
    invoke-virtual {p0}, Lcc/e;->readByte()B

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    and-int/lit16 v1, v1, 0xff

    .line 60
    .line 61
    or-int/2addr v0, v1

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    iget-object v5, v0, Lcc/v;->a:[B

    .line 64
    .line 65
    add-int/lit8 v6, v1, 0x1

    .line 66
    .line 67
    aget-byte v1, v5, v1

    .line 68
    .line 69
    and-int/lit16 v1, v1, 0xff

    .line 70
    .line 71
    shl-int/lit8 v1, v1, 0x18

    .line 72
    .line 73
    add-int/lit8 v7, v6, 0x1

    .line 74
    .line 75
    aget-byte v6, v5, v6

    .line 76
    .line 77
    and-int/lit16 v6, v6, 0xff

    .line 78
    .line 79
    shl-int/lit8 v6, v6, 0x10

    .line 80
    .line 81
    or-int/2addr v1, v6

    .line 82
    add-int/lit8 v6, v7, 0x1

    .line 83
    .line 84
    aget-byte v7, v5, v7

    .line 85
    .line 86
    and-int/lit16 v7, v7, 0xff

    .line 87
    .line 88
    shl-int/lit8 v7, v7, 0x8

    .line 89
    .line 90
    or-int/2addr v1, v7

    .line 91
    add-int/lit8 v7, v6, 0x1

    .line 92
    .line 93
    aget-byte v5, v5, v6

    .line 94
    .line 95
    and-int/lit16 v5, v5, 0xff

    .line 96
    .line 97
    or-int/2addr v1, v5

    .line 98
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 99
    .line 100
    .line 101
    move-result-wide v5

    .line 102
    sub-long/2addr v5, v2

    .line 103
    invoke-virtual {p0, v5, v6}, Lcc/e;->r0(J)V

    .line 104
    .line 105
    .line 106
    if-ne v7, v4, :cond_2

    .line 107
    .line 108
    invoke-virtual {v0}, Lcc/v;->b()Lcc/v;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    iput-object v2, p0, Lcc/e;->a:Lcc/v;

    .line 113
    .line 114
    invoke-static {v0}, Lcc/x;->b(Lcc/v;)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_2
    iput v7, v0, Lcc/v;->b:I

    .line 119
    .line 120
    :goto_0
    move v0, v1

    .line 121
    :goto_1
    return v0

    .line 122
    :cond_3
    new-instance v0, Ljava/io/EOFException;

    .line 123
    .line 124
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 125
    .line 126
    .line 127
    throw v0
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
.end method

.method public readShort()S
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x2

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-ltz v0, :cond_3

    .line 10
    .line 11
    iget-object v0, p0, Lcc/e;->a:Lcc/v;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget v1, v0, Lcc/v;->b:I

    .line 19
    .line 20
    iget v4, v0, Lcc/v;->c:I

    .line 21
    .line 22
    sub-int v5, v4, v1

    .line 23
    .line 24
    const/4 v6, 0x2

    .line 25
    if-ge v5, v6, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Lcc/e;->readByte()B

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    and-int/lit16 v0, v0, 0xff

    .line 32
    .line 33
    shl-int/lit8 v0, v0, 0x8

    .line 34
    .line 35
    invoke-virtual {p0}, Lcc/e;->readByte()B

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    and-int/lit16 v1, v1, 0xff

    .line 40
    .line 41
    or-int/2addr v0, v1

    .line 42
    int-to-short v0, v0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    iget-object v5, v0, Lcc/v;->a:[B

    .line 45
    .line 46
    add-int/lit8 v6, v1, 0x1

    .line 47
    .line 48
    aget-byte v1, v5, v1

    .line 49
    .line 50
    and-int/lit16 v1, v1, 0xff

    .line 51
    .line 52
    shl-int/lit8 v1, v1, 0x8

    .line 53
    .line 54
    add-int/lit8 v7, v6, 0x1

    .line 55
    .line 56
    aget-byte v5, v5, v6

    .line 57
    .line 58
    and-int/lit16 v5, v5, 0xff

    .line 59
    .line 60
    or-int/2addr v1, v5

    .line 61
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 62
    .line 63
    .line 64
    move-result-wide v5

    .line 65
    sub-long/2addr v5, v2

    .line 66
    invoke-virtual {p0, v5, v6}, Lcc/e;->r0(J)V

    .line 67
    .line 68
    .line 69
    if-ne v7, v4, :cond_2

    .line 70
    .line 71
    invoke-virtual {v0}, Lcc/v;->b()Lcc/v;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    iput-object v2, p0, Lcc/e;->a:Lcc/v;

    .line 76
    .line 77
    invoke-static {v0}, Lcc/x;->b(Lcc/v;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    iput v7, v0, Lcc/v;->b:I

    .line 82
    .line 83
    :goto_0
    int-to-short v0, v1

    .line 84
    :goto_1
    return v0

    .line 85
    :cond_3
    new-instance v0, Ljava/io/EOFException;

    .line 86
    .line 87
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 88
    .line 89
    .line 90
    throw v0
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
.end method

.method public final s0()Lokio/ByteString;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const v2, 0x7fffffff

    .line 6
    .line 7
    .line 8
    int-to-long v2, v2

    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-gtz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    long-to-int v0, v0

    .line 23
    invoke-virtual {p0, v0}, Lcc/e;->t0(I)Lokio/ByteString;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0

    .line 28
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v1, "size > Int.MAX_VALUE: "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 39
    .line 40
    .line 41
    move-result-wide v1

    .line 42
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v1
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
.end method

.method public final size()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcc/e;->b:J

    .line 2
    .line 3
    return-wide v0
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

.method public skip(J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-lez v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcc/e;->a:Lcc/v;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget v1, v0, Lcc/v;->c:I

    .line 12
    .line 13
    iget v2, v0, Lcc/v;->b:I

    .line 14
    .line 15
    sub-int/2addr v1, v2

    .line 16
    int-to-long v1, v1

    .line 17
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    long-to-int v1, v1

    .line 22
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    int-to-long v4, v1

    .line 27
    sub-long/2addr v2, v4

    .line 28
    invoke-virtual {p0, v2, v3}, Lcc/e;->r0(J)V

    .line 29
    .line 30
    .line 31
    sub-long/2addr p1, v4

    .line 32
    iget v2, v0, Lcc/v;->b:I

    .line 33
    .line 34
    add-int/2addr v2, v1

    .line 35
    iput v2, v0, Lcc/v;->b:I

    .line 36
    .line 37
    iget v1, v0, Lcc/v;->c:I

    .line 38
    .line 39
    if-ne v2, v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0}, Lcc/v;->b()Lcc/v;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iput-object v1, p0, Lcc/e;->a:Lcc/v;

    .line 46
    .line 47
    invoke-static {v0}, Lcc/x;->b(Lcc/v;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    .line 52
    .line 53
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :cond_2
    return-void
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

.method public t()[B
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0, v0, v1}, Lcc/e;->e0(J)[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public final t0(I)Lokio/ByteString;
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    int-to-long v4, p1

    .line 13
    invoke-static/range {v0 .. v5}, Lcc/c;->b(JJJ)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcc/e;->a:Lcc/v;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    move v2, v1

    .line 20
    move v3, v2

    .line 21
    :goto_0
    if-ge v2, p1, :cond_3

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget v4, v0, Lcc/v;->c:I

    .line 29
    .line 30
    iget v5, v0, Lcc/v;->b:I

    .line 31
    .line 32
    if-eq v4, v5, :cond_2

    .line 33
    .line 34
    sub-int/2addr v4, v5

    .line 35
    add-int/2addr v2, v4

    .line 36
    add-int/lit8 v3, v3, 0x1

    .line 37
    .line 38
    iget-object v0, v0, Lcc/v;->f:Lcc/v;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    .line 42
    .line 43
    const-string v0, "s.limit == s.pos"

    .line 44
    .line 45
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    throw p1

    .line 49
    :cond_3
    new-array v0, v3, [[B

    .line 50
    .line 51
    mul-int/lit8 v2, v3, 0x2

    .line 52
    .line 53
    new-array v2, v2, [I

    .line 54
    .line 55
    iget-object v4, p0, Lcc/e;->a:Lcc/v;

    .line 56
    .line 57
    move-object v5, v4

    .line 58
    move v4, v1

    .line 59
    :goto_1
    if-ge v1, p1, :cond_5

    .line 60
    .line 61
    if-nez v5, :cond_4

    .line 62
    .line 63
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 64
    .line 65
    .line 66
    :cond_4
    iget-object v6, v5, Lcc/v;->a:[B

    .line 67
    .line 68
    aput-object v6, v0, v4

    .line 69
    .line 70
    iget v6, v5, Lcc/v;->c:I

    .line 71
    .line 72
    iget v7, v5, Lcc/v;->b:I

    .line 73
    .line 74
    sub-int/2addr v6, v7

    .line 75
    add-int/2addr v1, v6

    .line 76
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    aput v6, v2, v4

    .line 81
    .line 82
    add-int v6, v4, v3

    .line 83
    .line 84
    iget v7, v5, Lcc/v;->b:I

    .line 85
    .line 86
    aput v7, v2, v6

    .line 87
    .line 88
    const/4 v6, 0x1

    .line 89
    iput-boolean v6, v5, Lcc/v;->d:Z

    .line 90
    .line 91
    add-int/2addr v4, v6

    .line 92
    iget-object v5, v5, Lcc/v;->f:Lcc/v;

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_5
    new-instance p1, Lokio/SegmentedByteString;

    .line 96
    .line 97
    invoke-direct {p1, v0, v2}, Lokio/SegmentedByteString;-><init>([[B[I)V

    .line 98
    .line 99
    .line 100
    :goto_2
    return-object p1
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

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcc/e;->s0()Lokio/ByteString;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lokio/ByteString;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public u(Lcc/e;J)J
    .locals 4

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v2, p2, v0

    .line 9
    .line 10
    if-ltz v2, :cond_0

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    :goto_0
    if-eqz v2, :cond_3

    .line 16
    .line 17
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    cmp-long v0, v2, v0

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const-wide/16 p1, -0x1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    cmp-long v0, p2, v0

    .line 33
    .line 34
    if-lez v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 37
    .line 38
    .line 39
    move-result-wide p2

    .line 40
    :cond_2
    invoke-virtual {p1, p0, p2, p3}, Lcc/e;->n(Lcc/e;J)V

    .line 41
    .line 42
    .line 43
    move-wide p1, p2

    .line 44
    :goto_1
    return-wide p1

    .line 45
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v0, "byteCount < 0: "

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p2
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
.end method

.method public final u0(I)Lcc/v;
    .locals 3

    .line 1
    const/16 v0, 0x2000

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-lt p1, v1, :cond_0

    .line 5
    .line 6
    if-gt p1, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-eqz v1, :cond_6

    .line 11
    .line 12
    iget-object v1, p0, Lcc/e;->a:Lcc/v;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcc/x;->c()Lcc/v;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcc/e;->a:Lcc/v;

    .line 21
    .line 22
    iput-object p1, p1, Lcc/v;->g:Lcc/v;

    .line 23
    .line 24
    iput-object p1, p1, Lcc/v;->f:Lcc/v;

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_1
    if-nez v1, :cond_2

    .line 28
    .line 29
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 30
    .line 31
    .line 32
    :cond_2
    iget-object v1, v1, Lcc/v;->g:Lcc/v;

    .line 33
    .line 34
    if-nez v1, :cond_3

    .line 35
    .line 36
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 37
    .line 38
    .line 39
    :cond_3
    iget v2, v1, Lcc/v;->c:I

    .line 40
    .line 41
    add-int/2addr v2, p1

    .line 42
    if-gt v2, v0, :cond_5

    .line 43
    .line 44
    iget-boolean p1, v1, Lcc/v;->e:Z

    .line 45
    .line 46
    if-nez p1, :cond_4

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_4
    move-object p1, v1

    .line 50
    goto :goto_2

    .line 51
    :cond_5
    :goto_1
    invoke-static {}, Lcc/x;->c()Lcc/v;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {v1, p1}, Lcc/v;->c(Lcc/v;)Lcc/v;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    :goto_2
    return-object p1

    .line 60
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 61
    .line 62
    const-string v0, "unexpected capacity"

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p1
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

.method public v(Lokio/ByteString;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "bytes"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    invoke-virtual {p0, p1, v0, v1}, Lcc/e;->W(Lokio/ByteString;J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
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

.method public v0(Lcc/a0;J)Lcc/e;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :goto_0
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v0, p2, v0

    .line 9
    .line 10
    if-lez v0, :cond_1

    .line 11
    .line 12
    invoke-interface {p1, p0, p2, p3}, Lcc/a0;->u(Lcc/e;J)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    const-wide/16 v2, -0x1

    .line 17
    .line 18
    cmp-long v2, v0, v2

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    sub-long/2addr p2, v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    return-object p0
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

.method public w()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcc/e;->b:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
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

.method public w0(Lokio/ByteString;)Lcc/e;
    .locals 2

    .line 1
    const-string v0, "byteString"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1, p0, v1, v0}, Lokio/ByteString;->write$okio(Lcc/e;II)V

    .line 12
    .line 13
    .line 14
    return-object p0
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

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    move v1, v0

    :goto_0
    if-lez v1, :cond_0

    const/4 v2, 0x1

    .line 4
    invoke-virtual {p0, v2}, Lcc/e;->u0(I)Lcc/v;

    move-result-object v2

    .line 5
    iget v3, v2, Lcc/v;->c:I

    rsub-int v3, v3, 0x2000

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 6
    iget-object v4, v2, Lcc/v;->a:[B

    iget v5, v2, Lcc/v;->c:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v1, v3

    .line 7
    iget v4, v2, Lcc/v;->c:I

    add-int/2addr v4, v3

    iput v4, v2, Lcc/v;->c:I

    goto :goto_0

    .line 8
    :cond_0
    iget-wide v1, p0, Lcc/e;->b:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcc/e;->b:J

    return v0
.end method

.method public bridge synthetic write([B)Lcc/f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcc/e;->x0([B)Lcc/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic write([BII)Lcc/f;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcc/e;->y0([BII)Lcc/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeByte(I)Lcc/f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcc/e;->A0(I)Lcc/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
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

.method public bridge synthetic writeInt(I)Lcc/f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcc/e;->D0(I)Lcc/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
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

.method public bridge synthetic writeShort(I)Lcc/f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcc/e;->E0(I)Lcc/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
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

.method public final x()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v4, v0, v2

    .line 8
    .line 9
    if-nez v4, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v2, p0, Lcc/e;->a:Lcc/v;

    .line 13
    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object v2, v2, Lcc/v;->g:Lcc/v;

    .line 20
    .line 21
    if-nez v2, :cond_2

    .line 22
    .line 23
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 24
    .line 25
    .line 26
    :cond_2
    iget v3, v2, Lcc/v;->c:I

    .line 27
    .line 28
    const/16 v4, 0x2000

    .line 29
    .line 30
    if-ge v3, v4, :cond_3

    .line 31
    .line 32
    iget-boolean v4, v2, Lcc/v;->e:Z

    .line 33
    .line 34
    if-eqz v4, :cond_3

    .line 35
    .line 36
    iget v2, v2, Lcc/v;->b:I

    .line 37
    .line 38
    sub-int/2addr v3, v2

    .line 39
    int-to-long v2, v3

    .line 40
    sub-long/2addr v0, v2

    .line 41
    :cond_3
    move-wide v2, v0

    .line 42
    :goto_0
    return-wide v2
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
.end method

.method public x0([B)Lcc/e;
    .locals 2

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    array-length v0, p1

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, p1, v1, v0}, Lcc/e;->y0([BII)Lcc/e;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
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

.method public y(Lokio/ByteString;)J
    .locals 2

    .line 1
    const-string v0, "targetBytes"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    invoke-virtual {p0, p1, v0, v1}, Lcc/e;->Z(Lokio/ByteString;J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
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

.method public y0([BII)Lcc/e;
    .locals 9

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    array-length v0, p1

    .line 7
    int-to-long v1, v0

    .line 8
    int-to-long v3, p2

    .line 9
    int-to-long v7, p3

    .line 10
    move-wide v5, v7

    .line 11
    invoke-static/range {v1 .. v6}, Lcc/c;->b(JJJ)V

    .line 12
    .line 13
    .line 14
    add-int/2addr p3, p2

    .line 15
    :goto_0
    if-ge p2, p3, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, v0}, Lcc/e;->u0(I)Lcc/v;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sub-int v1, p3, p2

    .line 23
    .line 24
    iget v2, v0, Lcc/v;->c:I

    .line 25
    .line 26
    rsub-int v2, v2, 0x2000

    .line 27
    .line 28
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    iget-object v2, v0, Lcc/v;->a:[B

    .line 33
    .line 34
    iget v3, v0, Lcc/v;->c:I

    .line 35
    .line 36
    add-int v4, p2, v1

    .line 37
    .line 38
    invoke-static {p1, v2, v3, p2, v4}, Lkotlin/collections/j;->d([B[BIII)[B

    .line 39
    .line 40
    .line 41
    iget p2, v0, Lcc/v;->c:I

    .line 42
    .line 43
    add-int/2addr p2, v1

    .line 44
    iput p2, v0, Lcc/v;->c:I

    .line 45
    .line 46
    move p2, v4

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 49
    .line 50
    .line 51
    move-result-wide p1

    .line 52
    add-long/2addr p1, v7

    .line 53
    invoke-virtual {p0, p1, p2}, Lcc/e;->r0(J)V

    .line 54
    .line 55
    .line 56
    return-object p0
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
.end method

.method public final z()Lcc/e;
    .locals 6

    .line 1
    new-instance v0, Lcc/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lcc/e;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    const-wide/16 v3, 0x0

    .line 11
    .line 12
    cmp-long v1, v1, v3

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-object v1, p0, Lcc/e;->a:Lcc/v;

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {v1}, Lcc/v;->d()Lcc/v;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iput-object v2, v0, Lcc/e;->a:Lcc/v;

    .line 29
    .line 30
    iput-object v2, v2, Lcc/v;->g:Lcc/v;

    .line 31
    .line 32
    iput-object v2, v2, Lcc/v;->f:Lcc/v;

    .line 33
    .line 34
    iget-object v3, v1, Lcc/v;->f:Lcc/v;

    .line 35
    .line 36
    :goto_0
    if-eq v3, v1, :cond_4

    .line 37
    .line 38
    iget-object v4, v2, Lcc/v;->g:Lcc/v;

    .line 39
    .line 40
    if-nez v4, :cond_2

    .line 41
    .line 42
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 43
    .line 44
    .line 45
    :cond_2
    if-nez v3, :cond_3

    .line 46
    .line 47
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 48
    .line 49
    .line 50
    :cond_3
    invoke-virtual {v3}, Lcc/v;->d()Lcc/v;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {v4, v5}, Lcc/v;->c(Lcc/v;)Lcc/v;

    .line 55
    .line 56
    .line 57
    iget-object v3, v3, Lcc/v;->f:Lcc/v;

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    invoke-virtual {p0}, Lcc/e;->size()J

    .line 61
    .line 62
    .line 63
    move-result-wide v1

    .line 64
    invoke-virtual {v0, v1, v2}, Lcc/e;->r0(J)V

    .line 65
    .line 66
    .line 67
    :goto_1
    return-object v0
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
.end method

.method public z0(Lcc/a0;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    :goto_0
    const/16 v2, 0x2000

    .line 9
    .line 10
    int-to-long v2, v2

    .line 11
    invoke-interface {p1, p0, v2, v3}, Lcc/a0;->u(Lcc/e;J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    const-wide/16 v4, -0x1

    .line 16
    .line 17
    cmp-long v4, v2, v4

    .line 18
    .line 19
    if-nez v4, :cond_0

    .line 20
    .line 21
    return-wide v0

    .line 22
    :cond_0
    add-long/2addr v0, v2

    .line 23
    goto :goto_0
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

.class public final Lxb/b;
.super Ljava/lang/Object;
.source "Hpack.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxb/b$a;,
        Lxb/b$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u0007\u0010B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0014\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002H\u0002J\u000e\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0003R\u001d\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR#\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0014"
    }
    d2 = {
        "Lxb/b;",
        "",
        "",
        "Lokio/ByteString;",
        "",
        "d",
        "name",
        "a",
        "",
        "Lxb/a;",
        "STATIC_HEADER_TABLE",
        "[Lxb/a;",
        "c",
        "()[Lxb/a;",
        "NAME_TO_FIRST_INDEX",
        "Ljava/util/Map;",
        "b",
        "()Ljava/util/Map;",
        "<init>",
        "()V",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field private static final a:[Lxb/a;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lokio/ByteString;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lxb/b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lxb/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lxb/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lxb/b;->c:Lxb/b;

    .line 7
    .line 8
    const/16 v1, 0x3d

    .line 9
    .line 10
    new-array v1, v1, [Lxb/a;

    .line 11
    .line 12
    new-instance v2, Lxb/a;

    .line 13
    .line 14
    sget-object v3, Lxb/a;->i:Lokio/ByteString;

    .line 15
    .line 16
    const-string v4, ""

    .line 17
    .line 18
    invoke-direct {v2, v3, v4}, Lxb/a;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    aput-object v2, v1, v3

    .line 23
    .line 24
    new-instance v2, Lxb/a;

    .line 25
    .line 26
    sget-object v3, Lxb/a;->f:Lokio/ByteString;

    .line 27
    .line 28
    const-string v5, "GET"

    .line 29
    .line 30
    invoke-direct {v2, v3, v5}, Lxb/a;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 v5, 0x1

    .line 34
    aput-object v2, v1, v5

    .line 35
    .line 36
    new-instance v2, Lxb/a;

    .line 37
    .line 38
    const-string v5, "POST"

    .line 39
    .line 40
    invoke-direct {v2, v3, v5}, Lxb/a;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 v3, 0x2

    .line 44
    aput-object v2, v1, v3

    .line 45
    .line 46
    new-instance v2, Lxb/a;

    .line 47
    .line 48
    sget-object v3, Lxb/a;->g:Lokio/ByteString;

    .line 49
    .line 50
    const-string v5, "/"

    .line 51
    .line 52
    invoke-direct {v2, v3, v5}, Lxb/a;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/4 v5, 0x3

    .line 56
    aput-object v2, v1, v5

    .line 57
    .line 58
    new-instance v2, Lxb/a;

    .line 59
    .line 60
    const-string v5, "/index.html"

    .line 61
    .line 62
    invoke-direct {v2, v3, v5}, Lxb/a;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const/4 v3, 0x4

    .line 66
    aput-object v2, v1, v3

    .line 67
    .line 68
    new-instance v2, Lxb/a;

    .line 69
    .line 70
    sget-object v3, Lxb/a;->h:Lokio/ByteString;

    .line 71
    .line 72
    const-string v5, "http"

    .line 73
    .line 74
    invoke-direct {v2, v3, v5}, Lxb/a;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const/4 v5, 0x5

    .line 78
    aput-object v2, v1, v5

    .line 79
    .line 80
    new-instance v2, Lxb/a;

    .line 81
    .line 82
    const-string v5, "https"

    .line 83
    .line 84
    invoke-direct {v2, v3, v5}, Lxb/a;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const/4 v3, 0x6

    .line 88
    aput-object v2, v1, v3

    .line 89
    .line 90
    new-instance v2, Lxb/a;

    .line 91
    .line 92
    sget-object v3, Lxb/a;->e:Lokio/ByteString;

    .line 93
    .line 94
    const-string v5, "200"

    .line 95
    .line 96
    invoke-direct {v2, v3, v5}, Lxb/a;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const/4 v5, 0x7

    .line 100
    aput-object v2, v1, v5

    .line 101
    .line 102
    new-instance v2, Lxb/a;

    .line 103
    .line 104
    const-string v5, "204"

    .line 105
    .line 106
    invoke-direct {v2, v3, v5}, Lxb/a;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const/16 v5, 0x8

    .line 110
    .line 111
    aput-object v2, v1, v5

    .line 112
    .line 113
    new-instance v2, Lxb/a;

    .line 114
    .line 115
    const-string v5, "206"

    .line 116
    .line 117
    invoke-direct {v2, v3, v5}, Lxb/a;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const/16 v5, 0x9

    .line 121
    .line 122
    aput-object v2, v1, v5

    .line 123
    .line 124
    new-instance v2, Lxb/a;

    .line 125
    .line 126
    const-string v5, "304"

    .line 127
    .line 128
    invoke-direct {v2, v3, v5}, Lxb/a;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const/16 v5, 0xa

    .line 132
    .line 133
    aput-object v2, v1, v5

    .line 134
    .line 135
    new-instance v2, Lxb/a;

    .line 136
    .line 137
    const-string v5, "400"

    .line 138
    .line 139
    invoke-direct {v2, v3, v5}, Lxb/a;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const/16 v5, 0xb

    .line 143
    .line 144
    aput-object v2, v1, v5

    .line 145
    .line 146
    new-instance v2, Lxb/a;

    .line 147
    .line 148
    const-string v5, "404"

    .line 149
    .line 150
    invoke-direct {v2, v3, v5}, Lxb/a;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    const/16 v5, 0xc

    .line 154
    .line 155
    aput-object v2, v1, v5

    .line 156
    .line 157
    new-instance v2, Lxb/a;

    .line 158
    .line 159
    const-string v5, "500"

    .line 160
    .line 161
    invoke-direct {v2, v3, v5}, Lxb/a;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    const/16 v3, 0xd

    .line 165
    .line 166
    aput-object v2, v1, v3

    .line 167
    .line 168
    new-instance v2, Lxb/a;

    .line 169
    .line 170
    const-string v3, "accept-charset"

    .line 171
    .line 172
    invoke-direct {v2, v3, v4}, Lxb/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    const/16 v3, 0xe

    .line 176
    .line 177
    aput-object v2, v1, v3

    .line 178
    .line 179
    new-instance v2, Lxb/a;

    .line 180
    .line 181
    const-string v3, "accept-encoding"

    .line 182
    .line 183
    const-string v5, "gzip, deflate"

    .line 184
    .line 185
    invoke-direct {v2, v3, v5}, Lxb/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    const/16 v3, 0xf

    .line 189
    .line 190
    aput-object v2, v1, v3

    .line 191
    .line 192
    new-instance v2, Lxb/a;

    .line 193
    .line 194
    const-string v3, "accept-language"

    .line 195
    .line 196
    invoke-direct {v2, v3, v4}, Lxb/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    const/16 v3, 0x10

    .line 200
    .line 201
    aput-object v2, v1, v3

    .line 202
    .line 203
    new-instance v2, Lxb/a;

    .line 204
    .line 205
    const-string v3, "accept-ranges"

    .line 206
    .line 207
    invoke-direct {v2, v3, v4}, Lxb/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    const/16 v3, 0x11

    .line 211
    .line 212
    aput-object v2, v1, v3

    .line 213
    .line 214
    new-instance v2, Lxb/a;

    .line 215
    .line 216
    const-string v3, "accept"

    .line 217
    .line 218
    invoke-direct {v2, v3, v4}, Lxb/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    const/16 v3, 0x12

    .line 222
    .line 223
    aput-object v2, v1, v3

    .line 224
    .line 225
    new-instance v2, Lxb/a;

    .line 226
    .line 227
    const-string v3, "access-control-allow-origin"

    .line 228
    .line 229
    invoke-direct {v2, v3, v4}, Lxb/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    const/16 v3, 0x13

    .line 233
    .line 234
    aput-object v2, v1, v3

    .line 235
    .line 236
    new-instance v2, Lxb/a;

    .line 237
    .line 238
    const-string v3, "age"

    .line 239
    .line 240
    invoke-direct {v2, v3, v4}, Lxb/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    const/16 v3, 0x14

    .line 244
    .line 245
    aput-object v2, v1, v3

    .line 246
    .line 247
    new-instance v2, Lxb/a;

    .line 248
    .line 249
    const-string v3, "allow"

    .line 250
    .line 251
    invoke-direct {v2, v3, v4}, Lxb/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    const/16 v3, 0x15

    .line 255
    .line 256
    aput-object v2, v1, v3

    .line 257
    .line 258
    new-instance v2, Lxb/a;

    .line 259
    .line 260
    const-string v3, "authorization"

    .line 261
    .line 262
    invoke-direct {v2, v3, v4}, Lxb/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    const/16 v3, 0x16

    .line 266
    .line 267
    aput-object v2, v1, v3

    .line 268
    .line 269
    new-instance v2, Lxb/a;

    .line 270
    .line 271
    const-string v3, "cache-control"

    .line 272
    .line 273
    invoke-direct {v2, v3, v4}, Lxb/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    const/16 v3, 0x17

    .line 277
    .line 278
    aput-object v2, v1, v3

    .line 279
    .line 280
    new-instance v2, Lxb/a;

    .line 281
    .line 282
    const-string v3, "content-disposition"

    .line 283
    .line 284
    invoke-direct {v2, v3, v4}, Lxb/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    const/16 v3, 0x18

    .line 288
    .line 289
    aput-object v2, v1, v3

    .line 290
    .line 291
    new-instance v2, Lxb/a;

    .line 292
    .line 293
    const-string v3, "content-encoding"

    .line 294
    .line 295
    invoke-direct {v2, v3, v4}, Lxb/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    const/16 v3, 0x19

    .line 299
    .line 300
    aput-object v2, v1, v3

    .line 301
    .line 302
    new-instance v2, Lxb/a;

    .line 303
    .line 304
    const-string v3, "content-language"

    .line 305
    .line 306
    invoke-direct {v2, v3, v4}, Lxb/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    const/16 v3, 0x1a

    .line 310
    .line 311
    aput-object v2, v1, v3

    .line 312
    .line 313
    new-instance v2, Lxb/a;

    .line 314
    .line 315
    const-string v3, "content-length"

    .line 316
    .line 317
    invoke-direct {v2, v3, v4}, Lxb/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    const/16 v3, 0x1b

    .line 321
    .line 322
    aput-object v2, v1, v3

    .line 323
    .line 324
    new-instance v2, Lxb/a;

    .line 325
    .line 326
    const-string v3, "content-location"

    .line 327
    .line 328
    invoke-direct {v2, v3, v4}, Lxb/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    const/16 v3, 0x1c

    .line 332
    .line 333
    aput-object v2, v1, v3

    .line 334
    .line 335
    new-instance v2, Lxb/a;

    .line 336
    .line 337
    const-string v3, "content-range"

    .line 338
    .line 339
    invoke-direct {v2, v3, v4}, Lxb/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    const/16 v3, 0x1d

    .line 343
    .line 344
    aput-object v2, v1, v3

    .line 345
    .line 346
    new-instance v2, Lxb/a;

    .line 347
    .line 348
    const-string v3, "content-type"

    .line 349
    .line 350
    invoke-direct {v2, v3, v4}, Lxb/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    const/16 v3, 0x1e

    .line 354
    .line 355
    aput-object v2, v1, v3

    .line 356
    .line 357
    new-instance v2, Lxb/a;

    .line 358
    .line 359
    const-string v3, "cookie"

    .line 360
    .line 361
    invoke-direct {v2, v3, v4}, Lxb/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    const/16 v3, 0x1f

    .line 365
    .line 366
    aput-object v2, v1, v3

    .line 367
    .line 368
    new-instance v2, Lxb/a;

    .line 369
    .line 370
    const-string v3, "date"

    .line 371
    .line 372
    invoke-direct {v2, v3, v4}, Lxb/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    const/16 v3, 0x20

    .line 376
    .line 377
    aput-object v2, v1, v3

    .line 378
    .line 379
    new-instance v2, Lxb/a;

    .line 380
    .line 381
    const-string v3, "etag"

    .line 382
    .line 383
    invoke-direct {v2, v3, v4}, Lxb/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    const/16 v3, 0x21

    .line 387
    .line 388
    aput-object v2, v1, v3

    .line 389
    .line 390
    new-instance v2, Lxb/a;

    .line 391
    .line 392
    const-string v3, "expect"

    .line 393
    .line 394
    invoke-direct {v2, v3, v4}, Lxb/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    const/16 v3, 0x22

    .line 398
    .line 399
    aput-object v2, v1, v3

    .line 400
    .line 401
    new-instance v2, Lxb/a;

    .line 402
    .line 403
    const-string v3, "expires"

    .line 404
    .line 405
    invoke-direct {v2, v3, v4}, Lxb/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    const/16 v3, 0x23

    .line 409
    .line 410
    aput-object v2, v1, v3

    .line 411
    .line 412
    new-instance v2, Lxb/a;

    .line 413
    .line 414
    const-string v3, "from"

    .line 415
    .line 416
    invoke-direct {v2, v3, v4}, Lxb/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    const/16 v3, 0x24

    .line 420
    .line 421
    aput-object v2, v1, v3

    .line 422
    .line 423
    new-instance v2, Lxb/a;

    .line 424
    .line 425
    const-string v3, "host"

    .line 426
    .line 427
    invoke-direct {v2, v3, v4}, Lxb/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    const/16 v3, 0x25

    .line 431
    .line 432
    aput-object v2, v1, v3

    .line 433
    .line 434
    new-instance v2, Lxb/a;

    .line 435
    .line 436
    const-string v3, "if-match"

    .line 437
    .line 438
    invoke-direct {v2, v3, v4}, Lxb/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    const/16 v3, 0x26

    .line 442
    .line 443
    aput-object v2, v1, v3

    .line 444
    .line 445
    new-instance v2, Lxb/a;

    .line 446
    .line 447
    const-string v3, "if-modified-since"

    .line 448
    .line 449
    invoke-direct {v2, v3, v4}, Lxb/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    const/16 v3, 0x27

    .line 453
    .line 454
    aput-object v2, v1, v3

    .line 455
    .line 456
    new-instance v2, Lxb/a;

    .line 457
    .line 458
    const-string v3, "if-none-match"

    .line 459
    .line 460
    invoke-direct {v2, v3, v4}, Lxb/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    const/16 v3, 0x28

    .line 464
    .line 465
    aput-object v2, v1, v3

    .line 466
    .line 467
    new-instance v2, Lxb/a;

    .line 468
    .line 469
    const-string v3, "if-range"

    .line 470
    .line 471
    invoke-direct {v2, v3, v4}, Lxb/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    const/16 v3, 0x29

    .line 475
    .line 476
    aput-object v2, v1, v3

    .line 477
    .line 478
    new-instance v2, Lxb/a;

    .line 479
    .line 480
    const-string v3, "if-unmodified-since"

    .line 481
    .line 482
    invoke-direct {v2, v3, v4}, Lxb/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    const/16 v3, 0x2a

    .line 486
    .line 487
    aput-object v2, v1, v3

    .line 488
    .line 489
    new-instance v2, Lxb/a;

    .line 490
    .line 491
    const-string v3, "last-modified"

    .line 492
    .line 493
    invoke-direct {v2, v3, v4}, Lxb/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    const/16 v3, 0x2b

    .line 497
    .line 498
    aput-object v2, v1, v3

    .line 499
    .line 500
    new-instance v2, Lxb/a;

    .line 501
    .line 502
    const-string v3, "link"

    .line 503
    .line 504
    invoke-direct {v2, v3, v4}, Lxb/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    const/16 v3, 0x2c

    .line 508
    .line 509
    aput-object v2, v1, v3

    .line 510
    .line 511
    new-instance v2, Lxb/a;

    .line 512
    .line 513
    const-string v3, "location"

    .line 514
    .line 515
    invoke-direct {v2, v3, v4}, Lxb/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    const/16 v3, 0x2d

    .line 519
    .line 520
    aput-object v2, v1, v3

    .line 521
    .line 522
    new-instance v2, Lxb/a;

    .line 523
    .line 524
    const-string v3, "max-forwards"

    .line 525
    .line 526
    invoke-direct {v2, v3, v4}, Lxb/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    const/16 v3, 0x2e

    .line 530
    .line 531
    aput-object v2, v1, v3

    .line 532
    .line 533
    new-instance v2, Lxb/a;

    .line 534
    .line 535
    const-string v3, "proxy-authenticate"

    .line 536
    .line 537
    invoke-direct {v2, v3, v4}, Lxb/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    const/16 v3, 0x2f

    .line 541
    .line 542
    aput-object v2, v1, v3

    .line 543
    .line 544
    new-instance v2, Lxb/a;

    .line 545
    .line 546
    const-string v3, "proxy-authorization"

    .line 547
    .line 548
    invoke-direct {v2, v3, v4}, Lxb/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    const/16 v3, 0x30

    .line 552
    .line 553
    aput-object v2, v1, v3

    .line 554
    .line 555
    new-instance v2, Lxb/a;

    .line 556
    .line 557
    const-string v3, "range"

    .line 558
    .line 559
    invoke-direct {v2, v3, v4}, Lxb/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    .line 561
    .line 562
    const/16 v3, 0x31

    .line 563
    .line 564
    aput-object v2, v1, v3

    .line 565
    .line 566
    new-instance v2, Lxb/a;

    .line 567
    .line 568
    const-string v3, "referer"

    .line 569
    .line 570
    invoke-direct {v2, v3, v4}, Lxb/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    .line 572
    .line 573
    const/16 v3, 0x32

    .line 574
    .line 575
    aput-object v2, v1, v3

    .line 576
    .line 577
    new-instance v2, Lxb/a;

    .line 578
    .line 579
    const-string v3, "refresh"

    .line 580
    .line 581
    invoke-direct {v2, v3, v4}, Lxb/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    .line 583
    .line 584
    const/16 v3, 0x33

    .line 585
    .line 586
    aput-object v2, v1, v3

    .line 587
    .line 588
    new-instance v2, Lxb/a;

    .line 589
    .line 590
    const-string v3, "retry-after"

    .line 591
    .line 592
    invoke-direct {v2, v3, v4}, Lxb/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    .line 594
    .line 595
    const/16 v3, 0x34

    .line 596
    .line 597
    aput-object v2, v1, v3

    .line 598
    .line 599
    new-instance v2, Lxb/a;

    .line 600
    .line 601
    const-string v3, "server"

    .line 602
    .line 603
    invoke-direct {v2, v3, v4}, Lxb/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    const/16 v3, 0x35

    .line 607
    .line 608
    aput-object v2, v1, v3

    .line 609
    .line 610
    new-instance v2, Lxb/a;

    .line 611
    .line 612
    const-string v3, "set-cookie"

    .line 613
    .line 614
    invoke-direct {v2, v3, v4}, Lxb/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    .line 616
    .line 617
    const/16 v3, 0x36

    .line 618
    .line 619
    aput-object v2, v1, v3

    .line 620
    .line 621
    new-instance v2, Lxb/a;

    .line 622
    .line 623
    const-string v3, "strict-transport-security"

    .line 624
    .line 625
    invoke-direct {v2, v3, v4}, Lxb/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    .line 627
    .line 628
    const/16 v3, 0x37

    .line 629
    .line 630
    aput-object v2, v1, v3

    .line 631
    .line 632
    new-instance v2, Lxb/a;

    .line 633
    .line 634
    const-string v3, "transfer-encoding"

    .line 635
    .line 636
    invoke-direct {v2, v3, v4}, Lxb/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    .line 638
    .line 639
    const/16 v3, 0x38

    .line 640
    .line 641
    aput-object v2, v1, v3

    .line 642
    .line 643
    new-instance v2, Lxb/a;

    .line 644
    .line 645
    const-string v3, "user-agent"

    .line 646
    .line 647
    invoke-direct {v2, v3, v4}, Lxb/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    .line 649
    .line 650
    const/16 v3, 0x39

    .line 651
    .line 652
    aput-object v2, v1, v3

    .line 653
    .line 654
    new-instance v2, Lxb/a;

    .line 655
    .line 656
    const-string v3, "vary"

    .line 657
    .line 658
    invoke-direct {v2, v3, v4}, Lxb/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    .line 660
    .line 661
    const/16 v3, 0x3a

    .line 662
    .line 663
    aput-object v2, v1, v3

    .line 664
    .line 665
    new-instance v2, Lxb/a;

    .line 666
    .line 667
    const-string v3, "via"

    .line 668
    .line 669
    invoke-direct {v2, v3, v4}, Lxb/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    .line 671
    .line 672
    const/16 v3, 0x3b

    .line 673
    .line 674
    aput-object v2, v1, v3

    .line 675
    .line 676
    new-instance v2, Lxb/a;

    .line 677
    .line 678
    const-string v3, "www-authenticate"

    .line 679
    .line 680
    invoke-direct {v2, v3, v4}, Lxb/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    .line 682
    .line 683
    const/16 v3, 0x3c

    .line 684
    .line 685
    aput-object v2, v1, v3

    .line 686
    .line 687
    sput-object v1, Lxb/b;->a:[Lxb/a;

    .line 688
    .line 689
    invoke-direct {v0}, Lxb/b;->d()Ljava/util/Map;

    .line 690
    .line 691
    .line 692
    move-result-object v0

    .line 693
    sput-object v0, Lxb/b;->b:Ljava/util/Map;

    .line 694
    .line 695
    return-void
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

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final d()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lokio/ByteString;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    sget-object v1, Lxb/b;->a:[Lxb/a;

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    invoke-direct {v0, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 7
    .line 8
    .line 9
    array-length v1, v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_1

    .line 12
    .line 13
    sget-object v3, Lxb/b;->a:[Lxb/a;

    .line 14
    .line 15
    aget-object v4, v3, v2

    .line 16
    .line 17
    iget-object v4, v4, Lxb/a;->b:Lokio/ByteString;

    .line 18
    .line 19
    invoke-virtual {v0, v4}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-nez v4, :cond_0

    .line 24
    .line 25
    aget-object v3, v3, v2

    .line 26
    .line 27
    iget-object v3, v3, Lxb/a;->b:Lokio/ByteString;

    .line 28
    .line 29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "Collections.unmodifiableMap(result)"

    .line 44
    .line 45
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v0
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


# virtual methods
.method public final a(Lokio/ByteString;)Lokio/ByteString;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "name"

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
    :goto_0
    if-ge v1, v0, :cond_2

    .line 12
    .line 13
    const/16 v2, 0x41

    .line 14
    .line 15
    int-to-byte v2, v2

    .line 16
    const/16 v3, 0x5a

    .line 17
    .line 18
    int-to-byte v3, v3

    .line 19
    invoke-virtual {p1, v1}, Lokio/ByteString;->getByte(I)B

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-le v2, v4, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    if-ge v3, v4, :cond_1

    .line 27
    .line 28
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v2, "PROTOCOL_ERROR response malformed: mixed case name: "

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lokio/ByteString;->utf8()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0

    .line 58
    :cond_2
    return-object p1
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

.method public final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lokio/ByteString;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lxb/b;->b:Ljava/util/Map;

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

.method public final c()[Lxb/a;
    .locals 1

    .line 1
    sget-object v0, Lxb/b;->a:[Lxb/a;

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

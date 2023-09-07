.class public final Lcc/s;
.super Ljava/lang/Object;
.source "PeekSource.kt"

# interfaces
.implements Lcc/a0;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0018\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0008\u0010\u0008\u001a\u00020\u0007H\u0016J\u0008\u0010\n\u001a\u00020\tH\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcc/s;",
        "Lcc/a0;",
        "Lcc/e;",
        "sink",
        "",
        "byteCount",
        "u",
        "Lcc/b0;",
        "b",
        "Lkotlin/u;",
        "close",
        "Lcc/g;",
        "upstream",
        "<init>",
        "(Lcc/g;)V",
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
.field private final a:Lcc/e;

.field private b:Lcc/v;

.field private c:I

.field private d:Z

.field private e:J

.field private final f:Lcc/g;


# direct methods
.method public constructor <init>(Lcc/g;)V
    .locals 1

    .line 1
    const-string v0, "upstream"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcc/s;->f:Lcc/g;

    .line 10
    .line 11
    invoke-interface {p1}, Lcc/g;->a()Lcc/e;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcc/s;->a:Lcc/e;

    .line 16
    .line 17
    iget-object p1, p1, Lcc/e;->a:Lcc/v;

    .line 18
    .line 19
    iput-object p1, p0, Lcc/s;->b:Lcc/v;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget p1, p1, Lcc/v;->b:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, -0x1

    .line 27
    :goto_0
    iput p1, p0, Lcc/s;->c:I

    .line 28
    .line 29
    return-void
    .line 30
    .line 31
    .line 32
    .line 33
.end method


# virtual methods
.method public b()Lcc/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/s;->f:Lcc/g;

    .line 2
    .line 3
    invoke-interface {v0}, Lcc/a0;->b()Lcc/b0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
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
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcc/s;->d:Z

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

.method public u(Lcc/e;J)J
    .locals 8

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
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x1

    .line 12
    if-ltz v2, :cond_0

    .line 13
    .line 14
    move v5, v4

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v5, v3

    .line 17
    :goto_0
    if-eqz v5, :cond_a

    .line 18
    .line 19
    iget-boolean v5, p0, Lcc/s;->d:Z

    .line 20
    .line 21
    xor-int/2addr v5, v4

    .line 22
    if-eqz v5, :cond_9

    .line 23
    .line 24
    iget-object v5, p0, Lcc/s;->b:Lcc/v;

    .line 25
    .line 26
    if-eqz v5, :cond_2

    .line 27
    .line 28
    iget-object v6, p0, Lcc/s;->a:Lcc/e;

    .line 29
    .line 30
    iget-object v6, v6, Lcc/e;->a:Lcc/v;

    .line 31
    .line 32
    if-ne v5, v6, :cond_3

    .line 33
    .line 34
    iget v5, p0, Lcc/s;->c:I

    .line 35
    .line 36
    if-nez v6, :cond_1

    .line 37
    .line 38
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget v6, v6, Lcc/v;->b:I

    .line 42
    .line 43
    if-ne v5, v6, :cond_3

    .line 44
    .line 45
    :cond_2
    move v3, v4

    .line 46
    :cond_3
    if-eqz v3, :cond_8

    .line 47
    .line 48
    if-nez v2, :cond_4

    .line 49
    .line 50
    return-wide v0

    .line 51
    :cond_4
    iget-object v0, p0, Lcc/s;->f:Lcc/g;

    .line 52
    .line 53
    iget-wide v1, p0, Lcc/s;->e:J

    .line 54
    .line 55
    const-wide/16 v3, 0x1

    .line 56
    .line 57
    add-long/2addr v1, v3

    .line 58
    invoke-interface {v0, v1, v2}, Lcc/g;->U(J)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_5

    .line 63
    .line 64
    const-wide/16 p1, -0x1

    .line 65
    .line 66
    return-wide p1

    .line 67
    :cond_5
    iget-object v0, p0, Lcc/s;->b:Lcc/v;

    .line 68
    .line 69
    if-nez v0, :cond_7

    .line 70
    .line 71
    iget-object v0, p0, Lcc/s;->a:Lcc/e;

    .line 72
    .line 73
    iget-object v0, v0, Lcc/e;->a:Lcc/v;

    .line 74
    .line 75
    if-eqz v0, :cond_7

    .line 76
    .line 77
    iput-object v0, p0, Lcc/s;->b:Lcc/v;

    .line 78
    .line 79
    if-nez v0, :cond_6

    .line 80
    .line 81
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 82
    .line 83
    .line 84
    :cond_6
    iget v0, v0, Lcc/v;->b:I

    .line 85
    .line 86
    iput v0, p0, Lcc/s;->c:I

    .line 87
    .line 88
    :cond_7
    iget-object v0, p0, Lcc/s;->a:Lcc/e;

    .line 89
    .line 90
    invoke-virtual {v0}, Lcc/e;->size()J

    .line 91
    .line 92
    .line 93
    move-result-wide v0

    .line 94
    iget-wide v2, p0, Lcc/s;->e:J

    .line 95
    .line 96
    sub-long/2addr v0, v2

    .line 97
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 98
    .line 99
    .line 100
    move-result-wide p2

    .line 101
    iget-object v2, p0, Lcc/s;->a:Lcc/e;

    .line 102
    .line 103
    iget-wide v4, p0, Lcc/s;->e:J

    .line 104
    .line 105
    move-object v3, p1

    .line 106
    move-wide v6, p2

    .line 107
    invoke-virtual/range {v2 .. v7}, Lcc/e;->E(Lcc/e;JJ)Lcc/e;

    .line 108
    .line 109
    .line 110
    iget-wide v0, p0, Lcc/s;->e:J

    .line 111
    .line 112
    add-long/2addr v0, p2

    .line 113
    iput-wide v0, p0, Lcc/s;->e:J

    .line 114
    .line 115
    return-wide p2

    .line 116
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 117
    .line 118
    const-string p2, "Peek source is invalid because upstream source was used"

    .line 119
    .line 120
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p1

    .line 128
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 129
    .line 130
    const-string p2, "closed"

    .line 131
    .line 132
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p1

    .line 140
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    const-string v0, "byteCount < 0: "

    .line 146
    .line 147
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 158
    .line 159
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw p2
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

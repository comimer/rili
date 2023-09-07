.class public Lmiuix/animation/controller/e;
.super Lmiuix/animation/controller/a;
.source "FolmeVisible.java"

# interfaces
.implements Lmiuix/animation/IVisibleStyle;


# instance fields
.field private b:Z

.field private c:Z

.field private d:Z

.field private final e:Ld9/a;


# direct methods
.method public varargs constructor <init>([Lmiuix/animation/b;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lmiuix/animation/controller/a;-><init>([Lmiuix/animation/b;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ld9/a;

    .line 5
    .line 6
    invoke-direct {p1}, Ld9/a;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    new-array v1, v0, [Lg9/b;

    .line 11
    .line 12
    new-instance v2, Lmiuix/animation/controller/e$a;

    .line 13
    .line 14
    invoke-direct {v2, p0}, Lmiuix/animation/controller/e$a;-><init>(Lmiuix/animation/controller/e;)V

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    aput-object v2, v1, v3

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Ld9/a;->a([Lg9/b;)Ld9/a;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lmiuix/animation/controller/e;->e:Ld9/a;

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lmiuix/animation/controller/e;->U(Z)Lmiuix/animation/IVisibleStyle;

    .line 27
    .line 28
    .line 29
    return-void
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method static synthetic S(Lmiuix/animation/controller/e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lmiuix/animation/controller/e;->d:Z

    .line 2
    .line 3
    return p0
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

.method private varargs T(Lmiuix/animation/IVisibleStyle$VisibleType;[Ld9/a;)[Ld9/a;
    .locals 6

    .line 1
    iget-boolean v0, p0, Lmiuix/animation/controller/e;->c:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x2

    .line 6
    const/4 v4, -0x2

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-boolean v5, p0, Lmiuix/animation/controller/e;->b:Z

    .line 10
    .line 11
    if-nez v5, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lmiuix/animation/controller/e;->e:Ld9/a;

    .line 14
    .line 15
    sget-object v5, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 16
    .line 17
    if-ne p1, v5, :cond_0

    .line 18
    .line 19
    const/16 p1, 0x10

    .line 20
    .line 21
    new-array v3, v2, [F

    .line 22
    .line 23
    const/high16 v4, 0x43960000    # 300.0f

    .line 24
    .line 25
    aput v4, v3, v1

    .line 26
    .line 27
    invoke-static {p1, v3}, Lj9/c;->e(I[F)Lj9/c$a;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-array p1, v3, [F

    .line 33
    .line 34
    fill-array-data p1, :array_0

    .line 35
    .line 36
    .line 37
    invoke-static {v4, p1}, Lj9/c;->e(I[F)Lj9/c$a;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    :goto_0
    invoke-virtual {v0, p1}, Ld9/a;->l(Lj9/c$a;)Ld9/a;

    .line 42
    .line 43
    .line 44
    goto :goto_4

    .line 45
    :cond_1
    if-eqz v0, :cond_3

    .line 46
    .line 47
    iget-boolean v5, p0, Lmiuix/animation/controller/e;->b:Z

    .line 48
    .line 49
    if-nez v5, :cond_3

    .line 50
    .line 51
    iget-object v0, p0, Lmiuix/animation/controller/e;->e:Ld9/a;

    .line 52
    .line 53
    sget-object v5, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 54
    .line 55
    if-ne p1, v5, :cond_2

    .line 56
    .line 57
    new-array p1, v3, [F

    .line 58
    .line 59
    fill-array-data p1, :array_1

    .line 60
    .line 61
    .line 62
    invoke-static {v4, p1}, Lj9/c;->e(I[F)Lj9/c$a;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    new-array p1, v3, [F

    .line 68
    .line 69
    fill-array-data p1, :array_2

    .line 70
    .line 71
    .line 72
    invoke-static {v4, p1}, Lj9/c;->e(I[F)Lj9/c$a;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    :goto_1
    invoke-virtual {v0, p1}, Ld9/a;->l(Lj9/c$a;)Ld9/a;

    .line 77
    .line 78
    .line 79
    goto :goto_4

    .line 80
    :cond_3
    if-nez v0, :cond_5

    .line 81
    .line 82
    iget-object v0, p0, Lmiuix/animation/controller/e;->e:Ld9/a;

    .line 83
    .line 84
    sget-object v5, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 85
    .line 86
    if-ne p1, v5, :cond_4

    .line 87
    .line 88
    new-array p1, v3, [F

    .line 89
    .line 90
    fill-array-data p1, :array_3

    .line 91
    .line 92
    .line 93
    invoke-static {v4, p1}, Lj9/c;->e(I[F)Lj9/c$a;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    goto :goto_2

    .line 98
    :cond_4
    new-array p1, v3, [F

    .line 99
    .line 100
    fill-array-data p1, :array_4

    .line 101
    .line 102
    .line 103
    invoke-static {v4, p1}, Lj9/c;->e(I[F)Lj9/c$a;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    :goto_2
    invoke-virtual {v0, p1}, Ld9/a;->l(Lj9/c$a;)Ld9/a;

    .line 108
    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_5
    iget-object v0, p0, Lmiuix/animation/controller/e;->e:Ld9/a;

    .line 112
    .line 113
    sget-object v5, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 114
    .line 115
    if-ne p1, v5, :cond_6

    .line 116
    .line 117
    new-array p1, v3, [F

    .line 118
    .line 119
    fill-array-data p1, :array_5

    .line 120
    .line 121
    .line 122
    invoke-static {v4, p1}, Lj9/c;->e(I[F)Lj9/c$a;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    goto :goto_3

    .line 127
    :cond_6
    new-array p1, v3, [F

    .line 128
    .line 129
    fill-array-data p1, :array_6

    .line 130
    .line 131
    .line 132
    invoke-static {v4, p1}, Lj9/c;->e(I[F)Lj9/c$a;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    :goto_3
    invoke-virtual {v0, p1}, Ld9/a;->l(Lj9/c$a;)Ld9/a;

    .line 137
    .line 138
    .line 139
    :goto_4
    new-array p1, v2, [Ld9/a;

    .line 140
    .line 141
    iget-object v0, p0, Lmiuix/animation/controller/e;->e:Ld9/a;

    .line 142
    .line 143
    aput-object v0, p1, v1

    .line 144
    .line 145
    invoke-static {p2, p1}, Lj9/a;->m([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    check-cast p1, [Ld9/a;

    .line 150
    .line 151
    return-object p1

    .line 152
    nop

    .line 153
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e19999a    # 0.15f
    .end array-data

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    :array_1
    .array-data 4
        0x3f19999a    # 0.6f
        0x3eb33333    # 0.35f
    .end array-data

    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    :array_2
    .array-data 4
        0x3f400000    # 0.75f
        0x3e4ccccd    # 0.2f
    .end array-data

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    :array_3
    .array-data 4
        0x3f400000    # 0.75f
        0x3eb33333    # 0.35f
    .end array-data

    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    :array_4
    .array-data 4
        0x3f400000    # 0.75f
        0x3e800000    # 0.25f
    .end array-data

    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    :array_5
    .array-data 4
        0x3f266666    # 0.65f
        0x3eb33333    # 0.35f
    .end array-data

    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    :array_6
    .array-data 4
        0x3f400000    # 0.75f
        0x3e800000    # 0.25f
    .end array-data
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


# virtual methods
.method public varargs E([Ld9/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/a;->a:Le9/c;

    .line 2
    .line 3
    sget-object v1, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 4
    .line 5
    invoke-direct {p0, v1, p1}, Lmiuix/animation/controller/e;->T(Lmiuix/animation/IVisibleStyle$VisibleType;[Ld9/a;)[Ld9/a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {v0, v1, p1}, Lmiuix/animation/f;->J(Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 10
    .line 11
    .line 12
    return-void
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

.method public varargs F([Ld9/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/a;->a:Le9/c;

    .line 2
    .line 3
    sget-object v1, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 4
    .line 5
    invoke-direct {p0, v1, p1}, Lmiuix/animation/controller/e;->T(Lmiuix/animation/IVisibleStyle$VisibleType;[Ld9/a;)[Ld9/a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {v0, v1, p1}, Lmiuix/animation/f;->J(Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 10
    .line 11
    .line 12
    return-void
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

.method public U(Z)Lmiuix/animation/IVisibleStyle;
    .locals 7

    .line 1
    sget-object v0, Lmiuix/animation/property/h;->o:Lmiuix/animation/property/h;

    .line 2
    .line 3
    sget-object v1, Lmiuix/animation/property/h;->n:Lmiuix/animation/property/h;

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lmiuix/animation/controller/a;->a:Le9/c;

    .line 12
    .line 13
    sget-object v6, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 14
    .line 15
    invoke-interface {p1, v6}, Le9/c;->w(Ljava/lang/Object;)Le9/a;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1, v1}, Le9/a;->r(Ljava/lang/Object;)Le9/a;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1, v0, v4, v5}, Le9/a;->a(Ljava/lang/Object;D)Le9/a;

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lmiuix/animation/controller/a;->a:Le9/c;

    .line 27
    .line 28
    sget-object v4, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 29
    .line 30
    invoke-interface {p1, v4}, Le9/c;->w(Ljava/lang/Object;)Le9/a;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1, v1}, Le9/a;->r(Ljava/lang/Object;)Le9/a;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1, v0, v2, v3}, Le9/a;->a(Ljava/lang/Object;D)Le9/a;

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object p1, p0, Lmiuix/animation/controller/a;->a:Le9/c;

    .line 43
    .line 44
    sget-object v6, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 45
    .line 46
    invoke-interface {p1, v6}, Le9/c;->w(Ljava/lang/Object;)Le9/a;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1, v0}, Le9/a;->r(Ljava/lang/Object;)Le9/a;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1, v1, v4, v5}, Le9/a;->a(Ljava/lang/Object;D)Le9/a;

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lmiuix/animation/controller/a;->a:Le9/c;

    .line 58
    .line 59
    sget-object v4, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 60
    .line 61
    invoke-interface {p1, v4}, Le9/c;->w(Ljava/lang/Object;)Le9/a;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1, v0}, Le9/a;->r(Ljava/lang/Object;)Le9/a;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1, v1, v2, v3}, Le9/a;->a(Ljava/lang/Object;D)Le9/a;

    .line 70
    .line 71
    .line 72
    :goto_0
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
.end method

.method public a(J)Lmiuix/animation/IVisibleStyle;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/a;->a:Le9/c;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lmiuix/animation/f;->a(J)Lmiuix/animation/f;

    .line 4
    .line 5
    .line 6
    return-object p0
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

.method public d()V
    .locals 1

    .line 1
    invoke-super {p0}, Lmiuix/animation/controller/a;->d()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lmiuix/animation/controller/e;->c:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lmiuix/animation/controller/e;->b:Z

    .line 8
    .line 9
    return-void
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

.method public l()Lmiuix/animation/IVisibleStyle;
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/a;->a:Le9/c;

    .line 2
    .line 3
    sget-object v1, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lmiuix/animation/f;->u(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 6
    .line 7
    .line 8
    return-object p0
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

.method public r()Lmiuix/animation/IVisibleStyle;
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/a;->a:Le9/c;

    .line 2
    .line 3
    sget-object v1, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lmiuix/animation/f;->u(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 6
    .line 7
    .line 8
    return-object p0
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

.method public s(J)Lmiuix/animation/IVisibleStyle;
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/a;->a:Le9/c;

    .line 2
    .line 3
    sget-object v1, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Le9/c;->w(Ljava/lang/Object;)Le9/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Le9/a;->j()Ld9/a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-wide p1, v0, Ld9/a;->a:J

    .line 14
    .line 15
    return-object p0
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

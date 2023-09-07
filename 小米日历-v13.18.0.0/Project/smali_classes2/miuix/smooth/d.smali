.class public Lmiuix/smooth/d;
.super Ljava/lang/Object;
.source "SmoothPathProvider2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/smooth/d$b;,
        Lmiuix/smooth/d$a;
    }
.end annotation


# instance fields
.field private a:F

.field private b:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x3f4ccccd    # 0.8f

    .line 5
    .line 6
    .line 7
    iput v0, p0, Lmiuix/smooth/d;->a:F

    .line 8
    .line 9
    const v0, 0x3eeb851f    # 0.46f

    .line 10
    .line 11
    .line 12
    iput v0, p0, Lmiuix/smooth/d;->b:F

    .line 13
    .line 14
    return-void
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

.method private static A(DD)D
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmpl-double v2, p2, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    const-wide v0, 0x3fdd70a3e0000000L    # 0.46000000834465027

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    mul-double/2addr p0, v0

    .line 14
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 15
    .line 16
    div-double v2, p2, v0

    .line 17
    .line 18
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    .line 19
    .line 20
    .line 21
    move-result-wide v4

    .line 22
    add-double/2addr p0, v4

    .line 23
    mul-double/2addr p0, v0

    .line 24
    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    .line 25
    .line 26
    .line 27
    move-result-wide p2

    .line 28
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 29
    .line 30
    add-double/2addr p2, v0

    .line 31
    mul-double/2addr p0, p2

    .line 32
    const-wide/high16 p2, 0x4008000000000000L    # 3.0

    .line 33
    .line 34
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    mul-double/2addr v2, p2

    .line 39
    div-double/2addr p0, v2

    .line 40
    sub-double/2addr p0, v0

    .line 41
    return-wide p0
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

.method private static B(DD)D
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmpl-double v2, p2, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    const-wide v0, 0x3fdd70a3e0000000L    # 0.46000000834465027

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    mul-double/2addr p0, v0

    .line 14
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 15
    .line 16
    div-double v2, p2, v0

    .line 17
    .line 18
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    .line 19
    .line 20
    .line 21
    move-result-wide v4

    .line 22
    add-double/2addr p0, v4

    .line 23
    mul-double/2addr p0, v0

    .line 24
    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    .line 25
    .line 26
    .line 27
    move-result-wide p2

    .line 28
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 29
    .line 30
    add-double/2addr p2, v0

    .line 31
    mul-double/2addr p0, p2

    .line 32
    const-wide/high16 p2, 0x4008000000000000L    # 3.0

    .line 33
    .line 34
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    mul-double/2addr v2, p2

    .line 39
    div-double/2addr p0, v2

    .line 40
    sub-double/2addr p0, v0

    .line 41
    return-wide p0
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

.method private static C(FD)D
    .locals 4

    .line 1
    float-to-double v0, p0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    .line 3
    .line 4
    .line 5
    move-result-wide p0

    .line 6
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 7
    .line 8
    sub-double/2addr v2, p0

    .line 9
    mul-double/2addr v0, v2

    .line 10
    return-wide v0
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

.method private static D(FD)D
    .locals 4

    .line 1
    float-to-double v0, p0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    .line 3
    .line 4
    .line 5
    move-result-wide p0

    .line 6
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 7
    .line 8
    sub-double/2addr v2, p0

    .line 9
    mul-double/2addr v0, v2

    .line 10
    return-wide v0
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

.method private static E(FD)D
    .locals 4

    .line 1
    float-to-double v0, p0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    .line 3
    .line 4
    .line 5
    move-result-wide p0

    .line 6
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 7
    .line 8
    sub-double/2addr v2, p0

    .line 9
    mul-double/2addr v0, v2

    .line 10
    return-wide v0
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

.method private static F(FD)D
    .locals 4

    .line 1
    float-to-double v0, p0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    .line 3
    .line 4
    .line 5
    move-result-wide p0

    .line 6
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 7
    .line 8
    sub-double/2addr v2, p0

    .line 9
    mul-double/2addr v0, v2

    .line 10
    return-wide v0
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

.method private static G(FD)D
    .locals 4

    .line 1
    float-to-double v0, p0

    .line 2
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 3
    .line 4
    div-double/2addr p1, v2

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Math;->tan(D)D

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 10
    .line 11
    sub-double/2addr v2, p0

    .line 12
    mul-double/2addr v0, v2

    .line 13
    return-wide v0
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

.method private static H(FD)D
    .locals 4

    .line 1
    float-to-double v0, p0

    .line 2
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 3
    .line 4
    div-double/2addr p1, v2

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Math;->tan(D)D

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 10
    .line 11
    sub-double/2addr v2, p0

    .line 12
    mul-double/2addr v0, v2

    .line 13
    return-wide v0
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

.method private static I(D)D
    .locals 2

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double/2addr p0, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p0, v0

    return-wide p0
.end method

.method private static J(FFDF)D
    .locals 6

    .line 1
    move v0, p0

    .line 2
    move v1, p1

    .line 3
    move v2, p1

    .line 4
    move-wide v3, p2

    .line 5
    move v5, p4

    .line 6
    invoke-static/range {v0 .. v5}, Lmiuix/smooth/d;->y(FFFDF)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/high16 p2, 0x40000000    # 2.0f

    .line 13
    .line 14
    mul-float/2addr p1, p2

    .line 15
    div-float/2addr p0, p1

    .line 16
    const/high16 p1, 0x3f800000    # 1.0f

    .line 17
    .line 18
    sub-float/2addr p0, p1

    .line 19
    div-float/2addr p0, p4

    .line 20
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    const/4 p1, 0x0

    .line 25
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    float-to-double p0, p0

    .line 30
    return-wide p0

    .line 31
    :cond_0
    return-wide p2
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

.method private static K(FFDF)D
    .locals 6

    .line 1
    move v0, p0

    .line 2
    move v1, p1

    .line 3
    move v2, p1

    .line 4
    move-wide v3, p2

    .line 5
    move v5, p4

    .line 6
    invoke-static/range {v0 .. v5}, Lmiuix/smooth/d;->z(FFFDF)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/high16 p2, 0x40000000    # 2.0f

    .line 13
    .line 14
    mul-float/2addr p1, p2

    .line 15
    div-float/2addr p0, p1

    .line 16
    const/high16 p1, 0x3f800000    # 1.0f

    .line 17
    .line 18
    sub-float/2addr p0, p1

    .line 19
    div-float/2addr p0, p4

    .line 20
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    const/4 p1, 0x0

    .line 25
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    float-to-double p0, p0

    .line 30
    return-wide p0

    .line 31
    :cond_0
    return-wide p2
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

.method private static L(D)D
    .locals 2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method private static M(D)D
    .locals 2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method private static N(FD)D
    .locals 4

    .line 1
    float-to-double v0, p0

    .line 2
    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    .line 3
    .line 4
    mul-double/2addr v0, v2

    .line 5
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 6
    .line 7
    div-double v2, p1, v2

    .line 8
    .line 9
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    mul-double/2addr v0, v2

    .line 14
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    .line 15
    .line 16
    .line 17
    move-result-wide p0

    .line 18
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 19
    .line 20
    add-double/2addr p0, v2

    .line 21
    div-double/2addr v0, p0

    .line 22
    return-wide v0
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

.method private static O(FD)D
    .locals 4

    .line 1
    float-to-double v0, p0

    .line 2
    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    .line 3
    .line 4
    mul-double/2addr v0, v2

    .line 5
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 6
    .line 7
    div-double v2, p1, v2

    .line 8
    .line 9
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    mul-double/2addr v0, v2

    .line 14
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    .line 15
    .line 16
    .line 17
    move-result-wide p0

    .line 18
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 19
    .line 20
    add-double/2addr p0, v2

    .line 21
    div-double/2addr v0, p0

    .line 22
    return-wide v0
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

.method private static P(DD)D
    .locals 0

    mul-double/2addr p0, p2

    return-wide p0
.end method

.method private static Q(DD)D
    .locals 0

    mul-double/2addr p0, p2

    return-wide p0
.end method

.method static synthetic a(FFDF)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lmiuix/smooth/d;->K(FFDF)D

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
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

.method static synthetic b(FFDF)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lmiuix/smooth/d;->J(FFDF)D

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
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

.method static synthetic c(DD)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lmiuix/smooth/d;->Q(DD)D

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
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

.method static synthetic d(DD)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lmiuix/smooth/d;->A(DD)D

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
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

.method static synthetic e(FD)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lmiuix/smooth/d;->C(FD)D

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
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

.method static synthetic f(FD)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lmiuix/smooth/d;->E(FD)D

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
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

.method static synthetic g(FD)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lmiuix/smooth/d;->G(FD)D

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
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

.method static synthetic h(FD)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lmiuix/smooth/d;->N(FD)D

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
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

.method static synthetic i(DD)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lmiuix/smooth/d;->P(DD)D

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
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

.method static synthetic j(D)D
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lmiuix/smooth/d;->M(D)D

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
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

.method static synthetic k(D)D
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lmiuix/smooth/d;->L(D)D

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
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

.method static synthetic l(D)D
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lmiuix/smooth/d;->I(D)D

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
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

.method static synthetic m(DD)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lmiuix/smooth/d;->B(DD)D

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
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

.method static synthetic n(FD)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lmiuix/smooth/d;->D(FD)D

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
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

.method static synthetic o(FD)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lmiuix/smooth/d;->F(FD)D

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
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

.method static synthetic p(FD)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lmiuix/smooth/d;->H(FD)D

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
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

.method static synthetic q(FD)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lmiuix/smooth/d;->O(FD)D

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
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

.method private t(Lmiuix/smooth/d$b;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lmiuix/smooth/d$b;->e:Lmiuix/smooth/d$a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lmiuix/smooth/d$a;

    .line 6
    .line 7
    invoke-direct {v0}, Lmiuix/smooth/d$a;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p1, Lmiuix/smooth/d$b;->e:Lmiuix/smooth/d$a;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p1, Lmiuix/smooth/d$b;->f:Lmiuix/smooth/d$a;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Lmiuix/smooth/d$a;

    .line 17
    .line 18
    invoke-direct {v0}, Lmiuix/smooth/d$a;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p1, Lmiuix/smooth/d$b;->f:Lmiuix/smooth/d$a;

    .line 22
    .line 23
    :cond_1
    iget-object v0, p1, Lmiuix/smooth/d$b;->g:Lmiuix/smooth/d$a;

    .line 24
    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    new-instance v0, Lmiuix/smooth/d$a;

    .line 28
    .line 29
    invoke-direct {v0}, Lmiuix/smooth/d$a;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p1, Lmiuix/smooth/d$b;->g:Lmiuix/smooth/d$a;

    .line 33
    .line 34
    :cond_2
    iget-object v0, p1, Lmiuix/smooth/d$b;->h:Lmiuix/smooth/d$a;

    .line 35
    .line 36
    if-nez v0, :cond_3

    .line 37
    .line 38
    new-instance v0, Lmiuix/smooth/d$a;

    .line 39
    .line 40
    invoke-direct {v0}, Lmiuix/smooth/d$a;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v0, p1, Lmiuix/smooth/d$b;->h:Lmiuix/smooth/d$a;

    .line 44
    .line 45
    :cond_3
    return-void
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

.method private x(Lmiuix/smooth/d$b;)Z
    .locals 1

    .line 1
    iget-object v0, p1, Lmiuix/smooth/d$b;->e:Lmiuix/smooth/d$a;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p1, Lmiuix/smooth/d$b;->f:Lmiuix/smooth/d$a;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p1, Lmiuix/smooth/d$b;->g:Lmiuix/smooth/d$a;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object p1, p1, Lmiuix/smooth/d$b;->h:Lmiuix/smooth/d$a;

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 21
    :goto_1
    return p1
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

.method private static y(FFFDF)Z
    .locals 4

    float-to-double v0, p0

    add-float/2addr p1, p2

    float-to-double p0, p1

    float-to-double v2, p5

    mul-double/2addr p3, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr p3, v2

    mul-double/2addr p0, p3

    cmpg-double p0, v0, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static z(FFFDF)Z
    .locals 4

    float-to-double v0, p0

    add-float/2addr p1, p2

    float-to-double p0, p1

    float-to-double v2, p5

    mul-double/2addr p3, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr p3, v2

    mul-double/2addr p0, p3

    cmpg-double p0, v0, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public r(Landroid/graphics/RectF;FFF)Lmiuix/smooth/d$b;
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v0, v0, [F

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    aput p2, v0, v1

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    aput p2, v0, v1

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    aput p2, v0, v1

    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    aput p2, v0, v1

    .line 16
    .line 17
    const/4 v1, 0x4

    .line 18
    aput p2, v0, v1

    .line 19
    .line 20
    const/4 v1, 0x5

    .line 21
    aput p2, v0, v1

    .line 22
    .line 23
    const/4 v1, 0x6

    .line 24
    aput p2, v0, v1

    .line 25
    .line 26
    const/4 v1, 0x7

    .line 27
    aput p2, v0, v1

    .line 28
    .line 29
    invoke-virtual {p0, p1, v0, p3, p4}, Lmiuix/smooth/d;->s(Landroid/graphics/RectF;[FFF)Lmiuix/smooth/d$b;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1
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

.method public s(Landroid/graphics/RectF;[FFF)Lmiuix/smooth/d$b;
    .locals 20

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lmiuix/smooth/d;->u()F

    .line 8
    .line 9
    .line 10
    move-result v10

    .line 11
    invoke-virtual/range {p0 .. p0}, Lmiuix/smooth/d;->v()F

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    .line 16
    .line 17
    .line 18
    move-result v7

    .line 19
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    .line 20
    .line 21
    .line 22
    move-result v8

    .line 23
    new-instance v11, Lmiuix/smooth/d$b;

    .line 24
    .line 25
    float-to-double v12, v1

    .line 26
    move-object v1, v11

    .line 27
    move v2, v7

    .line 28
    move v3, v8

    .line 29
    move-wide v4, v12

    .line 30
    move v6, v10

    .line 31
    invoke-direct/range {v1 .. v6}, Lmiuix/smooth/d$b;-><init>(FFDF)V

    .line 32
    .line 33
    .line 34
    const/16 v1, 0x8

    .line 35
    .line 36
    new-array v2, v1, [F

    .line 37
    .line 38
    fill-array-data v2, :array_0

    .line 39
    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    move v4, v3

    .line 43
    :goto_0
    array-length v5, v0

    .line 44
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-ge v4, v5, :cond_2

    .line 49
    .line 50
    aget v5, v0, v4

    .line 51
    .line 52
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-nez v5, :cond_1

    .line 57
    .line 58
    aget v5, v0, v4

    .line 59
    .line 60
    aput v5, v2, v4

    .line 61
    .line 62
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    aget v0, v2, v3

    .line 66
    .line 67
    const/4 v1, 0x1

    .line 68
    aget v1, v2, v1

    .line 69
    .line 70
    const/4 v3, 0x2

    .line 71
    aget v3, v2, v3

    .line 72
    .line 73
    const/4 v4, 0x3

    .line 74
    aget v4, v2, v4

    .line 75
    .line 76
    const/4 v5, 0x4

    .line 77
    aget v5, v2, v5

    .line 78
    .line 79
    const/4 v6, 0x5

    .line 80
    aget v6, v2, v6

    .line 81
    .line 82
    const/4 v9, 0x6

    .line 83
    aget v9, v2, v9

    .line 84
    .line 85
    const/4 v14, 0x7

    .line 86
    aget v2, v2, v14

    .line 87
    .line 88
    add-float v14, v0, v3

    .line 89
    .line 90
    cmpl-float v14, v14, v7

    .line 91
    .line 92
    if-lez v14, :cond_3

    .line 93
    .line 94
    mul-float v14, v7, v0

    .line 95
    .line 96
    add-float v15, v0, v3

    .line 97
    .line 98
    div-float/2addr v14, v15

    .line 99
    mul-float v15, v7, v3

    .line 100
    .line 101
    add-float/2addr v0, v3

    .line 102
    div-float v3, v15, v0

    .line 103
    .line 104
    move v0, v14

    .line 105
    :cond_3
    move v14, v3

    .line 106
    add-float v3, v4, v6

    .line 107
    .line 108
    cmpl-float v3, v3, v8

    .line 109
    .line 110
    if-lez v3, :cond_4

    .line 111
    .line 112
    mul-float v3, v8, v4

    .line 113
    .line 114
    add-float v15, v4, v6

    .line 115
    .line 116
    div-float/2addr v3, v15

    .line 117
    mul-float v15, v8, v6

    .line 118
    .line 119
    add-float/2addr v4, v6

    .line 120
    div-float v6, v15, v4

    .line 121
    .line 122
    move v15, v3

    .line 123
    goto :goto_1

    .line 124
    :cond_4
    move v15, v4

    .line 125
    :goto_1
    add-float v3, v5, v9

    .line 126
    .line 127
    cmpl-float v3, v3, v7

    .line 128
    .line 129
    if-lez v3, :cond_5

    .line 130
    .line 131
    mul-float v3, v7, v5

    .line 132
    .line 133
    add-float v4, v5, v9

    .line 134
    .line 135
    div-float/2addr v3, v4

    .line 136
    mul-float/2addr v7, v9

    .line 137
    add-float/2addr v5, v9

    .line 138
    div-float v9, v7, v5

    .line 139
    .line 140
    move v7, v9

    .line 141
    move v9, v3

    .line 142
    goto :goto_2

    .line 143
    :cond_5
    move v7, v9

    .line 144
    move v9, v5

    .line 145
    :goto_2
    add-float v3, v2, v1

    .line 146
    .line 147
    cmpl-float v3, v3, v8

    .line 148
    .line 149
    if-lez v3, :cond_6

    .line 150
    .line 151
    mul-float v3, v8, v2

    .line 152
    .line 153
    add-float v4, v2, v1

    .line 154
    .line 155
    div-float/2addr v3, v4

    .line 156
    mul-float/2addr v8, v1

    .line 157
    add-float/2addr v2, v1

    .line 158
    div-float v1, v8, v2

    .line 159
    .line 160
    move-object/from16 v5, p0

    .line 161
    .line 162
    move v8, v3

    .line 163
    goto :goto_3

    .line 164
    :cond_6
    move-object/from16 v5, p0

    .line 165
    .line 166
    move v8, v2

    .line 167
    :goto_3
    invoke-direct {v5, v11}, Lmiuix/smooth/d;->t(Lmiuix/smooth/d$b;)V

    .line 168
    .line 169
    .line 170
    iget-object v2, v11, Lmiuix/smooth/d$b;->e:Lmiuix/smooth/d$a;

    .line 171
    .line 172
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    const/16 v16, 0x0

    .line 177
    .line 178
    move-object v1, v2

    .line 179
    move v2, v0

    .line 180
    move-object/from16 v3, p1

    .line 181
    .line 182
    move/from16 v4, p3

    .line 183
    .line 184
    move/from16 v5, p4

    .line 185
    .line 186
    move v0, v6

    .line 187
    move/from16 v17, v7

    .line 188
    .line 189
    move-wide v6, v12

    .line 190
    move/from16 v18, v8

    .line 191
    .line 192
    move v8, v10

    .line 193
    move/from16 v19, v9

    .line 194
    .line 195
    move/from16 v9, v16

    .line 196
    .line 197
    invoke-virtual/range {v1 .. v9}, Lmiuix/smooth/d$a;->a(FLandroid/graphics/RectF;FFDFI)V

    .line 198
    .line 199
    .line 200
    iget-object v1, v11, Lmiuix/smooth/d$b;->f:Lmiuix/smooth/d$a;

    .line 201
    .line 202
    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    const/4 v9, 0x1

    .line 207
    invoke-virtual/range {v1 .. v9}, Lmiuix/smooth/d$a;->a(FLandroid/graphics/RectF;FFDFI)V

    .line 208
    .line 209
    .line 210
    iget-object v1, v11, Lmiuix/smooth/d$b;->g:Lmiuix/smooth/d$a;

    .line 211
    .line 212
    move/from16 v3, v19

    .line 213
    .line 214
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    const/4 v9, 0x2

    .line 219
    move-object/from16 v3, p1

    .line 220
    .line 221
    invoke-virtual/range {v1 .. v9}, Lmiuix/smooth/d$a;->a(FLandroid/graphics/RectF;FFDFI)V

    .line 222
    .line 223
    .line 224
    iget-object v1, v11, Lmiuix/smooth/d$b;->h:Lmiuix/smooth/d$a;

    .line 225
    .line 226
    move/from16 v9, v17

    .line 227
    .line 228
    move/from16 v2, v18

    .line 229
    .line 230
    invoke-static {v9, v2}, Ljava/lang/Math;->min(FF)F

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    const/4 v9, 0x3

    .line 235
    invoke-virtual/range {v1 .. v9}, Lmiuix/smooth/d$a;->a(FLandroid/graphics/RectF;FFDFI)V

    .line 236
    .line 237
    .line 238
    return-object v11

    .line 239
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
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

.method u()F
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/smooth/d;->b:F

    .line 2
    .line 3
    return v0
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

.method v()F
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/smooth/d;->a:F

    .line 2
    .line 3
    return v0
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

.method public w(Landroid/graphics/Path;Lmiuix/smooth/d$b;)Landroid/graphics/Path;
    .locals 24

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    new-instance v1, Landroid/graphics/Path;

    .line 6
    .line 7
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object/from16 v1, p1

    .line 12
    .line 13
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 14
    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_1
    move-object/from16 v9, p0

    .line 20
    .line 21
    invoke-direct {v9, v0}, Lmiuix/smooth/d;->x(Lmiuix/smooth/d$b;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v10, 0x0

    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    new-instance v2, Landroid/graphics/RectF;

    .line 29
    .line 30
    iget v3, v0, Lmiuix/smooth/d$b;->a:F

    .line 31
    .line 32
    iget v0, v0, Lmiuix/smooth/d$b;->b:F

    .line 33
    .line 34
    invoke-direct {v2, v10, v10, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 35
    .line 36
    .line 37
    sget-object v0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 38
    .line 39
    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 40
    .line 41
    .line 42
    return-object v1

    .line 43
    :cond_2
    iget-object v2, v0, Lmiuix/smooth/d$b;->e:Lmiuix/smooth/d$a;

    .line 44
    .line 45
    iget v3, v2, Lmiuix/smooth/d$a;->g:F

    .line 46
    .line 47
    cmpl-float v3, v3, v10

    .line 48
    .line 49
    const/4 v11, 0x0

    .line 50
    if-eqz v3, :cond_3

    .line 51
    .line 52
    iget-object v3, v2, Lmiuix/smooth/d$a;->a:Landroid/graphics/RectF;

    .line 53
    .line 54
    const-wide v4, 0x400921fb54442d18L    # Math.PI

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    iget-wide v6, v2, Lmiuix/smooth/d$a;->f:D

    .line 60
    .line 61
    add-double/2addr v6, v4

    .line 62
    invoke-static {v6, v7}, Lmiuix/smooth/d;->I(D)D

    .line 63
    .line 64
    .line 65
    move-result-wide v4

    .line 66
    double-to-float v2, v4

    .line 67
    iget-object v4, v0, Lmiuix/smooth/d$b;->e:Lmiuix/smooth/d$a;

    .line 68
    .line 69
    iget v4, v4, Lmiuix/smooth/d$a;->g:F

    .line 70
    .line 71
    invoke-virtual {v1, v3, v2, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    iget-object v2, v2, Lmiuix/smooth/d$a;->h:[Landroid/graphics/PointF;

    .line 76
    .line 77
    aget-object v2, v2, v11

    .line 78
    .line 79
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 80
    .line 81
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 82
    .line 83
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 84
    .line 85
    .line 86
    :goto_1
    iget-object v2, v0, Lmiuix/smooth/d$b;->e:Lmiuix/smooth/d$a;

    .line 87
    .line 88
    iget-wide v3, v2, Lmiuix/smooth/d$a;->c:D

    .line 89
    .line 90
    const-wide/16 v12, 0x0

    .line 91
    .line 92
    cmpl-double v3, v3, v12

    .line 93
    .line 94
    const/4 v14, 0x3

    .line 95
    const/4 v15, 0x2

    .line 96
    const/16 v16, 0x1

    .line 97
    .line 98
    if-eqz v3, :cond_4

    .line 99
    .line 100
    iget-object v2, v2, Lmiuix/smooth/d$a;->h:[Landroid/graphics/PointF;

    .line 101
    .line 102
    aget-object v3, v2, v16

    .line 103
    .line 104
    iget v4, v3, Landroid/graphics/PointF;->x:F

    .line 105
    .line 106
    iget v5, v3, Landroid/graphics/PointF;->y:F

    .line 107
    .line 108
    aget-object v3, v2, v15

    .line 109
    .line 110
    iget v6, v3, Landroid/graphics/PointF;->x:F

    .line 111
    .line 112
    iget v7, v3, Landroid/graphics/PointF;->y:F

    .line 113
    .line 114
    aget-object v2, v2, v14

    .line 115
    .line 116
    iget v8, v2, Landroid/graphics/PointF;->x:F

    .line 117
    .line 118
    iget v3, v2, Landroid/graphics/PointF;->y:F

    .line 119
    .line 120
    move-object v2, v1

    .line 121
    move/from16 v17, v3

    .line 122
    .line 123
    move v3, v4

    .line 124
    move v4, v5

    .line 125
    move v5, v6

    .line 126
    move v6, v7

    .line 127
    move v7, v8

    .line 128
    move/from16 v8, v17

    .line 129
    .line 130
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 131
    .line 132
    .line 133
    :cond_4
    iget v2, v0, Lmiuix/smooth/d$b;->a:F

    .line 134
    .line 135
    iget-object v3, v0, Lmiuix/smooth/d$b;->e:Lmiuix/smooth/d$a;

    .line 136
    .line 137
    iget v3, v3, Lmiuix/smooth/d$a;->b:F

    .line 138
    .line 139
    iget-object v4, v0, Lmiuix/smooth/d$b;->f:Lmiuix/smooth/d$a;

    .line 140
    .line 141
    iget v4, v4, Lmiuix/smooth/d$a;->b:F

    .line 142
    .line 143
    iget-wide v5, v0, Lmiuix/smooth/d$b;->c:D

    .line 144
    .line 145
    iget v7, v0, Lmiuix/smooth/d$b;->d:F

    .line 146
    .line 147
    move/from16 v18, v2

    .line 148
    .line 149
    move/from16 v19, v3

    .line 150
    .line 151
    move/from16 v20, v4

    .line 152
    .line 153
    move-wide/from16 v21, v5

    .line 154
    .line 155
    move/from16 v23, v7

    .line 156
    .line 157
    invoke-static/range {v18 .. v23}, Lmiuix/smooth/d;->z(FFFDF)Z

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-nez v2, :cond_5

    .line 162
    .line 163
    iget-object v2, v0, Lmiuix/smooth/d$b;->f:Lmiuix/smooth/d$a;

    .line 164
    .line 165
    iget-object v2, v2, Lmiuix/smooth/d$a;->h:[Landroid/graphics/PointF;

    .line 166
    .line 167
    aget-object v2, v2, v11

    .line 168
    .line 169
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 170
    .line 171
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 172
    .line 173
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 174
    .line 175
    .line 176
    :cond_5
    iget-object v2, v0, Lmiuix/smooth/d$b;->f:Lmiuix/smooth/d$a;

    .line 177
    .line 178
    iget-wide v3, v2, Lmiuix/smooth/d$a;->c:D

    .line 179
    .line 180
    cmpl-double v3, v3, v12

    .line 181
    .line 182
    if-eqz v3, :cond_6

    .line 183
    .line 184
    iget-object v2, v2, Lmiuix/smooth/d$a;->h:[Landroid/graphics/PointF;

    .line 185
    .line 186
    aget-object v3, v2, v16

    .line 187
    .line 188
    iget v4, v3, Landroid/graphics/PointF;->x:F

    .line 189
    .line 190
    iget v5, v3, Landroid/graphics/PointF;->y:F

    .line 191
    .line 192
    aget-object v3, v2, v15

    .line 193
    .line 194
    iget v6, v3, Landroid/graphics/PointF;->x:F

    .line 195
    .line 196
    iget v7, v3, Landroid/graphics/PointF;->y:F

    .line 197
    .line 198
    aget-object v2, v2, v14

    .line 199
    .line 200
    iget v8, v2, Landroid/graphics/PointF;->x:F

    .line 201
    .line 202
    iget v3, v2, Landroid/graphics/PointF;->y:F

    .line 203
    .line 204
    move-object v2, v1

    .line 205
    move/from16 v17, v3

    .line 206
    .line 207
    move v3, v4

    .line 208
    move v4, v5

    .line 209
    move v5, v6

    .line 210
    move v6, v7

    .line 211
    move v7, v8

    .line 212
    move/from16 v8, v17

    .line 213
    .line 214
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 215
    .line 216
    .line 217
    :cond_6
    iget-object v2, v0, Lmiuix/smooth/d$b;->f:Lmiuix/smooth/d$a;

    .line 218
    .line 219
    iget v3, v2, Lmiuix/smooth/d$a;->g:F

    .line 220
    .line 221
    cmpl-float v3, v3, v10

    .line 222
    .line 223
    if-eqz v3, :cond_7

    .line 224
    .line 225
    iget-object v3, v2, Lmiuix/smooth/d$a;->a:Landroid/graphics/RectF;

    .line 226
    .line 227
    const-wide v4, 0x4012d97c7f3321d2L    # 4.71238898038469

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    iget-wide v6, v2, Lmiuix/smooth/d$a;->e:D

    .line 233
    .line 234
    add-double/2addr v6, v4

    .line 235
    invoke-static {v6, v7}, Lmiuix/smooth/d;->I(D)D

    .line 236
    .line 237
    .line 238
    move-result-wide v4

    .line 239
    double-to-float v2, v4

    .line 240
    iget-object v4, v0, Lmiuix/smooth/d$b;->f:Lmiuix/smooth/d$a;

    .line 241
    .line 242
    iget v4, v4, Lmiuix/smooth/d$a;->g:F

    .line 243
    .line 244
    invoke-virtual {v1, v3, v2, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 245
    .line 246
    .line 247
    :cond_7
    iget-object v2, v0, Lmiuix/smooth/d$b;->f:Lmiuix/smooth/d$a;

    .line 248
    .line 249
    iget-wide v3, v2, Lmiuix/smooth/d$a;->d:D

    .line 250
    .line 251
    cmpl-double v3, v3, v12

    .line 252
    .line 253
    if-eqz v3, :cond_8

    .line 254
    .line 255
    iget-object v2, v2, Lmiuix/smooth/d$a;->i:[Landroid/graphics/PointF;

    .line 256
    .line 257
    aget-object v3, v2, v16

    .line 258
    .line 259
    iget v4, v3, Landroid/graphics/PointF;->x:F

    .line 260
    .line 261
    iget v5, v3, Landroid/graphics/PointF;->y:F

    .line 262
    .line 263
    aget-object v3, v2, v15

    .line 264
    .line 265
    iget v6, v3, Landroid/graphics/PointF;->x:F

    .line 266
    .line 267
    iget v7, v3, Landroid/graphics/PointF;->y:F

    .line 268
    .line 269
    aget-object v2, v2, v14

    .line 270
    .line 271
    iget v8, v2, Landroid/graphics/PointF;->x:F

    .line 272
    .line 273
    iget v3, v2, Landroid/graphics/PointF;->y:F

    .line 274
    .line 275
    move-object v2, v1

    .line 276
    move/from16 v17, v3

    .line 277
    .line 278
    move v3, v4

    .line 279
    move v4, v5

    .line 280
    move v5, v6

    .line 281
    move v6, v7

    .line 282
    move v7, v8

    .line 283
    move/from16 v8, v17

    .line 284
    .line 285
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 286
    .line 287
    .line 288
    :cond_8
    iget v2, v0, Lmiuix/smooth/d$b;->b:F

    .line 289
    .line 290
    iget-object v3, v0, Lmiuix/smooth/d$b;->f:Lmiuix/smooth/d$a;

    .line 291
    .line 292
    iget v3, v3, Lmiuix/smooth/d$a;->b:F

    .line 293
    .line 294
    iget-object v4, v0, Lmiuix/smooth/d$b;->g:Lmiuix/smooth/d$a;

    .line 295
    .line 296
    iget v4, v4, Lmiuix/smooth/d$a;->b:F

    .line 297
    .line 298
    iget-wide v5, v0, Lmiuix/smooth/d$b;->c:D

    .line 299
    .line 300
    iget v7, v0, Lmiuix/smooth/d$b;->d:F

    .line 301
    .line 302
    move/from16 v18, v2

    .line 303
    .line 304
    move/from16 v19, v3

    .line 305
    .line 306
    move/from16 v20, v4

    .line 307
    .line 308
    move-wide/from16 v21, v5

    .line 309
    .line 310
    move/from16 v23, v7

    .line 311
    .line 312
    invoke-static/range {v18 .. v23}, Lmiuix/smooth/d;->y(FFFDF)Z

    .line 313
    .line 314
    .line 315
    move-result v2

    .line 316
    if-nez v2, :cond_9

    .line 317
    .line 318
    iget-object v2, v0, Lmiuix/smooth/d$b;->g:Lmiuix/smooth/d$a;

    .line 319
    .line 320
    iget-object v2, v2, Lmiuix/smooth/d$a;->i:[Landroid/graphics/PointF;

    .line 321
    .line 322
    aget-object v2, v2, v11

    .line 323
    .line 324
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 325
    .line 326
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 327
    .line 328
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 329
    .line 330
    .line 331
    :cond_9
    iget-object v2, v0, Lmiuix/smooth/d$b;->g:Lmiuix/smooth/d$a;

    .line 332
    .line 333
    iget-wide v3, v2, Lmiuix/smooth/d$a;->d:D

    .line 334
    .line 335
    cmpl-double v3, v3, v12

    .line 336
    .line 337
    if-eqz v3, :cond_a

    .line 338
    .line 339
    iget-object v2, v2, Lmiuix/smooth/d$a;->i:[Landroid/graphics/PointF;

    .line 340
    .line 341
    aget-object v3, v2, v16

    .line 342
    .line 343
    iget v4, v3, Landroid/graphics/PointF;->x:F

    .line 344
    .line 345
    iget v5, v3, Landroid/graphics/PointF;->y:F

    .line 346
    .line 347
    aget-object v3, v2, v15

    .line 348
    .line 349
    iget v6, v3, Landroid/graphics/PointF;->x:F

    .line 350
    .line 351
    iget v7, v3, Landroid/graphics/PointF;->y:F

    .line 352
    .line 353
    aget-object v2, v2, v14

    .line 354
    .line 355
    iget v8, v2, Landroid/graphics/PointF;->x:F

    .line 356
    .line 357
    iget v3, v2, Landroid/graphics/PointF;->y:F

    .line 358
    .line 359
    move-object v2, v1

    .line 360
    move/from16 v17, v3

    .line 361
    .line 362
    move v3, v4

    .line 363
    move v4, v5

    .line 364
    move v5, v6

    .line 365
    move v6, v7

    .line 366
    move v7, v8

    .line 367
    move/from16 v8, v17

    .line 368
    .line 369
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 370
    .line 371
    .line 372
    :cond_a
    iget-object v2, v0, Lmiuix/smooth/d$b;->g:Lmiuix/smooth/d$a;

    .line 373
    .line 374
    iget v3, v2, Lmiuix/smooth/d$a;->g:F

    .line 375
    .line 376
    cmpl-float v3, v3, v10

    .line 377
    .line 378
    if-eqz v3, :cond_b

    .line 379
    .line 380
    iget-object v3, v2, Lmiuix/smooth/d$a;->a:Landroid/graphics/RectF;

    .line 381
    .line 382
    iget-wide v4, v2, Lmiuix/smooth/d$a;->f:D

    .line 383
    .line 384
    invoke-static {v4, v5}, Lmiuix/smooth/d;->I(D)D

    .line 385
    .line 386
    .line 387
    move-result-wide v4

    .line 388
    double-to-float v2, v4

    .line 389
    iget-object v4, v0, Lmiuix/smooth/d$b;->g:Lmiuix/smooth/d$a;

    .line 390
    .line 391
    iget v4, v4, Lmiuix/smooth/d$a;->g:F

    .line 392
    .line 393
    invoke-virtual {v1, v3, v2, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 394
    .line 395
    .line 396
    :cond_b
    iget-object v2, v0, Lmiuix/smooth/d$b;->g:Lmiuix/smooth/d$a;

    .line 397
    .line 398
    iget-wide v3, v2, Lmiuix/smooth/d$a;->c:D

    .line 399
    .line 400
    cmpl-double v3, v3, v12

    .line 401
    .line 402
    if-eqz v3, :cond_c

    .line 403
    .line 404
    iget-object v2, v2, Lmiuix/smooth/d$a;->h:[Landroid/graphics/PointF;

    .line 405
    .line 406
    aget-object v3, v2, v16

    .line 407
    .line 408
    iget v4, v3, Landroid/graphics/PointF;->x:F

    .line 409
    .line 410
    iget v5, v3, Landroid/graphics/PointF;->y:F

    .line 411
    .line 412
    aget-object v3, v2, v15

    .line 413
    .line 414
    iget v6, v3, Landroid/graphics/PointF;->x:F

    .line 415
    .line 416
    iget v7, v3, Landroid/graphics/PointF;->y:F

    .line 417
    .line 418
    aget-object v2, v2, v14

    .line 419
    .line 420
    iget v8, v2, Landroid/graphics/PointF;->x:F

    .line 421
    .line 422
    iget v3, v2, Landroid/graphics/PointF;->y:F

    .line 423
    .line 424
    move-object v2, v1

    .line 425
    move/from16 v17, v3

    .line 426
    .line 427
    move v3, v4

    .line 428
    move v4, v5

    .line 429
    move v5, v6

    .line 430
    move v6, v7

    .line 431
    move v7, v8

    .line 432
    move/from16 v8, v17

    .line 433
    .line 434
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 435
    .line 436
    .line 437
    :cond_c
    iget v2, v0, Lmiuix/smooth/d$b;->a:F

    .line 438
    .line 439
    iget-object v3, v0, Lmiuix/smooth/d$b;->g:Lmiuix/smooth/d$a;

    .line 440
    .line 441
    iget v3, v3, Lmiuix/smooth/d$a;->b:F

    .line 442
    .line 443
    iget-object v4, v0, Lmiuix/smooth/d$b;->h:Lmiuix/smooth/d$a;

    .line 444
    .line 445
    iget v4, v4, Lmiuix/smooth/d$a;->b:F

    .line 446
    .line 447
    iget-wide v5, v0, Lmiuix/smooth/d$b;->c:D

    .line 448
    .line 449
    iget v7, v0, Lmiuix/smooth/d$b;->d:F

    .line 450
    .line 451
    move/from16 v18, v2

    .line 452
    .line 453
    move/from16 v19, v3

    .line 454
    .line 455
    move/from16 v20, v4

    .line 456
    .line 457
    move-wide/from16 v21, v5

    .line 458
    .line 459
    move/from16 v23, v7

    .line 460
    .line 461
    invoke-static/range {v18 .. v23}, Lmiuix/smooth/d;->z(FFFDF)Z

    .line 462
    .line 463
    .line 464
    move-result v2

    .line 465
    if-nez v2, :cond_d

    .line 466
    .line 467
    iget-object v2, v0, Lmiuix/smooth/d$b;->h:Lmiuix/smooth/d$a;

    .line 468
    .line 469
    iget-object v2, v2, Lmiuix/smooth/d$a;->h:[Landroid/graphics/PointF;

    .line 470
    .line 471
    aget-object v2, v2, v11

    .line 472
    .line 473
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 474
    .line 475
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 476
    .line 477
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 478
    .line 479
    .line 480
    :cond_d
    iget-object v2, v0, Lmiuix/smooth/d$b;->h:Lmiuix/smooth/d$a;

    .line 481
    .line 482
    iget-wide v3, v2, Lmiuix/smooth/d$a;->c:D

    .line 483
    .line 484
    cmpl-double v3, v3, v12

    .line 485
    .line 486
    if-eqz v3, :cond_e

    .line 487
    .line 488
    iget-object v2, v2, Lmiuix/smooth/d$a;->h:[Landroid/graphics/PointF;

    .line 489
    .line 490
    aget-object v3, v2, v16

    .line 491
    .line 492
    iget v4, v3, Landroid/graphics/PointF;->x:F

    .line 493
    .line 494
    iget v5, v3, Landroid/graphics/PointF;->y:F

    .line 495
    .line 496
    aget-object v3, v2, v15

    .line 497
    .line 498
    iget v6, v3, Landroid/graphics/PointF;->x:F

    .line 499
    .line 500
    iget v7, v3, Landroid/graphics/PointF;->y:F

    .line 501
    .line 502
    aget-object v2, v2, v14

    .line 503
    .line 504
    iget v8, v2, Landroid/graphics/PointF;->x:F

    .line 505
    .line 506
    iget v3, v2, Landroid/graphics/PointF;->y:F

    .line 507
    .line 508
    move-object v2, v1

    .line 509
    move/from16 v17, v3

    .line 510
    .line 511
    move v3, v4

    .line 512
    move v4, v5

    .line 513
    move v5, v6

    .line 514
    move v6, v7

    .line 515
    move v7, v8

    .line 516
    move/from16 v8, v17

    .line 517
    .line 518
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 519
    .line 520
    .line 521
    :cond_e
    iget-object v2, v0, Lmiuix/smooth/d$b;->h:Lmiuix/smooth/d$a;

    .line 522
    .line 523
    iget v3, v2, Lmiuix/smooth/d$a;->g:F

    .line 524
    .line 525
    cmpl-float v3, v3, v10

    .line 526
    .line 527
    if-eqz v3, :cond_f

    .line 528
    .line 529
    iget-object v3, v2, Lmiuix/smooth/d$a;->a:Landroid/graphics/RectF;

    .line 530
    .line 531
    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    iget-wide v6, v2, Lmiuix/smooth/d$a;->e:D

    .line 537
    .line 538
    add-double/2addr v6, v4

    .line 539
    invoke-static {v6, v7}, Lmiuix/smooth/d;->I(D)D

    .line 540
    .line 541
    .line 542
    move-result-wide v4

    .line 543
    double-to-float v2, v4

    .line 544
    iget-object v4, v0, Lmiuix/smooth/d$b;->h:Lmiuix/smooth/d$a;

    .line 545
    .line 546
    iget v4, v4, Lmiuix/smooth/d$a;->g:F

    .line 547
    .line 548
    invoke-virtual {v1, v3, v2, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 549
    .line 550
    .line 551
    :cond_f
    iget-object v2, v0, Lmiuix/smooth/d$b;->h:Lmiuix/smooth/d$a;

    .line 552
    .line 553
    iget-wide v3, v2, Lmiuix/smooth/d$a;->d:D

    .line 554
    .line 555
    cmpl-double v3, v3, v12

    .line 556
    .line 557
    if-eqz v3, :cond_10

    .line 558
    .line 559
    iget-object v2, v2, Lmiuix/smooth/d$a;->i:[Landroid/graphics/PointF;

    .line 560
    .line 561
    aget-object v3, v2, v16

    .line 562
    .line 563
    iget v4, v3, Landroid/graphics/PointF;->x:F

    .line 564
    .line 565
    iget v5, v3, Landroid/graphics/PointF;->y:F

    .line 566
    .line 567
    aget-object v3, v2, v15

    .line 568
    .line 569
    iget v6, v3, Landroid/graphics/PointF;->x:F

    .line 570
    .line 571
    iget v7, v3, Landroid/graphics/PointF;->y:F

    .line 572
    .line 573
    aget-object v2, v2, v14

    .line 574
    .line 575
    iget v8, v2, Landroid/graphics/PointF;->x:F

    .line 576
    .line 577
    iget v10, v2, Landroid/graphics/PointF;->y:F

    .line 578
    .line 579
    move-object v2, v1

    .line 580
    move v3, v4

    .line 581
    move v4, v5

    .line 582
    move v5, v6

    .line 583
    move v6, v7

    .line 584
    move v7, v8

    .line 585
    move v8, v10

    .line 586
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 587
    .line 588
    .line 589
    :cond_10
    iget v2, v0, Lmiuix/smooth/d$b;->b:F

    .line 590
    .line 591
    iget-object v3, v0, Lmiuix/smooth/d$b;->h:Lmiuix/smooth/d$a;

    .line 592
    .line 593
    iget v3, v3, Lmiuix/smooth/d$a;->b:F

    .line 594
    .line 595
    iget-object v4, v0, Lmiuix/smooth/d$b;->e:Lmiuix/smooth/d$a;

    .line 596
    .line 597
    iget v4, v4, Lmiuix/smooth/d$a;->b:F

    .line 598
    .line 599
    iget-wide v5, v0, Lmiuix/smooth/d$b;->c:D

    .line 600
    .line 601
    iget v7, v0, Lmiuix/smooth/d$b;->d:F

    .line 602
    .line 603
    move/from16 v17, v2

    .line 604
    .line 605
    move/from16 v18, v3

    .line 606
    .line 607
    move/from16 v19, v4

    .line 608
    .line 609
    move-wide/from16 v20, v5

    .line 610
    .line 611
    move/from16 v22, v7

    .line 612
    .line 613
    invoke-static/range {v17 .. v22}, Lmiuix/smooth/d;->y(FFFDF)Z

    .line 614
    .line 615
    .line 616
    move-result v2

    .line 617
    if-nez v2, :cond_11

    .line 618
    .line 619
    iget-object v2, v0, Lmiuix/smooth/d$b;->e:Lmiuix/smooth/d$a;

    .line 620
    .line 621
    iget-object v2, v2, Lmiuix/smooth/d$a;->i:[Landroid/graphics/PointF;

    .line 622
    .line 623
    aget-object v2, v2, v11

    .line 624
    .line 625
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 626
    .line 627
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 628
    .line 629
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 630
    .line 631
    .line 632
    :cond_11
    iget-object v0, v0, Lmiuix/smooth/d$b;->e:Lmiuix/smooth/d$a;

    .line 633
    .line 634
    iget-wide v2, v0, Lmiuix/smooth/d$a;->d:D

    .line 635
    .line 636
    cmpl-double v2, v2, v12

    .line 637
    .line 638
    if-eqz v2, :cond_12

    .line 639
    .line 640
    iget-object v0, v0, Lmiuix/smooth/d$a;->i:[Landroid/graphics/PointF;

    .line 641
    .line 642
    aget-object v2, v0, v16

    .line 643
    .line 644
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 645
    .line 646
    iget v4, v2, Landroid/graphics/PointF;->y:F

    .line 647
    .line 648
    aget-object v2, v0, v15

    .line 649
    .line 650
    iget v5, v2, Landroid/graphics/PointF;->x:F

    .line 651
    .line 652
    iget v6, v2, Landroid/graphics/PointF;->y:F

    .line 653
    .line 654
    aget-object v0, v0, v14

    .line 655
    .line 656
    iget v7, v0, Landroid/graphics/PointF;->x:F

    .line 657
    .line 658
    iget v8, v0, Landroid/graphics/PointF;->y:F

    .line 659
    .line 660
    move-object v2, v1

    .line 661
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 662
    .line 663
    .line 664
    :cond_12
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 665
    .line 666
    .line 667
    return-object v1
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

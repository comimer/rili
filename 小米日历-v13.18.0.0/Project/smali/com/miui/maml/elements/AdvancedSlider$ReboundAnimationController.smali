.class abstract Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;
.super Ljava/lang/Object;
.source "AdvancedSlider.java"

# interfaces
.implements Lcom/miui/maml/elements/ITicker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ReboundAnimationController"
.end annotation


# instance fields
.field private mBounceStartPointIndex:I

.field private mEndPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

.field private mPreDistance:J

.field protected mStartTime:J

.field private mStartX:F

.field private mStartY:F

.field protected mTotalDistance:D

.field final synthetic this$0:Lcom/miui/maml/elements/AdvancedSlider;


# direct methods
.method private constructor <init>(Lcom/miui/maml/elements/AdvancedSlider;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/maml/elements/AdvancedSlider;Lcom/miui/maml/elements/AdvancedSlider$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;-><init>(Lcom/miui/maml/elements/AdvancedSlider;)V

    return-void
.end method

.method private getPoint(FFFFJ)Lcom/miui/maml/util/Utils$Point;
    .locals 7

    .line 1
    new-instance v0, Lcom/miui/maml/util/Utils$Point;

    .line 2
    .line 3
    float-to-double v1, p1

    .line 4
    float-to-double p1, p2

    .line 5
    invoke-direct {v0, v1, v2, p1, p2}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lcom/miui/maml/util/Utils$Point;

    .line 9
    .line 10
    float-to-double p2, p3

    .line 11
    float-to-double v1, p4

    .line 12
    invoke-direct {p1, p2, p3, v1, v2}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    .line 13
    .line 14
    .line 15
    const/4 p2, 0x1

    .line 16
    invoke-static {v0, p1, p2}, Lcom/miui/maml/util/Utils;->Dist(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Z)D

    .line 17
    .line 18
    .line 19
    move-result-wide p2

    .line 20
    long-to-double p4, p5

    .line 21
    cmpl-double p6, p4, p2

    .line 22
    .line 23
    if-ltz p6, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    return-object p1

    .line 27
    :cond_0
    sub-double p4, p2, p4

    .line 28
    .line 29
    div-double/2addr p4, p2

    .line 30
    iget-wide p2, p1, Lcom/miui/maml/util/Utils$Point;->x:D

    .line 31
    .line 32
    iget-wide v1, v0, Lcom/miui/maml/util/Utils$Point;->x:D

    .line 33
    .line 34
    sub-double/2addr p2, v1

    .line 35
    mul-double/2addr p2, p4

    .line 36
    iget-wide v3, p1, Lcom/miui/maml/util/Utils$Point;->y:D

    .line 37
    .line 38
    iget-wide v5, v0, Lcom/miui/maml/util/Utils$Point;->y:D

    .line 39
    .line 40
    sub-double/2addr v3, v5

    .line 41
    mul-double/2addr v3, p4

    .line 42
    new-instance p1, Lcom/miui/maml/util/Utils$Point;

    .line 43
    .line 44
    add-double/2addr v1, p2

    .line 45
    add-double/2addr v5, v3

    .line 46
    invoke-direct {p1, v1, v2, v5, v6}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    .line 47
    .line 48
    .line 49
    return-object p1
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
.end method


# virtual methods
.method protected abstract getDistance(J)J
.end method

.method public init()V
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    .line 4
    .line 5
    return-void
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

.method public isRunning()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-ltz v0, :cond_0

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
.end method

.method protected onMove(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider;->access$300(Lcom/miui/maml/elements/AdvancedSlider;FF)V

    .line 4
    .line 5
    .line 6
    return-void
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
.end method

.method protected onStart()V
    .locals 0

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    .line 4
    .line 5
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/miui/maml/elements/AdvancedSlider;->access$200(Lcom/miui/maml/elements/AdvancedSlider;)V

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
.end method

.method public start(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)V
    .locals 11

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    .line 4
    .line 5
    iput-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mEndPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getOffsetX()F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getAnchorX()F

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    add-float/2addr v0, v1

    .line 28
    iput v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartX:F

    .line 29
    .line 30
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getOffsetY()F

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 41
    .line 42
    invoke-static {v1}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getAnchorY()F

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    add-float/2addr v0, v1

    .line 51
    iput v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartY:F

    .line 52
    .line 53
    const/4 v1, -0x1

    .line 54
    iput v1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mBounceStartPointIndex:I

    .line 55
    .line 56
    const-wide/16 v1, 0x0

    .line 57
    .line 58
    iput-wide v1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    .line 59
    .line 60
    new-instance v1, Lcom/miui/maml/util/Utils$Point;

    .line 61
    .line 62
    iget v2, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartX:F

    .line 63
    .line 64
    float-to-double v2, v2

    .line 65
    float-to-double v4, v0

    .line 66
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    .line 67
    .line 68
    .line 69
    const/4 v0, 0x1

    .line 70
    if-eqz p1, :cond_1

    .line 71
    .line 72
    invoke-static {p1}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->access$100(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    if-eqz v2, :cond_1

    .line 77
    .line 78
    move v2, v0

    .line 79
    :goto_0
    invoke-static {p1}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->access$100(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-ge v2, v3, :cond_2

    .line 88
    .line 89
    invoke-static {p1}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->access$100(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    add-int/lit8 v4, v2, -0x1

    .line 94
    .line 95
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    check-cast v3, Lcom/miui/maml/elements/AdvancedSlider$Position;

    .line 100
    .line 101
    invoke-static {p1}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->access$100(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    check-cast v5, Lcom/miui/maml/elements/AdvancedSlider$Position;

    .line 110
    .line 111
    new-instance v6, Lcom/miui/maml/util/Utils$Point;

    .line 112
    .line 113
    invoke-virtual {v3}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getX()F

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    float-to-double v7, v7

    .line 118
    invoke-virtual {v3}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getY()F

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    float-to-double v9, v3

    .line 123
    invoke-direct {v6, v7, v8, v9, v10}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    .line 124
    .line 125
    .line 126
    new-instance v3, Lcom/miui/maml/util/Utils$Point;

    .line 127
    .line 128
    invoke-virtual {v5}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getX()F

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    float-to-double v7, v7

    .line 133
    invoke-virtual {v5}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getY()F

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    float-to-double v9, v5

    .line 138
    invoke-direct {v3, v7, v8, v9, v10}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    .line 139
    .line 140
    .line 141
    const/4 v5, 0x0

    .line 142
    invoke-static {v6, v3, v1, v5}, Lcom/miui/maml/util/Utils;->pointProjectionOnSegment(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Z)Lcom/miui/maml/util/Utils$Point;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    if-eqz v5, :cond_0

    .line 147
    .line 148
    iput v4, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mBounceStartPointIndex:I

    .line 149
    .line 150
    iget-wide v1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    .line 151
    .line 152
    invoke-static {v6, v5, v0}, Lcom/miui/maml/util/Utils;->Dist(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Z)D

    .line 153
    .line 154
    .line 155
    move-result-wide v3

    .line 156
    add-double/2addr v1, v3

    .line 157
    iput-wide v1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_0
    iget-wide v4, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    .line 161
    .line 162
    invoke-static {v6, v3, v0}, Lcom/miui/maml/util/Utils;->Dist(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Z)D

    .line 163
    .line 164
    .line 165
    move-result-wide v6

    .line 166
    add-double/2addr v4, v6

    .line 167
    iput-wide v4, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    .line 168
    .line 169
    add-int/lit8 v2, v2, 0x1

    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_1
    new-instance p1, Lcom/miui/maml/util/Utils$Point;

    .line 173
    .line 174
    iget-object v2, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 175
    .line 176
    invoke-static {v2}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-virtual {v2}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getAnchorX()F

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    float-to-double v2, v2

    .line 185
    iget-object v4, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 186
    .line 187
    invoke-static {v4}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    invoke-virtual {v4}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getAnchorY()F

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    float-to-double v4, v4

    .line 196
    invoke-direct {p1, v2, v3, v4, v5}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    .line 197
    .line 198
    .line 199
    invoke-static {p1, v1, v0}, Lcom/miui/maml/util/Utils;->Dist(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Z)D

    .line 200
    .line 201
    .line 202
    move-result-wide v0

    .line 203
    iput-wide v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    .line 204
    .line 205
    :cond_2
    :goto_1
    iget-wide v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    .line 206
    .line 207
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    .line 208
    .line 209
    cmpg-double p1, v0, v2

    .line 210
    .line 211
    if-gez p1, :cond_3

    .line 212
    .line 213
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->onStop()V

    .line 214
    .line 215
    .line 216
    return-void

    .line 217
    :cond_3
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->onStart()V

    .line 218
    .line 219
    .line 220
    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 221
    .line 222
    invoke-virtual {p1}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 223
    .line 224
    .line 225
    return-void
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

.method public stopRunning()V
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    .line 4
    .line 5
    return-void
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

.method public tick(J)V
    .locals 13

    .line 1
    iget-wide v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-gez v4, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    cmp-long v4, v0, v2

    .line 11
    .line 12
    if-nez v4, :cond_1

    .line 13
    .line 14
    iput-wide p1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    .line 15
    .line 16
    iput-wide v2, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mPreDistance:J

    .line 17
    .line 18
    goto/16 :goto_3

    .line 19
    .line 20
    :cond_1
    sub-long/2addr p1, v0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->getDistance(J)J

    .line 22
    .line 23
    .line 24
    move-result-wide p1

    .line 25
    iget-wide v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    .line 26
    .line 27
    cmp-long v0, v0, v2

    .line 28
    .line 29
    if-gez v0, :cond_2

    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mEndPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    .line 33
    .line 34
    if-eqz v0, :cond_6

    .line 35
    .line 36
    invoke-static {v0}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->access$100(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-nez v0, :cond_3

    .line 41
    .line 42
    goto/16 :goto_1

    .line 43
    .line 44
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getOffsetX()F

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 55
    .line 56
    invoke-static {v1}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getAnchorX()F

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    add-float/2addr v0, v1

    .line 65
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 66
    .line 67
    invoke-static {v1}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getOffsetY()F

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    iget-object v2, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 76
    .line 77
    invoke-static {v2}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v2}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getAnchorY()F

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    add-float/2addr v1, v2

    .line 86
    iget-wide v2, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mPreDistance:J

    .line 87
    .line 88
    sub-long v2, p1, v2

    .line 89
    .line 90
    iget v4, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mBounceStartPointIndex:I

    .line 91
    .line 92
    :goto_0
    if-ltz v4, :cond_8

    .line 93
    .line 94
    iget-object v5, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mEndPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    .line 95
    .line 96
    invoke-static {v5}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->access$100(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    move-object v12, v5

    .line 105
    check-cast v12, Lcom/miui/maml/elements/AdvancedSlider$Position;

    .line 106
    .line 107
    invoke-virtual {v12}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getX()F

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    invoke-virtual {v12}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getY()F

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    move-object v5, p0

    .line 116
    move v8, v0

    .line 117
    move v9, v1

    .line 118
    move-wide v10, v2

    .line 119
    invoke-direct/range {v5 .. v11}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->getPoint(FFFFJ)Lcom/miui/maml/util/Utils$Point;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    if-nez v5, :cond_5

    .line 124
    .line 125
    if-nez v4, :cond_4

    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->onStop()V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_4
    new-instance v5, Lcom/miui/maml/util/Utils$Point;

    .line 132
    .line 133
    invoke-virtual {v12}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getX()F

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    float-to-double v6, v6

    .line 138
    invoke-virtual {v12}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getY()F

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    float-to-double v8, v8

    .line 143
    invoke-direct {v5, v6, v7, v8, v9}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    .line 144
    .line 145
    .line 146
    new-instance v6, Lcom/miui/maml/util/Utils$Point;

    .line 147
    .line 148
    float-to-double v7, v0

    .line 149
    float-to-double v0, v1

    .line 150
    invoke-direct {v6, v7, v8, v0, v1}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    .line 151
    .line 152
    .line 153
    long-to-double v0, v2

    .line 154
    const/4 v2, 0x1

    .line 155
    invoke-static {v5, v6, v2}, Lcom/miui/maml/util/Utils;->Dist(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Z)D

    .line 156
    .line 157
    .line 158
    move-result-wide v2

    .line 159
    sub-double/2addr v0, v2

    .line 160
    double-to-long v2, v0

    .line 161
    invoke-virtual {v12}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getX()F

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    invoke-virtual {v12}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getY()F

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    add-int/lit8 v4, v4, -0x1

    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_5
    iput v4, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mBounceStartPointIndex:I

    .line 173
    .line 174
    iget-wide v0, v5, Lcom/miui/maml/util/Utils$Point;->x:D

    .line 175
    .line 176
    double-to-float v0, v0

    .line 177
    iget-wide v1, v5, Lcom/miui/maml/util/Utils$Point;->y:D

    .line 178
    .line 179
    double-to-float v1, v1

    .line 180
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->onMove(FF)V

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 185
    .line 186
    invoke-static {v0}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getAnchorX()F

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 195
    .line 196
    invoke-static {v0}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getAnchorY()F

    .line 201
    .line 202
    .line 203
    move-result v6

    .line 204
    iget v7, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartX:F

    .line 205
    .line 206
    iget v8, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartY:F

    .line 207
    .line 208
    move-object v4, p0

    .line 209
    move-wide v9, p1

    .line 210
    invoke-direct/range {v4 .. v10}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->getPoint(FFFFJ)Lcom/miui/maml/util/Utils$Point;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    if-nez v0, :cond_7

    .line 215
    .line 216
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->onStop()V

    .line 217
    .line 218
    .line 219
    goto :goto_2

    .line 220
    :cond_7
    iget-wide v1, v0, Lcom/miui/maml/util/Utils$Point;->x:D

    .line 221
    .line 222
    double-to-float v1, v1

    .line 223
    iget-wide v2, v0, Lcom/miui/maml/util/Utils$Point;->y:D

    .line 224
    .line 225
    double-to-float v0, v2

    .line 226
    invoke-virtual {p0, v1, v0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->onMove(FF)V

    .line 227
    .line 228
    .line 229
    :cond_8
    :goto_2
    iput-wide p1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mPreDistance:J

    .line 230
    .line 231
    :goto_3
    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 232
    .line 233
    invoke-virtual {p1}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 234
    .line 235
    .line 236
    return-void
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

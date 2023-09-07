.class public Lcom/miui/maml/animation/interpolater/InterpolatorFactory;
.super Ljava/lang/Object;
.source "InterpolatorFactory.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "InterpolatorFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;[Lcom/miui/maml/data/Expression;)Landroid/view/animation/Interpolator;
    .locals 11

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    array-length v3, p1

    .line 14
    if-lez v3, :cond_1

    .line 15
    .line 16
    move v3, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    move v3, v0

    .line 19
    :goto_0
    const/16 v4, 0x28

    .line 20
    .line 21
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const/16 v5, 0x29

    .line 26
    .line 27
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    const/4 v6, 0x0

    .line 32
    const/4 v7, -0x1

    .line 33
    if-eq v4, v7, :cond_4

    .line 34
    .line 35
    if-eq v5, v7, :cond_4

    .line 36
    .line 37
    add-int/2addr v4, v2

    .line 38
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    const-string v5, ","

    .line 43
    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eq v5, v7, :cond_2

    .line 49
    .line 50
    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    add-int/2addr v5, v2

    .line 55
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    move-object v7, v5

    .line 60
    move v5, v2

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    const-string v5, ""

    .line 63
    .line 64
    move-object v7, v5

    .line 65
    move v5, v0

    .line 66
    move-object v0, v4

    .line 67
    :goto_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 68
    .line 69
    .line 70
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    if-eqz v5, :cond_3

    .line 72
    .line 73
    :try_start_1
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 74
    .line 75
    .line 76
    move-result v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
    goto :goto_2

    .line 78
    :catch_0
    move v0, v6

    .line 79
    :catch_1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v8, "parse error:"

    .line 85
    .line 86
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    const-string v7, "InterpolatorFactory"

    .line 97
    .line 98
    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    :cond_3
    :goto_2
    move v10, v6

    .line 102
    move v6, v0

    .line 103
    move v0, v2

    .line 104
    move v2, v10

    .line 105
    goto :goto_3

    .line 106
    :cond_4
    move v5, v0

    .line 107
    move v2, v6

    .line 108
    :goto_3
    const-string v4, "BackEaseIn"

    .line 109
    .line 110
    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    if-eqz v7, :cond_5

    .line 115
    .line 116
    new-instance p0, Lcom/miui/maml/animation/interpolater/BackEaseInInterpolater;

    .line 117
    .line 118
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/BackEaseInInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    .line 119
    .line 120
    .line 121
    return-object p0

    .line 122
    :cond_5
    const-string v7, "BackEaseOut"

    .line 123
    .line 124
    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 125
    .line 126
    .line 127
    move-result v8

    .line 128
    if-eqz v8, :cond_6

    .line 129
    .line 130
    new-instance p0, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;

    .line 131
    .line 132
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    .line 133
    .line 134
    .line 135
    return-object p0

    .line 136
    :cond_6
    const-string v8, "BackEaseInOut"

    .line 137
    .line 138
    invoke-virtual {v8, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result v9

    .line 142
    if-eqz v9, :cond_7

    .line 143
    .line 144
    new-instance p0, Lcom/miui/maml/animation/interpolater/BackEaseInOutInterpolater;

    .line 145
    .line 146
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/BackEaseInOutInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    .line 147
    .line 148
    .line 149
    return-object p0

    .line 150
    :cond_7
    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 151
    .line 152
    .line 153
    move-result v8

    .line 154
    if-eqz v8, :cond_9

    .line 155
    .line 156
    if-eqz v3, :cond_8

    .line 157
    .line 158
    new-instance p0, Lcom/miui/maml/animation/interpolater/BackEaseInOutInterpolater;

    .line 159
    .line 160
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/BackEaseInOutInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    .line 161
    .line 162
    .line 163
    return-object p0

    .line 164
    :cond_8
    if-eqz v0, :cond_32

    .line 165
    .line 166
    new-instance p0, Lcom/miui/maml/animation/interpolater/BackEaseInOutInterpolater;

    .line 167
    .line 168
    invoke-direct {p0, v6}, Lcom/miui/maml/animation/interpolater/BackEaseInOutInterpolater;-><init>(F)V

    .line 169
    .line 170
    .line 171
    return-object p0

    .line 172
    :cond_9
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    if-eqz v4, :cond_b

    .line 177
    .line 178
    if-eqz v3, :cond_a

    .line 179
    .line 180
    new-instance p0, Lcom/miui/maml/animation/interpolater/BackEaseInInterpolater;

    .line 181
    .line 182
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/BackEaseInInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    .line 183
    .line 184
    .line 185
    return-object p0

    .line 186
    :cond_a
    if-eqz v0, :cond_32

    .line 187
    .line 188
    new-instance p0, Lcom/miui/maml/animation/interpolater/BackEaseInInterpolater;

    .line 189
    .line 190
    invoke-direct {p0, v6}, Lcom/miui/maml/animation/interpolater/BackEaseInInterpolater;-><init>(F)V

    .line 191
    .line 192
    .line 193
    return-object p0

    .line 194
    :cond_b
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 195
    .line 196
    .line 197
    move-result v4

    .line 198
    if-eqz v4, :cond_d

    .line 199
    .line 200
    if-eqz v3, :cond_c

    .line 201
    .line 202
    new-instance p0, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;

    .line 203
    .line 204
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    .line 205
    .line 206
    .line 207
    return-object p0

    .line 208
    :cond_c
    if-eqz v0, :cond_32

    .line 209
    .line 210
    new-instance p0, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;

    .line 211
    .line 212
    invoke-direct {p0, v6}, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;-><init>(F)V

    .line 213
    .line 214
    .line 215
    return-object p0

    .line 216
    :cond_d
    const-string v0, "BounceEaseIn"

    .line 217
    .line 218
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    if-eqz v0, :cond_e

    .line 223
    .line 224
    new-instance p0, Lcom/miui/maml/animation/interpolater/BounceEaseInInterpolater;

    .line 225
    .line 226
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/BounceEaseInInterpolater;-><init>()V

    .line 227
    .line 228
    .line 229
    return-object p0

    .line 230
    :cond_e
    const-string v0, "BounceEaseOut"

    .line 231
    .line 232
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    if-eqz v0, :cond_f

    .line 237
    .line 238
    new-instance p0, Lcom/miui/maml/animation/interpolater/BounceEaseOutInterpolater;

    .line 239
    .line 240
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/BounceEaseOutInterpolater;-><init>()V

    .line 241
    .line 242
    .line 243
    return-object p0

    .line 244
    :cond_f
    const-string v0, "BounceEaseInOut"

    .line 245
    .line 246
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    if-eqz v0, :cond_10

    .line 251
    .line 252
    new-instance p0, Lcom/miui/maml/animation/interpolater/BounceEaseInOutInterpolater;

    .line 253
    .line 254
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/BounceEaseInOutInterpolater;-><init>()V

    .line 255
    .line 256
    .line 257
    return-object p0

    .line 258
    :cond_10
    const-string v0, "CircEaseIn"

    .line 259
    .line 260
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    if-eqz v0, :cond_11

    .line 265
    .line 266
    new-instance p0, Lcom/miui/maml/animation/interpolater/CircEaseInInterpolater;

    .line 267
    .line 268
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/CircEaseInInterpolater;-><init>()V

    .line 269
    .line 270
    .line 271
    return-object p0

    .line 272
    :cond_11
    const-string v0, "CircEaseOut"

    .line 273
    .line 274
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    if-eqz v0, :cond_12

    .line 279
    .line 280
    new-instance p0, Lcom/miui/maml/animation/interpolater/CircEaseOutInterpolater;

    .line 281
    .line 282
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/CircEaseOutInterpolater;-><init>()V

    .line 283
    .line 284
    .line 285
    return-object p0

    .line 286
    :cond_12
    const-string v0, "CircEaseInOut"

    .line 287
    .line 288
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    if-eqz v0, :cond_13

    .line 293
    .line 294
    new-instance p0, Lcom/miui/maml/animation/interpolater/CircEaseInOutInterpolater;

    .line 295
    .line 296
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/CircEaseInOutInterpolater;-><init>()V

    .line 297
    .line 298
    .line 299
    return-object p0

    .line 300
    :cond_13
    const-string v0, "CubicEaseIn"

    .line 301
    .line 302
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    if-eqz v0, :cond_14

    .line 307
    .line 308
    new-instance p0, Lcom/miui/maml/animation/interpolater/CubicEaseInInterpolater;

    .line 309
    .line 310
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/CubicEaseInInterpolater;-><init>()V

    .line 311
    .line 312
    .line 313
    return-object p0

    .line 314
    :cond_14
    const-string v0, "CubicEaseOut"

    .line 315
    .line 316
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 317
    .line 318
    .line 319
    move-result v0

    .line 320
    if-eqz v0, :cond_15

    .line 321
    .line 322
    new-instance p0, Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

    .line 323
    .line 324
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;-><init>()V

    .line 325
    .line 326
    .line 327
    return-object p0

    .line 328
    :cond_15
    const-string v0, "CubicEaseInOut"

    .line 329
    .line 330
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    if-eqz v0, :cond_16

    .line 335
    .line 336
    new-instance p0, Lcom/miui/maml/animation/interpolater/CubicEaseInOutInterpolater;

    .line 337
    .line 338
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/CubicEaseInOutInterpolater;-><init>()V

    .line 339
    .line 340
    .line 341
    return-object p0

    .line 342
    :cond_16
    const-string v0, "ElasticEaseIn"

    .line 343
    .line 344
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 345
    .line 346
    .line 347
    move-result v4

    .line 348
    if-eqz v4, :cond_17

    .line 349
    .line 350
    new-instance p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;

    .line 351
    .line 352
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    .line 353
    .line 354
    .line 355
    return-object p0

    .line 356
    :cond_17
    const-string v4, "ElasticEaseOut"

    .line 357
    .line 358
    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 359
    .line 360
    .line 361
    move-result v7

    .line 362
    if-eqz v7, :cond_18

    .line 363
    .line 364
    new-instance p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;

    .line 365
    .line 366
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    .line 367
    .line 368
    .line 369
    return-object p0

    .line 370
    :cond_18
    const-string v7, "ElasticEaseInOut"

    .line 371
    .line 372
    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 373
    .line 374
    .line 375
    move-result v8

    .line 376
    if-eqz v8, :cond_19

    .line 377
    .line 378
    new-instance p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;

    .line 379
    .line 380
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    .line 381
    .line 382
    .line 383
    return-object p0

    .line 384
    :cond_19
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 385
    .line 386
    .line 387
    move-result v7

    .line 388
    if-eqz v7, :cond_1b

    .line 389
    .line 390
    if-eqz v3, :cond_1a

    .line 391
    .line 392
    new-instance p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;

    .line 393
    .line 394
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    .line 395
    .line 396
    .line 397
    return-object p0

    .line 398
    :cond_1a
    if-eqz v5, :cond_32

    .line 399
    .line 400
    new-instance p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;

    .line 401
    .line 402
    invoke-direct {p0, v6, v2}, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;-><init>(FF)V

    .line 403
    .line 404
    .line 405
    return-object p0

    .line 406
    :cond_1b
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 407
    .line 408
    .line 409
    move-result v0

    .line 410
    if-eqz v0, :cond_1d

    .line 411
    .line 412
    if-eqz v3, :cond_1c

    .line 413
    .line 414
    new-instance p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;

    .line 415
    .line 416
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    .line 417
    .line 418
    .line 419
    return-object p0

    .line 420
    :cond_1c
    if-eqz v5, :cond_32

    .line 421
    .line 422
    new-instance p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;

    .line 423
    .line 424
    invoke-direct {p0, v6, v2}, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;-><init>(FF)V

    .line 425
    .line 426
    .line 427
    return-object p0

    .line 428
    :cond_1d
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 429
    .line 430
    .line 431
    move-result v0

    .line 432
    if-eqz v0, :cond_1f

    .line 433
    .line 434
    if-eqz v3, :cond_1e

    .line 435
    .line 436
    new-instance p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;

    .line 437
    .line 438
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;-><init>([Lcom/miui/maml/data/Expression;)V

    .line 439
    .line 440
    .line 441
    return-object p0

    .line 442
    :cond_1e
    if-eqz v5, :cond_32

    .line 443
    .line 444
    new-instance p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;

    .line 445
    .line 446
    invoke-direct {p0, v6, v2}, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;-><init>(FF)V

    .line 447
    .line 448
    .line 449
    return-object p0

    .line 450
    :cond_1f
    const-string v0, "ExpoEaseIn"

    .line 451
    .line 452
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 453
    .line 454
    .line 455
    move-result v0

    .line 456
    if-eqz v0, :cond_20

    .line 457
    .line 458
    new-instance p0, Lcom/miui/maml/animation/interpolater/ExpoEaseInInterpolater;

    .line 459
    .line 460
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/ExpoEaseInInterpolater;-><init>()V

    .line 461
    .line 462
    .line 463
    return-object p0

    .line 464
    :cond_20
    const-string v0, "ExpoEaseOut"

    .line 465
    .line 466
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 467
    .line 468
    .line 469
    move-result v0

    .line 470
    if-eqz v0, :cond_21

    .line 471
    .line 472
    new-instance p0, Lcom/miui/maml/animation/interpolater/ExpoEaseOutInterpolater;

    .line 473
    .line 474
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/ExpoEaseOutInterpolater;-><init>()V

    .line 475
    .line 476
    .line 477
    return-object p0

    .line 478
    :cond_21
    const-string v0, "ExpoEaseInOut"

    .line 479
    .line 480
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 481
    .line 482
    .line 483
    move-result v0

    .line 484
    if-eqz v0, :cond_22

    .line 485
    .line 486
    new-instance p0, Lcom/miui/maml/animation/interpolater/ExpoEaseInOutInterpolater;

    .line 487
    .line 488
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/ExpoEaseInOutInterpolater;-><init>()V

    .line 489
    .line 490
    .line 491
    return-object p0

    .line 492
    :cond_22
    const-string v0, "QuadEaseIn"

    .line 493
    .line 494
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 495
    .line 496
    .line 497
    move-result v0

    .line 498
    if-eqz v0, :cond_23

    .line 499
    .line 500
    new-instance p0, Lcom/miui/maml/animation/interpolater/QuadEaseInInterpolater;

    .line 501
    .line 502
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/QuadEaseInInterpolater;-><init>()V

    .line 503
    .line 504
    .line 505
    return-object p0

    .line 506
    :cond_23
    const-string v0, "QuadEaseOut"

    .line 507
    .line 508
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 509
    .line 510
    .line 511
    move-result v0

    .line 512
    if-eqz v0, :cond_24

    .line 513
    .line 514
    new-instance p0, Lcom/miui/maml/animation/interpolater/QuadEaseOutInterpolater;

    .line 515
    .line 516
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/QuadEaseOutInterpolater;-><init>()V

    .line 517
    .line 518
    .line 519
    return-object p0

    .line 520
    :cond_24
    const-string v0, "QuadEaseInOut"

    .line 521
    .line 522
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 523
    .line 524
    .line 525
    move-result v0

    .line 526
    if-eqz v0, :cond_25

    .line 527
    .line 528
    new-instance p0, Lcom/miui/maml/animation/interpolater/QuadEaseInOutInterpolater;

    .line 529
    .line 530
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/QuadEaseInOutInterpolater;-><init>()V

    .line 531
    .line 532
    .line 533
    return-object p0

    .line 534
    :cond_25
    const-string v0, "QuartEaseIn"

    .line 535
    .line 536
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 537
    .line 538
    .line 539
    move-result v0

    .line 540
    if-eqz v0, :cond_26

    .line 541
    .line 542
    new-instance p0, Lcom/miui/maml/animation/interpolater/QuartEaseInInterpolater;

    .line 543
    .line 544
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/QuartEaseInInterpolater;-><init>()V

    .line 545
    .line 546
    .line 547
    return-object p0

    .line 548
    :cond_26
    const-string v0, "QuartEaseOut"

    .line 549
    .line 550
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 551
    .line 552
    .line 553
    move-result v0

    .line 554
    if-eqz v0, :cond_27

    .line 555
    .line 556
    new-instance p0, Lcom/miui/maml/animation/interpolater/QuartEaseOutInterpolater;

    .line 557
    .line 558
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/QuartEaseOutInterpolater;-><init>()V

    .line 559
    .line 560
    .line 561
    return-object p0

    .line 562
    :cond_27
    const-string v0, "QuartEaseInOut"

    .line 563
    .line 564
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 565
    .line 566
    .line 567
    move-result v0

    .line 568
    if-eqz v0, :cond_28

    .line 569
    .line 570
    new-instance p0, Lcom/miui/maml/animation/interpolater/QuartEaseInOutInterpolater;

    .line 571
    .line 572
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/QuartEaseInOutInterpolater;-><init>()V

    .line 573
    .line 574
    .line 575
    return-object p0

    .line 576
    :cond_28
    const-string v0, "QuintEaseIn"

    .line 577
    .line 578
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 579
    .line 580
    .line 581
    move-result v0

    .line 582
    if-eqz v0, :cond_29

    .line 583
    .line 584
    new-instance p0, Lcom/miui/maml/animation/interpolater/QuintEaseInInterpolater;

    .line 585
    .line 586
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/QuintEaseInInterpolater;-><init>()V

    .line 587
    .line 588
    .line 589
    return-object p0

    .line 590
    :cond_29
    const-string v0, "QuintEaseOut"

    .line 591
    .line 592
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 593
    .line 594
    .line 595
    move-result v0

    .line 596
    if-eqz v0, :cond_2a

    .line 597
    .line 598
    new-instance p0, Lcom/miui/maml/animation/interpolater/QuintEaseOutInterpolater;

    .line 599
    .line 600
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/QuintEaseOutInterpolater;-><init>()V

    .line 601
    .line 602
    .line 603
    return-object p0

    .line 604
    :cond_2a
    const-string v0, "QuintEaseInOut"

    .line 605
    .line 606
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 607
    .line 608
    .line 609
    move-result v0

    .line 610
    if-eqz v0, :cond_2b

    .line 611
    .line 612
    new-instance p0, Lcom/miui/maml/animation/interpolater/QuintEaseInOutInterpolater;

    .line 613
    .line 614
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/QuintEaseInOutInterpolater;-><init>()V

    .line 615
    .line 616
    .line 617
    return-object p0

    .line 618
    :cond_2b
    const-string v0, "SineEaseIn"

    .line 619
    .line 620
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 621
    .line 622
    .line 623
    move-result v0

    .line 624
    if-eqz v0, :cond_2c

    .line 625
    .line 626
    new-instance p0, Lcom/miui/maml/animation/interpolater/SineEaseInInterpolater;

    .line 627
    .line 628
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/SineEaseInInterpolater;-><init>()V

    .line 629
    .line 630
    .line 631
    return-object p0

    .line 632
    :cond_2c
    const-string v0, "SineEaseOut"

    .line 633
    .line 634
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 635
    .line 636
    .line 637
    move-result v0

    .line 638
    if-eqz v0, :cond_2d

    .line 639
    .line 640
    new-instance p0, Lcom/miui/maml/animation/interpolater/SineEaseOutInterpolater;

    .line 641
    .line 642
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/SineEaseOutInterpolater;-><init>()V

    .line 643
    .line 644
    .line 645
    return-object p0

    .line 646
    :cond_2d
    const-string v0, "SineEaseInOut"

    .line 647
    .line 648
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 649
    .line 650
    .line 651
    move-result v0

    .line 652
    if-eqz v0, :cond_2e

    .line 653
    .line 654
    new-instance p0, Lcom/miui/maml/animation/interpolater/SineEaseInOutInterpolater;

    .line 655
    .line 656
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/SineEaseInOutInterpolater;-><init>()V

    .line 657
    .line 658
    .line 659
    return-object p0

    .line 660
    :cond_2e
    const-string v0, "Linear"

    .line 661
    .line 662
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 663
    .line 664
    .line 665
    move-result v0

    .line 666
    if-eqz v0, :cond_2f

    .line 667
    .line 668
    new-instance p0, Lcom/miui/maml/animation/interpolater/LinearInterpolater;

    .line 669
    .line 670
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/LinearInterpolater;-><init>()V

    .line 671
    .line 672
    .line 673
    return-object p0

    .line 674
    :cond_2f
    const-string v0, "PhysicBased"

    .line 675
    .line 676
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 677
    .line 678
    .line 679
    move-result v4

    .line 680
    if-eqz v4, :cond_30

    .line 681
    .line 682
    new-instance p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;

    .line 683
    .line 684
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;-><init>([Lcom/miui/maml/data/Expression;)V

    .line 685
    .line 686
    .line 687
    return-object p0

    .line 688
    :cond_30
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 689
    .line 690
    .line 691
    move-result p0

    .line 692
    if-eqz p0, :cond_32

    .line 693
    .line 694
    if-eqz v3, :cond_31

    .line 695
    .line 696
    new-instance p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;

    .line 697
    .line 698
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;-><init>([Lcom/miui/maml/data/Expression;)V

    .line 699
    .line 700
    .line 701
    return-object p0

    .line 702
    :cond_31
    if-eqz v5, :cond_32

    .line 703
    .line 704
    new-instance p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;

    .line 705
    .line 706
    invoke-direct {p0, v6, v2}, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;-><init>(FF)V

    .line 707
    .line 708
    .line 709
    return-object p0

    .line 710
    :cond_32
    return-object v1
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

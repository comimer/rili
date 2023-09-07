.class public abstract Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;
.super Lcom/miui/calendar/card/single/custom/CustomSingleCard;
.source "AdSingleCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;,
        Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$AdCardExtraSchema;
    }
.end annotation


# instance fields
.field protected s:Lcom/miui/calendar/ad/AdSchema;

.field protected t:Lcom/miui/calendar/ad/AdSchema;

.field protected u:Z

.field protected v:Ljava/lang/String;

.field private w:I

.field private x:I

.field private y:I

.field private z:J


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/miui/calendar/card/Card$ContainerType;Ljava/util/Calendar;Landroid/widget/BaseAdapter;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/miui/calendar/card/single/custom/CustomSingleCard;-><init>(Landroid/content/Context;ILcom/miui/calendar/card/Card$ContainerType;Ljava/util/Calendar;Landroid/widget/BaseAdapter;)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x0

    .line 5
    iput p2, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->x:I

    .line 6
    .line 7
    iput p2, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->y:I

    .line 8
    .line 9
    const-wide/16 p2, 0x0

    .line 10
    .line 11
    iput-wide p2, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->z:J

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const p2, 0x7f070853

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iput p1, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->w:I

    .line 25
    .line 26
    return-void
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
.end method

.method static synthetic D(Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
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
.end method

.method static synthetic E(Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
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
.end method

.method static synthetic F(Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
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
.end method

.method static synthetic G(Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
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
.end method

.method static synthetic H(Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
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
.end method

.method static synthetic I(Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
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
.end method

.method static synthetic J(Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
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
.end method

.method static synthetic K(Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->S(I)V

    .line 2
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

.method static synthetic L(Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
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
.end method

.method public static N(Landroid/content/Context;Lcom/miui/calendar/card/Card$ContainerType;Ljava/util/Calendar;Landroid/widget/BaseAdapter;Lcom/miui/calendar/card/schema/CustomCardSchema;)Ls3/a;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "Cal:D:AdSingleCard"

    .line 3
    .line 4
    if-eqz p4, :cond_9

    .line 5
    .line 6
    iget-object v2, p4, Lcom/miui/calendar/card/schema/CustomCardSchema;->ads:Lcom/miui/calendar/ad/AdSchema;

    .line 7
    .line 8
    if-eqz v2, :cond_9

    .line 9
    .line 10
    iget-object v2, v2, Lcom/miui/calendar/ad/AdSchema;->template:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    goto/16 :goto_0

    .line 19
    .line 20
    :cond_0
    iget-object p4, p4, Lcom/miui/calendar/card/schema/CustomCardSchema;->ads:Lcom/miui/calendar/ad/AdSchema;

    .line 21
    .line 22
    iget-object v2, p4, Lcom/miui/calendar/ad/AdSchema;->template:Ljava/lang/String;

    .line 23
    .line 24
    const-string v3, "expStyle"

    .line 25
    .line 26
    invoke-virtual {p4, v3}, Lcom/miui/calendar/ad/AdSchema;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p4

    .line 30
    const-string v3, "3.21"

    .line 31
    .line 32
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    new-instance p4, Lt3/g;

    .line 39
    .line 40
    invoke-direct {p4, p0, p1, p2, p3}, Lt3/g;-><init>(Landroid/content/Context;Lcom/miui/calendar/card/Card$ContainerType;Ljava/util/Calendar;Landroid/widget/BaseAdapter;)V

    .line 41
    .line 42
    .line 43
    return-object p4

    .line 44
    :cond_1
    const-string v3, "12.4"

    .line 45
    .line 46
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_7

    .line 51
    .line 52
    const-string v0, "exp1"

    .line 53
    .line 54
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    new-instance p4, Lu3/e;

    .line 61
    .line 62
    invoke-direct {p4, p0, p1, p2, p3}, Lu3/e;-><init>(Landroid/content/Context;Lcom/miui/calendar/card/Card$ContainerType;Ljava/util/Calendar;Landroid/widget/BaseAdapter;)V

    .line 63
    .line 64
    .line 65
    return-object p4

    .line 66
    :cond_2
    const-string v0, "exp2"

    .line 67
    .line 68
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    new-instance p4, Lu3/k;

    .line 75
    .line 76
    invoke-direct {p4, p0, p1, p2, p3}, Lu3/k;-><init>(Landroid/content/Context;Lcom/miui/calendar/card/Card$ContainerType;Ljava/util/Calendar;Landroid/widget/BaseAdapter;)V

    .line 77
    .line 78
    .line 79
    return-object p4

    .line 80
    :cond_3
    const-string v0, "exp3"

    .line 81
    .line 82
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_4

    .line 87
    .line 88
    new-instance p4, Lu3/h;

    .line 89
    .line 90
    invoke-direct {p4, p0, p1, p2, p3}, Lu3/h;-><init>(Landroid/content/Context;Lcom/miui/calendar/card/Card$ContainerType;Ljava/util/Calendar;Landroid/widget/BaseAdapter;)V

    .line 91
    .line 92
    .line 93
    return-object p4

    .line 94
    :cond_4
    const-string v0, "exp4"

    .line 95
    .line 96
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_5

    .line 101
    .line 102
    new-instance p4, Lu3/b;

    .line 103
    .line 104
    invoke-direct {p4, p0, p1, p2, p3}, Lu3/b;-><init>(Landroid/content/Context;Lcom/miui/calendar/card/Card$ContainerType;Ljava/util/Calendar;Landroid/widget/BaseAdapter;)V

    .line 105
    .line 106
    .line 107
    return-object p4

    .line 108
    :cond_5
    const-string v0, "exp5"

    .line 109
    .line 110
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result p4

    .line 114
    if-eqz p4, :cond_6

    .line 115
    .line 116
    new-instance p4, Lu3/a;

    .line 117
    .line 118
    invoke-direct {p4, p0, p1, p2, p3}, Lu3/a;-><init>(Landroid/content/Context;Lcom/miui/calendar/card/Card$ContainerType;Ljava/util/Calendar;Landroid/widget/BaseAdapter;)V

    .line 119
    .line 120
    .line 121
    return-object p4

    .line 122
    :cond_6
    new-instance p4, Lt3/c;

    .line 123
    .line 124
    invoke-direct {p4, p0, p1, p2, p3}, Lt3/c;-><init>(Landroid/content/Context;Lcom/miui/calendar/card/Card$ContainerType;Ljava/util/Calendar;Landroid/widget/BaseAdapter;)V

    .line 125
    .line 126
    .line 127
    return-object p4

    .line 128
    :cond_7
    const-string p4, "24.1"

    .line 129
    .line 130
    invoke-static {v2, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 131
    .line 132
    .line 133
    move-result p4

    .line 134
    if-eqz p4, :cond_8

    .line 135
    .line 136
    new-instance p4, Lt3/f;

    .line 137
    .line 138
    invoke-direct {p4, p0, p1, p2, p3}, Lt3/f;-><init>(Landroid/content/Context;Lcom/miui/calendar/card/Card$ContainerType;Ljava/util/Calendar;Landroid/widget/BaseAdapter;)V

    .line 139
    .line 140
    .line 141
    return-object p4

    .line 142
    :cond_8
    const-string p0, "createAdSingleCard() unknown template"

    .line 143
    .line 144
    invoke-static {v1, p0}, Lcom/miui/calendar/util/z;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    return-object v0

    .line 148
    :cond_9
    :goto_0
    const-string p0, "createAdSingleCard() invalid cardSchema"

    .line 149
    .line 150
    invoke-static {v1, p0}, Lcom/miui/calendar/util/z;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    return-object v0
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

.method private O(I)Lcom/miui/calendar/view/AdProgressTextView$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$d;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$d;-><init>(Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;I)V

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
.end method

.method private P()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Ls3/a;->f:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "is_ad_closed_today"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lv3/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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
.end method

.method private S(I)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->u:Z

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->T(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/miui/calendar/card/Card;->b:Landroid/widget/BaseAdapter;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 10
    .line 11
    .line 12
    new-instance v6, Landroid/util/ArrayMap;

    .line 13
    .line 14
    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v6}, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->M(Ljava/util/Map;)V

    .line 18
    .line 19
    .line 20
    const-string v2, "card_close_clicked"

    .line 21
    .line 22
    const/4 v4, -0x1

    .line 23
    const/4 v5, 0x0

    .line 24
    move-object v1, p0

    .line 25
    move v3, p1

    .line 26
    invoke-virtual/range {v1 .. v6}, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->l(Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;)V

    .line 27
    .line 28
    .line 29
    return-void
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
.end method


# virtual methods
.method public B()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public M(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected Q()[I
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    iget-object v2, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 15
    .line 16
    iget-object v3, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const v4, 0x7f0701e8

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    mul-int/2addr v3, v0

    .line 30
    sub-int/2addr v2, v3

    .line 31
    const/4 v0, 0x0

    .line 32
    aput v2, v1, v0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const v2, 0x7f070428

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const/4 v2, 0x1

    .line 48
    aput v0, v1, v2

    .line 49
    .line 50
    return-object v1
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

.method protected R()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->P()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lv3/a;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lcom/miui/calendar/util/q;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    return v0
    .line 22
.end method

.method protected T(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->P()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lv3/a;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {v0, v1, p1}, Lcom/miui/calendar/util/q;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public U(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x6

    .line 6
    if-le v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v1, "."

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const/4 v1, 0x5

    .line 26
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :cond_0
    return-object p1
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

.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->s:Lcom/miui/calendar/ad/AdSchema;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->t:Lcom/miui/calendar/ad/AdSchema;

    .line 4
    .line 5
    invoke-super {p0}, Lcom/miui/calendar/card/single/custom/CustomSingleCard;->a()V

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
.end method

.method public d(Lcom/miui/calendar/card/schema/CustomCardSchema;)Z
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/miui/calendar/card/schema/CustomCardSchema;->ads:Lcom/miui/calendar/ad/AdSchema;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->v:Ljava/lang/String;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/miui/calendar/ad/AdSchema;->template:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public g(Ls3/a$a;I)V
    .locals 12

    .line 1
    check-cast p1, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->l:Landroid/view/ViewGroup;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v1, p1, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->E:Landroid/view/View;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$a;

    .line 12
    .line 13
    invoke-direct {v0, p0, p2}, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$a;-><init>(Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p1, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->E:Landroid/view/View;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/miui/calendar/util/v;->k(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v1, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$b;

    .line 26
    .line 27
    invoke-direct {v1, p0, p2}, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$b;-><init>(Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p1, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->l:Landroid/view/ViewGroup;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/miui/calendar/util/v;->k(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->n:Lcom/miui/calendar/view/OnlineImageView;

    .line 39
    .line 40
    const/4 v1, 0x2

    .line 41
    const v2, 0x7f0802c7

    .line 42
    .line 43
    .line 44
    const v3, 0x7f0802c9

    .line 45
    .line 46
    .line 47
    const/4 v4, 0x1

    .line 48
    const/4 v5, 0x0

    .line 49
    if-eqz v0, :cond_6

    .line 50
    .line 51
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->t:Lcom/miui/calendar/ad/AdSchema;

    .line 52
    .line 53
    iget v6, v0, Lcom/miui/calendar/ad/AdSchema;->width:I

    .line 54
    .line 55
    iget v0, v0, Lcom/miui/calendar/ad/AdSchema;->height:I

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->Q()[I

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 62
    .line 63
    const/4 v9, -0x1

    .line 64
    aget v10, v7, v4

    .line 65
    .line 66
    invoke-direct {v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 67
    .line 68
    .line 69
    if-lez v6, :cond_3

    .line 70
    .line 71
    if-lez v0, :cond_2

    .line 72
    .line 73
    aget v9, v7, v5

    .line 74
    .line 75
    mul-int/2addr v0, v9

    .line 76
    div-int/2addr v0, v6

    .line 77
    iput v0, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    aget v0, v7, v4

    .line 81
    .line 82
    aget v9, v7, v5

    .line 83
    .line 84
    mul-int/2addr v0, v9

    .line 85
    div-int/2addr v0, v6

    .line 86
    iput v0, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    if-lez v0, :cond_4

    .line 90
    .line 91
    iput v0, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 92
    .line 93
    :cond_4
    :goto_1
    iget v0, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 94
    .line 95
    aget v6, v7, v4

    .line 96
    .line 97
    mul-int/lit8 v7, v6, 0x2

    .line 98
    .line 99
    if-le v0, v7, :cond_5

    .line 100
    .line 101
    mul-int/2addr v6, v1

    .line 102
    iput v6, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 103
    .line 104
    :cond_5
    iget-object v0, p1, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->n:Lcom/miui/calendar/view/OnlineImageView;

    .line 105
    .line 106
    invoke-virtual {v0, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p1, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->n:Lcom/miui/calendar/view/OnlineImageView;

    .line 110
    .line 111
    iget-object v6, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->t:Lcom/miui/calendar/ad/AdSchema;

    .line 112
    .line 113
    iget-object v6, v6, Lcom/miui/calendar/ad/AdSchema;->imgUrls:Ljava/util/List;

    .line 114
    .line 115
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    check-cast v6, Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v0, v6, v3, v2}, Lcom/miui/calendar/view/OnlineImageView;->a(Ljava/lang/String;II)V

    .line 122
    .line 123
    .line 124
    :cond_6
    iget-object v0, p1, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->o:Lcom/miui/calendar/view/OnlineImageView;

    .line 125
    .line 126
    if-eqz v0, :cond_7

    .line 127
    .line 128
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->t:Lcom/miui/calendar/ad/AdSchema;

    .line 129
    .line 130
    iget-object v0, v0, Lcom/miui/calendar/ad/AdSchema;->imgUrls:Ljava/util/List;

    .line 131
    .line 132
    if-eqz v0, :cond_7

    .line 133
    .line 134
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-lez v0, :cond_7

    .line 139
    .line 140
    iget-object v0, p1, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->o:Lcom/miui/calendar/view/OnlineImageView;

    .line 141
    .line 142
    iget-object v6, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->t:Lcom/miui/calendar/ad/AdSchema;

    .line 143
    .line 144
    iget-object v6, v6, Lcom/miui/calendar/ad/AdSchema;->imgUrls:Ljava/util/List;

    .line 145
    .line 146
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    check-cast v6, Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {v0, v6, v3, v2}, Lcom/miui/calendar/view/OnlineImageView;->a(Ljava/lang/String;II)V

    .line 153
    .line 154
    .line 155
    :cond_7
    iget-object v0, p1, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->p:Lcom/miui/calendar/view/OnlineImageView;

    .line 156
    .line 157
    if-eqz v0, :cond_8

    .line 158
    .line 159
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->t:Lcom/miui/calendar/ad/AdSchema;

    .line 160
    .line 161
    iget-object v0, v0, Lcom/miui/calendar/ad/AdSchema;->imgUrls:Ljava/util/List;

    .line 162
    .line 163
    if-eqz v0, :cond_8

    .line 164
    .line 165
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-le v0, v4, :cond_8

    .line 170
    .line 171
    iget-object v0, p1, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->p:Lcom/miui/calendar/view/OnlineImageView;

    .line 172
    .line 173
    iget-object v6, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->t:Lcom/miui/calendar/ad/AdSchema;

    .line 174
    .line 175
    iget-object v6, v6, Lcom/miui/calendar/ad/AdSchema;->imgUrls:Ljava/util/List;

    .line 176
    .line 177
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    check-cast v6, Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {v0, v6, v3, v2}, Lcom/miui/calendar/view/OnlineImageView;->a(Ljava/lang/String;II)V

    .line 184
    .line 185
    .line 186
    :cond_8
    iget-object v0, p1, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->q:Lcom/miui/calendar/view/OnlineImageView;

    .line 187
    .line 188
    if-eqz v0, :cond_9

    .line 189
    .line 190
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->t:Lcom/miui/calendar/ad/AdSchema;

    .line 191
    .line 192
    iget-object v0, v0, Lcom/miui/calendar/ad/AdSchema;->imgUrls:Ljava/util/List;

    .line 193
    .line 194
    if-eqz v0, :cond_9

    .line 195
    .line 196
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-le v0, v1, :cond_9

    .line 201
    .line 202
    iget-object v0, p1, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->q:Lcom/miui/calendar/view/OnlineImageView;

    .line 203
    .line 204
    iget-object v6, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->t:Lcom/miui/calendar/ad/AdSchema;

    .line 205
    .line 206
    iget-object v6, v6, Lcom/miui/calendar/ad/AdSchema;->imgUrls:Ljava/util/List;

    .line 207
    .line 208
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    check-cast v1, Ljava/lang/String;

    .line 213
    .line 214
    invoke-virtual {v0, v1, v3, v2}, Lcom/miui/calendar/view/OnlineImageView;->a(Ljava/lang/String;II)V

    .line 215
    .line 216
    .line 217
    :cond_9
    iget-object v0, p1, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->m:Landroid/widget/TextView;

    .line 218
    .line 219
    const-string v1, "..."

    .line 220
    .line 221
    if-eqz v0, :cond_c

    .line 222
    .line 223
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->t:Lcom/miui/calendar/ad/AdSchema;

    .line 224
    .line 225
    iget-object v6, v0, Lcom/miui/calendar/ad/AdSchema;->appName:Ljava/lang/String;

    .line 226
    .line 227
    if-eqz v6, :cond_c

    .line 228
    .line 229
    iget-object v6, v0, Lcom/miui/calendar/ad/AdSchema;->template:Ljava/lang/String;

    .line 230
    .line 231
    const-string v7, "expStyle"

    .line 232
    .line 233
    invoke-virtual {v0, v7}, Lcom/miui/calendar/ad/AdSchema;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    const/16 v7, 0xd

    .line 238
    .line 239
    const-string v8, "12.4"

    .line 240
    .line 241
    invoke-static {v6, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 242
    .line 243
    .line 244
    move-result v6

    .line 245
    if-eqz v6, :cond_a

    .line 246
    .line 247
    const-string v6, "exp2"

    .line 248
    .line 249
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-eqz v0, :cond_a

    .line 254
    .line 255
    const/16 v7, 0xa

    .line 256
    .line 257
    :cond_a
    iget-object v0, p1, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->m:Landroid/widget/TextView;

    .line 258
    .line 259
    iget-object v6, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->t:Lcom/miui/calendar/ad/AdSchema;

    .line 260
    .line 261
    iget-object v6, v6, Lcom/miui/calendar/ad/AdSchema;->appName:Ljava/lang/String;

    .line 262
    .line 263
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 264
    .line 265
    .line 266
    move-result v6

    .line 267
    if-le v6, v7, :cond_b

    .line 268
    .line 269
    new-instance v6, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .line 273
    .line 274
    iget-object v8, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->t:Lcom/miui/calendar/ad/AdSchema;

    .line 275
    .line 276
    iget-object v8, v8, Lcom/miui/calendar/ad/AdSchema;->appName:Ljava/lang/String;

    .line 277
    .line 278
    invoke-virtual {v8, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v7

    .line 282
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v6

    .line 292
    goto :goto_2

    .line 293
    :cond_b
    iget-object v6, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->t:Lcom/miui/calendar/ad/AdSchema;

    .line 294
    .line 295
    iget-object v6, v6, Lcom/miui/calendar/ad/AdSchema;->appName:Ljava/lang/String;

    .line 296
    .line 297
    :goto_2
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    .line 299
    .line 300
    :cond_c
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->t:Lcom/miui/calendar/ad/AdSchema;

    .line 301
    .line 302
    iget-object v0, v0, Lcom/miui/calendar/ad/AdSchema;->summary:Ljava/lang/String;

    .line 303
    .line 304
    if-eqz v0, :cond_e

    .line 305
    .line 306
    iget-object v6, p1, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->t:Landroid/widget/TextView;

    .line 307
    .line 308
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    const/16 v7, 0x10

    .line 313
    .line 314
    if-le v0, v7, :cond_d

    .line 315
    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .line 320
    .line 321
    iget-object v8, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->t:Lcom/miui/calendar/ad/AdSchema;

    .line 322
    .line 323
    iget-object v8, v8, Lcom/miui/calendar/ad/AdSchema;->summary:Ljava/lang/String;

    .line 324
    .line 325
    invoke-virtual {v8, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v7

    .line 329
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    goto :goto_3

    .line 340
    :cond_d
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->t:Lcom/miui/calendar/ad/AdSchema;

    .line 341
    .line 342
    iget-object v0, v0, Lcom/miui/calendar/ad/AdSchema;->summary:Ljava/lang/String;

    .line 343
    .line 344
    :goto_3
    invoke-static {v6, v0}, Lcom/miui/calendar/util/x0;->f(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    :cond_e
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->t:Lcom/miui/calendar/ad/AdSchema;

    .line 348
    .line 349
    iget-object v0, v0, Lcom/miui/calendar/ad/AdSchema;->categoryName:Ljava/lang/String;

    .line 350
    .line 351
    if-eqz v0, :cond_f

    .line 352
    .line 353
    iget-object v1, p1, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->M:Landroid/widget/TextView;

    .line 354
    .line 355
    invoke-static {v1, v0}, Lcom/miui/calendar/util/x0;->f(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    :cond_f
    iget-object v0, p1, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->s:Lcom/miui/calendar/view/OnlineImageView;

    .line 359
    .line 360
    if-eqz v0, :cond_10

    .line 361
    .line 362
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->t:Lcom/miui/calendar/ad/AdSchema;

    .line 363
    .line 364
    iget-object v0, v0, Lcom/miui/calendar/ad/AdSchema;->imgUrls:Ljava/util/List;

    .line 365
    .line 366
    if-eqz v0, :cond_10

    .line 367
    .line 368
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 369
    .line 370
    .line 371
    move-result v0

    .line 372
    if-lez v0, :cond_10

    .line 373
    .line 374
    iget-object v0, p1, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->s:Lcom/miui/calendar/view/OnlineImageView;

    .line 375
    .line 376
    iget-object v1, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->t:Lcom/miui/calendar/ad/AdSchema;

    .line 377
    .line 378
    iget-object v1, v1, Lcom/miui/calendar/ad/AdSchema;->imgUrls:Ljava/util/List;

    .line 379
    .line 380
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    check-cast v1, Ljava/lang/String;

    .line 385
    .line 386
    invoke-virtual {v0, v1, v3, v2}, Lcom/miui/calendar/view/OnlineImageView;->a(Ljava/lang/String;II)V

    .line 387
    .line 388
    .line 389
    :cond_10
    iget-object v0, p1, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->u:Landroid/widget/TextView;

    .line 390
    .line 391
    const/16 v1, 0x8

    .line 392
    .line 393
    if-eqz v0, :cond_12

    .line 394
    .line 395
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->t:Lcom/miui/calendar/ad/AdSchema;

    .line 396
    .line 397
    iget-object v0, v0, Lcom/miui/calendar/ad/AdSchema;->source:Ljava/lang/String;

    .line 398
    .line 399
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 400
    .line 401
    .line 402
    move-result v0

    .line 403
    if-eqz v0, :cond_11

    .line 404
    .line 405
    iget-object v0, p1, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->u:Landroid/widget/TextView;

    .line 406
    .line 407
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 408
    .line 409
    .line 410
    goto :goto_4

    .line 411
    :cond_11
    iget-object v0, p1, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->u:Landroid/widget/TextView;

    .line 412
    .line 413
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 414
    .line 415
    .line 416
    iget-object v0, p1, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->u:Landroid/widget/TextView;

    .line 417
    .line 418
    iget-object v2, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->t:Lcom/miui/calendar/ad/AdSchema;

    .line 419
    .line 420
    iget-object v2, v2, Lcom/miui/calendar/ad/AdSchema;->source:Ljava/lang/String;

    .line 421
    .line 422
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    .line 424
    .line 425
    :cond_12
    :goto_4
    iget-object v0, p1, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->v:Landroid/view/View;

    .line 426
    .line 427
    if-eqz v0, :cond_14

    .line 428
    .line 429
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->t:Lcom/miui/calendar/ad/AdSchema;

    .line 430
    .line 431
    iget-object v0, v0, Lcom/miui/calendar/ad/AdSchema;->source:Ljava/lang/String;

    .line 432
    .line 433
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 434
    .line 435
    .line 436
    move-result v0

    .line 437
    if-eqz v0, :cond_13

    .line 438
    .line 439
    iget-object v0, p1, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->v:Landroid/view/View;

    .line 440
    .line 441
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 442
    .line 443
    .line 444
    goto :goto_5

    .line 445
    :cond_13
    iget-object v0, p1, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->v:Landroid/view/View;

    .line 446
    .line 447
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 448
    .line 449
    .line 450
    :cond_14
    :goto_5
    iget-object v0, p1, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->w:Landroid/widget/TextView;

    .line 451
    .line 452
    iget-object v2, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 453
    .line 454
    iget-object v3, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->t:Lcom/miui/calendar/ad/AdSchema;

    .line 455
    .line 456
    iget-wide v6, v3, Lcom/miui/calendar/ad/AdSchema;->totalDownloadNum:J

    .line 457
    .line 458
    invoke-static {v2, v6, v7}, Lcom/miui/calendar/ad/AdSchema;->formatAdDownloadCount(Landroid/content/Context;J)Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v2

    .line 462
    invoke-static {v0, v2}, Lcom/miui/calendar/util/x0;->f(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    iget-object v6, p1, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->x:Landroid/view/View;

    .line 466
    .line 467
    if-eqz v6, :cond_15

    .line 468
    .line 469
    const/4 v7, 0x0

    .line 470
    iget v11, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->w:I

    .line 471
    .line 472
    move v8, v11

    .line 473
    move v9, v11

    .line 474
    move v10, v11

    .line 475
    invoke-static/range {v6 .. v11}, Lcom/miui/calendar/util/x0;->k(Landroid/view/View;ZIIII)V

    .line 476
    .line 477
    .line 478
    iget-object v0, p1, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->x:Landroid/view/View;

    .line 479
    .line 480
    new-instance v2, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$c;

    .line 481
    .line 482
    invoke-direct {v2, p0, p1, p2}, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$c;-><init>(Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;I)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 486
    .line 487
    .line 488
    :cond_15
    iget-object v0, p1, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->z:Lcom/miui/calendar/view/AdProgressTextView;

    .line 489
    .line 490
    if-eqz v0, :cond_16

    .line 491
    .line 492
    iget-object v2, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->t:Lcom/miui/calendar/ad/AdSchema;

    .line 493
    .line 494
    iget-object v3, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 495
    .line 496
    invoke-virtual {v0, v2, v3}, Lcom/miui/calendar/view/AdProgressTextView;->b(Lcom/miui/calendar/ad/AdSchema;Landroid/content/Context;)V

    .line 497
    .line 498
    .line 499
    iget-object v0, p1, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->z:Lcom/miui/calendar/view/AdProgressTextView;

    .line 500
    .line 501
    invoke-direct {p0, p2}, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->O(I)Lcom/miui/calendar/view/AdProgressTextView$a;

    .line 502
    .line 503
    .line 504
    move-result-object v2

    .line 505
    invoke-virtual {v0, v2}, Lcom/miui/calendar/view/AdProgressTextView;->setListener(Lcom/miui/calendar/view/AdProgressTextView$a;)V

    .line 506
    .line 507
    .line 508
    :cond_16
    iget-object v0, p1, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->A:Lcom/miui/calendar/view/AdProgressLinearLayout;

    .line 509
    .line 510
    if-eqz v0, :cond_17

    .line 511
    .line 512
    iget-object v2, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->t:Lcom/miui/calendar/ad/AdSchema;

    .line 513
    .line 514
    iget-object v3, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 515
    .line 516
    invoke-virtual {v0, v2, v3}, Lcom/miui/calendar/view/AdProgressLinearLayout;->b(Lcom/miui/calendar/ad/AdSchema;Landroid/content/Context;)V

    .line 517
    .line 518
    .line 519
    iget-object v0, p1, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->A:Lcom/miui/calendar/view/AdProgressLinearLayout;

    .line 520
    .line 521
    invoke-direct {p0, p2}, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->O(I)Lcom/miui/calendar/view/AdProgressTextView$a;

    .line 522
    .line 523
    .line 524
    move-result-object p2

    .line 525
    invoke-virtual {v0, p2}, Lcom/miui/calendar/view/AdProgressLinearLayout;->setListener(Lcom/miui/calendar/view/AdProgressTextView$a;)V

    .line 526
    .line 527
    .line 528
    :cond_17
    iget-object p2, p1, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->B:Landroid/view/View;

    .line 529
    .line 530
    if-eqz p2, :cond_19

    .line 531
    .line 532
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/CustomSingleCard;->p:Lcom/miui/calendar/card/single/custom/CustomSingleCard$CustomCardExtraSchema;

    .line 533
    .line 534
    check-cast v0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$AdCardExtraSchema;

    .line 535
    .line 536
    if-eqz v0, :cond_18

    .line 537
    .line 538
    iget v0, v0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$AdCardExtraSchema;->hideAdTag:I

    .line 539
    .line 540
    if-ne v0, v4, :cond_18

    .line 541
    .line 542
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 543
    .line 544
    .line 545
    goto :goto_6

    .line 546
    :cond_18
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 547
    .line 548
    .line 549
    :cond_19
    :goto_6
    iget-object p1, p1, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->N:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 550
    .line 551
    if-eqz p1, :cond_1c

    .line 552
    .line 553
    iget-object p2, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->t:Lcom/miui/calendar/ad/AdSchema;

    .line 554
    .line 555
    iget-object v0, p2, Lcom/miui/calendar/ad/AdSchema;->categoryName:Ljava/lang/String;

    .line 556
    .line 557
    if-eqz v0, :cond_1b

    .line 558
    .line 559
    iget-wide v2, p2, Lcom/miui/calendar/ad/AdSchema;->totalDownloadNum:J

    .line 560
    .line 561
    const-wide/16 v6, 0x0

    .line 562
    .line 563
    cmp-long v0, v2, v6

    .line 564
    .line 565
    if-eqz v0, :cond_1b

    .line 566
    .line 567
    iget p2, p2, Lcom/miui/calendar/ad/AdSchema;->apkSize:I

    .line 568
    .line 569
    if-nez p2, :cond_1a

    .line 570
    .line 571
    goto :goto_7

    .line 572
    :cond_1a
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 573
    .line 574
    .line 575
    goto :goto_8

    .line 576
    :cond_1b
    :goto_7
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 577
    .line 578
    .line 579
    :cond_1c
    :goto_8
    return-void
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

.method public h(Landroid/view/View;)Ls3/a$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;-><init>(Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;Landroid/view/View;)V

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
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->u:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->t:Lcom/miui/calendar/ad/AdSchema;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/android/calendar/settings/j;->g(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
    .line 21
    .line 22
.end method

.method protected k(Ljava/lang/String;IILjava/lang/String;)V
    .locals 6

    .line 1
    const/4 v5, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move-object v4, p4

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->l(Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;)V

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

.method protected l(Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p5, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->t:Lcom/miui/calendar/ad/AdSchema;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance p5, Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-direct {p5}, Landroid/util/ArrayMap;-><init>()V

    .line 10
    .line 11
    .line 12
    :cond_0
    move-object v5, p5

    .line 13
    iget-object p5, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->t:Lcom/miui/calendar/ad/AdSchema;

    .line 14
    .line 15
    if-eqz p5, :cond_1

    .line 16
    .line 17
    iget-wide v0, p5, Lcom/miui/calendar/ad/AdSchema;->id:J

    .line 18
    .line 19
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p5

    .line 23
    const-string v0, "ad_id"

    .line 24
    .line 25
    invoke-interface {v5, v0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    :cond_1
    move-object v0, p0

    .line 29
    move-object v1, p1

    .line 30
    move v2, p2

    .line 31
    move v3, p3

    .line 32
    move-object v4, p4

    .line 33
    invoke-super/range {v0 .. v5}, Lcom/miui/calendar/card/single/custom/CustomSingleCard;->l(Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;)V

    .line 34
    .line 35
    .line 36
    return-void
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
.end method

.method public x(Lcom/miui/calendar/card/schema/CustomCardSchema;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/miui/calendar/card/single/custom/CustomSingleCard;->x(Lcom/miui/calendar/card/schema/CustomCardSchema;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    iget-object p1, p1, Lcom/miui/calendar/card/schema/CustomCardSchema;->ads:Lcom/miui/calendar/ad/AdSchema;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->s:Lcom/miui/calendar/ad/AdSchema;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p1, Lcom/miui/calendar/ad/AdSchema;->template:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->v:Ljava/lang/String;

    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->R()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iput-boolean p1, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->u:Z

    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method protected z()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/miui/calendar/card/single/custom/CustomSingleCard$CustomCardExtraSchema;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$AdCardExtraSchema;

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
.end method

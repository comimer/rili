.class public Lmiuix/popupwidget/internal/widget/GuidePopupView;
.super Landroid/widget/FrameLayout;
.source "GuidePopupView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final D:Landroid/graphics/Paint;

.field private E:Z

.field private F:Landroid/animation/Animator$AnimatorListener;

.field private G:Landroid/animation/Animator$AnimatorListener;

.field private H:I

.field private a:Landroid/content/Context;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/LinearLayout;

.field private e:I

.field private f:I

.field private g:Z

.field private h:I

.field private i:Lva/b;

.field private j:Landroid/view/View$OnTouchListener;

.field private k:Landroid/animation/ObjectAnimator;

.field private l:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:F

.field private v:F

.field private w:F

.field private x:I

.field private y:I

.field private z:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    sget v0, Lua/a;->c:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/popupwidget/internal/widget/GuidePopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->g:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->z:Landroid/content/res/ColorStateList;

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->D:Landroid/graphics/Paint;

    .line 6
    new-instance v1, Lmiuix/popupwidget/internal/widget/GuidePopupView$a;

    invoke-direct {v1, p0}, Lmiuix/popupwidget/internal/widget/GuidePopupView$a;-><init>(Lmiuix/popupwidget/internal/widget/GuidePopupView;)V

    iput-object v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->F:Landroid/animation/Animator$AnimatorListener;

    .line 7
    new-instance v1, Lmiuix/popupwidget/internal/widget/GuidePopupView$b;

    invoke-direct {v1, p0}, Lmiuix/popupwidget/internal/widget/GuidePopupView$b;-><init>(Lmiuix/popupwidget/internal/widget/GuidePopupView;)V

    iput-object v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->G:Landroid/animation/Animator$AnimatorListener;

    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->H:I

    .line 9
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->a:Landroid/content/Context;

    .line 10
    sget-object v2, Lua/g;->O:[I

    sget v3, Lua/f;->b:I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 11
    sget p2, Lua/g;->U:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->r:F

    .line 12
    sget p2, Lua/g;->S:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->v:F

    .line 13
    sget p2, Lua/g;->V:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->w:F

    .line 14
    sget p2, Lua/g;->P:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->x:I

    .line 15
    sget p2, Lua/g;->T:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 16
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    sget p2, Lua/g;->Q:I

    const/16 p3, 0xf

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->y:I

    .line 18
    sget p2, Lua/g;->R:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->z:Landroid/content/res/ColorStateList;

    .line 19
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 20
    iget p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->v:F

    iget p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->w:F

    const/high16 p3, 0x40200000    # 2.5f

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->m:I

    return-void
.end method

.method static synthetic a(Lmiuix/popupwidget/internal/widget/GuidePopupView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->k:Landroid/animation/ObjectAnimator;

    .line 2
    .line 3
    return-object p1
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

.method static synthetic b(Lmiuix/popupwidget/internal/widget/GuidePopupView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->l:Z

    .line 2
    .line 3
    return p1
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

.method static synthetic c(Lmiuix/popupwidget/internal/widget/GuidePopupView;)Lva/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->i:Lva/b;

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

.method private d()V
    .locals 14

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x4

    .line 10
    new-array v3, v2, [I

    .line 11
    .line 12
    iget v4, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->o:I

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    aput v4, v3, v5

    .line 16
    .line 17
    sub-int v6, v1, v4

    .line 18
    .line 19
    iget v7, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->q:I

    .line 20
    .line 21
    sub-int/2addr v6, v7

    .line 22
    const/4 v8, 0x1

    .line 23
    aput v6, v3, v8

    .line 24
    .line 25
    iget v6, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->n:I

    .line 26
    .line 27
    const/4 v9, 0x2

    .line 28
    aput v6, v3, v9

    .line 29
    .line 30
    sub-int v10, v0, v6

    .line 31
    .line 32
    iget v11, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->p:I

    .line 33
    .line 34
    sub-int/2addr v10, v11

    .line 35
    const/4 v12, 0x3

    .line 36
    aput v10, v3, v12

    .line 37
    .line 38
    div-int/2addr v11, v9

    .line 39
    add-int/2addr v6, v11

    .line 40
    div-int/2addr v7, v9

    .line 41
    add-int/2addr v4, v7

    .line 42
    const/high16 v7, -0x80000000

    .line 43
    .line 44
    move v10, v7

    .line 45
    move v7, v5

    .line 46
    :goto_0
    if-ge v5, v2, :cond_2

    .line 47
    .line 48
    aget v11, v3, v5

    .line 49
    .line 50
    iget v13, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->m:I

    .line 51
    .line 52
    if-lt v11, v13, :cond_0

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_0
    if-le v11, v10, :cond_1

    .line 56
    .line 57
    move v7, v5

    .line 58
    move v10, v11

    .line 59
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    move v5, v7

    .line 63
    :goto_1
    const/4 v3, 0x5

    .line 64
    const/4 v7, 0x6

    .line 65
    const/4 v10, 0x7

    .line 66
    if-eqz v5, :cond_9

    .line 67
    .line 68
    if-eq v5, v8, :cond_7

    .line 69
    .line 70
    if-eq v5, v9, :cond_5

    .line 71
    .line 72
    if-eq v5, v12, :cond_3

    .line 73
    .line 74
    goto :goto_5

    .line 75
    :cond_3
    int-to-float v0, v4

    .line 76
    iget v3, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->w:F

    .line 77
    .line 78
    cmpg-float v0, v0, v3

    .line 79
    .line 80
    if-gez v0, :cond_4

    .line 81
    .line 82
    goto :goto_6

    .line 83
    :cond_4
    sub-int/2addr v1, v4

    .line 84
    int-to-float v0, v1

    .line 85
    cmpg-float v0, v0, v3

    .line 86
    .line 87
    if-gez v0, :cond_b

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_5
    int-to-float v0, v4

    .line 91
    iget v2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->w:F

    .line 92
    .line 93
    cmpg-float v0, v0, v2

    .line 94
    .line 95
    if-gez v0, :cond_6

    .line 96
    .line 97
    :goto_2
    move v2, v7

    .line 98
    goto :goto_6

    .line 99
    :cond_6
    sub-int/2addr v1, v4

    .line 100
    int-to-float v0, v1

    .line 101
    cmpg-float v0, v0, v2

    .line 102
    .line 103
    if-gez v0, :cond_b

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_7
    int-to-float v1, v6

    .line 107
    iget v3, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->w:F

    .line 108
    .line 109
    cmpg-float v1, v1, v3

    .line 110
    .line 111
    if-gez v1, :cond_8

    .line 112
    .line 113
    goto :goto_6

    .line 114
    :cond_8
    sub-int/2addr v0, v6

    .line 115
    int-to-float v0, v0

    .line 116
    cmpg-float v0, v0, v3

    .line 117
    .line 118
    if-gez v0, :cond_b

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_9
    int-to-float v1, v6

    .line 122
    iget v2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->w:F

    .line 123
    .line 124
    cmpg-float v1, v1, v2

    .line 125
    .line 126
    if-gez v1, :cond_a

    .line 127
    .line 128
    :goto_3
    move v2, v10

    .line 129
    goto :goto_6

    .line 130
    :cond_a
    sub-int/2addr v0, v6

    .line 131
    int-to-float v0, v0

    .line 132
    cmpg-float v0, v0, v2

    .line 133
    .line 134
    if-gez v0, :cond_b

    .line 135
    .line 136
    :goto_4
    move v2, v3

    .line 137
    goto :goto_6

    .line 138
    :cond_b
    :goto_5
    move v2, v5

    .line 139
    :goto_6
    invoke-virtual {p0, v2}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->setArrowMode(I)V

    .line 140
    .line 141
    .line 142
    return-void
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

.method private e()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->f()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->H:I

    .line 5
    .line 6
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->c:Landroid/widget/LinearLayout;

    .line 7
    .line 8
    iget v2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->e:I

    .line 9
    .line 10
    iget v3, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->f:I

    .line 11
    .line 12
    invoke-direct {p0, v0, v1, v2, v3}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->h(ILandroid/widget/LinearLayout;II)V

    .line 13
    .line 14
    .line 15
    iget-boolean v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->E:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->getMirroredMode()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->d:Landroid/widget/LinearLayout;

    .line 24
    .line 25
    iget v2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->e:I

    .line 26
    .line 27
    neg-int v2, v2

    .line 28
    iget v3, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->f:I

    .line 29
    .line 30
    neg-int v3, v3

    .line 31
    invoke-direct {p0, v0, v1, v2, v3}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->h(ILandroid/widget/LinearLayout;II)V

    .line 32
    .line 33
    .line 34
    :cond_0
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

.method private f()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->g:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->h:I

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->p:I

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    div-int/2addr v0, v1

    .line 13
    iget v2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->q:I

    .line 14
    .line 15
    div-int/2addr v2, v1

    .line 16
    int-to-double v3, v0

    .line 17
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 18
    .line 19
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    int-to-double v7, v2

    .line 24
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 25
    .line 26
    .line 27
    move-result-wide v5

    .line 28
    add-double/2addr v3, v5

    .line 29
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 30
    .line 31
    .line 32
    move-result-wide v3

    .line 33
    double-to-int v3, v3

    .line 34
    iget v4, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->H:I

    .line 35
    .line 36
    if-eqz v4, :cond_2

    .line 37
    .line 38
    const/4 v5, 0x1

    .line 39
    if-eq v4, v5, :cond_2

    .line 40
    .line 41
    if-eq v4, v1, :cond_1

    .line 42
    .line 43
    const/4 v1, 0x3

    .line 44
    if-eq v4, v1, :cond_1

    .line 45
    .line 46
    iput v3, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->h:I

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iput v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->h:I

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    iput v2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->h:I

    .line 53
    .line 54
    :goto_0
    return-void
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

.method private g(Landroid/graphics/Canvas;III)V
    .locals 7

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->D:Landroid/graphics/Paint;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->D:Landroid/graphics/Paint;

    .line 8
    .line 9
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12
    .line 13
    .line 14
    iget v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->n:I

    .line 15
    .line 16
    iget v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->p:I

    .line 17
    .line 18
    div-int/lit8 v1, v1, 0x2

    .line 19
    .line 20
    add-int/2addr v0, v1

    .line 21
    add-int/2addr v0, p3

    .line 22
    int-to-float p3, v0

    .line 23
    iget v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->o:I

    .line 24
    .line 25
    iget v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->q:I

    .line 26
    .line 27
    div-int/lit8 v1, v1, 0x2

    .line 28
    .line 29
    add-int/2addr v0, v1

    .line 30
    add-int/2addr v0, p4

    .line 31
    int-to-float p4, v0

    .line 32
    const/4 v0, 0x0

    .line 33
    packed-switch p2, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    :pswitch_0
    move p2, v0

    .line 37
    goto :goto_0

    .line 38
    :pswitch_1
    const/high16 p2, -0x3cf90000    # -135.0f

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :pswitch_2
    const/high16 p2, 0x42340000    # 45.0f

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :pswitch_3
    const/high16 p2, 0x43070000    # 135.0f

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :pswitch_4
    const/high16 p2, -0x3dcc0000    # -45.0f

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :pswitch_5
    const/high16 p2, -0x3d4c0000    # -90.0f

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :pswitch_6
    const/high16 p2, 0x42b40000    # 90.0f

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :pswitch_7
    const/high16 p2, 0x43340000    # 180.0f

    .line 57
    .line 58
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 62
    .line 63
    .line 64
    iget p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->h:I

    .line 65
    .line 66
    int-to-float p2, p2

    .line 67
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    const/high16 v0, 0x40000000    # 2.0f

    .line 75
    .line 76
    sub-float v2, p3, v0

    .line 77
    .line 78
    add-float v4, p3, v0

    .line 79
    .line 80
    iget v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->r:F

    .line 81
    .line 82
    add-float v5, p4, v0

    .line 83
    .line 84
    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 85
    .line 86
    move-object v1, p1

    .line 87
    move v3, p4

    .line 88
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 89
    .line 90
    .line 91
    iget v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->r:F

    .line 92
    .line 93
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->D:Landroid/graphics/Paint;

    .line 94
    .line 95
    invoke-virtual {p1, p3, p4, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 99
    .line 100
    .line 101
    iget-object p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->D:Landroid/graphics/Paint;

    .line 102
    .line 103
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 104
    .line 105
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 106
    .line 107
    .line 108
    iget-object p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->D:Landroid/graphics/Paint;

    .line 109
    .line 110
    const/high16 v0, 0x40800000    # 4.0f

    .line 111
    .line 112
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 113
    .line 114
    .line 115
    iget p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->v:F

    .line 116
    .line 117
    add-float v5, p4, p2

    .line 118
    .line 119
    iget-object v6, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->D:Landroid/graphics/Paint;

    .line 120
    .line 121
    move-object v1, p1

    .line 122
    move v2, p3

    .line 123
    move v4, p3

    .line 124
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 125
    .line 126
    .line 127
    iget p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->v:F

    .line 128
    .line 129
    add-float/2addr p4, p2

    .line 130
    iget p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->w:F

    .line 131
    .line 132
    add-float/2addr p4, p2

    .line 133
    iget-object p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->D:Landroid/graphics/Paint;

    .line 134
    .line 135
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 136
    .line 137
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 138
    .line 139
    .line 140
    iget-object p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->D:Landroid/graphics/Paint;

    .line 141
    .line 142
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 143
    .line 144
    .line 145
    iget p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->w:F

    .line 146
    .line 147
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->D:Landroid/graphics/Paint;

    .line 148
    .line 149
    invoke-virtual {p1, p3, p4, p2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    nop

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
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

.method private getMirroredMode()I
    .locals 2

    .line 1
    iget v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->H:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    rem-int/lit8 v1, v0, 0x2

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    add-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    return v0

    .line 14
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    return v0
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

.method private h(ILandroid/widget/LinearLayout;II)V
    .locals 8

    .line 1
    iget v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->h:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    iget v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->v:F

    .line 5
    .line 6
    add-float/2addr v0, v1

    .line 7
    iget v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->w:F

    .line 8
    .line 9
    add-float/2addr v0, v1

    .line 10
    iget v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->n:I

    .line 11
    .line 12
    iget v2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->p:I

    .line 13
    .line 14
    div-int/lit8 v2, v2, 0x2

    .line 15
    .line 16
    add-int/2addr v1, v2

    .line 17
    iget v2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->o:I

    .line 18
    .line 19
    iget v3, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->q:I

    .line 20
    .line 21
    div-int/lit8 v3, v3, 0x2

    .line 22
    .line 23
    add-int/2addr v2, v3

    .line 24
    const/4 v3, 0x0

    .line 25
    packed-switch p1, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    move v1, v3

    .line 29
    goto :goto_2

    .line 30
    :pswitch_0
    int-to-float v1, v1

    .line 31
    add-float/2addr v1, v0

    .line 32
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    div-int/lit8 v3, v3, 0x2

    .line 37
    .line 38
    int-to-float v3, v3

    .line 39
    sub-float/2addr v1, v3

    .line 40
    float-to-int v3, v1

    .line 41
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    div-int/lit8 v1, v1, 0x2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :pswitch_1
    int-to-float v1, v1

    .line 49
    sub-float/2addr v1, v0

    .line 50
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    div-int/lit8 v3, v3, 0x2

    .line 55
    .line 56
    int-to-float v3, v3

    .line 57
    sub-float/2addr v1, v3

    .line 58
    float-to-int v3, v1

    .line 59
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    div-int/lit8 v1, v1, 0x2

    .line 64
    .line 65
    :goto_0
    sub-int v1, v2, v1

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    div-int/lit8 v3, v3, 0x2

    .line 73
    .line 74
    sub-int v3, v1, v3

    .line 75
    .line 76
    int-to-float v1, v2

    .line 77
    add-float/2addr v1, v0

    .line 78
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    div-int/lit8 v2, v2, 0x2

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    div-int/lit8 v3, v3, 0x2

    .line 90
    .line 91
    sub-int v3, v1, v3

    .line 92
    .line 93
    int-to-float v1, v2

    .line 94
    sub-float/2addr v1, v0

    .line 95
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    div-int/lit8 v2, v2, 0x2

    .line 100
    .line 101
    :goto_1
    int-to-float v2, v2

    .line 102
    sub-float/2addr v1, v2

    .line 103
    float-to-int v1, v1

    .line 104
    :goto_2
    float-to-double v4, v0

    .line 105
    const-wide v6, 0x3fe921fb54442d18L    # 0.7853981633974483

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    .line 111
    .line 112
    .line 113
    move-result-wide v6

    .line 114
    mul-double/2addr v4, v6

    .line 115
    double-to-int v2, v4

    .line 116
    int-to-float v4, v2

    .line 117
    sub-float/2addr v0, v4

    .line 118
    float-to-int v0, v0

    .line 119
    const/4 v4, 0x4

    .line 120
    if-eq p1, v4, :cond_3

    .line 121
    .line 122
    const/4 v4, 0x5

    .line 123
    if-eq p1, v4, :cond_2

    .line 124
    .line 125
    const/4 v4, 0x6

    .line 126
    if-eq p1, v4, :cond_1

    .line 127
    .line 128
    const/4 v4, 0x7

    .line 129
    if-eq p1, v4, :cond_0

    .line 130
    .line 131
    goto :goto_5

    .line 132
    :cond_0
    add-int/2addr v3, v2

    .line 133
    goto :goto_3

    .line 134
    :cond_1
    sub-int/2addr v3, v2

    .line 135
    goto :goto_4

    .line 136
    :cond_2
    sub-int/2addr v3, v2

    .line 137
    :goto_3
    add-int/2addr v1, v0

    .line 138
    goto :goto_5

    .line 139
    :cond_3
    add-int/2addr v3, v2

    .line 140
    :goto_4
    sub-int/2addr v1, v0

    .line 141
    :goto_5
    add-int/2addr v3, p3

    .line 142
    add-int/2addr v1, p4

    .line 143
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    add-int/2addr p1, v3

    .line 148
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 149
    .line 150
    .line 151
    move-result p3

    .line 152
    add-int/2addr p3, v1

    .line 153
    invoke-virtual {p2, v3, v1, p1, p3}, Landroid/view/View;->layout(IIII)V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
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


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5
    .line 6
    .line 7
    iget v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->n:I

    .line 8
    .line 9
    int-to-float v0, v0

    .line 10
    iget v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->o:I

    .line 11
    .line 12
    int-to-float v1, v1

    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->b:Landroid/view/View;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->b:Landroid/view/View;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->b:Landroid/view/View;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/4 v1, 0x0

    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->b:Landroid/view/View;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 45
    .line 46
    .line 47
    iget v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->H:I

    .line 48
    .line 49
    iget v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->e:I

    .line 50
    .line 51
    iget v2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->f:I

    .line 52
    .line 53
    invoke-direct {p0, p1, v0, v1, v2}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->g(Landroid/graphics/Canvas;III)V

    .line 54
    .line 55
    .line 56
    iget-boolean v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->E:Z

    .line 57
    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->getMirroredMode()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iget v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->e:I

    .line 65
    .line 66
    neg-int v1, v1

    .line 67
    iget v2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->f:I

    .line 68
    .line 69
    neg-int v2, v2

    .line 70
    invoke-direct {p0, p1, v0, v1, v2}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->g(Landroid/graphics/Canvas;III)V

    .line 71
    .line 72
    .line 73
    :cond_0
    return-void
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

.method public getArrowMode()I
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->H:I

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

.method public getColorBackground()I
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->x:I

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

.method protected onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    sget v0, Lua/d;->d:I

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/LinearLayout;

    .line 11
    .line 12
    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->c:Landroid/widget/LinearLayout;

    .line 13
    .line 14
    sget v0, Lua/d;->b:I

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/widget/LinearLayout;

    .line 21
    .line 22
    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->d:Landroid/widget/LinearLayout;

    .line 23
    .line 24
    return-void
    .line 25
    .line 26
    .line 27
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 1
    iget p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->p:I

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->q:I

    .line 6
    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    :cond_0
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->b:Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->setAnchor(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    :cond_1
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->c:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iget-object p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->c:Landroid/widget/LinearLayout;

    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    int-to-double p3, p1

    .line 27
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 28
    .line 29
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 30
    .line 31
    .line 32
    move-result-wide p3

    .line 33
    int-to-double p1, p2

    .line 34
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 35
    .line 36
    .line 37
    move-result-wide p1

    .line 38
    add-double/2addr p3, p1

    .line 39
    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    .line 40
    .line 41
    .line 42
    move-result-wide p1

    .line 43
    div-double/2addr p1, v0

    .line 44
    iget p3, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->w:F

    .line 45
    .line 46
    float-to-double p3, p3

    .line 47
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(DD)D

    .line 48
    .line 49
    .line 50
    move-result-wide p1

    .line 51
    double-to-float p1, p1

    .line 52
    iput p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->w:F

    .line 53
    .line 54
    iget-boolean p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->E:Z

    .line 55
    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->d:Landroid/widget/LinearLayout;

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    iget-object p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->d:Landroid/widget/LinearLayout;

    .line 65
    .line 66
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    int-to-double p3, p1

    .line 71
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 72
    .line 73
    .line 74
    move-result-wide p3

    .line 75
    int-to-double p1, p2

    .line 76
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 77
    .line 78
    .line 79
    move-result-wide p1

    .line 80
    add-double/2addr p3, p1

    .line 81
    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    .line 82
    .line 83
    .line 84
    move-result-wide p1

    .line 85
    div-double/2addr p1, v0

    .line 86
    iget p3, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->w:F

    .line 87
    .line 88
    float-to-double p3, p3

    .line 89
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(DD)D

    .line 90
    .line 91
    .line 92
    move-result-wide p1

    .line 93
    double-to-float p1, p1

    .line 94
    iput p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->w:F

    .line 95
    .line 96
    :cond_2
    iget p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->H:I

    .line 97
    .line 98
    const/4 p2, -0x1

    .line 99
    if-ne p1, p2, :cond_3

    .line 100
    .line 101
    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->d()V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_3
    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->e()V

    .line 106
    .line 107
    .line 108
    :goto_0
    return-void
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

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    float-to-int p1, p1

    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    float-to-int v0, v0

    .line 11
    new-instance v1, Landroid/graphics/Rect;

    .line 12
    .line 13
    iget v2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->n:I

    .line 14
    .line 15
    iget v3, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->o:I

    .line 16
    .line 17
    iget-object v4, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->b:Landroid/view/View;

    .line 18
    .line 19
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    add-int/2addr v4, v2

    .line 24
    iget v5, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->o:I

    .line 25
    .line 26
    iget-object v6, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->b:Landroid/view/View;

    .line 27
    .line 28
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    add-int/2addr v5, v6

    .line 33
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    const/4 v2, 0x1

    .line 41
    if-nez p2, :cond_0

    .line 42
    .line 43
    invoke-virtual {v1, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->b:Landroid/view/View;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    .line 52
    .line 53
    .line 54
    return v2

    .line 55
    :cond_0
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->i:Lva/b;

    .line 56
    .line 57
    invoke-virtual {p1, v2}, Lva/a;->a(Z)V

    .line 58
    .line 59
    .line 60
    return v2
    .line 61
    .line 62
    .line 63
    .line 64
.end method

.method public setAnchor(Landroid/view/View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->b:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->p:I

    .line 8
    .line 9
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->b:Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iput p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->q:I

    .line 16
    .line 17
    const/4 p1, 0x2

    .line 18
    new-array p1, p1, [I

    .line 19
    .line 20
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->b:Landroid/view/View;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    aget v0, p1, v0

    .line 27
    .line 28
    iput v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->n:I

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    aget p1, p1, v0

    .line 32
    .line 33
    iput p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->o:I

    .line 34
    .line 35
    return-void
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
.end method

.method public setArrowMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->H:I

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

.method public setGuidePopupWindow(Lva/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->i:Lva/b;

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

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->j:Landroid/view/View$OnTouchListener;

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

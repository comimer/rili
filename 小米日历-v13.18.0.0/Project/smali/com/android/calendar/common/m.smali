.class public final Lcom/android/calendar/common/m;
.super Landroid/view/OrientationEventListener;
.source "OrientationDetector.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/common/m$a;,
        Lcom/android/calendar/common/m$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0018\u0000 \u00182\u00020\u0001:\u0002\u0008\rB\u0017\u0012\u0006\u0010\u000c\u001a\u00020\n\u0012\u0006\u0010\u0013\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015B\u0011\u0008\u0016\u0012\u0006\u0010\u0016\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0014\u0010\u0017J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u000e\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0008\u0010\t\u001a\u00020\u0004H\u0016R\u0014\u0010\u000c\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u000bR\u0016\u0010\u000f\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/android/calendar/common/m;",
        "Landroid/view/OrientationEventListener;",
        "",
        "orientation",
        "Lkotlin/u;",
        "onOrientationChanged",
        "Lcom/android/calendar/common/m$b;",
        "orientationListener",
        "a",
        "disable",
        "Lcom/android/calendar/common/b;",
        "Lcom/android/calendar/common/b;",
        "mActivity",
        "b",
        "I",
        "mOrientation",
        "c",
        "Lcom/android/calendar/common/m$b;",
        "mOrientationListener",
        "rate",
        "<init>",
        "(Lcom/android/calendar/common/b;I)V",
        "activity",
        "(Lcom/android/calendar/common/b;)V",
        "d",
        "app_chinaNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final d:Lcom/android/calendar/common/m$a;

.field private static final e:Ljava/lang/String;


# instance fields
.field private final a:Lcom/android/calendar/common/b;

.field private b:I

.field private c:Lcom/android/calendar/common/m$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/calendar/common/m$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/calendar/common/m$a;-><init>(Lkotlin/jvm/internal/o;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/calendar/common/m;->d:Lcom/android/calendar/common/m$a;

    .line 8
    .line 9
    const-class v0, Lcom/android/calendar/common/m;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/android/calendar/common/m;->e:Ljava/lang/String;

    .line 16
    .line 17
    return-void
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public constructor <init>(Lcom/android/calendar/common/b;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/android/calendar/common/m;-><init>(Lcom/android/calendar/common/b;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/calendar/common/b;I)V
    .locals 1

    const-string v0, "mActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/calendar/common/m;->a:Lcom/android/calendar/common/b;

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/android/calendar/common/m;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/calendar/common/m$b;)V
    .locals 1

    .line 1
    const-string v0, "orientationListener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/view/OrientationEventListener;->enable()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/calendar/common/m;->c:Lcom/android/calendar/common/m$b;

    .line 10
    .line 11
    return-void
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

.method public disable()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/OrientationEventListener;->disable()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/calendar/common/m;->c:Lcom/android/calendar/common/m$b;

    .line 6
    .line 7
    return-void
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

.method public onOrientationChanged(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/calendar/common/m;->a:Lcom/android/calendar/common/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/m;->isFinishing()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v0, -0x1

    .line 11
    if-ne p1, v0, :cond_1

    .line 12
    .line 13
    iput v0, p0, Lcom/android/calendar/common/m;->b:I

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    iget v0, p0, Lcom/android/calendar/common/m;->b:I

    .line 17
    .line 18
    const/16 v1, 0x159

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    const/4 v3, 0x0

    .line 22
    if-gt v1, p1, :cond_2

    .line 23
    .line 24
    const v1, 0x7fffffff

    .line 25
    .line 26
    .line 27
    if-gt p1, v1, :cond_2

    .line 28
    .line 29
    move v1, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    move v1, v3

    .line 32
    :goto_0
    if-eqz v1, :cond_3

    .line 33
    .line 34
    :goto_1
    move v1, v2

    .line 35
    goto :goto_2

    .line 36
    :cond_3
    if-ltz p1, :cond_4

    .line 37
    .line 38
    const/16 v1, 0x10

    .line 39
    .line 40
    if-ge p1, v1, :cond_4

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_4
    move v1, v3

    .line 44
    :goto_2
    if-eqz v1, :cond_5

    .line 45
    .line 46
    iput v3, p0, Lcom/android/calendar/common/m;->b:I

    .line 47
    .line 48
    goto :goto_6

    .line 49
    :cond_5
    const/16 v1, 0x4b

    .line 50
    .line 51
    if-gt v1, p1, :cond_6

    .line 52
    .line 53
    const/16 v1, 0x6a

    .line 54
    .line 55
    if-ge p1, v1, :cond_6

    .line 56
    .line 57
    move v1, v2

    .line 58
    goto :goto_3

    .line 59
    :cond_6
    move v1, v3

    .line 60
    :goto_3
    if-eqz v1, :cond_7

    .line 61
    .line 62
    const/16 p1, 0x10e

    .line 63
    .line 64
    iput p1, p0, Lcom/android/calendar/common/m;->b:I

    .line 65
    .line 66
    goto :goto_6

    .line 67
    :cond_7
    const/16 v1, 0xa5

    .line 68
    .line 69
    if-gt v1, p1, :cond_8

    .line 70
    .line 71
    const/16 v1, 0xc4

    .line 72
    .line 73
    if-ge p1, v1, :cond_8

    .line 74
    .line 75
    move v1, v2

    .line 76
    goto :goto_4

    .line 77
    :cond_8
    move v1, v3

    .line 78
    :goto_4
    if-eqz v1, :cond_9

    .line 79
    .line 80
    const/16 p1, 0xb4

    .line 81
    .line 82
    iput p1, p0, Lcom/android/calendar/common/m;->b:I

    .line 83
    .line 84
    goto :goto_6

    .line 85
    :cond_9
    const/16 v1, 0xff

    .line 86
    .line 87
    if-gt v1, p1, :cond_a

    .line 88
    .line 89
    const/16 v1, 0x11e

    .line 90
    .line 91
    if-ge p1, v1, :cond_a

    .line 92
    .line 93
    goto :goto_5

    .line 94
    :cond_a
    move v2, v3

    .line 95
    :goto_5
    if-eqz v2, :cond_b

    .line 96
    .line 97
    const/16 p1, 0x5a

    .line 98
    .line 99
    iput p1, p0, Lcom/android/calendar/common/m;->b:I

    .line 100
    .line 101
    :cond_b
    :goto_6
    iget p1, p0, Lcom/android/calendar/common/m;->b:I

    .line 102
    .line 103
    if-ne v0, p1, :cond_c

    .line 104
    .line 105
    return-void

    .line 106
    :cond_c
    :try_start_0
    iget-object p1, p0, Lcom/android/calendar/common/m;->a:Lcom/android/calendar/common/b;

    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    const-string v1, "accelerometer_rotation"

    .line 113
    .line 114
    invoke-static {p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-nez p1, :cond_d

    .line 119
    .line 120
    sget-object p1, Lcom/android/calendar/common/m;->e:Ljava/lang/String;

    .line 121
    .line 122
    const-string v1, "screen display direction is locked."

    .line 123
    .line 124
    invoke-static {p1, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :catch_0
    move-exception p1

    .line 129
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 130
    .line 131
    .line 132
    :cond_d
    sget-object p1, Lcom/android/calendar/common/m;->e:Ljava/lang/String;

    .line 133
    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    const-string v2, "lastOrientation:"

    .line 140
    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v0, " mOrientation:"

    .line 148
    .line 149
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    iget v0, p0, Lcom/android/calendar/common/m;->b:I

    .line 153
    .line 154
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const/16 v0, 0x2e

    .line 158
    .line 159
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-static {p1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-object p1, p0, Lcom/android/calendar/common/m;->c:Lcom/android/calendar/common/m$b;

    .line 170
    .line 171
    if-eqz p1, :cond_e

    .line 172
    .line 173
    iget v0, p0, Lcom/android/calendar/common/m;->b:I

    .line 174
    .line 175
    invoke-interface {p1, v0}, Lcom/android/calendar/common/m$b;->p(I)V

    .line 176
    .line 177
    .line 178
    :cond_e
    return-void
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
.end method

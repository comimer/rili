.class public final Lcom/miui/calendar/util/b1;
.super Ljava/lang/Object;
.source "VerticalMotionUtil.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/calendar/util/b1$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 \u00102\u00020\u0001:\u0001\u0019B\u001f\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u001d\u001a\u00020\u001b\u0012\u0006\u0010 \u001a\u00020\u001e\u00a2\u0006\u0004\u0008C\u0010DJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u001a\u0010\n\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008J\u0016\u0010\r\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000bJ\u000e\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eJ\u000e\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u000eJ(\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00022\u0010\u0008\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0014J\u0006\u0010\u0017\u001a\u00020\u0004J\u000e\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001d\u001a\u00020\u001b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u001cR\u0014\u0010 \u001a\u00020\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u001fR\u0014\u0010$\u001a\u00020!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0014\u0010&\u001a\u00020!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010#R\u0016\u0010)\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u0014\u0010+\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010(R\u0017\u0010.\u001a\u00020\u000e8\u0006\u00a2\u0006\u000c\n\u0004\u0008,\u0010(\u001a\u0004\u0008,\u0010-R\u0017\u0010/\u001a\u00020\u000e8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010(\u001a\u0004\u0008*\u0010-R\u0017\u00100\u001a\u00020\u000e8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010(\u001a\u0004\u0008\'\u0010-R\u0017\u00102\u001a\u00020\u000e8\u0006\u00a2\u0006\u000c\n\u0004\u00081\u0010(\u001a\u0004\u0008\"\u0010-R\u0017\u00105\u001a\u00020\u000e8\u0006\u00a2\u0006\u000c\n\u0004\u00083\u0010(\u001a\u0004\u00084\u0010-R$\u0010;\u001a\u0004\u0018\u0001068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00087\u00108\u001a\u0004\u0008%\u00109\"\u0004\u00087\u0010:R$\u0010B\u001a\u0004\u0018\u00010<8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010=\u001a\u0004\u0008>\u0010?\"\u0004\u0008@\u0010A\u00a8\u0006E"
    }
    d2 = {
        "Lcom/miui/calendar/util/b1;",
        "",
        "",
        "y",
        "Lkotlin/u;",
        "q",
        "Landroid/content/Context;",
        "context",
        "Lcom/miui/calendar/view/u;",
        "motionDetectStrategy",
        "n",
        "",
        "isChangedByUser",
        "c",
        "",
        "stopY",
        "o",
        "p",
        "fromY",
        "toY",
        "Lkotlin/Function0;",
        "finished",
        "j",
        "b",
        "i",
        "a",
        "Landroid/content/Context;",
        "Lcom/miui/calendar/view/MonthPanelContainer;",
        "Lcom/miui/calendar/view/MonthPanelContainer;",
        "mMonthPanel",
        "Lcom/miui/calendar/view/VerticalMotionFrameLayout;",
        "Lcom/miui/calendar/view/VerticalMotionFrameLayout;",
        "mListContainer",
        "Landroid/view/View;",
        "d",
        "Landroid/view/View;",
        "mLargeMonthPanelView",
        "e",
        "mSmallMonthPanelView",
        "f",
        "I",
        "mStopY",
        "g",
        "actionBarAndWeekHeaderBottomY",
        "h",
        "()I",
        "weekBottomY",
        "productivityWeekBottomY",
        "monthBottomY",
        "k",
        "fullMonthBottomY",
        "l",
        "getScreenHeight",
        "screenHeight",
        "Lcom/miui/calendar/view/b$a;",
        "m",
        "Lcom/miui/calendar/view/b$a;",
        "()Lcom/miui/calendar/view/b$a;",
        "(Lcom/miui/calendar/view/b$a;)V",
        "mTranslateListener",
        "Lcom/miui/calendar/view/c0;",
        "Lcom/miui/calendar/view/c0;",
        "getTranslationController",
        "()Lcom/miui/calendar/view/c0;",
        "setTranslationController",
        "(Lcom/miui/calendar/view/c0;)V",
        "translationController",
        "<init>",
        "(Landroid/content/Context;Lcom/miui/calendar/view/MonthPanelContainer;Lcom/miui/calendar/view/VerticalMotionFrameLayout;)V",
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
.field public static final o:Lcom/miui/calendar/util/b1$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/miui/calendar/view/MonthPanelContainer;

.field private final c:Lcom/miui/calendar/view/VerticalMotionFrameLayout;

.field private final d:Landroid/view/View;

.field private final e:Landroid/view/View;

.field private f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private m:Lcom/miui/calendar/view/b$a;

.field private n:Lcom/miui/calendar/view/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/calendar/util/b1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/calendar/util/b1$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcom/miui/calendar/util/b1;->o:Lcom/miui/calendar/util/b1$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/calendar/view/MonthPanelContainer;Lcom/miui/calendar/view/VerticalMotionFrameLayout;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "mMonthPanel"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "mListContainer"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/miui/calendar/util/b1;->a:Landroid/content/Context;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/miui/calendar/util/b1;->b:Lcom/miui/calendar/view/MonthPanelContainer;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/miui/calendar/util/b1;->c:Lcom/miui/calendar/view/VerticalMotionFrameLayout;

    .line 24
    .line 25
    const v0, 0x7f0a06c3

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "mMonthPanel.findViewById(R.id.view_pager)"

    .line 33
    .line 34
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/miui/calendar/util/b1;->d:Landroid/view/View;

    .line 38
    .line 39
    const v0, 0x7f0a06e3

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    const-string v0, "mMonthPanel.findViewById(R.id.week_switcher)"

    .line 47
    .line 48
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iput-object p2, p0, Lcom/miui/calendar/util/b1;->e:Landroid/view/View;

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    const v0, 0x7f07012b

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    float-to-int p2, p2

    .line 65
    iput p2, p0, Lcom/miui/calendar/util/b1;->g:I

    .line 66
    .line 67
    invoke-static {p1}, Lcom/miui/calendar/util/x0;->h0(Landroid/content/Context;)F

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    float-to-int v0, v0

    .line 72
    add-int/2addr v0, p2

    .line 73
    iput v0, p0, Lcom/miui/calendar/util/b1;->h:I

    .line 74
    .line 75
    invoke-static {p1}, Lcom/miui/calendar/util/x0;->i0(Landroid/content/Context;)F

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    float-to-int v0, v0

    .line 80
    add-int/2addr v0, p2

    .line 81
    iput v0, p0, Lcom/miui/calendar/util/b1;->i:I

    .line 82
    .line 83
    invoke-static {p1}, Lcom/miui/calendar/util/x0;->J(Landroid/content/Context;)F

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    float-to-int v0, v0

    .line 88
    add-int/2addr v0, p2

    .line 89
    iput v0, p0, Lcom/miui/calendar/util/b1;->j:I

    .line 90
    .line 91
    invoke-static {p1}, Lcom/miui/calendar/util/x0;->I(Landroid/content/Context;)F

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    float-to-int v0, v0

    .line 96
    add-int/2addr v0, p2

    .line 97
    iput v0, p0, Lcom/miui/calendar/util/b1;->k:I

    .line 98
    .line 99
    invoke-static {p1}, Lcom/miui/calendar/util/DeviceUtils;->v(Landroid/content/Context;)I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    iput p1, p0, Lcom/miui/calendar/util/b1;->l:I

    .line 104
    .line 105
    const/4 p1, 0x0

    .line 106
    invoke-virtual {p3, p1}, Lcom/miui/calendar/view/VerticalMotionFrameLayout;->setTranslationY(F)V

    .line 107
    .line 108
    .line 109
    return-void
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
.end method

.method public static synthetic a(Lcom/miui/calendar/util/b1;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/calendar/util/b1;->l(Lcom/miui/calendar/util/b1;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic k(Lcom/miui/calendar/util/b1;FFLw7/a;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/calendar/util/b1;->j(FFLw7/a;)V

    .line 7
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
.end method

.method private static final l(Lcom/miui/calendar/util/b1;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "animation"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    .line 16
    .line 17
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    check-cast p1, Ljava/lang/Float;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-virtual {p0, p1}, Lcom/miui/calendar/util/b1;->i(F)V

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
.end method

.method private final q(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/util/b1;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/calendar/common/Utils;->t(Landroid/content/Context;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x6

    .line 11
    if-ne v0, v3, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/miui/calendar/util/b1;->d:Landroid/view/View;

    .line 14
    .line 15
    iget v3, p0, Lcom/miui/calendar/util/b1;->i:I

    .line 16
    .line 17
    int-to-float v3, v3

    .line 18
    cmpg-float v3, p1, v3

    .line 19
    .line 20
    if-gtz v3, :cond_0

    .line 21
    .line 22
    move v3, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v3, v2

    .line 25
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/miui/calendar/util/b1;->e:Landroid/view/View;

    .line 29
    .line 30
    iget v3, p0, Lcom/miui/calendar/util/b1;->i:I

    .line 31
    .line 32
    int-to-float v3, v3

    .line 33
    cmpg-float p1, p1, v3

    .line 34
    .line 35
    if-gtz p1, :cond_1

    .line 36
    .line 37
    move v1, v2

    .line 38
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    iget-object v0, p0, Lcom/miui/calendar/util/b1;->d:Landroid/view/View;

    .line 43
    .line 44
    iget v3, p0, Lcom/miui/calendar/util/b1;->h:I

    .line 45
    .line 46
    int-to-float v3, v3

    .line 47
    cmpg-float v3, p1, v3

    .line 48
    .line 49
    if-gtz v3, :cond_3

    .line 50
    .line 51
    move v3, v1

    .line 52
    goto :goto_1

    .line 53
    :cond_3
    move v3, v2

    .line 54
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/miui/calendar/util/b1;->e:Landroid/view/View;

    .line 58
    .line 59
    iget v3, p0, Lcom/miui/calendar/util/b1;->h:I

    .line 60
    .line 61
    int-to-float v3, v3

    .line 62
    cmpg-float p1, p1, v3

    .line 63
    .line 64
    if-gtz p1, :cond_4

    .line 65
    .line 66
    move v1, v2

    .line 67
    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    :goto_2
    return-void
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
.end method


# virtual methods
.method public final b()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/util/b1;->n:Lcom/miui/calendar/view/c0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/miui/calendar/util/b1;->c:Lcom/miui/calendar/view/VerticalMotionFrameLayout;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    float-to-int v2, v2

    .line 12
    iget v3, p0, Lcom/miui/calendar/util/b1;->h:I

    .line 13
    .line 14
    add-int/2addr v2, v3

    .line 15
    const/16 v3, 0x64

    .line 16
    .line 17
    const/16 v4, 0x1f4

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    const/4 v6, 0x1

    .line 21
    invoke-virtual/range {v0 .. v6}, Lcom/miui/calendar/view/b;->g(Landroid/view/View;IIIZZ)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
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
.end method

.method public final c(FZ)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/miui/calendar/util/b1;->j:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    cmpg-float v0, p1, v0

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    move v0, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v2

    .line 13
    :goto_0
    if-eqz v0, :cond_1

    .line 14
    .line 15
    sget-boolean v0, Lcom/miui/calendar/view/MonthMotionContainer;->y:Z

    .line 16
    .line 17
    invoke-static {v1, p2, v0}, Lcom/miui/calendar/util/g$v;->f(ZZZ)Lcom/miui/calendar/util/g$j;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-static {p2, v2}, Lcom/miui/calendar/util/g;->d(Lcom/miui/calendar/util/g$j;Z)V

    .line 22
    .line 23
    .line 24
    goto :goto_3

    .line 25
    :cond_1
    iget v0, p0, Lcom/miui/calendar/util/b1;->h:I

    .line 26
    .line 27
    int-to-float v0, v0

    .line 28
    cmpg-float v0, p1, v0

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    move v0, v1

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    move v0, v2

    .line 35
    :goto_1
    if-eqz v0, :cond_3

    .line 36
    .line 37
    sget-boolean v0, Lcom/miui/calendar/view/MonthMotionContainer;->y:Z

    .line 38
    .line 39
    invoke-static {v2, p2, v0}, Lcom/miui/calendar/util/g$v;->f(ZZZ)Lcom/miui/calendar/util/g$j;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-static {p2, v2}, Lcom/miui/calendar/util/g;->d(Lcom/miui/calendar/util/g$j;Z)V

    .line 44
    .line 45
    .line 46
    goto :goto_3

    .line 47
    :cond_3
    iget v0, p0, Lcom/miui/calendar/util/b1;->k:I

    .line 48
    .line 49
    int-to-float v0, v0

    .line 50
    cmpg-float v0, p1, v0

    .line 51
    .line 52
    if-nez v0, :cond_4

    .line 53
    .line 54
    move v0, v1

    .line 55
    goto :goto_2

    .line 56
    :cond_4
    move v0, v2

    .line 57
    :goto_2
    if-eqz v0, :cond_5

    .line 58
    .line 59
    sget-boolean v0, Lcom/miui/calendar/view/MonthMotionContainer;->y:Z

    .line 60
    .line 61
    invoke-static {v1, p2, v0}, Lcom/miui/calendar/util/g$v;->f(ZZZ)Lcom/miui/calendar/util/g$j;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-static {p2, v2}, Lcom/miui/calendar/util/g;->d(Lcom/miui/calendar/util/g$j;Z)V

    .line 66
    .line 67
    .line 68
    :cond_5
    :goto_3
    invoke-direct {p0, p1}, Lcom/miui/calendar/util/b1;->q(F)V

    .line 69
    .line 70
    .line 71
    iget-object p2, p0, Lcom/miui/calendar/util/b1;->a:Landroid/content/Context;

    .line 72
    .line 73
    invoke-static {p2}, Lcom/android/calendar/common/Utils;->t(Landroid/content/Context;)I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    const/4 v0, 0x6

    .line 78
    const-string v3, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    .line 79
    .line 80
    if-ne p2, v0, :cond_7

    .line 81
    .line 82
    iget-object p2, p0, Lcom/miui/calendar/util/b1;->d:Landroid/view/View;

    .line 83
    .line 84
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-static {p2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 92
    .line 93
    float-to-int v0, p1

    .line 94
    iget v1, p0, Lcom/miui/calendar/util/b1;->g:I

    .line 95
    .line 96
    sub-int v1, v0, v1

    .line 97
    .line 98
    iget-object v3, p0, Lcom/miui/calendar/util/b1;->a:Landroid/content/Context;

    .line 99
    .line 100
    invoke-static {v3}, Lcom/miui/calendar/util/x0;->I(Landroid/content/Context;)F

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    float-to-int v3, v3

    .line 105
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    iget v3, p0, Lcom/miui/calendar/util/b1;->k:I

    .line 110
    .line 111
    int-to-float v4, v3

    .line 112
    cmpl-float v4, p1, v4

    .line 113
    .line 114
    if-ltz v4, :cond_6

    .line 115
    .line 116
    iput v2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 117
    .line 118
    iput v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 119
    .line 120
    iget-object p1, p0, Lcom/miui/calendar/util/b1;->d:Landroid/view/View;

    .line 121
    .line 122
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    .line 124
    .line 125
    iget p1, p0, Lcom/miui/calendar/util/b1;->l:I

    .line 126
    .line 127
    if-lt v0, p1, :cond_9

    .line 128
    .line 129
    new-instance p1, Lcom/miui/calendar/util/g$m;

    .line 130
    .line 131
    const/4 p2, 0x4

    .line 132
    iget-object v0, p0, Lcom/miui/calendar/util/b1;->a:Landroid/content/Context;

    .line 133
    .line 134
    invoke-static {v0}, Lcom/android/calendar/common/Utils;->t(Landroid/content/Context;)I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    invoke-direct {p1, p2, v0}, Lcom/miui/calendar/util/g$m;-><init>(II)V

    .line 139
    .line 140
    .line 141
    invoke-static {p1}, Lcom/miui/calendar/util/g;->c(Lcom/miui/calendar/util/g$j;)V

    .line 142
    .line 143
    .line 144
    goto/16 :goto_4

    .line 145
    .line 146
    :cond_6
    iget v0, p0, Lcom/miui/calendar/util/b1;->i:I

    .line 147
    .line 148
    int-to-float v1, v0

    .line 149
    cmpl-float v1, p1, v1

    .line 150
    .line 151
    if-lez v1, :cond_9

    .line 152
    .line 153
    iget v1, p0, Lcom/miui/calendar/util/b1;->f:I

    .line 154
    .line 155
    int-to-float v1, v1

    .line 156
    int-to-float v2, v3

    .line 157
    sub-float/2addr p1, v2

    .line 158
    mul-float/2addr v1, p1

    .line 159
    sub-int/2addr v3, v0

    .line 160
    int-to-float p1, v3

    .line 161
    div-float/2addr v1, p1

    .line 162
    float-to-int p1, v1

    .line 163
    neg-int p1, p1

    .line 164
    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 165
    .line 166
    iget-object p1, p0, Lcom/miui/calendar/util/b1;->d:Landroid/view/View;

    .line 167
    .line 168
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_7
    iget p2, p0, Lcom/miui/calendar/util/b1;->j:I

    .line 173
    .line 174
    int-to-float p2, p2

    .line 175
    cmpl-float p2, p1, p2

    .line 176
    .line 177
    if-ltz p2, :cond_8

    .line 178
    .line 179
    iget-object p2, p0, Lcom/miui/calendar/util/b1;->d:Landroid/view/View;

    .line 180
    .line 181
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    invoke-static {p2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 189
    .line 190
    float-to-int v0, p1

    .line 191
    iget v3, p0, Lcom/miui/calendar/util/b1;->g:I

    .line 192
    .line 193
    sub-int/2addr v0, v3

    .line 194
    iget v3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 195
    .line 196
    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 197
    .line 198
    iput v2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 199
    .line 200
    iget-object v0, p0, Lcom/miui/calendar/util/b1;->d:Landroid/view/View;

    .line 201
    .line 202
    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    .line 204
    .line 205
    iget p2, p0, Lcom/miui/calendar/util/b1;->k:I

    .line 206
    .line 207
    int-to-float p2, p2

    .line 208
    cmpl-float p1, p1, p2

    .line 209
    .line 210
    if-ltz p1, :cond_9

    .line 211
    .line 212
    invoke-static {}, Lcom/miui/calendar/util/x0;->w0()Z

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    if-nez p1, :cond_9

    .line 217
    .line 218
    const-string p1, "view_month_full_expanded"

    .line 219
    .line 220
    invoke-static {p1}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-static {v1}, Lcom/miui/calendar/util/x0;->O0(Z)V

    .line 224
    .line 225
    .line 226
    goto :goto_4

    .line 227
    :cond_8
    iget p2, p0, Lcom/miui/calendar/util/b1;->h:I

    .line 228
    .line 229
    int-to-float p2, p2

    .line 230
    cmpl-float p2, p1, p2

    .line 231
    .line 232
    if-lez p2, :cond_9

    .line 233
    .line 234
    invoke-static {v2}, Lcom/miui/calendar/util/x0;->O0(Z)V

    .line 235
    .line 236
    .line 237
    iget-object p2, p0, Lcom/miui/calendar/util/b1;->d:Landroid/view/View;

    .line 238
    .line 239
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 240
    .line 241
    .line 242
    move-result-object p2

    .line 243
    invoke-static {p2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 247
    .line 248
    iget v0, p0, Lcom/miui/calendar/util/b1;->f:I

    .line 249
    .line 250
    int-to-float v0, v0

    .line 251
    iget v1, p0, Lcom/miui/calendar/util/b1;->j:I

    .line 252
    .line 253
    int-to-float v2, v1

    .line 254
    sub-float/2addr p1, v2

    .line 255
    mul-float/2addr v0, p1

    .line 256
    iget p1, p0, Lcom/miui/calendar/util/b1;->h:I

    .line 257
    .line 258
    sub-int p1, v1, p1

    .line 259
    .line 260
    int-to-float p1, p1

    .line 261
    div-float/2addr v0, p1

    .line 262
    float-to-int p1, v0

    .line 263
    neg-int p1, p1

    .line 264
    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 265
    .line 266
    iget p1, p0, Lcom/miui/calendar/util/b1;->g:I

    .line 267
    .line 268
    sub-int/2addr v1, p1

    .line 269
    iput v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 270
    .line 271
    iget-object p1, p0, Lcom/miui/calendar/util/b1;->d:Landroid/view/View;

    .line 272
    .line 273
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    .line 275
    .line 276
    :cond_9
    :goto_4
    return-void
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
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/miui/calendar/util/b1;->k:I

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
.end method

.method public final e()Lcom/miui/calendar/view/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/util/b1;->m:Lcom/miui/calendar/view/b$a;

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

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/miui/calendar/util/b1;->j:I

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
.end method

.method public final g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/miui/calendar/util/b1;->i:I

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
.end method

.method public final h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/miui/calendar/util/b1;->h:I

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
.end method

.method public final i(F)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/miui/calendar/util/b1;->c(FZ)V

    .line 3
    .line 4
    .line 5
    float-to-int p1, p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/miui/calendar/util/b1;->p(I)V

    .line 7
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
.end method

.method public final j(FFLw7/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Lw7/a<",
            "Lkotlin/u;",
            ">;)V"
        }
    .end annotation

    .line 1
    cmpg-float v0, p1, p2

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    move v0, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v2

    .line 10
    :goto_0
    if-eqz v0, :cond_2

    .line 11
    .line 12
    if-eqz p3, :cond_1

    .line 13
    .line 14
    invoke-interface {p3}, Lw7/a;->invoke()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void

    .line 18
    :cond_2
    const/4 v0, 0x2

    .line 19
    new-array v0, v0, [F

    .line 20
    .line 21
    aput p1, v0, v2

    .line 22
    .line 23
    aput p2, v0, v1

    .line 24
    .line 25
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-wide/16 v0, 0x12c

    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 32
    .line 33
    .line 34
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    .line 35
    .line 36
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 37
    .line 38
    invoke-direct {p2, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 42
    .line 43
    .line 44
    new-instance p2, Lcom/miui/calendar/util/a1;

    .line 45
    .line 46
    invoke-direct {p2, p0}, Lcom/miui/calendar/util/a1;-><init>(Lcom/miui/calendar/util/b1;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 50
    .line 51
    .line 52
    const-string p2, "anim"

    .line 53
    .line 54
    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    new-instance p2, Lcom/miui/calendar/util/b1$b;

    .line 58
    .line 59
    invoke-direct {p2, p3}, Lcom/miui/calendar/util/b1$b;-><init>(Lw7/a;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 66
    .line 67
    .line 68
    return-void
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
.end method

.method public final m(Lcom/miui/calendar/view/b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/util/b1;->m:Lcom/miui/calendar/view/b$a;

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
.end method

.method public final n(Landroid/content/Context;Lcom/miui/calendar/view/u;)V
    .locals 9

    .line 1
    new-instance v8, Lcom/miui/calendar/view/c0;

    .line 2
    .line 3
    iget v3, p0, Lcom/miui/calendar/util/b1;->h:I

    .line 4
    .line 5
    iget v4, p0, Lcom/miui/calendar/util/b1;->i:I

    .line 6
    .line 7
    iget v5, p0, Lcom/miui/calendar/util/b1;->j:I

    .line 8
    .line 9
    iget v6, p0, Lcom/miui/calendar/util/b1;->k:I

    .line 10
    .line 11
    iget v7, p0, Lcom/miui/calendar/util/b1;->l:I

    .line 12
    .line 13
    move-object v0, v8

    .line 14
    move-object v1, p1

    .line 15
    move-object v2, p2

    .line 16
    invoke-direct/range {v0 .. v7}, Lcom/miui/calendar/view/c0;-><init>(Landroid/content/Context;Lcom/miui/calendar/view/u;IIIII)V

    .line 17
    .line 18
    .line 19
    iput-object v8, p0, Lcom/miui/calendar/util/b1;->n:Lcom/miui/calendar/view/c0;

    .line 20
    .line 21
    new-instance p1, Lcom/miui/calendar/util/b1$c;

    .line 22
    .line 23
    invoke-direct {p1, p0}, Lcom/miui/calendar/util/b1$c;-><init>(Lcom/miui/calendar/util/b1;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v8, p1}, Lcom/miui/calendar/view/b;->r(Lcom/miui/calendar/view/b$a;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/miui/calendar/util/b1;->c:Lcom/miui/calendar/view/VerticalMotionFrameLayout;

    .line 30
    .line 31
    iget-object p2, p0, Lcom/miui/calendar/util/b1;->n:Lcom/miui/calendar/view/c0;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Lcom/miui/calendar/view/VerticalMotionFrameLayout;->setMotionStrategy(Lcom/miui/calendar/view/c0;)V

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
.end method

.method public final o(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/miui/calendar/util/b1;->f:I

    .line 2
    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v0, "setStopY = "

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget v0, p0, Lcom/miui/calendar/util/b1;->f:I

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v0, "Cal:D:VerticalMotionUtil"

    .line 23
    .line 24
    invoke-static {v0, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
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
.end method

.method public final p(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/util/b1;->c:Lcom/miui/calendar/view/VerticalMotionFrameLayout;

    .line 2
    .line 3
    int-to-float p1, p1

    .line 4
    iget v1, p0, Lcom/miui/calendar/util/b1;->h:I

    .line 5
    .line 6
    int-to-float v1, v1

    .line 7
    sub-float v1, p1, v1

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/miui/calendar/view/VerticalMotionFrameLayout;->setTranslationY(F)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1}, Lcom/miui/calendar/util/b1;->q(F)V

    .line 13
    .line 14
    .line 15
    return-void
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.class public Lcom/android/calendar/homepage/AllInOneActivity$h;
.super Ljava/lang/Object;
.source "AllInOneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/homepage/AllInOneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public A:Landroid/widget/TextView;

.field public B:Lcom/android/calendar/homepage/WeekHeaderView;

.field public C:Landroid/view/ViewStub;

.field public D:Landroid/view/View;

.field public E:[Landroid/view/View;

.field public F:Lcom/miui/calendar/view/MainPanelMotionContainer;

.field public G:Lcom/miui/calendar/view/OnlineImageView;

.field public H:Landroid/widget/TextView;

.field private I:Landroid/view/ViewStub;

.field private J:Lcom/android/calendar/homepage/LSWeekCalendarView;

.field public K:Lcom/miui/calendar/view/MonthMotionContainer;

.field private L:Landroid/view/ViewStub;

.field public M:Lcom/android/calendar/homepage/YearFrameLayout;

.field private N:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/calendar/homepage/AllInOneActivity;",
            ">;"
        }
    .end annotation
.end field

.field public a:Landroid/view/View;

.field public b:Landroid/view/ViewStub;

.field public c:Lcom/android/calendar/homepage/g0;

.field public d:Landroid/view/ViewGroup;

.field public e:Landroid/view/ViewStub;

.field public f:Landroid/view/View;

.field public g:Landroid/widget/ImageView;

.field public h:Landroid/view/View;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/view/View;

.field public k:Landroid/widget/ImageView;

.field public l:Landroid/view/View;

.field public m:Landroid/view/ViewGroup;

.field public n:Landroid/view/View;

.field public o:Landroid/view/View;

.field public p:Landroid/widget/TextView;

.field public q:Landroid/widget/TextView;

.field public r:Landroid/widget/TextView;

.field public s:Landroid/widget/TextView;

.field public t:Landroid/view/View;

.field public u:Landroid/widget/TextView;

.field public v:Landroid/widget/TextView;

.field public w:Landroid/widget/TextView;

.field public x:Landroid/widget/ImageView;

.field public y:Landroid/widget/ImageView;

.field public z:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/calendar/homepage/AllInOneActivity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->N:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    const v0, 0x7f0a02ec

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->a:Landroid/view/View;

    .line 19
    .line 20
    const v0, 0x7f0a03cc

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/view/ViewStub;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->e:Landroid/view/ViewStub;

    .line 30
    .line 31
    const v0, 0x7f0a06d5

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/view/ViewStub;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->b:Landroid/view/ViewStub;

    .line 41
    .line 42
    const v0, 0x7f0a009d

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Landroid/view/ViewGroup;

    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->m:Landroid/view/ViewGroup;

    .line 52
    .line 53
    const v0, 0x7f0a0043

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->n:Landroid/view/View;

    .line 61
    .line 62
    const v0, 0x7f0a003f

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iput-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->o:Landroid/view/View;

    .line 70
    .line 71
    const v0, 0x7f0a0044

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Landroid/widget/TextView;

    .line 79
    .line 80
    iput-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->p:Landroid/widget/TextView;

    .line 81
    .line 82
    const v0, 0x7f0a0046

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Landroid/widget/TextView;

    .line 90
    .line 91
    iput-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->q:Landroid/widget/TextView;

    .line 92
    .line 93
    const v0, 0x7f0a0049

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Landroid/widget/TextView;

    .line 101
    .line 102
    iput-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->r:Landroid/widget/TextView;

    .line 103
    .line 104
    const v0, 0x7f0a0048

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Landroid/widget/TextView;

    .line 112
    .line 113
    iput-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->s:Landroid/widget/TextView;

    .line 114
    .line 115
    invoke-static {}, Lcom/miui/calendar/util/y;->a()Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_0

    .line 120
    .line 121
    const/4 v1, 0x0

    .line 122
    goto :goto_0

    .line 123
    :cond_0
    const/16 v1, 0x8

    .line 124
    .line 125
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 126
    .line 127
    .line 128
    const v0, 0x7f0a0047

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Landroid/widget/TextView;

    .line 136
    .line 137
    iput-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->w:Landroid/widget/TextView;

    .line 138
    .line 139
    const v0, 0x7f0a05d6

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    check-cast v0, Landroid/widget/ImageView;

    .line 147
    .line 148
    iput-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->x:Landroid/widget/ImageView;

    .line 149
    .line 150
    const v0, 0x7f0a054d

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    check-cast v0, Landroid/widget/ImageView;

    .line 158
    .line 159
    iput-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->y:Landroid/widget/ImageView;

    .line 160
    .line 161
    const v0, 0x7f0a06e0

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    check-cast v0, Lcom/android/calendar/homepage/WeekHeaderView;

    .line 169
    .line 170
    iput-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->B:Lcom/android/calendar/homepage/WeekHeaderView;

    .line 171
    .line 172
    const v0, 0x7f0a06d0

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    check-cast v0, Landroid/view/ViewStub;

    .line 180
    .line 181
    iput-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->C:Landroid/view/ViewStub;

    .line 182
    .line 183
    const v0, 0x7f0a03b5

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    check-cast v0, Lcom/miui/calendar/view/MainPanelMotionContainer;

    .line 191
    .line 192
    iput-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->F:Lcom/miui/calendar/view/MainPanelMotionContainer;

    .line 193
    .line 194
    const v0, 0x7f0a00dc

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    check-cast v0, Lcom/miui/calendar/view/OnlineImageView;

    .line 202
    .line 203
    iput-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->G:Lcom/miui/calendar/view/OnlineImageView;

    .line 204
    .line 205
    const v0, 0x7f0a0429

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    check-cast v0, Landroid/widget/TextView;

    .line 213
    .line 214
    iput-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->H:Landroid/widget/TextView;

    .line 215
    .line 216
    const v0, 0x7f0a06d1

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    check-cast v0, Landroid/view/ViewStub;

    .line 224
    .line 225
    iput-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->I:Landroid/view/ViewStub;

    .line 226
    .line 227
    const v0, 0x7f0a03f9

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    check-cast v0, Lcom/miui/calendar/view/MonthMotionContainer;

    .line 235
    .line 236
    iput-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    .line 237
    .line 238
    const v0, 0x7f0a0711

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    check-cast v0, Landroid/view/ViewStub;

    .line 246
    .line 247
    iput-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->L:Landroid/view/ViewStub;

    .line 248
    .line 249
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    .line 250
    .line 251
    new-instance v1, Lcom/android/calendar/homepage/a0;

    .line 252
    .line 253
    invoke-direct {v1, p0, p1}, Lcom/android/calendar/homepage/a0;-><init>(Lcom/android/calendar/homepage/AllInOneActivity$h;Lcom/android/calendar/homepage/AllInOneActivity;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 257
    .line 258
    .line 259
    return-void
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

.method public static synthetic a(Lcom/android/calendar/homepage/AllInOneActivity$h;Lcom/android/calendar/homepage/AllInOneActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/AllInOneActivity$h;->i(Lcom/android/calendar/homepage/AllInOneActivity;)V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lcom/android/calendar/homepage/AllInOneActivity$h;->h()V

    return-void
.end method

.method static synthetic c(Lcom/android/calendar/homepage/AllInOneActivity$h;)Lcom/android/calendar/homepage/LSWeekCalendarView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->J:Lcom/android/calendar/homepage/LSWeekCalendarView;

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

.method static synthetic d(Lcom/android/calendar/homepage/AllInOneActivity$h;Lcom/android/calendar/homepage/LSWeekCalendarView;)Lcom/android/calendar/homepage/LSWeekCalendarView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->J:Lcom/android/calendar/homepage/LSWeekCalendarView;

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
.end method

.method static synthetic e(Lcom/android/calendar/homepage/AllInOneActivity$h;)Landroid/view/ViewStub;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->I:Landroid/view/ViewStub;

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

.method static synthetic f(Lcom/android/calendar/homepage/AllInOneActivity$h;)Landroid/view/ViewStub;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->L:Landroid/view/ViewStub;

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

.method private static synthetic h()V
    .locals 6

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x5

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    :goto_0
    const/16 v4, 0x64

    .line 12
    .line 13
    if-ge v3, v4, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-static {v4, v0, v5}, Lz3/b;->c(Landroid/content/Context;Ljava/util/Calendar;Landroid/content/res/Resources;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 31
    .line 32
    .line 33
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
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
.end method

.method private synthetic i(Lcom/android/calendar/homepage/AllInOneActivity;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/calendar/homepage/b0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/calendar/homepage/b0;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->e:Landroid/view/ViewStub;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    const v0, 0x7f0a03ca

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->f:Landroid/view/View;

    .line 22
    .line 23
    const v0, 0x7f0a0437

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/ImageView;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->g:Landroid/widget/ImageView;

    .line 33
    .line 34
    const v0, 0x7f0a0438

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->h:Landroid/view/View;

    .line 42
    .line 43
    const v0, 0x7f0a05ca

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroid/widget/ImageView;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->k:Landroid/widget/ImageView;

    .line 53
    .line 54
    const v0, 0x7f0a05cb

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iput-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->l:Landroid/view/View;

    .line 62
    .line 63
    const v0, 0x7f0a0643

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Landroid/widget/TextView;

    .line 71
    .line 72
    iput-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->i:Landroid/widget/TextView;

    .line 73
    .line 74
    const v0, 0x7f0a0645

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iput-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->j:Landroid/view/View;

    .line 82
    .line 83
    const v0, 0x7f0a070d

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Landroid/view/ViewStub;

    .line 91
    .line 92
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 93
    .line 94
    .line 95
    const v0, 0x7f0a0057

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iput-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->t:Landroid/view/View;

    .line 103
    .line 104
    const v0, 0x7f0a0058

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Landroid/widget/TextView;

    .line 112
    .line 113
    iput-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->u:Landroid/widget/TextView;

    .line 114
    .line 115
    const v0, 0x7f0a0059

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Landroid/widget/TextView;

    .line 123
    .line 124
    iput-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->v:Landroid/widget/TextView;

    .line 125
    .line 126
    invoke-static {}, Lcom/miui/calendar/util/y;->a()Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_0

    .line 131
    .line 132
    const/4 v1, 0x0

    .line 133
    goto :goto_0

    .line 134
    :cond_0
    const/16 v1, 0x8

    .line 135
    .line 136
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 137
    .line 138
    .line 139
    const v0, 0x7f0a070e

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    iput-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->z:Landroid/view/View;

    .line 147
    .line 148
    const v0, 0x7f0a0042

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    check-cast p1, Landroid/widget/TextView;

    .line 156
    .line 157
    iput-object p1, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->A:Landroid/widget/TextView;

    .line 158
    .line 159
    return-void
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
.method public g(Lcom/android/calendar/homepage/t0;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->D:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->C:Landroid/view/ViewStub;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return v2

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->D:Landroid/view/View;

    .line 17
    .line 18
    const/16 v3, 0x8

    .line 19
    .line 20
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x4

    .line 24
    new-array v0, v0, [Landroid/view/View;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->E:[Landroid/view/View;

    .line 27
    .line 28
    iget-object v3, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->D:Landroid/view/View;

    .line 29
    .line 30
    const v4, 0x7f0a05e2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    aput-object v3, v0, v2

    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->E:[Landroid/view/View;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->D:Landroid/view/View;

    .line 42
    .line 43
    const v3, 0x7f0a05e9

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    aput-object v2, v0, v1

    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->E:[Landroid/view/View;

    .line 53
    .line 54
    const/4 v2, 0x2

    .line 55
    iget-object v3, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->D:Landroid/view/View;

    .line 56
    .line 57
    const v4, 0x7f0a05d7

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    aput-object v3, v0, v2

    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->E:[Landroid/view/View;

    .line 67
    .line 68
    const/4 v2, 0x3

    .line 69
    iget-object v3, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->D:Landroid/view/View;

    .line 70
    .line 71
    const v4, 0x7f0a05d5

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    aput-object v3, v0, v2

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/android/calendar/homepage/t0;->q()V

    .line 81
    .line 82
    .line 83
    :cond_1
    return v1
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

.method j(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/miui/calendar/util/y;->b()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->H:Landroid/widget/TextView;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->N:Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/android/calendar/homepage/AllInOneActivity;

    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iget-object p1, p0, Lcom/android/calendar/homepage/AllInOneActivity$h;->H:Landroid/widget/TextView;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    return-void
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

.class final Lcom/android/calendar/cards/t0$b;
.super Ljava/lang/Object;
.source "HistoryPresenter.kt"

# interfaces
.implements Lu1/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/cards/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0014\u0010\t\u001a\u00020\u00042\n\u0010\u0008\u001a\u00060\u0006j\u0002`\u0007H\u0016R%\u0010\u0010\u001a\u0010\u0012\u000c\u0012\n \u000c*\u0004\u0018\u00010\u000b0\u000b0\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/android/calendar/cards/t0$b;",
        "Lu1/b$a;",
        "Lorg/json/JSONObject;",
        "jsonObject",
        "Lkotlin/u;",
        "a",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "e",
        "b",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/android/calendar/cards/t0;",
        "kotlin.jvm.PlatformType",
        "Ljava/lang/ref/WeakReference;",
        "getMPresenterReference",
        "()Ljava/lang/ref/WeakReference;",
        "mPresenterReference",
        "presenter",
        "<init>",
        "(Lcom/android/calendar/cards/t0;)V",
        "app_chinaNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/calendar/cards/t0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/calendar/cards/t0;)V
    .locals 1

    .line 1
    const-string v0, "presenter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/calendar/cards/t0$b;->a:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    return-void
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 8

    .line 1
    const-string v0, "Cal:D:HistoryPresenter"

    .line 2
    .line 3
    const-string v1, "jsonObject"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/calendar/cards/t0$b;->a:Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/android/calendar/cards/t0;

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const/4 v2, 0x0

    .line 20
    :try_start_0
    const-string v3, "data"

    .line 21
    .line 22
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 26
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/4 v4, 0x0

    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    const-string v3, "onResponse history data is null"

    .line 34
    .line 35
    invoke-static {v0, v3}, Lcom/miui/calendar/util/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Lcom/android/calendar/cards/t0;->o(Lcom/android/calendar/cards/t0;)Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-static {v1}, Lcom/android/calendar/cards/t0;->m(Lcom/android/calendar/cards/t0;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-static {v3, v5}, Lcom/miui/calendar/util/q;->h(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Lcom/android/calendar/cards/t0;->n(Lcom/android/calendar/cards/t0;)Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    if-nez v3, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iput-object v2, v3, Lcom/miui/calendar/card/schema/CustomCardSchema;->itemList:Ljava/util/List;

    .line 57
    .line 58
    :goto_0
    invoke-static {v1, v4}, Lcom/android/calendar/cards/t0;->s(Lcom/android/calendar/cards/t0;Z)V

    .line 59
    .line 60
    .line 61
    invoke-static {v1, v2}, Lcom/android/calendar/cards/t0;->q(Lcom/android/calendar/cards/t0;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/android/calendar/cards/b;->g()V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_2
    invoke-static {p1}, Ls4/d;->d(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    new-instance v3, Lcom/android/calendar/cards/t0$b$a;

    .line 72
    .line 73
    invoke-direct {v3}, Lcom/android/calendar/cards/t0$b$a;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    const-string v5, "object : TypeToken<List<\u2026mCardSchema?>?>() {}.type"

    .line 81
    .line 82
    invoke-static {v3, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-static {p1, v3}, Lcom/miui/calendar/util/x;->b(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Ljava/util/List;

    .line 90
    .line 91
    if-eqz v3, :cond_9

    .line 92
    .line 93
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-eqz v5, :cond_3

    .line 98
    .line 99
    goto :goto_5

    .line 100
    :cond_3
    invoke-static {v1}, Lcom/android/calendar/cards/t0;->l(Lcom/android/calendar/cards/t0;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    if-nez v5, :cond_8

    .line 109
    .line 110
    invoke-static {v1, p1}, Lcom/android/calendar/cards/t0;->q(Lcom/android/calendar/cards/t0;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const/4 v5, 0x1

    .line 114
    invoke-static {v1, v5}, Lcom/android/calendar/cards/t0;->s(Lcom/android/calendar/cards/t0;Z)V

    .line 115
    .line 116
    .line 117
    invoke-static {v1}, Lcom/android/calendar/cards/t0;->o(Lcom/android/calendar/cards/t0;)Landroid/content/Context;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    invoke-static {v1}, Lcom/android/calendar/cards/t0;->m(Lcom/android/calendar/cards/t0;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    invoke-static {v6, v7, p1}, Lcom/miui/calendar/util/q;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 126
    .line 127
    .line 128
    :try_start_2
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    xor-int/2addr v6, v5

    .line 133
    if-eqz v6, :cond_8

    .line 134
    .line 135
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    check-cast v3, Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 140
    .line 141
    invoke-static {v1, v3}, Lcom/android/calendar/cards/t0;->r(Lcom/android/calendar/cards/t0;Lcom/miui/calendar/card/schema/CustomCardSchema;)V

    .line 142
    .line 143
    .line 144
    invoke-static {v1}, Lcom/android/calendar/cards/t0;->p(Lcom/android/calendar/cards/t0;)Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    if-eqz v3, :cond_7

    .line 149
    .line 150
    invoke-static {v1}, Lcom/android/calendar/cards/t0;->p(Lcom/android/calendar/cards/t0;)Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    if-eqz v3, :cond_4

    .line 155
    .line 156
    iget-object v2, v3, Lcom/miui/calendar/card/schema/CustomCardSchema;->itemList:Ljava/util/List;

    .line 157
    .line 158
    :cond_4
    if-eqz v2, :cond_6

    .line 159
    .line 160
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-eqz v2, :cond_5

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_5
    move v2, v4

    .line 168
    goto :goto_2

    .line 169
    :cond_6
    :goto_1
    move v2, v5

    .line 170
    :goto_2
    if-nez v2, :cond_7

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_7
    move v5, v4

    .line 174
    :goto_3
    invoke-static {v1, v5}, Lcom/android/calendar/cards/t0;->s(Lcom/android/calendar/cards/t0;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 175
    .line 176
    .line 177
    goto :goto_4

    .line 178
    :catch_0
    move-exception v2

    .line 179
    :try_start_3
    const-string v3, "doInBackground() "

    .line 180
    .line 181
    invoke-static {v0, v3, v2}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    .line 183
    .line 184
    invoke-static {v1, v4}, Lcom/android/calendar/cards/t0;->s(Lcom/android/calendar/cards/t0;Z)V

    .line 185
    .line 186
    .line 187
    :cond_8
    :goto_4
    invoke-virtual {v1}, Lcom/android/calendar/cards/b;->g()V

    .line 188
    .line 189
    .line 190
    goto :goto_8

    .line 191
    :cond_9
    :goto_5
    const-string v3, "onResponse history data is []"

    .line 192
    .line 193
    invoke-static {v0, v3}, Lcom/miui/calendar/util/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-static {v1}, Lcom/android/calendar/cards/t0;->o(Lcom/android/calendar/cards/t0;)Landroid/content/Context;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    invoke-static {v1}, Lcom/android/calendar/cards/t0;->m(Lcom/android/calendar/cards/t0;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    invoke-static {v3, v5}, Lcom/miui/calendar/util/q;->h(Landroid/content/Context;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-static {v1}, Lcom/android/calendar/cards/t0;->n(Lcom/android/calendar/cards/t0;)Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    if-nez v3, :cond_a

    .line 212
    .line 213
    goto :goto_6

    .line 214
    :cond_a
    iput-object v2, v3, Lcom/miui/calendar/card/schema/CustomCardSchema;->itemList:Ljava/util/List;

    .line 215
    .line 216
    :goto_6
    invoke-static {v1, v4}, Lcom/android/calendar/cards/t0;->s(Lcom/android/calendar/cards/t0;Z)V

    .line 217
    .line 218
    .line 219
    invoke-static {v1, v2}, Lcom/android/calendar/cards/t0;->q(Lcom/android/calendar/cards/t0;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1}, Lcom/android/calendar/cards/b;->g()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 223
    .line 224
    .line 225
    return-void

    .line 226
    :catch_1
    move-exception v1

    .line 227
    move-object v2, p1

    .line 228
    goto :goto_7

    .line 229
    :catch_2
    move-exception v1

    .line 230
    :goto_7
    const-string p1, "ResponseListener:"

    .line 231
    .line 232
    invoke-static {v0, p1, v1}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 233
    .line 234
    .line 235
    new-instance p1, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .line 239
    .line 240
    const-string v1, "data:"

    .line 241
    .line 242
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    invoke-static {v0, p1}, Lcom/miui/calendar/util/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    :goto_8
    return-void
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

.method public b(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "Cal:D:HistoryPresenter"

    .line 7
    .line 8
    const-string v1, "onErrorResponse"

    .line 9
    .line 10
    invoke-static {v0, v1, p1}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    return-void
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

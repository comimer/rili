.class final Lcom/miui/calendar/ai/TimeParser$parse$1$parseAwait$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TimeParser.kt"

# interfaces
.implements Lw7/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/calendar/ai/TimeParser$parse$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lw7/p<",
        "Lkotlinx/coroutines/k0;",
        "Lkotlin/coroutines/c<",
        "-",
        "Lcom/miui/calendar/ai/TimeParser$TextParseResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\u008a@"
    }
    d2 = {
        "Lkotlinx/coroutines/k0;",
        "Lcom/miui/calendar/ai/TimeParser$TextParseResult;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.miui.calendar.ai.TimeParser$parse$1$parseAwait$1"
    f = "TimeParser.kt"
    l = {
        0x56
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $text:Ljava/lang/String;

.field label:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcom/miui/calendar/ai/TimeParser$parse$1$parseAwait$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/calendar/ai/TimeParser$parse$1$parseAwait$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/calendar/ai/TimeParser$parse$1$parseAwait$1;->$text:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/c<",
            "*>;)",
            "Lkotlin/coroutines/c<",
            "Lkotlin/u;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/miui/calendar/ai/TimeParser$parse$1$parseAwait$1;

    iget-object v0, p0, Lcom/miui/calendar/ai/TimeParser$parse$1$parseAwait$1;->$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/calendar/ai/TimeParser$parse$1$parseAwait$1;->$text:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/miui/calendar/ai/TimeParser$parse$1$parseAwait$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/k0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcom/miui/calendar/ai/TimeParser$parse$1$parseAwait$1;->invoke(Lkotlinx/coroutines/k0;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/k0;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/k0;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcom/miui/calendar/ai/TimeParser$TextParseResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/miui/calendar/ai/TimeParser$parse$1$parseAwait$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcom/miui/calendar/ai/TimeParser$parse$1$parseAwait$1;

    sget-object p2, Lkotlin/u;->a:Lkotlin/u;

    invoke-virtual {p1, p2}, Lcom/miui/calendar/ai/TimeParser$parse$1$parseAwait$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, v0, Lcom/miui/calendar/ai/TimeParser$parse$1$parseAwait$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    if-ne v2, v3, :cond_0

    .line 14
    .line 15
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/j;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    move-object/from16 v2, p1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v1

    .line 29
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/j;->b(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object v5, v0, Lcom/miui/calendar/ai/TimeParser$parse$1$parseAwait$1;->$context:Landroid/content/Context;

    .line 33
    .line 34
    const/4 v6, 0x0

    .line 35
    const/4 v7, 0x0

    .line 36
    const/4 v8, 0x0

    .line 37
    const/16 v9, 0xe

    .line 38
    .line 39
    const/4 v10, 0x0

    .line 40
    invoke-static/range {v5 .. v10}, Lu1/d;->c(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iget-object v5, v0, Lcom/miui/calendar/ai/TimeParser$parse$1$parseAwait$1;->$context:Landroid/content/Context;

    .line 45
    .line 46
    invoke-static {v5, v4}, Lcom/miui/calendar/util/l0;->a(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/Map;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    const-string v6, "paramsMap"

    .line 51
    .line 52
    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v6, v0, Lcom/miui/calendar/ai/TimeParser$parse$1$parseAwait$1;->$text:Ljava/lang/String;

    .line 56
    .line 57
    const-string v7, "text"

    .line 58
    .line 59
    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    invoke-static {}, Lcom/android/calendar/common/Utils;->W()J

    .line 63
    .line 64
    .line 65
    move-result-wide v6

    .line 66
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    const-string v7, "time"

    .line 71
    .line 72
    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    invoke-static {v4, v3, v4}, Lu1/d;->f(Ljava/lang/String;ILjava/lang/Object;)Lu1/a;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    :try_start_1
    invoke-interface {v6, v2, v5}, Lu1/a;->p(Ljava/lang/String;Ljava/util/Map;)Lkotlinx/coroutines/p0;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    if-eqz v2, :cond_a

    .line 84
    .line 85
    iput v3, v0, Lcom/miui/calendar/ai/TimeParser$parse$1$parseAwait$1;->label:I

    .line 86
    .line 87
    invoke-interface {v2, v0}, Lkotlinx/coroutines/p0;->E(Lkotlin/coroutines/c;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    if-ne v2, v1, :cond_2

    .line 92
    .line 93
    return-object v1

    .line 94
    :cond_2
    :goto_0
    check-cast v2, Lcom/miui/calendar/ai/TimeParser$ParseResult;

    .line 95
    .line 96
    if-nez v2, :cond_3

    .line 97
    .line 98
    goto/16 :goto_4

    .line 99
    .line 100
    :cond_3
    invoke-virtual {v2}, Lcom/miui/calendar/ai/TimeParser$ParseResult;->getCode()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_4

    .line 105
    .line 106
    return-object v4

    .line 107
    :cond_4
    invoke-virtual {v2}, Lcom/miui/calendar/ai/TimeParser$ParseResult;->getData()Lcom/miui/calendar/ai/TimeParser$ParseData;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v1}, Lcom/miui/calendar/ai/TimeParser$ParseData;->getScheduleStartTime()J

    .line 112
    .line 113
    .line 114
    move-result-wide v5

    .line 115
    const-wide/16 v7, -0x1

    .line 116
    .line 117
    cmp-long v1, v5, v7

    .line 118
    .line 119
    if-nez v1, :cond_5

    .line 120
    .line 121
    return-object v4

    .line 122
    :cond_5
    invoke-virtual {v2}, Lcom/miui/calendar/ai/TimeParser$ParseResult;->getData()Lcom/miui/calendar/ai/TimeParser$ParseData;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v1}, Lcom/miui/calendar/ai/TimeParser$ParseData;->getAllDay()Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    invoke-virtual {v2}, Lcom/miui/calendar/ai/TimeParser$ParseResult;->getData()Lcom/miui/calendar/ai/TimeParser$ParseData;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    invoke-virtual {v5}, Lcom/miui/calendar/ai/TimeParser$ParseData;->getScheduleStartTime()J

    .line 135
    .line 136
    .line 137
    move-result-wide v13

    .line 138
    invoke-virtual {v2}, Lcom/miui/calendar/ai/TimeParser$ParseResult;->getData()Lcom/miui/calendar/ai/TimeParser$ParseData;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    invoke-virtual {v5}, Lcom/miui/calendar/ai/TimeParser$ParseData;->getScheduleEndTime()J

    .line 143
    .line 144
    .line 145
    move-result-wide v5

    .line 146
    invoke-virtual {v2}, Lcom/miui/calendar/ai/TimeParser$ParseResult;->getData()Lcom/miui/calendar/ai/TimeParser$ParseData;

    .line 147
    .line 148
    .line 149
    move-result-object v9

    .line 150
    invoke-virtual {v9}, Lcom/miui/calendar/ai/TimeParser$ParseData;->getTextPosStart()I

    .line 151
    .line 152
    .line 153
    move-result v9

    .line 154
    invoke-virtual {v2}, Lcom/miui/calendar/ai/TimeParser$ParseResult;->getData()Lcom/miui/calendar/ai/TimeParser$ParseData;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-virtual {v2}, Lcom/miui/calendar/ai/TimeParser$ParseData;->getTextPosEnd()I

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    const/4 v10, 0x0

    .line 163
    if-lez v9, :cond_6

    .line 164
    .line 165
    iget-object v11, v0, Lcom/miui/calendar/ai/TimeParser$parse$1$parseAwait$1;->$text:Ljava/lang/String;

    .line 166
    .line 167
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 168
    .line 169
    .line 170
    move-result v11

    .line 171
    invoke-static {v9, v11}, Lb8/g;->f(II)I

    .line 172
    .line 173
    .line 174
    move-result v9

    .line 175
    move v11, v9

    .line 176
    goto :goto_1

    .line 177
    :cond_6
    move v11, v10

    .line 178
    :goto_1
    if-lt v2, v11, :cond_7

    .line 179
    .line 180
    iget-object v9, v0, Lcom/miui/calendar/ai/TimeParser$parse$1$parseAwait$1;->$text:Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 183
    .line 184
    .line 185
    move-result v9

    .line 186
    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    move v12, v2

    .line 191
    goto :goto_2

    .line 192
    :cond_7
    move v12, v11

    .line 193
    :goto_2
    if-nez v1, :cond_8

    .line 194
    .line 195
    cmp-long v2, v5, v7

    .line 196
    .line 197
    if-nez v2, :cond_8

    .line 198
    .line 199
    invoke-static {v13, v14}, Lcom/android/calendar/event/j;->h(J)J

    .line 200
    .line 201
    .line 202
    move-result-wide v5

    .line 203
    :cond_8
    move-wide v15, v5

    .line 204
    new-instance v2, Lcom/miui/calendar/ai/TimeParser$TextParseResult;

    .line 205
    .line 206
    iget-object v5, v0, Lcom/miui/calendar/ai/TimeParser$parse$1$parseAwait$1;->$text:Ljava/lang/String;

    .line 207
    .line 208
    if-eqz v1, :cond_9

    .line 209
    .line 210
    move/from16 v17, v3

    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_9
    move/from16 v17, v10

    .line 214
    .line 215
    :goto_3
    move-object v9, v2

    .line 216
    move-object v10, v5

    .line 217
    invoke-direct/range {v9 .. v17}, Lcom/miui/calendar/ai/TimeParser$TextParseResult;-><init>(Ljava/lang/String;IIJJZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 218
    .line 219
    .line 220
    return-object v2

    .line 221
    :catch_0
    :cond_a
    :goto_4
    return-object v4
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

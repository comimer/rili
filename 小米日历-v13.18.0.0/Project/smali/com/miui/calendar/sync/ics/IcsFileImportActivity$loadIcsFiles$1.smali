.class final Lcom/miui/calendar/sync/ics/IcsFileImportActivity$loadIcsFiles$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "IcsFileImportActivity.kt"

# interfaces
.implements Lw7/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->x0(Landroid/net/Uri;)V
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
        "Lkotlin/u;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"
    }
    d2 = {
        "Lkotlinx/coroutines/k0;",
        "Lkotlin/u;",
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
    c = "com.miui.calendar.sync.ics.IcsFileImportActivity$loadIcsFiles$1"
    f = "IcsFileImportActivity.kt"
    l = {
        0xba
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $file:Landroid/net/Uri;

.field label:I

.field final synthetic this$0:Lcom/miui/calendar/sync/ics/IcsFileImportActivity;


# direct methods
.method constructor <init>(Lcom/miui/calendar/sync/ics/IcsFileImportActivity;Landroid/net/Uri;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/calendar/sync/ics/IcsFileImportActivity;",
            "Landroid/net/Uri;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcom/miui/calendar/sync/ics/IcsFileImportActivity$loadIcsFiles$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity$loadIcsFiles$1;->this$0:Lcom/miui/calendar/sync/ics/IcsFileImportActivity;

    iput-object p2, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity$loadIcsFiles$1;->$file:Landroid/net/Uri;

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

    new-instance p1, Lcom/miui/calendar/sync/ics/IcsFileImportActivity$loadIcsFiles$1;

    iget-object v0, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity$loadIcsFiles$1;->this$0:Lcom/miui/calendar/sync/ics/IcsFileImportActivity;

    iget-object v1, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity$loadIcsFiles$1;->$file:Landroid/net/Uri;

    invoke-direct {p1, v0, v1, p2}, Lcom/miui/calendar/sync/ics/IcsFileImportActivity$loadIcsFiles$1;-><init>(Lcom/miui/calendar/sync/ics/IcsFileImportActivity;Landroid/net/Uri;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/k0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcom/miui/calendar/sync/ics/IcsFileImportActivity$loadIcsFiles$1;->invoke(Lkotlinx/coroutines/k0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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
            "Lkotlin/u;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/miui/calendar/sync/ics/IcsFileImportActivity$loadIcsFiles$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcom/miui/calendar/sync/ics/IcsFileImportActivity$loadIcsFiles$1;

    sget-object p2, Lkotlin/u;->a:Lkotlin/u;

    invoke-virtual {p1, p2}, Lcom/miui/calendar/sync/ics/IcsFileImportActivity$loadIcsFiles$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity$loadIcsFiles$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, Lkotlin/j;->b(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    invoke-static {p1}, Lkotlin/j;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1}, Lkotlinx/coroutines/l0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/k0;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v6, 0x0

    .line 38
    new-instance v7, Lcom/miui/calendar/sync/ics/IcsFileImportActivity$loadIcsFiles$1$loadFileAwait$1;

    .line 39
    .line 40
    iget-object p1, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity$loadIcsFiles$1;->$file:Landroid/net/Uri;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity$loadIcsFiles$1;->this$0:Lcom/miui/calendar/sync/ics/IcsFileImportActivity;

    .line 43
    .line 44
    invoke-direct {v7, p1, v1, v3}, Lcom/miui/calendar/sync/ics/IcsFileImportActivity$loadIcsFiles$1$loadFileAwait$1;-><init>(Landroid/net/Uri;Lcom/miui/calendar/sync/ics/IcsFileImportActivity;Lkotlin/coroutines/c;)V

    .line 45
    .line 46
    .line 47
    const/4 v8, 0x3

    .line 48
    const/4 v9, 0x0

    .line 49
    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/h;->b(Lkotlinx/coroutines/k0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lw7/p;ILjava/lang/Object;)Lkotlinx/coroutines/p0;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput v2, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity$loadIcsFiles$1;->label:I

    .line 54
    .line 55
    invoke-interface {p1, p0}, Lkotlinx/coroutines/p0;->E(Lkotlin/coroutines/c;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-ne p1, v0, :cond_2

    .line 60
    .line 61
    return-object v0

    .line 62
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity$loadIcsFiles$1;->this$0:Lcom/miui/calendar/sync/ics/IcsFileImportActivity;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->s0(Lcom/miui/calendar/sync/ics/IcsFileImportActivity;)Lcom/miui/calendar/view/LoadingLayout;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-nez p1, :cond_3

    .line 69
    .line 70
    const-string p1, "mLoadingView"

    .line 71
    .line 72
    invoke-static {p1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    move-object p1, v3

    .line 76
    :cond_3
    invoke-virtual {p1}, Lcom/miui/calendar/view/LoadingLayout;->a()V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity$loadIcsFiles$1;->this$0:Lcom/miui/calendar/sync/ics/IcsFileImportActivity;

    .line 80
    .line 81
    invoke-static {p1}, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->q0(Lcom/miui/calendar/sync/ics/IcsFileImportActivity;)Lcom/miui/calendar/sync/ics/IcsFileImportActivity$b;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-nez p1, :cond_4

    .line 86
    .line 87
    const-string p1, "mFileAdapter"

    .line 88
    .line 89
    invoke-static {p1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    move-object p1, v3

    .line 93
    :cond_4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity$loadIcsFiles$1;->this$0:Lcom/miui/calendar/sync/ics/IcsFileImportActivity;

    .line 97
    .line 98
    invoke-static {p1}, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->r0(Lcom/miui/calendar/sync/ics/IcsFileImportActivity;)Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    const-string v0, "mEmptyView"

    .line 107
    .line 108
    const/4 v1, 0x0

    .line 109
    const-string v2, "mBtnImport"

    .line 110
    .line 111
    if-lez p1, :cond_7

    .line 112
    .line 113
    iget-object p1, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity$loadIcsFiles$1;->this$0:Lcom/miui/calendar/sync/ics/IcsFileImportActivity;

    .line 114
    .line 115
    invoke-static {p1}, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->o0(Lcom/miui/calendar/sync/ics/IcsFileImportActivity;)Landroid/widget/TextView;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    if-nez p1, :cond_5

    .line 120
    .line 121
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    move-object p1, v3

    .line 125
    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 126
    .line 127
    .line 128
    iget-object p1, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity$loadIcsFiles$1;->this$0:Lcom/miui/calendar/sync/ics/IcsFileImportActivity;

    .line 129
    .line 130
    invoke-static {p1}, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->p0(Lcom/miui/calendar/sync/ics/IcsFileImportActivity;)Lcom/miui/calendar/widget/EmptyView;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    if-nez p1, :cond_6

    .line 135
    .line 136
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_6
    move-object v3, p1

    .line 141
    :goto_1
    const/16 p1, 0x8

    .line 142
    .line 143
    invoke-virtual {v3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_7
    iget-object p1, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity$loadIcsFiles$1;->this$0:Lcom/miui/calendar/sync/ics/IcsFileImportActivity;

    .line 148
    .line 149
    invoke-static {p1}, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->o0(Lcom/miui/calendar/sync/ics/IcsFileImportActivity;)Landroid/widget/TextView;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    if-nez p1, :cond_8

    .line 154
    .line 155
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    move-object p1, v3

    .line 159
    :cond_8
    const/4 v2, 0x4

    .line 160
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 161
    .line 162
    .line 163
    iget-object p1, p0, Lcom/miui/calendar/sync/ics/IcsFileImportActivity$loadIcsFiles$1;->this$0:Lcom/miui/calendar/sync/ics/IcsFileImportActivity;

    .line 164
    .line 165
    invoke-static {p1}, Lcom/miui/calendar/sync/ics/IcsFileImportActivity;->p0(Lcom/miui/calendar/sync/ics/IcsFileImportActivity;)Lcom/miui/calendar/widget/EmptyView;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    if-nez p1, :cond_9

    .line 170
    .line 171
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_9
    move-object v3, p1

    .line 176
    :goto_2
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 177
    .line 178
    .line 179
    :goto_3
    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    .line 180
    .line 181
    return-object p1
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

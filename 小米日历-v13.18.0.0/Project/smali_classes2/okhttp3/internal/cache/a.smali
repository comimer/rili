.class public final Lokhttp3/internal/cache/a;
.super Ljava/lang/Object;
.source "CacheInterceptor.kt"

# interfaces
.implements Lokhttp3/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/cache/a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \n2\u00020\u0001:\u0001\u000bB\u0011\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lokhttp3/internal/cache/a;",
        "Lokhttp3/u;",
        "Lokhttp3/u$a;",
        "chain",
        "Lokhttp3/a0;",
        "intercept",
        "Lokhttp3/c;",
        "cache",
        "<init>",
        "(Lokhttp3/c;)V",
        "d",
        "a",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final d:Lokhttp3/internal/cache/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/internal/cache/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/cache/a$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lokhttp3/internal/cache/a;->d:Lokhttp3/internal/cache/a$a;

    return-void
.end method

.method public constructor <init>(Lokhttp3/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
.end method


# virtual methods
.method public intercept(Lokhttp3/u$a;)Lokhttp3/a0;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "chain"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lokhttp3/u$a;->call()Lokhttp3/e;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    new-instance v3, Lokhttp3/internal/cache/b$b;

    .line 15
    .line 16
    invoke-interface {p1}, Lokhttp3/u$a;->b()Lokhttp3/y;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    const/4 v5, 0x0

    .line 21
    invoke-direct {v3, v1, v2, v4, v5}, Lokhttp3/internal/cache/b$b;-><init>(JLokhttp3/y;Lokhttp3/a0;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Lokhttp3/internal/cache/b$b;->b()Lokhttp3/internal/cache/b;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lokhttp3/internal/cache/b;->b()Lokhttp3/y;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1}, Lokhttp3/internal/cache/b;->a()Lokhttp3/a0;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    instance-of v3, v0, Lokhttp3/internal/connection/e;

    .line 37
    .line 38
    if-nez v3, :cond_0

    .line 39
    .line 40
    move-object v3, v5

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move-object v3, v0

    .line 43
    :goto_0
    check-cast v3, Lokhttp3/internal/connection/e;

    .line 44
    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    invoke-virtual {v3}, Lokhttp3/internal/connection/e;->o()Lokhttp3/q;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    sget-object v3, Lokhttp3/q;->a:Lokhttp3/q;

    .line 55
    .line 56
    :goto_1
    if-nez v2, :cond_2

    .line 57
    .line 58
    if-nez v1, :cond_2

    .line 59
    .line 60
    new-instance v1, Lokhttp3/a0$a;

    .line 61
    .line 62
    invoke-direct {v1}, Lokhttp3/a0$a;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-interface {p1}, Lokhttp3/u$a;->b()Lokhttp3/y;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {v1, p1}, Lokhttp3/a0$a;->r(Lokhttp3/y;)Lokhttp3/a0$a;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Lokhttp3/a0$a;->p(Lokhttp3/Protocol;)Lokhttp3/a0$a;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    const/16 v1, 0x1f8

    .line 80
    .line 81
    invoke-virtual {p1, v1}, Lokhttp3/a0$a;->g(I)Lokhttp3/a0$a;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const-string v1, "Unsatisfiable Request (only-if-cached)"

    .line 86
    .line 87
    invoke-virtual {p1, v1}, Lokhttp3/a0$a;->m(Ljava/lang/String;)Lokhttp3/a0$a;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    sget-object v1, Lsb/b;->c:Lokhttp3/b0;

    .line 92
    .line 93
    invoke-virtual {p1, v1}, Lokhttp3/a0$a;->b(Lokhttp3/b0;)Lokhttp3/a0$a;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const-wide/16 v1, -0x1

    .line 98
    .line 99
    invoke-virtual {p1, v1, v2}, Lokhttp3/a0$a;->s(J)Lokhttp3/a0$a;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 104
    .line 105
    .line 106
    move-result-wide v1

    .line 107
    invoke-virtual {p1, v1, v2}, Lokhttp3/a0$a;->q(J)Lokhttp3/a0$a;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1}, Lokhttp3/a0$a;->c()Lokhttp3/a0;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {v3, v0, p1}, Lokhttp3/q;->z(Lokhttp3/e;Lokhttp3/a0;)V

    .line 116
    .line 117
    .line 118
    return-object p1

    .line 119
    :cond_2
    if-nez v2, :cond_4

    .line 120
    .line 121
    if-nez v1, :cond_3

    .line 122
    .line 123
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 124
    .line 125
    .line 126
    :cond_3
    invoke-virtual {v1}, Lokhttp3/a0;->a0()Lokhttp3/a0$a;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    sget-object v2, Lokhttp3/internal/cache/a;->d:Lokhttp3/internal/cache/a$a;

    .line 131
    .line 132
    invoke-static {v2, v1}, Lokhttp3/internal/cache/a$a;->b(Lokhttp3/internal/cache/a$a;Lokhttp3/a0;)Lokhttp3/a0;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {p1, v1}, Lokhttp3/a0$a;->d(Lokhttp3/a0;)Lokhttp3/a0$a;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {p1}, Lokhttp3/a0$a;->c()Lokhttp3/a0;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {v3, v0, p1}, Lokhttp3/q;->b(Lokhttp3/e;Lokhttp3/a0;)V

    .line 145
    .line 146
    .line 147
    return-object p1

    .line 148
    :cond_4
    if-eqz v1, :cond_5

    .line 149
    .line 150
    invoke-virtual {v3, v0, v1}, Lokhttp3/q;->a(Lokhttp3/e;Lokhttp3/a0;)V

    .line 151
    .line 152
    .line 153
    :cond_5
    :try_start_0
    invoke-interface {p1, v2}, Lokhttp3/u$a;->a(Lokhttp3/y;)Lokhttp3/a0;

    .line 154
    .line 155
    .line 156
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    if-eqz v1, :cond_8

    .line 158
    .line 159
    if-eqz p1, :cond_7

    .line 160
    .line 161
    invoke-virtual {p1}, Lokhttp3/a0;->m()I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    const/16 v2, 0x130

    .line 166
    .line 167
    if-ne v0, v2, :cond_7

    .line 168
    .line 169
    invoke-virtual {v1}, Lokhttp3/a0;->a0()Lokhttp3/a0$a;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    sget-object v2, Lokhttp3/internal/cache/a;->d:Lokhttp3/internal/cache/a$a;

    .line 174
    .line 175
    invoke-virtual {v1}, Lokhttp3/a0;->H()Lokhttp3/s;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-virtual {p1}, Lokhttp3/a0;->H()Lokhttp3/s;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    invoke-static {v2, v3, v4}, Lokhttp3/internal/cache/a$a;->a(Lokhttp3/internal/cache/a$a;Lokhttp3/s;Lokhttp3/s;)Lokhttp3/s;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    invoke-virtual {v0, v3}, Lokhttp3/a0$a;->k(Lokhttp3/s;)Lokhttp3/a0$a;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {p1}, Lokhttp3/a0;->p0()J

    .line 192
    .line 193
    .line 194
    move-result-wide v3

    .line 195
    invoke-virtual {v0, v3, v4}, Lokhttp3/a0$a;->s(J)Lokhttp3/a0$a;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {p1}, Lokhttp3/a0;->i0()J

    .line 200
    .line 201
    .line 202
    move-result-wide v3

    .line 203
    invoke-virtual {v0, v3, v4}, Lokhttp3/a0$a;->q(J)Lokhttp3/a0$a;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-static {v2, v1}, Lokhttp3/internal/cache/a$a;->b(Lokhttp3/internal/cache/a$a;Lokhttp3/a0;)Lokhttp3/a0;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-virtual {v0, v1}, Lokhttp3/a0$a;->d(Lokhttp3/a0;)Lokhttp3/a0$a;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-static {v2, p1}, Lokhttp3/internal/cache/a$a;->b(Lokhttp3/internal/cache/a$a;Lokhttp3/a0;)Lokhttp3/a0;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-virtual {v0, v1}, Lokhttp3/a0$a;->n(Lokhttp3/a0;)Lokhttp3/a0$a;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-virtual {v0}, Lokhttp3/a0$a;->c()Lokhttp3/a0;

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1}, Lokhttp3/a0;->c()Lokhttp3/b0;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    if-nez p1, :cond_6

    .line 231
    .line 232
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 233
    .line 234
    .line 235
    :cond_6
    invoke-virtual {p1}, Lokhttp3/b0;->close()V

    .line 236
    .line 237
    .line 238
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 239
    .line 240
    .line 241
    throw v5

    .line 242
    :cond_7
    invoke-virtual {v1}, Lokhttp3/a0;->c()Lokhttp3/b0;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    if-eqz v0, :cond_8

    .line 247
    .line 248
    invoke-static {v0}, Lsb/b;->j(Ljava/io/Closeable;)V

    .line 249
    .line 250
    .line 251
    :cond_8
    if-nez p1, :cond_9

    .line 252
    .line 253
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 254
    .line 255
    .line 256
    :cond_9
    invoke-virtual {p1}, Lokhttp3/a0;->a0()Lokhttp3/a0$a;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    sget-object v2, Lokhttp3/internal/cache/a;->d:Lokhttp3/internal/cache/a$a;

    .line 261
    .line 262
    invoke-static {v2, v1}, Lokhttp3/internal/cache/a$a;->b(Lokhttp3/internal/cache/a$a;Lokhttp3/a0;)Lokhttp3/a0;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    invoke-virtual {v0, v1}, Lokhttp3/a0$a;->d(Lokhttp3/a0;)Lokhttp3/a0$a;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-static {v2, p1}, Lokhttp3/internal/cache/a$a;->b(Lokhttp3/internal/cache/a$a;Lokhttp3/a0;)Lokhttp3/a0;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    invoke-virtual {v0, p1}, Lokhttp3/a0$a;->n(Lokhttp3/a0;)Lokhttp3/a0$a;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    invoke-virtual {p1}, Lokhttp3/a0$a;->c()Lokhttp3/a0;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    return-object p1

    .line 283
    :catchall_0
    move-exception p1

    .line 284
    throw p1
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
.end method

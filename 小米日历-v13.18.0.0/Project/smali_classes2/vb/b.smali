.class public final Lvb/b;
.super Ljava/lang/Object;
.source "CallServerInterceptor.kt"

# interfaces
.implements Lokhttp3/u;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lvb/b;",
        "Lokhttp3/u;",
        "Lokhttp3/u$a;",
        "chain",
        "Lokhttp3/a0;",
        "intercept",
        "",
        "forWebSocket",
        "<init>",
        "(Z)V",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field private final d:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lvb/b;->d:Z

    .line 5
    .line 6
    return-void
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
    .locals 11
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
    check-cast p1, Lvb/g;

    .line 7
    .line 8
    invoke-virtual {p1}, Lvb/g;->g()Lokhttp3/internal/connection/c;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p1}, Lvb/g;->i()Lokhttp3/y;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lokhttp3/y;->a()Lokhttp3/z;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    invoke-virtual {v0, p1}, Lokhttp3/internal/connection/c;->t(Lokhttp3/y;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lokhttp3/y;->g()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-static {v4}, Lvb/f;->a(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    const/4 v5, 0x0

    .line 41
    const/4 v6, 0x0

    .line 42
    const/4 v7, 0x1

    .line 43
    if-eqz v4, :cond_4

    .line 44
    .line 45
    if-eqz v1, :cond_4

    .line 46
    .line 47
    const-string v4, "Expect"

    .line 48
    .line 49
    invoke-virtual {p1, v4}, Lokhttp3/y;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    const-string v8, "100-continue"

    .line 54
    .line 55
    invoke-static {v8, v4, v7}, Lkotlin/text/k;->p(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_1

    .line 60
    .line 61
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->f()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v7}, Lokhttp3/internal/connection/c;->p(Z)Lokhttp3/a0$a;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->r()V

    .line 69
    .line 70
    .line 71
    move v8, v6

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    move-object v4, v5

    .line 74
    move v8, v7

    .line 75
    :goto_0
    if-nez v4, :cond_3

    .line 76
    .line 77
    invoke-virtual {v1}, Lokhttp3/z;->e()Z

    .line 78
    .line 79
    .line 80
    move-result v9

    .line 81
    if-eqz v9, :cond_2

    .line 82
    .line 83
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->f()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, p1, v7}, Lokhttp3/internal/connection/c;->c(Lokhttp3/y;Z)Lcc/y;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    invoke-static {v9}, Lcc/n;->a(Lcc/y;)Lcc/f;

    .line 91
    .line 92
    .line 93
    move-result-object v9

    .line 94
    invoke-virtual {v1, v9}, Lokhttp3/z;->g(Lcc/f;)V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    invoke-virtual {v0, p1, v6}, Lokhttp3/internal/connection/c;->c(Lokhttp3/y;Z)Lcc/y;

    .line 99
    .line 100
    .line 101
    move-result-object v9

    .line 102
    invoke-static {v9}, Lcc/n;->a(Lcc/y;)Lcc/f;

    .line 103
    .line 104
    .line 105
    move-result-object v9

    .line 106
    invoke-virtual {v1, v9}, Lokhttp3/z;->g(Lcc/f;)V

    .line 107
    .line 108
    .line 109
    invoke-interface {v9}, Lcc/y;->close()V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_3
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->n()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->h()Lokhttp3/internal/connection/RealConnection;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    invoke-virtual {v9}, Lokhttp3/internal/connection/RealConnection;->v()Z

    .line 121
    .line 122
    .line 123
    move-result v9

    .line 124
    if-nez v9, :cond_5

    .line 125
    .line 126
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->m()V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_4
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->n()V

    .line 131
    .line 132
    .line 133
    move-object v4, v5

    .line 134
    move v8, v7

    .line 135
    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    .line 136
    .line 137
    invoke-virtual {v1}, Lokhttp3/z;->e()Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-nez v1, :cond_7

    .line 142
    .line 143
    :cond_6
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->e()V

    .line 144
    .line 145
    .line 146
    :cond_7
    if-nez v4, :cond_9

    .line 147
    .line 148
    invoke-virtual {v0, v6}, Lokhttp3/internal/connection/c;->p(Z)Lokhttp3/a0$a;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    if-nez v4, :cond_8

    .line 153
    .line 154
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 155
    .line 156
    .line 157
    :cond_8
    if-eqz v8, :cond_9

    .line 158
    .line 159
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->r()V

    .line 160
    .line 161
    .line 162
    move v8, v6

    .line 163
    :cond_9
    invoke-virtual {v4, p1}, Lokhttp3/a0$a;->r(Lokhttp3/y;)Lokhttp3/a0$a;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->h()Lokhttp3/internal/connection/RealConnection;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    invoke-virtual {v4}, Lokhttp3/internal/connection/RealConnection;->r()Lokhttp3/Handshake;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    invoke-virtual {v1, v4}, Lokhttp3/a0$a;->i(Lokhttp3/Handshake;)Lokhttp3/a0$a;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {v1, v2, v3}, Lokhttp3/a0$a;->s(J)Lokhttp3/a0$a;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 184
    .line 185
    .line 186
    move-result-wide v9

    .line 187
    invoke-virtual {v1, v9, v10}, Lokhttp3/a0$a;->q(J)Lokhttp3/a0$a;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-virtual {v1}, Lokhttp3/a0$a;->c()Lokhttp3/a0;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-virtual {v1}, Lokhttp3/a0;->m()I

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    const/16 v9, 0x64

    .line 200
    .line 201
    if-ne v4, v9, :cond_c

    .line 202
    .line 203
    invoke-virtual {v0, v6}, Lokhttp3/internal/connection/c;->p(Z)Lokhttp3/a0$a;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    if-nez v1, :cond_a

    .line 208
    .line 209
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 210
    .line 211
    .line 212
    :cond_a
    if-eqz v8, :cond_b

    .line 213
    .line 214
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->r()V

    .line 215
    .line 216
    .line 217
    :cond_b
    invoke-virtual {v1, p1}, Lokhttp3/a0$a;->r(Lokhttp3/y;)Lokhttp3/a0$a;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->h()Lokhttp3/internal/connection/RealConnection;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {v1}, Lokhttp3/internal/connection/RealConnection;->r()Lokhttp3/Handshake;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-virtual {p1, v1}, Lokhttp3/a0$a;->i(Lokhttp3/Handshake;)Lokhttp3/a0$a;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-virtual {p1, v2, v3}, Lokhttp3/a0$a;->s(J)Lokhttp3/a0$a;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 238
    .line 239
    .line 240
    move-result-wide v1

    .line 241
    invoke-virtual {p1, v1, v2}, Lokhttp3/a0$a;->q(J)Lokhttp3/a0$a;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    invoke-virtual {p1}, Lokhttp3/a0$a;->c()Lokhttp3/a0;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    invoke-virtual {v1}, Lokhttp3/a0;->m()I

    .line 250
    .line 251
    .line 252
    move-result v4

    .line 253
    :cond_c
    invoke-virtual {v0, v1}, Lokhttp3/internal/connection/c;->q(Lokhttp3/a0;)V

    .line 254
    .line 255
    .line 256
    iget-boolean p1, p0, Lvb/b;->d:Z

    .line 257
    .line 258
    if-eqz p1, :cond_d

    .line 259
    .line 260
    const/16 p1, 0x65

    .line 261
    .line 262
    if-ne v4, p1, :cond_d

    .line 263
    .line 264
    invoke-virtual {v1}, Lokhttp3/a0;->a0()Lokhttp3/a0$a;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    sget-object v1, Lsb/b;->c:Lokhttp3/b0;

    .line 269
    .line 270
    invoke-virtual {p1, v1}, Lokhttp3/a0$a;->b(Lokhttp3/b0;)Lokhttp3/a0$a;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    invoke-virtual {p1}, Lokhttp3/a0$a;->c()Lokhttp3/a0;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    goto :goto_2

    .line 279
    :cond_d
    invoke-virtual {v1}, Lokhttp3/a0;->a0()Lokhttp3/a0$a;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    invoke-virtual {v0, v1}, Lokhttp3/internal/connection/c;->o(Lokhttp3/a0;)Lokhttp3/b0;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-virtual {p1, v1}, Lokhttp3/a0$a;->b(Lokhttp3/b0;)Lokhttp3/a0$a;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    invoke-virtual {p1}, Lokhttp3/a0$a;->c()Lokhttp3/a0;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    :goto_2
    invoke-virtual {p1}, Lokhttp3/a0;->l0()Lokhttp3/y;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    const-string v2, "Connection"

    .line 300
    .line 301
    invoke-virtual {v1, v2}, Lokhttp3/y;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    const-string v3, "close"

    .line 306
    .line 307
    invoke-static {v3, v1, v7}, Lkotlin/text/k;->p(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    if-nez v1, :cond_e

    .line 312
    .line 313
    const/4 v1, 0x2

    .line 314
    invoke-static {p1, v2, v5, v1, v5}, Lokhttp3/a0;->z(Lokhttp3/a0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    invoke-static {v3, v1, v7}, Lkotlin/text/k;->p(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    if-eqz v1, :cond_f

    .line 323
    .line 324
    :cond_e
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->m()V

    .line 325
    .line 326
    .line 327
    :cond_f
    const/16 v0, 0xcc

    .line 328
    .line 329
    if-eq v4, v0, :cond_10

    .line 330
    .line 331
    const/16 v0, 0xcd

    .line 332
    .line 333
    if-ne v4, v0, :cond_13

    .line 334
    .line 335
    :cond_10
    invoke-virtual {p1}, Lokhttp3/a0;->c()Lokhttp3/b0;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    if-eqz v0, :cond_11

    .line 340
    .line 341
    invoke-virtual {v0}, Lokhttp3/b0;->m()J

    .line 342
    .line 343
    .line 344
    move-result-wide v0

    .line 345
    goto :goto_3

    .line 346
    :cond_11
    const-wide/16 v0, -0x1

    .line 347
    .line 348
    :goto_3
    const-wide/16 v2, 0x0

    .line 349
    .line 350
    cmp-long v0, v0, v2

    .line 351
    .line 352
    if-lez v0, :cond_13

    .line 353
    .line 354
    new-instance v0, Ljava/net/ProtocolException;

    .line 355
    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    .line 357
    .line 358
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    .line 360
    .line 361
    const-string v2, "HTTP "

    .line 362
    .line 363
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    const-string v2, " had non-zero Content-Length: "

    .line 370
    .line 371
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {p1}, Lokhttp3/a0;->c()Lokhttp3/b0;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    if-eqz p1, :cond_12

    .line 379
    .line 380
    invoke-virtual {p1}, Lokhttp3/b0;->m()J

    .line 381
    .line 382
    .line 383
    move-result-wide v2

    .line 384
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 385
    .line 386
    .line 387
    move-result-object v5

    .line 388
    :cond_12
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object p1

    .line 395
    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    throw v0

    .line 399
    :cond_13
    return-object p1
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

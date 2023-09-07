.class Lcom/android/calendar/homepage/l0$d;
.super Ljava/lang/Object;
.source "EventsView.java"

# interfaces
.implements La2/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/homepage/l0;->L1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/calendar/homepage/l0;


# direct methods
.method constructor <init>(Lcom/android/calendar/homepage/l0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/homepage/l0$d;->a:Lcom/android/calendar/homepage/l0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
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
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/calendar/common/event/schema/Event;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/l0$d;->a:Lcom/android/calendar/homepage/l0;

    .line 2
    .line 3
    iget v1, v0, Lcom/android/calendar/homepage/l0;->o:I

    .line 4
    .line 5
    invoke-static {v0}, Lcom/android/calendar/homepage/l0;->q0(Lcom/android/calendar/homepage/l0;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v1, v0, :cond_0

    .line 11
    .line 12
    move v0, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/homepage/l0$d;->a:Lcom/android/calendar/homepage/l0;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/android/calendar/homepage/l0;->R:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 20
    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/android/calendar/common/event/schema/Event;

    .line 39
    .line 40
    new-instance v3, Lcom/android/calendar/homepage/l0$l;

    .line 41
    .line 42
    invoke-direct {v3}, Lcom/android/calendar/homepage/l0$l;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v1, v3, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/calendar/homepage/l0$d;->a:Lcom/android/calendar/homepage/l0;

    .line 48
    .line 49
    iget-object v1, v1, Lcom/android/calendar/homepage/l0;->R:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    iget-object p1, p0, Lcom/android/calendar/homepage/l0$d;->a:Lcom/android/calendar/homepage/l0;

    .line 56
    .line 57
    invoke-static {p1}, Lcom/android/calendar/homepage/l0;->b(Lcom/android/calendar/homepage/l0;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/android/calendar/homepage/l0$d;->a:Lcom/android/calendar/homepage/l0;

    .line 61
    .line 62
    iget v1, p1, Lcom/android/calendar/homepage/l0;->o:I

    .line 63
    .line 64
    invoke-static {p1, v1}, Lcom/android/calendar/homepage/l0;->r0(Lcom/android/calendar/homepage/l0;I)I

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/android/calendar/homepage/l0$d;->a:Lcom/android/calendar/homepage/l0;

    .line 68
    .line 69
    invoke-static {p1}, Lcom/android/calendar/homepage/l0;->c(Lcom/android/calendar/homepage/l0;)[Landroid/text/StaticLayout;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-eqz p1, :cond_3

    .line 74
    .line 75
    iget-object p1, p0, Lcom/android/calendar/homepage/l0$d;->a:Lcom/android/calendar/homepage/l0;

    .line 76
    .line 77
    invoke-static {p1}, Lcom/android/calendar/homepage/l0;->c(Lcom/android/calendar/homepage/l0;)[Landroid/text/StaticLayout;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    array-length p1, p1

    .line 82
    iget-object v1, p0, Lcom/android/calendar/homepage/l0$d;->a:Lcom/android/calendar/homepage/l0;

    .line 83
    .line 84
    iget-object v1, v1, Lcom/android/calendar/homepage/l0;->R:Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-ge p1, v1, :cond_2

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_2
    iget-object p1, p0, Lcom/android/calendar/homepage/l0$d;->a:Lcom/android/calendar/homepage/l0;

    .line 94
    .line 95
    invoke-static {p1}, Lcom/android/calendar/homepage/l0;->c(Lcom/android/calendar/homepage/l0;)[Landroid/text/StaticLayout;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    const/4 v1, 0x0

    .line 100
    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/android/calendar/homepage/l0$d;->a:Lcom/android/calendar/homepage/l0;

    .line 105
    .line 106
    iget-object v1, p1, Lcom/android/calendar/homepage/l0;->R:Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    new-array v1, v1, [Landroid/text/StaticLayout;

    .line 113
    .line 114
    invoke-static {p1, v1}, Lcom/android/calendar/homepage/l0;->d(Lcom/android/calendar/homepage/l0;[Landroid/text/StaticLayout;)[Landroid/text/StaticLayout;

    .line 115
    .line 116
    .line 117
    :goto_3
    iget-object p1, p0, Lcom/android/calendar/homepage/l0$d;->a:Lcom/android/calendar/homepage/l0;

    .line 118
    .line 119
    invoke-static {p1}, Lcom/android/calendar/homepage/l0;->e(Lcom/android/calendar/homepage/l0;)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lcom/android/calendar/homepage/l0$d;->a:Lcom/android/calendar/homepage/l0;

    .line 123
    .line 124
    iput-boolean v2, p1, Lcom/android/calendar/homepage/l0;->L0:Z

    .line 125
    .line 126
    invoke-static {p1, v2}, Lcom/android/calendar/homepage/l0;->f(Lcom/android/calendar/homepage/l0;Z)Z

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lcom/android/calendar/homepage/l0$d;->a:Lcom/android/calendar/homepage/l0;

    .line 130
    .line 131
    invoke-static {p1}, Lcom/android/calendar/homepage/l0;->g(Lcom/android/calendar/homepage/l0;)V

    .line 132
    .line 133
    .line 134
    if-eqz v0, :cond_5

    .line 135
    .line 136
    iget-object p1, p0, Lcom/android/calendar/homepage/l0$d;->a:Lcom/android/calendar/homepage/l0;

    .line 137
    .line 138
    invoke-static {p1}, Lcom/android/calendar/homepage/l0;->h(Lcom/android/calendar/homepage/l0;)Landroid/animation/ObjectAnimator;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    if-nez p1, :cond_4

    .line 143
    .line 144
    iget-object p1, p0, Lcom/android/calendar/homepage/l0$d;->a:Lcom/android/calendar/homepage/l0;

    .line 145
    .line 146
    const/4 v0, 0x2

    .line 147
    new-array v0, v0, [I

    .line 148
    .line 149
    fill-array-data v0, :array_0

    .line 150
    .line 151
    .line 152
    const-string v1, "EventsAlpha"

    .line 153
    .line 154
    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-static {p1, v0}, Lcom/android/calendar/homepage/l0;->i(Lcom/android/calendar/homepage/l0;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 159
    .line 160
    .line 161
    iget-object p1, p0, Lcom/android/calendar/homepage/l0$d;->a:Lcom/android/calendar/homepage/l0;

    .line 162
    .line 163
    invoke-static {p1}, Lcom/android/calendar/homepage/l0;->h(Lcom/android/calendar/homepage/l0;)Landroid/animation/ObjectAnimator;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    const-wide/16 v0, 0x190

    .line 168
    .line 169
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 170
    .line 171
    .line 172
    :cond_4
    iget-object p1, p0, Lcom/android/calendar/homepage/l0$d;->a:Lcom/android/calendar/homepage/l0;

    .line 173
    .line 174
    invoke-static {p1}, Lcom/android/calendar/homepage/l0;->h(Lcom/android/calendar/homepage/l0;)Landroid/animation/ObjectAnimator;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 179
    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_5
    iget-object p1, p0, Lcom/android/calendar/homepage/l0$d;->a:Lcom/android/calendar/homepage/l0;

    .line 183
    .line 184
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 185
    .line 186
    .line 187
    :goto_4
    return-void

    .line 188
    nop

    .line 189
    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
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

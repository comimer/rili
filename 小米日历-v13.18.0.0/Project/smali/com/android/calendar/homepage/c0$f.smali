.class Lcom/android/calendar/homepage/c0$f;
.super Lcom/android/calendar/homepage/c0$l;
.source "BaseWeekView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/homepage/c0;->P()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic p:Lcom/android/calendar/homepage/c0$l;

.field final synthetic q:Lcom/android/calendar/homepage/c0;


# direct methods
.method constructor <init>(Lcom/android/calendar/homepage/c0;ILcom/android/calendar/homepage/c0$l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/homepage/c0$f;->q:Lcom/android/calendar/homepage/c0;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/android/calendar/homepage/c0$f;->p:Lcom/android/calendar/homepage/c0$l;

    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/homepage/c0$l;-><init>(Lcom/android/calendar/homepage/c0;I)V

    .line 6
    .line 7
    .line 8
    return-void
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
.end method


# virtual methods
.method b(Lcom/android/calendar/homepage/c0$j;)V
    .locals 2

    .line 1
    iget-boolean v0, p1, Lcom/android/calendar/homepage/c0$j;->h:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p1, Lcom/android/calendar/homepage/c0$j;->g:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/android/calendar/homepage/c0$k;->a:Z

    .line 11
    .line 12
    goto/16 :goto_5

    .line 13
    .line 14
    :cond_0
    const/4 v1, 0x1

    .line 15
    iput-boolean v1, p0, Lcom/android/calendar/homepage/c0$k;->a:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/calendar/homepage/c0$f;->q:Lcom/android/calendar/homepage/c0;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/android/calendar/homepage/c0;->p(Lcom/android/calendar/homepage/c0;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/homepage/c0$f;->q:Lcom/android/calendar/homepage/c0;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/android/calendar/homepage/c0;->q(Lcom/android/calendar/homepage/c0;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :goto_0
    iput-object v0, p0, Lcom/android/calendar/homepage/c0$l;->f:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/calendar/homepage/c0$f;->q:Lcom/android/calendar/homepage/c0;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/android/calendar/homepage/c0;->r(Lcom/android/calendar/homepage/c0;)F

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iput v0, p0, Lcom/android/calendar/homepage/c0$l;->g:F

    .line 41
    .line 42
    iget-boolean v0, p1, Lcom/android/calendar/homepage/c0$j;->e:Z

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    iget-boolean v0, p1, Lcom/android/calendar/homepage/c0$j;->h:Z

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/calendar/homepage/c0$f;->q:Lcom/android/calendar/homepage/c0;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/android/calendar/homepage/c0;->s(Lcom/android/calendar/homepage/c0;)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/homepage/c0$f;->q:Lcom/android/calendar/homepage/c0;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/android/calendar/homepage/c0;->t(Lcom/android/calendar/homepage/c0;)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    :goto_1
    iput v0, p0, Lcom/android/calendar/homepage/c0$l;->h:I

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_3
    iget-boolean v0, p1, Lcom/android/calendar/homepage/c0$j;->h:Z

    .line 67
    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/calendar/homepage/c0$f;->q:Lcom/android/calendar/homepage/c0;

    .line 71
    .line 72
    invoke-static {v0}, Lcom/android/calendar/homepage/c0;->u(Lcom/android/calendar/homepage/c0;)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    goto :goto_2

    .line 77
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/homepage/c0$f;->q:Lcom/android/calendar/homepage/c0;

    .line 78
    .line 79
    invoke-static {v0}, Lcom/android/calendar/homepage/c0;->v(Lcom/android/calendar/homepage/c0;)I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    :goto_2
    iput v0, p0, Lcom/android/calendar/homepage/c0$l;->h:I

    .line 84
    .line 85
    :goto_3
    iget-boolean v0, p1, Lcom/android/calendar/homepage/c0$j;->c:Z

    .line 86
    .line 87
    if-eqz v0, :cond_6

    .line 88
    .line 89
    iget-boolean p1, p1, Lcom/android/calendar/homepage/c0$j;->d:Z

    .line 90
    .line 91
    if-eqz p1, :cond_6

    .line 92
    .line 93
    iget-object p1, p0, Lcom/android/calendar/homepage/c0$f;->q:Lcom/android/calendar/homepage/c0;

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/android/calendar/homepage/c0;->V()Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_5

    .line 100
    .line 101
    iget-object p1, p0, Lcom/android/calendar/homepage/c0$f;->q:Lcom/android/calendar/homepage/c0;

    .line 102
    .line 103
    invoke-static {p1}, Lcom/android/calendar/homepage/c0;->I(Lcom/android/calendar/homepage/c0;)I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    goto :goto_4

    .line 108
    :cond_5
    iget-object p1, p0, Lcom/android/calendar/homepage/c0$f;->q:Lcom/android/calendar/homepage/c0;

    .line 109
    .line 110
    invoke-static {p1}, Lcom/android/calendar/homepage/c0;->J(Lcom/android/calendar/homepage/c0;)I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    :goto_4
    iput p1, p0, Lcom/android/calendar/homepage/c0$l;->h:I

    .line 115
    .line 116
    :cond_6
    iget-object p1, p0, Lcom/android/calendar/homepage/c0$f;->p:Lcom/android/calendar/homepage/c0$l;

    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/android/calendar/homepage/c0$l;->c()Landroid/graphics/Paint$FontMetrics;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p0}, Lcom/android/calendar/homepage/c0$l;->c()Landroid/graphics/Paint$FontMetrics;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/android/calendar/homepage/c0$f;->p:Lcom/android/calendar/homepage/c0$l;

    .line 127
    .line 128
    iget v1, v1, Lcom/android/calendar/homepage/c0$k;->c:F

    .line 129
    .line 130
    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 131
    .line 132
    add-float/2addr v1, p1

    .line 133
    iget p1, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 134
    .line 135
    sub-float/2addr v1, p1

    .line 136
    iget-object p1, p0, Lcom/android/calendar/homepage/c0$f;->q:Lcom/android/calendar/homepage/c0;

    .line 137
    .line 138
    invoke-static {p1}, Lcom/android/calendar/homepage/c0;->w(Lcom/android/calendar/homepage/c0;)F

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    add-float/2addr v1, p1

    .line 143
    iput v1, p0, Lcom/android/calendar/homepage/c0$k;->c:F

    .line 144
    .line 145
    iget-object p1, p0, Lcom/android/calendar/homepage/c0$f;->p:Lcom/android/calendar/homepage/c0$l;

    .line 146
    .line 147
    invoke-virtual {p1}, Lcom/android/calendar/homepage/c0$l;->d()F

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    invoke-virtual {p0}, Lcom/android/calendar/homepage/c0$l;->d()F

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    add-float/2addr p1, v0

    .line 156
    const/high16 v0, 0x40000000    # 2.0f

    .line 157
    .line 158
    div-float/2addr p1, v0

    .line 159
    iget-object v0, p0, Lcom/android/calendar/homepage/c0$f;->q:Lcom/android/calendar/homepage/c0;

    .line 160
    .line 161
    invoke-static {v0}, Lcom/android/calendar/homepage/c0;->x(Lcom/android/calendar/homepage/c0;)F

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    add-float/2addr p1, v0

    .line 166
    iput p1, p0, Lcom/android/calendar/homepage/c0$k;->b:F

    .line 167
    .line 168
    :goto_5
    return-void
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
.end method

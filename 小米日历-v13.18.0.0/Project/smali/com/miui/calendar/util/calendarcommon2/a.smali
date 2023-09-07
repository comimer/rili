.class public Lcom/miui/calendar/util/calendarcommon2/a;
.super Ljava/lang/Object;
.source "Duration.java"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/miui/calendar/util/calendarcommon2/a;->a:I

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


# virtual methods
.method public a()J
    .locals 5

    .line 1
    iget v0, p0, Lcom/miui/calendar/util/calendarcommon2/a;->a:I

    .line 2
    .line 3
    mul-int/lit16 v0, v0, 0x3e8

    .line 4
    .line 5
    int-to-long v0, v0

    .line 6
    iget v2, p0, Lcom/miui/calendar/util/calendarcommon2/a;->b:I

    .line 7
    .line 8
    const v3, 0x93a80

    .line 9
    .line 10
    .line 11
    mul-int/2addr v2, v3

    .line 12
    iget v3, p0, Lcom/miui/calendar/util/calendarcommon2/a;->c:I

    .line 13
    .line 14
    const v4, 0x15180

    .line 15
    .line 16
    .line 17
    mul-int/2addr v3, v4

    .line 18
    add-int/2addr v2, v3

    .line 19
    iget v3, p0, Lcom/miui/calendar/util/calendarcommon2/a;->d:I

    .line 20
    .line 21
    mul-int/lit16 v3, v3, 0xe10

    .line 22
    .line 23
    add-int/2addr v2, v3

    .line 24
    iget v3, p0, Lcom/miui/calendar/util/calendarcommon2/a;->e:I

    .line 25
    .line 26
    mul-int/lit8 v3, v3, 0x3c

    .line 27
    .line 28
    add-int/2addr v2, v3

    .line 29
    iget v3, p0, Lcom/miui/calendar/util/calendarcommon2/a;->f:I

    .line 30
    .line 31
    add-int/2addr v2, v3

    .line 32
    int-to-long v2, v2

    .line 33
    mul-long/2addr v0, v2

    .line 34
    return-wide v0
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

.method public b(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/calendar/util/calendarcommon2/DateException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/miui/calendar/util/calendarcommon2/a;->a:I

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/miui/calendar/util/calendarcommon2/a;->b:I

    .line 6
    .line 7
    iput v1, p0, Lcom/miui/calendar/util/calendarcommon2/a;->c:I

    .line 8
    .line 9
    iput v1, p0, Lcom/miui/calendar/util/calendarcommon2/a;->d:I

    .line 10
    .line 11
    iput v1, p0, Lcom/miui/calendar/util/calendarcommon2/a;->e:I

    .line 12
    .line 13
    iput v1, p0, Lcom/miui/calendar/util/calendarcommon2/a;->f:I

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-ge v2, v0, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/16 v4, 0x2d

    .line 27
    .line 28
    if-ne v3, v4, :cond_1

    .line 29
    .line 30
    const/4 v3, -0x1

    .line 31
    iput v3, p0, Lcom/miui/calendar/util/calendarcommon2/a;->a:I

    .line 32
    .line 33
    :goto_0
    move v3, v0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/16 v4, 0x2b

    .line 36
    .line 37
    if-ne v3, v4, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    move v3, v1

    .line 41
    :goto_1
    if-ge v2, v3, :cond_3

    .line 42
    .line 43
    return-void

    .line 44
    :cond_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    const/16 v5, 0x50

    .line 49
    .line 50
    const-string v6, "Duration.parse(str=\'"

    .line 51
    .line 52
    if-ne v4, v5, :cond_d

    .line 53
    .line 54
    add-int/2addr v3, v0

    .line 55
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    const/16 v4, 0x54

    .line 60
    .line 61
    if-ne v0, v4, :cond_4

    .line 62
    .line 63
    add-int/lit8 v3, v3, 0x1

    .line 64
    .line 65
    :cond_4
    move v0, v1

    .line 66
    :goto_2
    if-ge v3, v2, :cond_c

    .line 67
    .line 68
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    const/16 v7, 0x30

    .line 73
    .line 74
    if-lt v5, v7, :cond_5

    .line 75
    .line 76
    const/16 v7, 0x39

    .line 77
    .line 78
    if-gt v5, v7, :cond_5

    .line 79
    .line 80
    mul-int/lit8 v0, v0, 0xa

    .line 81
    .line 82
    add-int/lit8 v5, v5, -0x30

    .line 83
    .line 84
    add-int/2addr v0, v5

    .line 85
    goto :goto_4

    .line 86
    :cond_5
    const/16 v7, 0x57

    .line 87
    .line 88
    if-ne v5, v7, :cond_6

    .line 89
    .line 90
    iput v0, p0, Lcom/miui/calendar/util/calendarcommon2/a;->b:I

    .line 91
    .line 92
    :goto_3
    move v0, v1

    .line 93
    goto :goto_4

    .line 94
    :cond_6
    const/16 v7, 0x48

    .line 95
    .line 96
    if-ne v5, v7, :cond_7

    .line 97
    .line 98
    iput v0, p0, Lcom/miui/calendar/util/calendarcommon2/a;->d:I

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_7
    const/16 v7, 0x4d

    .line 102
    .line 103
    if-ne v5, v7, :cond_8

    .line 104
    .line 105
    iput v0, p0, Lcom/miui/calendar/util/calendarcommon2/a;->e:I

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_8
    const/16 v7, 0x53

    .line 109
    .line 110
    if-ne v5, v7, :cond_9

    .line 111
    .line 112
    iput v0, p0, Lcom/miui/calendar/util/calendarcommon2/a;->f:I

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_9
    const/16 v7, 0x44

    .line 116
    .line 117
    if-ne v5, v7, :cond_a

    .line 118
    .line 119
    iput v0, p0, Lcom/miui/calendar/util/calendarcommon2/a;->c:I

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_a
    if-ne v5, v4, :cond_b

    .line 123
    .line 124
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_b
    new-instance v0, Lcom/miui/calendar/util/calendarcommon2/DateException;

    .line 128
    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string p1, "\') unexpected char \'"

    .line 141
    .line 142
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string p1, "\' at index="

    .line 149
    .line 150
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-direct {v0, p1}, Lcom/miui/calendar/util/calendarcommon2/DateException;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw v0

    .line 164
    :cond_c
    return-void

    .line 165
    :cond_d
    new-instance v0, Lcom/miui/calendar/util/calendarcommon2/DateException;

    .line 166
    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string p1, "\') expected \'P\' at index="

    .line 179
    .line 180
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-direct {v0, p1}, Lcom/miui/calendar/util/calendarcommon2/DateException;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    throw v0
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

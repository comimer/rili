.class Lcom/miui/calendar/ad/a$a;
.super Landroid/os/AsyncTask;
.source "AdAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/calendar/ad/a;->b(Landroid/content/Context;Lcom/miui/calendar/ad/a$b;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/calendar/ad/a$b;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:J

.field final synthetic d:J


# direct methods
.method constructor <init>(Lcom/miui/calendar/ad/a$b;Landroid/content/Context;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/ad/a$a;->a:Lcom/miui/calendar/ad/a$b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/miui/calendar/ad/a$a;->b:Landroid/content/Context;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/miui/calendar/ad/a$a;->c:J

    .line 6
    .line 7
    iput-wide p5, p0, Lcom/miui/calendar/ad/a$a;->d:J

    .line 8
    .line 9
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
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
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    .line 1
    const-string p1, "Cal:D:AdAnalytics"

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/miui/calendar/ad/a$a;->a:Lcom/miui/calendar/ad/a$b;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "trackImmediately(): adEvent:"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/miui/calendar/ad/a$a;->a:Lcom/miui/calendar/ad/a$b;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/miui/calendar/ad/a$b;->a(Lcom/miui/calendar/ad/a$b;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {p1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/miui/calendar/ad/a$a;->b:Landroid/content/Context;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/xiaomi/analytics/Analytics;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/Analytics;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sget-boolean v1, Lcom/miui/calendar/util/l0;->a:Z

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    const-string v1, "calendar_stagingad"

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const-string v1, "calendar_adevent"

    .line 47
    .line 48
    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/Analytics;->getTracker(Ljava/lang/String;)Lcom/xiaomi/analytics/Tracker;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/miui/calendar/ad/a$a;->a:Lcom/miui/calendar/ad/a$b;

    .line 53
    .line 54
    invoke-static {v1}, Lcom/miui/calendar/ad/a$b;->b(Lcom/miui/calendar/ad/a$b;)Lcom/miui/calendar/ad/AdSchema;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    new-instance v2, Lcom/xiaomi/analytics/AdAction;

    .line 59
    .line 60
    iget-object v3, p0, Lcom/miui/calendar/ad/a$a;->a:Lcom/miui/calendar/ad/a$b;

    .line 61
    .line 62
    invoke-static {v3}, Lcom/miui/calendar/ad/a$b;->a(Lcom/miui/calendar/ad/a$b;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-direct {v2, v3}, Lcom/xiaomi/analytics/AdAction;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v3, "VIEW"

    .line 70
    .line 71
    iget-object v4, p0, Lcom/miui/calendar/ad/a$a;->a:Lcom/miui/calendar/ad/a$b;

    .line 72
    .line 73
    invoke-static {v4}, Lcom/miui/calendar/ad/a$b;->a(Lcom/miui/calendar/ad/a$b;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_2

    .line 82
    .line 83
    iget-object v3, p0, Lcom/miui/calendar/ad/a$a;->a:Lcom/miui/calendar/ad/a$b;

    .line 84
    .line 85
    invoke-static {v3}, Lcom/miui/calendar/ad/a$b;->b(Lcom/miui/calendar/ad/a$b;)Lcom/miui/calendar/ad/AdSchema;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    iget-object v3, v3, Lcom/miui/calendar/ad/AdSchema;->viewMonitorUrls:Ljava/util/List;

    .line 90
    .line 91
    if-eqz v3, :cond_2

    .line 92
    .line 93
    iget-object v3, p0, Lcom/miui/calendar/ad/a$a;->a:Lcom/miui/calendar/ad/a$b;

    .line 94
    .line 95
    invoke-static {v3}, Lcom/miui/calendar/ad/a$b;->b(Lcom/miui/calendar/ad/a$b;)Lcom/miui/calendar/ad/AdSchema;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    iget-object v3, v3, Lcom/miui/calendar/ad/AdSchema;->viewMonitorUrls:Ljava/util/List;

    .line 100
    .line 101
    invoke-virtual {v2, v3}, Lcom/xiaomi/analytics/AdAction;->addAdMonitor(Ljava/util/List;)Lcom/xiaomi/analytics/AdAction;

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    const-string v3, "CLICK"

    .line 106
    .line 107
    iget-object v4, p0, Lcom/miui/calendar/ad/a$a;->a:Lcom/miui/calendar/ad/a$b;

    .line 108
    .line 109
    invoke-static {v4}, Lcom/miui/calendar/ad/a$b;->a(Lcom/miui/calendar/ad/a$b;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    if-eqz v3, :cond_3

    .line 118
    .line 119
    iget-object v3, p0, Lcom/miui/calendar/ad/a$a;->a:Lcom/miui/calendar/ad/a$b;

    .line 120
    .line 121
    invoke-static {v3}, Lcom/miui/calendar/ad/a$b;->b(Lcom/miui/calendar/ad/a$b;)Lcom/miui/calendar/ad/AdSchema;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    iget-object v3, v3, Lcom/miui/calendar/ad/AdSchema;->clickMonitorUrls:Ljava/util/List;

    .line 126
    .line 127
    if-eqz v3, :cond_3

    .line 128
    .line 129
    iget-object v3, p0, Lcom/miui/calendar/ad/a$a;->a:Lcom/miui/calendar/ad/a$b;

    .line 130
    .line 131
    invoke-static {v3}, Lcom/miui/calendar/ad/a$b;->b(Lcom/miui/calendar/ad/a$b;)Lcom/miui/calendar/ad/AdSchema;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    iget-object v3, v3, Lcom/miui/calendar/ad/AdSchema;->clickMonitorUrls:Ljava/util/List;

    .line 136
    .line 137
    invoke-virtual {v2, v3}, Lcom/xiaomi/analytics/AdAction;->addAdMonitor(Ljava/util/List;)Lcom/xiaomi/analytics/AdAction;

    .line 138
    .line 139
    .line 140
    :cond_3
    :goto_1
    const-string v3, "t"

    .line 141
    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 143
    .line 144
    .line 145
    move-result-wide v4

    .line 146
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/analytics/Action;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    .line 151
    .line 152
    .line 153
    const-string v3, "e"

    .line 154
    .line 155
    iget-object v4, p0, Lcom/miui/calendar/ad/a$a;->a:Lcom/miui/calendar/ad/a$b;

    .line 156
    .line 157
    invoke-static {v4}, Lcom/miui/calendar/ad/a$b;->a(Lcom/miui/calendar/ad/a$b;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/analytics/Action;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    .line 162
    .line 163
    .line 164
    const-string v3, "appKey"

    .line 165
    .line 166
    const-string v4, "Calendar"

    .line 167
    .line 168
    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/analytics/Action;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    .line 169
    .line 170
    .line 171
    const-string v3, "ex"

    .line 172
    .line 173
    iget-object v1, v1, Lcom/miui/calendar/ad/AdSchema;->ex:Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {v2, v3, v1}, Lcom/xiaomi/analytics/Action;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    .line 176
    .line 177
    .line 178
    iget-wide v3, p0, Lcom/miui/calendar/ad/a$a;->c:J

    .line 179
    .line 180
    const-wide/16 v5, 0x0

    .line 181
    .line 182
    cmp-long v1, v3, v5

    .line 183
    .line 184
    if-ltz v1, :cond_4

    .line 185
    .line 186
    const-string v1, "materialid"

    .line 187
    .line 188
    invoke-virtual {v2, v1, v3, v4}, Lcom/xiaomi/analytics/Action;->addParam(Ljava/lang/String;J)Lcom/xiaomi/analytics/Action;

    .line 189
    .line 190
    .line 191
    :cond_4
    iget-wide v3, p0, Lcom/miui/calendar/ad/a$a;->d:J

    .line 192
    .line 193
    cmp-long v1, v3, v5

    .line 194
    .line 195
    if-ltz v1, :cond_5

    .line 196
    .line 197
    const-string v1, "resourceid"

    .line 198
    .line 199
    invoke-virtual {v2, v1, v3, v4}, Lcom/xiaomi/analytics/Action;->addParam(Ljava/lang/String;J)Lcom/xiaomi/analytics/Action;

    .line 200
    .line 201
    .line 202
    :cond_5
    invoke-virtual {v0, v2}, Lcom/xiaomi/analytics/Tracker;->track(Lcom/xiaomi/analytics/Action;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .line 204
    .line 205
    goto :goto_2

    .line 206
    :catch_0
    move-exception v0

    .line 207
    const-string v1, "trackImmediately()"

    .line 208
    .line 209
    invoke-static {p1, v1, v0}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 210
    .line 211
    .line 212
    :goto_2
    const/4 p1, 0x0

    .line 213
    return-object p1
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

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/miui/calendar/ad/a$a;->a([Ljava/lang/Void;)Ljava/lang/Void;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
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

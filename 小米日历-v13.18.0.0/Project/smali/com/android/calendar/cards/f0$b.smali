.class Lcom/android/calendar/cards/f0$b;
.super Ljava/lang/Object;
.source "EventCard.java"

# interfaces
.implements Lcom/miui/calendar/view/DynamicLinearLayout$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/cards/f0;->q(Lcom/android/calendar/cards/f0$e;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/calendar/cards/f0$e;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/android/calendar/cards/f0;


# direct methods
.method constructor <init>(Lcom/android/calendar/cards/f0;Lcom/android/calendar/cards/f0$e;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/cards/f0$b;->c:Lcom/android/calendar/cards/f0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/calendar/cards/f0$b;->a:Lcom/android/calendar/cards/f0$e;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/calendar/cards/f0$b;->b:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
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
.method public a(I)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v7, p1

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/calendar/cards/f0$b;->c:Lcom/android/calendar/cards/f0;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/android/calendar/cards/f0;->k(Lcom/android/calendar/cards/f0;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_5

    .line 12
    .line 13
    iget-object v1, v0, Lcom/android/calendar/cards/f0$b;->c:Lcom/android/calendar/cards/f0;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/android/calendar/cards/f0;->k(Lcom/android/calendar/cards/f0;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-ge v7, v1, :cond_5

    .line 24
    .line 25
    iget-object v1, v0, Lcom/android/calendar/cards/f0$b;->c:Lcom/android/calendar/cards/f0;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/android/calendar/cards/f0;->k(Lcom/android/calendar/cards/f0;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    move-object v8, v1

    .line 36
    check-cast v8, Lcom/android/calendar/common/event/schema/Event;

    .line 37
    .line 38
    new-instance v5, Ljava/util/HashMap;

    .line 39
    .line 40
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v8}, Lcom/android/calendar/common/event/schema/Event;->getEventType()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const/4 v2, 0x7

    .line 48
    if-eq v1, v2, :cond_2

    .line 49
    .line 50
    const/16 v2, 0x8

    .line 51
    .line 52
    if-eq v1, v2, :cond_1

    .line 53
    .line 54
    const/16 v2, 0x9

    .line 55
    .line 56
    if-eq v1, v2, :cond_0

    .line 57
    .line 58
    const-string v1, "\u65e5\u7a0b"

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const-string v1, "\u5012\u6570\u65e5"

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const-string v1, "\u7eaa\u5ff5\u65e5"

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    const-string v1, "\u751f\u65e5"

    .line 68
    .line 69
    :goto_0
    const-string v2, "type"

    .line 70
    .line 71
    invoke-virtual {v5, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    iget-object v1, v0, Lcom/android/calendar/cards/f0$b;->a:Lcom/android/calendar/cards/f0$e;

    .line 75
    .line 76
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    const/4 v4, 0x0

    .line 81
    const-string v1, "card_item_clicked"

    .line 82
    .line 83
    const-string v6, "agenda_group_card"

    .line 84
    .line 85
    move/from16 v3, p1

    .line 86
    .line 87
    invoke-static/range {v1 .. v6}, Lcom/android/calendar/cards/CardHelper;->o(Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    new-instance v1, Landroid/content/Intent;

    .line 91
    .line 92
    iget-object v2, v0, Lcom/android/calendar/cards/f0$b;->b:Landroid/content/Context;

    .line 93
    .line 94
    const-class v3, Lcom/android/calendar/event/EventInfoActivity;

    .line 95
    .line 96
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .line 98
    .line 99
    new-instance v2, Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .line 103
    .line 104
    iget-object v3, v0, Lcom/android/calendar/cards/f0$b;->c:Lcom/android/calendar/cards/f0;

    .line 105
    .line 106
    invoke-static {v3}, Lcom/android/calendar/cards/f0;->k(Lcom/android/calendar/cards/f0;)Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-eqz v4, :cond_3

    .line 119
    .line 120
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    check-cast v4, Lcom/android/calendar/common/event/schema/Event;

    .line 125
    .line 126
    new-instance v5, Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 127
    .line 128
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 129
    .line 130
    .line 131
    move-result-wide v10

    .line 132
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/Event;->getEventType()I

    .line 133
    .line 134
    .line 135
    move-result v12

    .line 136
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/Event;->getStartTimeMillis()J

    .line 137
    .line 138
    .line 139
    move-result-wide v13

    .line 140
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/Event;->getEndTimeMillis()J

    .line 141
    .line 142
    .line 143
    move-result-wide v15

    .line 144
    const/16 v17, 0x0

    .line 145
    .line 146
    iget-object v4, v0, Lcom/android/calendar/cards/f0$b;->c:Lcom/android/calendar/cards/f0;

    .line 147
    .line 148
    iget-object v4, v4, Lcom/android/calendar/cards/m1;->a:Ljava/util/Calendar;

    .line 149
    .line 150
    move-object v9, v5

    .line 151
    move-object/from16 v18, v4

    .line 152
    .line 153
    invoke-direct/range {v9 .. v18}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;-><init>(JIJJILjava/util/Calendar;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_3
    iget-object v3, v0, Lcom/android/calendar/cards/f0$b;->a:Lcom/android/calendar/cards/f0$e;

    .line 161
    .line 162
    invoke-static {v3}, Lcom/android/calendar/cards/f0$e;->c(Lcom/android/calendar/cards/f0$e;)Landroid/view/View;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    if-ltz v3, :cond_4

    .line 171
    .line 172
    iget-object v3, v0, Lcom/android/calendar/cards/f0$b;->c:Lcom/android/calendar/cards/f0;

    .line 173
    .line 174
    invoke-static {v3}, Lcom/android/calendar/cards/f0;->l(Lcom/android/calendar/cards/f0;)I

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    iget-object v4, v0, Lcom/android/calendar/cards/f0$b;->a:Lcom/android/calendar/cards/f0$e;

    .line 179
    .line 180
    invoke-static {v4}, Lcom/android/calendar/cards/f0$e;->c(Lcom/android/calendar/cards/f0$e;)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 185
    .line 186
    .line 187
    move-result v4

    .line 188
    if-le v3, v4, :cond_4

    .line 189
    .line 190
    new-instance v3, Landroid/graphics/Rect;

    .line 191
    .line 192
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 193
    .line 194
    .line 195
    const/4 v4, 0x2

    .line 196
    new-array v4, v4, [I

    .line 197
    .line 198
    iget-object v5, v0, Lcom/android/calendar/cards/f0$b;->a:Lcom/android/calendar/cards/f0$e;

    .line 199
    .line 200
    invoke-static {v5}, Lcom/android/calendar/cards/f0$e;->c(Lcom/android/calendar/cards/f0$e;)Landroid/view/View;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 205
    .line 206
    .line 207
    const/4 v5, 0x0

    .line 208
    aget v5, v4, v5

    .line 209
    .line 210
    iput v5, v3, Landroid/graphics/Rect;->left:I

    .line 211
    .line 212
    const/4 v5, 0x1

    .line 213
    aget v4, v4, v5

    .line 214
    .line 215
    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 216
    .line 217
    iget-object v5, v0, Lcom/android/calendar/cards/f0$b;->a:Lcom/android/calendar/cards/f0$e;

    .line 218
    .line 219
    invoke-static {v5}, Lcom/android/calendar/cards/f0$e;->c(Lcom/android/calendar/cards/f0$e;)Landroid/view/View;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 224
    .line 225
    .line 226
    move-result v5

    .line 227
    add-int/2addr v4, v5

    .line 228
    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 229
    .line 230
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 231
    .line 232
    iget-object v5, v0, Lcom/android/calendar/cards/f0$b;->a:Lcom/android/calendar/cards/f0$e;

    .line 233
    .line 234
    invoke-static {v5}, Lcom/android/calendar/cards/f0$e;->c(Lcom/android/calendar/cards/f0$e;)Landroid/view/View;

    .line 235
    .line 236
    .line 237
    move-result-object v5

    .line 238
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 239
    .line 240
    .line 241
    move-result v5

    .line 242
    add-int/2addr v4, v5

    .line 243
    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 244
    .line 245
    const-string v4, "extra_initial_rect"

    .line 246
    .line 247
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 248
    .line 249
    .line 250
    :cond_4
    invoke-virtual {v8}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 251
    .line 252
    .line 253
    move-result-wide v3

    .line 254
    const-string v5, "extra_key_event_id"

    .line 255
    .line 256
    invoke-virtual {v1, v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 257
    .line 258
    .line 259
    iget-object v3, v0, Lcom/android/calendar/cards/f0$b;->c:Lcom/android/calendar/cards/f0;

    .line 260
    .line 261
    invoke-static {v3, v7, v2}, Lcom/android/calendar/cards/f0;->m(Lcom/android/calendar/cards/f0;ILjava/util/ArrayList;)Ljava/util/ArrayList;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    const-string v3, "EXTRA_EVENT_INFO_LIST"

    .line 266
    .line 267
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 268
    .line 269
    .line 270
    const/high16 v2, 0x10000000

    .line 271
    .line 272
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 273
    .line 274
    .line 275
    iget-object v2, v0, Lcom/android/calendar/cards/f0$b;->b:Landroid/content/Context;

    .line 276
    .line 277
    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 278
    .line 279
    .line 280
    :cond_5
    return-void
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

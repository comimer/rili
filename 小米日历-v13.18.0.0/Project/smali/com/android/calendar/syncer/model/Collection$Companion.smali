.class public final Lcom/android/calendar/syncer/model/Collection$Companion;
.super Ljava/lang/Object;
.source "Collection.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/syncer/model/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/android/calendar/syncer/model/Collection$Companion;",
        "",
        "()V",
        "TYPE_ADDRESSBOOK",
        "",
        "TYPE_CALENDAR",
        "TYPE_WEBCAL",
        "fromDavResponse",
        "Lcom/android/calendar/syncer/model/Collection;",
        "dav",
        "Lat/bitfire/dav4jvm/Response;",
        "syncer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/syncer/model/Collection$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromDavResponse(Lat/bitfire/dav4jvm/Response;)Lcom/android/calendar/syncer/model/Collection;
    .locals 22

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "dav"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lat/bitfire/dav4jvm/UrlUtils;->INSTANCE:Lat/bitfire/dav4jvm/UrlUtils;

    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Lat/bitfire/dav4jvm/Response;->getHref()Lokhttp3/t;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Lat/bitfire/dav4jvm/UrlUtils;->withTrailingSlash(Lokhttp3/t;)Lokhttp3/t;

    .line 15
    .line 16
    .line 17
    move-result-object v9

    .line 18
    const-class v1, Lat/bitfire/dav4jvm/property/ResourceType;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lat/bitfire/dav4jvm/Response;->get(Ljava/lang/Class;)Lat/bitfire/dav4jvm/Property;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lat/bitfire/dav4jvm/property/ResourceType;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    if-eqz v1, :cond_11

    .line 28
    .line 29
    invoke-virtual {v1}, Lat/bitfire/dav4jvm/property/ResourceType;->getTypes()Ljava/util/Set;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    sget-object v4, Lat/bitfire/dav4jvm/property/ResourceType;->Companion:Lat/bitfire/dav4jvm/property/ResourceType$Companion;

    .line 34
    .line 35
    invoke-virtual {v4}, Lat/bitfire/dav4jvm/property/ResourceType$Companion;->getCALENDAR()Lat/bitfire/dav4jvm/Property$Name;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    const-string v5, "WEBCAL"

    .line 44
    .line 45
    const-string v6, "CALENDAR"

    .line 46
    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    move-object v8, v6

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v1}, Lat/bitfire/dav4jvm/property/ResourceType;->getTypes()Ljava/util/Set;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v4}, Lat/bitfire/dav4jvm/property/ResourceType$Companion;->getSUBSCRIBED()Lat/bitfire/dav4jvm/Property$Name;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    move-object v8, v5

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    move-object v8, v2

    .line 68
    :goto_0
    if-nez v8, :cond_2

    .line 69
    .line 70
    goto/16 :goto_d

    .line 71
    .line 72
    :cond_2
    const-class v1, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lat/bitfire/dav4jvm/Response;->get(Ljava/lang/Class;)Lat/bitfire/dav4jvm/Property;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;

    .line 79
    .line 80
    const/4 v3, 0x1

    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    invoke-virtual {v1}, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->getMayWriteContent()Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    invoke-virtual {v1}, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->getMayUnbind()Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    move v11, v1

    .line 92
    move v10, v4

    .line 93
    goto :goto_1

    .line 94
    :cond_3
    move v10, v3

    .line 95
    move v11, v10

    .line 96
    :goto_1
    const-class v1, Lat/bitfire/dav4jvm/property/DisplayName;

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Lat/bitfire/dav4jvm/Response;->get(Ljava/lang/Class;)Lat/bitfire/dav4jvm/Property;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    check-cast v1, Lat/bitfire/dav4jvm/property/DisplayName;

    .line 103
    .line 104
    if-eqz v1, :cond_7

    .line 105
    .line 106
    invoke-virtual {v1}, Lat/bitfire/dav4jvm/property/DisplayName;->getDisplayName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    if-eqz v4, :cond_5

    .line 111
    .line 112
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-nez v4, :cond_4

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_4
    const/4 v4, 0x0

    .line 120
    goto :goto_3

    .line 121
    :cond_5
    :goto_2
    move v4, v3

    .line 122
    :goto_3
    if-nez v4, :cond_6

    .line 123
    .line 124
    invoke-virtual {v1}, Lat/bitfire/dav4jvm/property/DisplayName;->getDisplayName()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    goto :goto_4

    .line 129
    :cond_6
    move-object v1, v2

    .line 130
    :goto_4
    move-object v13, v1

    .line 131
    goto :goto_5

    .line 132
    :cond_7
    move-object v13, v2

    .line 133
    :goto_5
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 134
    .line 135
    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-static {v8, v6}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    if-eqz v4, :cond_8

    .line 143
    .line 144
    goto :goto_6

    .line 145
    :cond_8
    invoke-static {v8, v5}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    :goto_6
    if-eqz v3, :cond_10

    .line 150
    .line 151
    const-class v3, Lat/bitfire/dav4jvm/property/CalendarDescription;

    .line 152
    .line 153
    invoke-virtual {v0, v3}, Lat/bitfire/dav4jvm/Response;->get(Ljava/lang/Class;)Lat/bitfire/dav4jvm/Property;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    check-cast v3, Lat/bitfire/dav4jvm/property/CalendarDescription;

    .line 158
    .line 159
    if-eqz v3, :cond_9

    .line 160
    .line 161
    invoke-virtual {v3}, Lat/bitfire/dav4jvm/property/CalendarDescription;->getDescription()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    goto :goto_7

    .line 166
    :cond_9
    move-object v3, v2

    .line 167
    :goto_7
    const-class v4, Lat/bitfire/dav4jvm/property/CalendarColor;

    .line 168
    .line 169
    invoke-virtual {v0, v4}, Lat/bitfire/dav4jvm/Response;->get(Ljava/lang/Class;)Lat/bitfire/dav4jvm/Property;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    check-cast v4, Lat/bitfire/dav4jvm/property/CalendarColor;

    .line 174
    .line 175
    if-eqz v4, :cond_a

    .line 176
    .line 177
    invoke-virtual {v4}, Lat/bitfire/dav4jvm/property/CalendarColor;->getColor()I

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    goto :goto_8

    .line 186
    :cond_a
    move-object v4, v2

    .line 187
    :goto_8
    const-class v5, Lat/bitfire/dav4jvm/property/CalendarTimezone;

    .line 188
    .line 189
    invoke-virtual {v0, v5}, Lat/bitfire/dav4jvm/Response;->get(Ljava/lang/Class;)Lat/bitfire/dav4jvm/Property;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    check-cast v5, Lat/bitfire/dav4jvm/property/CalendarTimezone;

    .line 194
    .line 195
    if-eqz v5, :cond_b

    .line 196
    .line 197
    invoke-virtual {v5}, Lat/bitfire/dav4jvm/property/CalendarTimezone;->getVTimeZone()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    goto :goto_9

    .line 202
    :cond_b
    move-object v5, v2

    .line 203
    :goto_9
    invoke-static {v8, v6}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v6

    .line 207
    if-eqz v6, :cond_d

    .line 208
    .line 209
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 210
    .line 211
    const-class v6, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;

    .line 212
    .line 213
    invoke-virtual {v0, v6}, Lat/bitfire/dav4jvm/Response;->get(Ljava/lang/Class;)Lat/bitfire/dav4jvm/Property;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    check-cast v0, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;

    .line 218
    .line 219
    if-eqz v0, :cond_c

    .line 220
    .line 221
    invoke-virtual {v0}, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;->getSupportsEvents()Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    :goto_a
    move-object/from16 v17, v0

    .line 230
    .line 231
    goto :goto_b

    .line 232
    :cond_c
    move-object/from16 v17, v2

    .line 233
    .line 234
    :goto_b
    move-object v14, v3

    .line 235
    move-object v15, v4

    .line 236
    move-object/from16 v16, v5

    .line 237
    .line 238
    goto :goto_c

    .line 239
    :cond_d
    const-class v6, Lat/bitfire/dav4jvm/property/Source;

    .line 240
    .line 241
    invoke-virtual {v0, v6}, Lat/bitfire/dav4jvm/Response;->get(Ljava/lang/Class;)Lat/bitfire/dav4jvm/Property;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    check-cast v0, Lat/bitfire/dav4jvm/property/Source;

    .line 246
    .line 247
    if-eqz v0, :cond_f

    .line 248
    .line 249
    invoke-virtual {v0}, Lat/bitfire/dav4jvm/property/HrefListProperty;->getHrefs()Ljava/util/LinkedList;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    invoke-static {v0}, Lkotlin/collections/t;->a0(Ljava/util/List;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    check-cast v0, Ljava/lang/String;

    .line 258
    .line 259
    if-eqz v0, :cond_e

    .line 260
    .line 261
    new-instance v2, Lkotlin/text/Regex;

    .line 262
    .line 263
    const-string v6, "^webcal://"

    .line 264
    .line 265
    invoke-direct {v2, v6}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    const-string v6, "http://"

    .line 269
    .line 270
    invoke-virtual {v2, v0, v6}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    new-instance v2, Lkotlin/text/Regex;

    .line 275
    .line 276
    const-string v6, "^webcals://"

    .line 277
    .line 278
    invoke-direct {v2, v6}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    const-string v6, "https://"

    .line 282
    .line 283
    invoke-virtual {v2, v0, v6}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    sget-object v2, Lokhttp3/t;->l:Lokhttp3/t$b;

    .line 288
    .line 289
    invoke-virtual {v2, v0}, Lokhttp3/t$b;->g(Ljava/lang/String;)Lokhttp3/t;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    :cond_e
    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 294
    .line 295
    :cond_f
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 296
    .line 297
    goto :goto_a

    .line 298
    :cond_10
    move-object v14, v2

    .line 299
    move-object v15, v14

    .line 300
    move-object/from16 v16, v15

    .line 301
    .line 302
    move-object/from16 v17, v16

    .line 303
    .line 304
    :goto_c
    new-instance v0, Lcom/android/calendar/syncer/model/Collection;

    .line 305
    .line 306
    move-object v3, v0

    .line 307
    const-wide/16 v4, 0x0

    .line 308
    .line 309
    const-wide/16 v6, 0x0

    .line 310
    .line 311
    const/4 v12, 0x0

    .line 312
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 313
    .line 314
    move-object/from16 v18, v1

    .line 315
    .line 316
    check-cast v18, Lokhttp3/t;

    .line 317
    .line 318
    const/16 v19, 0x0

    .line 319
    .line 320
    const/16 v20, 0x2043

    .line 321
    .line 322
    const/16 v21, 0x0

    .line 323
    .line 324
    invoke-direct/range {v3 .. v21}, Lcom/android/calendar/syncer/model/Collection;-><init>(JJLjava/lang/String;Lokhttp3/t;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Lokhttp3/t;ZILkotlin/jvm/internal/o;)V

    .line 325
    .line 326
    .line 327
    return-object v0

    .line 328
    :cond_11
    :goto_d
    return-object v2
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

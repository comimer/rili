.class public abstract Lnet/fortuna/ical4j/model/Component;
.super Ljava/lang/Object;
.source "Component.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final AVAILABLE:Ljava/lang/String; = "AVAILABLE"

.field public static final BEGIN:Ljava/lang/String; = "BEGIN"

.field public static final END:Ljava/lang/String; = "END"

.field public static final EXPERIMENTAL_PREFIX:Ljava/lang/String; = "X-"

.field public static final VALARM:Ljava/lang/String; = "VALARM"

.field public static final VAVAILABILITY:Ljava/lang/String; = "VAVAILABILITY"

.field public static final VEVENT:Ljava/lang/String; = "VEVENT"

.field public static final VFREEBUSY:Ljava/lang/String; = "VFREEBUSY"

.field public static final VJOURNAL:Ljava/lang/String; = "VJOURNAL"

.field public static final VTIMEZONE:Ljava/lang/String; = "VTIMEZONE"

.field public static final VTODO:Ljava/lang/String; = "VTODO"

.field public static final VVENUE:Ljava/lang/String; = "VVENUE"

.field private static final serialVersionUID:J = 0x4499c04881ed51f9L


# instance fields
.field private name:Ljava/lang/String;

.field private properties:Lnet/fortuna/ical4j/model/PropertyList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/fortuna/ical4j/model/PropertyList<",
            "Lnet/fortuna/ical4j/model/Property;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/PropertyList;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/PropertyList;-><init>()V

    invoke-direct {p0, p1, v0}, Lnet/fortuna/ical4j/model/Component;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/fortuna/ical4j/model/PropertyList<",
            "Lnet/fortuna/ical4j/model/Property;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Component;->name:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lnet/fortuna/ical4j/model/Component;->properties:Lnet/fortuna/ical4j/model/PropertyList;

    return-void
.end method

.method public static synthetic a(Lnet/fortuna/ical4j/model/Period;Lnet/fortuna/ical4j/model/Date;)Z
    .locals 0

    invoke-static {p0, p1}, Lnet/fortuna/ical4j/model/Component;->lambda$calculateRecurrenceSet$9(Lnet/fortuna/ical4j/model/Period;Lnet/fortuna/ical4j/model/Date;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/time/temporal/TemporalAmount;Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/Period;
    .locals 0

    invoke-static {p0, p1}, Lnet/fortuna/ical4j/model/Component;->lambda$calculateRecurrenceSet$12(Ljava/time/temporal/TemporalAmount;Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/Period;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lnet/fortuna/ical4j/model/Period;Lnet/fortuna/ical4j/model/Period;)Z
    .locals 0

    invoke-static {p0, p1}, Lnet/fortuna/ical4j/model/Component;->lambda$calculateRecurrenceSet$2(Lnet/fortuna/ical4j/model/Period;Lnet/fortuna/ical4j/model/Period;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Ljava/time/temporal/TemporalAmount;Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/Period;
    .locals 0

    invoke-static {p0, p1}, Lnet/fortuna/ical4j/model/Component;->lambda$calculateRecurrenceSet$6(Ljava/time/temporal/TemporalAmount;Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/Period;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lnet/fortuna/ical4j/model/property/RDate;)Z
    .locals 0

    invoke-static {p0}, Lnet/fortuna/ical4j/model/Component;->lambda$calculateRecurrenceSet$3(Lnet/fortuna/ical4j/model/property/RDate;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Ljava/util/List;Lnet/fortuna/ical4j/model/Period;)Z
    .locals 0

    invoke-static {p0, p1}, Lnet/fortuna/ical4j/model/Component;->lambda$calculateRecurrenceSet$16(Ljava/util/List;Lnet/fortuna/ical4j/model/Period;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Lnet/fortuna/ical4j/model/Component;Lnet/fortuna/ical4j/model/Period;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/Component;->lambda$calculateRecurrenceSet$17(Lnet/fortuna/ical4j/model/Period;)V

    return-void
.end method

.method public static synthetic h(Lnet/fortuna/ical4j/model/property/RDate;)Lnet/fortuna/ical4j/model/DateList;
    .locals 0

    invoke-static {p0}, Lnet/fortuna/ical4j/model/Component;->lambda$calculateRecurrenceSet$8(Lnet/fortuna/ical4j/model/property/RDate;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lnet/fortuna/ical4j/model/Period;Lnet/fortuna/ical4j/model/Date;)Z
    .locals 0

    invoke-static {p0, p1}, Lnet/fortuna/ical4j/model/Component;->lambda$calculateRecurrenceSet$5(Lnet/fortuna/ical4j/model/Period;Lnet/fortuna/ical4j/model/Date;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lnet/fortuna/ical4j/model/property/RDate;)Z
    .locals 0

    invoke-static {p0}, Lnet/fortuna/ical4j/model/Component;->lambda$calculateRecurrenceSet$0(Lnet/fortuna/ical4j/model/property/RDate;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k(Lnet/fortuna/ical4j/model/property/RDate;)Z
    .locals 0

    invoke-static {p0}, Lnet/fortuna/ical4j/model/Component;->lambda$calculateRecurrenceSet$7(Lnet/fortuna/ical4j/model/property/RDate;)Z

    move-result p0

    return p0
.end method

.method public static synthetic l(Lnet/fortuna/ical4j/model/property/RDate;)Lnet/fortuna/ical4j/model/DateList;
    .locals 0

    invoke-static {p0}, Lnet/fortuna/ical4j/model/Component;->lambda$calculateRecurrenceSet$4(Lnet/fortuna/ical4j/model/property/RDate;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$calculateRecurrenceSet$0(Lnet/fortuna/ical4j/model/property/RDate;)Z
    .locals 1

    .line 1
    const-string v0, "VALUE"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Property;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->PERIOD:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 8
    .line 9
    if-ne p0, v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
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

.method private static synthetic lambda$calculateRecurrenceSet$1(Lnet/fortuna/ical4j/model/property/RDate;)Lnet/fortuna/ical4j/model/PeriodList;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/RDate;->getPeriods()Lnet/fortuna/ical4j/model/PeriodList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
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

.method private static synthetic lambda$calculateRecurrenceSet$10(Ljava/time/temporal/TemporalAmount;Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/Period;
    .locals 2

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/Period;

    .line 2
    .line 3
    new-instance v1, Lnet/fortuna/ical4j/model/DateTime;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/util/Date;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, p0}, Lnet/fortuna/ical4j/model/Period;-><init>(Lnet/fortuna/ical4j/model/DateTime;Ljava/time/temporal/TemporalAmount;)V

    .line 9
    .line 10
    .line 11
    return-object v0
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
.end method

.method private static synthetic lambda$calculateRecurrenceSet$11(Lnet/fortuna/ical4j/model/property/DtStart;Lnet/fortuna/ical4j/model/DateTime;Lnet/fortuna/ical4j/model/Period;Lnet/fortuna/ical4j/model/parameter/Value;Lnet/fortuna/ical4j/model/property/RRule;)Lnet/fortuna/ical4j/model/DateList;
    .locals 1

    .line 1
    invoke-virtual {p4}, Lnet/fortuna/ical4j/model/property/RRule;->getRecur()Lnet/fortuna/ical4j/model/Recur;

    .line 2
    .line 3
    .line 4
    move-result-object p4

    .line 5
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Lnet/fortuna/ical4j/model/Period;

    .line 10
    .line 11
    invoke-virtual {p2}, Lnet/fortuna/ical4j/model/Period;->getEnd()Lnet/fortuna/ical4j/model/DateTime;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-direct {v0, p1, p2}, Lnet/fortuna/ical4j/model/Period;-><init>(Lnet/fortuna/ical4j/model/DateTime;Lnet/fortuna/ical4j/model/DateTime;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p4, p0, v0, p3}, Lnet/fortuna/ical4j/model/Recur;->getDates(Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Period;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/DateList;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
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
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
.end method

.method private static synthetic lambda$calculateRecurrenceSet$12(Ljava/time/temporal/TemporalAmount;Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/Period;
    .locals 2

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/Period;

    .line 2
    .line 3
    new-instance v1, Lnet/fortuna/ical4j/model/DateTime;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/util/Date;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, p0}, Lnet/fortuna/ical4j/model/Period;-><init>(Lnet/fortuna/ical4j/model/DateTime;Ljava/time/temporal/TemporalAmount;)V

    .line 9
    .line 10
    .line 11
    return-object v0
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
.end method

.method private static synthetic lambda$calculateRecurrenceSet$13(Lnet/fortuna/ical4j/model/property/ExDate;)Lnet/fortuna/ical4j/model/DateList;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateListProperty;->getDates()Lnet/fortuna/ical4j/model/DateList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
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

.method private static synthetic lambda$calculateRecurrenceSet$14(Ljava/util/List;Lnet/fortuna/ical4j/model/Period;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    new-instance v0, Lnet/fortuna/ical4j/model/Date;

    .line 12
    .line 13
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {v0, p1}, Lnet/fortuna/ical4j/model/Date;-><init>(Ljava/util/Date;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 30
    :goto_1
    return p0
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
.end method

.method private static synthetic lambda$calculateRecurrenceSet$15(Lnet/fortuna/ical4j/model/property/DtStart;Lnet/fortuna/ical4j/model/Period;Lnet/fortuna/ical4j/model/parameter/Value;Lnet/fortuna/ical4j/model/property/ExRule;)Lnet/fortuna/ical4j/model/DateList;
    .locals 0

    .line 1
    invoke-virtual {p3}, Lnet/fortuna/ical4j/model/property/ExRule;->getRecur()Lnet/fortuna/ical4j/model/Recur;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p3, p0, p1, p2}, Lnet/fortuna/ical4j/model/Recur;->getDates(Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Period;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/DateList;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
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
.end method

.method private static synthetic lambda$calculateRecurrenceSet$16(Ljava/util/List;Lnet/fortuna/ical4j/model/Period;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    new-instance v0, Lnet/fortuna/ical4j/model/Date;

    .line 12
    .line 13
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {v0, p1}, Lnet/fortuna/ical4j/model/Date;-><init>(Ljava/util/Date;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 30
    :goto_1
    return p0
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
.end method

.method private synthetic lambda$calculateRecurrenceSet$17(Lnet/fortuna/ical4j/model/Period;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lnet/fortuna/ical4j/model/Period;->setComponent(Lnet/fortuna/ical4j/model/Component;)V

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

.method private static synthetic lambda$calculateRecurrenceSet$2(Lnet/fortuna/ical4j/model/Period;Lnet/fortuna/ical4j/model/Period;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/DateRange;->intersects(Lnet/fortuna/ical4j/model/DateRange;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
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
.end method

.method private static synthetic lambda$calculateRecurrenceSet$3(Lnet/fortuna/ical4j/model/property/RDate;)Z
    .locals 1

    .line 1
    const-string v0, "VALUE"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Property;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->DATE_TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 8
    .line 9
    if-ne p0, v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
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

.method private static synthetic lambda$calculateRecurrenceSet$4(Lnet/fortuna/ical4j/model/property/RDate;)Lnet/fortuna/ical4j/model/DateList;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateListProperty;->getDates()Lnet/fortuna/ical4j/model/DateList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
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

.method private static synthetic lambda$calculateRecurrenceSet$5(Lnet/fortuna/ical4j/model/Period;Lnet/fortuna/ical4j/model/Date;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/DateRange;->includes(Ljava/util/Date;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
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
.end method

.method private static synthetic lambda$calculateRecurrenceSet$6(Ljava/time/temporal/TemporalAmount;Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/Period;
    .locals 1

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/Period;

    .line 2
    .line 3
    check-cast p1, Lnet/fortuna/ical4j/model/DateTime;

    .line 4
    .line 5
    invoke-direct {v0, p1, p0}, Lnet/fortuna/ical4j/model/Period;-><init>(Lnet/fortuna/ical4j/model/DateTime;Ljava/time/temporal/TemporalAmount;)V

    .line 6
    .line 7
    .line 8
    return-object v0
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
.end method

.method private static synthetic lambda$calculateRecurrenceSet$7(Lnet/fortuna/ical4j/model/property/RDate;)Z
    .locals 1

    .line 1
    const-string v0, "VALUE"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Property;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->DATE:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 8
    .line 9
    if-ne p0, v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
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

.method private static synthetic lambda$calculateRecurrenceSet$8(Lnet/fortuna/ical4j/model/property/RDate;)Lnet/fortuna/ical4j/model/DateList;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateListProperty;->getDates()Lnet/fortuna/ical4j/model/DateList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
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

.method private static synthetic lambda$calculateRecurrenceSet$9(Lnet/fortuna/ical4j/model/Period;Lnet/fortuna/ical4j/model/Date;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/DateRange;->includes(Ljava/util/Date;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
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
.end method

.method public static synthetic m(Ljava/time/temporal/TemporalAmount;Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/Period;
    .locals 0

    invoke-static {p0, p1}, Lnet/fortuna/ical4j/model/Component;->lambda$calculateRecurrenceSet$10(Ljava/time/temporal/TemporalAmount;Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/Period;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Ljava/util/List;Lnet/fortuna/ical4j/model/Period;)Z
    .locals 0

    invoke-static {p0, p1}, Lnet/fortuna/ical4j/model/Component;->lambda$calculateRecurrenceSet$14(Ljava/util/List;Lnet/fortuna/ical4j/model/Period;)Z

    move-result p0

    return p0
.end method

.method public static synthetic o(Lnet/fortuna/ical4j/model/property/DtStart;Lnet/fortuna/ical4j/model/DateTime;Lnet/fortuna/ical4j/model/Period;Lnet/fortuna/ical4j/model/parameter/Value;Lnet/fortuna/ical4j/model/property/RRule;)Lnet/fortuna/ical4j/model/DateList;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lnet/fortuna/ical4j/model/Component;->lambda$calculateRecurrenceSet$11(Lnet/fortuna/ical4j/model/property/DtStart;Lnet/fortuna/ical4j/model/DateTime;Lnet/fortuna/ical4j/model/Period;Lnet/fortuna/ical4j/model/parameter/Value;Lnet/fortuna/ical4j/model/property/RRule;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lnet/fortuna/ical4j/model/property/RDate;)Lnet/fortuna/ical4j/model/PeriodList;
    .locals 0

    invoke-static {p0}, Lnet/fortuna/ical4j/model/Component;->lambda$calculateRecurrenceSet$1(Lnet/fortuna/ical4j/model/property/RDate;)Lnet/fortuna/ical4j/model/PeriodList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Lnet/fortuna/ical4j/model/property/DtStart;Lnet/fortuna/ical4j/model/Period;Lnet/fortuna/ical4j/model/parameter/Value;Lnet/fortuna/ical4j/model/property/ExRule;)Lnet/fortuna/ical4j/model/DateList;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lnet/fortuna/ical4j/model/Component;->lambda$calculateRecurrenceSet$15(Lnet/fortuna/ical4j/model/property/DtStart;Lnet/fortuna/ical4j/model/Period;Lnet/fortuna/ical4j/model/parameter/Value;Lnet/fortuna/ical4j/model/property/ExRule;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Lnet/fortuna/ical4j/model/property/ExDate;)Lnet/fortuna/ical4j/model/DateList;
    .locals 0

    invoke-static {p0}, Lnet/fortuna/ical4j/model/Component;->lambda$calculateRecurrenceSet$13(Lnet/fortuna/ical4j/model/property/ExDate;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final calculateRecurrenceSet(Lnet/fortuna/ical4j/model/Period;)Lnet/fortuna/ical4j/model/PeriodList;
    .locals 9

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/PeriodList;

    .line 2
    .line 3
    invoke-direct {v0}, Lnet/fortuna/ical4j/model/PeriodList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "DTSTART"

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lnet/fortuna/ical4j/model/property/DtStart;

    .line 13
    .line 14
    const-string v2, "DTEND"

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lnet/fortuna/ical4j/model/property/DateProperty;

    .line 21
    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    const-string v2, "DUE"

    .line 25
    .line 26
    invoke-virtual {p0, v2}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lnet/fortuna/ical4j/model/property/DateProperty;

    .line 31
    .line 32
    :cond_0
    const-string v3, "DURATION"

    .line 33
    .line 34
    invoke-virtual {p0, v3}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Lnet/fortuna/ical4j/model/property/Duration;

    .line 39
    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    return-object v0

    .line 43
    :cond_1
    const-string v4, "VALUE"

    .line 44
    .line 45
    invoke-virtual {v1, v4}, Lnet/fortuna/ical4j/model/Property;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Lnet/fortuna/ical4j/model/parameter/Value;

    .line 50
    .line 51
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/property/DateProperty;->isUtc()Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-eqz v5, :cond_2

    .line 56
    .line 57
    const/4 v5, 0x1

    .line 58
    invoke-virtual {v0, v5}, Lnet/fortuna/ical4j/model/PeriodList;->setUtc(Z)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    instance-of v5, v5, Lnet/fortuna/ical4j/model/DateTime;

    .line 67
    .line 68
    if-eqz v5, :cond_3

    .line 69
    .line 70
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    check-cast v5, Lnet/fortuna/ical4j/model/DateTime;

    .line 75
    .line 76
    invoke-virtual {v5}, Lnet/fortuna/ical4j/model/DateTime;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-virtual {v0, v5}, Lnet/fortuna/ical4j/model/PeriodList;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    :goto_0
    if-nez v2, :cond_4

    .line 84
    .line 85
    if-nez v3, :cond_4

    .line 86
    .line 87
    sget-object v5, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_4
    if-nez v3, :cond_5

    .line 91
    .line 92
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    invoke-static {v5, v6}, Lnet/fortuna/ical4j/model/TemporalAmountAdapter;->fromDateRange(Ljava/util/Date;Ljava/util/Date;)Lnet/fortuna/ical4j/model/TemporalAmountAdapter;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-virtual {v5}, Lnet/fortuna/ical4j/model/TemporalAmountAdapter;->getDuration()Ljava/time/temporal/TemporalAmount;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    goto :goto_1

    .line 109
    :cond_5
    invoke-virtual {v3}, Lnet/fortuna/ical4j/model/property/Duration;->getDuration()Ljava/time/temporal/TemporalAmount;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    :goto_1
    const-string v6, "RDATE"

    .line 114
    .line 115
    invoke-virtual {p0, v6}, Lnet/fortuna/ical4j/model/Component;->getProperties(Ljava/lang/String;)Lnet/fortuna/ical4j/model/PropertyList;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    invoke-interface {v6}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    new-instance v8, Lnet/fortuna/ical4j/model/b;

    .line 124
    .line 125
    invoke-direct {v8}, Lnet/fortuna/ical4j/model/b;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    new-instance v8, Lnet/fortuna/ical4j/model/u;

    .line 133
    .line 134
    invoke-direct {v8}, Lnet/fortuna/ical4j/model/u;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    new-instance v8, Lnet/fortuna/ical4j/model/f;

    .line 142
    .line 143
    invoke-direct {v8}, Lnet/fortuna/ical4j/model/f;-><init>()V

    .line 144
    .line 145
    .line 146
    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    new-instance v8, Lnet/fortuna/ical4j/model/g;

    .line 151
    .line 152
    invoke-direct {v8, p1}, Lnet/fortuna/ical4j/model/g;-><init>(Lnet/fortuna/ical4j/model/Period;)V

    .line 153
    .line 154
    .line 155
    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 160
    .line 161
    .line 162
    move-result-object v8

    .line 163
    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v7

    .line 167
    check-cast v7, Ljava/util/Collection;

    .line 168
    .line 169
    invoke-virtual {v0, v7}, Lnet/fortuna/ical4j/model/PeriodList;->addAll(Ljava/util/Collection;)Z

    .line 170
    .line 171
    .line 172
    invoke-interface {v6}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    new-instance v8, Lnet/fortuna/ical4j/model/h;

    .line 177
    .line 178
    invoke-direct {v8}, Lnet/fortuna/ical4j/model/h;-><init>()V

    .line 179
    .line 180
    .line 181
    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 182
    .line 183
    .line 184
    move-result-object v7

    .line 185
    new-instance v8, Lnet/fortuna/ical4j/model/i;

    .line 186
    .line 187
    invoke-direct {v8}, Lnet/fortuna/ical4j/model/i;-><init>()V

    .line 188
    .line 189
    .line 190
    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 191
    .line 192
    .line 193
    move-result-object v7

    .line 194
    new-instance v8, Lnet/fortuna/ical4j/model/n;

    .line 195
    .line 196
    invoke-direct {v8}, Lnet/fortuna/ical4j/model/n;-><init>()V

    .line 197
    .line 198
    .line 199
    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 200
    .line 201
    .line 202
    move-result-object v7

    .line 203
    new-instance v8, Lnet/fortuna/ical4j/model/j;

    .line 204
    .line 205
    invoke-direct {v8, p1}, Lnet/fortuna/ical4j/model/j;-><init>(Lnet/fortuna/ical4j/model/Period;)V

    .line 206
    .line 207
    .line 208
    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 209
    .line 210
    .line 211
    move-result-object v7

    .line 212
    new-instance v8, Lnet/fortuna/ical4j/model/k;

    .line 213
    .line 214
    invoke-direct {v8, v5}, Lnet/fortuna/ical4j/model/k;-><init>(Ljava/time/temporal/TemporalAmount;)V

    .line 215
    .line 216
    .line 217
    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 218
    .line 219
    .line 220
    move-result-object v7

    .line 221
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 222
    .line 223
    .line 224
    move-result-object v8

    .line 225
    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v7

    .line 229
    check-cast v7, Ljava/util/Collection;

    .line 230
    .line 231
    invoke-virtual {v0, v7}, Lnet/fortuna/ical4j/model/PeriodList;->addAll(Ljava/util/Collection;)Z

    .line 232
    .line 233
    .line 234
    invoke-interface {v6}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 235
    .line 236
    .line 237
    move-result-object v6

    .line 238
    new-instance v7, Lnet/fortuna/ical4j/model/l;

    .line 239
    .line 240
    invoke-direct {v7}, Lnet/fortuna/ical4j/model/l;-><init>()V

    .line 241
    .line 242
    .line 243
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    new-instance v7, Lnet/fortuna/ical4j/model/m;

    .line 248
    .line 249
    invoke-direct {v7}, Lnet/fortuna/ical4j/model/m;-><init>()V

    .line 250
    .line 251
    .line 252
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 253
    .line 254
    .line 255
    move-result-object v6

    .line 256
    new-instance v7, Lnet/fortuna/ical4j/model/n;

    .line 257
    .line 258
    invoke-direct {v7}, Lnet/fortuna/ical4j/model/n;-><init>()V

    .line 259
    .line 260
    .line 261
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 262
    .line 263
    .line 264
    move-result-object v6

    .line 265
    new-instance v7, Lnet/fortuna/ical4j/model/o;

    .line 266
    .line 267
    invoke-direct {v7, p1}, Lnet/fortuna/ical4j/model/o;-><init>(Lnet/fortuna/ical4j/model/Period;)V

    .line 268
    .line 269
    .line 270
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 271
    .line 272
    .line 273
    move-result-object v6

    .line 274
    new-instance v7, Lnet/fortuna/ical4j/model/p;

    .line 275
    .line 276
    invoke-direct {v7, v5}, Lnet/fortuna/ical4j/model/p;-><init>(Ljava/time/temporal/TemporalAmount;)V

    .line 277
    .line 278
    .line 279
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 280
    .line 281
    .line 282
    move-result-object v6

    .line 283
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 284
    .line 285
    .line 286
    move-result-object v7

    .line 287
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v6

    .line 291
    check-cast v6, Ljava/util/Collection;

    .line 292
    .line 293
    invoke-virtual {v0, v6}, Lnet/fortuna/ical4j/model/PeriodList;->addAll(Ljava/util/Collection;)Z

    .line 294
    .line 295
    .line 296
    new-instance v6, Lnet/fortuna/ical4j/model/DateTime;

    .line 297
    .line 298
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    .line 299
    .line 300
    .line 301
    move-result-object v7

    .line 302
    invoke-direct {v6, v7}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/util/Date;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    .line 306
    .line 307
    .line 308
    move-result-object v7

    .line 309
    invoke-virtual {v7}, Ljava/util/Date;->toInstant()Ljava/time/Instant;

    .line 310
    .line 311
    .line 312
    move-result-object v7

    .line 313
    invoke-virtual {v7, v5}, Ljava/time/Instant;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    .line 314
    .line 315
    .line 316
    move-result-object v7

    .line 317
    invoke-static {v7}, Ljava/util/Date;->from(Ljava/time/Instant;)Ljava/util/Date;

    .line 318
    .line 319
    .line 320
    move-result-object v7

    .line 321
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    .line 322
    .line 323
    .line 324
    move-result-wide v7

    .line 325
    invoke-virtual {v6, v7, v8}, Lnet/fortuna/ical4j/model/DateTime;->setTime(J)V

    .line 326
    .line 327
    .line 328
    const-string v7, "RRULE"

    .line 329
    .line 330
    invoke-virtual {p0, v7}, Lnet/fortuna/ical4j/model/Component;->getProperties(Ljava/lang/String;)Lnet/fortuna/ical4j/model/PropertyList;

    .line 331
    .line 332
    .line 333
    move-result-object v7

    .line 334
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 335
    .line 336
    .line 337
    move-result v8

    .line 338
    if-nez v8, :cond_6

    .line 339
    .line 340
    invoke-interface {v7}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    new-instance v3, Lnet/fortuna/ical4j/model/q;

    .line 345
    .line 346
    invoke-direct {v3, v1, v6, p1, v4}, Lnet/fortuna/ical4j/model/q;-><init>(Lnet/fortuna/ical4j/model/property/DtStart;Lnet/fortuna/ical4j/model/DateTime;Lnet/fortuna/ical4j/model/Period;Lnet/fortuna/ical4j/model/parameter/Value;)V

    .line 347
    .line 348
    .line 349
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 350
    .line 351
    .line 352
    move-result-object v2

    .line 353
    new-instance v3, Lnet/fortuna/ical4j/model/n;

    .line 354
    .line 355
    invoke-direct {v3}, Lnet/fortuna/ical4j/model/n;-><init>()V

    .line 356
    .line 357
    .line 358
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    new-instance v3, Lnet/fortuna/ical4j/model/r;

    .line 363
    .line 364
    invoke-direct {v3, v5}, Lnet/fortuna/ical4j/model/r;-><init>(Ljava/time/temporal/TemporalAmount;)V

    .line 365
    .line 366
    .line 367
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    check-cast v2, Ljava/util/Collection;

    .line 380
    .line 381
    invoke-virtual {v0, v2}, Lnet/fortuna/ical4j/model/PeriodList;->addAll(Ljava/util/Collection;)Z

    .line 382
    .line 383
    .line 384
    goto :goto_3

    .line 385
    :cond_6
    if-eqz v2, :cond_7

    .line 386
    .line 387
    new-instance v3, Lnet/fortuna/ical4j/model/Period;

    .line 388
    .line 389
    new-instance v5, Lnet/fortuna/ical4j/model/DateTime;

    .line 390
    .line 391
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    .line 392
    .line 393
    .line 394
    move-result-object v6

    .line 395
    invoke-direct {v5, v6}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/util/Date;)V

    .line 396
    .line 397
    .line 398
    new-instance v6, Lnet/fortuna/ical4j/model/DateTime;

    .line 399
    .line 400
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    invoke-direct {v6, v2}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/util/Date;)V

    .line 405
    .line 406
    .line 407
    invoke-direct {v3, v5, v6}, Lnet/fortuna/ical4j/model/Period;-><init>(Lnet/fortuna/ical4j/model/DateTime;Lnet/fortuna/ical4j/model/DateTime;)V

    .line 408
    .line 409
    .line 410
    goto :goto_2

    .line 411
    :cond_7
    if-nez v3, :cond_8

    .line 412
    .line 413
    new-instance v3, Lnet/fortuna/ical4j/model/property/Duration;

    .line 414
    .line 415
    invoke-direct {v3, v5}, Lnet/fortuna/ical4j/model/property/Duration;-><init>(Ljava/time/temporal/TemporalAmount;)V

    .line 416
    .line 417
    .line 418
    :cond_8
    new-instance v2, Lnet/fortuna/ical4j/model/Period;

    .line 419
    .line 420
    new-instance v5, Lnet/fortuna/ical4j/model/DateTime;

    .line 421
    .line 422
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    .line 423
    .line 424
    .line 425
    move-result-object v6

    .line 426
    invoke-direct {v5, v6}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/util/Date;)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v3}, Lnet/fortuna/ical4j/model/property/Duration;->getDuration()Ljava/time/temporal/TemporalAmount;

    .line 430
    .line 431
    .line 432
    move-result-object v3

    .line 433
    invoke-direct {v2, v5, v3}, Lnet/fortuna/ical4j/model/Period;-><init>(Lnet/fortuna/ical4j/model/DateTime;Ljava/time/temporal/TemporalAmount;)V

    .line 434
    .line 435
    .line 436
    move-object v3, v2

    .line 437
    :goto_2
    invoke-virtual {p1, v3}, Lnet/fortuna/ical4j/model/DateRange;->intersects(Lnet/fortuna/ical4j/model/DateRange;)Z

    .line 438
    .line 439
    .line 440
    move-result v2

    .line 441
    if-eqz v2, :cond_9

    .line 442
    .line 443
    invoke-virtual {v0, v3}, Lnet/fortuna/ical4j/model/PeriodList;->add(Lnet/fortuna/ical4j/model/Period;)Z

    .line 444
    .line 445
    .line 446
    :cond_9
    :goto_3
    const-string v2, "EXDATE"

    .line 447
    .line 448
    invoke-virtual {p0, v2}, Lnet/fortuna/ical4j/model/Component;->getProperties(Ljava/lang/String;)Lnet/fortuna/ical4j/model/PropertyList;

    .line 449
    .line 450
    .line 451
    move-result-object v2

    .line 452
    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 453
    .line 454
    .line 455
    move-result-object v2

    .line 456
    new-instance v3, Lnet/fortuna/ical4j/model/s;

    .line 457
    .line 458
    invoke-direct {v3}, Lnet/fortuna/ical4j/model/s;-><init>()V

    .line 459
    .line 460
    .line 461
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    new-instance v3, Lnet/fortuna/ical4j/model/n;

    .line 466
    .line 467
    invoke-direct {v3}, Lnet/fortuna/ical4j/model/n;-><init>()V

    .line 468
    .line 469
    .line 470
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 471
    .line 472
    .line 473
    move-result-object v2

    .line 474
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 475
    .line 476
    .line 477
    move-result-object v3

    .line 478
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v2

    .line 482
    check-cast v2, Ljava/util/List;

    .line 483
    .line 484
    new-instance v3, Lnet/fortuna/ical4j/model/t;

    .line 485
    .line 486
    invoke-direct {v3, v2}, Lnet/fortuna/ical4j/model/t;-><init>(Ljava/util/List;)V

    .line 487
    .line 488
    .line 489
    invoke-interface {v0, v3}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 490
    .line 491
    .line 492
    const-string v2, "EXRULE"

    .line 493
    .line 494
    invoke-virtual {p0, v2}, Lnet/fortuna/ical4j/model/Component;->getProperties(Ljava/lang/String;)Lnet/fortuna/ical4j/model/PropertyList;

    .line 495
    .line 496
    .line 497
    move-result-object v2

    .line 498
    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 499
    .line 500
    .line 501
    move-result-object v2

    .line 502
    new-instance v3, Lnet/fortuna/ical4j/model/c;

    .line 503
    .line 504
    invoke-direct {v3, v1, p1, v4}, Lnet/fortuna/ical4j/model/c;-><init>(Lnet/fortuna/ical4j/model/property/DtStart;Lnet/fortuna/ical4j/model/Period;Lnet/fortuna/ical4j/model/parameter/Value;)V

    .line 505
    .line 506
    .line 507
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 508
    .line 509
    .line 510
    move-result-object p1

    .line 511
    new-instance v1, Lnet/fortuna/ical4j/model/n;

    .line 512
    .line 513
    invoke-direct {v1}, Lnet/fortuna/ical4j/model/n;-><init>()V

    .line 514
    .line 515
    .line 516
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 517
    .line 518
    .line 519
    move-result-object p1

    .line 520
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    move-result-object p1

    .line 528
    check-cast p1, Ljava/util/List;

    .line 529
    .line 530
    new-instance v1, Lnet/fortuna/ical4j/model/d;

    .line 531
    .line 532
    invoke-direct {v1, p1}, Lnet/fortuna/ical4j/model/d;-><init>(Ljava/util/List;)V

    .line 533
    .line 534
    .line 535
    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 536
    .line 537
    .line 538
    new-instance p1, Lnet/fortuna/ical4j/model/e;

    .line 539
    .line 540
    invoke-direct {p1, p0}, Lnet/fortuna/ical4j/model/e;-><init>(Lnet/fortuna/ical4j/model/Component;)V

    .line 541
    .line 542
    .line 543
    invoke-interface {v0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 544
    .line 545
    .line 546
    return-object v0
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

.method public copy()Lnet/fortuna/ical4j/model/Component;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/PropertyList;

    .line 2
    .line 3
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;-><init>(Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lnet/fortuna/ical4j/model/ComponentFactoryImpl;

    .line 11
    .line 12
    invoke-direct {v1}, Lnet/fortuna/ical4j/model/ComponentFactoryImpl;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2, v0}, Lnet/fortuna/ical4j/model/ComponentFactoryImpl;->createComponent(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)Lnet/fortuna/ical4j/model/Component;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lnet/fortuna/ical4j/model/Component;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lnet/fortuna/ical4j/model/Component;

    .line 6
    .line 7
    new-instance v0, Lorg/apache/commons/lang3/builder/c;

    .line 8
    .line 9
    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/c;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Component;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/c;->g(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/c;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/lang3/builder/c;->g(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/c;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lorg/apache/commons/lang3/builder/c;->v()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    return p1

    .line 41
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    return p1
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
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Component;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
    .line 4
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
.end method

.method public final getProperties()Lnet/fortuna/ical4j/model/PropertyList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/fortuna/ical4j/model/PropertyList<",
            "Lnet/fortuna/ical4j/model/Property;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Component;->properties:Lnet/fortuna/ical4j/model/PropertyList;

    return-object v0
.end method

.method public final getProperties(Ljava/lang/String;)Lnet/fortuna/ical4j/model/PropertyList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Lnet/fortuna/ical4j/model/Property;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lnet/fortuna/ical4j/model/PropertyList<",
            "TC;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/PropertyList;->getProperties(Ljava/lang/String;)Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object p1

    return-object p1
.end method

.method public final getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/fortuna/ical4j/model/Property;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/PropertyList;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lnet/fortuna/ical4j/model/Property;

    .line 10
    .line 11
    return-object p1
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

.method protected final getRequiredProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ConstraintViolationException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/PropertyList;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lnet/fortuna/ical4j/model/Property;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    new-instance v0, Lnet/fortuna/ical4j/model/ConstraintViolationException;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    new-array v1, v1, [Ljava/lang/Object;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    aput-object p1, v1, v2

    .line 21
    .line 22
    const-string p1, "Missing %s property"

    .line 23
    .line 24
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {v0, p1}, Lnet/fortuna/ical4j/model/ConstraintViolationException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0
    .line 32
    .line 33
.end method

.method public hashCode()I
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/builder/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/e;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/e;->g(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/e;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/e;->g(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/e;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/e;->t()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    return v0
    .line 27
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "BEGIN:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "\r\n"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v2, "END"

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const/16 v2, 0x3a

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    return-object v0
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
.end method

.method public final validate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/validate/ValidationException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Component;->validate(Z)V

    .line 3
    .line 4
    .line 5
    return-void
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
.end method

.method public abstract validate(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/validate/ValidationException;
        }
    .end annotation
.end method

.method protected final validateProperties()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/validate/ValidationException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lnet/fortuna/ical4j/model/Property;

    .line 20
    .line 21
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/Property;->validate()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
    .line 26
    .line 27
.end method

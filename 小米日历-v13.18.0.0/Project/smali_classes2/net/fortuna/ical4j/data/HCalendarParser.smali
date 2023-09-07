.class public Lnet/fortuna/ical4j/data/HCalendarParser;
.super Ljava/lang/Object;
.source "HCalendarParser.java"

# interfaces
.implements Lnet/fortuna/ical4j/data/CalendarParser;


# static fields
.field private static final BUILDER_FACTORY:Ljavax/xml/parsers/DocumentBuilderFactory;

.field private static final HCAL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final HCAL_DATE_PATTERN:Ljava/lang/String; = "yyyy-MM-dd"

.field private static final HCAL_DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final HCAL_DATE_TIME_PATTERN:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ssz"

.field private static final LOG:Lrc/b;

.field private static final XPATH:Ljavax/xml/xpath/XPath;

.field private static final XPATH_ATTACH:Ljavax/xml/xpath/XPathExpression;

.field private static final XPATH_ATTENDEE:Ljavax/xml/xpath/XPathExpression;

.field private static final XPATH_CATEGORY:Ljavax/xml/xpath/XPathExpression;

.field private static final XPATH_CLASS:Ljavax/xml/xpath/XPathExpression;

.field private static final XPATH_CONTACT:Ljavax/xml/xpath/XPathExpression;

.field private static final XPATH_DESCRIPTION:Ljavax/xml/xpath/XPathExpression;

.field private static final XPATH_DTEND:Ljavax/xml/xpath/XPathExpression;

.field private static final XPATH_DTSTAMP:Ljavax/xml/xpath/XPathExpression;

.field private static final XPATH_DTSTART:Ljavax/xml/xpath/XPathExpression;

.field private static final XPATH_DURATION:Ljavax/xml/xpath/XPathExpression;

.field private static final XPATH_LAST_MODIFIED:Ljavax/xml/xpath/XPathExpression;

.field private static final XPATH_LOCATION:Ljavax/xml/xpath/XPathExpression;

.field private static final XPATH_METHOD:Ljavax/xml/xpath/XPathExpression;

.field private static final XPATH_ORGANIZER:Ljavax/xml/xpath/XPathExpression;

.field private static final XPATH_SEQUENCE:Ljavax/xml/xpath/XPathExpression;

.field private static final XPATH_STATUS:Ljavax/xml/xpath/XPathExpression;

.field private static final XPATH_SUMMARY:Ljavax/xml/xpath/XPathExpression;

.field private static final XPATH_UID:Ljavax/xml/xpath/XPathExpression;

.field private static final XPATH_URL:Ljavax/xml/xpath/XPathExpression;

.field private static final XPATH_VEVENTS:Ljavax/xml/xpath/XPathExpression;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lnet/fortuna/ical4j/data/HCalendarParser;

    .line 2
    .line 3
    invoke-static {v0}, Lrc/c;->i(Ljava/lang/Class;)Lrc/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->LOG:Lrc/b;

    .line 8
    .line 9
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->BUILDER_FACTORY:Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 14
    .line 15
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sput-object v1, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH:Ljavax/xml/xpath/XPath;

    .line 24
    .line 25
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 26
    .line 27
    const-string v2, "yyyy-MM-dd"

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sput-object v1, Lnet/fortuna/ical4j/data/HCalendarParser;->HCAL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 33
    .line 34
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 35
    .line 36
    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ssz"

    .line 37
    .line 38
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sput-object v1, Lnet/fortuna/ical4j/data/HCalendarParser;->HCAL_DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringComments(Z)V

    .line 48
    .line 49
    .line 50
    const-string v0, "//*[contains(@class, \'method\')]"

    .line 51
    .line 52
    invoke-static {v0}, Lnet/fortuna/ical4j/data/HCalendarParser;->compileExpression(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sput-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_METHOD:Ljavax/xml/xpath/XPathExpression;

    .line 57
    .line 58
    const-string v0, "//*[contains(@class, \'vevent\')]"

    .line 59
    .line 60
    invoke-static {v0}, Lnet/fortuna/ical4j/data/HCalendarParser;->compileExpression(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sput-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_VEVENTS:Ljavax/xml/xpath/XPathExpression;

    .line 65
    .line 66
    const-string v0, ".//*[contains(@class, \'dtstart\')]"

    .line 67
    .line 68
    invoke-static {v0}, Lnet/fortuna/ical4j/data/HCalendarParser;->compileExpression(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    sput-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_DTSTART:Ljavax/xml/xpath/XPathExpression;

    .line 73
    .line 74
    const-string v0, ".//*[contains(@class, \'dtend\')]"

    .line 75
    .line 76
    invoke-static {v0}, Lnet/fortuna/ical4j/data/HCalendarParser;->compileExpression(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    sput-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_DTEND:Ljavax/xml/xpath/XPathExpression;

    .line 81
    .line 82
    const-string v0, ".//*[contains(@class, \'duration\')]"

    .line 83
    .line 84
    invoke-static {v0}, Lnet/fortuna/ical4j/data/HCalendarParser;->compileExpression(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    sput-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_DURATION:Ljavax/xml/xpath/XPathExpression;

    .line 89
    .line 90
    const-string v0, ".//*[contains(@class, \'summary\')]"

    .line 91
    .line 92
    invoke-static {v0}, Lnet/fortuna/ical4j/data/HCalendarParser;->compileExpression(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    sput-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_SUMMARY:Ljavax/xml/xpath/XPathExpression;

    .line 97
    .line 98
    const-string v0, ".//*[contains(@class, \'uid\')]"

    .line 99
    .line 100
    invoke-static {v0}, Lnet/fortuna/ical4j/data/HCalendarParser;->compileExpression(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    sput-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_UID:Ljavax/xml/xpath/XPathExpression;

    .line 105
    .line 106
    const-string v0, ".//*[contains(@class, \'dtstamp\')]"

    .line 107
    .line 108
    invoke-static {v0}, Lnet/fortuna/ical4j/data/HCalendarParser;->compileExpression(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    sput-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_DTSTAMP:Ljavax/xml/xpath/XPathExpression;

    .line 113
    .line 114
    const-string v0, ".//*[contains(@class, \'category\')]"

    .line 115
    .line 116
    invoke-static {v0}, Lnet/fortuna/ical4j/data/HCalendarParser;->compileExpression(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    sput-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_CATEGORY:Ljavax/xml/xpath/XPathExpression;

    .line 121
    .line 122
    const-string v0, ".//*[contains(@class, \'location\')]"

    .line 123
    .line 124
    invoke-static {v0}, Lnet/fortuna/ical4j/data/HCalendarParser;->compileExpression(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    sput-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_LOCATION:Ljavax/xml/xpath/XPathExpression;

    .line 129
    .line 130
    const-string v0, ".//*[contains(@class, \'url\')]"

    .line 131
    .line 132
    invoke-static {v0}, Lnet/fortuna/ical4j/data/HCalendarParser;->compileExpression(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    sput-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_URL:Ljavax/xml/xpath/XPathExpression;

    .line 137
    .line 138
    const-string v0, ".//*[contains(@class, \'description\')]"

    .line 139
    .line 140
    invoke-static {v0}, Lnet/fortuna/ical4j/data/HCalendarParser;->compileExpression(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    sput-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_DESCRIPTION:Ljavax/xml/xpath/XPathExpression;

    .line 145
    .line 146
    const-string v0, ".//*[contains(@class, \'last-modified\')]"

    .line 147
    .line 148
    invoke-static {v0}, Lnet/fortuna/ical4j/data/HCalendarParser;->compileExpression(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    sput-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_LAST_MODIFIED:Ljavax/xml/xpath/XPathExpression;

    .line 153
    .line 154
    const-string v0, ".//*[contains(@class, \'status\')]"

    .line 155
    .line 156
    invoke-static {v0}, Lnet/fortuna/ical4j/data/HCalendarParser;->compileExpression(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    sput-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_STATUS:Ljavax/xml/xpath/XPathExpression;

    .line 161
    .line 162
    const-string v0, ".//*[contains(@class, \'class\')]"

    .line 163
    .line 164
    invoke-static {v0}, Lnet/fortuna/ical4j/data/HCalendarParser;->compileExpression(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    sput-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_CLASS:Ljavax/xml/xpath/XPathExpression;

    .line 169
    .line 170
    const-string v0, ".//*[contains(@class, \'attendee\')]"

    .line 171
    .line 172
    invoke-static {v0}, Lnet/fortuna/ical4j/data/HCalendarParser;->compileExpression(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    sput-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_ATTENDEE:Ljavax/xml/xpath/XPathExpression;

    .line 177
    .line 178
    const-string v0, ".//*[contains(@class, \'contact\')]"

    .line 179
    .line 180
    invoke-static {v0}, Lnet/fortuna/ical4j/data/HCalendarParser;->compileExpression(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    sput-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_CONTACT:Ljavax/xml/xpath/XPathExpression;

    .line 185
    .line 186
    const-string v0, ".//*[contains(@class, \'organizer\')]"

    .line 187
    .line 188
    invoke-static {v0}, Lnet/fortuna/ical4j/data/HCalendarParser;->compileExpression(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    sput-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_ORGANIZER:Ljavax/xml/xpath/XPathExpression;

    .line 193
    .line 194
    const-string v0, ".//*[contains(@class, \'sequence\')]"

    .line 195
    .line 196
    invoke-static {v0}, Lnet/fortuna/ical4j/data/HCalendarParser;->compileExpression(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    sput-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_SEQUENCE:Ljavax/xml/xpath/XPathExpression;

    .line 201
    .line 202
    const-string v0, ".//*[contains(@class, \'attach\')]"

    .line 203
    .line 204
    invoke-static {v0}, Lnet/fortuna/ical4j/data/HCalendarParser;->compileExpression(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    sput-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_ATTACH:Ljavax/xml/xpath/XPathExpression;

    .line 209
    .line 210
    return-void
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
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildCalendar(Lorg/w3c/dom/Document;Lnet/fortuna/ical4j/data/ContentHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/data/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->LOG:Lrc/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lrc/b;->isDebugEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v1, "Building calendar"

    .line 10
    .line 11
    invoke-interface {v0, v1}, Lrc/b;->debug(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-interface {p2}, Lnet/fortuna/ical4j/data/ContentHandler;->startCalendar()V

    .line 15
    .line 16
    .line 17
    const-string v0, "VERSION"

    .line 18
    .line 19
    invoke-interface {p2, v0}, Lnet/fortuna/ical4j/data/ContentHandler;->startProperty(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :try_start_0
    sget-object v1, Lnet/fortuna/ical4j/model/property/Version;->VERSION_2_0:Lnet/fortuna/ical4j/model/property/Version;

    .line 23
    .line 24
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/property/Version;->getValue()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {p2, v1}, Lnet/fortuna/ical4j/data/ContentHandler;->propertyValue(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p2, v0}, Lnet/fortuna/ical4j/data/ContentHandler;->endProperty(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :catch_0
    move-exception v0

    .line 36
    goto :goto_0

    .line 37
    :catch_1
    move-exception v0

    .line 38
    goto :goto_0

    .line 39
    :catch_2
    move-exception v0

    .line 40
    :goto_0
    sget-object v1, Lnet/fortuna/ical4j/data/HCalendarParser;->LOG:Lrc/b;

    .line 41
    .line 42
    const-string v2, "Caught exception"

    .line 43
    .line 44
    invoke-interface {v1, v2, v0}, Lrc/b;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    :goto_1
    sget-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_METHOD:Ljavax/xml/xpath/XPathExpression;

    .line 48
    .line 49
    invoke-static {v0, p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->findElement(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    const-string v1, "METHOD"

    .line 56
    .line 57
    invoke-direct {p0, v0, v1, p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->buildProperty(Lorg/w3c/dom/Element;Ljava/lang/String;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    sget-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_VEVENTS:Ljavax/xml/xpath/XPathExpression;

    .line 61
    .line 62
    invoke-static {v0, p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->findElements(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Lorg/w3c/dom/Element;

    .line 81
    .line 82
    invoke-direct {p0, v0, p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->buildEvent(Lorg/w3c/dom/Element;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_2
    invoke-interface {p2}, Lnet/fortuna/ical4j/data/ContentHandler;->endCalendar()V

    .line 87
    .line 88
    .line 89
    return-void
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
.end method

.method private buildEvent(Lorg/w3c/dom/Element;Lnet/fortuna/ical4j/data/ContentHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .line 1
    sget-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->LOG:Lrc/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lrc/b;->isDebugEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v1, "Building event"

    .line 10
    .line 11
    invoke-interface {v0, v1}, Lrc/b;->debug(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const-string v0, "VEVENT"

    .line 15
    .line 16
    invoke-interface {p2, v0}, Lnet/fortuna/ical4j/data/ContentHandler;->startComponent(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget-object v1, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_DTSTART:Ljavax/xml/xpath/XPathExpression;

    .line 20
    .line 21
    invoke-static {v1, p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->findElement(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "DTSTART"

    .line 26
    .line 27
    invoke-direct {p0, v1, v2, p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->buildProperty(Lorg/w3c/dom/Element;Ljava/lang/String;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 28
    .line 29
    .line 30
    sget-object v1, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_DTEND:Ljavax/xml/xpath/XPathExpression;

    .line 31
    .line 32
    invoke-static {v1, p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->findElement(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "DTEND"

    .line 37
    .line 38
    invoke-direct {p0, v1, v2, p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->buildProperty(Lorg/w3c/dom/Element;Ljava/lang/String;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 39
    .line 40
    .line 41
    sget-object v1, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_DURATION:Ljavax/xml/xpath/XPathExpression;

    .line 42
    .line 43
    invoke-static {v1, p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->findElement(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v2, "DURATION"

    .line 48
    .line 49
    invoke-direct {p0, v1, v2, p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->buildProperty(Lorg/w3c/dom/Element;Ljava/lang/String;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 50
    .line 51
    .line 52
    sget-object v1, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_SUMMARY:Ljavax/xml/xpath/XPathExpression;

    .line 53
    .line 54
    invoke-static {v1, p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->findElement(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const-string v2, "SUMMARY"

    .line 59
    .line 60
    invoke-direct {p0, v1, v2, p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->buildProperty(Lorg/w3c/dom/Element;Ljava/lang/String;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 61
    .line 62
    .line 63
    sget-object v1, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_UID:Ljavax/xml/xpath/XPathExpression;

    .line 64
    .line 65
    invoke-static {v1, p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->findElement(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const-string v2, "UID"

    .line 70
    .line 71
    invoke-direct {p0, v1, v2, p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->buildProperty(Lorg/w3c/dom/Element;Ljava/lang/String;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 72
    .line 73
    .line 74
    sget-object v1, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_DTSTAMP:Ljavax/xml/xpath/XPathExpression;

    .line 75
    .line 76
    invoke-static {v1, p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->findElement(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const-string v2, "DTSTAMP"

    .line 81
    .line 82
    invoke-direct {p0, v1, v2, p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->buildProperty(Lorg/w3c/dom/Element;Ljava/lang/String;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 83
    .line 84
    .line 85
    sget-object v1, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_CATEGORY:Ljavax/xml/xpath/XPathExpression;

    .line 86
    .line 87
    invoke-static {v1, p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->findElements(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_1

    .line 100
    .line 101
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    check-cast v2, Lorg/w3c/dom/Element;

    .line 106
    .line 107
    const-string v3, "CATEGORIES"

    .line 108
    .line 109
    invoke-direct {p0, v2, v3, p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->buildProperty(Lorg/w3c/dom/Element;Ljava/lang/String;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_1
    sget-object v1, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_LOCATION:Ljavax/xml/xpath/XPathExpression;

    .line 114
    .line 115
    invoke-static {v1, p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->findElement(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    const-string v2, "LOCATION"

    .line 120
    .line 121
    invoke-direct {p0, v1, v2, p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->buildProperty(Lorg/w3c/dom/Element;Ljava/lang/String;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 122
    .line 123
    .line 124
    sget-object v1, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_URL:Ljavax/xml/xpath/XPathExpression;

    .line 125
    .line 126
    invoke-static {v1, p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->findElement(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    const-string v2, "URL"

    .line 131
    .line 132
    invoke-direct {p0, v1, v2, p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->buildProperty(Lorg/w3c/dom/Element;Ljava/lang/String;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 133
    .line 134
    .line 135
    sget-object v1, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_DESCRIPTION:Ljavax/xml/xpath/XPathExpression;

    .line 136
    .line 137
    invoke-static {v1, p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->findElement(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    const-string v2, "DESCRIPTION"

    .line 142
    .line 143
    invoke-direct {p0, v1, v2, p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->buildProperty(Lorg/w3c/dom/Element;Ljava/lang/String;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 144
    .line 145
    .line 146
    sget-object v1, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_LAST_MODIFIED:Ljavax/xml/xpath/XPathExpression;

    .line 147
    .line 148
    invoke-static {v1, p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->findElement(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    const-string v2, "LAST-MODIFIED"

    .line 153
    .line 154
    invoke-direct {p0, v1, v2, p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->buildProperty(Lorg/w3c/dom/Element;Ljava/lang/String;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 155
    .line 156
    .line 157
    sget-object v1, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_STATUS:Ljavax/xml/xpath/XPathExpression;

    .line 158
    .line 159
    invoke-static {v1, p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->findElement(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    const-string v2, "STATUS"

    .line 164
    .line 165
    invoke-direct {p0, v1, v2, p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->buildProperty(Lorg/w3c/dom/Element;Ljava/lang/String;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 166
    .line 167
    .line 168
    sget-object v1, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_CLASS:Ljavax/xml/xpath/XPathExpression;

    .line 169
    .line 170
    invoke-static {v1, p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->findElement(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    const-string v2, "CLASS"

    .line 175
    .line 176
    invoke-direct {p0, v1, v2, p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->buildProperty(Lorg/w3c/dom/Element;Ljava/lang/String;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 177
    .line 178
    .line 179
    sget-object v1, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_ATTENDEE:Ljavax/xml/xpath/XPathExpression;

    .line 180
    .line 181
    invoke-static {v1, p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->findElements(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Ljava/util/List;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    if-eqz v2, :cond_2

    .line 194
    .line 195
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    check-cast v2, Lorg/w3c/dom/Element;

    .line 200
    .line 201
    const-string v3, "ATTENDEE"

    .line 202
    .line 203
    invoke-direct {p0, v2, v3, p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->buildProperty(Lorg/w3c/dom/Element;Ljava/lang/String;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 204
    .line 205
    .line 206
    goto :goto_1

    .line 207
    :cond_2
    sget-object v1, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_CONTACT:Ljavax/xml/xpath/XPathExpression;

    .line 208
    .line 209
    invoke-static {v1, p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->findElement(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    const-string v2, "CONTACT"

    .line 214
    .line 215
    invoke-direct {p0, v1, v2, p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->buildProperty(Lorg/w3c/dom/Element;Ljava/lang/String;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 216
    .line 217
    .line 218
    sget-object v1, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_ORGANIZER:Ljavax/xml/xpath/XPathExpression;

    .line 219
    .line 220
    invoke-static {v1, p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->findElement(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    const-string v2, "ORGANIZER"

    .line 225
    .line 226
    invoke-direct {p0, v1, v2, p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->buildProperty(Lorg/w3c/dom/Element;Ljava/lang/String;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 227
    .line 228
    .line 229
    sget-object v1, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_SEQUENCE:Ljavax/xml/xpath/XPathExpression;

    .line 230
    .line 231
    invoke-static {v1, p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->findElement(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    const-string v2, "SEQUENCE"

    .line 236
    .line 237
    invoke-direct {p0, v1, v2, p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->buildProperty(Lorg/w3c/dom/Element;Ljava/lang/String;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 238
    .line 239
    .line 240
    sget-object v1, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH_ATTACH:Ljavax/xml/xpath/XPathExpression;

    .line 241
    .line 242
    invoke-static {v1, p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->findElement(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    const-string v1, "ATTACH"

    .line 247
    .line 248
    invoke-direct {p0, p1, v1, p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->buildProperty(Lorg/w3c/dom/Element;Ljava/lang/String;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 249
    .line 250
    .line 251
    invoke-interface {p2, v0}, Lnet/fortuna/ical4j/data/ContentHandler;->endComponent(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    return-void
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
.end method

.method private buildProperty(Lorg/w3c/dom/Element;Ljava/lang/String;Lnet/fortuna/ical4j/data/ContentHandler;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->LOG:Lrc/b;

    .line 5
    .line 6
    invoke-interface {v0}, Lrc/b;->isDebugEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "Building property "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v0, v1}, Lrc/b;->debug(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-static {p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->className(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const-string v3, "abbr"

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    const-string v4, "\' from title attribute"

    .line 51
    .line 52
    const-string v5, "title"

    .line 53
    .line 54
    const-string v6, "Setting value \'"

    .line 55
    .line 56
    const/4 v7, -0x1

    .line 57
    if-eqz v3, :cond_3

    .line 58
    .line 59
    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {v2}, Lorg/apache/commons/lang3/e;->f(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-nez v3, :cond_2

    .line 68
    .line 69
    invoke-interface {v0}, Lrc/b;->isDebugEnabled()Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-eqz v3, :cond_c

    .line 74
    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-interface {v0, v3}, Lrc/b;->debug(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    goto/16 :goto_0

    .line 97
    .line 98
    :cond_2
    new-instance p1, Lnet/fortuna/ical4j/data/ParserException;

    .line 99
    .line 100
    new-instance p2, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string p3, "Abbr element \'"

    .line 106
    .line 107
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string p3, "\' requires a non-empty title"

    .line 114
    .line 115
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    invoke-direct {p1, p2, v7}, Lnet/fortuna/ical4j/data/ParserException;-><init>(Ljava/lang/String;I)V

    .line 123
    .line 124
    .line 125
    throw p1

    .line 126
    :cond_3
    invoke-static {v2}, Lnet/fortuna/ical4j/data/HCalendarParser;->isHeaderElement(Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    const-string v8, "\' from text content"

    .line 131
    .line 132
    if-eqz v3, :cond_5

    .line 133
    .line 134
    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-static {v2}, Lorg/apache/commons/lang3/e;->f(Ljava/lang/CharSequence;)Z

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    if-nez v3, :cond_4

    .line 143
    .line 144
    invoke-interface {v0}, Lrc/b;->isDebugEnabled()Z

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    if-eqz v3, :cond_c

    .line 149
    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-interface {v0, v3}, Lrc/b;->debug(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    goto/16 :goto_0

    .line 172
    .line 173
    :cond_4
    invoke-static {p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->getTextContent(Lorg/w3c/dom/Element;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-interface {v0}, Lrc/b;->isDebugEnabled()Z

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    if-eqz v3, :cond_c

    .line 182
    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    invoke-interface {v0, v3}, Lrc/b;->debug(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    goto/16 :goto_0

    .line 205
    .line 206
    :cond_5
    const-string v3, "a"

    .line 207
    .line 208
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    if-eqz v3, :cond_7

    .line 213
    .line 214
    invoke-static {p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->isUrlProperty(Ljava/lang/String;)Z

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    if-eqz v3, :cond_7

    .line 219
    .line 220
    const-string v2, "href"

    .line 221
    .line 222
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    invoke-static {v2}, Lorg/apache/commons/lang3/e;->f(Ljava/lang/CharSequence;)Z

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    if-nez v3, :cond_6

    .line 231
    .line 232
    invoke-interface {v0}, Lrc/b;->isDebugEnabled()Z

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    if-eqz v3, :cond_c

    .line 237
    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    const-string v4, "\' from href attribute"

    .line 250
    .line 251
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    invoke-interface {v0, v3}, Lrc/b;->debug(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    goto/16 :goto_0

    .line 262
    .line 263
    :cond_6
    new-instance p1, Lnet/fortuna/ical4j/data/ParserException;

    .line 264
    .line 265
    new-instance p2, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .line 269
    .line 270
    const-string p3, "A element \'"

    .line 271
    .line 272
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    const-string p3, "\' requires a non-empty href"

    .line 279
    .line 280
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p2

    .line 287
    invoke-direct {p1, p2, v7}, Lnet/fortuna/ical4j/data/ParserException;-><init>(Ljava/lang/String;I)V

    .line 288
    .line 289
    .line 290
    throw p1

    .line 291
    :cond_7
    const-string v3, "img"

    .line 292
    .line 293
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    if-eqz v2, :cond_b

    .line 298
    .line 299
    invoke-static {p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->isUrlProperty(Ljava/lang/String;)Z

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    const-string v3, "Img element \'"

    .line 304
    .line 305
    if-eqz v2, :cond_9

    .line 306
    .line 307
    const-string v2, "src"

    .line 308
    .line 309
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    invoke-static {v2}, Lorg/apache/commons/lang3/e;->f(Ljava/lang/CharSequence;)Z

    .line 314
    .line 315
    .line 316
    move-result v4

    .line 317
    if-nez v4, :cond_8

    .line 318
    .line 319
    invoke-interface {v0}, Lrc/b;->isDebugEnabled()Z

    .line 320
    .line 321
    .line 322
    move-result v3

    .line 323
    if-eqz v3, :cond_c

    .line 324
    .line 325
    new-instance v3, Ljava/lang/StringBuilder;

    .line 326
    .line 327
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    const-string v4, "\' from src attribute"

    .line 337
    .line 338
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v3

    .line 345
    invoke-interface {v0, v3}, Lrc/b;->debug(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    goto/16 :goto_0

    .line 349
    .line 350
    :cond_8
    new-instance p1, Lnet/fortuna/ical4j/data/ParserException;

    .line 351
    .line 352
    new-instance p2, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    .line 356
    .line 357
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    const-string p3, "\' requires a non-empty src"

    .line 364
    .line 365
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object p2

    .line 372
    invoke-direct {p1, p2, v7}, Lnet/fortuna/ical4j/data/ParserException;-><init>(Ljava/lang/String;I)V

    .line 373
    .line 374
    .line 375
    throw p1

    .line 376
    :cond_9
    const-string v2, "alt"

    .line 377
    .line 378
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    invoke-static {v2}, Lorg/apache/commons/lang3/e;->f(Ljava/lang/CharSequence;)Z

    .line 383
    .line 384
    .line 385
    move-result v4

    .line 386
    if-nez v4, :cond_a

    .line 387
    .line 388
    invoke-interface {v0}, Lrc/b;->isDebugEnabled()Z

    .line 389
    .line 390
    .line 391
    move-result v3

    .line 392
    if-eqz v3, :cond_c

    .line 393
    .line 394
    new-instance v3, Ljava/lang/StringBuilder;

    .line 395
    .line 396
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    const-string v4, "\' from alt attribute"

    .line 406
    .line 407
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v3

    .line 414
    invoke-interface {v0, v3}, Lrc/b;->debug(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    goto :goto_0

    .line 418
    :cond_a
    new-instance p1, Lnet/fortuna/ical4j/data/ParserException;

    .line 419
    .line 420
    new-instance p2, Ljava/lang/StringBuilder;

    .line 421
    .line 422
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 423
    .line 424
    .line 425
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    const-string p3, "\' requires a non-empty alt"

    .line 432
    .line 433
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object p2

    .line 440
    invoke-direct {p1, p2, v7}, Lnet/fortuna/ical4j/data/ParserException;-><init>(Ljava/lang/String;I)V

    .line 441
    .line 442
    .line 443
    throw p1

    .line 444
    :cond_b
    invoke-static {p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->getTextContent(Lorg/w3c/dom/Element;)Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v2

    .line 448
    invoke-static {v2}, Lorg/apache/commons/lang3/e;->f(Ljava/lang/CharSequence;)Z

    .line 449
    .line 450
    .line 451
    move-result v3

    .line 452
    if-nez v3, :cond_c

    .line 453
    .line 454
    invoke-interface {v0}, Lrc/b;->isDebugEnabled()Z

    .line 455
    .line 456
    .line 457
    move-result v3

    .line 458
    if-eqz v3, :cond_c

    .line 459
    .line 460
    new-instance v3, Ljava/lang/StringBuilder;

    .line 461
    .line 462
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v3

    .line 478
    invoke-interface {v0, v3}, Lrc/b;->debug(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    :cond_c
    :goto_0
    invoke-static {v2}, Lorg/apache/commons/lang3/e;->f(Ljava/lang/CharSequence;)Z

    .line 482
    .line 483
    .line 484
    move-result v3

    .line 485
    if-eqz v3, :cond_e

    .line 486
    .line 487
    invoke-interface {v0}, Lrc/b;->isDebugEnabled()Z

    .line 488
    .line 489
    .line 490
    move-result p1

    .line 491
    if-eqz p1, :cond_d

    .line 492
    .line 493
    const-string p1, "Skipping property with empty value"

    .line 494
    .line 495
    invoke-interface {v0, p1}, Lrc/b;->debug(Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    :cond_d
    return-void

    .line 499
    :cond_e
    invoke-interface {p3, p2}, Lnet/fortuna/ical4j/data/ContentHandler;->startProperty(Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    invoke-static {p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->isDateProperty(Ljava/lang/String;)Z

    .line 503
    .line 504
    .line 505
    move-result v0

    .line 506
    const-string v3, "Caught exception"

    .line 507
    .line 508
    const-string v4, "\'"

    .line 509
    .line 510
    if-eqz v0, :cond_f

    .line 511
    .line 512
    :try_start_0
    invoke-static {v2}, Lnet/fortuna/ical4j/data/HCalendarParser;->icalDate(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Date;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Iso8601;->toString()Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v2

    .line 520
    instance-of v0, v0, Lnet/fortuna/ical4j/model/DateTime;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 521
    .line 522
    if-nez v0, :cond_f

    .line 523
    .line 524
    :try_start_1
    const-string v0, "VALUE"

    .line 525
    .line 526
    sget-object v5, Lnet/fortuna/ical4j/model/parameter/Value;->DATE:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 527
    .line 528
    invoke-virtual {v5}, Lnet/fortuna/ical4j/model/parameter/Value;->getValue()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v5

    .line 532
    invoke-interface {p3, v0, v5}, Lnet/fortuna/ical4j/data/ContentHandler;->parameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 533
    .line 534
    .line 535
    goto :goto_1

    .line 536
    :catch_0
    move-exception v0

    .line 537
    :try_start_2
    sget-object v5, Lnet/fortuna/ical4j/data/HCalendarParser;->LOG:Lrc/b;

    .line 538
    .line 539
    invoke-interface {v5, v3, v0}, Lrc/b;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1

    .line 540
    .line 541
    .line 542
    goto :goto_1

    .line 543
    :catch_1
    move-exception p1

    .line 544
    new-instance p2, Lnet/fortuna/ical4j/data/ParserException;

    .line 545
    .line 546
    new-instance p3, Ljava/lang/StringBuilder;

    .line 547
    .line 548
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 549
    .line 550
    .line 551
    const-string v0, "Malformed date value for element \'"

    .line 552
    .line 553
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object p3

    .line 566
    invoke-direct {p2, p3, v7, p1}, Lnet/fortuna/ical4j/data/ParserException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 567
    .line 568
    .line 569
    throw p2

    .line 570
    :cond_f
    :goto_1
    invoke-static {p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->isTextProperty(Ljava/lang/String;)Z

    .line 571
    .line 572
    .line 573
    move-result v0

    .line 574
    if-eqz v0, :cond_10

    .line 575
    .line 576
    const-string v0, "http://www.w3.org/XML/1998/namespace"

    .line 577
    .line 578
    const-string v5, "lang"

    .line 579
    .line 580
    invoke-interface {p1, v0, v5}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object p1

    .line 584
    invoke-static {p1}, Lorg/apache/commons/lang3/e;->f(Ljava/lang/CharSequence;)Z

    .line 585
    .line 586
    .line 587
    move-result v0

    .line 588
    if-nez v0, :cond_10

    .line 589
    .line 590
    :try_start_3
    const-string v0, "LANGUAGE"

    .line 591
    .line 592
    invoke-interface {p3, v0, p1}, Lnet/fortuna/ical4j/data/ContentHandler;->parameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_2

    .line 593
    .line 594
    .line 595
    goto :goto_2

    .line 596
    :catch_2
    move-exception p1

    .line 597
    sget-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->LOG:Lrc/b;

    .line 598
    .line 599
    invoke-interface {v0, v3, p1}, Lrc/b;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 600
    .line 601
    .line 602
    :cond_10
    :goto_2
    :try_start_4
    invoke-interface {p3, v2}, Lnet/fortuna/ical4j/data/ContentHandler;->propertyValue(Ljava/lang/String;)V

    .line 603
    .line 604
    .line 605
    invoke-interface {p3, p2}, Lnet/fortuna/ical4j/data/ContentHandler;->endProperty(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 606
    .line 607
    .line 608
    return-void

    .line 609
    :catch_3
    move-exception p1

    .line 610
    new-instance p2, Lnet/fortuna/ical4j/model/CalendarException;

    .line 611
    .line 612
    invoke-direct {p2, p1}, Lnet/fortuna/ical4j/model/CalendarException;-><init>(Ljava/lang/Throwable;)V

    .line 613
    .line 614
    .line 615
    throw p2

    .line 616
    :catch_4
    move-exception p1

    .line 617
    new-instance p2, Lnet/fortuna/ical4j/data/ParserException;

    .line 618
    .line 619
    new-instance p3, Ljava/lang/StringBuilder;

    .line 620
    .line 621
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 622
    .line 623
    .line 624
    const-string v0, "Malformed value for element \'"

    .line 625
    .line 626
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    .line 628
    .line 629
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    .line 631
    .line 632
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    .line 634
    .line 635
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object p3

    .line 639
    invoke-direct {p2, p3, v7, p1}, Lnet/fortuna/ical4j/data/ParserException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 640
    .line 641
    .line 642
    throw p2

    .line 643
    :catch_5
    move-exception p1

    .line 644
    new-instance p2, Lnet/fortuna/ical4j/data/ParserException;

    .line 645
    .line 646
    new-instance p3, Ljava/lang/StringBuilder;

    .line 647
    .line 648
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 649
    .line 650
    .line 651
    const-string v0, "Malformed URI value for element \'"

    .line 652
    .line 653
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    .line 658
    .line 659
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    .line 661
    .line 662
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object p3

    .line 666
    invoke-direct {p2, p3, v7, p1}, Lnet/fortuna/ical4j/data/ParserException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 667
    .line 668
    .line 669
    throw p2
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
.end method

.method private static className(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

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

.method private static compileExpression(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->XPATH:Ljavax/xml/xpath/XPath;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Ljavax/xml/xpath/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    new-instance v0, Lnet/fortuna/ical4j/model/CalendarException;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lnet/fortuna/ical4j/model/CalendarException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw v0
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

.method private static findElement(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Lorg/w3c/dom/Element;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->findNode(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Lorg/w3c/dom/Node;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of p1, p0, Lorg/w3c/dom/Element;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    check-cast p0, Lorg/w3c/dom/Element;

    .line 12
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
.end method

.method private static findElements(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/xml/xpath/XPathExpression;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lorg/w3c/dom/Element;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lnet/fortuna/ical4j/data/HCalendarParser;->findNodes(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Lorg/w3c/dom/NodeList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ge v0, v1, :cond_1

    .line 16
    .line 17
    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    instance-of v2, v1, Lorg/w3c/dom/Element;

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    check-cast v1, Lorg/w3c/dom/Element;

    .line 26
    .line 27
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-object p1
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

.method private static findNode(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Lorg/w3c/dom/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    .line 2
    .line 3
    invoke-interface {p0, p1, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljavax/xml/xpath/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    return-object p0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    new-instance p1, Lnet/fortuna/ical4j/data/ParserException;

    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    const-string v1, "Unable to find node"

    .line 15
    .line 16
    invoke-direct {p1, v1, v0, p0}, Lnet/fortuna/ical4j/data/ParserException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    throw p1
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

.method private static findNodes(Ljavax/xml/xpath/XPathExpression;Ljava/lang/Object;)Lorg/w3c/dom/NodeList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    .line 2
    .line 3
    invoke-interface {p0, p1, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/w3c/dom/NodeList;
    :try_end_0
    .catch Ljavax/xml/xpath/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    return-object p0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    new-instance p1, Lnet/fortuna/ical4j/data/ParserException;

    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    const-string v1, "Unable to find nodes"

    .line 15
    .line 16
    invoke-direct {p1, v1, v0, p0}, Lnet/fortuna/ical4j/data/ParserException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    throw p1
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

.method private static getTextContent(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "\\s+"

    .line 16
    .line 17
    const-string v2, " "

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return-object p0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return-object p0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    new-instance v1, Lnet/fortuna/ical4j/data/ParserException;

    .line 28
    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v3, "Unable to get text content for element "

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const/4 v2, -0x1

    .line 51
    invoke-direct {v1, p0, v2, v0}, Lnet/fortuna/ical4j/data/ParserException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    throw v1
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

.method private static icalDate(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Date;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x54

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "Caught exception"

    .line 8
    .line 9
    const/16 v2, 0x2d

    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    if-ne v0, v3, :cond_1

    .line 13
    .line 14
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-ne v0, v3, :cond_0

    .line 19
    .line 20
    new-instance v0, Lnet/fortuna/ical4j/model/Date;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lnet/fortuna/ical4j/model/Date;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    sget-object v2, Lnet/fortuna/ical4j/data/HCalendarParser;->LOG:Lrc/b;

    .line 28
    .line 29
    invoke-interface {v2, v1, v0}, Lrc/b;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    new-instance v0, Lnet/fortuna/ical4j/model/Date;

    .line 33
    .line 34
    sget-object v1, Lnet/fortuna/ical4j/data/HCalendarParser;->HCAL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 35
    .line 36
    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-direct {v0, p0}, Lnet/fortuna/ical4j/model/Date;-><init>(Ljava/util/Date;)V

    .line 41
    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_1
    :try_start_1
    new-instance v0, Lnet/fortuna/ical4j/model/DateTime;

    .line 45
    .line 46
    invoke-direct {v0, p0}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 47
    .line 48
    .line 49
    return-object v0

    .line 50
    :catch_1
    move-exception v0

    .line 51
    sget-object v3, Lnet/fortuna/ical4j/data/HCalendarParser;->LOG:Lrc/b;

    .line 52
    .line 53
    invoke-interface {v3, v1, v0}, Lrc/b;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v3}, Lrc/b;->isDebugEnabled()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v1, "normalizing date-time "

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-interface {v3, v0}, Lrc/b;->debug(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    const/4 v1, 0x1

    .line 87
    sub-int/2addr v0, v1

    .line 88
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    const/16 v3, 0x5a

    .line 93
    .line 94
    if-ne v0, v3, :cond_3

    .line 95
    .line 96
    const-string v0, "Z"

    .line 97
    .line 98
    const-string v2, "GMT-00:00"

    .line 99
    .line 100
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    goto :goto_0

    .line 105
    :cond_3
    const-string v0, "GMT"

    .line 106
    .line 107
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-nez v3, :cond_5

    .line 112
    .line 113
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    add-int/lit8 v3, v3, -0x6

    .line 118
    .line 119
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    const/16 v4, 0x2b

    .line 124
    .line 125
    if-eq v3, v4, :cond_4

    .line 126
    .line 127
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    add-int/lit8 v3, v3, -0x6

    .line 132
    .line 133
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    if-ne v3, v2, :cond_5

    .line 138
    .line 139
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    add-int/lit8 v0, v0, -0x6

    .line 152
    .line 153
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    const/4 v3, 0x0

    .line 170
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    add-int/lit8 v4, v4, -0x6

    .line 175
    .line 176
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    :cond_5
    :goto_0
    new-instance v0, Lnet/fortuna/ical4j/model/DateTime;

    .line 191
    .line 192
    sget-object v2, Lnet/fortuna/ical4j/data/HCalendarParser;->HCAL_DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    .line 193
    .line 194
    invoke-virtual {v2, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    invoke-direct {v0, p0}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/util/Date;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    .line 202
    .line 203
    .line 204
    return-object v0
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

.method private static isDateProperty(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "DTSTART"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "DTEND"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const-string v0, "DTSTAMP"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const-string v0, "LAST-MODIFIED"

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p0, 0x0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 37
    :goto_1
    return p0
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
.end method

.method private static isHeaderElement(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "h1"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "h2"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const-string v0, "h3"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const-string v0, "h4"

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    const-string v0, "h5"

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    const-string v0, "h6"

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-eqz p0, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 p0, 0x0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 53
    :goto_1
    return p0
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

.method private static isTextProperty(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "SUMMARY"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "LOCATION"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const-string v0, "CATEGORIES"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const-string v0, "DESCRIPTION"

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    const-string v0, "ATTENDEE"

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    const-string v0, "CONTACT"

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    const-string v0, "ORGANIZER"

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-eqz p0, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const/4 p0, 0x0

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 61
    :goto_1
    return p0
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

.method private static isUrlProperty(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "URL"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
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

.method private parse(Lorg/xml/sax/InputSource;Lnet/fortuna/ical4j/data/ContentHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .line 3
    :try_start_0
    sget-object v0, Lnet/fortuna/ical4j/data/HCalendarParser;->BUILDER_FACTORY:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1, p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->buildCalendar(Lorg/w3c/dom/Document;Lnet/fortuna/ical4j/data/ContentHandler;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5
    instance-of p2, p1, Lorg/xml/sax/SAXParseException;

    if-eqz p2, :cond_0

    .line 6
    move-object p2, p1

    check-cast p2, Lorg/xml/sax/SAXParseException;

    .line 7
    new-instance v0, Lnet/fortuna/ical4j/data/ParserException;

    invoke-virtual {p2}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result p2

    const-string v1, "Could not parse XML"

    invoke-direct {v0, v1, p2, p1}, Lnet/fortuna/ical4j/data/ParserException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v0

    .line 8
    :cond_0
    new-instance p2, Lnet/fortuna/ical4j/data/ParserException;

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p2, v0, v1, p1}, Lnet/fortuna/ical4j/data/ParserException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 9
    new-instance p2, Lnet/fortuna/ical4j/model/CalendarException;

    invoke-direct {p2, p1}, Lnet/fortuna/ical4j/model/CalendarException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;Lnet/fortuna/ical4j/data/ContentHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0, p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->parse(Lorg/xml/sax/InputSource;Lnet/fortuna/ical4j/data/ContentHandler;)V

    return-void
.end method

.method public parse(Ljava/io/Reader;Lnet/fortuna/ical4j/data/ContentHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0, p2}, Lnet/fortuna/ical4j/data/HCalendarParser;->parse(Lorg/xml/sax/InputSource;Lnet/fortuna/ical4j/data/ContentHandler;)V

    return-void
.end method

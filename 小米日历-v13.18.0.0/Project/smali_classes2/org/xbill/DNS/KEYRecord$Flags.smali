.class public Lorg/xbill/DNS/KEYRecord$Flags;
.super Ljava/lang/Object;
.source "KEYRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/KEYRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Flags"
.end annotation


# static fields
.field public static final EXTEND:I = 0x1000

.field public static final FLAG10:I = 0x20

.field public static final FLAG11:I = 0x10

.field public static final FLAG2:I = 0x2000

.field public static final FLAG4:I = 0x800

.field public static final FLAG5:I = 0x400

.field public static final FLAG8:I = 0x80

.field public static final FLAG9:I = 0x40

.field public static final HOST:I = 0x200

.field public static final NOAUTH:I = 0x8000

.field public static final NOCONF:I = 0x4000

.field public static final NOKEY:I = 0xc000

.field public static final NTYP3:I = 0x300

.field public static final OWNER_MASK:I = 0x300

.field public static final SIG0:I = 0x0

.field public static final SIG1:I = 0x1

.field public static final SIG10:I = 0xa

.field public static final SIG11:I = 0xb

.field public static final SIG12:I = 0xc

.field public static final SIG13:I = 0xd

.field public static final SIG14:I = 0xe

.field public static final SIG15:I = 0xf

.field public static final SIG2:I = 0x2

.field public static final SIG3:I = 0x3

.field public static final SIG4:I = 0x4

.field public static final SIG5:I = 0x5

.field public static final SIG6:I = 0x6

.field public static final SIG7:I = 0x7

.field public static final SIG8:I = 0x8

.field public static final SIG9:I = 0x9

.field public static final USER:I = 0x0

.field public static final USE_MASK:I = 0xc000

.field public static final ZONE:I = 0x100

.field private static flags:Lorg/xbill/DNS/Mnemonic;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lorg/xbill/DNS/Mnemonic;

    .line 2
    .line 3
    const-string v1, "KEY flags"

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    .line 10
    .line 11
    const v1, 0xffff

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setMaximum(I)V

    .line 15
    .line 16
    .line 17
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setNumericAllowed(Z)V

    .line 21
    .line 22
    .line 23
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    .line 24
    .line 25
    const/16 v3, 0x4000

    .line 26
    .line 27
    const-string v4, "NOCONF"

    .line 28
    .line 29
    invoke-virtual {v0, v3, v4}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    .line 33
    .line 34
    const v3, 0x8000

    .line 35
    .line 36
    .line 37
    const-string v4, "NOAUTH"

    .line 38
    .line 39
    invoke-virtual {v0, v3, v4}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    .line 43
    .line 44
    const v3, 0xc000

    .line 45
    .line 46
    .line 47
    const-string v4, "NOKEY"

    .line 48
    .line 49
    invoke-virtual {v0, v3, v4}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    .line 53
    .line 54
    const/16 v3, 0x2000

    .line 55
    .line 56
    const-string v4, "FLAG2"

    .line 57
    .line 58
    invoke-virtual {v0, v3, v4}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    .line 62
    .line 63
    const/16 v3, 0x1000

    .line 64
    .line 65
    const-string v4, "EXTEND"

    .line 66
    .line 67
    invoke-virtual {v0, v3, v4}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    .line 71
    .line 72
    const/16 v3, 0x800

    .line 73
    .line 74
    const-string v4, "FLAG4"

    .line 75
    .line 76
    invoke-virtual {v0, v3, v4}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    .line 80
    .line 81
    const/16 v3, 0x400

    .line 82
    .line 83
    const-string v4, "FLAG5"

    .line 84
    .line 85
    invoke-virtual {v0, v3, v4}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 86
    .line 87
    .line 88
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    .line 89
    .line 90
    const-string v3, "USER"

    .line 91
    .line 92
    invoke-virtual {v0, v1, v3}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    .line 96
    .line 97
    const/16 v3, 0x100

    .line 98
    .line 99
    const-string v4, "ZONE"

    .line 100
    .line 101
    invoke-virtual {v0, v3, v4}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 102
    .line 103
    .line 104
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    .line 105
    .line 106
    const/16 v3, 0x200

    .line 107
    .line 108
    const-string v4, "HOST"

    .line 109
    .line 110
    invoke-virtual {v0, v3, v4}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 111
    .line 112
    .line 113
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    .line 114
    .line 115
    const/16 v3, 0x300

    .line 116
    .line 117
    const-string v4, "NTYP3"

    .line 118
    .line 119
    invoke-virtual {v0, v3, v4}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    .line 123
    .line 124
    const/16 v3, 0x80

    .line 125
    .line 126
    const-string v4, "FLAG8"

    .line 127
    .line 128
    invoke-virtual {v0, v3, v4}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 129
    .line 130
    .line 131
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    .line 132
    .line 133
    const/16 v3, 0x40

    .line 134
    .line 135
    const-string v4, "FLAG9"

    .line 136
    .line 137
    invoke-virtual {v0, v3, v4}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 138
    .line 139
    .line 140
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    .line 141
    .line 142
    const/16 v3, 0x20

    .line 143
    .line 144
    const-string v4, "FLAG10"

    .line 145
    .line 146
    invoke-virtual {v0, v3, v4}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 147
    .line 148
    .line 149
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    .line 150
    .line 151
    const/16 v3, 0x10

    .line 152
    .line 153
    const-string v4, "FLAG11"

    .line 154
    .line 155
    invoke-virtual {v0, v3, v4}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 156
    .line 157
    .line 158
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    .line 159
    .line 160
    const-string v3, "SIG0"

    .line 161
    .line 162
    invoke-virtual {v0, v1, v3}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 163
    .line 164
    .line 165
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    .line 166
    .line 167
    const/4 v1, 0x1

    .line 168
    const-string v3, "SIG1"

    .line 169
    .line 170
    invoke-virtual {v0, v1, v3}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 171
    .line 172
    .line 173
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    .line 174
    .line 175
    const-string v1, "SIG2"

    .line 176
    .line 177
    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 178
    .line 179
    .line 180
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    .line 181
    .line 182
    const/4 v1, 0x3

    .line 183
    const-string v2, "SIG3"

    .line 184
    .line 185
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 186
    .line 187
    .line 188
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    .line 189
    .line 190
    const/4 v1, 0x4

    .line 191
    const-string v2, "SIG4"

    .line 192
    .line 193
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 194
    .line 195
    .line 196
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    .line 197
    .line 198
    const/4 v1, 0x5

    .line 199
    const-string v2, "SIG5"

    .line 200
    .line 201
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 202
    .line 203
    .line 204
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    .line 205
    .line 206
    const/4 v1, 0x6

    .line 207
    const-string v2, "SIG6"

    .line 208
    .line 209
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 210
    .line 211
    .line 212
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    .line 213
    .line 214
    const/4 v1, 0x7

    .line 215
    const-string v2, "SIG7"

    .line 216
    .line 217
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 218
    .line 219
    .line 220
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    .line 221
    .line 222
    const/16 v1, 0x8

    .line 223
    .line 224
    const-string v2, "SIG8"

    .line 225
    .line 226
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 227
    .line 228
    .line 229
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    .line 230
    .line 231
    const/16 v1, 0x9

    .line 232
    .line 233
    const-string v2, "SIG9"

    .line 234
    .line 235
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 236
    .line 237
    .line 238
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    .line 239
    .line 240
    const/16 v1, 0xa

    .line 241
    .line 242
    const-string v2, "SIG10"

    .line 243
    .line 244
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 245
    .line 246
    .line 247
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    .line 248
    .line 249
    const/16 v1, 0xb

    .line 250
    .line 251
    const-string v2, "SIG11"

    .line 252
    .line 253
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 254
    .line 255
    .line 256
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    .line 257
    .line 258
    const/16 v1, 0xc

    .line 259
    .line 260
    const-string v2, "SIG12"

    .line 261
    .line 262
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 263
    .line 264
    .line 265
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    .line 266
    .line 267
    const/16 v1, 0xd

    .line 268
    .line 269
    const-string v2, "SIG13"

    .line 270
    .line 271
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 272
    .line 273
    .line 274
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    .line 275
    .line 276
    const/16 v1, 0xe

    .line 277
    .line 278
    const-string v2, "SIG14"

    .line 279
    .line 280
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 281
    .line 282
    .line 283
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    .line 284
    .line 285
    const/16 v1, 0xf

    .line 286
    .line 287
    const-string v2, "SIG15"

    .line 288
    .line 289
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 290
    .line 291
    .line 292
    return-void
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

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static value(Ljava/lang/String;)I
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 3
    .line 4
    .line 5
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    if-ltz p0, :cond_0

    .line 7
    .line 8
    const v1, 0xffff

    .line 9
    .line 10
    .line 11
    if-gt p0, v1, :cond_0

    .line 12
    .line 13
    return p0

    .line 14
    :cond_0
    return v0

    .line 15
    :catch_0
    new-instance v1, Ljava/util/StringTokenizer;

    .line 16
    .line 17
    const-string v2, "|"

    .line 18
    .line 19
    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    sget-object v2, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-gez v2, :cond_1

    .line 40
    .line 41
    return v0

    .line 42
    :cond_1
    or-int/2addr p0, v2

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    return p0
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

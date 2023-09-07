.class public final Lnet/fortuna/ical4j/util/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
.end method

.method public static forProperty(Lnet/fortuna/ical4j/model/Property;)Lnet/fortuna/ical4j/model/Property;
    .locals 2

    .line 1
    sget-object v0, Lnet/fortuna/ical4j/model/property/Action;->AUDIO:Lnet/fortuna/ical4j/model/property/Action;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    :goto_0
    move-object p0, v0

    .line 10
    goto/16 :goto_1

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lnet/fortuna/ical4j/model/property/Action;->DISPLAY:Lnet/fortuna/ical4j/model/property/Action;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    sget-object v0, Lnet/fortuna/ical4j/model/property/Action;->EMAIL:Lnet/fortuna/ical4j/model/property/Action;

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    sget-object v0, Lnet/fortuna/ical4j/model/property/Action;->PROCEDURE:Lnet/fortuna/ical4j/model/property/Action;

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    sget-object v0, Lnet/fortuna/ical4j/model/property/CalScale;->GREGORIAN:Lnet/fortuna/ical4j/model/property/CalScale;

    .line 40
    .line 41
    invoke-virtual {v0, p0}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_4

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_4
    sget-object v0, Lnet/fortuna/ical4j/model/property/Clazz;->CONFIDENTIAL:Lnet/fortuna/ical4j/model/property/Clazz;

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_5

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_5
    sget-object v0, Lnet/fortuna/ical4j/model/property/Clazz;->PRIVATE:Lnet/fortuna/ical4j/model/property/Clazz;

    .line 58
    .line 59
    invoke-virtual {v0, p0}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_6

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_6
    sget-object v0, Lnet/fortuna/ical4j/model/property/Clazz;->PUBLIC:Lnet/fortuna/ical4j/model/property/Clazz;

    .line 67
    .line 68
    invoke-virtual {v0, p0}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_7

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_7
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->ADD:Lnet/fortuna/ical4j/model/property/Method;

    .line 76
    .line 77
    invoke-virtual {v0, p0}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_8

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_8
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->CANCEL:Lnet/fortuna/ical4j/model/property/Method;

    .line 85
    .line 86
    invoke-virtual {v0, p0}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_9

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_9
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->COUNTER:Lnet/fortuna/ical4j/model/property/Method;

    .line 94
    .line 95
    invoke-virtual {v0, p0}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_a

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_a
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->DECLINE_COUNTER:Lnet/fortuna/ical4j/model/property/Method;

    .line 103
    .line 104
    invoke-virtual {v0, p0}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_b

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_b
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->PUBLISH:Lnet/fortuna/ical4j/model/property/Method;

    .line 112
    .line 113
    invoke-virtual {v0, p0}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-eqz v1, :cond_c

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_c
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->REFRESH:Lnet/fortuna/ical4j/model/property/Method;

    .line 121
    .line 122
    invoke-virtual {v0, p0}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_d

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_d
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->REPLY:Lnet/fortuna/ical4j/model/property/Method;

    .line 130
    .line 131
    invoke-virtual {v0, p0}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_e

    .line 136
    .line 137
    goto/16 :goto_0

    .line 138
    .line 139
    :cond_e
    sget-object v0, Lnet/fortuna/ical4j/model/property/Method;->REQUEST:Lnet/fortuna/ical4j/model/property/Method;

    .line 140
    .line 141
    invoke-virtual {v0, p0}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-eqz v1, :cond_f

    .line 146
    .line 147
    goto/16 :goto_0

    .line 148
    .line 149
    :cond_f
    sget-object v0, Lnet/fortuna/ical4j/model/property/Priority;->HIGH:Lnet/fortuna/ical4j/model/property/Priority;

    .line 150
    .line 151
    invoke-virtual {v0, p0}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-eqz v1, :cond_10

    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :cond_10
    sget-object v0, Lnet/fortuna/ical4j/model/property/Priority;->LOW:Lnet/fortuna/ical4j/model/property/Priority;

    .line 160
    .line 161
    invoke-virtual {v0, p0}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-eqz v1, :cond_11

    .line 166
    .line 167
    goto/16 :goto_0

    .line 168
    .line 169
    :cond_11
    sget-object v0, Lnet/fortuna/ical4j/model/property/Priority;->MEDIUM:Lnet/fortuna/ical4j/model/property/Priority;

    .line 170
    .line 171
    invoke-virtual {v0, p0}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-eqz v1, :cond_12

    .line 176
    .line 177
    goto/16 :goto_0

    .line 178
    .line 179
    :cond_12
    sget-object v0, Lnet/fortuna/ical4j/model/property/Priority;->UNDEFINED:Lnet/fortuna/ical4j/model/property/Priority;

    .line 180
    .line 181
    invoke-virtual {v0, p0}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-eqz v1, :cond_13

    .line 186
    .line 187
    goto/16 :goto_0

    .line 188
    .line 189
    :cond_13
    sget-object v0, Lnet/fortuna/ical4j/model/property/Status;->VEVENT_CANCELLED:Lnet/fortuna/ical4j/model/property/Status;

    .line 190
    .line 191
    invoke-virtual {v0, p0}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    if-eqz v1, :cond_14

    .line 196
    .line 197
    goto/16 :goto_0

    .line 198
    .line 199
    :cond_14
    sget-object v0, Lnet/fortuna/ical4j/model/property/Status;->VEVENT_CONFIRMED:Lnet/fortuna/ical4j/model/property/Status;

    .line 200
    .line 201
    invoke-virtual {v0, p0}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    if-eqz v1, :cond_15

    .line 206
    .line 207
    goto/16 :goto_0

    .line 208
    .line 209
    :cond_15
    sget-object v0, Lnet/fortuna/ical4j/model/property/Status;->VEVENT_TENTATIVE:Lnet/fortuna/ical4j/model/property/Status;

    .line 210
    .line 211
    invoke-virtual {v0, p0}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-eqz v1, :cond_16

    .line 216
    .line 217
    goto/16 :goto_0

    .line 218
    .line 219
    :cond_16
    sget-object v0, Lnet/fortuna/ical4j/model/property/Status;->VJOURNAL_CANCELLED:Lnet/fortuna/ical4j/model/property/Status;

    .line 220
    .line 221
    invoke-virtual {v0, p0}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    if-eqz v1, :cond_17

    .line 226
    .line 227
    goto/16 :goto_0

    .line 228
    .line 229
    :cond_17
    sget-object v0, Lnet/fortuna/ical4j/model/property/Status;->VJOURNAL_DRAFT:Lnet/fortuna/ical4j/model/property/Status;

    .line 230
    .line 231
    invoke-virtual {v0, p0}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_18

    .line 236
    .line 237
    goto/16 :goto_0

    .line 238
    .line 239
    :cond_18
    sget-object v0, Lnet/fortuna/ical4j/model/property/Status;->VJOURNAL_FINAL:Lnet/fortuna/ical4j/model/property/Status;

    .line 240
    .line 241
    invoke-virtual {v0, p0}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    if-eqz v1, :cond_19

    .line 246
    .line 247
    goto/16 :goto_0

    .line 248
    .line 249
    :cond_19
    sget-object v0, Lnet/fortuna/ical4j/model/property/Status;->VTODO_CANCELLED:Lnet/fortuna/ical4j/model/property/Status;

    .line 250
    .line 251
    invoke-virtual {v0, p0}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    if-eqz v1, :cond_1a

    .line 256
    .line 257
    goto/16 :goto_0

    .line 258
    .line 259
    :cond_1a
    sget-object v0, Lnet/fortuna/ical4j/model/property/Status;->VTODO_COMPLETED:Lnet/fortuna/ical4j/model/property/Status;

    .line 260
    .line 261
    invoke-virtual {v0, p0}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    if-eqz v1, :cond_1b

    .line 266
    .line 267
    goto/16 :goto_0

    .line 268
    .line 269
    :cond_1b
    sget-object v0, Lnet/fortuna/ical4j/model/property/Status;->VTODO_IN_PROCESS:Lnet/fortuna/ical4j/model/property/Status;

    .line 270
    .line 271
    invoke-virtual {v0, p0}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    if-eqz v1, :cond_1c

    .line 276
    .line 277
    goto/16 :goto_0

    .line 278
    .line 279
    :cond_1c
    sget-object v0, Lnet/fortuna/ical4j/model/property/Status;->VTODO_NEEDS_ACTION:Lnet/fortuna/ical4j/model/property/Status;

    .line 280
    .line 281
    invoke-virtual {v0, p0}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    if-eqz v1, :cond_1d

    .line 286
    .line 287
    goto/16 :goto_0

    .line 288
    .line 289
    :cond_1d
    sget-object v0, Lnet/fortuna/ical4j/model/property/Transp;->OPAQUE:Lnet/fortuna/ical4j/model/property/Transp;

    .line 290
    .line 291
    invoke-virtual {v0, p0}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    if-eqz v1, :cond_1e

    .line 296
    .line 297
    goto/16 :goto_0

    .line 298
    .line 299
    :cond_1e
    sget-object v0, Lnet/fortuna/ical4j/model/property/Transp;->TRANSPARENT:Lnet/fortuna/ical4j/model/property/Transp;

    .line 300
    .line 301
    invoke-virtual {v0, p0}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    if-eqz v1, :cond_1f

    .line 306
    .line 307
    goto/16 :goto_0

    .line 308
    .line 309
    :cond_1f
    sget-object v0, Lnet/fortuna/ical4j/model/property/Version;->VERSION_2_0:Lnet/fortuna/ical4j/model/property/Version;

    .line 310
    .line 311
    invoke-virtual {v0, p0}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    if-eqz v1, :cond_20

    .line 316
    .line 317
    goto/16 :goto_0

    .line 318
    .line 319
    :cond_20
    :goto_1
    return-object p0
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

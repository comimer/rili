.class public Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;
.super Lcom/miui/calendar/card/single/custom/CustomSingleCard$g;
.source "AdSingleCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public A:Lcom/miui/calendar/view/AdProgressLinearLayout;

.field public B:Landroid/view/View;

.field public C:Landroid/widget/TextView;

.field public D:Landroid/widget/TextView;

.field public E:Landroid/view/View;

.field public F:Landroid/view/View;

.field public G:Landroid/widget/TextView;

.field public H:Landroid/widget/TextView;

.field public I:Landroid/widget/TextView;

.field public J:Landroid/widget/TextView;

.field public K:Landroid/widget/TextView;

.field public L:Landroid/widget/TextView;

.field public M:Landroid/widget/TextView;

.field public N:Landroidx/constraintlayout/widget/ConstraintLayout;

.field final synthetic O:Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;

.field public l:Landroid/view/ViewGroup;

.field public m:Landroid/widget/TextView;

.field public n:Lcom/miui/calendar/view/OnlineImageView;

.field public o:Lcom/miui/calendar/view/OnlineImageView;

.field public p:Lcom/miui/calendar/view/OnlineImageView;

.field public q:Lcom/miui/calendar/view/OnlineImageView;

.field public r:Landroid/widget/ProgressBar;

.field public s:Lcom/miui/calendar/view/OnlineImageView;

.field public t:Landroid/widget/TextView;

.field public u:Landroid/widget/TextView;

.field public v:Landroid/view/View;

.field public w:Landroid/widget/TextView;

.field public x:Landroid/view/View;

.field public y:Lcom/miui/calendar/view/OnlineImageView;

.field public z:Lcom/miui/calendar/view/AdProgressTextView;


# direct methods
.method public constructor <init>(Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->O:Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/miui/calendar/card/single/custom/CustomSingleCard$g;-><init>(Lcom/miui/calendar/card/single/custom/CustomSingleCard;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a0502

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/view/ViewGroup;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->l:Landroid/view/ViewGroup;

    .line 16
    .line 17
    const p1, 0x7f0a062d

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroid/widget/TextView;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->m:Landroid/widget/TextView;

    .line 27
    .line 28
    const p1, 0x7f0a0315

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lcom/miui/calendar/view/OnlineImageView;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->n:Lcom/miui/calendar/view/OnlineImageView;

    .line 38
    .line 39
    const p1, 0x7f0a0425

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Lcom/miui/calendar/view/OnlineImageView;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->o:Lcom/miui/calendar/view/OnlineImageView;

    .line 49
    .line 50
    const p1, 0x7f0a0426

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lcom/miui/calendar/view/OnlineImageView;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->p:Lcom/miui/calendar/view/OnlineImageView;

    .line 60
    .line 61
    const p1, 0x7f0a0427

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Lcom/miui/calendar/view/OnlineImageView;

    .line 69
    .line 70
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->q:Lcom/miui/calendar/view/OnlineImageView;

    .line 71
    .line 72
    const p1, 0x7f0a04ac

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Landroid/widget/ProgressBar;

    .line 80
    .line 81
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->r:Landroid/widget/ProgressBar;

    .line 82
    .line 83
    const p1, 0x7f0a0303

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Lcom/miui/calendar/view/OnlineImageView;

    .line 91
    .line 92
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->s:Lcom/miui/calendar/view/OnlineImageView;

    .line 93
    .line 94
    const p1, 0x7f0a05c7

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Landroid/widget/TextView;

    .line 102
    .line 103
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->t:Landroid/widget/TextView;

    .line 104
    .line 105
    const p1, 0x7f0a0572

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Landroid/widget/TextView;

    .line 113
    .line 114
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->u:Landroid/widget/TextView;

    .line 115
    .line 116
    const p1, 0x7f0a0240

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->v:Landroid/view/View;

    .line 124
    .line 125
    const p1, 0x7f0a0248

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    check-cast p1, Landroid/widget/TextView;

    .line 133
    .line 134
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->w:Landroid/widget/TextView;

    .line 135
    .line 136
    const p1, 0x7f0a0186

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->x:Landroid/view/View;

    .line 144
    .line 145
    const p1, 0x7f0a00dd

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    check-cast p1, Lcom/miui/calendar/view/OnlineImageView;

    .line 153
    .line 154
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->y:Lcom/miui/calendar/view/OnlineImageView;

    .line 155
    .line 156
    const p1, 0x7f0a033c

    .line 157
    .line 158
    .line 159
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    check-cast p1, Lcom/miui/calendar/view/AdProgressTextView;

    .line 164
    .line 165
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->z:Lcom/miui/calendar/view/AdProgressTextView;

    .line 166
    .line 167
    const p1, 0x7f0a033d

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    check-cast p1, Lcom/miui/calendar/view/AdProgressLinearLayout;

    .line 175
    .line 176
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->A:Lcom/miui/calendar/view/AdProgressLinearLayout;

    .line 177
    .line 178
    const p1, 0x7f0a00de

    .line 179
    .line 180
    .line 181
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->B:Landroid/view/View;

    .line 186
    .line 187
    const p1, 0x7f0a00b7

    .line 188
    .line 189
    .line 190
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    check-cast p1, Landroid/widget/TextView;

    .line 195
    .line 196
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->C:Landroid/widget/TextView;

    .line 197
    .line 198
    const p1, 0x7f0a0376

    .line 199
    .line 200
    .line 201
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    check-cast p1, Landroid/widget/TextView;

    .line 206
    .line 207
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->D:Landroid/widget/TextView;

    .line 208
    .line 209
    const p1, 0x7f0a06f4

    .line 210
    .line 211
    .line 212
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->E:Landroid/view/View;

    .line 217
    .line 218
    const p1, 0x7f0a06b3

    .line 219
    .line 220
    .line 221
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->F:Landroid/view/View;

    .line 226
    .line 227
    const p1, 0x7f0a00b2

    .line 228
    .line 229
    .line 230
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    check-cast p1, Landroid/widget/TextView;

    .line 235
    .line 236
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->G:Landroid/widget/TextView;

    .line 237
    .line 238
    const p1, 0x7f0a00b6

    .line 239
    .line 240
    .line 241
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    check-cast p1, Landroid/widget/TextView;

    .line 246
    .line 247
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->H:Landroid/widget/TextView;

    .line 248
    .line 249
    const p1, 0x7f0a00b5

    .line 250
    .line 251
    .line 252
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    check-cast p1, Landroid/widget/TextView;

    .line 257
    .line 258
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->J:Landroid/widget/TextView;

    .line 259
    .line 260
    const p1, 0x7f0a00b4

    .line 261
    .line 262
    .line 263
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    check-cast p1, Landroid/widget/TextView;

    .line 268
    .line 269
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->I:Landroid/widget/TextView;

    .line 270
    .line 271
    const p1, 0x7f0a0076

    .line 272
    .line 273
    .line 274
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    check-cast p1, Landroid/widget/TextView;

    .line 279
    .line 280
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->K:Landroid/widget/TextView;

    .line 281
    .line 282
    const p1, 0x7f0a02f1

    .line 283
    .line 284
    .line 285
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    check-cast p1, Landroid/widget/TextView;

    .line 290
    .line 291
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->L:Landroid/widget/TextView;

    .line 292
    .line 293
    const p1, 0x7f0a0075

    .line 294
    .line 295
    .line 296
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    check-cast p1, Landroid/widget/TextView;

    .line 301
    .line 302
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->M:Landroid/widget/TextView;

    .line 303
    .line 304
    const p1, 0x7f0a019a

    .line 305
    .line 306
    .line 307
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 312
    .line 313
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$e;->N:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 314
    .line 315
    return-void
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
.end method

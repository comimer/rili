.class public Lcom/miui/calendar/huangli/HuangLiView;
.super Landroid/widget/FrameLayout;
.source "HuangLiView.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/miui/calendar/view/VerticalTextView;

.field private g:Lcom/miui/calendar/view/VerticalTextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:[Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/miui/calendar/huangli/HuangLiView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/calendar/huangli/HuangLiView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    iput-object p1, p0, Lcom/miui/calendar/huangli/HuangLiView;->a:Landroid/content/Context;

    .line 5
    invoke-direct {p0}, Lcom/miui/calendar/huangli/HuangLiView;->b()V

    return-void
.end method

.method private b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/huangli/HuangLiView;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f0d00da

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    const v0, 0x7f0a01c7

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/widget/TextView;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/miui/calendar/huangli/HuangLiView;->b:Landroid/widget/TextView;

    .line 23
    .line 24
    const v0, 0x7f0a03ab

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/widget/TextView;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/miui/calendar/huangli/HuangLiView;->c:Landroid/widget/TextView;

    .line 34
    .line 35
    const v0, 0x7f0a0571

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroid/widget/TextView;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/miui/calendar/huangli/HuangLiView;->d:Landroid/widget/TextView;

    .line 45
    .line 46
    const v0, 0x7f0a00d5

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Landroid/widget/TextView;

    .line 54
    .line 55
    iput-object v0, p0, Lcom/miui/calendar/huangli/HuangLiView;->e:Landroid/widget/TextView;

    .line 56
    .line 57
    const v0, 0x7f0a0715

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/miui/calendar/view/VerticalTextView;

    .line 65
    .line 66
    iput-object v0, p0, Lcom/miui/calendar/huangli/HuangLiView;->f:Lcom/miui/calendar/view/VerticalTextView;

    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const v2, 0x7f06015f

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    invoke-virtual {v0, v1}, Lcom/miui/calendar/view/VerticalTextView;->setTextColor(I)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/miui/calendar/huangli/HuangLiView;->f:Lcom/miui/calendar/view/VerticalTextView;

    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    const v2, 0x7f070439

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    int-to-float v1, v1

    .line 96
    invoke-virtual {v0, v1}, Lcom/miui/calendar/view/VerticalTextView;->setTextSize(F)V

    .line 97
    .line 98
    .line 99
    const v0, 0x7f0a035b

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Lcom/miui/calendar/view/VerticalTextView;

    .line 107
    .line 108
    iput-object v0, p0, Lcom/miui/calendar/huangli/HuangLiView;->g:Lcom/miui/calendar/view/VerticalTextView;

    .line 109
    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    const v3, 0x7f06016e

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    invoke-virtual {v0, v1}, Lcom/miui/calendar/view/VerticalTextView;->setTextColor(I)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/miui/calendar/huangli/HuangLiView;->g:Lcom/miui/calendar/view/VerticalTextView;

    .line 125
    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    int-to-float v1, v1

    .line 135
    invoke-virtual {v0, v1}, Lcom/miui/calendar/view/VerticalTextView;->setTextSize(F)V

    .line 136
    .line 137
    .line 138
    const v0, 0x7f0a05fc

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    check-cast v0, Landroid/widget/TextView;

    .line 146
    .line 147
    iput-object v0, p0, Lcom/miui/calendar/huangli/HuangLiView;->h:Landroid/widget/TextView;

    .line 148
    .line 149
    const v0, 0x7f0a070b

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    check-cast v0, Landroid/widget/TextView;

    .line 157
    .line 158
    iput-object v0, p0, Lcom/miui/calendar/huangli/HuangLiView;->i:Landroid/widget/TextView;

    .line 159
    .line 160
    const v0, 0x7f0a048a

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    check-cast v0, Landroid/widget/TextView;

    .line 168
    .line 169
    iput-object v0, p0, Lcom/miui/calendar/huangli/HuangLiView;->j:Landroid/widget/TextView;

    .line 170
    .line 171
    const v0, 0x7f0a048b

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    check-cast v0, Landroid/widget/TextView;

    .line 179
    .line 180
    iput-object v0, p0, Lcom/miui/calendar/huangli/HuangLiView;->k:Landroid/widget/TextView;

    .line 181
    .line 182
    const v0, 0x7f0a048c

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    check-cast v0, Landroid/widget/TextView;

    .line 190
    .line 191
    iput-object v0, p0, Lcom/miui/calendar/huangli/HuangLiView;->l:Landroid/widget/TextView;

    .line 192
    .line 193
    const v0, 0x7f0a048d

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    check-cast v0, Landroid/widget/TextView;

    .line 201
    .line 202
    iput-object v0, p0, Lcom/miui/calendar/huangli/HuangLiView;->m:Landroid/widget/TextView;

    .line 203
    .line 204
    const v0, 0x7f0a0708

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    check-cast v0, Landroid/widget/TextView;

    .line 212
    .line 213
    iput-object v0, p0, Lcom/miui/calendar/huangli/HuangLiView;->n:Landroid/widget/TextView;

    .line 214
    .line 215
    const v0, 0x7f0a0171

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    check-cast v0, Landroid/widget/TextView;

    .line 223
    .line 224
    iput-object v0, p0, Lcom/miui/calendar/huangli/HuangLiView;->o:Landroid/widget/TextView;

    .line 225
    .line 226
    const/16 v0, 0xc

    .line 227
    .line 228
    new-array v0, v0, [Landroid/widget/TextView;

    .line 229
    .line 230
    iput-object v0, p0, Lcom/miui/calendar/huangli/HuangLiView;->p:[Landroid/widget/TextView;

    .line 231
    .line 232
    const v1, 0x7f0a035c

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    check-cast v1, Landroid/widget/TextView;

    .line 240
    .line 241
    const/4 v2, 0x0

    .line 242
    aput-object v1, v0, v2

    .line 243
    .line 244
    iget-object v0, p0, Lcom/miui/calendar/huangli/HuangLiView;->p:[Landroid/widget/TextView;

    .line 245
    .line 246
    const v1, 0x7f0a0360

    .line 247
    .line 248
    .line 249
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    check-cast v1, Landroid/widget/TextView;

    .line 254
    .line 255
    const/4 v2, 0x1

    .line 256
    aput-object v1, v0, v2

    .line 257
    .line 258
    iget-object v0, p0, Lcom/miui/calendar/huangli/HuangLiView;->p:[Landroid/widget/TextView;

    .line 259
    .line 260
    const v1, 0x7f0a0361

    .line 261
    .line 262
    .line 263
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    check-cast v1, Landroid/widget/TextView;

    .line 268
    .line 269
    const/4 v2, 0x2

    .line 270
    aput-object v1, v0, v2

    .line 271
    .line 272
    iget-object v0, p0, Lcom/miui/calendar/huangli/HuangLiView;->p:[Landroid/widget/TextView;

    .line 273
    .line 274
    const v1, 0x7f0a0362

    .line 275
    .line 276
    .line 277
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    check-cast v1, Landroid/widget/TextView;

    .line 282
    .line 283
    const/4 v2, 0x3

    .line 284
    aput-object v1, v0, v2

    .line 285
    .line 286
    iget-object v0, p0, Lcom/miui/calendar/huangli/HuangLiView;->p:[Landroid/widget/TextView;

    .line 287
    .line 288
    const v1, 0x7f0a0363

    .line 289
    .line 290
    .line 291
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    check-cast v1, Landroid/widget/TextView;

    .line 296
    .line 297
    const/4 v2, 0x4

    .line 298
    aput-object v1, v0, v2

    .line 299
    .line 300
    iget-object v0, p0, Lcom/miui/calendar/huangli/HuangLiView;->p:[Landroid/widget/TextView;

    .line 301
    .line 302
    const v1, 0x7f0a0364

    .line 303
    .line 304
    .line 305
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    check-cast v1, Landroid/widget/TextView;

    .line 310
    .line 311
    const/4 v2, 0x5

    .line 312
    aput-object v1, v0, v2

    .line 313
    .line 314
    iget-object v0, p0, Lcom/miui/calendar/huangli/HuangLiView;->p:[Landroid/widget/TextView;

    .line 315
    .line 316
    const v1, 0x7f0a0365

    .line 317
    .line 318
    .line 319
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    check-cast v1, Landroid/widget/TextView;

    .line 324
    .line 325
    const/4 v2, 0x6

    .line 326
    aput-object v1, v0, v2

    .line 327
    .line 328
    iget-object v0, p0, Lcom/miui/calendar/huangli/HuangLiView;->p:[Landroid/widget/TextView;

    .line 329
    .line 330
    const v1, 0x7f0a0366

    .line 331
    .line 332
    .line 333
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    check-cast v1, Landroid/widget/TextView;

    .line 338
    .line 339
    const/4 v2, 0x7

    .line 340
    aput-object v1, v0, v2

    .line 341
    .line 342
    iget-object v0, p0, Lcom/miui/calendar/huangli/HuangLiView;->p:[Landroid/widget/TextView;

    .line 343
    .line 344
    const v1, 0x7f0a0367

    .line 345
    .line 346
    .line 347
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    check-cast v1, Landroid/widget/TextView;

    .line 352
    .line 353
    const/16 v2, 0x8

    .line 354
    .line 355
    aput-object v1, v0, v2

    .line 356
    .line 357
    iget-object v0, p0, Lcom/miui/calendar/huangli/HuangLiView;->p:[Landroid/widget/TextView;

    .line 358
    .line 359
    const v1, 0x7f0a035d

    .line 360
    .line 361
    .line 362
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    check-cast v1, Landroid/widget/TextView;

    .line 367
    .line 368
    const/16 v2, 0x9

    .line 369
    .line 370
    aput-object v1, v0, v2

    .line 371
    .line 372
    iget-object v0, p0, Lcom/miui/calendar/huangli/HuangLiView;->p:[Landroid/widget/TextView;

    .line 373
    .line 374
    const v1, 0x7f0a035e

    .line 375
    .line 376
    .line 377
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    check-cast v1, Landroid/widget/TextView;

    .line 382
    .line 383
    const/16 v2, 0xa

    .line 384
    .line 385
    aput-object v1, v0, v2

    .line 386
    .line 387
    iget-object v0, p0, Lcom/miui/calendar/huangli/HuangLiView;->p:[Landroid/widget/TextView;

    .line 388
    .line 389
    const v1, 0x7f0a035f

    .line 390
    .line 391
    .line 392
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    check-cast v1, Landroid/widget/TextView;

    .line 397
    .line 398
    const/16 v2, 0xb

    .line 399
    .line 400
    aput-object v1, v0, v2

    .line 401
    .line 402
    return-void
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
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
.end method

.method private c(J)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-wide/from16 v2, p1

    .line 4
    .line 5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    invoke-virtual {v4, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 10
    .line 11
    .line 12
    iget-object v0, v1, Lcom/miui/calendar/huangli/HuangLiView;->b:Landroid/widget/TextView;

    .line 13
    .line 14
    const/4 v5, 0x5

    .line 15
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, v1, Lcom/miui/calendar/huangli/HuangLiView;->c:Landroid/widget/TextView;

    .line 27
    .line 28
    invoke-static {v4}, La4/d;->g(Ljava/util/Calendar;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, v1, Lcom/miui/calendar/huangli/HuangLiView;->d:Landroid/widget/TextView;

    .line 36
    .line 37
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-static {v6, v4}, La4/d;->l(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    invoke-static {v0, v6}, Lcom/miui/calendar/util/x0;->f(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, v1, Lcom/miui/calendar/huangli/HuangLiView;->e:Landroid/widget/TextView;

    .line 49
    .line 50
    invoke-static {v4}, La4/d;->a(Ljava/util/Calendar;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    const/4 v6, 0x2

    .line 58
    const/4 v7, 0x1

    .line 59
    :try_start_0
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 60
    .line 61
    .line 62
    move-result-wide v9

    .line 63
    iget-object v0, v1, Lcom/miui/calendar/huangli/HuangLiView;->a:Landroid/content/Context;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/miui/calendar/util/j0;->f(Landroid/content/Context;)I

    .line 66
    .line 67
    .line 68
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    const-string v11, ""

    .line 70
    .line 71
    if-lez v0, :cond_4

    .line 72
    .line 73
    :try_start_1
    iget-object v0, v1, Lcom/miui/calendar/huangli/HuangLiView;->a:Landroid/content/Context;

    .line 74
    .line 75
    invoke-static {v0}, Lcom/miui/calendar/util/j0;->d(Landroid/content/Context;)Lcom/miui/calendar/util/HuangliPatch;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/miui/calendar/util/HuangliPatch;->getHuangli()Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v12

    .line 85
    if-eqz v12, :cond_4

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/miui/calendar/util/HuangliPatch;->getHuangli()Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v12

    .line 91
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 92
    .line 93
    .line 94
    move-result v12

    .line 95
    if-lez v12, :cond_4

    .line 96
    .line 97
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    .line 98
    .line 99
    .line 100
    move-result v12

    .line 101
    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    .line 102
    .line 103
    .line 104
    move-result v13

    .line 105
    add-int/2addr v13, v7

    .line 106
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    invoke-virtual {v0}, Lcom/miui/calendar/util/HuangliPatch;->getHuangli()Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    const/4 v14, 0x0

    .line 119
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v15

    .line 123
    if-eqz v15, :cond_5

    .line 124
    .line 125
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v15

    .line 129
    check-cast v15, Lcom/miui/calendar/util/HuangliPatchItem;

    .line 130
    .line 131
    if-nez v15, :cond_0

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {v15}, Lcom/miui/calendar/util/HuangliPatchItem;->getYear()I

    .line 135
    .line 136
    .line 137
    move-result v7

    .line 138
    if-ne v12, v7, :cond_3

    .line 139
    .line 140
    mul-int/lit8 v7, v13, 0x64

    .line 141
    .line 142
    add-int/2addr v7, v5

    .line 143
    invoke-virtual {v15}, Lcom/miui/calendar/util/HuangliPatchItem;->getDay()I

    .line 144
    .line 145
    .line 146
    move-result v8

    .line 147
    if-ne v7, v8, :cond_3

    .line 148
    .line 149
    invoke-virtual {v15}, Lcom/miui/calendar/util/HuangliPatchItem;->getYi()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 154
    .line 155
    .line 156
    move-result v7

    .line 157
    if-eqz v7, :cond_1

    .line 158
    .line 159
    move-object v7, v11

    .line 160
    goto :goto_1

    .line 161
    :cond_1
    invoke-virtual {v15}, Lcom/miui/calendar/util/HuangliPatchItem;->getYi()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    :goto_1
    invoke-virtual {v15}, Lcom/miui/calendar/util/HuangliPatchItem;->getJi()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v8

    .line 169
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 170
    .line 171
    .line 172
    move-result v8

    .line 173
    if-eqz v8, :cond_2

    .line 174
    .line 175
    move-object v8, v11

    .line 176
    goto :goto_2

    .line 177
    :cond_2
    invoke-virtual {v15}, Lcom/miui/calendar/util/HuangliPatchItem;->getJi()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v8

    .line 181
    :goto_2
    iget-object v14, v1, Lcom/miui/calendar/huangli/HuangLiView;->f:Lcom/miui/calendar/view/VerticalTextView;

    .line 182
    .line 183
    invoke-virtual {v14, v7}, Lcom/miui/calendar/view/VerticalTextView;->setText(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    iget-object v14, v1, Lcom/miui/calendar/huangli/HuangLiView;->g:Lcom/miui/calendar/view/VerticalTextView;

    .line 187
    .line 188
    invoke-virtual {v14, v8}, Lcom/miui/calendar/view/VerticalTextView;->setText(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    iget-object v14, v1, Lcom/miui/calendar/huangli/HuangLiView;->f:Lcom/miui/calendar/view/VerticalTextView;

    .line 192
    .line 193
    invoke-virtual {v14, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 194
    .line 195
    .line 196
    iget-object v7, v1, Lcom/miui/calendar/huangli/HuangLiView;->g:Lcom/miui/calendar/view/VerticalTextView;

    .line 197
    .line 198
    invoke-virtual {v7, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 199
    .line 200
    .line 201
    const/4 v14, 0x1

    .line 202
    :cond_3
    const/4 v7, 0x1

    .line 203
    goto :goto_0

    .line 204
    :cond_4
    const/4 v14, 0x0

    .line 205
    :cond_5
    if-nez v14, :cond_7

    .line 206
    .line 207
    invoke-static {v9, v10}, La4/d;->f(J)[Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    if-eqz v0, :cond_7

    .line 212
    .line 213
    array-length v5, v0

    .line 214
    if-ne v5, v6, :cond_7

    .line 215
    .line 216
    const-wide v7, 0x16d82e66400L

    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    cmp-long v5, v2, v7

    .line 222
    .line 223
    if-ltz v5, :cond_6

    .line 224
    .line 225
    const-wide v7, 0x16d880cc000L

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    cmp-long v2, v2, v7

    .line 231
    .line 232
    if-gez v2, :cond_6

    .line 233
    .line 234
    const/4 v2, 0x0

    .line 235
    aget-object v3, v0, v2

    .line 236
    .line 237
    const-string v5, " \u8bf8\u4e8b\u4e0d\u5b9c"

    .line 238
    .line 239
    invoke-virtual {v3, v5, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    aput-object v3, v0, v2

    .line 244
    .line 245
    :cond_6
    iget-object v2, v1, Lcom/miui/calendar/huangli/HuangLiView;->f:Lcom/miui/calendar/view/VerticalTextView;

    .line 246
    .line 247
    const/4 v3, 0x0

    .line 248
    aget-object v5, v0, v3

    .line 249
    .line 250
    invoke-virtual {v2, v5}, Lcom/miui/calendar/view/VerticalTextView;->setText(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    iget-object v2, v1, Lcom/miui/calendar/huangli/HuangLiView;->g:Lcom/miui/calendar/view/VerticalTextView;

    .line 254
    .line 255
    const/4 v3, 0x1

    .line 256
    aget-object v5, v0, v3

    .line 257
    .line 258
    invoke-virtual {v2, v5}, Lcom/miui/calendar/view/VerticalTextView;->setText(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    iget-object v2, v1, Lcom/miui/calendar/huangli/HuangLiView;->f:Lcom/miui/calendar/view/VerticalTextView;

    .line 262
    .line 263
    const/4 v3, 0x0

    .line 264
    aget-object v5, v0, v3

    .line 265
    .line 266
    invoke-virtual {v2, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 267
    .line 268
    .line 269
    iget-object v2, v1, Lcom/miui/calendar/huangli/HuangLiView;->g:Lcom/miui/calendar/view/VerticalTextView;

    .line 270
    .line 271
    const/4 v3, 0x1

    .line 272
    aget-object v0, v0, v3

    .line 273
    .line 274
    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 275
    .line 276
    .line 277
    goto :goto_3

    .line 278
    :catch_0
    move-exception v0

    .line 279
    const-string v2, "Cal:D:HuangLiView"

    .line 280
    .line 281
    const-string v3, "updateView()"

    .line 282
    .line 283
    invoke-static {v2, v3, v0}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 284
    .line 285
    .line 286
    :cond_7
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    invoke-static {v0, v4}, Lcom/miui/calendar/util/a0$a;->b(Landroid/content/res/Resources;Ljava/util/Calendar;)Lcom/miui/calendar/util/a0$a;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    invoke-virtual {v0}, Lcom/miui/calendar/util/a0$a;->a()I

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    iget-object v2, v1, Lcom/miui/calendar/huangli/HuangLiView;->h:Landroid/widget/TextView;

    .line 299
    .line 300
    invoke-static {v0}, La4/d;->n(I)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    .line 306
    .line 307
    iget-object v2, v1, Lcom/miui/calendar/huangli/HuangLiView;->i:Landroid/widget/TextView;

    .line 308
    .line 309
    invoke-static {v4}, La4/d;->p(Ljava/util/Calendar;)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    .line 315
    .line 316
    invoke-static {v0}, La4/d;->i(I)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    const-string v3, " "

    .line 321
    .line 322
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    if-eqz v2, :cond_8

    .line 327
    .line 328
    array-length v3, v2

    .line 329
    if-ne v3, v6, :cond_8

    .line 330
    .line 331
    iget-object v3, v1, Lcom/miui/calendar/huangli/HuangLiView;->j:Landroid/widget/TextView;

    .line 332
    .line 333
    const/4 v5, 0x0

    .line 334
    aget-object v7, v2, v5

    .line 335
    .line 336
    const/4 v8, 0x4

    .line 337
    invoke-virtual {v7, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v7

    .line 341
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    .line 343
    .line 344
    iget-object v3, v1, Lcom/miui/calendar/huangli/HuangLiView;->k:Landroid/widget/TextView;

    .line 345
    .line 346
    aget-object v7, v2, v5

    .line 347
    .line 348
    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v7

    .line 352
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    .line 354
    .line 355
    iget-object v3, v1, Lcom/miui/calendar/huangli/HuangLiView;->l:Landroid/widget/TextView;

    .line 356
    .line 357
    const/4 v7, 0x1

    .line 358
    aget-object v9, v2, v7

    .line 359
    .line 360
    invoke-virtual {v9, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v9

    .line 364
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    .line 366
    .line 367
    iget-object v3, v1, Lcom/miui/calendar/huangli/HuangLiView;->m:Landroid/widget/TextView;

    .line 368
    .line 369
    aget-object v2, v2, v7

    .line 370
    .line 371
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    .line 377
    .line 378
    goto :goto_4

    .line 379
    :cond_8
    const/4 v5, 0x0

    .line 380
    const/4 v7, 0x1

    .line 381
    :goto_4
    iget-object v2, v1, Lcom/miui/calendar/huangli/HuangLiView;->n:Landroid/widget/TextView;

    .line 382
    .line 383
    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    .line 384
    .line 385
    .line 386
    move-result v3

    .line 387
    add-int/2addr v3, v7

    .line 388
    invoke-static {v3, v0}, La4/d;->o(II)Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v3

    .line 392
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    .line 394
    .line 395
    iget-object v2, v1, Lcom/miui/calendar/huangli/HuangLiView;->o:Landroid/widget/TextView;

    .line 396
    .line 397
    new-instance v3, Ljava/lang/StringBuilder;

    .line 398
    .line 399
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 400
    .line 401
    .line 402
    invoke-static {v0}, La4/d;->c(I)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v4

    .line 406
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-static {v0}, La4/d;->j(I)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v4

    .line 413
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v3

    .line 420
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    .line 422
    .line 423
    invoke-static {v0}, La4/d;->k(I)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 428
    .line 429
    .line 430
    move-result v2

    .line 431
    if-nez v2, :cond_a

    .line 432
    .line 433
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 434
    .line 435
    .line 436
    move-result v2

    .line 437
    const/16 v3, 0xc

    .line 438
    .line 439
    if-lt v2, v3, :cond_a

    .line 440
    .line 441
    move v8, v5

    .line 442
    :goto_5
    if-ge v8, v3, :cond_a

    .line 443
    .line 444
    const-string v2, "\u5b50\u4e11\u5bc5\u536f\u8fb0\u5df3\u5348\u672a\u7533\u9149\u620c\u4ea5"

    .line 445
    .line 446
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    .line 447
    .line 448
    .line 449
    move-result v2

    .line 450
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v2

    .line 454
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 455
    .line 456
    .line 457
    move-result v4

    .line 458
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v4

    .line 462
    iget-object v5, v1, Lcom/miui/calendar/huangli/HuangLiView;->p:[Landroid/widget/TextView;

    .line 463
    .line 464
    aget-object v5, v5, v8

    .line 465
    .line 466
    new-instance v6, Ljava/lang/StringBuilder;

    .line 467
    .line 468
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    const-string v2, "\n"

    .line 475
    .line 476
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v2

    .line 486
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    .line 488
    .line 489
    const-string v2, "\u51f6"

    .line 490
    .line 491
    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 492
    .line 493
    .line 494
    move-result v2

    .line 495
    if-eqz v2, :cond_9

    .line 496
    .line 497
    iget-object v2, v1, Lcom/miui/calendar/huangli/HuangLiView;->p:[Landroid/widget/TextView;

    .line 498
    .line 499
    aget-object v2, v2, v8

    .line 500
    .line 501
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 502
    .line 503
    .line 504
    move-result-object v4

    .line 505
    const v5, 0x7f06016e

    .line 506
    .line 507
    .line 508
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 509
    .line 510
    .line 511
    move-result v4

    .line 512
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 513
    .line 514
    .line 515
    goto :goto_6

    .line 516
    :cond_9
    iget-object v2, v1, Lcom/miui/calendar/huangli/HuangLiView;->p:[Landroid/widget/TextView;

    .line 517
    .line 518
    aget-object v2, v2, v8

    .line 519
    .line 520
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 521
    .line 522
    .line 523
    move-result-object v4

    .line 524
    const v5, 0x7f06015f

    .line 525
    .line 526
    .line 527
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 528
    .line 529
    .line 530
    move-result v4

    .line 531
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 532
    .line 533
    .line 534
    :goto_6
    add-int/lit8 v8, v8, 0x1

    .line 535
    .line 536
    goto :goto_5

    .line 537
    :cond_a
    return-void
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


# virtual methods
.method public a(J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/calendar/huangli/HuangLiView;->c(J)V

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
.end method

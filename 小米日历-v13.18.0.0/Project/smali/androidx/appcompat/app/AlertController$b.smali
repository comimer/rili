.class public Landroidx/appcompat/app/AlertController$b;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/AlertController$b$e;
    }
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:Z

.field public F:[Z

.field public G:Z

.field public H:Z

.field public I:I

.field public J:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public K:Landroid/database/Cursor;

.field public L:Ljava/lang/String;

.field public M:Ljava/lang/String;

.field public N:Z

.field public O:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public P:Landroidx/appcompat/app/AlertController$b$e;

.field public Q:Z

.field public final a:Landroid/content/Context;

.field public final b:Landroid/view/LayoutInflater;

.field public c:I

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:I

.field public f:Ljava/lang/CharSequence;

.field public g:Landroid/view/View;

.field public h:Ljava/lang/CharSequence;

.field public i:Ljava/lang/CharSequence;

.field public j:Landroid/graphics/drawable/Drawable;

.field public k:Landroid/content/DialogInterface$OnClickListener;

.field public l:Ljava/lang/CharSequence;

.field public m:Landroid/graphics/drawable/Drawable;

.field public n:Landroid/content/DialogInterface$OnClickListener;

.field public o:Ljava/lang/CharSequence;

.field public p:Landroid/graphics/drawable/Drawable;

.field public q:Landroid/content/DialogInterface$OnClickListener;

.field public r:Z

.field public s:Landroid/content/DialogInterface$OnCancelListener;

.field public t:Landroid/content/DialogInterface$OnDismissListener;

.field public u:Landroid/content/DialogInterface$OnKeyListener;

.field public v:[Ljava/lang/CharSequence;

.field public w:Landroid/widget/ListAdapter;

.field public x:Landroid/content/DialogInterface$OnClickListener;

.field public y:I

.field public z:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/appcompat/app/AlertController$b;->c:I

    .line 6
    .line 7
    iput v0, p0, Landroidx/appcompat/app/AlertController$b;->e:I

    .line 8
    .line 9
    iput-boolean v0, p0, Landroidx/appcompat/app/AlertController$b;->E:Z

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Landroidx/appcompat/app/AlertController$b;->I:I

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Landroidx/appcompat/app/AlertController$b;->Q:Z

    .line 16
    .line 17
    iput-object p1, p0, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    .line 18
    .line 19
    iput-boolean v0, p0, Landroidx/appcompat/app/AlertController$b;->r:Z

    .line 20
    .line 21
    const-string v0, "layout_inflater"

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Landroid/view/LayoutInflater;

    .line 28
    .line 29
    iput-object p1, p0, Landroidx/appcompat/app/AlertController$b;->b:Landroid/view/LayoutInflater;

    .line 30
    .line 31
    return-void
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
.end method

.method private b(Landroidx/appcompat/app/AlertController;)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$b;->b:Landroid/view/LayoutInflater;

    .line 2
    .line 3
    iget v1, p1, Landroidx/appcompat/app/AlertController;->L:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 11
    .line 12
    iget-boolean v1, p0, Landroidx/appcompat/app/AlertController$b;->G:Z

    .line 13
    .line 14
    const/4 v8, 0x1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/appcompat/app/AlertController$b;->K:Landroid/database/Cursor;

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    new-instance v9, Landroidx/appcompat/app/AlertController$b$a;

    .line 22
    .line 23
    iget-object v3, p0, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    .line 24
    .line 25
    iget v4, p1, Landroidx/appcompat/app/AlertController;->M:I

    .line 26
    .line 27
    const v5, 0x1020014

    .line 28
    .line 29
    .line 30
    iget-object v6, p0, Landroidx/appcompat/app/AlertController$b;->v:[Ljava/lang/CharSequence;

    .line 31
    .line 32
    move-object v1, v9

    .line 33
    move-object v2, p0

    .line 34
    move-object v7, v0

    .line 35
    invoke-direct/range {v1 .. v7}, Landroidx/appcompat/app/AlertController$b$a;-><init>(Landroidx/appcompat/app/AlertController$b;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroidx/appcompat/app/AlertController$RecycleListView;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    new-instance v9, Landroidx/appcompat/app/AlertController$b$b;

    .line 40
    .line 41
    iget-object v3, p0, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    .line 42
    .line 43
    iget-object v4, p0, Landroidx/appcompat/app/AlertController$b;->K:Landroid/database/Cursor;

    .line 44
    .line 45
    const/4 v5, 0x0

    .line 46
    move-object v1, v9

    .line 47
    move-object v2, p0

    .line 48
    move-object v6, v0

    .line 49
    move-object v7, p1

    .line 50
    invoke-direct/range {v1 .. v7}, Landroidx/appcompat/app/AlertController$b$b;-><init>(Landroidx/appcompat/app/AlertController$b;Landroid/content/Context;Landroid/database/Cursor;ZLandroidx/appcompat/app/AlertController$RecycleListView;Landroidx/appcompat/app/AlertController;)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    iget-boolean v1, p0, Landroidx/appcompat/app/AlertController$b;->H:Z

    .line 55
    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    iget v1, p1, Landroidx/appcompat/app/AlertController;->N:I

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    iget v1, p1, Landroidx/appcompat/app/AlertController;->O:I

    .line 62
    .line 63
    :goto_0
    move v4, v1

    .line 64
    iget-object v1, p0, Landroidx/appcompat/app/AlertController$b;->K:Landroid/database/Cursor;

    .line 65
    .line 66
    const v2, 0x1020014

    .line 67
    .line 68
    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    new-instance v9, Landroid/widget/SimpleCursorAdapter;

    .line 72
    .line 73
    iget-object v3, p0, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    .line 74
    .line 75
    iget-object v5, p0, Landroidx/appcompat/app/AlertController$b;->K:Landroid/database/Cursor;

    .line 76
    .line 77
    new-array v6, v8, [Ljava/lang/String;

    .line 78
    .line 79
    iget-object v1, p0, Landroidx/appcompat/app/AlertController$b;->L:Ljava/lang/String;

    .line 80
    .line 81
    const/4 v7, 0x0

    .line 82
    aput-object v1, v6, v7

    .line 83
    .line 84
    new-array v1, v8, [I

    .line 85
    .line 86
    aput v2, v1, v7

    .line 87
    .line 88
    move-object v2, v9

    .line 89
    move-object v7, v1

    .line 90
    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    iget-object v9, p0, Landroidx/appcompat/app/AlertController$b;->w:Landroid/widget/ListAdapter;

    .line 95
    .line 96
    if-eqz v9, :cond_4

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_4
    new-instance v9, Landroidx/appcompat/app/AlertController$d;

    .line 100
    .line 101
    iget-object v1, p0, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    .line 102
    .line 103
    iget-object v3, p0, Landroidx/appcompat/app/AlertController$b;->v:[Ljava/lang/CharSequence;

    .line 104
    .line 105
    invoke-direct {v9, v1, v4, v2, v3}, Landroidx/appcompat/app/AlertController$d;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    .line 106
    .line 107
    .line 108
    :goto_1
    iget-object v1, p0, Landroidx/appcompat/app/AlertController$b;->P:Landroidx/appcompat/app/AlertController$b$e;

    .line 109
    .line 110
    if-eqz v1, :cond_5

    .line 111
    .line 112
    invoke-interface {v1, v0}, Landroidx/appcompat/app/AlertController$b$e;->onPrepareListView(Landroid/widget/ListView;)V

    .line 113
    .line 114
    .line 115
    :cond_5
    iput-object v9, p1, Landroidx/appcompat/app/AlertController;->H:Landroid/widget/ListAdapter;

    .line 116
    .line 117
    iget v1, p0, Landroidx/appcompat/app/AlertController$b;->I:I

    .line 118
    .line 119
    iput v1, p1, Landroidx/appcompat/app/AlertController;->I:I

    .line 120
    .line 121
    iget-object v1, p0, Landroidx/appcompat/app/AlertController$b;->x:Landroid/content/DialogInterface$OnClickListener;

    .line 122
    .line 123
    if-eqz v1, :cond_6

    .line 124
    .line 125
    new-instance v1, Landroidx/appcompat/app/AlertController$b$c;

    .line 126
    .line 127
    invoke-direct {v1, p0, p1}, Landroidx/appcompat/app/AlertController$b$c;-><init>(Landroidx/appcompat/app/AlertController$b;Landroidx/appcompat/app/AlertController;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_6
    iget-object v1, p0, Landroidx/appcompat/app/AlertController$b;->J:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 135
    .line 136
    if-eqz v1, :cond_7

    .line 137
    .line 138
    new-instance v1, Landroidx/appcompat/app/AlertController$b$d;

    .line 139
    .line 140
    invoke-direct {v1, p0, v0, p1}, Landroidx/appcompat/app/AlertController$b$d;-><init>(Landroidx/appcompat/app/AlertController$b;Landroidx/appcompat/app/AlertController$RecycleListView;Landroidx/appcompat/app/AlertController;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 144
    .line 145
    .line 146
    :cond_7
    :goto_2
    iget-object v1, p0, Landroidx/appcompat/app/AlertController$b;->O:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 147
    .line 148
    if-eqz v1, :cond_8

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 151
    .line 152
    .line 153
    :cond_8
    iget-boolean v1, p0, Landroidx/appcompat/app/AlertController$b;->H:Z

    .line 154
    .line 155
    if-eqz v1, :cond_9

    .line 156
    .line 157
    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 158
    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_9
    iget-boolean v1, p0, Landroidx/appcompat/app/AlertController$b;->G:Z

    .line 162
    .line 163
    if-eqz v1, :cond_a

    .line 164
    .line 165
    const/4 v1, 0x2

    .line 166
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 167
    .line 168
    .line 169
    :cond_a
    :goto_3
    iput-object v0, p1, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    .line 170
    .line 171
    return-void
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
.end method


# virtual methods
.method public a(Landroidx/appcompat/app/AlertController;)V
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$b;->g:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertController;->k(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$b;->f:Ljava/lang/CharSequence;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertController;->p(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$b;->d:Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertController;->m(Landroid/graphics/drawable/Drawable;)V

    .line 21
    .line 22
    .line 23
    :cond_2
    iget v0, p0, Landroidx/appcompat/app/AlertController$b;->c:I

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertController;->l(I)V

    .line 28
    .line 29
    .line 30
    :cond_3
    iget v0, p0, Landroidx/appcompat/app/AlertController$b;->e:I

    .line 31
    .line 32
    if-eqz v0, :cond_4

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertController;->c(I)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertController;->l(I)V

    .line 39
    .line 40
    .line 41
    :cond_4
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$b;->h:Ljava/lang/CharSequence;

    .line 42
    .line 43
    if-eqz v0, :cond_5

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertController;->n(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    :cond_5
    iget-object v3, p0, Landroidx/appcompat/app/AlertController$b;->i:Ljava/lang/CharSequence;

    .line 49
    .line 50
    if-nez v3, :cond_6

    .line 51
    .line 52
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$b;->j:Landroid/graphics/drawable/Drawable;

    .line 53
    .line 54
    if-eqz v0, :cond_7

    .line 55
    .line 56
    :cond_6
    const/4 v2, -0x1

    .line 57
    iget-object v4, p0, Landroidx/appcompat/app/AlertController$b;->k:Landroid/content/DialogInterface$OnClickListener;

    .line 58
    .line 59
    const/4 v5, 0x0

    .line 60
    iget-object v6, p0, Landroidx/appcompat/app/AlertController$b;->j:Landroid/graphics/drawable/Drawable;

    .line 61
    .line 62
    move-object v1, p1

    .line 63
    invoke-virtual/range {v1 .. v6}, Landroidx/appcompat/app/AlertController;->j(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 64
    .line 65
    .line 66
    :cond_7
    iget-object v9, p0, Landroidx/appcompat/app/AlertController$b;->l:Ljava/lang/CharSequence;

    .line 67
    .line 68
    if-nez v9, :cond_8

    .line 69
    .line 70
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$b;->m:Landroid/graphics/drawable/Drawable;

    .line 71
    .line 72
    if-eqz v0, :cond_9

    .line 73
    .line 74
    :cond_8
    const/4 v8, -0x2

    .line 75
    iget-object v10, p0, Landroidx/appcompat/app/AlertController$b;->n:Landroid/content/DialogInterface$OnClickListener;

    .line 76
    .line 77
    const/4 v11, 0x0

    .line 78
    iget-object v12, p0, Landroidx/appcompat/app/AlertController$b;->m:Landroid/graphics/drawable/Drawable;

    .line 79
    .line 80
    move-object v7, p1

    .line 81
    invoke-virtual/range {v7 .. v12}, Landroidx/appcompat/app/AlertController;->j(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 82
    .line 83
    .line 84
    :cond_9
    iget-object v2, p0, Landroidx/appcompat/app/AlertController$b;->o:Ljava/lang/CharSequence;

    .line 85
    .line 86
    if-nez v2, :cond_a

    .line 87
    .line 88
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$b;->p:Landroid/graphics/drawable/Drawable;

    .line 89
    .line 90
    if-eqz v0, :cond_b

    .line 91
    .line 92
    :cond_a
    const/4 v1, -0x3

    .line 93
    iget-object v3, p0, Landroidx/appcompat/app/AlertController$b;->q:Landroid/content/DialogInterface$OnClickListener;

    .line 94
    .line 95
    const/4 v4, 0x0

    .line 96
    iget-object v5, p0, Landroidx/appcompat/app/AlertController$b;->p:Landroid/graphics/drawable/Drawable;

    .line 97
    .line 98
    move-object v0, p1

    .line 99
    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/app/AlertController;->j(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 100
    .line 101
    .line 102
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$b;->v:[Ljava/lang/CharSequence;

    .line 103
    .line 104
    if-nez v0, :cond_c

    .line 105
    .line 106
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$b;->K:Landroid/database/Cursor;

    .line 107
    .line 108
    if-nez v0, :cond_c

    .line 109
    .line 110
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$b;->w:Landroid/widget/ListAdapter;

    .line 111
    .line 112
    if-eqz v0, :cond_d

    .line 113
    .line 114
    :cond_c
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertController$b;->b(Landroidx/appcompat/app/AlertController;)V

    .line 115
    .line 116
    .line 117
    :cond_d
    iget-object v2, p0, Landroidx/appcompat/app/AlertController$b;->z:Landroid/view/View;

    .line 118
    .line 119
    if-eqz v2, :cond_f

    .line 120
    .line 121
    iget-boolean v0, p0, Landroidx/appcompat/app/AlertController$b;->E:Z

    .line 122
    .line 123
    if-eqz v0, :cond_e

    .line 124
    .line 125
    iget v3, p0, Landroidx/appcompat/app/AlertController$b;->A:I

    .line 126
    .line 127
    iget v4, p0, Landroidx/appcompat/app/AlertController$b;->B:I

    .line 128
    .line 129
    iget v5, p0, Landroidx/appcompat/app/AlertController$b;->C:I

    .line 130
    .line 131
    iget v6, p0, Landroidx/appcompat/app/AlertController$b;->D:I

    .line 132
    .line 133
    move-object v1, p1

    .line 134
    invoke-virtual/range {v1 .. v6}, Landroidx/appcompat/app/AlertController;->s(Landroid/view/View;IIII)V

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_e
    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertController;->r(Landroid/view/View;)V

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_f
    iget v0, p0, Landroidx/appcompat/app/AlertController$b;->y:I

    .line 143
    .line 144
    if-eqz v0, :cond_10

    .line 145
    .line 146
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertController;->q(I)V

    .line 147
    .line 148
    .line 149
    :cond_10
    :goto_1
    return-void
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
.end method

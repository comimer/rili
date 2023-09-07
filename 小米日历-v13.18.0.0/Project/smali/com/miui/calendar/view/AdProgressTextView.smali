.class public Lcom/miui/calendar/view/AdProgressTextView;
.super Lcom/miui/calendar/view/z;
.source "AdProgressTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/calendar/view/AdProgressTextView$a;
    }
.end annotation


# instance fields
.field private p:Lcom/miui/calendar/ad/AdSchema;

.field private q:Landroid/content/Context;

.field private r:Lcom/miui/calendar/view/AdProgressTextView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/calendar/view/AdProgressTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/calendar/view/z;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/calendar/view/AdProgressTextView;->q:Landroid/content/Context;

    return-void
.end method

.method private a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/view/AdProgressTextView;->p:Lcom/miui/calendar/ad/AdSchema;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
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

.method private setProgrossButtonStatus(I)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    if-ne v0, p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/miui/calendar/view/z;->o:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lcom/miui/calendar/view/z;->j:I

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/miui/calendar/view/z;->n:Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 18
    .line 19
    .line 20
    iget p1, p0, Lcom/miui/calendar/view/z;->i:I

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
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
.end method


# virtual methods
.method public b(Lcom/miui/calendar/ad/AdSchema;Landroid/content/Context;)V
    .locals 10

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/view/AdProgressTextView;->p:Lcom/miui/calendar/ad/AdSchema;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/miui/calendar/view/AdProgressTextView;->a()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/16 p1, 0xcb

    .line 11
    .line 12
    const/16 p2, 0x2f

    .line 13
    .line 14
    const/16 v0, 0x21

    .line 15
    .line 16
    iget-object v1, p0, Lcom/miui/calendar/view/AdProgressTextView;->q:Landroid/content/Context;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/miui/calendar/view/AdProgressTextView;->p:Lcom/miui/calendar/ad/AdSchema;

    .line 19
    .line 20
    iget-object v2, v2, Lcom/miui/calendar/ad/AdSchema;->packageName:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v1, v2}, Lcom/android/calendar/common/Utils;->i0(Landroid/content/Context;Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const v2, 0x417451ec    # 15.27f

    .line 27
    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    const/4 v4, 0x2

    .line 31
    const/4 v5, 0x0

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    const/4 v0, 0x4

    .line 35
    invoke-direct {p0, v0}, Lcom/miui/calendar/view/AdProgressTextView;->setProgrossButtonStatus(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v5}, Lcom/miui/calendar/view/z;->setProgress(I)V

    .line 39
    .line 40
    .line 41
    iget-boolean v0, p0, Lcom/miui/calendar/view/z;->h:Z

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1, v5, p2, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 49
    .line 50
    .line 51
    :cond_1
    const p1, 0x7f120054

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 58
    .line 59
    .line 60
    goto/16 :goto_4

    .line 61
    .line 62
    :cond_2
    iget-object v1, p0, Lcom/miui/calendar/view/AdProgressTextView;->q:Landroid/content/Context;

    .line 63
    .line 64
    invoke-static {v1}, Lcom/miui/calendar/ad/c;->a(Landroid/content/Context;)Lcom/miui/calendar/ad/c;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iget-object v6, p0, Lcom/miui/calendar/view/AdProgressTextView;->p:Lcom/miui/calendar/ad/AdSchema;

    .line 69
    .line 70
    iget-object v6, v6, Lcom/miui/calendar/ad/AdSchema;->packageName:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v1, v6}, Lcom/miui/calendar/ad/c;->d(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    const/4 v6, -0x1

    .line 77
    if-eq v1, v6, :cond_10

    .line 78
    .line 79
    const/4 v7, 0x5

    .line 80
    const v8, 0x415d1eb8    # 13.82f

    .line 81
    .line 82
    .line 83
    if-eq v1, v7, :cond_9

    .line 84
    .line 85
    const/4 v9, 0x3

    .line 86
    if-eq v1, v3, :cond_7

    .line 87
    .line 88
    if-eq v1, v4, :cond_9

    .line 89
    .line 90
    if-eq v1, v9, :cond_7

    .line 91
    .line 92
    const/16 v0, -0x64

    .line 93
    .line 94
    invoke-direct {p0, v0}, Lcom/miui/calendar/view/AdProgressTextView;->setProgrossButtonStatus(I)V

    .line 95
    .line 96
    .line 97
    iget-boolean v0, p0, Lcom/miui/calendar/view/z;->h:Z

    .line 98
    .line 99
    if-eqz v0, :cond_3

    .line 100
    .line 101
    invoke-virtual {p0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, p1, v5, p2, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 105
    .line 106
    .line 107
    :cond_3
    iget-object p1, p0, Lcom/miui/calendar/view/z;->g:Ljava/lang/String;

    .line 108
    .line 109
    if-eqz p1, :cond_6

    .line 110
    .line 111
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_4

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_4
    iget-object p1, p0, Lcom/miui/calendar/view/AdProgressTextView;->p:Lcom/miui/calendar/ad/AdSchema;

    .line 119
    .line 120
    if-eqz p1, :cond_5

    .line 121
    .line 122
    iget-object p1, p1, Lcom/miui/calendar/ad/AdSchema;->buttonText:Ljava/lang/String;

    .line 123
    .line 124
    invoke-static {p1}, Lorg/apache/commons/lang3/e;->h(Ljava/lang/CharSequence;)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-eqz p1, :cond_5

    .line 129
    .line 130
    iget-object p1, p0, Lcom/miui/calendar/view/AdProgressTextView;->p:Lcom/miui/calendar/ad/AdSchema;

    .line 131
    .line 132
    iget-object p1, p1, Lcom/miui/calendar/ad/AdSchema;->buttonText:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_5
    iget-object p1, p0, Lcom/miui/calendar/view/z;->g:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_6
    :goto_0
    const p1, 0x7f120058

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 148
    .line 149
    .line 150
    :goto_1
    invoke-virtual {p0, v5}, Lcom/miui/calendar/view/z;->setProgress(I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 154
    .line 155
    .line 156
    goto/16 :goto_4

    .line 157
    .line 158
    :cond_7
    invoke-direct {p0, v9}, Lcom/miui/calendar/view/AdProgressTextView;->setProgrossButtonStatus(I)V

    .line 159
    .line 160
    .line 161
    iget-boolean p1, p0, Lcom/miui/calendar/view/z;->h:Z

    .line 162
    .line 163
    if-eqz p1, :cond_8

    .line 164
    .line 165
    invoke-virtual {p0, v4, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0, v5, v5, v0, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 169
    .line 170
    .line 171
    :cond_8
    const p1, 0x7f120052

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, v5}, Lcom/miui/calendar/view/z;->setProgress(I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 181
    .line 182
    .line 183
    goto/16 :goto_4

    .line 184
    .line 185
    :cond_9
    invoke-direct {p0, v7}, Lcom/miui/calendar/view/AdProgressTextView;->setProgrossButtonStatus(I)V

    .line 186
    .line 187
    .line 188
    iget-object v1, p0, Lcom/miui/calendar/view/AdProgressTextView;->q:Landroid/content/Context;

    .line 189
    .line 190
    invoke-static {v1}, Lcom/miui/calendar/ad/c;->a(Landroid/content/Context;)Lcom/miui/calendar/ad/c;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    iget-object v7, p0, Lcom/miui/calendar/view/AdProgressTextView;->p:Lcom/miui/calendar/ad/AdSchema;

    .line 195
    .line 196
    iget-object v7, v7, Lcom/miui/calendar/ad/AdSchema;->packageName:Ljava/lang/String;

    .line 197
    .line 198
    invoke-virtual {v1, v7}, Lcom/miui/calendar/ad/c;->b(Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-eq v1, v6, :cond_c

    .line 203
    .line 204
    iget-boolean v0, p0, Lcom/miui/calendar/view/z;->h:Z

    .line 205
    .line 206
    if-eqz v0, :cond_b

    .line 207
    .line 208
    invoke-virtual {p0, v4, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 209
    .line 210
    .line 211
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 212
    .line 213
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 214
    .line 215
    .line 216
    const/16 v0, 0x64

    .line 217
    .line 218
    if-ge v1, v0, :cond_a

    .line 219
    .line 220
    const/16 v0, 0x38

    .line 221
    .line 222
    invoke-virtual {p0, v5, v5, v0, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 223
    .line 224
    .line 225
    goto :goto_2

    .line 226
    :cond_a
    const/16 v0, 0x28

    .line 227
    .line 228
    invoke-virtual {p0, v5, v5, v0, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 229
    .line 230
    .line 231
    :cond_b
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    const-string v6, "%"

    .line 240
    .line 241
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p0, v1}, Lcom/miui/calendar/view/z;->setProgress(I)V

    .line 252
    .line 253
    .line 254
    goto :goto_3

    .line 255
    :cond_c
    iget-boolean v1, p0, Lcom/miui/calendar/view/z;->h:Z

    .line 256
    .line 257
    if-eqz v1, :cond_d

    .line 258
    .line 259
    invoke-virtual {p0, v4, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p0, v5, v5, v0, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 263
    .line 264
    .line 265
    :cond_d
    invoke-virtual {p0, v5}, Lcom/miui/calendar/view/z;->setProgress(I)V

    .line 266
    .line 267
    .line 268
    :goto_3
    iget-object v0, p0, Lcom/miui/calendar/view/AdProgressTextView;->q:Landroid/content/Context;

    .line 269
    .line 270
    invoke-static {v0}, Lcom/miui/calendar/ad/c;->a(Landroid/content/Context;)Lcom/miui/calendar/ad/c;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    iget-object v1, p0, Lcom/miui/calendar/view/AdProgressTextView;->p:Lcom/miui/calendar/ad/AdSchema;

    .line 275
    .line 276
    iget-object v1, v1, Lcom/miui/calendar/ad/AdSchema;->packageName:Ljava/lang/String;

    .line 277
    .line 278
    invoke-virtual {v0, v1}, Lcom/miui/calendar/ad/c;->c(Ljava/lang/String;)I

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    const/4 v1, -0x3

    .line 283
    if-ne v0, v1, :cond_f

    .line 284
    .line 285
    iget-boolean v0, p0, Lcom/miui/calendar/view/z;->h:Z

    .line 286
    .line 287
    if-eqz v0, :cond_e

    .line 288
    .line 289
    invoke-virtual {p0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p0, p1, v5, p2, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 293
    .line 294
    .line 295
    :cond_e
    const p1, 0x7f120055

    .line 296
    .line 297
    .line 298
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 299
    .line 300
    .line 301
    :cond_f
    invoke-virtual {p0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 302
    .line 303
    .line 304
    goto :goto_4

    .line 305
    :cond_10
    iget-boolean v0, p0, Lcom/miui/calendar/view/z;->h:Z

    .line 306
    .line 307
    if-eqz v0, :cond_11

    .line 308
    .line 309
    invoke-virtual {p0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {p0, p1, v5, p2, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 313
    .line 314
    .line 315
    :cond_11
    :goto_4
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

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/miui/calendar/view/AdProgressTextView;->a()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p1, Lcom/miui/calendar/ad/a$b;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/miui/calendar/view/AdProgressTextView;->p:Lcom/miui/calendar/ad/AdSchema;

    .line 11
    .line 12
    const-string v1, "BUTTON"

    .line 13
    .line 14
    invoke-direct {p1, v1, v0}, Lcom/miui/calendar/ad/a$b;-><init>(Ljava/lang/String;Lcom/miui/calendar/ad/AdSchema;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/miui/calendar/view/AdProgressTextView;->q:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v0, p1}, Lcom/miui/calendar/ad/a;->a(Landroid/content/Context;Lcom/miui/calendar/ad/a$b;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/miui/calendar/view/AdProgressTextView;->q:Landroid/content/Context;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/miui/calendar/view/AdProgressTextView;->p:Lcom/miui/calendar/ad/AdSchema;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/miui/calendar/ad/AdSchema;->packageName:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {p1, v0}, Lcom/android/calendar/common/Utils;->i0(Landroid/content/Context;Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const-string v0, "Cal:D:AdProgressTextView"

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v1, "onClick() open app:"

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/miui/calendar/view/AdProgressTextView;->p:Lcom/miui/calendar/ad/AdSchema;

    .line 47
    .line 48
    iget-object v1, v1, Lcom/miui/calendar/ad/AdSchema;->packageName:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {v0, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/miui/calendar/view/AdProgressTextView;->q:Landroid/content/Context;

    .line 61
    .line 62
    iget-object v0, p0, Lcom/miui/calendar/view/AdProgressTextView;->p:Lcom/miui/calendar/ad/AdSchema;

    .line 63
    .line 64
    invoke-static {p1, v0}, Lcom/miui/calendar/ad/AdSchema;->onDownloadAdItemClicked(Landroid/content/Context;Lcom/miui/calendar/ad/AdSchema;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/miui/calendar/view/AdProgressTextView;->r:Lcom/miui/calendar/view/AdProgressTextView$a;

    .line 68
    .line 69
    if-eqz p1, :cond_1

    .line 70
    .line 71
    iget-object v0, p0, Lcom/miui/calendar/view/AdProgressTextView;->p:Lcom/miui/calendar/ad/AdSchema;

    .line 72
    .line 73
    invoke-interface {p1, v0}, Lcom/miui/calendar/view/AdProgressTextView$a;->a(Lcom/miui/calendar/ad/AdSchema;)V

    .line 74
    .line 75
    .line 76
    :cond_1
    return-void

    .line 77
    :cond_2
    iget-object p1, p0, Lcom/miui/calendar/view/AdProgressTextView;->q:Landroid/content/Context;

    .line 78
    .line 79
    invoke-static {p1}, Lcom/miui/calendar/ad/c;->a(Landroid/content/Context;)Lcom/miui/calendar/ad/c;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iget-object v1, p0, Lcom/miui/calendar/view/AdProgressTextView;->p:Lcom/miui/calendar/ad/AdSchema;

    .line 84
    .line 85
    iget-object v1, v1, Lcom/miui/calendar/ad/AdSchema;->packageName:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {p1, v1}, Lcom/miui/calendar/ad/c;->d(Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    const/4 v1, 0x5

    .line 92
    if-ne p1, v1, :cond_7

    .line 93
    .line 94
    iget-object p1, p0, Lcom/miui/calendar/view/AdProgressTextView;->q:Landroid/content/Context;

    .line 95
    .line 96
    invoke-static {p1}, Lcom/miui/calendar/ad/c;->a(Landroid/content/Context;)Lcom/miui/calendar/ad/c;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    iget-object v1, p0, Lcom/miui/calendar/view/AdProgressTextView;->p:Lcom/miui/calendar/ad/AdSchema;

    .line 101
    .line 102
    iget-object v1, v1, Lcom/miui/calendar/ad/AdSchema;->packageName:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {p1, v1}, Lcom/miui/calendar/ad/c;->c(Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    const/4 v1, -0x3

    .line 109
    if-ne p1, v1, :cond_4

    .line 110
    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v1, "onClick() resume app:"

    .line 117
    .line 118
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget-object v1, p0, Lcom/miui/calendar/view/AdProgressTextView;->p:Lcom/miui/calendar/ad/AdSchema;

    .line 122
    .line 123
    iget-object v1, v1, Lcom/miui/calendar/ad/AdSchema;->packageName:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-static {v0, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget-object p1, p0, Lcom/miui/calendar/view/AdProgressTextView;->q:Landroid/content/Context;

    .line 136
    .line 137
    iget-object v1, p0, Lcom/miui/calendar/view/AdProgressTextView;->p:Lcom/miui/calendar/ad/AdSchema;

    .line 138
    .line 139
    invoke-static {p1, v1}, Lcom/miui/calendar/ad/AdSchema;->onResumeByFloat(Landroid/content/Context;Lcom/miui/calendar/ad/AdSchema;)Z

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-eqz p1, :cond_3

    .line 144
    .line 145
    iget-object p1, p0, Lcom/miui/calendar/view/AdProgressTextView;->r:Lcom/miui/calendar/view/AdProgressTextView$a;

    .line 146
    .line 147
    if-eqz p1, :cond_6

    .line 148
    .line 149
    iget-object v0, p0, Lcom/miui/calendar/view/AdProgressTextView;->p:Lcom/miui/calendar/ad/AdSchema;

    .line 150
    .line 151
    invoke-interface {p1, v0}, Lcom/miui/calendar/view/AdProgressTextView$a;->b(Lcom/miui/calendar/ad/AdSchema;)V

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_3
    const-string p1, "onClick() resume app error"

    .line 156
    .line 157
    invoke-static {v0, p1}, Lcom/miui/calendar/util/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    const-string v1, "onClick() pause app:"

    .line 167
    .line 168
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    iget-object v1, p0, Lcom/miui/calendar/view/AdProgressTextView;->p:Lcom/miui/calendar/ad/AdSchema;

    .line 172
    .line 173
    iget-object v1, v1, Lcom/miui/calendar/ad/AdSchema;->packageName:Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-static {v0, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    iget-object p1, p0, Lcom/miui/calendar/view/AdProgressTextView;->q:Landroid/content/Context;

    .line 186
    .line 187
    iget-object v1, p0, Lcom/miui/calendar/view/AdProgressTextView;->p:Lcom/miui/calendar/ad/AdSchema;

    .line 188
    .line 189
    invoke-static {p1, v1}, Lcom/miui/calendar/ad/AdSchema;->onPauseByFloat(Landroid/content/Context;Lcom/miui/calendar/ad/AdSchema;)Z

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    if-eqz p1, :cond_5

    .line 194
    .line 195
    iget-object p1, p0, Lcom/miui/calendar/view/AdProgressTextView;->r:Lcom/miui/calendar/view/AdProgressTextView$a;

    .line 196
    .line 197
    if-eqz p1, :cond_6

    .line 198
    .line 199
    iget-object v0, p0, Lcom/miui/calendar/view/AdProgressTextView;->p:Lcom/miui/calendar/ad/AdSchema;

    .line 200
    .line 201
    invoke-interface {p1, v0}, Lcom/miui/calendar/view/AdProgressTextView$a;->d(Lcom/miui/calendar/ad/AdSchema;)V

    .line 202
    .line 203
    .line 204
    goto :goto_0

    .line 205
    :cond_5
    const-string p1, "onClick() pause app error"

    .line 206
    .line 207
    invoke-static {v0, p1}, Lcom/miui/calendar/util/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    :cond_6
    :goto_0
    return-void

    .line 211
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .line 215
    .line 216
    const-string v1, "onClick() download app:"

    .line 217
    .line 218
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    iget-object v1, p0, Lcom/miui/calendar/view/AdProgressTextView;->p:Lcom/miui/calendar/ad/AdSchema;

    .line 222
    .line 223
    iget-object v1, v1, Lcom/miui/calendar/ad/AdSchema;->packageName:Ljava/lang/String;

    .line 224
    .line 225
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-static {v0, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    iget-object p1, p0, Lcom/miui/calendar/view/AdProgressTextView;->q:Landroid/content/Context;

    .line 236
    .line 237
    iget-object v1, p0, Lcom/miui/calendar/view/AdProgressTextView;->p:Lcom/miui/calendar/ad/AdSchema;

    .line 238
    .line 239
    invoke-static {p1, v1}, Lcom/miui/calendar/ad/AdSchema;->onDownloadByFloat(Landroid/content/Context;Lcom/miui/calendar/ad/AdSchema;)Z

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    if-eqz p1, :cond_8

    .line 244
    .line 245
    iget-object p1, p0, Lcom/miui/calendar/view/AdProgressTextView;->r:Lcom/miui/calendar/view/AdProgressTextView$a;

    .line 246
    .line 247
    if-eqz p1, :cond_9

    .line 248
    .line 249
    iget-object v0, p0, Lcom/miui/calendar/view/AdProgressTextView;->p:Lcom/miui/calendar/ad/AdSchema;

    .line 250
    .line 251
    invoke-interface {p1, v0}, Lcom/miui/calendar/view/AdProgressTextView$a;->c(Lcom/miui/calendar/ad/AdSchema;)V

    .line 252
    .line 253
    .line 254
    goto :goto_1

    .line 255
    :cond_8
    const-string p1, "onClick() download app error"

    .line 256
    .line 257
    invoke-static {v0, p1}, Lcom/miui/calendar/util/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    :cond_9
    :goto_1
    return-void
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

.method public setListener(Lcom/miui/calendar/view/AdProgressTextView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/view/AdProgressTextView;->r:Lcom/miui/calendar/view/AdProgressTextView$a;

    .line 2
    .line 3
    return-void
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
.end method

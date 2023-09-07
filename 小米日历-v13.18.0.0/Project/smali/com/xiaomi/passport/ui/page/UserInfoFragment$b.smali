.class Lcom/xiaomi/passport/ui/page/UserInfoFragment$b;
.super Ljava/lang/Object;
.source "UserInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/ui/page/UserInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/passport/ui/page/UserInfoFragment;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/page/UserInfoFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/passport/ui/page/UserInfoFragment$b;->a:Lcom/xiaomi/passport/ui/page/UserInfoFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
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


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/passport/ui/page/UserInfoFragment$b;->a:Lcom/xiaomi/passport/ui/page/UserInfoFragment;

    .line 3
    .line 4
    invoke-static {v1}, Lcom/xiaomi/passport/ui/page/UserInfoFragment;->n(Lcom/xiaomi/passport/ui/page/UserInfoFragment;)Lcom/xiaomi/passport/ui/settings/AccountPreferenceView;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-ne p1, v1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/xiaomi/passport/ui/page/UserInfoFragment$b;->a:Lcom/xiaomi/passport/ui/page/UserInfoFragment;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/xiaomi/passport/ui/page/UserInfoFragment;->u(Lcom/xiaomi/passport/ui/page/UserInfoFragment;)V

    .line 13
    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/passport/ui/page/UserInfoFragment$b;->a:Lcom/xiaomi/passport/ui/page/UserInfoFragment;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/xiaomi/passport/ui/page/UserInfoFragment;->v(Lcom/xiaomi/passport/ui/page/UserInfoFragment;)Lcom/xiaomi/passport/ui/settings/AccountPreferenceView;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-ne p1, v1, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lcom/xiaomi/passport/ui/page/UserInfoFragment$b;->a:Lcom/xiaomi/passport/ui/page/UserInfoFragment;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/xiaomi/passport/ui/page/UserInfoFragment;->w(Lcom/xiaomi/passport/ui/page/UserInfoFragment;)V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/passport/ui/page/UserInfoFragment$b;->a:Lcom/xiaomi/passport/ui/page/UserInfoFragment;

    .line 33
    .line 34
    invoke-static {v1}, Lcom/xiaomi/passport/ui/page/UserInfoFragment;->x(Lcom/xiaomi/passport/ui/page/UserInfoFragment;)Lcom/xiaomi/passport/ui/settings/AccountPreferenceView;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-ne p1, v1, :cond_2

    .line 39
    .line 40
    new-instance p1, La7/b;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/xiaomi/passport/ui/page/UserInfoFragment$b;->a:Lcom/xiaomi/passport/ui/page/UserInfoFragment;

    .line 43
    .line 44
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-direct {p1, v1}, La7/b;-><init>(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/xiaomi/passport/ui/page/UserInfoFragment$b;->a:Lcom/xiaomi/passport/ui/page/UserInfoFragment;

    .line 52
    .line 53
    sget v2, Ln5/g;->W0:I

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {p1, v1}, La7/b;->l(Ljava/lang/String;)La7/b;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const/4 v1, 0x2

    .line 64
    new-array v1, v1, [Ljava/lang/String;

    .line 65
    .line 66
    const/4 v2, 0x0

    .line 67
    iget-object v3, p0, Lcom/xiaomi/passport/ui/page/UserInfoFragment$b;->a:Lcom/xiaomi/passport/ui/page/UserInfoFragment;

    .line 68
    .line 69
    sget v4, Ln5/g;->q:I

    .line 70
    .line 71
    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    aput-object v3, v1, v2

    .line 76
    .line 77
    iget-object v2, p0, Lcom/xiaomi/passport/ui/page/UserInfoFragment$b;->a:Lcom/xiaomi/passport/ui/page/UserInfoFragment;

    .line 78
    .line 79
    sget v3, Ln5/g;->p:I

    .line 80
    .line 81
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    aput-object v2, v1, v0

    .line 86
    .line 87
    const/4 v2, -0x1

    .line 88
    iget-object v3, p0, Lcom/xiaomi/passport/ui/page/UserInfoFragment$b;->a:Lcom/xiaomi/passport/ui/page/UserInfoFragment;

    .line 89
    .line 90
    invoke-static {v3}, Lcom/xiaomi/passport/ui/page/UserInfoFragment;->y(Lcom/xiaomi/passport/ui/page/UserInfoFragment;)Landroid/content/DialogInterface$OnClickListener;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {p1, v1, v2, v3}, La7/b;->e([Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)La7/b;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p1}, La7/b;->show()V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/passport/ui/page/UserInfoFragment$b;->a:Lcom/xiaomi/passport/ui/page/UserInfoFragment;

    .line 103
    .line 104
    invoke-static {v1}, Lcom/xiaomi/passport/ui/page/UserInfoFragment;->z(Lcom/xiaomi/passport/ui/page/UserInfoFragment;)Lcom/xiaomi/passport/ui/settings/AccountPreferenceView;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    if-ne p1, v1, :cond_3

    .line 109
    .line 110
    iget-object p1, p0, Lcom/xiaomi/passport/ui/page/UserInfoFragment$b;->a:Lcom/xiaomi/passport/ui/page/UserInfoFragment;

    .line 111
    .line 112
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-static {v1}, Lz6/e;->g(Landroid/content/Context;)Landroid/content/Intent;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_3
    iget-object v1, p0, Lcom/xiaomi/passport/ui/page/UserInfoFragment$b;->a:Lcom/xiaomi/passport/ui/page/UserInfoFragment;

    .line 125
    .line 126
    invoke-static {v1}, Lcom/xiaomi/passport/ui/page/UserInfoFragment;->A(Lcom/xiaomi/passport/ui/page/UserInfoFragment;)Lcom/xiaomi/passport/ui/settings/AccountPreferenceView;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    if-ne p1, v1, :cond_4

    .line 131
    .line 132
    iget-object p1, p0, Lcom/xiaomi/passport/ui/page/UserInfoFragment$b;->a:Lcom/xiaomi/passport/ui/page/UserInfoFragment;

    .line 133
    .line 134
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-static {v1}, Lz6/e;->f(Landroid/content/Context;)Landroid/content/Intent;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_4
    iget-object v1, p0, Lcom/xiaomi/passport/ui/page/UserInfoFragment$b;->a:Lcom/xiaomi/passport/ui/page/UserInfoFragment;

    .line 147
    .line 148
    invoke-static {v1}, Lcom/xiaomi/passport/ui/page/UserInfoFragment;->B(Lcom/xiaomi/passport/ui/page/UserInfoFragment;)Lcom/xiaomi/passport/ui/settings/AccountPreferenceView;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    if-ne p1, v1, :cond_5

    .line 153
    .line 154
    iget-object p1, p0, Lcom/xiaomi/passport/ui/page/UserInfoFragment$b;->a:Lcom/xiaomi/passport/ui/page/UserInfoFragment;

    .line 155
    .line 156
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-static {v1}, Lz6/e;->h(Landroid/content/Context;)Landroid/content/Intent;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :catch_0
    move-exception p1

    .line 169
    const-string v1, "UserInfoFragment"

    .line 170
    .line 171
    const-string v2, "activity not found"

    .line 172
    .line 173
    invoke-static {v1, v2, p1}, Lcom/xiaomi/accountsdk/utils/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    .line 175
    .line 176
    iget-object p1, p0, Lcom/xiaomi/passport/ui/page/UserInfoFragment$b;->a:Lcom/xiaomi/passport/ui/page/UserInfoFragment;

    .line 177
    .line 178
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    sget v1, Ln5/g;->u:I

    .line 183
    .line 184
    invoke-static {p1, v1, v0}, Lz6/a;->b(Landroid/content/Context;II)V

    .line 185
    .line 186
    .line 187
    :cond_5
    :goto_0
    return-void
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

.class final Lcom/miui/calendar/sync/ics/a$c;
.super Ljava/lang/Object;
.source "AbsImportActivity.kt"

# interfaces
.implements Landroidx/lifecycle/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/calendar/sync/ics/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/v<",
        "Lcom/android/calendar/syncer/model/ResourceInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0082\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B)\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\r\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0014\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R$\u0010\u000c\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010\u0007\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\"\u0010\u0013\u001a\u00020\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R$\u0010\u001a\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/miui/calendar/sync/ics/a$c;",
        "Landroidx/lifecycle/v;",
        "Lcom/android/calendar/syncer/model/ResourceInfo;",
        "it",
        "Lkotlin/u;",
        "a",
        "Landroid/accounts/Account;",
        "Landroid/accounts/Account;",
        "getAccount",
        "()Landroid/accounts/Account;",
        "b",
        "(Landroid/accounts/Account;)V",
        "account",
        "",
        "Z",
        "getCreateAccount",
        "()Z",
        "c",
        "(Z)V",
        "createAccount",
        "Lcom/miui/calendar/sync/ics/a$b;",
        "Lcom/miui/calendar/sync/ics/a$b;",
        "getImportListener",
        "()Lcom/miui/calendar/sync/ics/a$b;",
        "e",
        "(Lcom/miui/calendar/sync/ics/a$b;)V",
        "importListener",
        "<init>",
        "(Lcom/miui/calendar/sync/ics/a;Landroid/accounts/Account;ZLcom/miui/calendar/sync/ics/a$b;)V",
        "app_chinaNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private a:Landroid/accounts/Account;

.field private b:Z

.field private c:Lcom/miui/calendar/sync/ics/a$b;

.field final synthetic d:Lcom/miui/calendar/sync/ics/a;


# direct methods
.method public constructor <init>(Lcom/miui/calendar/sync/ics/a;Landroid/accounts/Account;ZLcom/miui/calendar/sync/ics/a$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Z",
            "Lcom/miui/calendar/sync/ics/a$b;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/sync/ics/a$c;->d:Lcom/miui/calendar/sync/ics/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/calendar/sync/ics/a$c;->a:Landroid/accounts/Account;

    iput-boolean p3, p0, Lcom/miui/calendar/sync/ics/a$c;->b:Z

    iput-object p4, p0, Lcom/miui/calendar/sync/ics/a$c;->c:Lcom/miui/calendar/sync/ics/a$b;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/calendar/sync/ics/a;Landroid/accounts/Account;ZLcom/miui/calendar/sync/ics/a$b;ILkotlin/jvm/internal/o;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const/4 p3, 0x1

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    move-object p4, v0

    .line 2
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/calendar/sync/ics/a$c;-><init>(Lcom/miui/calendar/sync/ics/a;Landroid/accounts/Account;ZLcom/miui/calendar/sync/ics/a$b;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/calendar/syncer/model/ResourceInfo;)V
    .locals 4

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/miui/calendar/sync/ics/a$c;->a:Landroid/accounts/Account;

    .line 7
    .line 8
    if-eqz v0, :cond_7

    .line 9
    .line 10
    iget-object v0, p0, Lcom/miui/calendar/sync/ics/a$c;->c:Lcom/miui/calendar/sync/ics/a$b;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_2

    .line 15
    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/android/calendar/syncer/model/ResourceInfo;->getException()Ljava/lang/Throwable;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move-object v0, v1

    .line 29
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v3, "importIcsFileToAccount errorMessage:"

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-string v3, "CalSync:D:AbsImportFragment"

    .line 47
    .line 48
    invoke-static {v3, v2}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    if-nez v0, :cond_6

    .line 52
    .line 53
    iget-object v0, p0, Lcom/miui/calendar/sync/ics/a$c;->d:Lcom/miui/calendar/sync/ics/a;

    .line 54
    .line 55
    invoke-static {v0}, Lcom/miui/calendar/sync/ics/a;->Z(Lcom/miui/calendar/sync/ics/a;)Lcom/android/calendar/syncer/model/TitleColorModel;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const-string v2, "titleColorModel"

    .line 60
    .line 61
    if-nez v0, :cond_2

    .line 62
    .line 63
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    move-object v0, v1

    .line 67
    :cond_2
    invoke-virtual {v0}, Lcom/android/calendar/syncer/model/TitleColorModel;->getUrl()Landroidx/lifecycle/u;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p1}, Lcom/android/calendar/syncer/model/ResourceInfo;->getUrl()Landroid/net/Uri;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v0, v3}, Landroidx/lifecycle/u;->n(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/miui/calendar/sync/ics/a$c;->d:Lcom/miui/calendar/sync/ics/a;

    .line 83
    .line 84
    invoke-static {v0}, Lcom/miui/calendar/sync/ics/a;->Z(Lcom/miui/calendar/sync/ics/a;)Lcom/android/calendar/syncer/model/TitleColorModel;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    if-nez v0, :cond_3

    .line 89
    .line 90
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    move-object v0, v1

    .line 94
    :cond_3
    invoke-virtual {v0}, Lcom/android/calendar/syncer/model/TitleColorModel;->getTitle()Landroidx/lifecycle/u;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {p1}, Lcom/android/calendar/syncer/model/ResourceInfo;->getCalendarName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {v0, p1}, Landroidx/lifecycle/u;->n(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/miui/calendar/sync/ics/a$c;->d:Lcom/miui/calendar/sync/ics/a;

    .line 106
    .line 107
    invoke-static {p1}, Lcom/miui/calendar/sync/ics/a;->Z(Lcom/miui/calendar/sync/ics/a;)Lcom/android/calendar/syncer/model/TitleColorModel;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    if-nez p1, :cond_4

    .line 112
    .line 113
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_4
    move-object v1, p1

    .line 118
    :goto_1
    invoke-virtual {v1}, Lcom/android/calendar/syncer/model/TitleColorModel;->getColor()Landroidx/lifecycle/u;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iget-object v0, p0, Lcom/miui/calendar/sync/ics/a$c;->d:Lcom/miui/calendar/sync/ics/a;

    .line 123
    .line 124
    const v1, 0x7f0600c6

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {p1, v0}, Landroidx/lifecycle/u;->n(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    iget-boolean p1, p0, Lcom/miui/calendar/sync/ics/a$c;->b:Z

    .line 139
    .line 140
    if-eqz p1, :cond_5

    .line 141
    .line 142
    iget-object p1, p0, Lcom/miui/calendar/sync/ics/a$c;->d:Lcom/miui/calendar/sync/ics/a;

    .line 143
    .line 144
    iget-object v0, p0, Lcom/miui/calendar/sync/ics/a$c;->a:Landroid/accounts/Account;

    .line 145
    .line 146
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    invoke-static {p1, v0}, Lcom/miui/calendar/sync/ics/a;->Y(Lcom/miui/calendar/sync/ics/a;Landroid/accounts/Account;)Z

    .line 150
    .line 151
    .line 152
    :cond_5
    sget-object p1, Lcom/android/calendar/syncer/SyncWorker;->k:Lcom/android/calendar/syncer/SyncWorker$a;

    .line 153
    .line 154
    iget-object v0, p0, Lcom/miui/calendar/sync/ics/a$c;->a:Landroid/accounts/Account;

    .line 155
    .line 156
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v0}, Lcom/android/calendar/syncer/SyncWorker$a;->b(Landroid/accounts/Account;)Ljava/util/UUID;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {p1, v0}, Lcom/android/calendar/syncer/SyncWorker$a;->a(Ljava/util/UUID;)Landroidx/lifecycle/LiveData;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    iget-object v1, p0, Lcom/miui/calendar/sync/ics/a$c;->d:Lcom/miui/calendar/sync/ics/a;

    .line 168
    .line 169
    new-instance v2, Lcom/miui/calendar/sync/ics/a$d;

    .line 170
    .line 171
    iget-object v3, p0, Lcom/miui/calendar/sync/ics/a$c;->c:Lcom/miui/calendar/sync/ics/a$b;

    .line 172
    .line 173
    invoke-static {v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    invoke-direct {v2, v1, v0, v3}, Lcom/miui/calendar/sync/ics/a$d;-><init>(Landroid/content/Context;Ljava/util/UUID;Lcom/miui/calendar/sync/ics/a$b;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v1, v2}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/v;)V

    .line 180
    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_6
    iget-object p1, p0, Lcom/miui/calendar/sync/ics/a$c;->d:Lcom/miui/calendar/sync/ics/a;

    .line 184
    .line 185
    const v0, 0x7f120659

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-static {v3, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    iget-object p1, p0, Lcom/miui/calendar/sync/ics/a$c;->c:Lcom/miui/calendar/sync/ics/a$b;

    .line 196
    .line 197
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    invoke-interface {p1}, Lcom/miui/calendar/sync/ics/a$b;->b()V

    .line 201
    .line 202
    .line 203
    :cond_7
    :goto_2
    return-void
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

.method public final b(Landroid/accounts/Account;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/sync/ics/a$c;->a:Landroid/accounts/Account;

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

.method public final c(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/calendar/sync/ics/a$c;->b:Z

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

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/calendar/syncer/model/ResourceInfo;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/miui/calendar/sync/ics/a$c;->a(Lcom/android/calendar/syncer/model/ResourceInfo;)V

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

.method public final e(Lcom/miui/calendar/sync/ics/a$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/sync/ics/a$c;->c:Lcom/miui/calendar/sync/ics/a$b;

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

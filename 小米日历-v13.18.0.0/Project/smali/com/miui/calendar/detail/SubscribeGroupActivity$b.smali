.class final Lcom/miui/calendar/detail/SubscribeGroupActivity$b;
.super Ljava/lang/Object;
.source "SubscribeGroupActivity.kt"

# interfaces
.implements Lk3/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/calendar/detail/SubscribeGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0002\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\'\u001a\u00020 \u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u0013\u001a\u00020\u000f\u0012\u0006\u0010\u0017\u001a\u00020\u0014\u0012\u0006\u0010\u001e\u001a\u00020\u0019\u00a2\u0006\u0004\u0008(\u0010)J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0012\u0010\n\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016R\u0017\u0010\u000e\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR\u0017\u0010\u0013\u001a\u00020\u000f8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u0017\u0010\u0017\u001a\u00020\u00148\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\u0017\u0010\u001e\u001a\u00020\u00198\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR%\u0010&\u001a\u0010\u0012\u000c\u0012\n !*\u0004\u0018\u00010 0 0\u001f8\u0006\u00a2\u0006\u000c\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%\u00a8\u0006*"
    }
    d2 = {
        "Lcom/miui/calendar/detail/SubscribeGroupActivity$b;",
        "Lk3/d$b;",
        "Landroid/widget/TextView;",
        "button",
        "",
        "subscribeStatus",
        "Lkotlin/u;",
        "b",
        "Lcom/miui/calendar/account/mi/MiAccountSchema;",
        "accountSchema",
        "a",
        "Landroid/widget/TextView;",
        "getSubscribeButton",
        "()Landroid/widget/TextView;",
        "subscribeButton",
        "",
        "J",
        "getCardId",
        "()J",
        "cardId",
        "",
        "c",
        "Z",
        "isSubscribe",
        "()Z",
        "",
        "d",
        "Ljava/lang/String;",
        "getTitle",
        "()Ljava/lang/String;",
        "title",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/miui/calendar/detail/SubscribeGroupActivity;",
        "kotlin.jvm.PlatformType",
        "e",
        "Ljava/lang/ref/WeakReference;",
        "getWeakReferenceContext",
        "()Ljava/lang/ref/WeakReference;",
        "weakReferenceContext",
        "context",
        "<init>",
        "(Lcom/miui/calendar/detail/SubscribeGroupActivity;Landroid/widget/TextView;JZLjava/lang/String;)V",
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
.field private final a:Landroid/widget/TextView;

.field private final b:J

.field private final c:Z

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/calendar/detail/SubscribeGroupActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/calendar/detail/SubscribeGroupActivity;Landroid/widget/TextView;JZLjava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "subscribeButton"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "title"

    .line 12
    .line 13
    invoke-static {p6, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lcom/miui/calendar/detail/SubscribeGroupActivity$b;->a:Landroid/widget/TextView;

    .line 20
    .line 21
    iput-wide p3, p0, Lcom/miui/calendar/detail/SubscribeGroupActivity$b;->b:J

    .line 22
    .line 23
    iput-boolean p5, p0, Lcom/miui/calendar/detail/SubscribeGroupActivity$b;->c:Z

    .line 24
    .line 25
    iput-object p6, p0, Lcom/miui/calendar/detail/SubscribeGroupActivity$b;->d:Ljava/lang/String;

    .line 26
    .line 27
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 28
    .line 29
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iput-object p2, p0, Lcom/miui/calendar/detail/SubscribeGroupActivity$b;->e:Ljava/lang/ref/WeakReference;

    .line 33
    .line 34
    return-void
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
.end method

.method private final b(Landroid/widget/TextView;I)V
    .locals 1

    .line 1
    if-eqz p2, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p2, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p2, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p2, v0, :cond_0

    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const p2, 0x7f1206b8

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const p2, 0x7f1206ba

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    const p2, 0x7f1205cf

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_3
    const p2, 0x7f1205ce

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 30
    .line 31
    .line 32
    return-void
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
.end method


# virtual methods
.method public a(Lcom/miui/calendar/account/mi/MiAccountSchema;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/detail/SubscribeGroupActivity$b;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/miui/calendar/detail/SubscribeGroupActivity;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    if-nez p1, :cond_1

    .line 13
    .line 14
    invoke-static {v0}, Lk3/d;->e(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    iget-object p1, p1, Lcom/miui/calendar/account/mi/MiAccountSchema;->authToken:Ljava/lang/String;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    if-nez p1, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const v2, 0x7f1205d1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v2, "c.resources.getString(R.\u2026scribe_failed_by_account)"

    .line 35
    .line 36
    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 v2, 0x4

    .line 40
    const/4 v3, 0x0

    .line 41
    invoke-static {v0, p1, v1, v2, v3}, Lcom/miui/calendar/util/t0;->e(Landroid/content/Context;Ljava/lang/String;IILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lk3/d;->e(Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    iget-object p1, p0, Lcom/miui/calendar/detail/SubscribeGroupActivity$b;->a:Landroid/widget/TextView;

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/miui/calendar/detail/SubscribeGroupActivity$b;->a:Landroid/widget/TextView;

    .line 54
    .line 55
    iget-boolean v2, p0, Lcom/miui/calendar/detail/SubscribeGroupActivity$b;->c:Z

    .line 56
    .line 57
    const/4 v3, 0x2

    .line 58
    const/4 v4, 0x1

    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    move v2, v4

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    move v2, v3

    .line 64
    :goto_0
    invoke-direct {p0, p1, v2}, Lcom/miui/calendar/detail/SubscribeGroupActivity$b;->b(Landroid/widget/TextView;I)V

    .line 65
    .line 66
    .line 67
    iget-boolean p1, p0, Lcom/miui/calendar/detail/SubscribeGroupActivity$b;->c:Z

    .line 68
    .line 69
    if-eqz p1, :cond_4

    .line 70
    .line 71
    const p1, 0x7f1205cc

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    goto :goto_1

    .line 79
    :cond_4
    const p1, 0x7f1206b9

    .line 80
    .line 81
    .line 82
    new-array v2, v4, [Ljava/lang/Object;

    .line 83
    .line 84
    iget-object v5, p0, Lcom/miui/calendar/detail/SubscribeGroupActivity$b;->d:Ljava/lang/String;

    .line 85
    .line 86
    aput-object v5, v2, v1

    .line 87
    .line 88
    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    :goto_1
    const-string v2, "if (isSubscribe) c.getSt\u2026ribe_card_success, title)"

    .line 93
    .line 94
    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-wide v5, p0, Lcom/miui/calendar/detail/SubscribeGroupActivity$b;->b:J

    .line 98
    .line 99
    iget-boolean v2, p0, Lcom/miui/calendar/detail/SubscribeGroupActivity$b;->c:Z

    .line 100
    .line 101
    xor-int/2addr v2, v4

    .line 102
    invoke-static {v0, v5, v6, v2, p1}, Lcom/miui/calendar/detail/UpdateUserCardService;->f(Landroid/content/Context;JILjava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-boolean p1, p0, Lcom/miui/calendar/detail/SubscribeGroupActivity$b;->c:Z

    .line 106
    .line 107
    if-eqz p1, :cond_5

    .line 108
    .line 109
    const-string p1, "subscribe_channel_subscribe_button_clicked"

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_5
    const-string p1, "card_manager_unsubscribe_clicked"

    .line 113
    .line 114
    :goto_2
    new-array v0, v3, [Ljava/lang/String;

    .line 115
    .line 116
    const-string v2, "title"

    .line 117
    .line 118
    aput-object v2, v0, v1

    .line 119
    .line 120
    iget-object v1, p0, Lcom/miui/calendar/detail/SubscribeGroupActivity$b;->d:Ljava/lang/String;

    .line 121
    .line 122
    aput-object v1, v0, v4

    .line 123
    .line 124
    invoke-static {p1, v0}, Lcom/miui/calendar/util/g0;->f(Ljava/lang/String;[Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    return-void
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
.end method

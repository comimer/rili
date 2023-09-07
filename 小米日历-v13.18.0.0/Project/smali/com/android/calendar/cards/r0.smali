.class public final Lcom/android/calendar/cards/r0;
.super Lcom/android/calendar/cards/m1;
.source "HistoryCard.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/cards/r0$b;,
        Lcom/android/calendar/cards/r0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/cards/m1<",
        "Lcom/android/calendar/cards/r0$b;",
        "Lcom/miui/calendar/card/schema/CustomCardSchema;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u001a2\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001:\u0002\u001b\u000eB\u0011\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0012\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014J\u001c\u0010\n\u001a\u00020\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00022\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0014J\u0008\u0010\u000c\u001a\u00020\u000bH\u0014J\u0008\u0010\r\u001a\u00020\u000bH\u0014R\u0016\u0010\u0010\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u0011R\u0016\u0010\u0015\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u0014\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/android/calendar/cards/r0;",
        "Lcom/android/calendar/cards/m1;",
        "Lcom/android/calendar/cards/r0$b;",
        "Lcom/miui/calendar/card/schema/CustomCardSchema;",
        "value",
        "Lkotlin/u;",
        "f",
        "holder",
        "Landroid/content/Context;",
        "context",
        "g",
        "",
        "d",
        "c",
        "b",
        "I",
        "mShowPosition",
        "Lcom/miui/calendar/card/schema/CustomCardSchema;",
        "mExtraSchema",
        "",
        "Ljava/lang/String;",
        "mDetailUrl",
        "Ljava/util/Calendar;",
        "date",
        "<init>",
        "(Ljava/util/Calendar;)V",
        "e",
        "a",
        "app_chinaNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final e:Lcom/android/calendar/cards/r0$a;


# instance fields
.field private b:I

.field private c:Lcom/miui/calendar/card/schema/CustomCardSchema;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/calendar/cards/r0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/calendar/cards/r0$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcom/android/calendar/cards/r0;->e:Lcom/android/calendar/cards/r0$a;

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/calendar/cards/m1;-><init>(Ljava/util/Calendar;)V

    .line 2
    .line 3
    .line 4
    const-string p1, "http://staging-cnbj2-fds.api.xiaomi.net/calendar-history-today/index.html"

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/calendar/cards/r0;->d:Ljava/lang/String;

    .line 7
    .line 8
    return-void
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

.method public static synthetic e(Ljava/util/List;Lcom/android/calendar/cards/r0;Landroid/content/Context;Lcom/android/calendar/cards/r0$b;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/calendar/cards/r0;->h(Ljava/util/List;Lcom/android/calendar/cards/r0;Landroid/content/Context;Lcom/android/calendar/cards/r0$b;Landroid/view/View;)V

    return-void
.end method

.method private static final h(Ljava/util/List;Lcom/android/calendar/cards/r0;Landroid/content/Context;Lcom/android/calendar/cards/r0$b;Landroid/view/View;)V
    .locals 8

    .line 1
    const-string v0, "false"

    .line 2
    .line 3
    const-string v1, "this$0"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p0, :cond_2

    .line 9
    .line 10
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-lez v1, :cond_2

    .line 15
    .line 16
    iget v1, p1, Lcom/android/calendar/cards/r0;->b:I

    .line 17
    .line 18
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Lcom/miui/calendar/card/schema/CustomCardItemSchema;

    .line 23
    .line 24
    invoke-static {p2}, Lcom/miui/calendar/util/m;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    const-string v1, "getOAID(context)"

    .line 29
    .line 30
    invoke-static {p2, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p1, Lcom/android/calendar/cards/m1;->a:Ljava/util/Calendar;

    .line 34
    .line 35
    const/4 v2, 0x2

    .line 36
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    const/4 v4, 0x1

    .line 41
    add-int/2addr v3, v4

    .line 42
    const/4 v5, 0x5

    .line 43
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    new-instance v5, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v6, "0"

    .line 53
    .line 54
    const/16 v7, 0xa

    .line 55
    .line 56
    if-ge v3, v7, :cond_0

    .line 57
    .line 58
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    :cond_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    if-ge v1, v7, :cond_1

    .line 65
    .line 66
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    :cond_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 73
    .line 74
    .line 75
    move-result-object p4

    .line 76
    const v6, 0x7f12063e

    .line 77
    .line 78
    .line 79
    new-array v2, v2, [Ljava/lang/Object;

    .line 80
    .line 81
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    const/4 v7, 0x0

    .line 86
    aput-object v3, v2, v7

    .line 87
    .line 88
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    aput-object v1, v2, v4

    .line 93
    .line 94
    invoke-virtual {p4, v6, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p4

    .line 98
    const-string v1, "view.resources.getString\u2026String(), day.toString())"

    .line 99
    .line 100
    invoke-static {p4, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    new-instance v1, Lcom/miui/calendar/web/PageData$StyleData;

    .line 104
    .line 105
    invoke-direct {v1}, Lcom/miui/calendar/web/PageData$StyleData;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v2, "#E5E5E5"

    .line 109
    .line 110
    iput-object v2, v1, Lcom/miui/calendar/web/PageData$StyleData;->backgroundColor:Ljava/lang/String;

    .line 111
    .line 112
    iput-boolean v7, v1, Lcom/miui/calendar/web/PageData$StyleData;->hideActionBar:Z

    .line 113
    .line 114
    iput-boolean v7, v1, Lcom/miui/calendar/web/PageData$StyleData;->darkMode:Z

    .line 115
    .line 116
    iput-boolean v4, v1, Lcom/miui/calendar/web/PageData$StyleData;->immersion:Z

    .line 117
    .line 118
    const/16 v2, 0xc8

    .line 119
    .line 120
    iput v2, v1, Lcom/miui/calendar/web/PageData$StyleData;->immersionAlphaStart:I

    .line 121
    .line 122
    const/16 v2, 0x12c

    .line 123
    .line 124
    iput v2, v1, Lcom/miui/calendar/web/PageData$StyleData;->immersionAlphaEnd:I

    .line 125
    .line 126
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-static {v2}, Lcom/miui/calendar/util/y;->i(Landroid/content/Context;)Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_2

    .line 135
    .line 136
    :try_start_0
    iget-object v2, p1, Lcom/android/calendar/cards/r0;->d:Ljava/lang/String;

    .line 137
    .line 138
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    const-string v3, "oaid"

    .line 147
    .line 148
    invoke-virtual {v2, v3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    const-string v2, "style"

    .line 153
    .line 154
    invoke-static {v1}, Lcom/miui/calendar/util/x;->c(Ljava/lang/Object;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {p2, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    const-string v1, "holiday"

    .line 163
    .line 164
    invoke-virtual {p2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    const-string v1, "showShare"

    .line 169
    .line 170
    invoke-virtual {p2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    const-string v0, "title"

    .line 175
    .line 176
    invoke-virtual {p2, v0, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    const-string p4, "event_name"

    .line 181
    .line 182
    iget-object v0, p0, Lcom/miui/calendar/card/schema/CustomCardItemSchema;->title:Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {p2, p4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    const-string p4, "date"

    .line 189
    .line 190
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {p2, p4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    const-string p4, "from"

    .line 199
    .line 200
    const-string v0, "history"

    .line 201
    .line 202
    invoke-virtual {p2, p4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 203
    .line 204
    .line 205
    move-result-object p2

    .line 206
    const-string p4, "url"

    .line 207
    .line 208
    iget-object v0, p1, Lcom/android/calendar/cards/r0;->d:Ljava/lang/String;

    .line 209
    .line 210
    invoke-virtual {p2, p4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 211
    .line 212
    .line 213
    move-result-object p2

    .line 214
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 215
    .line 216
    .line 217
    move-result-object p2

    .line 218
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 219
    .line 220
    .line 221
    move-result-object p4

    .line 222
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    invoke-static {p4, p2}, Lcom/miui/calendar/web/d;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    .line 228
    .line 229
    move-result-object p2

    .line 230
    const/high16 p4, 0x10000000

    .line 231
    .line 232
    invoke-virtual {p2, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 233
    .line 234
    .line 235
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 236
    .line 237
    .line 238
    move-result-object p4

    .line 239
    invoke-virtual {p4, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 240
    .line 241
    .line 242
    const-string p2, "card_item_clicked"

    .line 243
    .line 244
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    .line 245
    .line 246
    .line 247
    move-result p3

    .line 248
    iget p4, p1, Lcom/android/calendar/cards/r0;->b:I

    .line 249
    .line 250
    iget-object p0, p0, Lcom/miui/calendar/card/schema/CustomCardItemSchema;->title:Ljava/lang/String;

    .line 251
    .line 252
    iget-object p1, p1, Lcom/android/calendar/cards/r0;->c:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 253
    .line 254
    invoke-static {p2, p3, p4, p0, p1}, Lcom/android/calendar/cards/CardHelper;->m(Ljava/lang/String;IILjava/lang/String;Lcom/miui/calendar/card/schema/CustomCardSchema;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .line 256
    .line 257
    goto :goto_0

    .line 258
    :catch_0
    move-exception p0

    .line 259
    const-string p1, "Cal:D:HistoryCard"

    .line 260
    .line 261
    const-string p2, "onCreate(): "

    .line 262
    .line 263
    invoke-static {p1, p2, p0}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 264
    .line 265
    .line 266
    :cond_2
    :goto_0
    return-void
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


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/calendar/cards/r0;->f(Lcom/miui/calendar/card/schema/CustomCardSchema;)V

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

.method public bridge synthetic b(Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/content/Context;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/calendar/cards/r0$b;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/cards/r0;->g(Lcom/android/calendar/cards/r0$b;Landroid/content/Context;)V

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
.end method

.method protected c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/cards/r0;->c:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, v0, Lcom/miui/calendar/card/schema/CustomCardSchema;->sequence:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v0, 0x71

    .line 9
    .line 10
    :goto_0
    return v0
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

.method protected d()I
    .locals 1

    const/16 v0, 0x2f

    return v0
.end method

.method protected f(Lcom/miui/calendar/card/schema/CustomCardSchema;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/cards/r0;->c:Lcom/miui/calendar/card/schema/CustomCardSchema;

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

.method protected g(Lcom/android/calendar/cards/r0$b;Landroid/content/Context;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/android/calendar/cards/r0$b;->d()Landroid/widget/TextView;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    if-eqz v1, :cond_2

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/android/calendar/cards/r0$b;->d()Landroid/widget/TextView;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, Lcom/android/calendar/cards/r0;->c:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    iget-object v2, v2, Lcom/miui/calendar/card/schema/CustomCardSchema;->title:Ljava/lang/String;

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move-object v2, v0

    .line 24
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    :cond_2
    iget-object v1, p0, Lcom/android/calendar/cards/r0;->c:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 28
    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    iget-object v2, v1, Lcom/miui/calendar/card/schema/CustomCardSchema;->itemList:Ljava/util/List;

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_3
    move-object v2, v0

    .line 35
    :goto_2
    if-eqz v1, :cond_4

    .line 36
    .line 37
    iget-object v1, v1, Lcom/miui/calendar/card/schema/CustomCardSchema;->action:Lcom/android/calendar/common/ModuleSchema;

    .line 38
    .line 39
    if-eqz v1, :cond_4

    .line 40
    .line 41
    iget-object v1, v1, Lcom/android/calendar/common/ModuleSchema;->actionList:Ljava/util/List;

    .line 42
    .line 43
    if-eqz v1, :cond_4

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lcom/android/calendar/common/ActionSchema;

    .line 51
    .line 52
    if-eqz v1, :cond_4

    .line 53
    .line 54
    iget-object v1, v1, Lcom/android/calendar/common/ActionSchema;->actionParams:Lcom/android/calendar/common/ActionSchema$ParamsSchema;

    .line 55
    .line 56
    if-eqz v1, :cond_4

    .line 57
    .line 58
    iget-object v1, v1, Lcom/android/calendar/common/ActionSchema$ParamsSchema;->url:Ljava/lang/String;

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_4
    move-object v1, v0

    .line 62
    :goto_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-nez v3, :cond_b

    .line 67
    .line 68
    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    iput-object v1, p0, Lcom/android/calendar/cards/r0;->d:Ljava/lang/String;

    .line 72
    .line 73
    if-eqz p1, :cond_5

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/android/calendar/cards/r0$b;->c()Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    goto :goto_4

    .line 80
    :cond_5
    move-object v1, v0

    .line 81
    :goto_4
    invoke-static {v1}, Lcom/miui/calendar/util/v;->k(Landroid/view/View;)V

    .line 82
    .line 83
    .line 84
    if-eqz v2, :cond_a

    .line 85
    .line 86
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-lez v1, :cond_a

    .line 91
    .line 92
    iget v1, p0, Lcom/android/calendar/cards/r0;->b:I

    .line 93
    .line 94
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    check-cast v1, Lcom/miui/calendar/card/schema/CustomCardItemSchema;

    .line 99
    .line 100
    if-eqz p1, :cond_6

    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/android/calendar/cards/r0$b;->a()Landroid/widget/TextView;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    goto :goto_5

    .line 107
    :cond_6
    move-object v3, v0

    .line 108
    :goto_5
    if-nez v3, :cond_7

    .line 109
    .line 110
    goto :goto_6

    .line 111
    :cond_7
    iget-object v4, v1, Lcom/miui/calendar/card/schema/CustomCardItemSchema;->title:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    :goto_6
    if-eqz p1, :cond_8

    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/android/calendar/cards/r0$b;->b()Landroid/widget/TextView;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    :cond_8
    if-nez v0, :cond_9

    .line 123
    .line 124
    goto :goto_7

    .line 125
    :cond_9
    iget-object v1, v1, Lcom/miui/calendar/card/schema/CustomCardItemSchema;->description:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    .line 129
    .line 130
    :cond_a
    :goto_7
    if-eqz p1, :cond_b

    .line 131
    .line 132
    invoke-virtual {p1}, Lcom/android/calendar/cards/r0$b;->c()Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    if-eqz v0, :cond_b

    .line 137
    .line 138
    new-instance v1, Lcom/android/calendar/cards/q0;

    .line 139
    .line 140
    invoke-direct {v1, v2, p0, p2, p1}, Lcom/android/calendar/cards/q0;-><init>(Ljava/util/List;Lcom/android/calendar/cards/r0;Landroid/content/Context;Lcom/android/calendar/cards/r0$b;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    .line 145
    .line 146
    :cond_b
    return-void
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

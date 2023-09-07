.class public Lcom/android/calendar/widget/MonthWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "MonthWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/widget/MonthWidgetProvider$b;,
        Lcom/android/calendar/widget/MonthWidgetProvider$c;,
        Lcom/android/calendar/widget/MonthWidgetProvider$d;
    }
.end annotation


# static fields
.field private static volatile d:I = 0x0

.field public static e:I = 0x0

.field public static f:Ljava/lang/String; = ""

.field private static g:Ljava/util/Timer;

.field private static h:Ljava/util/Timer;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/appwidget/AppWidgetManager;

.field private c:Lcom/android/calendar/widget/MonthWidgetProvider$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Timer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/calendar/widget/MonthWidgetProvider;->g:Ljava/util/Timer;

    .line 7
    .line 8
    new-instance v0, Ljava/util/Timer;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/android/calendar/widget/MonthWidgetProvider;->h:Ljava/util/Timer;

    .line 14
    .line 15
    return-void
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/android/calendar/widget/MonthWidgetProvider;->d:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    const-string v2, "preferences_month_widget_init_height"

    .line 18
    .line 19
    invoke-static {v0, v2, v1}, Lb2/a;->a(Landroid/content/Context;Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sput v0, Lcom/android/calendar/widget/MonthWidgetProvider;->d:I

    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v1, "MonthWidgetProvider() mInitWidgetHeight="

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    sget v1, Lcom/android/calendar/widget/MonthWidgetProvider;->d:I

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "Cal:D:MonthWidgetProvider"

    .line 45
    .line 46
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
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
.end method

.method static synthetic a(Lcom/android/calendar/widget/MonthWidgetProvider;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/widget/MonthWidgetProvider;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
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

.method static synthetic b(Lcom/android/calendar/widget/MonthWidgetProvider;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I[J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendar/widget/MonthWidgetProvider;->i(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I[J)V

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

.method static synthetic c(Lcom/android/calendar/widget/MonthWidgetProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/widget/MonthWidgetProvider;->j()V

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

.method static synthetic d(Lcom/android/calendar/widget/MonthWidgetProvider;)Landroid/appwidget/AppWidgetManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/widget/MonthWidgetProvider;->b:Landroid/appwidget/AppWidgetManager;

    .line 2
    .line 3
    return-object p0
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

.method static synthetic e(Lcom/android/calendar/widget/MonthWidgetProvider;Lcom/android/calendar/widget/MonthWidgetProvider$d;)Lcom/android/calendar/widget/MonthWidgetProvider$d;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/widget/MonthWidgetProvider;->c:Lcom/android/calendar/widget/MonthWidgetProvider$d;

    .line 2
    .line 3
    return-object p1
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

.method static f(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    .line 2
    .line 3
    const-class v1, Lcom/android/calendar/widget/MonthWidgetProvider;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    return-object v0
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

.method static g(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "android.intent.action.VIEW"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    const v1, 0x1000c000

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    const-class v1, Lcom/android/calendar/homepage/AllInOneActivity;

    .line 18
    .line 19
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    const-string v1, "START_BY_WIDGET"

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    const/high16 v2, 0xa000000

    .line 30
    .line 31
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
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

.method private h(Landroid/content/Context;Landroid/widget/RemoteViews;I)V
    .locals 10

    .line 1
    invoke-static {p1}, Lcom/android/calendar/common/Utils;->C(Landroid/content/Context;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v3, "firstDayOfWeek "

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string v3, "Cal:D:MonthWidgetProvider"

    .line 25
    .line 26
    invoke-static {v3, v2}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1, p3}, Le2/b;->f(Landroid/content/Context;I)I

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const v2, 0x7f07026a

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    float-to-int p1, p1

    .line 45
    const/16 v2, 0xe

    .line 46
    .line 47
    new-array v3, v2, [Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {}, Lcom/miui/calendar/util/y;->a()Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_0

    .line 54
    .line 55
    const/16 v4, 0x32

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const/16 v4, 0x14

    .line 59
    .line 60
    :goto_0
    const/4 v5, 0x7

    .line 61
    if-gt v1, v5, :cond_1

    .line 62
    .line 63
    add-int/lit8 v6, v1, -0x1

    .line 64
    .line 65
    invoke-static {v1, v4}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    aput-object v7, v3, v6

    .line 74
    .line 75
    add-int/2addr v6, v5

    .line 76
    aput-object v7, v3, v6

    .line 77
    .line 78
    add-int/lit8 v1, v1, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    new-array v1, v5, [I

    .line 82
    .line 83
    fill-array-data v1, :array_0

    .line 84
    .line 85
    .line 86
    const/4 v4, 0x0

    .line 87
    move v6, v4

    .line 88
    :goto_1
    if-ge v6, v5, :cond_4

    .line 89
    .line 90
    add-int v7, v6, v0

    .line 91
    .line 92
    if-lt v7, v2, :cond_2

    .line 93
    .line 94
    add-int/lit8 v7, v7, -0xe

    .line 95
    .line 96
    :cond_2
    rem-int/lit8 v8, v6, 0x7

    .line 97
    .line 98
    invoke-static {v8, v0}, Lcom/android/calendar/common/Utils;->r0(II)Z

    .line 99
    .line 100
    .line 101
    move-result v9

    .line 102
    if-eqz v9, :cond_3

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_3
    invoke-static {v8, v0}, Lcom/android/calendar/common/Utils;->s0(II)Z

    .line 106
    .line 107
    .line 108
    :goto_2
    aget v8, v1, v6

    .line 109
    .line 110
    invoke-virtual {p2, v8, p3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 111
    .line 112
    .line 113
    aget v8, v1, v6

    .line 114
    .line 115
    aget-object v7, v3, v7

    .line 116
    .line 117
    invoke-virtual {p2, v8, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    aget v7, v1, v6

    .line 121
    .line 122
    int-to-float v8, p1

    .line 123
    invoke-virtual {p2, v7, v4, v8}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 124
    .line 125
    .line 126
    add-int/lit8 v6, v6, 0x1

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_4
    return-void

    .line 130
    nop

    .line 131
    :array_0
    .array-data 4
        0x7f0a029f
        0x7f0a0537
        0x7f0a061e
        0x7f0a02b0
        0x7f0a0291
        0x7f0a0560
        0x7f0a054e
    .end array-data
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
.end method

.method private i(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I[J)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p3

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v9

    .line 11
    new-instance v11, Lcom/miui/calendar/util/r0;

    .line 12
    .line 13
    invoke-static/range {p1 .. p1}, Lcom/android/calendar/common/Utils;->U(Landroid/content/Context;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v11, v1}, Lcom/miui/calendar/util/r0;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v11}, Lcom/miui/calendar/util/r0;->M()V

    .line 21
    .line 22
    .line 23
    array-length v12, v8

    .line 24
    const/4 v14, 0x0

    .line 25
    :goto_0
    const-string v1, "Cal:D:MonthWidgetProvider"

    .line 26
    .line 27
    if-ge v14, v12, :cond_d

    .line 28
    .line 29
    aget v15, v8, v14

    .line 30
    .line 31
    iget-object v2, v0, Lcom/android/calendar/widget/MonthWidgetProvider;->b:Landroid/appwidget/AppWidgetManager;

    .line 32
    .line 33
    invoke-virtual {v2, v15}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    new-instance v3, Landroid/content/Intent;

    .line 38
    .line 39
    const-class v4, Lcom/android/calendar/widget/MonthWidgetService;

    .line 40
    .line 41
    invoke-direct {v3, v7, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .line 43
    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v5, ""

    .line 50
    .line 51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    const-string v4, "appWidgetId"

    .line 65
    .line 66
    invoke-virtual {v3, v4, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    new-instance v6, Landroid/widget/RemoteViews;

    .line 70
    .line 71
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v13

    .line 75
    const v8, 0x7f0d0186

    .line 76
    .line 77
    .line 78
    invoke-direct {v6, v13, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 79
    .line 80
    .line 81
    const v8, 0x7f0a0404

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6, v8, v3}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    .line 85
    .line 86
    .line 87
    const v3, 0x7f0a038f

    .line 88
    .line 89
    .line 90
    const/16 v13, 0x8

    .line 91
    .line 92
    invoke-virtual {v6, v3, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 93
    .line 94
    .line 95
    const v3, 0x7f0a01a5

    .line 96
    .line 97
    .line 98
    const/4 v8, 0x0

    .line 99
    invoke-virtual {v6, v3, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 100
    .line 101
    .line 102
    sget v3, Lcom/android/calendar/widget/MonthWidgetProvider;->e:I

    .line 103
    .line 104
    invoke-static {v11, v3}, Lcom/miui/calendar/util/e0;->o(Lcom/miui/calendar/util/r0;I)Lcom/miui/calendar/util/r0;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    const/4 v3, 0x1

    .line 109
    move/from16 v16, v14

    .line 110
    .line 111
    invoke-virtual {v8, v3}, Lcom/miui/calendar/util/r0;->P(Z)J

    .line 112
    .line 113
    .line 114
    move-result-wide v13

    .line 115
    move-object/from16 v17, v4

    .line 116
    .line 117
    invoke-virtual {v8}, Lcom/miui/calendar/util/r0;->l()J

    .line 118
    .line 119
    .line 120
    move-result-wide v3

    .line 121
    invoke-static {v13, v14, v3, v4}, Lcom/miui/calendar/util/r0;->n(JJ)I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    invoke-static {}, Lcom/android/calendar/common/k;->b()I

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    add-int/lit8 v4, v4, -0x1f

    .line 130
    .line 131
    const/4 v14, 0x4

    .line 132
    const v13, 0x7f0a010c

    .line 133
    .line 134
    .line 135
    if-le v3, v4, :cond_0

    .line 136
    .line 137
    invoke-virtual {v6, v13, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 138
    .line 139
    .line 140
    const/4 v4, 0x0

    .line 141
    goto :goto_1

    .line 142
    :cond_0
    const/4 v4, 0x0

    .line 143
    invoke-virtual {v6, v13, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 144
    .line 145
    .line 146
    new-instance v14, Landroid/content/Intent;

    .line 147
    .line 148
    const-string v13, "miui.intent.action.MONTH_CHANGED_NEXT"

    .line 149
    .line 150
    invoke-direct {v14, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    const-class v13, Lcom/android/calendar/widget/MonthWidgetProvider;

    .line 154
    .line 155
    invoke-virtual {v14, v7, v13}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 156
    .line 157
    .line 158
    const/high16 v13, 0xc000000

    .line 159
    .line 160
    invoke-static {v7, v4, v14, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 161
    .line 162
    .line 163
    move-result-object v14

    .line 164
    const v13, 0x7f0a010c

    .line 165
    .line 166
    .line 167
    invoke-virtual {v6, v13, v14}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 168
    .line 169
    .line 170
    :goto_1
    invoke-static {}, Lcom/android/calendar/common/k;->e()I

    .line 171
    .line 172
    .line 173
    move-result v13

    .line 174
    add-int/lit8 v13, v13, 0x1f

    .line 175
    .line 176
    const v14, 0x7f0a010d

    .line 177
    .line 178
    .line 179
    if-ge v3, v13, :cond_1

    .line 180
    .line 181
    const/4 v3, 0x4

    .line 182
    invoke-virtual {v6, v14, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 183
    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_1
    invoke-virtual {v6, v14, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 187
    .line 188
    .line 189
    new-instance v3, Landroid/content/Intent;

    .line 190
    .line 191
    const-string v13, "miui.intent.action.MONTH_CHANGED_PREV"

    .line 192
    .line 193
    invoke-direct {v3, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    const-class v13, Lcom/android/calendar/widget/MonthWidgetProvider;

    .line 197
    .line 198
    invoke-virtual {v3, v7, v13}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 199
    .line 200
    .line 201
    const/high16 v13, 0xc000000

    .line 202
    .line 203
    invoke-static {v7, v4, v3, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    invoke-virtual {v6, v14, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 208
    .line 209
    .line 210
    :goto_2
    new-instance v3, Landroid/content/Intent;

    .line 211
    .line 212
    const-class v4, Lcom/android/calendar/widget/MonthWidgetEventService;

    .line 213
    .line 214
    invoke-direct {v3, v7, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 215
    .line 216
    .line 217
    new-instance v4, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    .line 234
    .line 235
    move-object/from16 v4, v17

    .line 236
    .line 237
    invoke-virtual {v3, v4, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 238
    .line 239
    .line 240
    const v13, 0x7f0a0280

    .line 241
    .line 242
    .line 243
    invoke-virtual {v6, v13, v3}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    .line 244
    .line 245
    .line 246
    const v3, 0x7f0a025f

    .line 247
    .line 248
    .line 249
    invoke-virtual {v6, v13, v3}, Landroid/widget/RemoteViews;->setEmptyView(II)V

    .line 250
    .line 251
    .line 252
    const v3, 0x7f0a0264

    .line 253
    .line 254
    .line 255
    invoke-static {v7, v15}, Le2/b;->c(Landroid/content/Context;I)I

    .line 256
    .line 257
    .line 258
    move-result v4

    .line 259
    invoke-virtual {v6, v3, v4}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 260
    .line 261
    .line 262
    invoke-direct {v0, v7, v2}, Lcom/android/calendar/widget/MonthWidgetProvider;->k(Landroid/content/Context;Landroid/os/Bundle;)Z

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    const v3, 0x7f0a0276

    .line 267
    .line 268
    .line 269
    if-nez v2, :cond_2

    .line 270
    .line 271
    const/4 v2, 0x4

    .line 272
    invoke-virtual {v6, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 273
    .line 274
    .line 275
    const/4 v2, 0x0

    .line 276
    goto :goto_3

    .line 277
    :cond_2
    const/4 v2, 0x0

    .line 278
    invoke-virtual {v6, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 279
    .line 280
    .line 281
    :goto_3
    iget-object v3, v0, Lcom/android/calendar/widget/MonthWidgetProvider;->a:Landroid/content/Context;

    .line 282
    .line 283
    invoke-static {v3}, Ly4/c;->i(Landroid/content/Context;)Z

    .line 284
    .line 285
    .line 286
    move-result v3

    .line 287
    const v4, 0x7f0a06d6

    .line 288
    .line 289
    .line 290
    if-eqz v3, :cond_3

    .line 291
    .line 292
    invoke-virtual {v6, v4, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 293
    .line 294
    .line 295
    const/16 v14, 0x8

    .line 296
    .line 297
    goto :goto_4

    .line 298
    :cond_3
    const/16 v14, 0x8

    .line 299
    .line 300
    invoke-virtual {v6, v4, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 301
    .line 302
    .line 303
    :goto_4
    iget-object v2, v0, Lcom/android/calendar/widget/MonthWidgetProvider;->a:Landroid/content/Context;

    .line 304
    .line 305
    invoke-static {v2, v15}, Le2/b;->d(Landroid/content/Context;I)I

    .line 306
    .line 307
    .line 308
    move-result v2

    .line 309
    const v3, 0x7f0a022b

    .line 310
    .line 311
    .line 312
    invoke-virtual {v6, v3, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v6, v4, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 316
    .line 317
    .line 318
    iget-object v2, v0, Lcom/android/calendar/widget/MonthWidgetProvider;->a:Landroid/content/Context;

    .line 319
    .line 320
    const v5, 0x7f0a0241

    .line 321
    .line 322
    .line 323
    invoke-static {v2, v6, v5, v15}, Le2/b;->k(Landroid/content/Context;Landroid/widget/RemoteViews;II)V

    .line 324
    .line 325
    .line 326
    iget-object v2, v0, Lcom/android/calendar/widget/MonthWidgetProvider;->a:Landroid/content/Context;

    .line 327
    .line 328
    const v5, 0x7f0a0242

    .line 329
    .line 330
    .line 331
    invoke-static {v2, v6, v5, v15}, Le2/b;->k(Landroid/content/Context;Landroid/widget/RemoteViews;II)V

    .line 332
    .line 333
    .line 334
    new-instance v2, Lcom/miui/calendar/util/r0;

    .line 335
    .line 336
    invoke-direct {v2}, Lcom/miui/calendar/util/r0;-><init>()V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v2}, Lcom/miui/calendar/util/r0;->M()V

    .line 340
    .line 341
    .line 342
    iget-object v5, v0, Lcom/android/calendar/widget/MonthWidgetProvider;->a:Landroid/content/Context;

    .line 343
    .line 344
    invoke-static {v5, v2}, Lcom/android/calendar/common/Utils;->f0(Landroid/content/Context;Lcom/miui/calendar/util/r0;)Landroid/text/SpannableString;

    .line 345
    .line 346
    .line 347
    move-result-object v2

    .line 348
    invoke-virtual {v6, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 349
    .line 350
    .line 351
    sget-object v2, Lcom/android/calendar/widget/MonthWidgetProvider;->f:Ljava/lang/String;

    .line 352
    .line 353
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    if-eqz v2, :cond_5

    .line 358
    .line 359
    iget-object v2, v0, Lcom/android/calendar/widget/MonthWidgetProvider;->a:Landroid/content/Context;

    .line 360
    .line 361
    const v3, 0x7f1206df

    .line 362
    .line 363
    .line 364
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    invoke-static {}, Lcom/miui/calendar/util/x0;->x0()Z

    .line 369
    .line 370
    .line 371
    move-result v3

    .line 372
    if-eqz v3, :cond_4

    .line 373
    .line 374
    new-instance v3, Ljava/lang/StringBuilder;

    .line 375
    .line 376
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    .line 378
    .line 379
    const-string v5, "< "

    .line 380
    .line 381
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    goto :goto_5

    .line 392
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 393
    .line 394
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    const-string v2, " >"

    .line 401
    .line 402
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    :goto_5
    invoke-virtual {v6, v4, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 410
    .line 411
    .line 412
    goto :goto_6

    .line 413
    :cond_5
    sget-object v2, Lcom/android/calendar/widget/MonthWidgetProvider;->f:Ljava/lang/String;

    .line 414
    .line 415
    invoke-virtual {v6, v4, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 416
    .line 417
    .line 418
    :goto_6
    iget-object v2, v0, Lcom/android/calendar/widget/MonthWidgetProvider;->c:Lcom/android/calendar/widget/MonthWidgetProvider$d;

    .line 419
    .line 420
    if-nez v2, :cond_6

    .line 421
    .line 422
    new-instance v2, Lcom/android/calendar/widget/MonthWidgetProvider$d;

    .line 423
    .line 424
    const/4 v3, 0x0

    .line 425
    invoke-direct {v2, v0, v3}, Lcom/android/calendar/widget/MonthWidgetProvider$d;-><init>(Lcom/android/calendar/widget/MonthWidgetProvider;Lcom/android/calendar/widget/MonthWidgetProvider$a;)V

    .line 426
    .line 427
    .line 428
    iput-object v2, v0, Lcom/android/calendar/widget/MonthWidgetProvider;->c:Lcom/android/calendar/widget/MonthWidgetProvider$d;

    .line 429
    .line 430
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 431
    .line 432
    const/4 v5, 0x1

    .line 433
    new-array v14, v5, [Landroid/widget/RemoteViews;

    .line 434
    .line 435
    const/4 v5, 0x0

    .line 436
    aput-object v6, v14, v5

    .line 437
    .line 438
    invoke-virtual {v2, v3, v14}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 439
    .line 440
    .line 441
    :cond_6
    const-string v2, "com.miui.weather2"

    .line 442
    .line 443
    invoke-static {v7, v2}, Lcom/miui/calendar/util/DeviceUtils;->r(Landroid/content/Context;Ljava/lang/String;)J

    .line 444
    .line 445
    .line 446
    move-result-wide v2

    .line 447
    const-wide/32 v19, 0xb854ad

    .line 448
    .line 449
    .line 450
    cmp-long v2, v2, v19

    .line 451
    .line 452
    const/high16 v3, 0x4000000

    .line 453
    .line 454
    if-ltz v2, :cond_7

    .line 455
    .line 456
    iget-object v2, v0, Lcom/android/calendar/widget/MonthWidgetProvider;->a:Landroid/content/Context;

    .line 457
    .line 458
    invoke-static {v2}, Ly4/c;->g(Landroid/content/Context;)[Landroid/content/Intent;

    .line 459
    .line 460
    .line 461
    move-result-object v2

    .line 462
    new-instance v5, Ljava/lang/StringBuilder;

    .line 463
    .line 464
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 465
    .line 466
    .line 467
    const-string v14, "performUpdate(): intents:"

    .line 468
    .line 469
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v5

    .line 479
    invoke-static {v1, v5}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    if-eqz v2, :cond_8

    .line 483
    .line 484
    const/4 v1, 0x0

    .line 485
    invoke-static {v7, v1, v2, v3}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 486
    .line 487
    .line 488
    move-result-object v2

    .line 489
    invoke-virtual {v6, v4, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 490
    .line 491
    .line 492
    goto :goto_7

    .line 493
    :cond_7
    iget-object v2, v0, Lcom/android/calendar/widget/MonthWidgetProvider;->a:Landroid/content/Context;

    .line 494
    .line 495
    invoke-static {v2}, Ly4/c;->e(Landroid/content/Context;)Landroid/content/Intent;

    .line 496
    .line 497
    .line 498
    move-result-object v2

    .line 499
    new-instance v5, Ljava/lang/StringBuilder;

    .line 500
    .line 501
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 502
    .line 503
    .line 504
    const-string v14, "performUpdate(): intent:"

    .line 505
    .line 506
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v5

    .line 516
    invoke-static {v1, v5}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    if-eqz v2, :cond_8

    .line 520
    .line 521
    const/4 v1, 0x0

    .line 522
    invoke-static {v7, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 523
    .line 524
    .line 525
    move-result-object v2

    .line 526
    invoke-virtual {v6, v4, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 527
    .line 528
    .line 529
    :cond_8
    :goto_7
    iget-object v1, v0, Lcom/android/calendar/widget/MonthWidgetProvider;->a:Landroid/content/Context;

    .line 530
    .line 531
    invoke-static {v1, v6, v15}, Le2/b;->l(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    .line 532
    .line 533
    .line 534
    const/4 v1, 0x1

    .line 535
    invoke-virtual {v8, v1}, Lcom/miui/calendar/util/r0;->P(Z)J

    .line 536
    .line 537
    .line 538
    move-result-wide v17

    .line 539
    invoke-static {}, Lcom/miui/calendar/util/y;->a()Z

    .line 540
    .line 541
    .line 542
    move-result v2

    .line 543
    if-eqz v2, :cond_9

    .line 544
    .line 545
    new-instance v2, Ljava/lang/StringBuilder;

    .line 546
    .line 547
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v8}, Lcom/miui/calendar/util/r0;->p()I

    .line 551
    .line 552
    .line 553
    move-result v3

    .line 554
    add-int/2addr v3, v1

    .line 555
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v1

    .line 559
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    iget-object v1, v0, Lcom/android/calendar/widget/MonthWidgetProvider;->a:Landroid/content/Context;

    .line 563
    .line 564
    const v3, 0x7f120381

    .line 565
    .line 566
    .line 567
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v1

    .line 571
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v1

    .line 578
    move-object v13, v6

    .line 579
    goto :goto_8

    .line 580
    :cond_9
    const v14, 0x10028

    .line 581
    .line 582
    .line 583
    move-object/from16 v1, p1

    .line 584
    .line 585
    move-wide/from16 v2, v17

    .line 586
    .line 587
    move-wide/from16 v4, v17

    .line 588
    .line 589
    move-object v13, v6

    .line 590
    move v6, v14

    .line 591
    invoke-static/range {v1 .. v6}, Lcom/android/calendar/common/Utils;->p(Landroid/content/Context;JJI)Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v1

    .line 595
    :goto_8
    iget-object v2, v0, Lcom/android/calendar/widget/MonthWidgetProvider;->a:Landroid/content/Context;

    .line 596
    .line 597
    invoke-static {v2, v15}, Le2/b;->a(Landroid/content/Context;I)I

    .line 598
    .line 599
    .line 600
    move-result v2

    .line 601
    iget-object v3, v0, Lcom/android/calendar/widget/MonthWidgetProvider;->a:Landroid/content/Context;

    .line 602
    .line 603
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 604
    .line 605
    .line 606
    move-result-object v3

    .line 607
    const v4, 0x7f0708da

    .line 608
    .line 609
    .line 610
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 611
    .line 612
    .line 613
    move-result v3

    .line 614
    iget-object v4, v0, Lcom/android/calendar/widget/MonthWidgetProvider;->a:Landroid/content/Context;

    .line 615
    .line 616
    const/4 v14, 0x0

    .line 617
    invoke-static {v4, v1, v2, v3, v14}, Lcom/miui/calendar/util/x0;->y(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    .line 618
    .line 619
    .line 620
    move-result-object v1

    .line 621
    const v2, 0x7f0a0044

    .line 622
    .line 623
    .line 624
    invoke-virtual {v13, v2, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 625
    .line 626
    .line 627
    iget-object v1, v0, Lcom/android/calendar/widget/MonthWidgetProvider;->a:Landroid/content/Context;

    .line 628
    .line 629
    invoke-static {v1, v15}, Le2/b;->b(Landroid/content/Context;I)I

    .line 630
    .line 631
    .line 632
    move-result v6

    .line 633
    invoke-virtual {v8}, Lcom/miui/calendar/util/r0;->v()I

    .line 634
    .line 635
    .line 636
    move-result v1

    .line 637
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v1

    .line 641
    invoke-static {}, Lcom/miui/calendar/util/y;->a()Z

    .line 642
    .line 643
    .line 644
    move-result v2

    .line 645
    if-eqz v2, :cond_a

    .line 646
    .line 647
    new-instance v2, Ljava/lang/StringBuilder;

    .line 648
    .line 649
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 650
    .line 651
    .line 652
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    .line 654
    .line 655
    iget-object v1, v0, Lcom/android/calendar/widget/MonthWidgetProvider;->a:Landroid/content/Context;

    .line 656
    .line 657
    const v3, 0x7f120606

    .line 658
    .line 659
    .line 660
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object v1

    .line 664
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    .line 666
    .line 667
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v1

    .line 671
    :cond_a
    const v2, 0x7f0a005a

    .line 672
    .line 673
    .line 674
    invoke-virtual {v13, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 675
    .line 676
    .line 677
    invoke-virtual {v13, v2, v6}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 678
    .line 679
    .line 680
    sget v1, Lcom/android/calendar/widget/MonthWidgetProvider;->e:I

    .line 681
    .line 682
    const v8, 0x7f0a0056

    .line 683
    .line 684
    .line 685
    if-nez v1, :cond_b

    .line 686
    .line 687
    const v20, 0x8002

    .line 688
    .line 689
    .line 690
    move-object/from16 v1, p1

    .line 691
    .line 692
    move-wide/from16 v2, v17

    .line 693
    .line 694
    move-wide/from16 v4, v17

    .line 695
    .line 696
    move v14, v6

    .line 697
    move/from16 v6, v20

    .line 698
    .line 699
    invoke-static/range {v1 .. v6}, Lcom/android/calendar/common/Utils;->p(Landroid/content/Context;JJI)Ljava/lang/String;

    .line 700
    .line 701
    .line 702
    move-result-object v1

    .line 703
    invoke-virtual {v13, v8, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 704
    .line 705
    .line 706
    invoke-virtual {v13, v8, v14}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 707
    .line 708
    .line 709
    :cond_b
    sget v1, Lcom/android/calendar/widget/MonthWidgetProvider;->e:I

    .line 710
    .line 711
    if-nez v1, :cond_c

    .line 712
    .line 713
    const/4 v1, 0x0

    .line 714
    goto :goto_9

    .line 715
    :cond_c
    const/16 v1, 0x8

    .line 716
    .line 717
    :goto_9
    invoke-virtual {v13, v8, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 718
    .line 719
    .line 720
    invoke-direct {v0, v7, v13, v15}, Lcom/android/calendar/widget/MonthWidgetProvider;->h(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    .line 721
    .line 722
    .line 723
    invoke-static/range {p1 .. p1}, Lcom/android/calendar/widget/MonthWidgetProvider;->g(Landroid/content/Context;)Landroid/app/PendingIntent;

    .line 724
    .line 725
    .line 726
    move-result-object v1

    .line 727
    const v2, 0x7f0a0404

    .line 728
    .line 729
    .line 730
    invoke-virtual {v13, v2, v1}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 731
    .line 732
    .line 733
    const v2, 0x7f0a0280

    .line 734
    .line 735
    .line 736
    invoke-virtual {v13, v2, v1}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 737
    .line 738
    .line 739
    move-object/from16 v2, p2

    .line 740
    .line 741
    invoke-virtual {v2, v15, v13}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 742
    .line 743
    .line 744
    add-int/lit8 v14, v16, 0x1

    .line 745
    .line 746
    move-object/from16 v8, p3

    .line 747
    .line 748
    goto/16 :goto_0

    .line 749
    .line 750
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 751
    .line 752
    .line 753
    move-result-wide v2

    .line 754
    sub-long/2addr v2, v9

    .line 755
    new-instance v4, Ljava/lang/StringBuilder;

    .line 756
    .line 757
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 758
    .line 759
    .line 760
    const-string v5, "performUpdate() end, cost "

    .line 761
    .line 762
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    .line 764
    .line 765
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 766
    .line 767
    .line 768
    const-string v2, "ms"

    .line 769
    .line 770
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    .line 772
    .line 773
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 774
    .line 775
    .line 776
    move-result-object v2

    .line 777
    invoke-static {v1, v2}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    .line 779
    .line 780
    return-void
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
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
.end method

.method private j()V
    .locals 7

    .line 1
    const-string v0, "Cal:D:MonthWidgetProvider"

    .line 2
    .line 3
    const-string v1, "resetRunnable():reset to current month"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/calendar/widget/MonthWidgetProvider;->b:Landroid/appwidget/AppWidgetManager;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/calendar/widget/MonthWidgetProvider;->a:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {v2}, Lcom/android/calendar/widget/MonthWidgetProvider;->f(Landroid/content/Context;)Landroid/content/ComponentName;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    const/4 v4, 0x0

    .line 25
    sput v4, Lcom/android/calendar/widget/MonthWidgetProvider;->e:I

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    iput-object v4, p0, Lcom/android/calendar/widget/MonthWidgetProvider;->c:Lcom/android/calendar/widget/MonthWidgetProvider$d;

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    iget-object v5, p0, Lcom/android/calendar/widget/MonthWidgetProvider;->a:Landroid/content/Context;

    .line 33
    .line 34
    iget-object v6, p0, Lcom/android/calendar/widget/MonthWidgetProvider;->b:Landroid/appwidget/AppWidgetManager;

    .line 35
    .line 36
    invoke-direct {p0, v5, v6, v1, v4}, Lcom/android/calendar/widget/MonthWidgetProvider;->i(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I[J)V

    .line 37
    .line 38
    .line 39
    iget-object v4, p0, Lcom/android/calendar/widget/MonthWidgetProvider;->b:Landroid/appwidget/AppWidgetManager;

    .line 40
    .line 41
    const v5, 0x7f0a0404

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v1, v5}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    .line 45
    .line 46
    .line 47
    iget-object v4, p0, Lcom/android/calendar/widget/MonthWidgetProvider;->b:Landroid/appwidget/AppWidgetManager;

    .line 48
    .line 49
    const v5, 0x7f0a0280

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v1, v5}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    .line 53
    .line 54
    .line 55
    iget-object v4, p0, Lcom/android/calendar/widget/MonthWidgetProvider;->b:Landroid/appwidget/AppWidgetManager;

    .line 56
    .line 57
    const v5, 0x7f0a02d4

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v1, v5}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    .line 61
    .line 62
    .line 63
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 64
    .line 65
    .line 66
    move-result-wide v4

    .line 67
    sub-long/2addr v4, v2

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v2, "resetToCurrentMonth() end, cost "

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v2, "ms"

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-void
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
.end method

.method private k(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 3

    .line 1
    const-string v0, "appWidgetMinHeight"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    sget v0, Lcom/android/calendar/widget/MonthWidgetProvider;->d:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget v0, Lcom/android/calendar/widget/MonthWidgetProvider;->d:I

    .line 16
    .line 17
    sub-int v0, p2, v0

    .line 18
    .line 19
    invoke-static {p1}, Lcom/miui/calendar/util/DeviceUtils;->o(Landroid/content/Context;)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    int-to-float v2, v2

    .line 24
    invoke-static {p1, v2}, Lcom/miui/calendar/util/DeviceUtils;->P(Landroid/content/Context;F)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    add-int/2addr v2, v1

    .line 29
    neg-int v2, v2

    .line 30
    if-ge v0, v2, :cond_1

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    return p1

    .line 34
    :cond_1
    sget v0, Lcom/android/calendar/widget/MonthWidgetProvider;->d:I

    .line 35
    .line 36
    if-ne p2, v0, :cond_2

    .line 37
    .line 38
    return v1

    .line 39
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v2, "showExtra(): amend init widget Height, old="

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    sget v2, Lcom/android/calendar/widget/MonthWidgetProvider;->d:I

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, " new="

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-string v2, "Cal:D:MonthWidgetProvider"

    .line 67
    .line 68
    invoke-static {v2, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput p2, Lcom/android/calendar/widget/MonthWidgetProvider;->d:I

    .line 72
    .line 73
    const-string v0, "preferences_month_widget_init_height"

    .line 74
    .line 75
    invoke-static {p1, v0, p2}, Lb2/a;->i(Landroid/content/Context;Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    :cond_3
    :goto_0
    return v1
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
.end method


# virtual methods
.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onAppWidgetOptionsChanged(): appWidgetId:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " newOptions="

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "Cal:D:MonthWidgetProvider"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p4}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Ljava/lang/String;

    .line 50
    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v4, "onAppWidgetOptionsChanged() newOptions: key:"

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v4, ", value:"

    .line 65
    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p4, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-static {v1, v2}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_0
    sget v0, Lcom/android/calendar/widget/MonthWidgetProvider;->d:I

    .line 85
    .line 86
    if-nez v0, :cond_1

    .line 87
    .line 88
    const-string v0, "appWidgetMinHeight"

    .line 89
    .line 90
    invoke-virtual {p4, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    sput v0, Lcom/android/calendar/widget/MonthWidgetProvider;->d:I

    .line 95
    .line 96
    sget v0, Lcom/android/calendar/widget/MonthWidgetProvider;->d:I

    .line 97
    .line 98
    const-string v2, "preferences_month_widget_init_height"

    .line 99
    .line 100
    invoke-static {p1, v2, v0}, Lb2/a;->i(Landroid/content/Context;Ljava/lang/String;I)V

    .line 101
    .line 102
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v2, "onAppWidgetOptionsChanged(): init widget Height = "

    .line 109
    .line 110
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    sget v2, Lcom/android/calendar/widget/MonthWidgetProvider;->d:I

    .line 114
    .line 115
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/widget/MonthWidgetProvider;->b:Landroid/appwidget/AppWidgetManager;

    .line 126
    .line 127
    const/4 v1, 0x1

    .line 128
    new-array v1, v1, [I

    .line 129
    .line 130
    const/4 v2, 0x0

    .line 131
    aput p3, v1, v2

    .line 132
    .line 133
    const/4 v2, 0x0

    .line 134
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/calendar/widget/MonthWidgetProvider;->i(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I[J)V

    .line 135
    .line 136
    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetProvider;->onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V

    .line 138
    .line 139
    .line 140
    return-void
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
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iput-object v1, v0, Lcom/android/calendar/widget/MonthWidgetProvider;->a:Landroid/content/Context;

    .line 10
    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v4, "onReceive(): action:"

    .line 17
    .line 18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const-string v4, "Cal:D:MonthWidgetProvider"

    .line 29
    .line 30
    invoke-static {v4, v3}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v5

    .line 37
    invoke-static/range {p1 .. p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    iput-object v3, v0, Lcom/android/calendar/widget/MonthWidgetProvider;->b:Landroid/appwidget/AppWidgetManager;

    .line 42
    .line 43
    invoke-static/range {p1 .. p1}, Lcom/android/calendar/widget/MonthWidgetProvider;->f(Landroid/content/Context;)Landroid/content/ComponentName;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    invoke-virtual {v3, v7}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const-string v7, "android.intent.action.BOOT_COMPLETED"

    .line 52
    .line 53
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    const-string v9, "android.appwidget.action.APPWIDGET_DELETED"

    .line 58
    .line 59
    if-nez v8, :cond_1

    .line 60
    .line 61
    const-string v8, "android.appwidget.action.APPWIDGET_UPDATE"

    .line 62
    .line 63
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    if-nez v8, :cond_1

    .line 68
    .line 69
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v8

    .line 73
    if-eqz v8, :cond_0

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    move-object/from16 v10, p2

    .line 77
    .line 78
    goto/16 :goto_4

    .line 79
    .line 80
    :cond_1
    :goto_0
    const-string v8, "month_widget_count"

    .line 81
    .line 82
    if-nez v3, :cond_2

    .line 83
    .line 84
    const-string v11, "onReceive(): appWidgetIds is null"

    .line 85
    .line 86
    invoke-static {v4, v11}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const-wide/16 v11, 0x0

    .line 90
    .line 91
    invoke-static {v8, v11, v12}, Lcom/miui/calendar/util/g0;->h(Ljava/lang/String;J)V

    .line 92
    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_2
    array-length v11, v3

    .line 96
    int-to-long v11, v11

    .line 97
    invoke-static {v8, v11, v12}, Lcom/miui/calendar/util/g0;->h(Ljava/lang/String;J)V

    .line 98
    .line 99
    .line 100
    array-length v8, v3

    .line 101
    const/4 v11, 0x0

    .line 102
    :goto_1
    if-ge v11, v8, :cond_4

    .line 103
    .line 104
    aget v12, v3, v11

    .line 105
    .line 106
    new-instance v13, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string v14, "onReceive(): id:"

    .line 112
    .line 113
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v13

    .line 123
    invoke-static {v4, v13}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object v13, v0, Lcom/android/calendar/widget/MonthWidgetProvider;->b:Landroid/appwidget/AppWidgetManager;

    .line 127
    .line 128
    invoke-virtual {v13, v12}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    .line 129
    .line 130
    .line 131
    move-result-object v12

    .line 132
    invoke-virtual {v12}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 133
    .line 134
    .line 135
    move-result-object v13

    .line 136
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 137
    .line 138
    .line 139
    move-result-object v13

    .line 140
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    .line 142
    .line 143
    move-result v14

    .line 144
    if-eqz v14, :cond_3

    .line 145
    .line 146
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v14

    .line 150
    check-cast v14, Ljava/lang/String;

    .line 151
    .line 152
    new-instance v15, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    const-string v10, "onReceive(): key:"

    .line 158
    .line 159
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string v10, ", value:"

    .line 166
    .line 167
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v12, v14}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v10

    .line 174
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v10

    .line 181
    invoke-static {v4, v10}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_3
    add-int/lit8 v11, v11, 0x1

    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_4
    :goto_3
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v8

    .line 192
    if-eqz v8, :cond_0

    .line 193
    .line 194
    const-string v8, "appWidgetId"

    .line 195
    .line 196
    const/4 v9, -0x1

    .line 197
    move-object/from16 v10, p2

    .line 198
    .line 199
    invoke-virtual {v10, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 200
    .line 201
    .line 202
    move-result v8

    .line 203
    if-le v8, v9, :cond_5

    .line 204
    .line 205
    invoke-static {v1, v8}, Le2/b;->i(Landroid/content/Context;I)V

    .line 206
    .line 207
    .line 208
    :cond_5
    :goto_4
    const-string v8, "com.miui.weather2.FROM_FOREGROUND_TO_WAKE_BACKGROUND"

    .line 209
    .line 210
    invoke-static {v8, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 211
    .line 212
    .line 213
    move-result v8

    .line 214
    const/4 v9, 0x0

    .line 215
    if-eqz v8, :cond_6

    .line 216
    .line 217
    if-eqz v3, :cond_e

    .line 218
    .line 219
    array-length v1, v3

    .line 220
    if-lez v1, :cond_e

    .line 221
    .line 222
    sget-object v1, Lcom/android/calendar/widget/MonthWidgetProvider;->f:Ljava/lang/String;

    .line 223
    .line 224
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    if-eqz v1, :cond_e

    .line 229
    .line 230
    const-string v1, "onReceive(): weather wake background"

    .line 231
    .line 232
    invoke-static {v4, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    sget-object v1, Lcom/android/calendar/widget/MonthWidgetProvider;->h:Ljava/util/Timer;

    .line 236
    .line 237
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 238
    .line 239
    .line 240
    new-instance v1, Ljava/util/Timer;

    .line 241
    .line 242
    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 243
    .line 244
    .line 245
    sput-object v1, Lcom/android/calendar/widget/MonthWidgetProvider;->h:Ljava/util/Timer;

    .line 246
    .line 247
    new-instance v1, Lcom/android/calendar/widget/MonthWidgetProvider$b;

    .line 248
    .line 249
    invoke-direct {v1, v0, v9}, Lcom/android/calendar/widget/MonthWidgetProvider$b;-><init>(Lcom/android/calendar/widget/MonthWidgetProvider;Lcom/android/calendar/widget/MonthWidgetProvider$a;)V

    .line 250
    .line 251
    .line 252
    sget-object v2, Lcom/android/calendar/widget/MonthWidgetProvider;->h:Ljava/util/Timer;

    .line 253
    .line 254
    const-wide/16 v7, 0xbb8

    .line 255
    .line 256
    invoke-virtual {v2, v1, v7, v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 257
    .line 258
    .line 259
    goto/16 :goto_8

    .line 260
    .line 261
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/android/calendar/common/Utils;->h0(Landroid/content/Context;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v8

    .line 265
    invoke-static {v8, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 266
    .line 267
    .line 268
    move-result v8

    .line 269
    if-eqz v8, :cond_7

    .line 270
    .line 271
    const/4 v8, 0x0

    .line 272
    sput v8, Lcom/android/calendar/widget/MonthWidgetProvider;->e:I

    .line 273
    .line 274
    if-eqz v3, :cond_e

    .line 275
    .line 276
    iget-object v2, v0, Lcom/android/calendar/widget/MonthWidgetProvider;->b:Landroid/appwidget/AppWidgetManager;

    .line 277
    .line 278
    invoke-direct {v0, v1, v2, v3, v9}, Lcom/android/calendar/widget/MonthWidgetProvider;->i(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I[J)V

    .line 279
    .line 280
    .line 281
    goto/16 :goto_8

    .line 282
    .line 283
    :cond_7
    const-string v8, "android.intent.action.PROVIDER_CHANGED"

    .line 284
    .line 285
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v8

    .line 289
    if-nez v8, :cond_d

    .line 290
    .line 291
    const-string v8, "android.intent.action.TIME_SET"

    .line 292
    .line 293
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v8

    .line 297
    if-nez v8, :cond_d

    .line 298
    .line 299
    const-string v8, "android.intent.action.TIMEZONE_CHANGED"

    .line 300
    .line 301
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v8

    .line 305
    if-nez v8, :cond_d

    .line 306
    .line 307
    const-string v8, "com.miui.action.MIDNIGHT"

    .line 308
    .line 309
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result v8

    .line 313
    if-nez v8, :cond_d

    .line 314
    .line 315
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result v7

    .line 319
    if-nez v7, :cond_d

    .line 320
    .line 321
    invoke-static/range {p1 .. p1}, Lcom/android/calendar/common/Utils;->g0(Landroid/content/Context;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v7

    .line 325
    invoke-static {v2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 326
    .line 327
    .line 328
    move-result v7

    .line 329
    if-eqz v7, :cond_8

    .line 330
    .line 331
    goto :goto_7

    .line 332
    :cond_8
    const-string v7, "miui.intent.action.MONTH_CHANGED_NEXT"

    .line 333
    .line 334
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result v8

    .line 338
    const v11, 0x7f0a0404

    .line 339
    .line 340
    .line 341
    if-nez v8, :cond_b

    .line 342
    .line 343
    const-string v8, "miui.intent.action.MONTH_CHANGED_PREV"

    .line 344
    .line 345
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result v8

    .line 349
    if-eqz v8, :cond_9

    .line 350
    .line 351
    goto :goto_5

    .line 352
    :cond_9
    const-string v7, "miui.intent.action.MONTH_VIEW_REFRESH"

    .line 353
    .line 354
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v2

    .line 358
    if-eqz v2, :cond_a

    .line 359
    .line 360
    if-eqz v3, :cond_e

    .line 361
    .line 362
    iget-object v1, v0, Lcom/android/calendar/widget/MonthWidgetProvider;->b:Landroid/appwidget/AppWidgetManager;

    .line 363
    .line 364
    invoke-virtual {v1, v3, v11}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    .line 365
    .line 366
    .line 367
    goto :goto_8

    .line 368
    :cond_a
    const/4 v2, 0x0

    .line 369
    sput v2, Lcom/android/calendar/widget/MonthWidgetProvider;->e:I

    .line 370
    .line 371
    invoke-super/range {p0 .. p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 372
    .line 373
    .line 374
    goto :goto_8

    .line 375
    :cond_b
    :goto_5
    sget-object v8, Lcom/android/calendar/widget/MonthWidgetProvider;->g:Ljava/util/Timer;

    .line 376
    .line 377
    invoke-virtual {v8}, Ljava/util/Timer;->cancel()V

    .line 378
    .line 379
    .line 380
    new-instance v8, Ljava/util/Timer;

    .line 381
    .line 382
    invoke-direct {v8}, Ljava/util/Timer;-><init>()V

    .line 383
    .line 384
    .line 385
    sput-object v8, Lcom/android/calendar/widget/MonthWidgetProvider;->g:Ljava/util/Timer;

    .line 386
    .line 387
    new-instance v8, Lcom/android/calendar/widget/MonthWidgetProvider$c;

    .line 388
    .line 389
    invoke-direct {v8, v0, v9}, Lcom/android/calendar/widget/MonthWidgetProvider$c;-><init>(Lcom/android/calendar/widget/MonthWidgetProvider;Lcom/android/calendar/widget/MonthWidgetProvider$a;)V

    .line 390
    .line 391
    .line 392
    sget-object v10, Lcom/android/calendar/widget/MonthWidgetProvider;->g:Ljava/util/Timer;

    .line 393
    .line 394
    const-wide/32 v12, 0x493e0

    .line 395
    .line 396
    .line 397
    invoke-virtual {v10, v8, v12, v13}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    move-result v2

    .line 404
    if-eqz v2, :cond_c

    .line 405
    .line 406
    sget v2, Lcom/android/calendar/widget/MonthWidgetProvider;->e:I

    .line 407
    .line 408
    add-int/lit8 v2, v2, 0x1

    .line 409
    .line 410
    sput v2, Lcom/android/calendar/widget/MonthWidgetProvider;->e:I

    .line 411
    .line 412
    goto :goto_6

    .line 413
    :cond_c
    sget v2, Lcom/android/calendar/widget/MonthWidgetProvider;->e:I

    .line 414
    .line 415
    add-int/lit8 v2, v2, -0x1

    .line 416
    .line 417
    sput v2, Lcom/android/calendar/widget/MonthWidgetProvider;->e:I

    .line 418
    .line 419
    :goto_6
    if-eqz v3, :cond_e

    .line 420
    .line 421
    iget-object v2, v0, Lcom/android/calendar/widget/MonthWidgetProvider;->b:Landroid/appwidget/AppWidgetManager;

    .line 422
    .line 423
    invoke-direct {v0, v1, v2, v3, v9}, Lcom/android/calendar/widget/MonthWidgetProvider;->i(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I[J)V

    .line 424
    .line 425
    .line 426
    iget-object v1, v0, Lcom/android/calendar/widget/MonthWidgetProvider;->b:Landroid/appwidget/AppWidgetManager;

    .line 427
    .line 428
    invoke-virtual {v1, v3, v11}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    .line 429
    .line 430
    .line 431
    goto :goto_8

    .line 432
    :cond_d
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/widget/MonthWidgetProvider;->j()V

    .line 433
    .line 434
    .line 435
    :cond_e
    :goto_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 436
    .line 437
    .line 438
    move-result-wide v1

    .line 439
    sub-long/2addr v1, v5

    .line 440
    new-instance v3, Ljava/lang/StringBuilder;

    .line 441
    .line 442
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 443
    .line 444
    .line 445
    const-string v5, "onReceive() end, cost "

    .line 446
    .line 447
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    const-string v1, "ms"

    .line 454
    .line 455
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    invoke-static {v4, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    return-void
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

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/calendar/widget/MonthWidgetProvider;->i(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I[J)V

    .line 3
    .line 4
    .line 5
    const p1, 0x7f0a0404

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2, p3, p1}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    .line 9
    .line 10
    .line 11
    const p1, 0x7f0a0280

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, p3, p1}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    .line 15
    .line 16
    .line 17
    return-void
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
.end method

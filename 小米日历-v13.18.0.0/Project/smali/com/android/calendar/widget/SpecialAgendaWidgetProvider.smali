.class public Lcom/android/calendar/widget/SpecialAgendaWidgetProvider;
.super Lcom/android/calendar/widget/base/BaseWidgetProvider;
.source "SpecialAgendaWidgetProvider.java"


# static fields
.field private static final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/calendar/widget/SpecialAgendaWidgetProvider;->c:Ljava/lang/Object;

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

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/widget/base/BaseWidgetProvider;-><init>()V

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

.method private l(Landroid/content/Context;Ljava/util/List;Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)Landroid/widget/RemoteViews;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/calendar/widget/a$b;",
            ">;",
            "Landroid/util/SparseIntArray;",
            "Landroid/util/SparseIntArray;",
            "Landroid/util/SparseIntArray;",
            ")",
            "Landroid/widget/RemoteViews;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v10, p3

    .line 6
    .line 7
    move-object/from16 v11, p4

    .line 8
    .line 9
    const-string v2, "Cal:D:SpecialAgendaWidgetProvider"

    .line 10
    .line 11
    const-string v3, "buildUpdate"

    .line 12
    .line 13
    invoke-static {v2, v3}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v12, Lcom/android/calendar/widget/SpecialAgendaWidgetProvider;->c:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v12

    .line 19
    :try_start_0
    new-instance v13, Landroid/widget/RemoteViews;

    .line 20
    .line 21
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const v3, 0x7f0d0220

    .line 26
    .line 27
    .line 28
    invoke-direct {v13, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Lcom/miui/calendar/util/r0;

    .line 32
    .line 33
    invoke-static/range {p1 .. p1}, Lcom/android/calendar/common/Utils;->U(Landroid/content/Context;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-direct {v2, v3}, Lcom/miui/calendar/util/r0;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/miui/calendar/util/r0;->M()V

    .line 41
    .line 42
    .line 43
    const/4 v3, 0x1

    .line 44
    invoke-virtual {v2, v3}, Lcom/miui/calendar/util/r0;->P(Z)J

    .line 45
    .line 46
    .line 47
    move-result-wide v4

    .line 48
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    invoke-virtual {v6, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 53
    .line 54
    .line 55
    const/4 v4, 0x5

    .line 56
    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    const/4 v14, 0x2

    .line 65
    invoke-virtual {v6, v14}, Ljava/util/Calendar;->get(I)I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    add-int/2addr v5, v3

    .line 70
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    const v6, 0x7f1205c2

    .line 75
    .line 76
    .line 77
    new-array v7, v14, [Ljava/lang/Object;

    .line 78
    .line 79
    const/4 v15, 0x0

    .line 80
    aput-object v5, v7, v15

    .line 81
    .line 82
    aput-object v4, v7, v3

    .line 83
    .line 84
    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v2}, Lcom/miui/calendar/util/r0;->t()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    add-int/2addr v2, v3

    .line 93
    const/16 v3, 0x14

    .line 94
    .line 95
    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    const v9, 0x7f0a057f

    .line 100
    .line 101
    .line 102
    invoke-virtual {v13, v9, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 103
    .line 104
    .line 105
    const v7, 0x7f0a057e

    .line 106
    .line 107
    .line 108
    invoke-virtual {v13, v7, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 109
    .line 110
    .line 111
    invoke-static/range {p1 .. p1}, Lf2/d;->c(Landroid/content/Context;)Landroid/content/Intent;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    const/high16 v8, 0xc000000

    .line 116
    .line 117
    invoke-static {v0, v15, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    const v3, 0x7f0a057d

    .line 122
    .line 123
    .line 124
    invoke-virtual {v13, v3, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 125
    .line 126
    .line 127
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    const v5, 0x7f0a0580

    .line 132
    .line 133
    .line 134
    if-eqz v3, :cond_0

    .line 135
    .line 136
    invoke-virtual {v13, v5, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_0
    const/16 v3, 0x8

    .line 141
    .line 142
    invoke-virtual {v13, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 143
    .line 144
    .line 145
    :goto_0
    invoke-virtual {v13, v5, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 146
    .line 147
    .line 148
    move v6, v15

    .line 149
    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    if-ge v6, v2, :cond_2

    .line 154
    .line 155
    move-object/from16 v3, p2

    .line 156
    .line 157
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    check-cast v2, Lcom/android/calendar/widget/a$b;

    .line 162
    .line 163
    invoke-virtual {v10, v6}, Landroid/util/SparseIntArray;->get(I)I

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    invoke-virtual {v13, v4, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v11, v6}, Landroid/util/SparseIntArray;->get(I)I

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    iget-object v5, v2, Lcom/android/calendar/widget/a$b;->f:Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {v13, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 177
    .line 178
    .line 179
    move-object/from16 v5, p5

    .line 180
    .line 181
    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->get(I)I

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    iget-object v7, v2, Lcom/android/calendar/widget/a$b;->m:Ljava/lang/String;

    .line 186
    .line 187
    invoke-virtual {v13, v4, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 188
    .line 189
    .line 190
    iget-boolean v4, v1, Lcom/android/calendar/widget/base/BaseWidgetProvider;->a:Z

    .line 191
    .line 192
    if-nez v4, :cond_1

    .line 193
    .line 194
    invoke-virtual {v11, v6}, Landroid/util/SparseIntArray;->get(I)I

    .line 195
    .line 196
    .line 197
    move-result v4

    .line 198
    const v7, 0x7f060590

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v7}, Landroid/content/Context;->getColor(I)I

    .line 202
    .line 203
    .line 204
    move-result v7

    .line 205
    invoke-virtual {v13, v4, v7}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 206
    .line 207
    .line 208
    :cond_1
    iget-wide v8, v2, Lcom/android/calendar/widget/a$b;->h:J

    .line 209
    .line 210
    iget-wide v14, v2, Lcom/android/calendar/widget/a$b;->i:J

    .line 211
    .line 212
    move-wide/from16 v16, v8

    .line 213
    .line 214
    iget-wide v7, v2, Lcom/android/calendar/widget/a$b;->j:J

    .line 215
    .line 216
    iget v9, v2, Lcom/android/calendar/widget/a$b;->p:I

    .line 217
    .line 218
    move-object/from16 v2, p1

    .line 219
    .line 220
    move-wide/from16 v3, v16

    .line 221
    .line 222
    move v11, v6

    .line 223
    move-wide v5, v14

    .line 224
    const/high16 v14, 0xc000000

    .line 225
    .line 226
    const v15, 0x7f0a057e

    .line 227
    .line 228
    .line 229
    const v15, 0x7f0a057f

    .line 230
    .line 231
    .line 232
    invoke-static/range {v2 .. v9}, Lf2/d;->a(Landroid/content/Context;JJJI)Landroid/content/Intent;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    invoke-virtual {v10, v11}, Landroid/util/SparseIntArray;->get(I)I

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    add-int/lit16 v6, v11, 0x3e9

    .line 241
    .line 242
    invoke-static {v0, v6, v2, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    invoke-virtual {v13, v3, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 247
    .line 248
    .line 249
    add-int/lit8 v6, v11, 0x1

    .line 250
    .line 251
    move-object/from16 v11, p4

    .line 252
    .line 253
    move v8, v14

    .line 254
    move v9, v15

    .line 255
    const v5, 0x7f0a0580

    .line 256
    .line 257
    .line 258
    const v7, 0x7f0a057e

    .line 259
    .line 260
    .line 261
    const/4 v14, 0x2

    .line 262
    const/4 v15, 0x0

    .line 263
    goto :goto_1

    .line 264
    :cond_2
    move v15, v9

    .line 265
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    :goto_2
    const/4 v3, 0x3

    .line 270
    if-ge v2, v3, :cond_3

    .line 271
    .line 272
    invoke-virtual {v10, v2}, Landroid/util/SparseIntArray;->get(I)I

    .line 273
    .line 274
    .line 275
    move-result v3

    .line 276
    const/4 v4, 0x4

    .line 277
    invoke-virtual {v13, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 278
    .line 279
    .line 280
    add-int/lit8 v2, v2, 0x1

    .line 281
    .line 282
    goto :goto_2

    .line 283
    :cond_3
    iget-boolean v2, v1, Lcom/android/calendar/widget/base/BaseWidgetProvider;->a:Z

    .line 284
    .line 285
    if-nez v2, :cond_4

    .line 286
    .line 287
    const v2, 0x7f060591

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    invoke-virtual {v13, v15, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 295
    .line 296
    .line 297
    const v2, 0x7f060592

    .line 298
    .line 299
    .line 300
    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    const v3, 0x7f0a057e

    .line 305
    .line 306
    .line 307
    invoke-virtual {v13, v3, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 308
    .line 309
    .line 310
    const v2, 0x7f060552

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    .line 314
    .line 315
    .line 316
    move-result v2

    .line 317
    const v3, 0x7f0a0580

    .line 318
    .line 319
    .line 320
    invoke-virtual {v13, v3, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 321
    .line 322
    .line 323
    const/4 v2, 0x2

    .line 324
    invoke-static {v0, v13, v2}, Lf2/c;->f(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    .line 325
    .line 326
    .line 327
    :cond_4
    monitor-exit v12

    .line 328
    return-object v13

    .line 329
    :catchall_0
    move-exception v0

    .line 330
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    throw v0
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

.method private static n(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/List;)Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Calendar;",
            "Ljava/util/List<",
            "Lcom/android/calendar/common/event/schema/Event;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/calendar/widget/a$b;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    if-eqz v5, :cond_7

    .line 20
    .line 21
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    check-cast v5, Lcom/android/calendar/common/event/schema/Event;

    .line 26
    .line 27
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    if-lt v6, v3, :cond_0

    .line 32
    .line 33
    goto/16 :goto_5

    .line 34
    .line 35
    :cond_0
    instance-of v7, v5, Lcom/android/calendar/common/event/schema/AnniversaryEvent;

    .line 36
    .line 37
    const-string v8, ""

    .line 38
    .line 39
    const-string v9, " endTime : "

    .line 40
    .line 41
    const-string v10, " startTime : "

    .line 42
    .line 43
    const-string v11, " tagString : "

    .line 44
    .line 45
    const-string v12, " content : "

    .line 46
    .line 47
    const-string v13, "Cal:D:SpecialAgendaWidgetProvider"

    .line 48
    .line 49
    const-wide/16 v14, 0x0

    .line 50
    .line 51
    const/16 v16, 0x0

    .line 52
    .line 53
    if-eqz v7, :cond_2

    .line 54
    .line 55
    invoke-virtual {v5}, Lcom/android/calendar/common/event/schema/Event;->getEventType()I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    const/16 v6, 0x8

    .line 60
    .line 61
    if-ne v7, v6, :cond_2

    .line 62
    .line 63
    move-object v6, v5

    .line 64
    check-cast v6, Lcom/android/calendar/common/event/schema/AnniversaryEvent;

    .line 65
    .line 66
    invoke-virtual {v6}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 67
    .line 68
    .line 69
    move-result-wide v14

    .line 70
    invoke-virtual {v6, v0}, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->getDateString(Landroid/content/Context;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    invoke-virtual {v6}, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->getContent()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 79
    .line 80
    .line 81
    move-result-object v17

    .line 82
    move-object/from16 v18, v4

    .line 83
    .line 84
    invoke-virtual/range {v17 .. v17}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 85
    .line 86
    .line 87
    move-result-wide v3

    .line 88
    move-wide/from16 v20, v14

    .line 89
    .line 90
    invoke-virtual {v6}, Lcom/android/calendar/common/event/schema/Event;->getEndTimeMillis()J

    .line 91
    .line 92
    .line 93
    move-result-wide v14

    .line 94
    invoke-virtual {v6}, Lcom/android/calendar/common/event/schema/Event;->isAllDay()Z

    .line 95
    .line 96
    .line 97
    move-result v17

    .line 98
    invoke-virtual {v6}, Lcom/android/calendar/common/event/schema/Event;->getEventType()I

    .line 99
    .line 100
    .line 101
    move-result v22

    .line 102
    move-object/from16 v23, v2

    .line 103
    .line 104
    invoke-virtual {v6, v1}, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->calAnniversary(Ljava/util/Calendar;)I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-lez v2, :cond_1

    .line 109
    .line 110
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    move-object/from16 v24, v5

    .line 115
    .line 116
    const/4 v0, 0x1

    .line 117
    new-array v5, v0, [Ljava/lang/Object;

    .line 118
    .line 119
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v19

    .line 123
    aput-object v19, v5, v16

    .line 124
    .line 125
    const v0, 0x7f100015

    .line 126
    .line 127
    .line 128
    invoke-virtual {v6, v0, v2, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    goto :goto_1

    .line 133
    :cond_1
    move-object/from16 v24, v5

    .line 134
    .line 135
    invoke-virtual {v6, v1}, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->calDays(Ljava/util/Calendar;)I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    const/4 v6, 0x1

    .line 144
    new-array v5, v6, [Ljava/lang/Object;

    .line 145
    .line 146
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    aput-object v6, v5, v16

    .line 151
    .line 152
    const v6, 0x7f100012

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2, v6, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    const-string v5, "AnniversaryEvent dataString : "

    .line 165
    .line 166
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    invoke-static {v13, v2}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    move/from16 v6, v22

    .line 204
    .line 205
    move-object/from16 v5, v24

    .line 206
    .line 207
    move-wide/from16 v25, v14

    .line 208
    .line 209
    move-wide/from16 v14, v20

    .line 210
    .line 211
    move-wide/from16 v20, v25

    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_2
    move-object/from16 v23, v2

    .line 215
    .line 216
    move-object/from16 v18, v4

    .line 217
    .line 218
    move-object/from16 v24, v5

    .line 219
    .line 220
    move-object v0, v8

    .line 221
    move-wide v3, v14

    .line 222
    move-wide/from16 v20, v3

    .line 223
    .line 224
    move/from16 v17, v16

    .line 225
    .line 226
    move-object/from16 v5, v24

    .line 227
    .line 228
    const/4 v6, -0x1

    .line 229
    :goto_2
    instance-of v2, v5, Lcom/android/calendar/common/event/schema/CountdownEvent;

    .line 230
    .line 231
    if-eqz v2, :cond_4

    .line 232
    .line 233
    invoke-virtual {v5}, Lcom/android/calendar/common/event/schema/Event;->getEventType()I

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    const/16 v7, 0x9

    .line 238
    .line 239
    if-ne v2, v7, :cond_4

    .line 240
    .line 241
    move-object v0, v5

    .line 242
    check-cast v0, Lcom/android/calendar/common/event/schema/CountdownEvent;

    .line 243
    .line 244
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 245
    .line 246
    .line 247
    move-result-wide v14

    .line 248
    move-object/from16 v2, p0

    .line 249
    .line 250
    invoke-virtual {v0, v2, v1}, Lcom/android/calendar/common/event/schema/CountdownEvent;->getDateString(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    const v4, 0x7f1205c8

    .line 255
    .line 256
    .line 257
    const/4 v6, 0x1

    .line 258
    new-array v7, v6, [Ljava/lang/Object;

    .line 259
    .line 260
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/CountdownEvent;->getContent()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v6

    .line 264
    aput-object v6, v7, v16

    .line 265
    .line 266
    invoke-virtual {v2, v4, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v8

    .line 270
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 271
    .line 272
    .line 273
    move-result-object v4

    .line 274
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 275
    .line 276
    .line 277
    move-result-wide v6

    .line 278
    move-wide/from16 v20, v14

    .line 279
    .line 280
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/CountdownEvent;->getTimeMillis()J

    .line 281
    .line 282
    .line 283
    move-result-wide v14

    .line 284
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->isAllDay()Z

    .line 285
    .line 286
    .line 287
    move-result v17

    .line 288
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEventType()I

    .line 289
    .line 290
    .line 291
    move-result v4

    .line 292
    invoke-virtual {v0, v1}, Lcom/android/calendar/common/event/schema/CountdownEvent;->calDays(Ljava/util/Calendar;)I

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    if-nez v0, :cond_3

    .line 297
    .line 298
    const v0, 0x7f120138

    .line 299
    .line 300
    .line 301
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    move/from16 p2, v4

    .line 306
    .line 307
    goto :goto_3

    .line 308
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    move/from16 p2, v4

    .line 313
    .line 314
    const/4 v4, 0x1

    .line 315
    new-array v4, v4, [Ljava/lang/Object;

    .line 316
    .line 317
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 318
    .line 319
    .line 320
    move-result-object v19

    .line 321
    aput-object v19, v4, v16

    .line 322
    .line 323
    const v2, 0x7f100058

    .line 324
    .line 325
    .line 326
    invoke-virtual {v1, v2, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 331
    .line 332
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    .line 334
    .line 335
    const-string v2, "CountdownEvent dataString : "

    .line 336
    .line 337
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    invoke-static {v13, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    move-wide v3, v6

    .line 375
    move/from16 v6, p2

    .line 376
    .line 377
    move-wide/from16 v25, v14

    .line 378
    .line 379
    move-wide/from16 v14, v20

    .line 380
    .line 381
    move-wide/from16 v20, v25

    .line 382
    .line 383
    :cond_4
    instance-of v1, v5, Lcom/android/calendar/common/event/schema/BirthdayEvent;

    .line 384
    .line 385
    if-eqz v1, :cond_6

    .line 386
    .line 387
    invoke-virtual {v5}, Lcom/android/calendar/common/event/schema/Event;->getEventType()I

    .line 388
    .line 389
    .line 390
    move-result v1

    .line 391
    const/4 v2, 0x7

    .line 392
    if-ne v1, v2, :cond_6

    .line 393
    .line 394
    check-cast v5, Lcom/android/calendar/common/event/schema/BirthdayEvent;

    .line 395
    .line 396
    invoke-virtual {v5}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 397
    .line 398
    .line 399
    move-result-wide v14

    .line 400
    move-object/from16 v1, p0

    .line 401
    .line 402
    invoke-virtual {v5, v1}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->getDateString(Landroid/content/Context;)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    invoke-virtual {v5}, Lcom/android/calendar/common/event/schema/Event;->getTitle()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v8

    .line 410
    invoke-virtual {v5}, Lcom/android/calendar/common/event/schema/Event;->getStartTimeMillis()J

    .line 411
    .line 412
    .line 413
    move-result-wide v3

    .line 414
    invoke-virtual {v5}, Lcom/android/calendar/common/event/schema/Event;->getEndTimeMillis()J

    .line 415
    .line 416
    .line 417
    move-result-wide v6

    .line 418
    invoke-virtual {v5}, Lcom/android/calendar/common/event/schema/Event;->isAllDay()Z

    .line 419
    .line 420
    .line 421
    move-result v17

    .line 422
    invoke-virtual {v5}, Lcom/android/calendar/common/event/schema/Event;->getEventType()I

    .line 423
    .line 424
    .line 425
    move-result v2

    .line 426
    move/from16 p2, v2

    .line 427
    .line 428
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 429
    .line 430
    .line 431
    move-result-object v2

    .line 432
    move-wide/from16 v19, v14

    .line 433
    .line 434
    invoke-virtual {v5}, Lcom/android/calendar/common/event/schema/Event;->getStartTimeMillis()J

    .line 435
    .line 436
    .line 437
    move-result-wide v14

    .line 438
    invoke-virtual {v2, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 439
    .line 440
    .line 441
    invoke-static {v1, v2, v5}, Lr1/a;->h(Landroid/content/Context;Ljava/util/Calendar;Lcom/android/calendar/common/event/schema/BirthdayEvent;)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v2

    .line 445
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 446
    .line 447
    .line 448
    move-result v5

    .line 449
    if-eqz v5, :cond_5

    .line 450
    .line 451
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 452
    .line 453
    .line 454
    move-result-object v2

    .line 455
    const v5, 0x7f1206e7

    .line 456
    .line 457
    .line 458
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v2

    .line 462
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    .line 463
    .line 464
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 465
    .line 466
    .line 467
    const-string v14, "BirthdayEvent dataString : "

    .line 468
    .line 469
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    invoke-static {v13, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    move-object v0, v2

    .line 507
    move-wide v9, v6

    .line 508
    move/from16 v2, v17

    .line 509
    .line 510
    move-wide/from16 v14, v19

    .line 511
    .line 512
    move/from16 v6, p2

    .line 513
    .line 514
    goto :goto_4

    .line 515
    :cond_6
    move-object/from16 v1, p0

    .line 516
    .line 517
    move/from16 v2, v17

    .line 518
    .line 519
    move-wide/from16 v9, v20

    .line 520
    .line 521
    :goto_4
    new-instance v5, Lcom/android/calendar/widget/a$b;

    .line 522
    .line 523
    invoke-direct {v5}, Lcom/android/calendar/widget/a$b;-><init>()V

    .line 524
    .line 525
    .line 526
    iput-wide v14, v5, Lcom/android/calendar/widget/a$b;->h:J

    .line 527
    .line 528
    iput-object v8, v5, Lcom/android/calendar/widget/a$b;->f:Ljava/lang/String;

    .line 529
    .line 530
    iput-object v0, v5, Lcom/android/calendar/widget/a$b;->m:Ljava/lang/String;

    .line 531
    .line 532
    iput-wide v3, v5, Lcom/android/calendar/widget/a$b;->i:J

    .line 533
    .line 534
    iput-wide v9, v5, Lcom/android/calendar/widget/a$b;->j:J

    .line 535
    .line 536
    iput-boolean v2, v5, Lcom/android/calendar/widget/a$b;->k:Z

    .line 537
    .line 538
    iput v6, v5, Lcom/android/calendar/widget/a$b;->p:I

    .line 539
    .line 540
    move-object/from16 v0, v23

    .line 541
    .line 542
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    .line 544
    .line 545
    move-object v2, v0

    .line 546
    move-object v0, v1

    .line 547
    move-object/from16 v4, v18

    .line 548
    .line 549
    const/4 v3, 0x3

    .line 550
    move-object/from16 v1, p1

    .line 551
    .line 552
    goto/16 :goto_0

    .line 553
    .line 554
    :cond_7
    :goto_5
    move-object v0, v2

    .line 555
    return-object v0
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

.method private o(Landroid/content/Context;I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "updateAppWidget(): appWidgetId:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "Cal:D:SpecialAgendaWidgetProvider"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/widget/SpecialAgendaWidgetProvider;->m(Landroid/content/Context;I)V

    .line 24
    .line 25
    .line 26
    return-void
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


# virtual methods
.method protected e()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/calendar/widget/base/BaseWidgetProvider;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/android/calendar/widget/SpecialAgendaWidgetProvider;

    .line 2
    .line 3
    return-object v0
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

.method protected k(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/widget/SpecialAgendaWidgetProvider;->o(Landroid/content/Context;I)V

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
.end method

.method public m(Landroid/content/Context;I)V
    .locals 6

    .line 1
    new-instance v3, Landroid/util/SparseIntArray;

    .line 2
    .line 3
    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v4, Landroid/util/SparseIntArray;

    .line 7
    .line 8
    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v5, Landroid/util/SparseIntArray;

    .line 12
    .line 13
    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    const v0, 0x7f0a0584

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, p2, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    const v1, 0x7f0a0585

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x2

    .line 31
    const v2, 0x7f0a0586

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 35
    .line 36
    .line 37
    const v2, 0x7f0a058e

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, p2, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 41
    .line 42
    .line 43
    const v2, 0x7f0a058f

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 47
    .line 48
    .line 49
    const v2, 0x7f0a0590

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 53
    .line 54
    .line 55
    const v2, 0x7f0a058a

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5, p2, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 59
    .line 60
    .line 61
    const p2, 0x7f0a058b

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5, v0, p2}, Landroid/util/SparseIntArray;->append(II)V

    .line 65
    .line 66
    .line 67
    const p2, 0x7f0a058c

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5, v1, p2}, Landroid/util/SparseIntArray;->append(II)V

    .line 71
    .line 72
    .line 73
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-static {p1, p2, v0}, Lf2/j;->m(Landroid/content/Context;Ljava/util/Calendar;Z)Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {p1, p2, v0}, Lcom/android/calendar/widget/SpecialAgendaWidgetProvider;->n(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/List;)Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    move-object v0, p0

    .line 86
    move-object v1, p1

    .line 87
    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/widget/SpecialAgendaWidgetProvider;->l(Landroid/content/Context;Ljava/util/List;Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)Landroid/widget/RemoteViews;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    new-instance v0, Landroid/content/ComponentName;

    .line 92
    .line 93
    const-class v1, Lcom/android/calendar/widget/SpecialAgendaWidgetProvider;

    .line 94
    .line 95
    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .line 97
    .line 98
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1, v0, p2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 103
    .line 104
    .line 105
    return-void
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

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/calendar/widget/base/BaseWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

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
.end method

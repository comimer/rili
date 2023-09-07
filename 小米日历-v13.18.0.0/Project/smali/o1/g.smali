.class public Lo1/g;
.super Ljava/lang/Object;
.source "AlertUtils.java"


# direct methods
.method public static a(Landroid/content/Context;JJJI)Landroid/content/Intent;
    .locals 11

    .line 1
    move-object v6, p0

    .line 2
    move-wide v7, p1

    .line 3
    move/from16 v9, p7

    .line 4
    .line 5
    const/high16 v10, 0x10000000

    .line 6
    .line 7
    const/4 v0, 0x6

    .line 8
    if-ne v9, v0, :cond_0

    .line 9
    .line 10
    invoke-static {p0, p1, p2}, Ls1/h;->a(Landroid/content/Context;J)Lcom/android/calendar/common/event/schema/ThirdPartyEvent;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/ThirdPartyEvent;->getUrl()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/ThirdPartyEvent;->getUrl()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/ThirdPartyEvent;->getPackageName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {p0, v1, v2, v0, v10}, Lcom/android/calendar/common/Utils;->G(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_0
    const/16 v0, 0xa

    .line 43
    .line 44
    if-ne v9, v0, :cond_2

    .line 45
    .line 46
    invoke-static {p0, p1, p2}, Ls1/d;->g(Landroid/content/Context;J)Ljava/util/HashMap;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "thirdPartyNotificationType"

    .line 51
    .line 52
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-nez v2, :cond_1

    .line 63
    .line 64
    sget-object v2, Lcom/miui/calendar/thirdparty/EventInfo;->NOTIFICATION_TYPE_DETAIL:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_2

    .line 71
    .line 72
    :cond_1
    const-string v1, "thirdPartyIntentData"

    .line 73
    .line 74
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    move-object v2, v1

    .line 79
    check-cast v2, Ljava/lang/String;

    .line 80
    .line 81
    const-string v1, "thirdPartyIntentAction"

    .line 82
    .line 83
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Ljava/lang/String;

    .line 88
    .line 89
    const-string v3, "thirdPartyIntentPackageName"

    .line 90
    .line 91
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    check-cast v3, Ljava/lang/String;

    .line 96
    .line 97
    const-string v4, "thirdPartyIntentData2"

    .line 98
    .line 99
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    move-object v5, v0

    .line 104
    check-cast v5, Ljava/lang/String;

    .line 105
    .line 106
    const/high16 v4, 0x10000000

    .line 107
    .line 108
    move-object v0, p0

    .line 109
    invoke-static/range {v0 .. v5}, Lcom/miui/calendar/thirdparty/d;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    if-eqz v0, :cond_2

    .line 114
    .line 115
    return-object v0

    .line 116
    :cond_2
    const/4 v0, 0x3

    .line 117
    const-string v1, "com.android.calendar"

    .line 118
    .line 119
    if-ne v9, v0, :cond_3

    .line 120
    .line 121
    new-instance v0, Lcom/android/calendar/common/event/schema/CreditEvent;

    .line 122
    .line 123
    invoke-direct {v0}, Lcom/android/calendar/common/event/schema/CreditEvent;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/common/event/schema/Event;->setId(J)V

    .line 127
    .line 128
    .line 129
    invoke-static {p0, v0}, Lcom/android/calendar/common/Utils;->Z(Landroid/content/Context;Lcom/android/calendar/common/event/schema/CreditEvent;)Landroid/content/Intent;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 137
    .line 138
    .line 139
    return-object v0

    .line 140
    :cond_3
    const/16 v0, 0x9

    .line 141
    .line 142
    const/high16 v2, 0x14000000

    .line 143
    .line 144
    if-ne v9, v0, :cond_4

    .line 145
    .line 146
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-static {p0, p1, p2, v0}, Lw1/b;->a(Landroid/content/Context;JLjava/util/Calendar;)Landroid/content/Intent;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 155
    .line 156
    .line 157
    return-object v0

    .line 158
    :cond_4
    const/16 v0, 0x8

    .line 159
    .line 160
    if-ne v9, v0, :cond_5

    .line 161
    .line 162
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-static {p0, p1, p2, v0}, Lp1/b;->a(Landroid/content/Context;JLjava/util/Calendar;)Landroid/content/Intent;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 171
    .line 172
    .line 173
    return-object v0

    .line 174
    :cond_5
    const/16 v0, 0xb

    .line 175
    .line 176
    if-ne v9, v0, :cond_6

    .line 177
    .line 178
    new-instance v0, Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 179
    .line 180
    invoke-direct {v0}, Lcom/android/calendar/common/event/schema/FlightEvent;-><init>()V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/common/event/schema/Event;->setId(J)V

    .line 184
    .line 185
    .line 186
    invoke-static {v0}, Lt1/a;->e(Lcom/android/calendar/common/event/schema/Event;)Landroid/content/Intent;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 194
    .line 195
    .line 196
    return-object v0

    .line 197
    :cond_6
    const/16 v0, 0xc

    .line 198
    .line 199
    if-ne v9, v0, :cond_7

    .line 200
    .line 201
    new-instance v0, Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 202
    .line 203
    invoke-direct {v0}, Lcom/android/calendar/common/event/schema/TrainEvent;-><init>()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/common/event/schema/Event;->setId(J)V

    .line 207
    .line 208
    .line 209
    invoke-static {v0}, Lt1/a;->j(Lcom/android/calendar/common/event/schema/Event;)Landroid/content/Intent;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 217
    .line 218
    .line 219
    return-object v0

    .line 220
    :cond_7
    const/16 v0, 0x11

    .line 221
    .line 222
    if-ne v9, v0, :cond_8

    .line 223
    .line 224
    new-instance v0, Lcom/android/calendar/common/event/schema/MovieEvent;

    .line 225
    .line 226
    invoke-direct {v0}, Lcom/android/calendar/common/event/schema/MovieEvent;-><init>()V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/common/event/schema/Event;->setId(J)V

    .line 230
    .line 231
    .line 232
    invoke-static {v0}, Lt1/a;->i(Lcom/android/calendar/common/event/schema/Event;)Landroid/content/Intent;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 240
    .line 241
    .line 242
    return-object v0

    .line 243
    :cond_8
    const/16 v0, 0xf

    .line 244
    .line 245
    if-ne v9, v0, :cond_9

    .line 246
    .line 247
    new-instance v0, Lcom/android/calendar/common/event/schema/HotelEvent;

    .line 248
    .line 249
    invoke-direct {v0}, Lcom/android/calendar/common/event/schema/HotelEvent;-><init>()V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/common/event/schema/Event;->setId(J)V

    .line 253
    .line 254
    .line 255
    invoke-static {v0}, Lt1/a;->g(Lcom/android/calendar/common/event/schema/Event;)Landroid/content/Intent;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 263
    .line 264
    .line 265
    return-object v0

    .line 266
    :cond_9
    const/16 v0, 0xe

    .line 267
    .line 268
    if-ne v9, v0, :cond_a

    .line 269
    .line 270
    new-instance v0, Lcom/android/calendar/common/event/schema/GasBillEvent;

    .line 271
    .line 272
    invoke-direct {v0}, Lcom/android/calendar/common/event/schema/GasBillEvent;-><init>()V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/common/event/schema/Event;->setId(J)V

    .line 276
    .line 277
    .line 278
    invoke-static {v0}, Lt1/a;->f(Lcom/android/calendar/common/event/schema/Event;)Landroid/content/Intent;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 286
    .line 287
    .line 288
    return-object v0

    .line 289
    :cond_a
    const/16 v0, 0x10

    .line 290
    .line 291
    if-ne v9, v0, :cond_b

    .line 292
    .line 293
    new-instance v0, Lcom/android/calendar/common/event/schema/LoanEvent;

    .line 294
    .line 295
    invoke-direct {v0}, Lcom/android/calendar/common/event/schema/LoanEvent;-><init>()V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/common/event/schema/Event;->setId(J)V

    .line 299
    .line 300
    .line 301
    invoke-static {v0}, Lt1/a;->h(Lcom/android/calendar/common/event/schema/Event;)Landroid/content/Intent;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 309
    .line 310
    .line 311
    return-object v0

    .line 312
    :cond_b
    new-instance v0, Lcom/android/calendar/common/j;

    .line 313
    .line 314
    invoke-direct {v0}, Lcom/android/calendar/common/j;-><init>()V

    .line 315
    .line 316
    .line 317
    iput-wide v7, v0, Lcom/android/calendar/common/j;->a:J

    .line 318
    .line 319
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    iput-object v1, v0, Lcom/android/calendar/common/j;->b:Ljava/util/Calendar;

    .line 324
    .line 325
    move-wide v3, p3

    .line 326
    invoke-virtual {v1, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 327
    .line 328
    .line 329
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    iput-object v1, v0, Lcom/android/calendar/common/j;->c:Ljava/util/Calendar;

    .line 334
    .line 335
    move-wide/from16 v3, p5

    .line 336
    .line 337
    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 338
    .line 339
    .line 340
    invoke-static {p0, v0, v9, v2}, Lcom/android/calendar/common/Utils;->a0(Landroid/content/Context;Lcom/android/calendar/common/j;II)Landroid/content/Intent;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    return-object v0
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

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    .line 1
    const-string v0, "preferences_popup_alert"

    .line 2
    .line 3
    const-string v1, "none"

    .line 4
    .line 5
    invoke-static {p0, v0, v1}, Lb2/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "all"

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    return v2

    .line 19
    :cond_0
    const-string v1, "smart"

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    new-array v0, v1, [Ljava/lang/String;

    .line 29
    .line 30
    const-string v3, "key_popup_alert_smart_types"

    .line 31
    .line 32
    invoke-static {p0, v3, v0}, Lb2/a;->e(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    array-length v0, p0

    .line 37
    move v3, v1

    .line 38
    :goto_0
    if-ge v3, v0, :cond_2

    .line 39
    .line 40
    aget-object v4, p0, v3

    .line 41
    .line 42
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_1

    .line 47
    .line 48
    return v2

    .line 49
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    return v1
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
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 1

    .line 1
    const-string v0, "preferences_alarm_alerts_vibrateWhen"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lo1/g;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
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

.method public static d(Landroid/content/Context;)Z
    .locals 1

    .line 1
    const-string v0, "preferences_alerts_vibrateWhen"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lo1/g;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
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

.method private static e(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Lb2/a;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string p1, "preferences_alerts_vibrate"

    .line 19
    .line 20
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    const p1, 0x7f12049f

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const p1, 0x7f12049e

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const p1, 0x7f12049d

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    :goto_0
    const-string v0, "always"

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const/4 v1, 0x1

    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    :goto_1
    move p0, v1

    .line 65
    goto :goto_2

    .line 66
    :cond_3
    const-string v0, "silent"

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-nez p1, :cond_5

    .line 73
    .line 74
    :cond_4
    move p0, v2

    .line 75
    goto :goto_2

    .line 76
    :cond_5
    const-string p1, "audio"

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    check-cast p0, Landroid/media/AudioManager;

    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    if-ne p0, v1, :cond_4

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :goto_2
    if-ne p0, v1, :cond_6

    .line 92
    .line 93
    move v2, v1

    .line 94
    :cond_6
    return v2
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

.method public static f(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/android/calendar/settings/ReminderModeActivity;->Z(Landroid/content/Context;)Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "getNotificationRingtone(): uri:"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "Cal:D:AlertUtils"

    .line 23
    .line 24
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object p0
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

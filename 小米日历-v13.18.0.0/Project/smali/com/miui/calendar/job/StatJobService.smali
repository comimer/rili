.class public Lcom/miui/calendar/job/StatJobService;
.super Lcom/miui/calendar/job/a;
.source "StatJobService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/calendar/job/StatJobService$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/miui/calendar/job/StatJobService;->d()Ld4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/miui/calendar/job/a;-><init>(Ld4/a;)V

    .line 6
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

.method public static d()Ld4/a;
    .locals 3

    .line 1
    new-instance v0, Ld4/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ld4/a;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/miui/calendar/job/StatJobService;

    .line 7
    .line 8
    iput-object v1, v0, Ld4/a;->a:Ljava/lang/Class;

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    iput v1, v0, Ld4/a;->b:I

    .line 12
    .line 13
    const-wide/32 v1, 0x4d3f6400

    .line 14
    .line 15
    .line 16
    iput-wide v1, v0, Ld4/a;->c:J

    .line 17
    .line 18
    const-wide v1, 0x9a7ec800L

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    iput-wide v1, v0, Ld4/a;->d:J

    .line 24
    .line 25
    const-wide/32 v1, 0x1499700

    .line 26
    .line 27
    .line 28
    iput-wide v1, v0, Ld4/a;->e:J

    .line 29
    .line 30
    const-string v1, "stat"

    .line 31
    .line 32
    iput-object v1, v0, Ld4/a;->f:Ljava/lang/String;

    .line 33
    .line 34
    const-string v1, "last_stat_job_millis"

    .line 35
    .line 36
    iput-object v1, v0, Ld4/a;->g:Ljava/lang/String;

    .line 37
    .line 38
    const-string v1, "Cal:D:StatJobService"

    .line 39
    .line 40
    iput-object v1, v0, Ld4/a;->h:Ljava/lang/String;

    .line 41
    .line 42
    return-object v0
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
.end method

.method public static e(Landroid/content/Context;)V
    .locals 11

    .line 1
    const-string v0, "@"

    .line 2
    .line 3
    const-class v1, Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, "Cal:D:StatJobService"

    .line 6
    .line 7
    const-string v3, "executeMiStatJob()"

    .line 8
    .line 9
    invoke-static {v2, v3}, Lcom/miui/calendar/util/z;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Lr1/a;->z(Landroid/content/Context;)I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    int-to-long v4, v4

    .line 17
    const-string v6, "birthday_count_created"

    .line 18
    .line 19
    invoke-static {v6, v4, v5}, Lcom/miui/calendar/util/g0;->h(Ljava/lang/String;J)V

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Lr1/a;->A(Landroid/content/Context;)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    int-to-long v4, v4

    .line 27
    const-string v6, "birthday_count_imported"

    .line 28
    .line 29
    invoke-static {v6, v4, v5}, Lcom/miui/calendar/util/g0;->h(Ljava/lang/String;J)V

    .line 30
    .line 31
    .line 32
    invoke-static {p0}, Lr1/a;->x(Landroid/content/Context;)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    int-to-long v4, v4

    .line 37
    const-string v6, "birthday_count_today_new"

    .line 38
    .line 39
    invoke-static {v6, v4, v5}, Lcom/miui/calendar/util/g0;->h(Ljava/lang/String;J)V

    .line 40
    .line 41
    .line 42
    invoke-static {p0}, Ls1/a;->b(Landroid/content/Context;)I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    int-to-long v4, v4

    .line 47
    const-string v6, "anniversary_count"

    .line 48
    .line 49
    invoke-static {v6, v4, v5}, Lcom/miui/calendar/util/g0;->h(Ljava/lang/String;J)V

    .line 50
    .line 51
    .line 52
    invoke-static {p0}, Ls1/c;->b(Landroid/content/Context;)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    int-to-long v4, v4

    .line 57
    const-string v6, "countdown_count"

    .line 58
    .line 59
    invoke-static {v6, v4, v5}, Lcom/miui/calendar/util/g0;->h(Ljava/lang/String;J)V

    .line 60
    .line 61
    .line 62
    const-string v4, "preferences_fortune_name"

    .line 63
    .line 64
    const-string v5, ""

    .line 65
    .line 66
    invoke-static {p0, v4, v5}, Lb2/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    const-string v5, "disabled"

    .line 75
    .line 76
    const-string v6, "enabled"

    .line 77
    .line 78
    if-eqz v4, :cond_0

    .line 79
    .line 80
    move-object v4, v5

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    move-object v4, v6

    .line 83
    :goto_0
    const-string v7, "fortune_set_ba_zi"

    .line 84
    .line 85
    invoke-static {v7, v4}, Lcom/miui/calendar/util/g0;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-static {p0}, Lcom/android/calendar/settings/j;->m(Landroid/content/Context;)Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    invoke-static {p0}, Lcom/android/calendar/settings/j;->n(Landroid/content/Context;)Z

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    const-string v8, "setting_reminder"

    .line 97
    .line 98
    if-eqz v4, :cond_2

    .line 99
    .line 100
    if-eqz v7, :cond_1

    .line 101
    .line 102
    const-string v4, "\u95f9\u949f\u63d0\u9192"

    .line 103
    .line 104
    invoke-static {v8, v4}, Lcom/miui/calendar/util/g0;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_1
    const-string v4, "\u901a\u77e5\u680f\u63d0\u9192"

    .line 109
    .line 110
    invoke-static {v8, v4}, Lcom/miui/calendar/util/g0;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_2
    const-string v4, "\u4e0d\u63d0\u9192"

    .line 115
    .line 116
    invoke-static {v8, v4}, Lcom/miui/calendar/util/g0;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :goto_1
    invoke-static {p0}, Lcom/android/calendar/settings/j;->l(Landroid/content/Context;)Z

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    if-eqz v4, :cond_3

    .line 124
    .line 125
    move-object v4, v6

    .line 126
    goto :goto_2

    .line 127
    :cond_3
    move-object v4, v5

    .line 128
    :goto_2
    const-string v7, "setting_chinese_calendar"

    .line 129
    .line 130
    invoke-static {v7, v4}, Lcom/miui/calendar/util/g0;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-static {p0}, Lcom/android/calendar/settings/j;->k(Landroid/content/Context;)Z

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    if-eqz v4, :cond_4

    .line 138
    .line 139
    move-object v4, v6

    .line 140
    goto :goto_3

    .line 141
    :cond_4
    move-object v4, v5

    .line 142
    :goto_3
    const-string v8, "enable_yiji"

    .line 143
    .line 144
    invoke-static {v8, v4}, Lcom/miui/calendar/util/g0;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-static {p0}, Lcom/android/calendar/settings/j;->g(Landroid/content/Context;)Z

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    if-eqz v4, :cond_5

    .line 152
    .line 153
    move-object v4, v6

    .line 154
    goto :goto_4

    .line 155
    :cond_5
    move-object v4, v5

    .line 156
    :goto_4
    const-string v8, "setting_content_promotion"

    .line 157
    .line 158
    invoke-static {v8, v4}, Lcom/miui/calendar/util/g0;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-static {p0}, Lcom/android/calendar/settings/j;->i(Landroid/content/Context;)Z

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    if-eqz v4, :cond_6

    .line 166
    .line 167
    move-object v4, v6

    .line 168
    goto :goto_5

    .line 169
    :cond_6
    move-object v4, v5

    .line 170
    :goto_5
    const-string v8, "setting_holiday_display"

    .line 171
    .line 172
    invoke-static {v8, v4}, Lcom/miui/calendar/util/g0;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-static {p0}, Lcom/android/calendar/settings/j;->j(Landroid/content/Context;)Z

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    if-eqz v4, :cond_7

    .line 180
    .line 181
    move-object v4, v6

    .line 182
    goto :goto_6

    .line 183
    :cond_7
    move-object v4, v5

    .line 184
    :goto_6
    const-string v8, "setting_holiday_reminder"

    .line 185
    .line 186
    invoke-static {v8, v4}, Lcom/miui/calendar/util/g0;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-static {p0}, Lcom/android/calendar/settings/j;->r(Landroid/content/Context;)Z

    .line 190
    .line 191
    .line 192
    move-result v4

    .line 193
    if-eqz v4, :cond_8

    .line 194
    .line 195
    move-object v4, v6

    .line 196
    goto :goto_7

    .line 197
    :cond_8
    move-object v4, v5

    .line 198
    :goto_7
    const-string v8, "setting_weather_service"

    .line 199
    .line 200
    invoke-static {v8, v4}, Lcom/miui/calendar/util/g0;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-static {p0}, Lcom/android/calendar/settings/j;->e(Landroid/content/Context;)Z

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    if-eqz v4, :cond_9

    .line 208
    .line 209
    move-object v4, v6

    .line 210
    goto :goto_8

    .line 211
    :cond_9
    move-object v4, v5

    .line 212
    :goto_8
    const-string v8, "setting_ai_time_parse"

    .line 213
    .line 214
    invoke-static {v8, v4}, Lcom/miui/calendar/util/g0;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-static {p0}, Lcom/android/calendar/settings/j;->f(Landroid/content/Context;)Z

    .line 218
    .line 219
    .line 220
    move-result v4

    .line 221
    if-eqz v4, :cond_a

    .line 222
    .line 223
    move-object v4, v6

    .line 224
    goto :goto_9

    .line 225
    :cond_a
    move-object v4, v5

    .line 226
    :goto_9
    invoke-static {v7, v4}, Lcom/miui/calendar/util/g0;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-static {p0}, Lcom/miui/calendar/limit/a;->i(Landroid/content/Context;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 234
    .line 235
    .line 236
    move-result v7

    .line 237
    if-nez v7, :cond_b

    .line 238
    .line 239
    const-string v7, "limit_setting_city"

    .line 240
    .line 241
    invoke-static {v7, v4}, Lcom/miui/calendar/util/g0;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    :cond_b
    invoke-static {p0}, Lcom/miui/calendar/limit/a;->c(Landroid/content/Context;)Z

    .line 245
    .line 246
    .line 247
    move-result v4

    .line 248
    if-eqz v4, :cond_c

    .line 249
    .line 250
    move-object v4, v6

    .line 251
    goto :goto_a

    .line 252
    :cond_c
    move-object v4, v5

    .line 253
    :goto_a
    const-string v7, "limit_setting_reminder"

    .line 254
    .line 255
    invoke-static {v7, v4}, Lcom/miui/calendar/util/g0;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-static {p0}, Lk4/d;->c(Landroid/content/Context;)Lcom/miui/calendar/shift/ShiftSchema;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    if-eqz v4, :cond_e

    .line 263
    .line 264
    iget-boolean v4, v4, Lcom/miui/calendar/shift/ShiftSchema;->isRemind:Z

    .line 265
    .line 266
    if-eqz v4, :cond_d

    .line 267
    .line 268
    move-object v5, v6

    .line 269
    :cond_d
    const-string v4, "shift_setting_reminder"

    .line 270
    .line 271
    invoke-static {v4, v5}, Lcom/miui/calendar/util/g0;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    :cond_e
    invoke-static {p0}, Lcom/miui/calendar/util/p0;->d(Landroid/content/Context;)Lcom/miui/calendar/util/p0;

    .line 275
    .line 276
    .line 277
    move-result-object v4

    .line 278
    sget-object v5, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 279
    .line 280
    invoke-virtual {v4, v5}, Lcom/miui/calendar/util/p0;->u(Landroid/net/Uri;)Lcom/miui/calendar/util/p0;

    .line 281
    .line 282
    .line 283
    move-result-object v4

    .line 284
    const-string v5, "account_name"

    .line 285
    .line 286
    const-string v6, "account_type"

    .line 287
    .line 288
    filled-new-array {v5, v6}, [Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v5

    .line 292
    invoke-virtual {v4, v5}, Lcom/miui/calendar/util/p0;->r([Ljava/lang/String;)Lcom/miui/calendar/util/p0;

    .line 293
    .line 294
    .line 295
    move-result-object v4

    .line 296
    const/4 v5, 0x2

    .line 297
    new-array v5, v5, [Ljava/lang/Class;

    .line 298
    .line 299
    const/4 v6, 0x0

    .line 300
    aput-object v1, v5, v6

    .line 301
    .line 302
    const/4 v7, 0x1

    .line 303
    aput-object v1, v5, v7

    .line 304
    .line 305
    invoke-virtual {v4, v5}, Lcom/miui/calendar/util/p0;->t([Ljava/lang/Class;)Lcom/miui/calendar/util/p0;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    invoke-virtual {v1}, Lcom/miui/calendar/util/p0;->i()Lcom/miui/calendar/util/p0$b;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    if-eqz v1, :cond_11

    .line 314
    .line 315
    invoke-virtual {v1}, Lcom/miui/calendar/util/p0$b;->isEmpty()Z

    .line 316
    .line 317
    .line 318
    move-result v4

    .line 319
    if-nez v4, :cond_11

    .line 320
    .line 321
    :try_start_0
    invoke-virtual {v1}, Lcom/miui/calendar/util/p0$b;->iterator()Ljava/util/Iterator;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    :cond_f
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 326
    .line 327
    .line 328
    move-result v4

    .line 329
    if-eqz v4, :cond_11

    .line 330
    .line 331
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v4

    .line 335
    check-cast v4, Lcom/miui/calendar/util/p0$c;

    .line 336
    .line 337
    invoke-virtual {v4, v6}, Lcom/miui/calendar/util/p0$c;->c(I)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v5

    .line 341
    invoke-virtual {v4, v7}, Lcom/miui/calendar/util/p0$c;->c(I)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v4

    .line 345
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 346
    .line 347
    .line 348
    move-result v8

    .line 349
    if-nez v8, :cond_f

    .line 350
    .line 351
    new-instance v8, Ljava/util/HashMap;

    .line 352
    .line 353
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 354
    .line 355
    .line 356
    const-string v9, "type"

    .line 357
    .line 358
    invoke-interface {v8, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 362
    .line 363
    .line 364
    move-result v4

    .line 365
    if-nez v4, :cond_10

    .line 366
    .line 367
    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 368
    .line 369
    .line 370
    move-result v4

    .line 371
    if-eqz v4, :cond_10

    .line 372
    .line 373
    const-string v4, "name"

    .line 374
    .line 375
    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 376
    .line 377
    .line 378
    move-result v9

    .line 379
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 380
    .line 381
    .line 382
    move-result v10

    .line 383
    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v5

    .line 387
    invoke-interface {v8, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    :cond_10
    const-string v4, "calendar_account"

    .line 391
    .line 392
    invoke-static {v4, v8}, Lcom/miui/calendar/util/g0;->e(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    .line 394
    .line 395
    goto :goto_b

    .line 396
    :catch_0
    move-exception v0

    .line 397
    invoke-static {v2, v3, v0}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 398
    .line 399
    .line 400
    :cond_11
    invoke-static {}, Lcom/miui/calendar/sms/SmartMessage$OntologyType;->values()[Lcom/miui/calendar/sms/SmartMessage$OntologyType;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    array-length v1, v0

    .line 405
    :goto_c
    if-ge v6, v1, :cond_13

    .line 406
    .line 407
    aget-object v2, v0, v6

    .line 408
    .line 409
    sget-object v3, Lcom/miui/calendar/sms/SmartMessage$OntologyType;->UNKNOWN:Lcom/miui/calendar/sms/SmartMessage$OntologyType;

    .line 410
    .line 411
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 412
    .line 413
    .line 414
    move-result v3

    .line 415
    if-nez v3, :cond_12

    .line 416
    .line 417
    new-instance v3, Ljava/lang/StringBuilder;

    .line 418
    .line 419
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    .line 421
    .line 422
    const-string v4, "setting_sms_v2_"

    .line 423
    .line 424
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v3

    .line 434
    invoke-static {p0, v2}, Lcom/android/calendar/settings/j;->a(Landroid/content/Context;Lcom/miui/calendar/sms/SmartMessage$OntologyType;)Z

    .line 435
    .line 436
    .line 437
    move-result v2

    .line 438
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v2

    .line 442
    invoke-static {v3, v2}, Lcom/miui/calendar/util/g0;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    :cond_12
    add-int/lit8 v6, v6, 0x1

    .line 446
    .line 447
    goto :goto_c

    .line 448
    :cond_13
    return-void
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
.method c(Landroid/content/Context;Landroid/app/job/JobParameters;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/miui/calendar/util/y;->i(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/miui/calendar/util/z0;->n(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, Lcom/miui/calendar/job/StatJobService;->e(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Lcom/miui/calendar/job/StatJobService$a;

    .line 17
    .line 18
    invoke-direct {p1, p0, p2}, Lcom/miui/calendar/job/StatJobService$a;-><init>(Lcom/miui/calendar/job/StatJobService;Landroid/app/job/JobParameters;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p0, p1}, Lcom/android/calendar/settings/i;->b(Landroid/content/Context;Lcom/miui/calendar/job/StatJobService$b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    :cond_0
    :goto_0
    invoke-virtual {p0, p2}, Lcom/miui/calendar/job/a;->a(Landroid/app/job/JobParameters;)V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto :goto_2

    .line 30
    :catch_0
    move-exception p1

    .line 31
    :try_start_1
    const-string v0, "Cal:D:StatJobService"

    .line 32
    .line 33
    const-string v1, "startJob"

    .line 34
    .line 35
    invoke-static {v0, v1, p1}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :goto_1
    return-void

    .line 40
    :goto_2
    invoke-virtual {p0, p2}, Lcom/miui/calendar/job/a;->a(Landroid/app/job/JobParameters;)V

    .line 41
    .line 42
    .line 43
    throw p1
    .line 44
    .line 45
    .line 46
    .line 47
.end method

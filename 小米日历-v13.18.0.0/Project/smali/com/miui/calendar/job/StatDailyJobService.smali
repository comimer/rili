.class public Lcom/miui/calendar/job/StatDailyJobService;
.super Lcom/miui/calendar/job/a;
.source "StatDailyJobService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/calendar/job/StatDailyJobService$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/miui/calendar/job/StatDailyJobService;->e()Ld4/a;

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

.method static synthetic d(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/miui/calendar/job/StatDailyJobService;->f(Landroid/content/Context;)V

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

.method public static e()Ld4/a;
    .locals 3

    .line 1
    new-instance v0, Ld4/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ld4/a;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/miui/calendar/job/StatDailyJobService;

    .line 7
    .line 8
    iput-object v1, v0, Ld4/a;->a:Ljava/lang/Class;

    .line 9
    .line 10
    const/16 v1, 0xe

    .line 11
    .line 12
    iput v1, v0, Ld4/a;->b:I

    .line 13
    .line 14
    const-wide/32 v1, 0x5265c00

    .line 15
    .line 16
    .line 17
    iput-wide v1, v0, Ld4/a;->c:J

    .line 18
    .line 19
    iput-wide v1, v0, Ld4/a;->d:J

    .line 20
    .line 21
    const-wide/32 v1, 0x6ddd00

    .line 22
    .line 23
    .line 24
    iput-wide v1, v0, Ld4/a;->e:J

    .line 25
    .line 26
    const-string v1, "stat_daily"

    .line 27
    .line 28
    iput-object v1, v0, Ld4/a;->f:Ljava/lang/String;

    .line 29
    .line 30
    const-string v1, "last_stat_daily_job_millis"

    .line 31
    .line 32
    iput-object v1, v0, Ld4/a;->g:Ljava/lang/String;

    .line 33
    .line 34
    const-string v1, "Cal:D:StatDailyJobService"

    .line 35
    .line 36
    iput-object v1, v0, Ld4/a;->h:Ljava/lang/String;

    .line 37
    .line 38
    return-object v0
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
.end method

.method private static declared-synchronized f(Landroid/content/Context;)V
    .locals 9

    .line 1
    const-class v0, Lcom/miui/calendar/job/StatDailyJobService;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0}, Lcom/miui/calendar/job/StatDailyJobService;->i(Landroid/content/Context;)Lcom/miui/calendar/util/p0$b;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/miui/calendar/util/p0$b;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x1

    .line 23
    if-eqz v3, :cond_5

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lcom/miui/calendar/util/p0$c;

    .line 30
    .line 31
    if-nez v3, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance v6, Lcom/miui/calendar/job/StatDailyJobService$b;

    .line 35
    .line 36
    const/4 v7, 0x0

    .line 37
    invoke-direct {v6, v7}, Lcom/miui/calendar/job/StatDailyJobService$b;-><init>(Lcom/miui/calendar/job/StatDailyJobService$a;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v4}, Lcom/miui/calendar/util/p0$c;->e(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    iput v4, v6, Lcom/miui/calendar/job/StatDailyJobService$b;->a:I

    .line 49
    .line 50
    invoke-virtual {v3, v5}, Lcom/miui/calendar/util/p0$c;->c(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    iput-object v4, v6, Lcom/miui/calendar/job/StatDailyJobService$b;->b:Ljava/lang/String;

    .line 55
    .line 56
    const/4 v4, 0x2

    .line 57
    invoke-virtual {v3, v4}, Lcom/miui/calendar/util/p0$c;->c(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    iput-object v3, v6, Lcom/miui/calendar/job/StatDailyJobService$b;->c:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    iget-object v3, v6, Lcom/miui/calendar/job/StatDailyJobService$b;->c:Ljava/lang/String;

    .line 71
    .line 72
    const-string v4, "LOCAL"

    .line 73
    .line 74
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_3

    .line 79
    .line 80
    iget-object v3, v6, Lcom/miui/calendar/job/StatDailyJobService$b;->b:Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-nez v3, :cond_3

    .line 87
    .line 88
    iget-object v3, v6, Lcom/miui/calendar/job/StatDailyJobService$b;->b:Ljava/lang/String;

    .line 89
    .line 90
    const-string v4, "account_name_local"

    .line 91
    .line 92
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-nez v3, :cond_4

    .line 97
    .line 98
    :cond_3
    iget-object v3, v6, Lcom/miui/calendar/job/StatDailyJobService$b;->c:Ljava/lang/String;

    .line 99
    .line 100
    const-string v4, "com.xiaomi"

    .line 101
    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_0

    .line 107
    .line 108
    :cond_4
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    move v6, v4

    .line 123
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    if-ge v6, v7, :cond_a

    .line 128
    .line 129
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    check-cast v7, Lcom/miui/calendar/job/StatDailyJobService$b;

    .line 134
    .line 135
    if-nez v7, :cond_6

    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_6
    if-nez v6, :cond_7

    .line 139
    .line 140
    const-string v8, "("

    .line 141
    .line 142
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    :cond_7
    const-string v8, "calendar_id ="

    .line 146
    .line 147
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    iget v8, v7, Lcom/miui/calendar/job/StatDailyJobService$b;->a:I

    .line 151
    .line 152
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v8, "calendar_id !="

    .line 156
    .line 157
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    iget v7, v7, Lcom/miui/calendar/job/StatDailyJobService$b;->a:I

    .line 161
    .line 162
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 166
    .line 167
    .line 168
    move-result v7

    .line 169
    sub-int/2addr v7, v5

    .line 170
    if-eq v6, v7, :cond_8

    .line 171
    .line 172
    const-string v7, " OR "

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_8
    const-string v7, ") "

    .line 176
    .line 177
    :goto_2
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 181
    .line 182
    .line 183
    move-result v7

    .line 184
    sub-int/2addr v7, v5

    .line 185
    if-eq v6, v7, :cond_9

    .line 186
    .line 187
    const-string v7, " AND "

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_9
    const-string v7, " "

    .line 191
    .line 192
    :goto_3
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_a
    const-string v2, "AND hasExtendedProperties =?"

    .line 199
    .line 200
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-static {v2}, Lcom/miui/calendar/util/p0;->d(Landroid/content/Context;)Lcom/miui/calendar/util/p0;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    sget-object v6, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 212
    .line 213
    invoke-virtual {v2, v6}, Lcom/miui/calendar/util/p0;->u(Landroid/net/Uri;)Lcom/miui/calendar/util/p0;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    invoke-virtual {v2, v3}, Lcom/miui/calendar/util/p0;->s(Ljava/lang/String;)Lcom/miui/calendar/util/p0;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    const-string v3, "_id"

    .line 226
    .line 227
    filled-new-array {v3}, [Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    invoke-virtual {v2, v3}, Lcom/miui/calendar/util/p0;->r([Ljava/lang/String;)Lcom/miui/calendar/util/p0;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    new-array v3, v5, [Ljava/lang/Class;

    .line 236
    .line 237
    const-class v5, Ljava/lang/Integer;

    .line 238
    .line 239
    aput-object v5, v3, v4

    .line 240
    .line 241
    invoke-virtual {v2, v3}, Lcom/miui/calendar/util/p0;->t([Ljava/lang/Class;)Lcom/miui/calendar/util/p0;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    invoke-virtual {v2}, Lcom/miui/calendar/util/p0;->j()I

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    new-instance v3, Ljava/util/HashMap;

    .line 250
    .line 251
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 252
    .line 253
    .line 254
    const-string v5, "other_account_agenda"

    .line 255
    .line 256
    invoke-static {v2}, Lcom/miui/calendar/job/StatDailyJobService;->g(I)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    invoke-static {p0, v2, v4}, Lcom/miui/calendar/job/StatDailyJobService;->j(Landroid/content/Context;Ljava/lang/String;I)I

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    const-string v4, "agenda"

    .line 272
    .line 273
    invoke-static {v2}, Lcom/miui/calendar/job/StatDailyJobService;->g(I)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    const/4 v4, 0x3

    .line 285
    invoke-static {p0, v2, v4}, Lcom/miui/calendar/job/StatDailyJobService;->j(Landroid/content/Context;Ljava/lang/String;I)I

    .line 286
    .line 287
    .line 288
    move-result v2

    .line 289
    const-string v4, "credit"

    .line 290
    .line 291
    invoke-static {v2}, Lcom/miui/calendar/job/StatDailyJobService;->g(I)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    const/16 v4, 0xb

    .line 303
    .line 304
    invoke-static {p0, v2, v4}, Lcom/miui/calendar/job/StatDailyJobService;->j(Landroid/content/Context;Ljava/lang/String;I)I

    .line 305
    .line 306
    .line 307
    move-result v2

    .line 308
    const-string v4, "flight"

    .line 309
    .line 310
    invoke-static {v2}, Lcom/miui/calendar/job/StatDailyJobService;->g(I)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    const/16 v4, 0xc

    .line 322
    .line 323
    invoke-static {p0, v2, v4}, Lcom/miui/calendar/job/StatDailyJobService;->j(Landroid/content/Context;Ljava/lang/String;I)I

    .line 324
    .line 325
    .line 326
    move-result v2

    .line 327
    const-string v4, "train"

    .line 328
    .line 329
    invoke-static {v2}, Lcom/miui/calendar/job/StatDailyJobService;->g(I)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    const/16 v4, 0xd

    .line 341
    .line 342
    invoke-static {p0, v2, v4}, Lcom/miui/calendar/job/StatDailyJobService;->j(Landroid/content/Context;Ljava/lang/String;I)I

    .line 343
    .line 344
    .line 345
    move-result v2

    .line 346
    const-string v4, "electricity_bill"

    .line 347
    .line 348
    invoke-static {v2}, Lcom/miui/calendar/job/StatDailyJobService;->g(I)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    const/16 v4, 0xe

    .line 360
    .line 361
    invoke-static {p0, v2, v4}, Lcom/miui/calendar/job/StatDailyJobService;->j(Landroid/content/Context;Ljava/lang/String;I)I

    .line 362
    .line 363
    .line 364
    move-result v2

    .line 365
    const-string v4, "gas_bill"

    .line 366
    .line 367
    invoke-static {v2}, Lcom/miui/calendar/job/StatDailyJobService;->g(I)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v2

    .line 378
    const/16 v4, 0xf

    .line 379
    .line 380
    invoke-static {p0, v2, v4}, Lcom/miui/calendar/job/StatDailyJobService;->j(Landroid/content/Context;Ljava/lang/String;I)I

    .line 381
    .line 382
    .line 383
    move-result v2

    .line 384
    const-string v4, "hotel"

    .line 385
    .line 386
    invoke-static {v2}, Lcom/miui/calendar/job/StatDailyJobService;->g(I)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    const/16 v4, 0x10

    .line 398
    .line 399
    invoke-static {p0, v2, v4}, Lcom/miui/calendar/job/StatDailyJobService;->j(Landroid/content/Context;Ljava/lang/String;I)I

    .line 400
    .line 401
    .line 402
    move-result v2

    .line 403
    const-string v4, "loan"

    .line 404
    .line 405
    invoke-static {v2}, Lcom/miui/calendar/job/StatDailyJobService;->g(I)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    const/16 v2, 0x11

    .line 417
    .line 418
    invoke-static {p0, v1, v2}, Lcom/miui/calendar/job/StatDailyJobService;->j(Landroid/content/Context;Ljava/lang/String;I)I

    .line 419
    .line 420
    .line 421
    move-result p0

    .line 422
    const-string v1, "movie"

    .line 423
    .line 424
    invoke-static {p0}, Lcom/miui/calendar/job/StatDailyJobService;->g(I)Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object p0

    .line 428
    invoke-interface {v3, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    const-string p0, "agenda_count"

    .line 432
    .line 433
    invoke-static {p0, v3}, Lcom/miui/calendar/util/g0;->e(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    .line 435
    .line 436
    monitor-exit v0

    .line 437
    return-void

    .line 438
    :catchall_0
    move-exception p0

    .line 439
    monitor-exit v0

    .line 440
    throw p0
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

.method private static g(I)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "0"

    return-object p0

    :cond_0
    const/16 v0, 0xa

    if-lez p0, :cond_1

    if-gt p0, v0, :cond_1

    const-string p0, "0-10"

    return-object p0

    :cond_1
    const/16 v1, 0x32

    if-le p0, v0, :cond_2

    if-gt p0, v1, :cond_2

    const-string p0, "10-50"

    return-object p0

    :cond_2
    if-le p0, v1, :cond_3

    const/16 v0, 0x64

    if-gt p0, v0, :cond_3

    const-string p0, "50-100"

    return-object p0

    :cond_3
    const-string p0, ">100"

    return-object p0
.end method

.method public static h(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-string v0, "Cal:D:StatDailyJobService"

    .line 2
    .line 3
    const-string v1, "executeDailyMiStatJob()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lcom/miui/calendar/util/DaysOffUtils;->g(Landroid/content/Context;)Lcom/miui/calendar/util/DaysOffUtils;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/miui/calendar/util/DaysOffUtils;->h()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    int-to-long v0, v0

    .line 17
    const-string v2, "days_off_version"

    .line 18
    .line 19
    invoke-static {v2, v0, v1}, Lcom/miui/calendar/util/g0;->h(Ljava/lang/String;J)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Ljava/lang/Thread;

    .line 23
    .line 24
    new-instance v1, Lcom/miui/calendar/job/StatDailyJobService$a;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/miui/calendar/job/StatDailyJobService$a;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 33
    .line 34
    .line 35
    return-void
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

.method private static i(Landroid/content/Context;)Lcom/miui/calendar/util/p0$b;
    .locals 4

    .line 1
    const-class v0, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/miui/calendar/util/p0;->d(Landroid/content/Context;)Lcom/miui/calendar/util/p0;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/miui/calendar/util/p0;->u(Landroid/net/Uri;)Lcom/miui/calendar/util/p0;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v1, "_id"

    .line 18
    .line 19
    const-string v2, "account_name"

    .line 20
    .line 21
    const-string v3, "account_type"

    .line 22
    .line 23
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p0, v1}, Lcom/miui/calendar/util/p0;->r([Ljava/lang/String;)Lcom/miui/calendar/util/p0;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const/4 v1, 0x3

    .line 32
    new-array v1, v1, [Ljava/lang/Class;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    const-class v3, Ljava/lang/Integer;

    .line 36
    .line 37
    aput-object v3, v1, v2

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    aput-object v0, v1, v2

    .line 41
    .line 42
    const/4 v2, 0x2

    .line 43
    aput-object v0, v1, v2

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Lcom/miui/calendar/util/p0;->t([Ljava/lang/Class;)Lcom/miui/calendar/util/p0;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0}, Lcom/miui/calendar/util/p0;->i()Lcom/miui/calendar/util/p0$b;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
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

.method private static j(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Lcom/miui/calendar/util/p0;->d(Landroid/content/Context;)Lcom/miui/calendar/util/p0;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/miui/calendar/util/p0;->u(Landroid/net/Uri;)Lcom/miui/calendar/util/p0;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0, p1}, Lcom/miui/calendar/util/p0;->s(Ljava/lang/String;)Lcom/miui/calendar/util/p0;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const/4 p1, 0x1

    .line 28
    new-array v0, p1, [Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    aput-object p2, v0, v1

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lcom/miui/calendar/util/p0;->o([Ljava/lang/String;)Lcom/miui/calendar/util/p0;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const-string p2, "_id"

    .line 41
    .line 42
    filled-new-array {p2}, [Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p0, p2}, Lcom/miui/calendar/util/p0;->r([Ljava/lang/String;)Lcom/miui/calendar/util/p0;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    new-array p1, p1, [Ljava/lang/Class;

    .line 51
    .line 52
    const-class p2, Ljava/lang/Integer;

    .line 53
    .line 54
    aput-object p2, p1, v1

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lcom/miui/calendar/util/p0;->t([Ljava/lang/Class;)Lcom/miui/calendar/util/p0;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0}, Lcom/miui/calendar/util/p0;->j()I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    return p0
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


# virtual methods
.method c(Landroid/content/Context;Landroid/app/job/JobParameters;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/miui/calendar/util/z0;->n(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/miui/calendar/job/StatDailyJobService;->h(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    :cond_0
    :goto_0
    invoke-virtual {p0, p2}, Lcom/miui/calendar/job/a;->a(Landroid/app/job/JobParameters;)V

    .line 11
    .line 12
    .line 13
    goto :goto_1

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto :goto_2

    .line 16
    :catch_0
    move-exception p1

    .line 17
    :try_start_1
    const-string v0, "Cal:D:StatDailyJobService"

    .line 18
    .line 19
    const-string v1, "startJob"

    .line 20
    .line 21
    invoke-static {v0, v1, p1}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :goto_1
    return-void

    .line 26
    :goto_2
    invoke-virtual {p0, p2}, Lcom/miui/calendar/job/a;->a(Landroid/app/job/JobParameters;)V

    .line 27
    .line 28
    .line 29
    throw p1
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

.class public Lcom/miui/zeus/landingpage/sdk/e$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/zeus/landingpage/sdk/e;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Intent;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/miui/zeus/landingpage/sdk/e;


# direct methods
.method public constructor <init>(Lcom/miui/zeus/landingpage/sdk/e;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/landingpage/sdk/e$a;->c:Lcom/miui/zeus/landingpage/sdk/e;

    iput-object p2, p0, Lcom/miui/zeus/landingpage/sdk/e$a;->a:Landroid/content/Intent;

    iput-object p3, p0, Lcom/miui/zeus/landingpage/sdk/e$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/e$a;->a:Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "errorCode"

    .line 4
    .line 5
    const/high16 v2, -0x80000000

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/miui/zeus/landingpage/sdk/e$a;->a:Landroid/content/Intent;

    .line 12
    .line 13
    const-string v3, "progress"

    .line 14
    .line 15
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget-object v3, p0, Lcom/miui/zeus/landingpage/sdk/e$a;->a:Landroid/content/Intent;

    .line 20
    .line 21
    const-string v4, "status"

    .line 22
    .line 23
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x6

    .line 28
    new-array v3, v3, [Ljava/lang/Object;

    .line 29
    .line 30
    const-string v4, "code="

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    aput-object v4, v3, v5

    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    const/4 v6, 0x1

    .line 40
    aput-object v4, v3, v6

    .line 41
    .line 42
    const/4 v4, 0x2

    .line 43
    const-string v7, ",progress="

    .line 44
    .line 45
    aput-object v7, v3, v4

    .line 46
    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    const/4 v9, 0x3

    .line 52
    aput-object v8, v3, v9

    .line 53
    .line 54
    const-string v8, ",status="

    .line 55
    .line 56
    const/4 v10, 0x4

    .line 57
    aput-object v8, v3, v10

    .line 58
    .line 59
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    const/4 v11, 0x5

    .line 64
    aput-object v8, v3, v11

    .line 65
    .line 66
    const-string v8, "MarketDownloadBroadcastReceiver"

    .line 67
    .line 68
    invoke-static {v8, v3}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    const/4 v3, -0x8

    .line 72
    if-eq v0, v3, :cond_11

    .line 73
    .line 74
    const-string v3, ",statusCode="

    .line 75
    .line 76
    const/4 v12, -0x3

    .line 77
    if-eq v0, v12, :cond_10

    .line 78
    .line 79
    const/4 v13, -0x2

    .line 80
    if-eq v0, v13, :cond_e

    .line 81
    .line 82
    if-eq v0, v6, :cond_b

    .line 83
    .line 84
    if-eq v0, v4, :cond_a

    .line 85
    .line 86
    if-eq v0, v9, :cond_9

    .line 87
    .line 88
    if-eq v0, v10, :cond_7

    .line 89
    .line 90
    if-eq v0, v11, :cond_0

    .line 91
    .line 92
    goto/16 :goto_9

    .line 93
    .line 94
    :cond_0
    if-eq v2, v12, :cond_4

    .line 95
    .line 96
    if-eq v2, v13, :cond_1

    .line 97
    .line 98
    goto/16 :goto_9

    .line 99
    .line 100
    :cond_1
    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/e$a;->c:Lcom/miui/zeus/landingpage/sdk/e;

    .line 101
    .line 102
    iget-object v2, p0, Lcom/miui/zeus/landingpage/sdk/e$a;->b:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    const-string v4, "onDownloadingProgress packageName="

    .line 113
    .line 114
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-static {v8, v3}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iget-object v0, v0, Lcom/miui/zeus/landingpage/sdk/e;->a:Ljava/util/List;

    .line 134
    .line 135
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    if-eqz v3, :cond_2

    .line 144
    .line 145
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    check-cast v3, Lcom/miui/zeus/landingpage/sdk/DownloadListener;

    .line 150
    .line 151
    invoke-interface {v3, v2, v1}, Lcom/miui/zeus/landingpage/sdk/DownloadListener;->onDownloadProgressUpdated(Ljava/lang/String;I)V

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_2
    invoke-static {}, Lcom/miui/zeus/landingpage/sdk/c;->a()Lcom/miui/zeus/landingpage/sdk/c;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    iget-object v0, v0, Lcom/miui/zeus/landingpage/sdk/c;->d:Ljava/util/HashMap;

    .line 160
    .line 161
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    check-cast v0, Lcom/miui/zeus/landingpage/sdk/b;

    .line 166
    .line 167
    if-nez v0, :cond_3

    .line 168
    .line 169
    invoke-static {}, Lcom/miui/zeus/landingpage/sdk/c;->a()Lcom/miui/zeus/landingpage/sdk/c;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    iget-object v0, v0, Lcom/miui/zeus/landingpage/sdk/c;->d:Ljava/util/HashMap;

    .line 174
    .line 175
    new-instance v3, Lcom/miui/zeus/landingpage/sdk/b;

    .line 176
    .line 177
    invoke-direct {v3, v9, v1}, Lcom/miui/zeus/landingpage/sdk/b;-><init>(II)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    goto/16 :goto_9

    .line 184
    .line 185
    :cond_3
    iput v9, v0, Lcom/miui/zeus/landingpage/sdk/b;->c:I

    .line 186
    .line 187
    iput v1, v0, Lcom/miui/zeus/landingpage/sdk/b;->a:I

    .line 188
    .line 189
    goto/16 :goto_9

    .line 190
    .line 191
    :cond_4
    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/e$a;->c:Lcom/miui/zeus/landingpage/sdk/e;

    .line 192
    .line 193
    iget-object v2, p0, Lcom/miui/zeus/landingpage/sdk/e$a;->b:Ljava/lang/String;

    .line 194
    .line 195
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    new-instance v3, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    const-string v5, "onDownloadPause packageName="

    .line 204
    .line 205
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    invoke-static {v8, v3}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    iget-object v0, v0, Lcom/miui/zeus/landingpage/sdk/e;->a:Ljava/util/List;

    .line 219
    .line 220
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    if-eqz v3, :cond_5

    .line 229
    .line 230
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    check-cast v3, Lcom/miui/zeus/landingpage/sdk/DownloadListener;

    .line 235
    .line 236
    invoke-interface {v3, v2}, Lcom/miui/zeus/landingpage/sdk/DownloadListener;->onDownloadPaused(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    goto :goto_1

    .line 240
    :cond_5
    invoke-static {}, Lcom/miui/zeus/landingpage/sdk/c;->a()Lcom/miui/zeus/landingpage/sdk/c;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    iget-object v0, v0, Lcom/miui/zeus/landingpage/sdk/c;->d:Ljava/util/HashMap;

    .line 245
    .line 246
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    check-cast v0, Lcom/miui/zeus/landingpage/sdk/b;

    .line 251
    .line 252
    if-nez v0, :cond_6

    .line 253
    .line 254
    invoke-static {}, Lcom/miui/zeus/landingpage/sdk/c;->a()Lcom/miui/zeus/landingpage/sdk/c;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    iget-object v0, v0, Lcom/miui/zeus/landingpage/sdk/c;->d:Ljava/util/HashMap;

    .line 259
    .line 260
    new-instance v3, Lcom/miui/zeus/landingpage/sdk/b;

    .line 261
    .line 262
    invoke-direct {v3, v4, v1}, Lcom/miui/zeus/landingpage/sdk/b;-><init>(II)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    goto/16 :goto_9

    .line 269
    .line 270
    :cond_6
    iput v4, v0, Lcom/miui/zeus/landingpage/sdk/b;->c:I

    .line 271
    .line 272
    iput v1, v0, Lcom/miui/zeus/landingpage/sdk/b;->a:I

    .line 273
    .line 274
    goto/16 :goto_9

    .line 275
    .line 276
    :cond_7
    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/e$a;->c:Lcom/miui/zeus/landingpage/sdk/e;

    .line 277
    .line 278
    iget-object v1, p0, Lcom/miui/zeus/landingpage/sdk/e$a;->b:Ljava/lang/String;

    .line 279
    .line 280
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    .line 282
    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .line 287
    .line 288
    const-string v3, "onInstallSuccess packageName="

    .line 289
    .line 290
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-static {v8, v2}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    iget-object v0, v0, Lcom/miui/zeus/landingpage/sdk/e;->a:Ljava/util/List;

    .line 304
    .line 305
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 310
    .line 311
    .line 312
    move-result v2

    .line 313
    if-eqz v2, :cond_8

    .line 314
    .line 315
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    check-cast v2, Lcom/miui/zeus/landingpage/sdk/DownloadListener;

    .line 320
    .line 321
    invoke-interface {v2, v1}, Lcom/miui/zeus/landingpage/sdk/DownloadListener;->onInstallSuccess(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    goto :goto_2

    .line 325
    :cond_8
    invoke-static {}, Lcom/miui/zeus/landingpage/sdk/c;->a()Lcom/miui/zeus/landingpage/sdk/c;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    .line 331
    .line 332
    sget-object v0, Lcom/miui/zeus/landingpage/sdk/c;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 333
    .line 334
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    goto/16 :goto_9

    .line 338
    .line 339
    :cond_9
    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/e$a;->c:Lcom/miui/zeus/landingpage/sdk/e;

    .line 340
    .line 341
    iget-object v1, p0, Lcom/miui/zeus/landingpage/sdk/e$a;->b:Ljava/lang/String;

    .line 342
    .line 343
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 344
    .line 345
    .line 346
    new-instance v2, Ljava/lang/StringBuilder;

    .line 347
    .line 348
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    .line 350
    .line 351
    const-string v3, "onInstallStart packageName="

    .line 352
    .line 353
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    invoke-static {v8, v2}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    iget-object v0, v0, Lcom/miui/zeus/landingpage/sdk/e;->a:Ljava/util/List;

    .line 367
    .line 368
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 373
    .line 374
    .line 375
    move-result v2

    .line 376
    if-eqz v2, :cond_14

    .line 377
    .line 378
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    check-cast v2, Lcom/miui/zeus/landingpage/sdk/DownloadListener;

    .line 383
    .line 384
    invoke-interface {v2, v1}, Lcom/miui/zeus/landingpage/sdk/DownloadListener;->onInstallStart(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    goto :goto_3

    .line 388
    :cond_a
    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/e$a;->c:Lcom/miui/zeus/landingpage/sdk/e;

    .line 389
    .line 390
    iget-object v1, p0, Lcom/miui/zeus/landingpage/sdk/e$a;->b:Ljava/lang/String;

    .line 391
    .line 392
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 393
    .line 394
    .line 395
    new-instance v2, Ljava/lang/StringBuilder;

    .line 396
    .line 397
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 398
    .line 399
    .line 400
    const-string v3, "onDownloadSuccess packageName="

    .line 401
    .line 402
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v2

    .line 412
    invoke-static {v8, v2}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    iget-object v0, v0, Lcom/miui/zeus/landingpage/sdk/e;->a:Ljava/util/List;

    .line 416
    .line 417
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 422
    .line 423
    .line 424
    move-result v2

    .line 425
    if-eqz v2, :cond_14

    .line 426
    .line 427
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v2

    .line 431
    check-cast v2, Lcom/miui/zeus/landingpage/sdk/DownloadListener;

    .line 432
    .line 433
    invoke-interface {v2, v1}, Lcom/miui/zeus/landingpage/sdk/DownloadListener;->onDownloadFinished(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    goto :goto_4

    .line 437
    :cond_b
    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/e$a;->c:Lcom/miui/zeus/landingpage/sdk/e;

    .line 438
    .line 439
    iget-object v1, p0, Lcom/miui/zeus/landingpage/sdk/e$a;->b:Ljava/lang/String;

    .line 440
    .line 441
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 442
    .line 443
    .line 444
    new-instance v2, Ljava/lang/StringBuilder;

    .line 445
    .line 446
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 447
    .line 448
    .line 449
    const-string v3, "onDownloadStart packageName="

    .line 450
    .line 451
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    invoke-static {v8, v2}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    iget-object v0, v0, Lcom/miui/zeus/landingpage/sdk/e;->a:Ljava/util/List;

    .line 465
    .line 466
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 471
    .line 472
    .line 473
    move-result v2

    .line 474
    if-eqz v2, :cond_c

    .line 475
    .line 476
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    check-cast v2, Lcom/miui/zeus/landingpage/sdk/DownloadListener;

    .line 481
    .line 482
    invoke-interface {v2, v1}, Lcom/miui/zeus/landingpage/sdk/DownloadListener;->onDownloadStarted(Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    goto :goto_5

    .line 486
    :cond_c
    invoke-static {}, Lcom/miui/zeus/landingpage/sdk/c;->a()Lcom/miui/zeus/landingpage/sdk/c;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    iget-object v0, v0, Lcom/miui/zeus/landingpage/sdk/c;->d:Ljava/util/HashMap;

    .line 491
    .line 492
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    check-cast v0, Lcom/miui/zeus/landingpage/sdk/b;

    .line 497
    .line 498
    if-nez v0, :cond_d

    .line 499
    .line 500
    invoke-static {}, Lcom/miui/zeus/landingpage/sdk/c;->a()Lcom/miui/zeus/landingpage/sdk/c;

    .line 501
    .line 502
    .line 503
    move-result-object v0

    .line 504
    iget-object v0, v0, Lcom/miui/zeus/landingpage/sdk/c;->d:Ljava/util/HashMap;

    .line 505
    .line 506
    new-instance v2, Lcom/miui/zeus/landingpage/sdk/b;

    .line 507
    .line 508
    invoke-direct {v2, v6, v5}, Lcom/miui/zeus/landingpage/sdk/b;-><init>(II)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    goto/16 :goto_9

    .line 515
    .line 516
    :cond_d
    iput v6, v0, Lcom/miui/zeus/landingpage/sdk/b;->c:I

    .line 517
    .line 518
    iput v5, v0, Lcom/miui/zeus/landingpage/sdk/b;->a:I

    .line 519
    .line 520
    goto/16 :goto_9

    .line 521
    .line 522
    :cond_e
    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/e$a;->c:Lcom/miui/zeus/landingpage/sdk/e;

    .line 523
    .line 524
    iget-object v1, p0, Lcom/miui/zeus/landingpage/sdk/e$a;->b:Ljava/lang/String;

    .line 525
    .line 526
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 527
    .line 528
    .line 529
    new-instance v4, Ljava/lang/StringBuilder;

    .line 530
    .line 531
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 532
    .line 533
    .line 534
    const-string v5, "onDownloadFail packageName="

    .line 535
    .line 536
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v3

    .line 552
    invoke-static {v8, v3}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    iget-object v0, v0, Lcom/miui/zeus/landingpage/sdk/e;->a:Ljava/util/List;

    .line 556
    .line 557
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 562
    .line 563
    .line 564
    move-result v3

    .line 565
    if-eqz v3, :cond_f

    .line 566
    .line 567
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    move-result-object v3

    .line 571
    check-cast v3, Lcom/miui/zeus/landingpage/sdk/DownloadListener;

    .line 572
    .line 573
    invoke-interface {v3, v1, v2}, Lcom/miui/zeus/landingpage/sdk/DownloadListener;->onDownloadFailed(Ljava/lang/String;I)V

    .line 574
    .line 575
    .line 576
    goto :goto_6

    .line 577
    :cond_f
    invoke-static {}, Lcom/miui/zeus/landingpage/sdk/c;->a()Lcom/miui/zeus/landingpage/sdk/c;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    iget-object v0, v0, Lcom/miui/zeus/landingpage/sdk/c;->d:Ljava/util/HashMap;

    .line 582
    .line 583
    iget-object v1, p0, Lcom/miui/zeus/landingpage/sdk/e$a;->b:Ljava/lang/String;

    .line 584
    .line 585
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    .line 587
    .line 588
    goto/16 :goto_9

    .line 589
    .line 590
    :cond_10
    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/e$a;->c:Lcom/miui/zeus/landingpage/sdk/e;

    .line 591
    .line 592
    iget-object v1, p0, Lcom/miui/zeus/landingpage/sdk/e$a;->b:Ljava/lang/String;

    .line 593
    .line 594
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 595
    .line 596
    .line 597
    new-instance v4, Ljava/lang/StringBuilder;

    .line 598
    .line 599
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 600
    .line 601
    .line 602
    const-string v5, "onInstallFail packageName="

    .line 603
    .line 604
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    .line 606
    .line 607
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    .line 609
    .line 610
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 614
    .line 615
    .line 616
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object v3

    .line 620
    invoke-static {v8, v3}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    .line 622
    .line 623
    iget-object v0, v0, Lcom/miui/zeus/landingpage/sdk/e;->a:Ljava/util/List;

    .line 624
    .line 625
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 626
    .line 627
    .line 628
    move-result-object v0

    .line 629
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 630
    .line 631
    .line 632
    move-result v3

    .line 633
    if-eqz v3, :cond_14

    .line 634
    .line 635
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 636
    .line 637
    .line 638
    move-result-object v3

    .line 639
    check-cast v3, Lcom/miui/zeus/landingpage/sdk/DownloadListener;

    .line 640
    .line 641
    invoke-interface {v3, v1, v2}, Lcom/miui/zeus/landingpage/sdk/DownloadListener;->onInstallFailed(Ljava/lang/String;I)V

    .line 642
    .line 643
    .line 644
    goto :goto_7

    .line 645
    :cond_11
    iget-object v0, p0, Lcom/miui/zeus/landingpage/sdk/e$a;->c:Lcom/miui/zeus/landingpage/sdk/e;

    .line 646
    .line 647
    iget-object v2, p0, Lcom/miui/zeus/landingpage/sdk/e$a;->b:Ljava/lang/String;

    .line 648
    .line 649
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 650
    .line 651
    .line 652
    new-instance v3, Ljava/lang/StringBuilder;

    .line 653
    .line 654
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 655
    .line 656
    .line 657
    const-string v4, "onCancelDownload packageName="

    .line 658
    .line 659
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    .line 661
    .line 662
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    .line 664
    .line 665
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object v3

    .line 669
    invoke-static {v8, v3}, Lcom/miui/zeus/landingpage/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    .line 671
    .line 672
    iget-object v0, v0, Lcom/miui/zeus/landingpage/sdk/e;->a:Ljava/util/List;

    .line 673
    .line 674
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 675
    .line 676
    .line 677
    move-result-object v0

    .line 678
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 679
    .line 680
    .line 681
    move-result v3

    .line 682
    if-eqz v3, :cond_12

    .line 683
    .line 684
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 685
    .line 686
    .line 687
    move-result-object v3

    .line 688
    check-cast v3, Lcom/miui/zeus/landingpage/sdk/DownloadListener;

    .line 689
    .line 690
    invoke-interface {v3, v2}, Lcom/miui/zeus/landingpage/sdk/DownloadListener;->onCancelDownload(Ljava/lang/String;)V

    .line 691
    .line 692
    .line 693
    goto :goto_8

    .line 694
    :cond_12
    invoke-static {}, Lcom/miui/zeus/landingpage/sdk/c;->a()Lcom/miui/zeus/landingpage/sdk/c;

    .line 695
    .line 696
    .line 697
    move-result-object v0

    .line 698
    iget-object v0, v0, Lcom/miui/zeus/landingpage/sdk/c;->d:Ljava/util/HashMap;

    .line 699
    .line 700
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    .line 702
    .line 703
    move-result-object v0

    .line 704
    check-cast v0, Lcom/miui/zeus/landingpage/sdk/b;

    .line 705
    .line 706
    if-nez v0, :cond_13

    .line 707
    .line 708
    invoke-static {}, Lcom/miui/zeus/landingpage/sdk/c;->a()Lcom/miui/zeus/landingpage/sdk/c;

    .line 709
    .line 710
    .line 711
    move-result-object v0

    .line 712
    iget-object v0, v0, Lcom/miui/zeus/landingpage/sdk/c;->d:Ljava/util/HashMap;

    .line 713
    .line 714
    new-instance v3, Lcom/miui/zeus/landingpage/sdk/b;

    .line 715
    .line 716
    invoke-direct {v3, v11, v1}, Lcom/miui/zeus/landingpage/sdk/b;-><init>(II)V

    .line 717
    .line 718
    .line 719
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    .line 721
    .line 722
    goto :goto_9

    .line 723
    :cond_13
    iput v11, v0, Lcom/miui/zeus/landingpage/sdk/b;->c:I

    .line 724
    .line 725
    iput v1, v0, Lcom/miui/zeus/landingpage/sdk/b;->a:I

    .line 726
    .line 727
    :cond_14
    :goto_9
    return-void
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
.end method

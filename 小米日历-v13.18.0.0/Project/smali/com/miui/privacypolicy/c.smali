.class public Lcom/miui/privacypolicy/c;
.super Ljava/lang/Object;
.source "PrivacyAgreeManager.java"


# direct methods
.method protected static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 1
    const-string v0, "Privacy_AgreeManager"

    .line 2
    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p4

    .line 18
    :cond_0
    const-string v2, "pkg"

    .line 19
    .line 20
    invoke-interface {v1, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    const-string p4, "policyName"

    .line 24
    .line 25
    invoke-interface {v1, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    const-string p4, "idContent"

    .line 29
    .line 30
    invoke-interface {v1, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    sget-object p2, Lcom/miui/privacypolicy/NetUtils;->a:Ljava/lang/String;

    .line 34
    .line 35
    const-string p4, "miuiVersion"

    .line 36
    .line 37
    invoke-interface {v1, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-eqz p2, :cond_1

    .line 45
    .line 46
    invoke-static {p0}, Lcom/miui/privacypolicy/b;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p5

    .line 50
    :cond_1
    const-string p2, "apkVersion"

    .line 51
    .line 52
    invoke-interface {v1, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    const-string p2, "privacy_temp_update_version"

    .line 56
    .line 57
    invoke-static {p0, p2, p1}, Lcom/miui/privacypolicy/a;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p4

    .line 61
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result p5

    .line 65
    if-eqz p5, :cond_2

    .line 66
    .line 67
    const-string p4, ""

    .line 68
    .line 69
    :cond_2
    const-string p5, "policyVersion"

    .line 70
    .line 71
    invoke-interface {v1, p5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 75
    .line 76
    .line 77
    move-result-object p4

    .line 78
    invoke-virtual {p4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p4

    .line 82
    const-string p5, "language"

    .line 83
    .line 84
    invoke-interface {v1, p5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 88
    .line 89
    .line 90
    move-result-object p4

    .line 91
    invoke-virtual {p4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p4

    .line 95
    const-string p5, "region"

    .line 96
    .line 97
    invoke-interface {v1, p5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    const-string p4, "timestamp"

    .line 101
    .line 102
    invoke-interface {v1, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    new-instance p3, Lorg/json/JSONObject;

    .line 106
    .line 107
    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    .line 108
    .line 109
    .line 110
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 111
    .line 112
    .line 113
    move-result-object p4

    .line 114
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object p4

    .line 118
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result p5

    .line 122
    if-eqz p5, :cond_3

    .line 123
    .line 124
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p5

    .line 128
    check-cast p5, Ljava/util/Map$Entry;

    .line 129
    .line 130
    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    check-cast v2, Ljava/lang/String;

    .line 135
    .line 136
    invoke-interface {p5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p5

    .line 140
    check-cast p5, Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {p3, v2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :catch_0
    move-exception p4

    .line 147
    const-string p5, "build jsonObject error, "

    .line 148
    .line 149
    invoke-static {v0, p5, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    .line 151
    .line 152
    :cond_3
    sget-object p4, Lcom/miui/privacypolicy/NetUtils$HttpMethod;->POST:Lcom/miui/privacypolicy/NetUtils$HttpMethod;

    .line 153
    .line 154
    const-string p5, "https://data.sec.miui.com/privacy/agree/v1"

    .line 155
    .line 156
    invoke-static {v1, p5, p4, p3}, Lcom/miui/privacypolicy/NetUtils;->h(Ljava/util/Map;Ljava/lang/String;Lcom/miui/privacypolicy/NetUtils$HttpMethod;Lorg/json/JSONObject;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p4

    .line 160
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 161
    .line 162
    .line 163
    move-result p5

    .line 164
    const-string v1, "privacy_agree_error"

    .line 165
    .line 166
    if-eqz p5, :cond_4

    .line 167
    .line 168
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    invoke-static {p2, p0, v1, p1}, Lcom/miui/privacypolicy/a;->g(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    const/4 p0, -0x2

    .line 176
    return p0

    .line 177
    :cond_4
    :try_start_1
    new-instance p5, Lorg/json/JSONObject;

    .line 178
    .line 179
    invoke-direct {p5, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    const-string p4, "code"

    .line 183
    .line 184
    invoke-virtual {p5, p4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    move-result p4

    .line 188
    const-string v2, "message"

    .line 189
    .line 190
    invoke-virtual {p5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    const/16 v3, 0xc8

    .line 195
    .line 196
    if-ne p4, v3, :cond_5

    .line 197
    .line 198
    const-string p4, "success"

    .line 199
    .line 200
    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result p4

    .line 204
    if-eqz p4, :cond_5

    .line 205
    .line 206
    const-string p4, "data"

    .line 207
    .line 208
    invoke-virtual {p5, p4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p4

    .line 212
    new-instance p5, Lorg/json/JSONObject;

    .line 213
    .line 214
    invoke-direct {p5, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    const-string p4, "latestPolicyVersion"

    .line 218
    .line 219
    invoke-virtual {p5, p4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p4

    .line 223
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 224
    .line 225
    .line 226
    move-result p5

    .line 227
    if-nez p5, :cond_5

    .line 228
    .line 229
    const-string p5, "privacy_version"

    .line 230
    .line 231
    invoke-static {p4, p0, p5, p1}, Lcom/miui/privacypolicy/a;->g(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-static {p0, v1, p1}, Lcom/miui/privacypolicy/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 235
    .line 236
    .line 237
    invoke-static {p0, p2, p1}, Lcom/miui/privacypolicy/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 238
    .line 239
    .line 240
    const-string p2, "privacy_update"

    .line 241
    .line 242
    invoke-static {p0, p2, p1}, Lcom/miui/privacypolicy/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 243
    .line 244
    .line 245
    const/4 p0, 0x1

    .line 246
    return p0

    .line 247
    :catch_1
    move-exception p2

    .line 248
    const-string p4, "handlePrivacyAgreeTask error, "

    .line 249
    .line 250
    invoke-static {v0, p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 251
    .line 252
    .line 253
    :cond_5
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p2

    .line 257
    invoke-static {p2, p0, v1, p1}, Lcom/miui/privacypolicy/a;->g(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    const/4 p0, -0x3

    .line 261
    return p0
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
.end method

.class public Lt5/a;
.super Ljava/lang/Object;
.source "AccountLogout.java"


# direct methods
.method private static a(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/InvalidResponseException;,
            Lcom/xiaomi/accountsdk/request/AccessDeniedException;,
            Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    sget-object v0, Lcom/xiaomi/accountsdk/account/d;->z0:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p0}, Lcom/xiaomi/passport/accountmanager/g;->z(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/g;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "encrypted_user_id"

    .line 12
    .line 13
    invoke-virtual {v2, p1, v3}, Lcom/xiaomi/passport/accountmanager/g;->o(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {p0}, Lcom/xiaomi/passport/accountmanager/g;->z(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/g;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/accountmanager/g;->b(Landroid/accounts/Account;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const/4 v4, 0x0

    .line 34
    const/16 v5, 0xf

    .line 35
    .line 36
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    new-instance v4, Lcom/xiaomi/accountsdk/utils/EasyMap;

    .line 41
    .line 42
    invoke-direct {v4}, Lcom/xiaomi/accountsdk/utils/EasyMap;-><init>()V

    .line 43
    .line 44
    .line 45
    iget-object p1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 46
    .line 47
    const-string v5, "userId"

    .line 48
    .line 49
    invoke-virtual {v4, v5, p1}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/x;->a()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    const-string v5, "userSpaceId"

    .line 58
    .line 59
    invoke-virtual {p1, v5, v4}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPutOpt(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const/4 v4, 0x0

    .line 64
    if-nez p4, :cond_0

    .line 65
    .line 66
    move-object p4, v4

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p4

    .line 72
    :goto_0
    const-string v5, "isMainSpace"

    .line 73
    .line 74
    invoke-virtual {p1, v5, p4}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPutOpt(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-nez p5, :cond_1

    .line 79
    .line 80
    move-object p4, v4

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p4

    .line 86
    :goto_1
    const-string p5, "isLastSpace"

    .line 87
    .line 88
    invoke-virtual {p1, p5, p4}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPutOpt(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    const-string p4, "sid"

    .line 93
    .line 94
    invoke-virtual {p1, p4, p3}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    const-string p3, "deviceModel"

    .line 99
    .line 100
    invoke-virtual {p1, p3, v1}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    if-nez p2, :cond_2

    .line 105
    .line 106
    move-object p2, v4

    .line 107
    goto :goto_2

    .line 108
    :cond_2
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    :goto_2
    const-string p3, "isFindDeviceSwitchOn"

    .line 113
    .line 114
    invoke-virtual {p1, p3, p2}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPutOpt(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    const/4 p2, 0x1

    .line 119
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p3

    .line 123
    const-string p4, "_json"

    .line 124
    .line 125
    invoke-virtual {p1, p4, p3}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    const-string p3, "traceId"

    .line 130
    .line 131
    invoke-virtual {p1, p3, v3}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    new-instance p3, Lcom/xiaomi/accountsdk/utils/EasyMap;

    .line 136
    .line 137
    invoke-direct {p3}, Lcom/xiaomi/accountsdk/utils/EasyMap;-><init>()V

    .line 138
    .line 139
    .line 140
    const-string p4, "passToken"

    .line 141
    .line 142
    invoke-virtual {p3, p4, p0}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    const-string p3, "cUserId"

    .line 147
    .line 148
    invoke-virtual {p0, p3, v2}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    new-instance p3, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    const-string p4, "logoutDevice traceId: "

    .line 158
    .line 159
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p3

    .line 169
    const-string p4, "AccountLogout"

    .line 170
    .line 171
    invoke-static {p4, p3}, Lcom/xiaomi/accountsdk/utils/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-static {v0, p1, p0, p2}, La6/l;->h(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)La6/k$h;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassport;->A(La6/k$h;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    .line 183
    .line 184
    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 185
    .line 186
    .line 187
    :try_start_1
    const-string p0, "code"

    .line 188
    .line 189
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    move-result p0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 193
    if-eqz p0, :cond_5

    .line 194
    .line 195
    const/4 p2, 0x2

    .line 196
    if-eq p0, p2, :cond_4

    .line 197
    .line 198
    const p1, 0x11180

    .line 199
    .line 200
    .line 201
    if-eq p0, p1, :cond_3

    .line 202
    .line 203
    new-instance p1, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    .line 204
    .line 205
    new-instance p2, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    const-string p3, "unknown code="

    .line 211
    .line 212
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p0

    .line 222
    invoke-direct {p1, p0}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    throw p1

    .line 226
    :cond_3
    new-instance p0, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;

    .line 227
    .line 228
    const-string p1, "un-authenticated"

    .line 229
    .line 230
    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    throw p0

    .line 234
    :cond_4
    :try_start_2
    const-string p0, "notificationUrl"

    .line 235
    .line 236
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 240
    return-object p0

    .line 241
    :catch_0
    new-instance p0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    .line 242
    .line 243
    const-string p1, "response no notificationUrl"

    .line 244
    .line 245
    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    throw p0

    .line 249
    :cond_5
    return-object v4

    .line 250
    :catch_1
    new-instance p0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    .line 251
    .line 252
    const-string p1, "response no code"

    .line 253
    .line 254
    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    throw p0

    .line 258
    :catch_2
    new-instance p0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    .line 259
    .line 260
    const-string p1, "response not json"

    .line 261
    .line 262
    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    throw p0

    .line 266
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 267
    .line 268
    const-string p1, "no account when request logout"

    .line 269
    .line 270
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    throw p0
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

.method public static b(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/AccessDeniedException;,
            Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/InvalidResponseException;
        }
    .end annotation

    .line 1
    const/4 v2, 0x0

    .line 2
    const/4 v4, 0x0

    .line 3
    const/4 v5, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move-object v3, p2

    .line 7
    invoke-static/range {v0 .. v5}, Lt5/a;->a(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
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
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 5

    .line 1
    const-string v0, "AccountLogout"

    .line 2
    .line 3
    invoke-static {p0}, Lcom/xiaomi/passport/accountmanager/g;->A(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_2

    .line 8
    .line 9
    invoke-static {p0}, Lcom/xiaomi/passport/accountmanager/g;->z(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/g;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lcom/xiaomi/passport/accountmanager/g;->l()Landroid/accounts/Account;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    return v2

    .line 21
    :cond_0
    const/4 v3, 0x0

    .line 22
    invoke-virtual {p0, v3, v3}, Lcom/xiaomi/passport/accountmanager/g;->y(Lcom/xiaomi/passport/accountmanager/h;Landroid/os/Handler;)Lcom/xiaomi/passport/accountmanager/i;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    :try_start_0
    invoke-virtual {v3}, Lcom/xiaomi/passport/accountmanager/i;->getResult()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Landroid/os/Bundle;

    .line 31
    .line 32
    const-string v4, "booleanResult"

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception v3

    .line 40
    const-string v4, "error when remove account"

    .line 41
    .line 42
    invoke-static {v0, v4, v3}, Lcom/xiaomi/accountsdk/utils/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    if-eqz v2, :cond_1

    .line 46
    .line 47
    const-string v3, "Xiaomi account removed successfully!"

    .line 48
    .line 49
    invoke-static {v0, v3}, Lcom/xiaomi/accountsdk/utils/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lb7/h;->a()V

    .line 53
    .line 54
    .line 55
    sget-object v0, Lcom/xiaomi/passport/accountmanager/IXiaomiAccountManager$UpdateType;->POST_REMOVE:Lcom/xiaomi/passport/accountmanager/IXiaomiAccountManager$UpdateType;

    .line 56
    .line 57
    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/passport/accountmanager/g;->r(Landroid/accounts/Account;Lcom/xiaomi/passport/accountmanager/IXiaomiAccountManager$UpdateType;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    return v2

    .line 61
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    const-string v0, "can not remove account directly when has system account"

    .line 64
    .line 65
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p0
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

.class public Lcom/xiaomi/passport/uicontroller/PhoneLoginController;
.super Ljava/lang/Object;
.source "PhoneLoginController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/uicontroller/PhoneLoginController$q;,
        Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;,
        Lcom/xiaomi/passport/uicontroller/PhoneLoginController$n;,
        Lcom/xiaomi/passport/uicontroller/PhoneLoginController$o;,
        Lcom/xiaomi/passport/uicontroller/PhoneLoginController$m;,
        Lcom/xiaomi/passport/uicontroller/PhoneLoginController$s;,
        Lcom/xiaomi/passport/uicontroller/PhoneLoginController$p;,
        Lcom/xiaomi/passport/uicontroller/PhoneLoginController$r;
    }
.end annotation


# static fields
.field private static final b:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->b:Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    return-void
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

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$q;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$q;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$q;

    .line 10
    .line 11
    return-void
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

.method static synthetic a(Ljava/lang/Throwable;)Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->e(Ljava/lang/Throwable;)Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
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

.method static synthetic b(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;)Lcom/xiaomi/passport/uicontroller/PhoneLoginController$q;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$q;

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

.method static synthetic c(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->d(Ljava/lang/Throwable;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
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

.method private d(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/xiaomi/accountsdk/account/exception/AccountException;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/xiaomi/accountsdk/account/exception/AccountException;

    .line 6
    .line 7
    iget-boolean p1, p1, Lcom/xiaomi/accountsdk/account/exception/AccountException;->isStsUrlRequestError:Z

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    instance-of v0, p1, Lcom/xiaomi/accountsdk/account/exception/HttpException;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    check-cast p1, Lcom/xiaomi/accountsdk/account/exception/HttpException;

    .line 15
    .line 16
    iget-boolean p1, p1, Lcom/xiaomi/accountsdk/account/exception/HttpException;->isStsUrlRequestError:Z

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    instance-of v0, p1, Lcom/xiaomi/accountsdk/account/exception/PassportIOException;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    check-cast p1, Lcom/xiaomi/accountsdk/account/exception/PassportIOException;

    .line 24
    .line 25
    iget-boolean p1, p1, Lcom/xiaomi/accountsdk/account/exception/PassportIOException;->isStsUrlRequestError:Z

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const/4 p1, 0x0

    .line 29
    :goto_0
    return p1
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

.method private static e(Ljava/lang/Throwable;)Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->ERROR_SERVER:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    instance-of v0, p0, Ljava/io/IOException;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    sget-object p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->ERROR_NETWORK:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    instance-of v0, p0, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    sget-object p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->ERROR_AUTH_FAIL:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    instance-of v0, p0, Lcom/xiaomi/accountsdk/request/AccessDeniedException;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    sget-object p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->ERROR_ACCESS_DENIED:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_3
    instance-of v0, p0, Lcom/xiaomi/accountsdk/account/exception/InvalidParameterException;

    .line 30
    .line 31
    if-eqz v0, :cond_4

    .line 32
    .line 33
    sget-object p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->ERROR_INVALID_PARAM:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_4
    instance-of v0, p0, Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException;

    .line 37
    .line 38
    if-eqz v0, :cond_5

    .line 39
    .line 40
    sget-object p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->ERROR_NON_EXIST_USER:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_5
    instance-of p0, p0, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;

    .line 44
    .line 45
    if-eqz p0, :cond_6

    .line 46
    .line 47
    sget-object p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->ERROR_PASSWORD:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_6
    sget-object p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->ERROR_UNKNOWN:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    .line 51
    .line 52
    :goto_0
    return-object p0
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

.method public static f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$n;)Lcom/xiaomi/passport/uicontroller/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xiaomi/passport/uicontroller/PhoneLoginController$n;",
            ")",
            "Lcom/xiaomi/passport/uicontroller/a<",
            "Lcom/xiaomi/passport/data/LoginPreference;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p4, :cond_0

    .line 2
    .line 3
    const/4 p4, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$c;

    .line 6
    .line 7
    invoke-direct {v0, p4}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$c;-><init>(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$n;)V

    .line 8
    .line 9
    .line 10
    move-object p4, v0

    .line 11
    :goto_0
    new-instance v0, Lcom/xiaomi/passport/uicontroller/a;

    .line 12
    .line 13
    new-instance v1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$d;

    .line 14
    .line 15
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, p4}, Lcom/xiaomi/passport/uicontroller/a;-><init>(Ljava/util/concurrent/Callable;Lcom/xiaomi/passport/uicontroller/a$b;)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->b:Ljava/util/concurrent/ExecutorService;

    .line 22
    .line 23
    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 24
    .line 25
    .line 26
    return-object v0
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


# virtual methods
.method public g(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$m;)Lcom/xiaomi/passport/uicontroller/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;",
            "Lcom/xiaomi/passport/uicontroller/PhoneLoginController$m;",
            ")",
            "Lcom/xiaomi/passport/uicontroller/a<",
            "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    new-instance v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$k;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$k;-><init>(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$m;Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;)V

    .line 6
    .line 7
    .line 8
    new-instance p2, Lcom/xiaomi/passport/uicontroller/a;

    .line 9
    .line 10
    new-instance v1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$l;

    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$l;-><init>(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p2, v1, v0}, Lcom/xiaomi/passport/uicontroller/a;-><init>(Ljava/util/concurrent/Callable;Lcom/xiaomi/passport/uicontroller/a$b;)V

    .line 16
    .line 17
    .line 18
    sget-object p1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->b:Ljava/util/concurrent/ExecutorService;

    .line 19
    .line 20
    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 21
    .line 22
    .line 23
    return-object p2

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    const-string p2, "should implements login callback"

    .line 27
    .line 28
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1
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

.method public h(Lcom/xiaomi/accountsdk/account/data/d;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$p;)Lcom/xiaomi/passport/uicontroller/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/accountsdk/account/data/d;",
            "Lcom/xiaomi/passport/uicontroller/PhoneLoginController$p;",
            ")",
            "Lcom/xiaomi/passport/uicontroller/a<",
            "Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    new-instance v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$g;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$g;-><init>(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$p;)V

    .line 6
    .line 7
    .line 8
    new-instance p2, Lcom/xiaomi/passport/uicontroller/a;

    .line 9
    .line 10
    new-instance v1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$h;

    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$h;-><init>(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;Lcom/xiaomi/accountsdk/account/data/d;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p2, v1, v0}, Lcom/xiaomi/passport/uicontroller/a;-><init>(Ljava/util/concurrent/Callable;Lcom/xiaomi/passport/uicontroller/a$b;)V

    .line 16
    .line 17
    .line 18
    sget-object p1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->b:Ljava/util/concurrent/ExecutorService;

    .line 19
    .line 20
    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 21
    .line 22
    .line 23
    return-object p2

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    const-string p2, "should implements phone user info callback"

    .line 27
    .line 28
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1
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

.method public i(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$o;)Lcom/xiaomi/passport/uicontroller/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;",
            "Lcom/xiaomi/passport/uicontroller/PhoneLoginController$o;",
            ")",
            "Lcom/xiaomi/passport/uicontroller/a<",
            "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    new-instance v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$a;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$a;-><init>(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$o;)V

    .line 6
    .line 7
    .line 8
    new-instance p2, Lcom/xiaomi/passport/uicontroller/a;

    .line 9
    .line 10
    new-instance v1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$b;

    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$b;-><init>(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p2, v1, v0}, Lcom/xiaomi/passport/uicontroller/a;-><init>(Ljava/util/concurrent/Callable;Lcom/xiaomi/passport/uicontroller/a$b;)V

    .line 16
    .line 17
    .line 18
    sget-object p1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->b:Ljava/util/concurrent/ExecutorService;

    .line 19
    .line 20
    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 21
    .line 22
    .line 23
    return-object p2

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    const-string p2, "should implements register callback"

    .line 27
    .line 28
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1
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

.method public j(Lcom/xiaomi/accountsdk/account/data/e;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$r;)Lcom/xiaomi/passport/uicontroller/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/accountsdk/account/data/e;",
            "Lcom/xiaomi/passport/uicontroller/PhoneLoginController$r;",
            ")",
            "Lcom/xiaomi/passport/uicontroller/a<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    new-instance v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$e;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$e;-><init>(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$r;)V

    .line 6
    .line 7
    .line 8
    new-instance p2, Lcom/xiaomi/passport/uicontroller/a;

    .line 9
    .line 10
    new-instance v1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$f;

    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$f;-><init>(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;Lcom/xiaomi/accountsdk/account/data/e;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p2, v1, v0}, Lcom/xiaomi/passport/uicontroller/a;-><init>(Ljava/util/concurrent/Callable;Lcom/xiaomi/passport/uicontroller/a$b;)V

    .line 16
    .line 17
    .line 18
    sget-object p1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->b:Ljava/util/concurrent/ExecutorService;

    .line 19
    .line 20
    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 21
    .line 22
    .line 23
    return-object p2

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    const-string p2, "should implements login callback"

    .line 27
    .line 28
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1
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

.method public k(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->a:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$q;

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

.method public l(Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$s;)Lcom/xiaomi/passport/uicontroller/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;",
            "Lcom/xiaomi/passport/uicontroller/PhoneLoginController$s;",
            ")",
            "Lcom/xiaomi/passport/uicontroller/a<",
            "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    new-instance v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$i;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$i;-><init>(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$s;Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;)V

    .line 6
    .line 7
    .line 8
    new-instance p2, Lcom/xiaomi/passport/uicontroller/a;

    .line 9
    .line 10
    new-instance v1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$j;

    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$j;-><init>(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p2, v1, v0}, Lcom/xiaomi/passport/uicontroller/a;-><init>(Ljava/util/concurrent/Callable;Lcom/xiaomi/passport/uicontroller/a$b;)V

    .line 16
    .line 17
    .line 18
    sget-object p1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->b:Ljava/util/concurrent/ExecutorService;

    .line 19
    .line 20
    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 21
    .line 22
    .line 23
    return-object p2

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    const-string p2, "should implements login callback"

    .line 27
    .line 28
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1
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

.class public Lcom/xiaomi/passport/ui/view/AgreementView;
.super Landroid/widget/FrameLayout;
.source "AgreementView.java"


# instance fields
.field private a:Landroid/widget/CheckBox;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/xiaomi/phonenum/data/AccountCertification$Source;

.field private d:Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy;

.field e:Lcom/xiaomi/passport/ui/internal/util/LinkSpanHelper$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Lcom/xiaomi/passport/ui/view/AgreementView$a;

    .line 5
    .line 6
    invoke-direct {p2, p0}, Lcom/xiaomi/passport/ui/view/AgreementView$a;-><init>(Lcom/xiaomi/passport/ui/view/AgreementView;)V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/xiaomi/passport/ui/view/AgreementView;->e:Lcom/xiaomi/passport/ui/internal/util/LinkSpanHelper$a;

    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/view/AgreementView;->c(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    return-void
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

.method static synthetic a(Lcom/xiaomi/passport/ui/view/AgreementView;)Landroid/widget/CheckBox;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/passport/ui/view/AgreementView;->a:Landroid/widget/CheckBox;

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

.method private b(Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x2

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, -0x1

    .line 12
    sparse-switch v0, :sswitch_data_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :sswitch_0
    const-string v0, "TELECOM"

    .line 17
    .line 18
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-nez p2, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v4, v1

    .line 26
    goto :goto_0

    .line 27
    :sswitch_1
    const-string v0, "UNICOM"

    .line 28
    .line 29
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-nez p2, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move v4, v2

    .line 37
    goto :goto_0

    .line 38
    :sswitch_2
    const-string v0, "MOBILE"

    .line 39
    .line 40
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-nez p2, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    move v4, v3

    .line 48
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 49
    .line 50
    .line 51
    sget-object p2, Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$Type;->APP_JOIN:Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$Type;

    .line 52
    .line 53
    if-ne p1, p2, :cond_3

    .line 54
    .line 55
    sget p2, Ln5/g;->O0:I

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    sget p2, Ln5/g;->S0:I

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :pswitch_0
    sget-object p2, Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$Type;->APP_JOIN:Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$Type;

    .line 62
    .line 63
    if-ne p1, p2, :cond_4

    .line 64
    .line 65
    sget p2, Ln5/g;->Q0:I

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_4
    sget p2, Ln5/g;->U0:I

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :pswitch_1
    sget-object p2, Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$Type;->APP_JOIN:Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$Type;

    .line 72
    .line 73
    if-ne p1, p2, :cond_5

    .line 74
    .line 75
    sget p2, Ln5/g;->R0:I

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_5
    sget p2, Ln5/g;->V0:I

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :pswitch_2
    sget-object p2, Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$Type;->APP_JOIN:Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$Type;

    .line 82
    .line 83
    if-ne p1, p2, :cond_6

    .line 84
    .line 85
    sget p2, Ln5/g;->P0:I

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_6
    sget p2, Ln5/g;->T0:I

    .line 89
    .line 90
    :goto_1
    sget-object v0, Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$Type;->APP_JOIN:Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$Type;

    .line 91
    .line 92
    const/4 v4, 0x3

    .line 93
    if-ne p1, v0, :cond_7

    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    const/4 v0, 0x5

    .line 100
    new-array v0, v0, [Ljava/lang/Object;

    .line 101
    .line 102
    iget-object v5, p0, Lcom/xiaomi/passport/ui/view/AgreementView;->d:Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy;

    .line 103
    .line 104
    iget-object v6, v5, Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy;->tripartiteAppAgreementUrl:Ljava/lang/String;

    .line 105
    .line 106
    aput-object v6, v0, v3

    .line 107
    .line 108
    iget-object v3, v5, Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy;->tripartiteAppPrivacyUrl:Ljava/lang/String;

    .line 109
    .line 110
    aput-object v3, v0, v2

    .line 111
    .line 112
    aput-object p3, v0, v1

    .line 113
    .line 114
    aput-object p4, v0, v4

    .line 115
    .line 116
    const/4 p3, 0x4

    .line 117
    aput-object p5, v0, p3

    .line 118
    .line 119
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    goto :goto_2

    .line 124
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    new-array v0, v4, [Ljava/lang/Object;

    .line 129
    .line 130
    aput-object p3, v0, v3

    .line 131
    .line 132
    aput-object p4, v0, v2

    .line 133
    .line 134
    aput-object p5, v0, v1

    .line 135
    .line 136
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    :goto_2
    return-object p1

    .line 141
    :sswitch_data_0
    .sparse-switch
        -0x78227b5e -> :sswitch_2
        -0x6a86b56f -> :sswitch_1
        -0x2a66ce89 -> :sswitch_0
    .end sparse-switch

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
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

.method private c(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget v0, Ln5/f;->q:I

    .line 6
    .line 7
    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    sget p1, Ln5/e;->E0:I

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroid/widget/CheckBox;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/xiaomi/passport/ui/view/AgreementView;->a:Landroid/widget/CheckBox;

    .line 19
    .line 20
    sget p1, Ln5/e;->F0:I

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Landroid/widget/TextView;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/xiaomi/passport/ui/view/AgreementView;->b:Landroid/widget/TextView;

    .line 29
    .line 30
    return-void
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


# virtual methods
.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/view/AgreementView;->a:Landroid/widget/CheckBox;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
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

.method public e([Lcom/xiaomi/passport/ui/data/PhoneAccount;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    array-length v1, p1

    .line 5
    if-lez v1, :cond_2

    .line 6
    .line 7
    array-length v1, p1

    .line 8
    move v2, v0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_2

    .line 10
    .line 11
    aget-object v3, p1, v2

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-object v4, p0, Lcom/xiaomi/passport/ui/view/AgreementView;->c:Lcom/xiaomi/phonenum/data/AccountCertification$Source;

    .line 17
    .line 18
    if-nez v4, :cond_1

    .line 19
    .line 20
    iget-object v3, v3, Lcom/xiaomi/passport/ui/data/PhoneAccount;->accountCertification:Lcom/xiaomi/phonenum/data/AccountCertification;

    .line 21
    .line 22
    iget-object v3, v3, Lcom/xiaomi/phonenum/data/AccountCertification;->source:Lcom/xiaomi/phonenum/data/AccountCertification$Source;

    .line 23
    .line 24
    iput-object v3, p0, Lcom/xiaomi/passport/ui/view/AgreementView;->c:Lcom/xiaomi/phonenum/data/AccountCertification$Source;

    .line 25
    .line 26
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    iget-object p1, p0, Lcom/xiaomi/passport/ui/view/AgreementView;->d:Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy;

    .line 30
    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    iget-object p1, p1, Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy;->normalTextHexColor:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_3

    .line 40
    .line 41
    iget-object p1, p0, Lcom/xiaomi/passport/ui/view/AgreementView;->b:Landroid/widget/TextView;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/xiaomi/passport/ui/view/AgreementView;->d:Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy;

    .line 44
    .line 45
    iget-object v1, v1, Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy;->normalTextHexColor:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    .line 53
    .line 54
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/view/AgreementView;->getAppAgreement()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iget-object v1, p0, Lcom/xiaomi/passport/ui/view/AgreementView;->b:Landroid/widget/TextView;

    .line 59
    .line 60
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/xiaomi/passport/ui/view/AgreementView;->b:Landroid/widget/TextView;

    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    iget-object v3, p0, Lcom/xiaomi/passport/ui/view/AgreementView;->d:Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy;

    .line 74
    .line 75
    if-nez v3, :cond_4

    .line 76
    .line 77
    const/4 v4, 0x0

    .line 78
    goto :goto_2

    .line 79
    :cond_4
    iget-object v4, v3, Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy;->clickLineHexColor:Ljava/lang/String;

    .line 80
    .line 81
    :goto_2
    if-eqz v3, :cond_5

    .line 82
    .line 83
    iget-boolean v3, v3, Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy;->isShowClinkLineUnderLine:Z

    .line 84
    .line 85
    if-eqz v3, :cond_6

    .line 86
    .line 87
    :cond_5
    const/4 v0, 0x1

    .line 88
    :cond_6
    iget-object v3, p0, Lcom/xiaomi/passport/ui/view/AgreementView;->e:Lcom/xiaomi/passport/ui/internal/util/LinkSpanHelper$a;

    .line 89
    .line 90
    invoke-static {v2, p1, v4, v0, v3}, Lcom/xiaomi/passport/ui/internal/util/LinkSpanHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/xiaomi/passport/ui/internal/util/LinkSpanHelper$a;)Landroid/text/Spannable;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lcom/xiaomi/passport/ui/view/AgreementView;->b:Landroid/widget/TextView;

    .line 98
    .line 99
    new-instance v0, Lcom/xiaomi/passport/ui/view/AgreementView$b;

    .line 100
    .line 101
    invoke-direct {v0, p0}, Lcom/xiaomi/passport/ui/view/AgreementView$b;-><init>(Lcom/xiaomi/passport/ui/view/AgreementView;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    .line 106
    .line 107
    return-void
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

.method public getAppAgreement()Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/view/AgreementView;->d:Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$Type;->DEF:Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$Type;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, v0, Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy;->type:Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$Type;

    .line 9
    .line 10
    :goto_0
    move-object v2, v0

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {}, Lcom/xiaomi/passport/ui/license/a;->a()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-static {}, Lcom/xiaomi/passport/ui/license/a;->b()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    sget-object v1, Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$Type;->APP_JOIN:Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$Type;

    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    const/4 v6, 0x1

    .line 27
    const/4 v7, 0x0

    .line 28
    if-ne v2, v1, :cond_2

    .line 29
    .line 30
    iget-object v1, p0, Lcom/xiaomi/passport/ui/view/AgreementView;->c:Lcom/xiaomi/phonenum/data/AccountCertification$Source;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    iget-object v3, v1, Lcom/xiaomi/phonenum/data/AccountCertification$Source;->type:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v6, v1, Lcom/xiaomi/phonenum/data/AccountCertification$Source;->link:Ljava/lang/String;

    .line 37
    .line 38
    move-object v1, p0

    .line 39
    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/passport/ui/view/AgreementView;->b(Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    sget v1, Ln5/g;->O0:I

    .line 45
    .line 46
    const/4 v2, 0x4

    .line 47
    new-array v2, v2, [Ljava/lang/Object;

    .line 48
    .line 49
    iget-object v8, p0, Lcom/xiaomi/passport/ui/view/AgreementView;->d:Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy;

    .line 50
    .line 51
    iget-object v9, v8, Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy;->tripartiteAppAgreementUrl:Ljava/lang/String;

    .line 52
    .line 53
    aput-object v9, v2, v7

    .line 54
    .line 55
    iget-object v7, v8, Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy;->tripartiteAppPrivacyUrl:Ljava/lang/String;

    .line 56
    .line 57
    aput-object v7, v2, v6

    .line 58
    .line 59
    aput-object v4, v2, v3

    .line 60
    .line 61
    const/4 v3, 0x3

    .line 62
    aput-object v5, v2, v3

    .line 63
    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    sget-object v1, Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$Type;->APP_CUSTOM:Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$Type;

    .line 70
    .line 71
    if-ne v2, v1, :cond_3

    .line 72
    .line 73
    iget-object v0, p0, Lcom/xiaomi/passport/ui/view/AgreementView;->d:Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy;

    .line 74
    .line 75
    iget-object v0, v0, Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy;->tripartiteAppCustomLicense:Ljava/lang/String;

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    iget-object v1, p0, Lcom/xiaomi/passport/ui/view/AgreementView;->c:Lcom/xiaomi/phonenum/data/AccountCertification$Source;

    .line 79
    .line 80
    if-eqz v1, :cond_4

    .line 81
    .line 82
    iget-object v3, v1, Lcom/xiaomi/phonenum/data/AccountCertification$Source;->type:Ljava/lang/String;

    .line 83
    .line 84
    iget-object v6, v1, Lcom/xiaomi/phonenum/data/AccountCertification$Source;->link:Ljava/lang/String;

    .line 85
    .line 86
    move-object v1, p0

    .line 87
    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/passport/ui/view/AgreementView;->b(Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    goto :goto_1

    .line 92
    :cond_4
    sget v1, Ln5/g;->S0:I

    .line 93
    .line 94
    new-array v2, v3, [Ljava/lang/Object;

    .line 95
    .line 96
    aput-object v4, v2, v7

    .line 97
    .line 98
    aput-object v5, v2, v6

    .line 99
    .line 100
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    :goto_1
    return-object v0
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

.method public setCheckBoxVisibility(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/view/AgreementView;->a:Landroid/widget/CheckBox;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

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

.method public setLoginAgreementAndPrivacy(Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/xiaomi/passport/ui/view/AgreementView;->d:Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy;

    .line 2
    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v0, "setLoginAgreementAndPrivacy>>>"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/xiaomi/passport/ui/view/AgreementView;->d:Lcom/xiaomi/passport/ui/license/LoginAgreementAndPrivacy;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v0, "AgreementView"

    .line 23
    .line 24
    invoke-static {v0, p1}, Lcom/xiaomi/accountsdk/utils/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
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

.method public setUserAgreementSelected(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/view/AgreementView;->a:Landroid/widget/CheckBox;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

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

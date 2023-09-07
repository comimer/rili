.class public Lorg/xbill/DNS/TSIG$StreamVerifier;
.super Ljava/lang/Object;
.source "TSIG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/TSIG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamVerifier"
.end annotation


# instance fields
.field private key:Lorg/xbill/DNS/TSIG;

.field private lastTSIG:Lorg/xbill/DNS/TSIGRecord;

.field private lastsigned:I

.field private nresponses:I

.field private verifier:Ljavax/crypto/Mac;


# direct methods
.method public constructor <init>(Lorg/xbill/DNS/TSIG;Lorg/xbill/DNS/TSIGRecord;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->key:Lorg/xbill/DNS/TSIG;

    .line 5
    .line 6
    invoke-static {p1}, Lorg/xbill/DNS/TSIG;->access$000(Lorg/xbill/DNS/TSIG;)Ljavax/crypto/Mac;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Ljavax/crypto/Mac;

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->nresponses:I

    .line 14
    .line 15
    iput-object p2, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->lastTSIG:Lorg/xbill/DNS/TSIGRecord;

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
.end method


# virtual methods
.method public verify(Lorg/xbill/DNS/Message;[B)I
    .locals 10

    .line 1
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getTSIG()Lorg/xbill/DNS/TSIGRecord;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->nresponses:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    add-int/2addr v1, v2

    .line 9
    iput v1, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->nresponses:I

    .line 10
    .line 11
    if-ne v1, v2, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->key:Lorg/xbill/DNS/TSIG;

    .line 14
    .line 15
    iget-object v2, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->lastTSIG:Lorg/xbill/DNS/TSIGRecord;

    .line 16
    .line 17
    invoke-virtual {v1, p1, p2, v2}, Lorg/xbill/DNS/TSIG;->verify(Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/TSIGRecord;)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    new-instance v1, Lorg/xbill/DNS/DNSOutput;

    .line 28
    .line 29
    invoke-direct {v1}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 30
    .line 31
    .line 32
    array-length v2, p2

    .line 33
    invoke-virtual {v1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Ljavax/crypto/Mac;

    .line 37
    .line 38
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v2, v1}, Ljavax/crypto/Mac;->update([B)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Ljavax/crypto/Mac;

    .line 46
    .line 47
    invoke-virtual {v1, p2}, Ljavax/crypto/Mac;->update([B)V

    .line 48
    .line 49
    .line 50
    :cond_0
    iput-object v0, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->lastTSIG:Lorg/xbill/DNS/TSIGRecord;

    .line 51
    .line 52
    return p1

    .line 53
    :cond_1
    const/4 v1, 0x3

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v3, v1}, Lorg/xbill/DNS/Header;->decCount(I)V

    .line 61
    .line 62
    .line 63
    :cond_2
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v3}, Lorg/xbill/DNS/Header;->toWire()[B

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {v4, v1}, Lorg/xbill/DNS/Header;->incCount(I)V

    .line 78
    .line 79
    .line 80
    :cond_3
    iget-object v1, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Ljavax/crypto/Mac;

    .line 81
    .line 82
    invoke-virtual {v1, v3}, Ljavax/crypto/Mac;->update([B)V

    .line 83
    .line 84
    .line 85
    if-nez v0, :cond_4

    .line 86
    .line 87
    array-length v1, p2

    .line 88
    array-length v4, v3

    .line 89
    goto :goto_0

    .line 90
    :cond_4
    iget v1, p1, Lorg/xbill/DNS/Message;->tsigstart:I

    .line 91
    .line 92
    array-length v4, v3

    .line 93
    :goto_0
    sub-int/2addr v1, v4

    .line 94
    iget-object v4, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Ljavax/crypto/Mac;

    .line 95
    .line 96
    array-length v3, v3

    .line 97
    invoke-virtual {v4, p2, v3, v1}, Ljavax/crypto/Mac;->update([BII)V

    .line 98
    .line 99
    .line 100
    const/4 p2, 0x4

    .line 101
    const/4 v1, 0x0

    .line 102
    if-eqz v0, :cond_a

    .line 103
    .line 104
    iget v3, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->nresponses:I

    .line 105
    .line 106
    iput v3, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->lastsigned:I

    .line 107
    .line 108
    iput-object v0, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->lastTSIG:Lorg/xbill/DNS/TSIGRecord;

    .line 109
    .line 110
    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    iget-object v4, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->key:Lorg/xbill/DNS/TSIG;

    .line 115
    .line 116
    invoke-static {v4}, Lorg/xbill/DNS/TSIG;->access$100(Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/Name;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-virtual {v3, v4}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    const-string v4, "verbose"

    .line 125
    .line 126
    if-eqz v3, :cond_8

    .line 127
    .line 128
    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getAlgorithm()Lorg/xbill/DNS/Name;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    iget-object v5, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->key:Lorg/xbill/DNS/TSIG;

    .line 133
    .line 134
    invoke-static {v5}, Lorg/xbill/DNS/TSIG;->access$200(Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/Name;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-virtual {v3, v5}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    if-nez v3, :cond_5

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_5
    new-instance v3, Lorg/xbill/DNS/DNSOutput;

    .line 146
    .line 147
    invoke-direct {v3}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getTimeSigned()Ljava/util/Date;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    .line 155
    .line 156
    .line 157
    move-result-wide v5

    .line 158
    const-wide/16 v7, 0x3e8

    .line 159
    .line 160
    div-long/2addr v5, v7

    .line 161
    const/16 v7, 0x20

    .line 162
    .line 163
    shr-long v7, v5, v7

    .line 164
    .line 165
    long-to-int v7, v7

    .line 166
    const-wide v8, 0xffffffffL

    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    and-long/2addr v5, v8

    .line 172
    invoke-virtual {v3, v7}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3, v5, v6}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getFudge()I

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    invoke-virtual {v3, v5}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 183
    .line 184
    .line 185
    iget-object v5, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Ljavax/crypto/Mac;

    .line 186
    .line 187
    invoke-virtual {v3}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    invoke-virtual {v5, v3}, Ljavax/crypto/Mac;->update([B)V

    .line 192
    .line 193
    .line 194
    iget-object v3, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Ljavax/crypto/Mac;

    .line 195
    .line 196
    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    invoke-static {v3, v5}, Lorg/xbill/DNS/TSIG;->access$300(Ljavax/crypto/Mac;[B)Z

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    if-nez v3, :cond_7

    .line 205
    .line 206
    invoke-static {v4}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    if-eqz v0, :cond_6

    .line 211
    .line 212
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 213
    .line 214
    const-string v1, "BADSIG failure"

    .line 215
    .line 216
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    :cond_6
    iput p2, p1, Lorg/xbill/DNS/Message;->tsigState:I

    .line 220
    .line 221
    const/16 p1, 0x10

    .line 222
    .line 223
    return p1

    .line 224
    :cond_7
    iget-object p2, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Ljavax/crypto/Mac;

    .line 225
    .line 226
    invoke-virtual {p2}, Ljavax/crypto/Mac;->reset()V

    .line 227
    .line 228
    .line 229
    new-instance p2, Lorg/xbill/DNS/DNSOutput;

    .line 230
    .line 231
    invoke-direct {p2}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    array-length v3, v3

    .line 239
    invoke-virtual {p2, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 240
    .line 241
    .line 242
    iget-object v3, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Ljavax/crypto/Mac;

    .line 243
    .line 244
    invoke-virtual {p2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    .line 245
    .line 246
    .line 247
    move-result-object p2

    .line 248
    invoke-virtual {v3, p2}, Ljavax/crypto/Mac;->update([B)V

    .line 249
    .line 250
    .line 251
    iget-object p2, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Ljavax/crypto/Mac;

    .line 252
    .line 253
    invoke-virtual {v0}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-virtual {p2, v0}, Ljavax/crypto/Mac;->update([B)V

    .line 258
    .line 259
    .line 260
    iput v2, p1, Lorg/xbill/DNS/Message;->tsigState:I

    .line 261
    .line 262
    return v1

    .line 263
    :cond_8
    :goto_1
    invoke-static {v4}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    if-eqz v0, :cond_9

    .line 268
    .line 269
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 270
    .line 271
    const-string v1, "BADKEY failure"

    .line 272
    .line 273
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    :cond_9
    iput p2, p1, Lorg/xbill/DNS/Message;->tsigState:I

    .line 277
    .line 278
    const/16 p1, 0x11

    .line 279
    .line 280
    return p1

    .line 281
    :cond_a
    iget v0, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->nresponses:I

    .line 282
    .line 283
    iget v3, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->lastsigned:I

    .line 284
    .line 285
    sub-int/2addr v0, v3

    .line 286
    const/16 v3, 0x64

    .line 287
    .line 288
    if-lt v0, v3, :cond_b

    .line 289
    .line 290
    move v0, v2

    .line 291
    goto :goto_2

    .line 292
    :cond_b
    move v0, v1

    .line 293
    :goto_2
    if-eqz v0, :cond_c

    .line 294
    .line 295
    iput p2, p1, Lorg/xbill/DNS/Message;->tsigState:I

    .line 296
    .line 297
    return v2

    .line 298
    :cond_c
    const/4 p2, 0x2

    .line 299
    iput p2, p1, Lorg/xbill/DNS/Message;->tsigState:I

    .line 300
    .line 301
    return v1
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
.end method

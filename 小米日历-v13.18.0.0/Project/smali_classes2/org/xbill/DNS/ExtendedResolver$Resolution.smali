.class Lorg/xbill/DNS/ExtendedResolver$Resolution;
.super Ljava/lang/Object;
.source "ExtendedResolver.java"

# interfaces
.implements Lorg/xbill/DNS/ResolverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/ExtendedResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Resolution"
.end annotation


# instance fields
.field done:Z

.field inprogress:[Ljava/lang/Object;

.field listener:Lorg/xbill/DNS/ResolverListener;

.field outstanding:I

.field query:Lorg/xbill/DNS/Message;

.field resolvers:[Lorg/xbill/DNS/Resolver;

.field response:Lorg/xbill/DNS/Message;

.field retries:I

.field sent:[I

.field thrown:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lorg/xbill/DNS/ExtendedResolver;Lorg/xbill/DNS/Message;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lorg/xbill/DNS/ExtendedResolver;->access$000(Lorg/xbill/DNS/ExtendedResolver;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    new-array v1, v1, [Lorg/xbill/DNS/Resolver;

    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, [Lorg/xbill/DNS/Resolver;

    .line 19
    .line 20
    check-cast v0, [Lorg/xbill/DNS/Resolver;

    .line 21
    .line 22
    iput-object v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->resolvers:[Lorg/xbill/DNS/Resolver;

    .line 23
    .line 24
    invoke-static {p1}, Lorg/xbill/DNS/ExtendedResolver;->access$100(Lorg/xbill/DNS/ExtendedResolver;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->resolvers:[Lorg/xbill/DNS/Resolver;

    .line 31
    .line 32
    array-length v0, v0

    .line 33
    invoke-static {p1}, Lorg/xbill/DNS/ExtendedResolver;->access$208(Lorg/xbill/DNS/ExtendedResolver;)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    rem-int/2addr v1, v0

    .line 38
    invoke-static {p1}, Lorg/xbill/DNS/ExtendedResolver;->access$200(Lorg/xbill/DNS/ExtendedResolver;)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-le v2, v0, :cond_0

    .line 43
    .line 44
    invoke-static {p1}, Lorg/xbill/DNS/ExtendedResolver;->access$200(Lorg/xbill/DNS/ExtendedResolver;)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    rem-int/2addr v2, v0

    .line 49
    invoke-static {p1, v2}, Lorg/xbill/DNS/ExtendedResolver;->access$202(Lorg/xbill/DNS/ExtendedResolver;I)I

    .line 50
    .line 51
    .line 52
    :cond_0
    if-lez v1, :cond_2

    .line 53
    .line 54
    new-array v2, v0, [Lorg/xbill/DNS/Resolver;

    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    :goto_0
    if-ge v3, v0, :cond_1

    .line 58
    .line 59
    add-int v4, v3, v1

    .line 60
    .line 61
    rem-int/2addr v4, v0

    .line 62
    iget-object v5, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->resolvers:[Lorg/xbill/DNS/Resolver;

    .line 63
    .line 64
    aget-object v4, v5, v4

    .line 65
    .line 66
    aput-object v4, v2, v3

    .line 67
    .line 68
    add-int/lit8 v3, v3, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    iput-object v2, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->resolvers:[Lorg/xbill/DNS/Resolver;

    .line 72
    .line 73
    :cond_2
    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->resolvers:[Lorg/xbill/DNS/Resolver;

    .line 74
    .line 75
    array-length v1, v0

    .line 76
    new-array v1, v1, [I

    .line 77
    .line 78
    iput-object v1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->sent:[I

    .line 79
    .line 80
    array-length v0, v0

    .line 81
    new-array v0, v0, [Ljava/lang/Object;

    .line 82
    .line 83
    iput-object v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->inprogress:[Ljava/lang/Object;

    .line 84
    .line 85
    invoke-static {p1}, Lorg/xbill/DNS/ExtendedResolver;->access$300(Lorg/xbill/DNS/ExtendedResolver;)I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    iput p1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->retries:I

    .line 90
    .line 91
    iput-object p2, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->query:Lorg/xbill/DNS/Message;

    .line 92
    .line 93
    return-void
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
.end method


# virtual methods
.method public handleException(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 5

    .line 1
    const-string v0, "verbose"

    .line 2
    .line 3
    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuffer;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "ExtendedResolver: got "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    monitor-enter p0

    .line 32
    :try_start_0
    iget v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->outstanding:I

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    sub-int/2addr v0, v1

    .line 36
    iput v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->outstanding:I

    .line 37
    .line 38
    iget-boolean v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->done:Z

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    monitor-exit p0

    .line 43
    return-void

    .line 44
    :cond_1
    const/4 v0, 0x0

    .line 45
    move v2, v0

    .line 46
    :goto_0
    iget-object v3, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->inprogress:[Ljava/lang/Object;

    .line 47
    .line 48
    array-length v4, v3

    .line 49
    if-ge v2, v4, :cond_3

    .line 50
    .line 51
    aget-object v4, v3, v2

    .line 52
    .line 53
    if-ne v4, p1, :cond_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    :goto_1
    array-length p1, v3

    .line 60
    if-ne v2, p1, :cond_4

    .line 61
    .line 62
    monitor-exit p0

    .line 63
    return-void

    .line 64
    :cond_4
    iget-object p1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->sent:[I

    .line 65
    .line 66
    aget p1, p1, v2

    .line 67
    .line 68
    if-ne p1, v1, :cond_5

    .line 69
    .line 70
    iget-object v3, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->resolvers:[Lorg/xbill/DNS/Resolver;

    .line 71
    .line 72
    array-length v3, v3

    .line 73
    sub-int/2addr v3, v1

    .line 74
    if-ge v2, v3, :cond_5

    .line 75
    .line 76
    move v0, v1

    .line 77
    :cond_5
    instance-of v3, p2, Ljava/io/InterruptedIOException;

    .line 78
    .line 79
    if-eqz v3, :cond_7

    .line 80
    .line 81
    iget v3, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->retries:I

    .line 82
    .line 83
    if-ge p1, v3, :cond_6

    .line 84
    .line 85
    invoke-virtual {p0, v2}, Lorg/xbill/DNS/ExtendedResolver$Resolution;->send(I)V

    .line 86
    .line 87
    .line 88
    :cond_6
    iget-object p1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->thrown:Ljava/lang/Throwable;

    .line 89
    .line 90
    if-nez p1, :cond_a

    .line 91
    .line 92
    iput-object p2, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->thrown:Ljava/lang/Throwable;

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_7
    instance-of p1, p2, Ljava/net/SocketException;

    .line 96
    .line 97
    if-eqz p1, :cond_9

    .line 98
    .line 99
    iget-object p1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->thrown:Ljava/lang/Throwable;

    .line 100
    .line 101
    if-eqz p1, :cond_8

    .line 102
    .line 103
    instance-of p1, p1, Ljava/io/InterruptedIOException;

    .line 104
    .line 105
    if-eqz p1, :cond_a

    .line 106
    .line 107
    :cond_8
    iput-object p2, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->thrown:Ljava/lang/Throwable;

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_9
    iput-object p2, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->thrown:Ljava/lang/Throwable;

    .line 111
    .line 112
    :cond_a
    :goto_2
    iget-boolean p1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->done:Z

    .line 113
    .line 114
    if-eqz p1, :cond_b

    .line 115
    .line 116
    monitor-exit p0

    .line 117
    return-void

    .line 118
    :cond_b
    if-eqz v0, :cond_c

    .line 119
    .line 120
    add-int/2addr v2, v1

    .line 121
    invoke-virtual {p0, v2}, Lorg/xbill/DNS/ExtendedResolver$Resolution;->send(I)V

    .line 122
    .line 123
    .line 124
    :cond_c
    iget-boolean p1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->done:Z

    .line 125
    .line 126
    if-eqz p1, :cond_d

    .line 127
    .line 128
    monitor-exit p0

    .line 129
    return-void

    .line 130
    :cond_d
    iget p1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->outstanding:I

    .line 131
    .line 132
    if-nez p1, :cond_e

    .line 133
    .line 134
    iput-boolean v1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->done:Z

    .line 135
    .line 136
    iget-object p1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->listener:Lorg/xbill/DNS/ResolverListener;

    .line 137
    .line 138
    if-nez p1, :cond_e

    .line 139
    .line 140
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 141
    .line 142
    .line 143
    monitor-exit p0

    .line 144
    return-void

    .line 145
    :cond_e
    iget-boolean p1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->done:Z

    .line 146
    .line 147
    if-nez p1, :cond_f

    .line 148
    .line 149
    monitor-exit p0

    .line 150
    return-void

    .line 151
    :cond_f
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    iget-object p1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->thrown:Ljava/lang/Throwable;

    .line 153
    .line 154
    instance-of p1, p1, Ljava/lang/Exception;

    .line 155
    .line 156
    if-nez p1, :cond_10

    .line 157
    .line 158
    new-instance p1, Ljava/lang/RuntimeException;

    .line 159
    .line 160
    iget-object p2, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->thrown:Ljava/lang/Throwable;

    .line 161
    .line 162
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iput-object p1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->thrown:Ljava/lang/Throwable;

    .line 170
    .line 171
    :cond_10
    iget-object p1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->listener:Lorg/xbill/DNS/ResolverListener;

    .line 172
    .line 173
    iget-object p2, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->thrown:Ljava/lang/Throwable;

    .line 174
    .line 175
    check-cast p2, Ljava/lang/Exception;

    .line 176
    .line 177
    invoke-interface {p1, p0, p2}, Lorg/xbill/DNS/ResolverListener;->handleException(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 178
    .line 179
    .line 180
    return-void

    .line 181
    :catchall_0
    move-exception p1

    .line 182
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    throw p1
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
.end method

.method public receiveMessage(Ljava/lang/Object;Lorg/xbill/DNS/Message;)V
    .locals 1

    .line 1
    const-string p1, "verbose"

    .line 2
    .line 3
    invoke-static {p1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 10
    .line 11
    const-string v0, "ExtendedResolver: received message"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    monitor-enter p0

    .line 17
    :try_start_0
    iget-boolean p1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->done:Z

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :cond_1
    iput-object p2, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->response:Lorg/xbill/DNS/Message;

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->done:Z

    .line 27
    .line 28
    iget-object p1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->listener:Lorg/xbill/DNS/ResolverListener;

    .line 29
    .line 30
    if-nez p1, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 33
    .line 34
    .line 35
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-interface {p1, p0, p2}, Lorg/xbill/DNS/ResolverListener;->receiveMessage(Ljava/lang/Object;Lorg/xbill/DNS/Message;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    throw p1
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

.method public send(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->sent:[I

    .line 2
    .line 3
    aget v1, v0, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    add-int/2addr v1, v2

    .line 7
    aput v1, v0, p1

    .line 8
    .line 9
    iget v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->outstanding:I

    .line 10
    .line 11
    add-int/2addr v0, v2

    .line 12
    iput v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->outstanding:I

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->inprogress:[Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->resolvers:[Lorg/xbill/DNS/Resolver;

    .line 17
    .line 18
    aget-object v1, v1, p1

    .line 19
    .line 20
    iget-object v3, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->query:Lorg/xbill/DNS/Message;

    .line 21
    .line 22
    invoke-interface {v1, v3, p0}, Lorg/xbill/DNS/Resolver;->sendAsync(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/ResolverListener;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    aput-object v1, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    monitor-enter p0

    .line 31
    :try_start_1
    iput-object p1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->thrown:Ljava/lang/Throwable;

    .line 32
    .line 33
    iput-boolean v2, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->done:Z

    .line 34
    .line 35
    iget-object p1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->listener:Lorg/xbill/DNS/ResolverListener;

    .line 36
    .line 37
    if-nez p1, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 40
    .line 41
    .line 42
    monitor-exit p0

    .line 43
    return-void

    .line 44
    :cond_0
    monitor-exit p0

    .line 45
    :goto_0
    return-void

    .line 46
    :catchall_1
    move-exception p1

    .line 47
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 48
    throw p1
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
.end method

.method public start()Lorg/xbill/DNS/Message;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->sent:[I

    .line 3
    .line 4
    aget v2, v1, v0

    .line 5
    .line 6
    add-int/lit8 v2, v2, 0x1

    .line 7
    .line 8
    aput v2, v1, v0

    .line 9
    .line 10
    iget v1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->outstanding:I

    .line 11
    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    iput v1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->outstanding:I

    .line 15
    .line 16
    iget-object v1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->inprogress:[Ljava/lang/Object;

    .line 17
    .line 18
    new-instance v2, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    aput-object v2, v1, v0

    .line 24
    .line 25
    iget-object v1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->resolvers:[Lorg/xbill/DNS/Resolver;

    .line 26
    .line 27
    aget-object v1, v1, v0

    .line 28
    .line 29
    iget-object v2, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->query:Lorg/xbill/DNS/Message;

    .line 30
    .line 31
    invoke-interface {v1, v2}, Lorg/xbill/DNS/Resolver;->send(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;

    .line 32
    .line 33
    .line 34
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    return-object v0

    .line 36
    :catch_0
    move-exception v1

    .line 37
    iget-object v2, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->inprogress:[Ljava/lang/Object;

    .line 38
    .line 39
    aget-object v0, v2, v0

    .line 40
    .line 41
    invoke-virtual {p0, v0, v1}, Lorg/xbill/DNS/ExtendedResolver$Resolution;->handleException(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 42
    .line 43
    .line 44
    monitor-enter p0

    .line 45
    :catch_1
    :goto_0
    :try_start_1
    iget-boolean v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->done:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    if-nez v0, :cond_0

    .line 48
    .line 49
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 54
    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->response:Lorg/xbill/DNS/Message;

    .line 55
    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_1
    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->thrown:Ljava/lang/Throwable;

    .line 60
    .line 61
    instance-of v1, v0, Ljava/io/IOException;

    .line 62
    .line 63
    if-nez v1, :cond_4

    .line 64
    .line 65
    instance-of v1, v0, Ljava/lang/RuntimeException;

    .line 66
    .line 67
    if-nez v1, :cond_3

    .line 68
    .line 69
    instance-of v1, v0, Ljava/lang/Error;

    .line 70
    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    check-cast v0, Ljava/lang/Error;

    .line 74
    .line 75
    throw v0

    .line 76
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 77
    .line 78
    const-string v1, "ExtendedResolver failure"

    .line 79
    .line 80
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw v0

    .line 84
    :cond_3
    check-cast v0, Ljava/lang/RuntimeException;

    .line 85
    .line 86
    throw v0

    .line 87
    :cond_4
    check-cast v0, Ljava/io/IOException;

    .line 88
    .line 89
    throw v0

    .line 90
    :catchall_0
    move-exception v0

    .line 91
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 92
    throw v0
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
.end method

.method public startAsync(Lorg/xbill/DNS/ResolverListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->listener:Lorg/xbill/DNS/ResolverListener;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/ExtendedResolver$Resolution;->send(I)V

    .line 5
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
.end method

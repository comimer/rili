.class public final Lokhttp3/internal/connection/d;
.super Ljava/lang/Object;
.source "ExchangeFinder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010+\u001a\u00020)\u0012\u0006\u0010/\u001a\u00020,\u0012\u0006\u00103\u001a\u000200\u0012\u0006\u00107\u001a\u000204\u00a2\u0006\u0004\u00088\u00109J8\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0002J0\u0010\u000c\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\n\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002J\u0016\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011J\u000e\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0007J\u000e\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u0019R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u001dR\u0018\u0010!\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010 R\u0016\u0010#\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\"R\u0016\u0010%\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010\"R\u0016\u0010&\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\"R\u0018\u0010(\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\'R\u0014\u0010+\u001a\u00020)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010*R\u001a\u0010/\u001a\u00020,8\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010-\u001a\u0004\u0008$\u0010.R\u0014\u00103\u001a\u0002008\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00081\u00102R\u0014\u00107\u001a\u0002048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00085\u00106\u00a8\u0006:"
    }
    d2 = {
        "Lokhttp3/internal/connection/d;",
        "",
        "",
        "connectTimeout",
        "readTimeout",
        "writeTimeout",
        "pingIntervalMillis",
        "",
        "connectionRetryEnabled",
        "doExtensiveHealthChecks",
        "Lokhttp3/internal/connection/RealConnection;",
        "c",
        "b",
        "Lokhttp3/c0;",
        "f",
        "Lokhttp3/x;",
        "client",
        "Lvb/g;",
        "chain",
        "Lvb/d;",
        "a",
        "Ljava/io/IOException;",
        "e",
        "Lkotlin/u;",
        "h",
        "Lokhttp3/t;",
        "url",
        "g",
        "Lokhttp3/internal/connection/RouteSelector$b;",
        "Lokhttp3/internal/connection/RouteSelector$b;",
        "routeSelection",
        "Lokhttp3/internal/connection/RouteSelector;",
        "Lokhttp3/internal/connection/RouteSelector;",
        "routeSelector",
        "I",
        "refusedStreamCount",
        "d",
        "connectionShutdownCount",
        "otherFailureCount",
        "Lokhttp3/c0;",
        "nextRouteToTry",
        "Lokhttp3/internal/connection/g;",
        "Lokhttp3/internal/connection/g;",
        "connectionPool",
        "Lokhttp3/a;",
        "Lokhttp3/a;",
        "()Lokhttp3/a;",
        "address",
        "Lokhttp3/internal/connection/e;",
        "i",
        "Lokhttp3/internal/connection/e;",
        "call",
        "Lokhttp3/q;",
        "j",
        "Lokhttp3/q;",
        "eventListener",
        "<init>",
        "(Lokhttp3/internal/connection/g;Lokhttp3/a;Lokhttp3/internal/connection/e;Lokhttp3/q;)V",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field private a:Lokhttp3/internal/connection/RouteSelector$b;

.field private b:Lokhttp3/internal/connection/RouteSelector;

.field private c:I

.field private d:I

.field private e:I

.field private f:Lokhttp3/c0;

.field private final g:Lokhttp3/internal/connection/g;

.field private final h:Lokhttp3/a;

.field private final i:Lokhttp3/internal/connection/e;

.field private final j:Lokhttp3/q;


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/g;Lokhttp3/a;Lokhttp3/internal/connection/e;Lokhttp3/q;)V
    .locals 1

    .line 1
    const-string v0, "connectionPool"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "address"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "call"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "eventListener"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lokhttp3/internal/connection/d;->g:Lokhttp3/internal/connection/g;

    .line 25
    .line 26
    iput-object p2, p0, Lokhttp3/internal/connection/d;->h:Lokhttp3/a;

    .line 27
    .line 28
    iput-object p3, p0, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    .line 29
    .line 30
    iput-object p4, p0, Lokhttp3/internal/connection/d;->j:Lokhttp3/q;

    .line 31
    .line 32
    return-void
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
.end method

.method private final b(IIIIZ)Lokhttp3/internal/connection/RealConnection;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object v1, p0

    .line 2
    iget-object v0, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    .line 3
    .line 4
    invoke-virtual {v0}, Lokhttp3/internal/connection/e;->c()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_14

    .line 9
    .line 10
    iget-object v0, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    .line 11
    .line 12
    invoke-virtual {v0}, Lokhttp3/internal/connection/e;->n()Lokhttp3/internal/connection/RealConnection;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/4 v0, 0x1

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    if-eqz v2, :cond_6

    .line 20
    .line 21
    monitor-enter v2

    .line 22
    :try_start_0
    invoke-virtual {v2}, Lokhttp3/internal/connection/RealConnection;->p()Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-nez v5, :cond_1

    .line 27
    .line 28
    invoke-virtual {v2}, Lokhttp3/internal/connection/RealConnection;->z()Lokhttp3/c0;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-virtual {v5}, Lokhttp3/c0;->a()Lokhttp3/a;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-virtual {v5}, Lokhttp3/a;->l()Lokhttp3/t;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {p0, v5}, Lokhttp3/internal/connection/d;->g(Lokhttp3/t;)Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-nez v5, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move-object v5, v4

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    :goto_0
    iget-object v5, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    .line 50
    .line 51
    invoke-virtual {v5}, Lokhttp3/internal/connection/e;->z()Ljava/net/Socket;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    :goto_1
    sget-object v6, Lkotlin/u;->a:Lkotlin/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    monitor-exit v2

    .line 58
    iget-object v6, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    .line 59
    .line 60
    invoke-virtual {v6}, Lokhttp3/internal/connection/e;->n()Lokhttp3/internal/connection/RealConnection;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    if-eqz v6, :cond_4

    .line 65
    .line 66
    if-nez v5, :cond_2

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_2
    move v0, v3

    .line 70
    :goto_2
    if-eqz v0, :cond_3

    .line 71
    .line 72
    return-object v2

    .line 73
    :cond_3
    const-string v0, "Check failed."

    .line 74
    .line 75
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw v2

    .line 85
    :cond_4
    if-eqz v5, :cond_5

    .line 86
    .line 87
    invoke-static {v5}, Lsb/b;->k(Ljava/net/Socket;)V

    .line 88
    .line 89
    .line 90
    :cond_5
    iget-object v5, v1, Lokhttp3/internal/connection/d;->j:Lokhttp3/q;

    .line 91
    .line 92
    iget-object v6, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    .line 93
    .line 94
    invoke-virtual {v5, v6, v2}, Lokhttp3/q;->k(Lokhttp3/e;Lokhttp3/i;)V

    .line 95
    .line 96
    .line 97
    goto :goto_3

    .line 98
    :catchall_0
    move-exception v0

    .line 99
    monitor-exit v2

    .line 100
    throw v0

    .line 101
    :cond_6
    :goto_3
    iput v3, v1, Lokhttp3/internal/connection/d;->c:I

    .line 102
    .line 103
    iput v3, v1, Lokhttp3/internal/connection/d;->d:I

    .line 104
    .line 105
    iput v3, v1, Lokhttp3/internal/connection/d;->e:I

    .line 106
    .line 107
    iget-object v2, v1, Lokhttp3/internal/connection/d;->g:Lokhttp3/internal/connection/g;

    .line 108
    .line 109
    iget-object v5, v1, Lokhttp3/internal/connection/d;->h:Lokhttp3/a;

    .line 110
    .line 111
    iget-object v6, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    .line 112
    .line 113
    invoke-virtual {v2, v5, v6, v4, v3}, Lokhttp3/internal/connection/g;->a(Lokhttp3/a;Lokhttp3/internal/connection/e;Ljava/util/List;Z)Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-eqz v2, :cond_8

    .line 118
    .line 119
    iget-object v0, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    .line 120
    .line 121
    invoke-virtual {v0}, Lokhttp3/internal/connection/e;->n()Lokhttp3/internal/connection/RealConnection;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    if-nez v0, :cond_7

    .line 126
    .line 127
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 128
    .line 129
    .line 130
    :cond_7
    iget-object v2, v1, Lokhttp3/internal/connection/d;->j:Lokhttp3/q;

    .line 131
    .line 132
    iget-object v3, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    .line 133
    .line 134
    invoke-virtual {v2, v3, v0}, Lokhttp3/q;->j(Lokhttp3/e;Lokhttp3/i;)V

    .line 135
    .line 136
    .line 137
    return-object v0

    .line 138
    :cond_8
    iget-object v2, v1, Lokhttp3/internal/connection/d;->f:Lokhttp3/c0;

    .line 139
    .line 140
    if-eqz v2, :cond_a

    .line 141
    .line 142
    if-nez v2, :cond_9

    .line 143
    .line 144
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 145
    .line 146
    .line 147
    :cond_9
    iput-object v4, v1, Lokhttp3/internal/connection/d;->f:Lokhttp3/c0;

    .line 148
    .line 149
    :goto_4
    move-object v5, v4

    .line 150
    goto :goto_5

    .line 151
    :cond_a
    iget-object v2, v1, Lokhttp3/internal/connection/d;->a:Lokhttp3/internal/connection/RouteSelector$b;

    .line 152
    .line 153
    if-eqz v2, :cond_d

    .line 154
    .line 155
    if-nez v2, :cond_b

    .line 156
    .line 157
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 158
    .line 159
    .line 160
    :cond_b
    invoke-virtual {v2}, Lokhttp3/internal/connection/RouteSelector$b;->b()Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-eqz v2, :cond_d

    .line 165
    .line 166
    iget-object v2, v1, Lokhttp3/internal/connection/d;->a:Lokhttp3/internal/connection/RouteSelector$b;

    .line 167
    .line 168
    if-nez v2, :cond_c

    .line 169
    .line 170
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 171
    .line 172
    .line 173
    :cond_c
    invoke-virtual {v2}, Lokhttp3/internal/connection/RouteSelector$b;->c()Lokhttp3/c0;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    goto :goto_4

    .line 178
    :cond_d
    iget-object v2, v1, Lokhttp3/internal/connection/d;->b:Lokhttp3/internal/connection/RouteSelector;

    .line 179
    .line 180
    if-nez v2, :cond_e

    .line 181
    .line 182
    new-instance v2, Lokhttp3/internal/connection/RouteSelector;

    .line 183
    .line 184
    iget-object v5, v1, Lokhttp3/internal/connection/d;->h:Lokhttp3/a;

    .line 185
    .line 186
    iget-object v6, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    .line 187
    .line 188
    invoke-virtual {v6}, Lokhttp3/internal/connection/e;->l()Lokhttp3/x;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    invoke-virtual {v6}, Lokhttp3/x;->x()Lokhttp3/internal/connection/h;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    iget-object v7, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    .line 197
    .line 198
    iget-object v8, v1, Lokhttp3/internal/connection/d;->j:Lokhttp3/q;

    .line 199
    .line 200
    invoke-direct {v2, v5, v6, v7, v8}, Lokhttp3/internal/connection/RouteSelector;-><init>(Lokhttp3/a;Lokhttp3/internal/connection/h;Lokhttp3/e;Lokhttp3/q;)V

    .line 201
    .line 202
    .line 203
    iput-object v2, v1, Lokhttp3/internal/connection/d;->b:Lokhttp3/internal/connection/RouteSelector;

    .line 204
    .line 205
    :cond_e
    invoke-virtual {v2}, Lokhttp3/internal/connection/RouteSelector;->d()Lokhttp3/internal/connection/RouteSelector$b;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    iput-object v2, v1, Lokhttp3/internal/connection/d;->a:Lokhttp3/internal/connection/RouteSelector$b;

    .line 210
    .line 211
    invoke-virtual {v2}, Lokhttp3/internal/connection/RouteSelector$b;->a()Ljava/util/List;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    iget-object v6, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    .line 216
    .line 217
    invoke-virtual {v6}, Lokhttp3/internal/connection/e;->c()Z

    .line 218
    .line 219
    .line 220
    move-result v6

    .line 221
    if-nez v6, :cond_13

    .line 222
    .line 223
    iget-object v6, v1, Lokhttp3/internal/connection/d;->g:Lokhttp3/internal/connection/g;

    .line 224
    .line 225
    iget-object v7, v1, Lokhttp3/internal/connection/d;->h:Lokhttp3/a;

    .line 226
    .line 227
    iget-object v8, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    .line 228
    .line 229
    invoke-virtual {v6, v7, v8, v5, v3}, Lokhttp3/internal/connection/g;->a(Lokhttp3/a;Lokhttp3/internal/connection/e;Ljava/util/List;Z)Z

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    if-eqz v3, :cond_10

    .line 234
    .line 235
    iget-object v0, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    .line 236
    .line 237
    invoke-virtual {v0}, Lokhttp3/internal/connection/e;->n()Lokhttp3/internal/connection/RealConnection;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    if-nez v0, :cond_f

    .line 242
    .line 243
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 244
    .line 245
    .line 246
    :cond_f
    iget-object v2, v1, Lokhttp3/internal/connection/d;->j:Lokhttp3/q;

    .line 247
    .line 248
    iget-object v3, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    .line 249
    .line 250
    invoke-virtual {v2, v3, v0}, Lokhttp3/q;->j(Lokhttp3/e;Lokhttp3/i;)V

    .line 251
    .line 252
    .line 253
    return-object v0

    .line 254
    :cond_10
    invoke-virtual {v2}, Lokhttp3/internal/connection/RouteSelector$b;->c()Lokhttp3/c0;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    :goto_5
    new-instance v3, Lokhttp3/internal/connection/RealConnection;

    .line 259
    .line 260
    iget-object v6, v1, Lokhttp3/internal/connection/d;->g:Lokhttp3/internal/connection/g;

    .line 261
    .line 262
    invoke-direct {v3, v6, v2}, Lokhttp3/internal/connection/RealConnection;-><init>(Lokhttp3/internal/connection/g;Lokhttp3/c0;)V

    .line 263
    .line 264
    .line 265
    iget-object v6, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    .line 266
    .line 267
    invoke-virtual {v6, v3}, Lokhttp3/internal/connection/e;->B(Lokhttp3/internal/connection/RealConnection;)V

    .line 268
    .line 269
    .line 270
    :try_start_1
    iget-object v12, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    .line 271
    .line 272
    iget-object v13, v1, Lokhttp3/internal/connection/d;->j:Lokhttp3/q;

    .line 273
    .line 274
    move-object v6, v3

    .line 275
    move v7, p1

    .line 276
    move/from16 v8, p2

    .line 277
    .line 278
    move/from16 v9, p3

    .line 279
    .line 280
    move/from16 v10, p4

    .line 281
    .line 282
    move/from16 v11, p5

    .line 283
    .line 284
    invoke-virtual/range {v6 .. v13}, Lokhttp3/internal/connection/RealConnection;->f(IIIIZLokhttp3/e;Lokhttp3/q;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 285
    .line 286
    .line 287
    iget-object v6, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    .line 288
    .line 289
    invoke-virtual {v6, v4}, Lokhttp3/internal/connection/e;->B(Lokhttp3/internal/connection/RealConnection;)V

    .line 290
    .line 291
    .line 292
    iget-object v4, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    .line 293
    .line 294
    invoke-virtual {v4}, Lokhttp3/internal/connection/e;->l()Lokhttp3/x;

    .line 295
    .line 296
    .line 297
    move-result-object v4

    .line 298
    invoke-virtual {v4}, Lokhttp3/x;->x()Lokhttp3/internal/connection/h;

    .line 299
    .line 300
    .line 301
    move-result-object v4

    .line 302
    invoke-virtual {v3}, Lokhttp3/internal/connection/RealConnection;->z()Lokhttp3/c0;

    .line 303
    .line 304
    .line 305
    move-result-object v6

    .line 306
    invoke-virtual {v4, v6}, Lokhttp3/internal/connection/h;->a(Lokhttp3/c0;)V

    .line 307
    .line 308
    .line 309
    iget-object v4, v1, Lokhttp3/internal/connection/d;->g:Lokhttp3/internal/connection/g;

    .line 310
    .line 311
    iget-object v6, v1, Lokhttp3/internal/connection/d;->h:Lokhttp3/a;

    .line 312
    .line 313
    iget-object v7, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    .line 314
    .line 315
    invoke-virtual {v4, v6, v7, v5, v0}, Lokhttp3/internal/connection/g;->a(Lokhttp3/a;Lokhttp3/internal/connection/e;Ljava/util/List;Z)Z

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    if-eqz v0, :cond_12

    .line 320
    .line 321
    iget-object v0, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    .line 322
    .line 323
    invoke-virtual {v0}, Lokhttp3/internal/connection/e;->n()Lokhttp3/internal/connection/RealConnection;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    if-nez v0, :cond_11

    .line 328
    .line 329
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 330
    .line 331
    .line 332
    :cond_11
    iput-object v2, v1, Lokhttp3/internal/connection/d;->f:Lokhttp3/c0;

    .line 333
    .line 334
    invoke-virtual {v3}, Lokhttp3/internal/connection/RealConnection;->D()Ljava/net/Socket;

    .line 335
    .line 336
    .line 337
    move-result-object v2

    .line 338
    invoke-static {v2}, Lsb/b;->k(Ljava/net/Socket;)V

    .line 339
    .line 340
    .line 341
    iget-object v2, v1, Lokhttp3/internal/connection/d;->j:Lokhttp3/q;

    .line 342
    .line 343
    iget-object v3, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    .line 344
    .line 345
    invoke-virtual {v2, v3, v0}, Lokhttp3/q;->j(Lokhttp3/e;Lokhttp3/i;)V

    .line 346
    .line 347
    .line 348
    return-object v0

    .line 349
    :cond_12
    monitor-enter v3

    .line 350
    :try_start_2
    iget-object v0, v1, Lokhttp3/internal/connection/d;->g:Lokhttp3/internal/connection/g;

    .line 351
    .line 352
    invoke-virtual {v0, v3}, Lokhttp3/internal/connection/g;->e(Lokhttp3/internal/connection/RealConnection;)V

    .line 353
    .line 354
    .line 355
    iget-object v0, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    .line 356
    .line 357
    invoke-virtual {v0, v3}, Lokhttp3/internal/connection/e;->d(Lokhttp3/internal/connection/RealConnection;)V

    .line 358
    .line 359
    .line 360
    sget-object v0, Lkotlin/u;->a:Lkotlin/u;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 361
    .line 362
    monitor-exit v3

    .line 363
    iget-object v0, v1, Lokhttp3/internal/connection/d;->j:Lokhttp3/q;

    .line 364
    .line 365
    iget-object v2, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    .line 366
    .line 367
    invoke-virtual {v0, v2, v3}, Lokhttp3/q;->j(Lokhttp3/e;Lokhttp3/i;)V

    .line 368
    .line 369
    .line 370
    return-object v3

    .line 371
    :catchall_1
    move-exception v0

    .line 372
    monitor-exit v3

    .line 373
    throw v0

    .line 374
    :catchall_2
    move-exception v0

    .line 375
    iget-object v2, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    .line 376
    .line 377
    invoke-virtual {v2, v4}, Lokhttp3/internal/connection/e;->B(Lokhttp3/internal/connection/RealConnection;)V

    .line 378
    .line 379
    .line 380
    throw v0

    .line 381
    :cond_13
    new-instance v0, Ljava/io/IOException;

    .line 382
    .line 383
    const-string v2, "Canceled"

    .line 384
    .line 385
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    throw v0

    .line 389
    :cond_14
    new-instance v0, Ljava/io/IOException;

    .line 390
    .line 391
    const-string v2, "Canceled"

    .line 392
    .line 393
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    throw v0
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
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
.end method

.method private final c(IIIIZZ)Lokhttp3/internal/connection/RealConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    invoke-direct/range {p0 .. p5}, Lokhttp3/internal/connection/d;->b(IIIIZ)Lokhttp3/internal/connection/RealConnection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p6}, Lokhttp3/internal/connection/RealConnection;->u(Z)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->y()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lokhttp3/internal/connection/d;->f:Lokhttp3/c0;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/connection/d;->a:Lokhttp3/internal/connection/RouteSelector$b;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector$b;->b()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    move v0, v1

    .line 31
    :goto_1
    if-eqz v0, :cond_3

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    iget-object v0, p0, Lokhttp3/internal/connection/d;->b:Lokhttp3/internal/connection/RouteSelector;

    .line 35
    .line 36
    if-eqz v0, :cond_4

    .line 37
    .line 38
    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector;->b()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    :cond_4
    if-eqz v1, :cond_5

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .line 46
    .line 47
    const-string p2, "exhausted all routes"

    .line 48
    .line 49
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1
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
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
.end method

.method private final f()Lokhttp3/c0;
    .locals 4

    .line 1
    iget v0, p0, Lokhttp3/internal/connection/d;->c:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-gt v0, v1, :cond_3

    .line 6
    .line 7
    iget v0, p0, Lokhttp3/internal/connection/d;->d:I

    .line 8
    .line 9
    if-gt v0, v1, :cond_3

    .line 10
    .line 11
    iget v0, p0, Lokhttp3/internal/connection/d;->e:I

    .line 12
    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    .line 17
    .line 18
    invoke-virtual {v0}, Lokhttp3/internal/connection/e;->n()Lokhttp3/internal/connection/RealConnection;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    monitor-enter v0

    .line 25
    :try_start_0
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->q()I

    .line 26
    .line 27
    .line 28
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    monitor-exit v0

    .line 32
    return-object v2

    .line 33
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->z()Lokhttp3/c0;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lokhttp3/c0;->a()Lokhttp3/a;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Lokhttp3/a;->l()Lokhttp3/t;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v3, p0, Lokhttp3/internal/connection/d;->h:Lokhttp3/a;

    .line 46
    .line 47
    invoke-virtual {v3}, Lokhttp3/a;->l()Lokhttp3/t;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-static {v1, v3}, Lsb/b;->g(Lokhttp3/t;Lokhttp3/t;)Z

    .line 52
    .line 53
    .line 54
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    if-nez v1, :cond_2

    .line 56
    .line 57
    monitor-exit v0

    .line 58
    return-object v2

    .line 59
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->z()Lokhttp3/c0;

    .line 60
    .line 61
    .line 62
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    monitor-exit v0

    .line 64
    return-object v1

    .line 65
    :catchall_0
    move-exception v1

    .line 66
    monitor-exit v0

    .line 67
    throw v1

    .line 68
    :cond_3
    :goto_0
    return-object v2
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
.end method


# virtual methods
.method public final a(Lokhttp3/x;Lvb/g;)Lvb/d;
    .locals 8

    .line 1
    const-string v0, "client"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "chain"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p2}, Lvb/g;->f()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {p2}, Lvb/g;->h()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-virtual {p2}, Lvb/g;->j()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    invoke-virtual {p1}, Lokhttp3/x;->D()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    invoke-virtual {p1}, Lokhttp3/x;->J()Z

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    invoke-virtual {p2}, Lvb/g;->i()Lokhttp3/y;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lokhttp3/y;->g()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "GET"

    .line 40
    .line 41
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    xor-int/lit8 v7, v0, 0x1

    .line 46
    .line 47
    move-object v1, p0

    .line 48
    invoke-direct/range {v1 .. v7}, Lokhttp3/internal/connection/d;->c(IIIIZZ)Lokhttp3/internal/connection/RealConnection;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0, p1, p2}, Lokhttp3/internal/connection/RealConnection;->w(Lokhttp3/x;Lvb/g;)Lvb/d;

    .line 53
    .line 54
    .line 55
    move-result-object p1
    :try_end_0
    .catch Lokhttp3/internal/connection/RouteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    return-object p1

    .line 57
    :catch_0
    move-exception p1

    .line 58
    invoke-virtual {p0, p1}, Lokhttp3/internal/connection/d;->h(Ljava/io/IOException;)V

    .line 59
    .line 60
    .line 61
    new-instance p2, Lokhttp3/internal/connection/RouteException;

    .line 62
    .line 63
    invoke-direct {p2, p1}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    .line 64
    .line 65
    .line 66
    throw p2

    .line 67
    :catch_1
    move-exception p1

    .line 68
    invoke-virtual {p1}, Lokhttp3/internal/connection/RouteException;->getLastConnectException()Ljava/io/IOException;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {p0, p2}, Lokhttp3/internal/connection/d;->h(Ljava/io/IOException;)V

    .line 73
    .line 74
    .line 75
    throw p1
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
.end method

.method public final d()Lokhttp3/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/d;->h:Lokhttp3/a;

    .line 2
    .line 3
    return-object v0
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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public final e()Z
    .locals 2

    .line 1
    iget v0, p0, Lokhttp3/internal/connection/d;->c:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lokhttp3/internal/connection/d;->d:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lokhttp3/internal/connection/d;->e:I

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    return v0

    .line 15
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/connection/d;->f:Lokhttp3/c0;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    return v1

    .line 21
    :cond_1
    invoke-direct {p0}, Lokhttp3/internal/connection/d;->f()Lokhttp3/c0;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iput-object v0, p0, Lokhttp3/internal/connection/d;->f:Lokhttp3/c0;

    .line 28
    .line 29
    return v1

    .line 30
    :cond_2
    iget-object v0, p0, Lokhttp3/internal/connection/d;->a:Lokhttp3/internal/connection/RouteSelector$b;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector$b;->b()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-ne v0, v1, :cond_3

    .line 39
    .line 40
    return v1

    .line 41
    :cond_3
    iget-object v0, p0, Lokhttp3/internal/connection/d;->b:Lokhttp3/internal/connection/RouteSelector;

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector;->b()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    return v0

    .line 50
    :cond_4
    return v1
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
.end method

.method public final g(Lokhttp3/t;)Z
    .locals 3

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lokhttp3/internal/connection/d;->h:Lokhttp3/a;

    .line 7
    .line 8
    invoke-virtual {v0}, Lokhttp3/a;->l()Lokhttp3/t;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1}, Lokhttp3/t;->o()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0}, Lokhttp3/t;->o()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-ne v1, v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Lokhttp3/t;->h()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0}, Lokhttp3/t;->h()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p1, 0x0

    .line 39
    :goto_0
    return p1
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
.end method

.method public final h(Ljava/io/IOException;)V
    .locals 2

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lokhttp3/internal/connection/d;->f:Lokhttp3/c0;

    .line 8
    .line 9
    instance-of v0, p1, Lokhttp3/internal/http2/StreamResetException;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    check-cast v0, Lokhttp3/internal/http2/StreamResetException;

    .line 15
    .line 16
    iget-object v0, v0, Lokhttp3/internal/http2/StreamResetException;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    .line 17
    .line 18
    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    .line 19
    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    iget p1, p0, Lokhttp3/internal/connection/d;->c:I

    .line 23
    .line 24
    add-int/lit8 p1, p1, 0x1

    .line 25
    .line 26
    iput p1, p0, Lokhttp3/internal/connection/d;->c:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    instance-of p1, p1, Lokhttp3/internal/http2/ConnectionShutdownException;

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    iget p1, p0, Lokhttp3/internal/connection/d;->d:I

    .line 34
    .line 35
    add-int/lit8 p1, p1, 0x1

    .line 36
    .line 37
    iput p1, p0, Lokhttp3/internal/connection/d;->d:I

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget p1, p0, Lokhttp3/internal/connection/d;->e:I

    .line 41
    .line 42
    add-int/lit8 p1, p1, 0x1

    .line 43
    .line 44
    iput p1, p0, Lokhttp3/internal/connection/d;->e:I

    .line 45
    .line 46
    :goto_0
    return-void
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
.end method

.class public abstract Lkotlin/reflect/jvm/internal/impl/util/e;
.super Lkotlin/reflect/jvm/internal/impl/util/a;
.source "AttributeArrayOwner.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/reflect/jvm/internal/impl/util/a<",
        "TK;TT;>;"
    }
.end annotation


# instance fields
.field private a:Lkotlin/reflect/jvm/internal/impl/util/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/util/c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 3
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/util/h;->a:Lkotlin/reflect/jvm/internal/impl/util/h;

    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.util.ArrayMap<T of org.jetbrains.kotlin.util.AttributeArrayOwner>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/util/e;-><init>(Lkotlin/reflect/jvm/internal/impl/util/c;)V

    return-void
.end method

.method protected constructor <init>(Lkotlin/reflect/jvm/internal/impl/util/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/util/c<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "arrayMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/util/a;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/util/e;->a:Lkotlin/reflect/jvm/internal/impl/util/c;

    return-void
.end method


# virtual methods
.method protected final c()Lkotlin/reflect/jvm/internal/impl/util/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/util/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/util/e;->a:Lkotlin/reflect/jvm/internal/impl/util/c;

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

.method protected final j(Lkotlin/reflect/d;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/d<",
            "+TK;>;TT;)V"
        }
    .end annotation

    .line 1
    const-string v0, "tClass"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "value"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/util/a;->h()Lkotlin/reflect/jvm/internal/impl/util/TypeRegistry;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/util/TypeRegistry;->d(Lkotlin/reflect/d;)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/util/e;->a:Lkotlin/reflect/jvm/internal/impl/util/c;

    .line 20
    .line 21
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/util/c;->c()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    if-eq v0, v1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/util/e;->a:Lkotlin/reflect/jvm/internal/impl/util/c;

    .line 32
    .line 33
    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.util.OneElementArrayMap<T of org.jetbrains.kotlin.util.AttributeArrayOwner>"

    .line 34
    .line 35
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/util/n;

    .line 39
    .line 40
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/util/n;->j()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-ne v1, p1, :cond_1

    .line 45
    .line 46
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/n;

    .line 47
    .line 48
    invoke-direct {v0, p2, p1}, Lkotlin/reflect/jvm/internal/impl/util/n;-><init>(Ljava/lang/Object;I)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/util/e;->a:Lkotlin/reflect/jvm/internal/impl/util/c;

    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/util/d;

    .line 55
    .line 56
    invoke-direct {v1}, Lkotlin/reflect/jvm/internal/impl/util/d;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/util/e;->a:Lkotlin/reflect/jvm/internal/impl/util/c;

    .line 60
    .line 61
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/util/n;->j()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/util/n;->k()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v1, v2, v0}, Lkotlin/reflect/jvm/internal/impl/util/c;->h(ILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/util/e;->a:Lkotlin/reflect/jvm/internal/impl/util/c;

    .line 73
    .line 74
    invoke-virtual {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/util/c;->h(ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_2
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/n;

    .line 79
    .line 80
    invoke-direct {v0, p2, p1}, Lkotlin/reflect/jvm/internal/impl/util/n;-><init>(Ljava/lang/Object;I)V

    .line 81
    .line 82
    .line 83
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/util/e;->a:Lkotlin/reflect/jvm/internal/impl/util/c;

    .line 84
    .line 85
    return-void
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

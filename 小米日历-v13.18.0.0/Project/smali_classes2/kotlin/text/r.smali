.class Lkotlin/text/r;
.super Lkotlin/text/q;
.source "StringNumberConversions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0014\n\u0002\u0010\u000e\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0005\u001a\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u001a\u001d\u0010\u0005\u001a\u0004\u0018\u00010\u0001*\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0001H\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u001a\u0015\u0010\u0008\u001a\u0004\u0018\u00010\u0007*\u00020\u0000H\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\t\u001a\u001d\u0010\n\u001a\u0004\u0018\u00010\u0007*\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0001H\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "",
        "",
        "j",
        "(Ljava/lang/String;)Ljava/lang/Integer;",
        "radix",
        "k",
        "(Ljava/lang/String;I)Ljava/lang/Integer;",
        "",
        "l",
        "(Ljava/lang/String;)Ljava/lang/Long;",
        "m",
        "(Ljava/lang/String;I)Ljava/lang/Long;",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x7,
        0x1
    }
    xs = "kotlin/text/StringsKt"
.end annotation


# direct methods
.method public static j(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0xa

    .line 7
    .line 8
    invoke-static {p0, v0}, Lkotlin/text/r;->k(Ljava/lang/String;I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
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

.method public static final k(Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 10

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lkotlin/text/a;->a(I)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-object v1

    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/16 v4, 0x30

    .line 23
    .line 24
    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->h(II)I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    const v5, -0x7fffffff

    .line 29
    .line 30
    .line 31
    const/4 v6, 0x1

    .line 32
    if-gez v4, :cond_4

    .line 33
    .line 34
    if-ne v0, v6, :cond_1

    .line 35
    .line 36
    return-object v1

    .line 37
    :cond_1
    const/16 v4, 0x2d

    .line 38
    .line 39
    if-ne v3, v4, :cond_2

    .line 40
    .line 41
    const/high16 v5, -0x80000000

    .line 42
    .line 43
    move v3, v6

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/16 v4, 0x2b

    .line 46
    .line 47
    if-ne v3, v4, :cond_3

    .line 48
    .line 49
    move v3, v2

    .line 50
    goto :goto_0

    .line 51
    :cond_3
    return-object v1

    .line 52
    :cond_4
    move v3, v2

    .line 53
    move v6, v3

    .line 54
    :goto_0
    const v4, -0x38e38e3

    .line 55
    .line 56
    .line 57
    move v7, v4

    .line 58
    :goto_1
    if-ge v6, v0, :cond_9

    .line 59
    .line 60
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    invoke-static {v8, p1}, Lkotlin/text/b;->b(CI)I

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    if-gez v8, :cond_5

    .line 69
    .line 70
    return-object v1

    .line 71
    :cond_5
    if-ge v2, v7, :cond_7

    .line 72
    .line 73
    if-ne v7, v4, :cond_6

    .line 74
    .line 75
    div-int v7, v5, p1

    .line 76
    .line 77
    if-ge v2, v7, :cond_7

    .line 78
    .line 79
    :cond_6
    return-object v1

    .line 80
    :cond_7
    mul-int/2addr v2, p1

    .line 81
    add-int v9, v5, v8

    .line 82
    .line 83
    if-ge v2, v9, :cond_8

    .line 84
    .line 85
    return-object v1

    .line 86
    :cond_8
    sub-int/2addr v2, v8

    .line 87
    add-int/lit8 v6, v6, 0x1

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_9
    if-eqz v3, :cond_a

    .line 91
    .line 92
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    goto :goto_2

    .line 97
    :cond_a
    neg-int p0, v2

    .line 98
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    :goto_2
    return-object p0
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

.method public static l(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0xa

    .line 7
    .line 8
    invoke-static {p0, v0}, Lkotlin/text/r;->m(Ljava/lang/String;I)Ljava/lang/Long;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
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

.method public static final m(Ljava/lang/String;I)Ljava/lang/Long;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "<this>"

    .line 6
    .line 7
    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static/range {p1 .. p1}, Lkotlin/text/a;->a(I)I

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    return-object v3

    .line 21
    :cond_0
    const/4 v4, 0x0

    .line 22
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    const/16 v6, 0x30

    .line 27
    .line 28
    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->h(II)I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    const/4 v9, 0x1

    .line 38
    if-gez v6, :cond_4

    .line 39
    .line 40
    if-ne v2, v9, :cond_1

    .line 41
    .line 42
    return-object v3

    .line 43
    :cond_1
    const/16 v6, 0x2d

    .line 44
    .line 45
    if-ne v5, v6, :cond_2

    .line 46
    .line 47
    const-wide/high16 v7, -0x8000000000000000L

    .line 48
    .line 49
    move v4, v9

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/16 v6, 0x2b

    .line 52
    .line 53
    if-ne v5, v6, :cond_3

    .line 54
    .line 55
    move/from16 v18, v9

    .line 56
    .line 57
    move v9, v4

    .line 58
    move/from16 v4, v18

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    return-object v3

    .line 62
    :cond_4
    move v9, v4

    .line 63
    :goto_0
    const-wide v5, -0x38e38e38e38e38eL    # -2.772000429909333E291

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    const-wide/16 v10, 0x0

    .line 69
    .line 70
    move-wide v12, v5

    .line 71
    :goto_1
    if-ge v4, v2, :cond_9

    .line 72
    .line 73
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 74
    .line 75
    .line 76
    move-result v14

    .line 77
    invoke-static {v14, v1}, Lkotlin/text/b;->b(CI)I

    .line 78
    .line 79
    .line 80
    move-result v14

    .line 81
    if-gez v14, :cond_5

    .line 82
    .line 83
    return-object v3

    .line 84
    :cond_5
    cmp-long v15, v10, v12

    .line 85
    .line 86
    if-gez v15, :cond_7

    .line 87
    .line 88
    cmp-long v12, v12, v5

    .line 89
    .line 90
    if-nez v12, :cond_6

    .line 91
    .line 92
    int-to-long v12, v1

    .line 93
    div-long v12, v7, v12

    .line 94
    .line 95
    cmp-long v15, v10, v12

    .line 96
    .line 97
    if-gez v15, :cond_7

    .line 98
    .line 99
    :cond_6
    return-object v3

    .line 100
    :cond_7
    int-to-long v5, v1

    .line 101
    mul-long/2addr v10, v5

    .line 102
    int-to-long v5, v14

    .line 103
    add-long v16, v7, v5

    .line 104
    .line 105
    cmp-long v14, v10, v16

    .line 106
    .line 107
    if-gez v14, :cond_8

    .line 108
    .line 109
    return-object v3

    .line 110
    :cond_8
    sub-long/2addr v10, v5

    .line 111
    add-int/lit8 v4, v4, 0x1

    .line 112
    .line 113
    const-wide v5, -0x38e38e38e38e38eL    # -2.772000429909333E291

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_9
    if-eqz v9, :cond_a

    .line 120
    .line 121
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    goto :goto_2

    .line 126
    :cond_a
    neg-long v0, v10

    .line 127
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    :goto_2
    return-object v0
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

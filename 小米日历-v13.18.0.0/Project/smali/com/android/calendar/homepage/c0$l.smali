.class public abstract Lcom/android/calendar/homepage/c0$l;
.super Lcom/android/calendar/homepage/c0$k;
.source "BaseWeekView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/homepage/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "l"
.end annotation


# instance fields
.field f:Ljava/lang/String;

.field g:F

.field h:I

.field i:Landroid/graphics/Typeface;

.field j:Z

.field k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field l:Z

.field private m:Z

.field private n:Landroid/graphics/Paint$FontMetrics;

.field final synthetic o:Lcom/android/calendar/homepage/c0;


# direct methods
.method public constructor <init>(Lcom/android/calendar/homepage/c0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/homepage/c0$l;->o:Lcom/android/calendar/homepage/c0;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/homepage/c0$k;-><init>(Lcom/android/calendar/homepage/c0;I)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/calendar/homepage/c0$l;->j:Z

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/android/calendar/homepage/c0$l;->l:Z

    .line 10
    .line 11
    iput-boolean p1, p0, Lcom/android/calendar/homepage/c0$l;->m:Z

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/android/calendar/homepage/c0$l;->n:Landroid/graphics/Paint$FontMetrics;

    .line 15
    .line 16
    return-void
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


# virtual methods
.method a(Landroid/graphics/Canvas;FF)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/homepage/c0$l;->e()V

    .line 10
    .line 11
    .line 12
    iget-object v4, v0, Lcom/android/calendar/homepage/c0$l;->o:Lcom/android/calendar/homepage/c0;

    .line 13
    .line 14
    iget-object v4, v4, Lcom/android/calendar/homepage/c0;->r:Landroid/graphics/Paint;

    .line 15
    .line 16
    iget v5, v0, Lcom/android/calendar/homepage/c0$l;->g:F

    .line 17
    .line 18
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 19
    .line 20
    .line 21
    iget-object v4, v0, Lcom/android/calendar/homepage/c0$l;->o:Lcom/android/calendar/homepage/c0;

    .line 22
    .line 23
    iget-object v4, v4, Lcom/android/calendar/homepage/c0;->r:Landroid/graphics/Paint;

    .line 24
    .line 25
    iget v5, v0, Lcom/android/calendar/homepage/c0$l;->h:I

    .line 26
    .line 27
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    .line 29
    .line 30
    iget-boolean v4, v0, Lcom/android/calendar/homepage/c0$l;->j:Z

    .line 31
    .line 32
    const/4 v8, 0x4

    .line 33
    if-eqz v4, :cond_c

    .line 34
    .line 35
    iget-object v4, v0, Lcom/android/calendar/homepage/c0$l;->k:Ljava/util/List;

    .line 36
    .line 37
    if-eqz v4, :cond_9

    .line 38
    .line 39
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_9

    .line 44
    .line 45
    iget-object v4, v0, Lcom/android/calendar/homepage/c0$l;->k:Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    const/4 v9, 0x1

    .line 52
    if-ne v4, v9, :cond_0

    .line 53
    .line 54
    goto/16 :goto_6

    .line 55
    .line 56
    :cond_0
    iget-object v4, v0, Lcom/android/calendar/homepage/c0$l;->k:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    const/4 v9, 0x0

    .line 63
    const/4 v10, 0x2

    .line 64
    if-le v4, v10, :cond_1

    .line 65
    .line 66
    iget-object v4, v0, Lcom/android/calendar/homepage/c0$l;->k:Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {v4, v9, v10}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    iput-object v4, v0, Lcom/android/calendar/homepage/c0$l;->k:Ljava/util/List;

    .line 73
    .line 74
    :cond_1
    iget-object v4, v0, Lcom/android/calendar/homepage/c0$l;->k:Ljava/util/List;

    .line 75
    .line 76
    iget-object v11, v0, Lcom/android/calendar/homepage/c0$l;->o:Lcom/android/calendar/homepage/c0;

    .line 77
    .line 78
    invoke-static {v11}, Lcom/android/calendar/homepage/c0;->z(Lcom/android/calendar/homepage/c0;)F

    .line 79
    .line 80
    .line 81
    move-result v11

    .line 82
    float-to-int v11, v11

    .line 83
    iget-object v12, v0, Lcom/android/calendar/homepage/c0$l;->k:Ljava/util/List;

    .line 84
    .line 85
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 86
    .line 87
    .line 88
    move-result v12

    .line 89
    rem-int/2addr v11, v12

    .line 90
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    check-cast v4, Ljava/lang/String;

    .line 95
    .line 96
    iget-object v11, v0, Lcom/android/calendar/homepage/c0$l;->k:Ljava/util/List;

    .line 97
    .line 98
    iget-object v12, v0, Lcom/android/calendar/homepage/c0$l;->o:Lcom/android/calendar/homepage/c0;

    .line 99
    .line 100
    invoke-static {v12}, Lcom/android/calendar/homepage/c0;->z(Lcom/android/calendar/homepage/c0;)F

    .line 101
    .line 102
    .line 103
    move-result v12

    .line 104
    const/high16 v13, 0x3f800000    # 1.0f

    .line 105
    .line 106
    add-float/2addr v12, v13

    .line 107
    float-to-int v12, v12

    .line 108
    iget-object v14, v0, Lcom/android/calendar/homepage/c0$l;->k:Ljava/util/List;

    .line 109
    .line 110
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 111
    .line 112
    .line 113
    move-result v14

    .line 114
    rem-int/2addr v12, v14

    .line 115
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v11

    .line 119
    check-cast v11, Ljava/lang/String;

    .line 120
    .line 121
    new-instance v12, Landroid/graphics/Rect;

    .line 122
    .line 123
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 127
    .line 128
    .line 129
    move-result v14

    .line 130
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 131
    .line 132
    .line 133
    move-result v15

    .line 134
    if-le v14, v15, :cond_2

    .line 135
    .line 136
    iget-object v14, v0, Lcom/android/calendar/homepage/c0$l;->o:Lcom/android/calendar/homepage/c0;

    .line 137
    .line 138
    iget-object v14, v14, Lcom/android/calendar/homepage/c0;->r:Landroid/graphics/Paint;

    .line 139
    .line 140
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 141
    .line 142
    .line 143
    move-result v15

    .line 144
    invoke-virtual {v14, v4, v9, v15, v12}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_2
    iget-object v14, v0, Lcom/android/calendar/homepage/c0$l;->o:Lcom/android/calendar/homepage/c0;

    .line 149
    .line 150
    iget-object v14, v14, Lcom/android/calendar/homepage/c0;->r:Landroid/graphics/Paint;

    .line 151
    .line 152
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 153
    .line 154
    .line 155
    move-result v15

    .line 156
    invoke-virtual {v14, v11, v9, v15, v12}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 157
    .line 158
    .line 159
    :goto_0
    iget v9, v12, Landroid/graphics/Rect;->top:I

    .line 160
    .line 161
    sub-int/2addr v9, v10

    .line 162
    iput v9, v12, Landroid/graphics/Rect;->top:I

    .line 163
    .line 164
    iget v9, v12, Landroid/graphics/Rect;->bottom:I

    .line 165
    .line 166
    add-int/2addr v9, v10

    .line 167
    iput v9, v12, Landroid/graphics/Rect;->bottom:I

    .line 168
    .line 169
    iget v9, v12, Landroid/graphics/Rect;->left:I

    .line 170
    .line 171
    sub-int/2addr v9, v10

    .line 172
    iput v9, v12, Landroid/graphics/Rect;->left:I

    .line 173
    .line 174
    iget v9, v12, Landroid/graphics/Rect;->right:I

    .line 175
    .line 176
    add-int/2addr v9, v10

    .line 177
    iput v9, v12, Landroid/graphics/Rect;->right:I

    .line 178
    .line 179
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    .line 180
    .line 181
    .line 182
    move-result v9

    .line 183
    int-to-float v9, v9

    .line 184
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    .line 185
    .line 186
    .line 187
    move-result v10

    .line 188
    int-to-float v10, v10

    .line 189
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 190
    .line 191
    .line 192
    move-result v14

    .line 193
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 194
    .line 195
    .line 196
    move-result v15

    .line 197
    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    .line 198
    .line 199
    .line 200
    move-result v14

    .line 201
    iget-object v15, v0, Lcom/android/calendar/homepage/c0$l;->o:Lcom/android/calendar/homepage/c0;

    .line 202
    .line 203
    invoke-static {v15}, Lcom/android/calendar/homepage/c0;->C(Lcom/android/calendar/homepage/c0;)F

    .line 204
    .line 205
    .line 206
    move-result v15

    .line 207
    mul-float/2addr v15, v10

    .line 208
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 209
    .line 210
    .line 211
    iget v5, v12, Landroid/graphics/Rect;->left:I

    .line 212
    .line 213
    int-to-float v5, v5

    .line 214
    add-float/2addr v5, v2

    .line 215
    const/high16 v16, 0x40000000    # 2.0f

    .line 216
    .line 217
    div-float v9, v9, v16

    .line 218
    .line 219
    sub-float/2addr v5, v9

    .line 220
    sub-float/2addr v5, v13

    .line 221
    iget v6, v12, Landroid/graphics/Rect;->top:I

    .line 222
    .line 223
    int-to-float v6, v6

    .line 224
    add-float/2addr v6, v3

    .line 225
    iget v7, v12, Landroid/graphics/Rect;->right:I

    .line 226
    .line 227
    int-to-float v7, v7

    .line 228
    add-float/2addr v7, v2

    .line 229
    sub-float/2addr v7, v9

    .line 230
    sub-float/2addr v7, v13

    .line 231
    iget v9, v12, Landroid/graphics/Rect;->bottom:I

    .line 232
    .line 233
    int-to-float v9, v9

    .line 234
    add-float/2addr v9, v3

    .line 235
    invoke-virtual {v1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 236
    .line 237
    .line 238
    if-lt v14, v8, :cond_7

    .line 239
    .line 240
    iget-object v5, v0, Lcom/android/calendar/homepage/c0$l;->o:Lcom/android/calendar/homepage/c0;

    .line 241
    .line 242
    iget-object v5, v5, Lcom/android/calendar/homepage/c0;->r:Landroid/graphics/Paint;

    .line 243
    .line 244
    invoke-virtual {v5}, Landroid/graphics/Paint;->getLetterSpacing()F

    .line 245
    .line 246
    .line 247
    move-result v5

    .line 248
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 249
    .line 250
    .line 251
    move-result v6

    .line 252
    if-lt v6, v8, :cond_4

    .line 253
    .line 254
    iget-object v6, v0, Lcom/android/calendar/homepage/c0$l;->o:Lcom/android/calendar/homepage/c0;

    .line 255
    .line 256
    iget-object v7, v6, Lcom/android/calendar/homepage/c0;->r:Landroid/graphics/Paint;

    .line 257
    .line 258
    iget v6, v6, Lcom/android/calendar/homepage/c0;->h:I

    .line 259
    .line 260
    const/4 v9, 0x5

    .line 261
    if-ne v6, v9, :cond_3

    .line 262
    .line 263
    const v6, -0x41e66666    # -0.15f

    .line 264
    .line 265
    .line 266
    goto :goto_1

    .line 267
    :cond_3
    const v6, -0x42333333    # -0.1f

    .line 268
    .line 269
    .line 270
    :goto_1
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 271
    .line 272
    .line 273
    goto :goto_2

    .line 274
    :cond_4
    iget-object v6, v0, Lcom/android/calendar/homepage/c0$l;->o:Lcom/android/calendar/homepage/c0;

    .line 275
    .line 276
    iget-object v6, v6, Lcom/android/calendar/homepage/c0;->r:Landroid/graphics/Paint;

    .line 277
    .line 278
    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 279
    .line 280
    .line 281
    :goto_2
    sub-float v6, v3, v15

    .line 282
    .line 283
    iget-object v7, v0, Lcom/android/calendar/homepage/c0$l;->o:Lcom/android/calendar/homepage/c0;

    .line 284
    .line 285
    iget-object v7, v7, Lcom/android/calendar/homepage/c0;->r:Landroid/graphics/Paint;

    .line 286
    .line 287
    invoke-virtual {v1, v4, v2, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 291
    .line 292
    .line 293
    move-result v4

    .line 294
    if-lt v4, v8, :cond_6

    .line 295
    .line 296
    iget-object v4, v0, Lcom/android/calendar/homepage/c0$l;->o:Lcom/android/calendar/homepage/c0;

    .line 297
    .line 298
    iget-object v6, v4, Lcom/android/calendar/homepage/c0;->r:Landroid/graphics/Paint;

    .line 299
    .line 300
    iget v4, v4, Lcom/android/calendar/homepage/c0;->h:I

    .line 301
    .line 302
    const/4 v7, 0x5

    .line 303
    if-ne v4, v7, :cond_5

    .line 304
    .line 305
    const v4, -0x41e66666    # -0.15f

    .line 306
    .line 307
    .line 308
    goto :goto_3

    .line 309
    :cond_5
    const v4, -0x42333333    # -0.1f

    .line 310
    .line 311
    .line 312
    :goto_3
    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 313
    .line 314
    .line 315
    goto :goto_4

    .line 316
    :cond_6
    iget-object v4, v0, Lcom/android/calendar/homepage/c0$l;->o:Lcom/android/calendar/homepage/c0;

    .line 317
    .line 318
    iget-object v4, v4, Lcom/android/calendar/homepage/c0;->r:Landroid/graphics/Paint;

    .line 319
    .line 320
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 321
    .line 322
    .line 323
    :goto_4
    add-float/2addr v3, v10

    .line 324
    sub-float/2addr v3, v15

    .line 325
    iget-object v4, v0, Lcom/android/calendar/homepage/c0$l;->o:Lcom/android/calendar/homepage/c0;

    .line 326
    .line 327
    iget-object v4, v4, Lcom/android/calendar/homepage/c0;->r:Landroid/graphics/Paint;

    .line 328
    .line 329
    invoke-virtual {v1, v11, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 330
    .line 331
    .line 332
    iget-object v2, v0, Lcom/android/calendar/homepage/c0$l;->o:Lcom/android/calendar/homepage/c0;

    .line 333
    .line 334
    iget-object v2, v2, Lcom/android/calendar/homepage/c0;->r:Landroid/graphics/Paint;

    .line 335
    .line 336
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 337
    .line 338
    .line 339
    goto :goto_5

    .line 340
    :cond_7
    sub-float v5, v3, v15

    .line 341
    .line 342
    iget-object v6, v0, Lcom/android/calendar/homepage/c0$l;->o:Lcom/android/calendar/homepage/c0;

    .line 343
    .line 344
    iget-object v6, v6, Lcom/android/calendar/homepage/c0;->r:Landroid/graphics/Paint;

    .line 345
    .line 346
    invoke-virtual {v1, v4, v2, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 347
    .line 348
    .line 349
    add-float/2addr v3, v10

    .line 350
    sub-float/2addr v3, v15

    .line 351
    iget-object v4, v0, Lcom/android/calendar/homepage/c0$l;->o:Lcom/android/calendar/homepage/c0;

    .line 352
    .line 353
    iget-object v4, v4, Lcom/android/calendar/homepage/c0;->r:Landroid/graphics/Paint;

    .line 354
    .line 355
    invoke-virtual {v1, v11, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 356
    .line 357
    .line 358
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 359
    .line 360
    .line 361
    iget-object v1, v0, Lcom/android/calendar/homepage/c0$l;->o:Lcom/android/calendar/homepage/c0;

    .line 362
    .line 363
    iget-object v1, v1, Lcom/android/calendar/homepage/c0;->b:Landroid/content/Context;

    .line 364
    .line 365
    invoke-static {v1}, Lcom/android/calendar/common/Utils;->t(Landroid/content/Context;)I

    .line 366
    .line 367
    .line 368
    move-result v1

    .line 369
    if-ne v1, v8, :cond_8

    .line 370
    .line 371
    iget-object v1, v0, Lcom/android/calendar/homepage/c0$l;->o:Lcom/android/calendar/homepage/c0;

    .line 372
    .line 373
    invoke-static {v1}, Lcom/android/calendar/homepage/c0;->E(Lcom/android/calendar/homepage/c0;)Z

    .line 374
    .line 375
    .line 376
    move-result v1

    .line 377
    if-eqz v1, :cond_12

    .line 378
    .line 379
    :cond_8
    iget-object v1, v0, Lcom/android/calendar/homepage/c0$l;->o:Lcom/android/calendar/homepage/c0;

    .line 380
    .line 381
    invoke-virtual {v1}, Lcom/android/calendar/homepage/c0;->i0()V

    .line 382
    .line 383
    .line 384
    goto/16 :goto_b

    .line 385
    .line 386
    :cond_9
    :goto_6
    iget-object v4, v0, Lcom/android/calendar/homepage/c0$l;->f:Ljava/lang/String;

    .line 387
    .line 388
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 389
    .line 390
    .line 391
    move-result v4

    .line 392
    if-lt v4, v8, :cond_b

    .line 393
    .line 394
    iget-object v4, v0, Lcom/android/calendar/homepage/c0$l;->o:Lcom/android/calendar/homepage/c0;

    .line 395
    .line 396
    iget-object v4, v4, Lcom/android/calendar/homepage/c0;->r:Landroid/graphics/Paint;

    .line 397
    .line 398
    invoke-virtual {v4}, Landroid/graphics/Paint;->getLetterSpacing()F

    .line 399
    .line 400
    .line 401
    move-result v4

    .line 402
    iget-object v5, v0, Lcom/android/calendar/homepage/c0$l;->o:Lcom/android/calendar/homepage/c0;

    .line 403
    .line 404
    iget-object v6, v5, Lcom/android/calendar/homepage/c0;->r:Landroid/graphics/Paint;

    .line 405
    .line 406
    iget v5, v5, Lcom/android/calendar/homepage/c0;->h:I

    .line 407
    .line 408
    const/4 v7, 0x5

    .line 409
    if-ne v5, v7, :cond_a

    .line 410
    .line 411
    const v5, -0x41e66666    # -0.15f

    .line 412
    .line 413
    .line 414
    goto :goto_7

    .line 415
    :cond_a
    const v5, -0x42333333    # -0.1f

    .line 416
    .line 417
    .line 418
    :goto_7
    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 419
    .line 420
    .line 421
    iget-object v5, v0, Lcom/android/calendar/homepage/c0$l;->f:Ljava/lang/String;

    .line 422
    .line 423
    iget-object v6, v0, Lcom/android/calendar/homepage/c0$l;->o:Lcom/android/calendar/homepage/c0;

    .line 424
    .line 425
    iget-object v6, v6, Lcom/android/calendar/homepage/c0;->r:Landroid/graphics/Paint;

    .line 426
    .line 427
    invoke-virtual {v1, v5, v2, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 428
    .line 429
    .line 430
    iget-object v1, v0, Lcom/android/calendar/homepage/c0$l;->o:Lcom/android/calendar/homepage/c0;

    .line 431
    .line 432
    iget-object v1, v1, Lcom/android/calendar/homepage/c0;->r:Landroid/graphics/Paint;

    .line 433
    .line 434
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 435
    .line 436
    .line 437
    goto :goto_8

    .line 438
    :cond_b
    iget-object v4, v0, Lcom/android/calendar/homepage/c0$l;->f:Ljava/lang/String;

    .line 439
    .line 440
    iget-object v5, v0, Lcom/android/calendar/homepage/c0$l;->o:Lcom/android/calendar/homepage/c0;

    .line 441
    .line 442
    iget-object v5, v5, Lcom/android/calendar/homepage/c0;->r:Landroid/graphics/Paint;

    .line 443
    .line 444
    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 445
    .line 446
    .line 447
    :goto_8
    return-void

    .line 448
    :cond_c
    iget-object v4, v0, Lcom/android/calendar/homepage/c0$l;->f:Ljava/lang/String;

    .line 449
    .line 450
    if-nez v4, :cond_d

    .line 451
    .line 452
    return-void

    .line 453
    :cond_d
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 454
    .line 455
    .line 456
    move-result v4

    .line 457
    if-lt v4, v8, :cond_f

    .line 458
    .line 459
    iget-object v4, v0, Lcom/android/calendar/homepage/c0$l;->o:Lcom/android/calendar/homepage/c0;

    .line 460
    .line 461
    iget-object v4, v4, Lcom/android/calendar/homepage/c0;->r:Landroid/graphics/Paint;

    .line 462
    .line 463
    invoke-virtual {v4}, Landroid/graphics/Paint;->getLetterSpacing()F

    .line 464
    .line 465
    .line 466
    move-result v4

    .line 467
    iget-object v5, v0, Lcom/android/calendar/homepage/c0$l;->o:Lcom/android/calendar/homepage/c0;

    .line 468
    .line 469
    iget-object v6, v5, Lcom/android/calendar/homepage/c0;->r:Landroid/graphics/Paint;

    .line 470
    .line 471
    iget v5, v5, Lcom/android/calendar/homepage/c0;->h:I

    .line 472
    .line 473
    const/4 v7, 0x5

    .line 474
    if-ne v5, v7, :cond_e

    .line 475
    .line 476
    const v5, -0x41e66666    # -0.15f

    .line 477
    .line 478
    .line 479
    goto :goto_9

    .line 480
    :cond_e
    const v5, -0x42333333    # -0.1f

    .line 481
    .line 482
    .line 483
    :goto_9
    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 484
    .line 485
    .line 486
    iget-object v5, v0, Lcom/android/calendar/homepage/c0$l;->f:Ljava/lang/String;

    .line 487
    .line 488
    iget-object v6, v0, Lcom/android/calendar/homepage/c0$l;->o:Lcom/android/calendar/homepage/c0;

    .line 489
    .line 490
    iget-object v6, v6, Lcom/android/calendar/homepage/c0;->r:Landroid/graphics/Paint;

    .line 491
    .line 492
    invoke-virtual {v1, v5, v2, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 493
    .line 494
    .line 495
    iget-object v1, v0, Lcom/android/calendar/homepage/c0$l;->o:Lcom/android/calendar/homepage/c0;

    .line 496
    .line 497
    iget-object v1, v1, Lcom/android/calendar/homepage/c0;->r:Landroid/graphics/Paint;

    .line 498
    .line 499
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 500
    .line 501
    .line 502
    goto :goto_b

    .line 503
    :cond_f
    iget-object v4, v0, Lcom/android/calendar/homepage/c0$l;->o:Lcom/android/calendar/homepage/c0;

    .line 504
    .line 505
    invoke-static {v4}, Lcom/android/calendar/homepage/c0;->p(Lcom/android/calendar/homepage/c0;)Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v4

    .line 509
    iget-object v5, v0, Lcom/android/calendar/homepage/c0$l;->f:Ljava/lang/String;

    .line 510
    .line 511
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 512
    .line 513
    .line 514
    move-result v4

    .line 515
    if-nez v4, :cond_11

    .line 516
    .line 517
    iget-object v4, v0, Lcom/android/calendar/homepage/c0$l;->o:Lcom/android/calendar/homepage/c0;

    .line 518
    .line 519
    invoke-static {v4}, Lcom/android/calendar/homepage/c0;->q(Lcom/android/calendar/homepage/c0;)Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v4

    .line 523
    iget-object v5, v0, Lcom/android/calendar/homepage/c0$l;->f:Ljava/lang/String;

    .line 524
    .line 525
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 526
    .line 527
    .line 528
    move-result v4

    .line 529
    if-eqz v4, :cond_10

    .line 530
    .line 531
    goto :goto_a

    .line 532
    :cond_10
    iget-object v4, v0, Lcom/android/calendar/homepage/c0$l;->f:Ljava/lang/String;

    .line 533
    .line 534
    iget-object v5, v0, Lcom/android/calendar/homepage/c0$l;->o:Lcom/android/calendar/homepage/c0;

    .line 535
    .line 536
    iget-object v5, v5, Lcom/android/calendar/homepage/c0;->r:Landroid/graphics/Paint;

    .line 537
    .line 538
    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 539
    .line 540
    .line 541
    goto :goto_b

    .line 542
    :cond_11
    :goto_a
    iget-object v4, v0, Lcom/android/calendar/homepage/c0$l;->f:Ljava/lang/String;

    .line 543
    .line 544
    const/high16 v5, 0x40800000    # 4.0f

    .line 545
    .line 546
    sub-float/2addr v2, v5

    .line 547
    const/high16 v5, 0x41000000    # 8.0f

    .line 548
    .line 549
    add-float/2addr v3, v5

    .line 550
    iget-object v5, v0, Lcom/android/calendar/homepage/c0$l;->o:Lcom/android/calendar/homepage/c0;

    .line 551
    .line 552
    iget-object v5, v5, Lcom/android/calendar/homepage/c0;->r:Landroid/graphics/Paint;

    .line 553
    .line 554
    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 555
    .line 556
    .line 557
    :cond_12
    :goto_b
    return-void
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
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
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
.end method

.method c()Landroid/graphics/Paint$FontMetrics;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/c0$l;->n:Landroid/graphics/Paint$FontMetrics;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/homepage/c0$l;->e()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/calendar/homepage/c0$l;->o:Lcom/android/calendar/homepage/c0;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/calendar/homepage/c0;->r:Landroid/graphics/Paint;

    .line 12
    .line 13
    iget v1, p0, Lcom/android/calendar/homepage/c0$l;->g:F

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/calendar/homepage/c0$l;->o:Lcom/android/calendar/homepage/c0;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/calendar/homepage/c0;->r:Landroid/graphics/Paint;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/android/calendar/homepage/c0$l;->n:Landroid/graphics/Paint$FontMetrics;

    .line 27
    .line 28
    return-object v0
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
.end method

.method d()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/c0$l;->o:Lcom/android/calendar/homepage/c0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/calendar/homepage/c0;->r:Landroid/graphics/Paint;

    .line 4
    .line 5
    iget v1, p0, Lcom/android/calendar/homepage/c0$l;->g:F

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/calendar/homepage/c0$l;->o:Lcom/android/calendar/homepage/c0;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/calendar/homepage/c0;->r:Landroid/graphics/Paint;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/calendar/homepage/c0$l;->f:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0
    .line 21
    .line 22
.end method

.method e()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/calendar/homepage/c0$l;->m:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/homepage/c0$l;->i:Landroid/graphics/Typeface;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/calendar/homepage/c0$l;->o:Lcom/android/calendar/homepage/c0;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/android/calendar/homepage/c0;->r:Landroid/graphics/Paint;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/android/calendar/homepage/c0$l;->m:Z

    .line 19
    .line 20
    :cond_1
    return-void
    .line 21
    .line 22
.end method

.class Lmiuix/popupwidget/internal/widget/ArrowPopupView$c;
.super Landroid/view/ViewOutlineProvider;
.source "ArrowPopupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/popupwidget/internal/widget/ArrowPopupView;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/popupwidget/internal/widget/ArrowPopupView;


# direct methods
.method constructor <init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$c;->a:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

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


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_6

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    new-instance v1, Landroid/graphics/Rect;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-direct {v1, v2, v2, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 27
    .line 28
    .line 29
    if-le v0, p1, :cond_1

    .line 30
    .line 31
    sub-int/2addr v0, p1

    .line 32
    div-int/lit8 v0, v0, 0x2

    .line 33
    .line 34
    iget p1, v1, Landroid/graphics/Rect;->left:I

    .line 35
    .line 36
    add-int/2addr p1, v0

    .line 37
    iput p1, v1, Landroid/graphics/Rect;->left:I

    .line 38
    .line 39
    iget p1, v1, Landroid/graphics/Rect;->right:I

    .line 40
    .line 41
    sub-int/2addr p1, v0

    .line 42
    iput p1, v1, Landroid/graphics/Rect;->right:I

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    sub-int/2addr p1, v0

    .line 46
    div-int/lit8 p1, p1, 0x2

    .line 47
    .line 48
    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 49
    .line 50
    add-int/2addr v0, p1

    .line 51
    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 52
    .line 53
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 54
    .line 55
    sub-int/2addr v0, p1

    .line 56
    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 57
    .line 58
    :goto_0
    new-instance p1, Landroid/graphics/Path;

    .line 59
    .line 60
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$c;->a:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 64
    .line 65
    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->j(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    const/16 v2, 0x20

    .line 70
    .line 71
    const/high16 v3, 0x40000000    # 2.0f

    .line 72
    .line 73
    if-eq v0, v2, :cond_6

    .line 74
    .line 75
    const/16 v2, 0x40

    .line 76
    .line 77
    if-eq v0, v2, :cond_4

    .line 78
    .line 79
    const v2, 0x3f333333    # 0.7f

    .line 80
    .line 81
    .line 82
    const/4 v4, 0x0

    .line 83
    packed-switch v0, :pswitch_data_0

    .line 84
    .line 85
    .line 86
    goto/16 :goto_5

    .line 87
    .line 88
    :pswitch_0
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$c;->a:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 89
    .line 90
    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->k(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/graphics/drawable/Drawable;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    int-to-float v0, v0

    .line 99
    invoke-virtual {p1, v4, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$c;->a:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 103
    .line 104
    invoke-static {v0}, Lka/i;->a(Landroid/view/View;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_2

    .line 109
    .line 110
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$c;->a:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 111
    .line 112
    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->k(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/graphics/drawable/Drawable;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    neg-int v0, v0

    .line 121
    int-to-float v0, v0

    .line 122
    mul-float/2addr v0, v2

    .line 123
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 124
    .line 125
    int-to-float v2, v2

    .line 126
    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$c;->a:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 127
    .line 128
    invoke-static {v3}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->k(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/graphics/drawable/Drawable;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    int-to-float v3, v3

    .line 137
    invoke-virtual {p1, v4, v0, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_2
    iget v0, v1, Landroid/graphics/Rect;->right:I

    .line 142
    .line 143
    int-to-float v0, v0

    .line 144
    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$c;->a:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 145
    .line 146
    invoke-static {v3}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->k(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/graphics/drawable/Drawable;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    neg-int v3, v3

    .line 155
    int-to-float v3, v3

    .line 156
    mul-float/2addr v3, v2

    .line 157
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 158
    .line 159
    int-to-float v2, v2

    .line 160
    iget-object v4, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$c;->a:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 161
    .line 162
    invoke-static {v4}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->k(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/graphics/drawable/Drawable;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    int-to-float v4, v4

    .line 171
    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 172
    .line 173
    .line 174
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 175
    .line 176
    .line 177
    goto/16 :goto_5

    .line 178
    .line 179
    :pswitch_1
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$c;->a:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 180
    .line 181
    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->k(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/graphics/drawable/Drawable;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    int-to-float v0, v0

    .line 190
    invoke-virtual {p1, v4, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 191
    .line 192
    .line 193
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$c;->a:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 194
    .line 195
    invoke-static {v0}, Lka/i;->a(Landroid/view/View;)Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-eqz v0, :cond_3

    .line 200
    .line 201
    iget v0, v1, Landroid/graphics/Rect;->right:I

    .line 202
    .line 203
    int-to-float v0, v0

    .line 204
    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$c;->a:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 205
    .line 206
    invoke-static {v3}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->k(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/graphics/drawable/Drawable;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    neg-int v3, v3

    .line 215
    int-to-float v3, v3

    .line 216
    mul-float/2addr v3, v2

    .line 217
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 218
    .line 219
    int-to-float v2, v2

    .line 220
    iget-object v4, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$c;->a:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 221
    .line 222
    invoke-static {v4}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->k(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/graphics/drawable/Drawable;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 227
    .line 228
    .line 229
    move-result v4

    .line 230
    int-to-float v4, v4

    .line 231
    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 232
    .line 233
    .line 234
    goto :goto_2

    .line 235
    :cond_3
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$c;->a:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 236
    .line 237
    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->k(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/graphics/drawable/Drawable;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    neg-int v0, v0

    .line 246
    int-to-float v0, v0

    .line 247
    mul-float/2addr v0, v2

    .line 248
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 249
    .line 250
    int-to-float v2, v2

    .line 251
    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$c;->a:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 252
    .line 253
    invoke-static {v3}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->k(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/graphics/drawable/Drawable;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 258
    .line 259
    .line 260
    move-result v3

    .line 261
    int-to-float v3, v3

    .line 262
    invoke-virtual {p1, v4, v0, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 263
    .line 264
    .line 265
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 266
    .line 267
    .line 268
    goto/16 :goto_5

    .line 269
    .line 270
    :pswitch_2
    iget v0, v1, Landroid/graphics/Rect;->right:I

    .line 271
    .line 272
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 273
    .line 274
    add-int/2addr v0, v2

    .line 275
    int-to-float v0, v0

    .line 276
    div-float/2addr v0, v3

    .line 277
    int-to-float v2, v2

    .line 278
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 279
    .line 280
    int-to-float v3, v3

    .line 281
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    neg-int v2, v2

    .line 289
    int-to-float v2, v2

    .line 290
    iget v3, v1, Landroid/graphics/Rect;->right:I

    .line 291
    .line 292
    int-to-float v3, v3

    .line 293
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 294
    .line 295
    int-to-float v4, v4

    .line 296
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 300
    .line 301
    .line 302
    goto/16 :goto_5

    .line 303
    .line 304
    :cond_4
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 305
    .line 306
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 307
    .line 308
    add-int/2addr v0, v2

    .line 309
    int-to-float v0, v0

    .line 310
    div-float/2addr v0, v3

    .line 311
    iget-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$c;->a:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 312
    .line 313
    invoke-static {v2}, Lka/i;->a(Landroid/view/View;)Z

    .line 314
    .line 315
    .line 316
    move-result v2

    .line 317
    if-eqz v2, :cond_5

    .line 318
    .line 319
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 320
    .line 321
    int-to-float v2, v2

    .line 322
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 323
    .line 324
    int-to-float v3, v3

    .line 325
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 329
    .line 330
    .line 331
    move-result v2

    .line 332
    neg-int v2, v2

    .line 333
    int-to-float v2, v2

    .line 334
    iget v3, v1, Landroid/graphics/Rect;->right:I

    .line 335
    .line 336
    int-to-float v3, v3

    .line 337
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 338
    .line 339
    int-to-float v4, v4

    .line 340
    invoke-virtual {p1, v2, v0, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 341
    .line 342
    .line 343
    goto :goto_3

    .line 344
    :cond_5
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 345
    .line 346
    int-to-float v2, v2

    .line 347
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 348
    .line 349
    int-to-float v3, v3

    .line 350
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 351
    .line 352
    .line 353
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 354
    .line 355
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 356
    .line 357
    .line 358
    move-result v3

    .line 359
    add-int/2addr v2, v3

    .line 360
    int-to-float v2, v2

    .line 361
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 362
    .line 363
    int-to-float v3, v3

    .line 364
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 365
    .line 366
    int-to-float v4, v4

    .line 367
    invoke-virtual {p1, v2, v0, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 368
    .line 369
    .line 370
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 371
    .line 372
    .line 373
    goto :goto_5

    .line 374
    :cond_6
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 375
    .line 376
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 377
    .line 378
    add-int/2addr v0, v2

    .line 379
    int-to-float v0, v0

    .line 380
    div-float/2addr v0, v3

    .line 381
    iget-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$c;->a:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 382
    .line 383
    invoke-static {v2}, Lka/i;->a(Landroid/view/View;)Z

    .line 384
    .line 385
    .line 386
    move-result v2

    .line 387
    if-eqz v2, :cond_7

    .line 388
    .line 389
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 390
    .line 391
    int-to-float v2, v2

    .line 392
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 393
    .line 394
    int-to-float v3, v3

    .line 395
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 396
    .line 397
    .line 398
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 399
    .line 400
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 401
    .line 402
    .line 403
    move-result v3

    .line 404
    add-int/2addr v2, v3

    .line 405
    int-to-float v2, v2

    .line 406
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 407
    .line 408
    int-to-float v3, v3

    .line 409
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 410
    .line 411
    int-to-float v4, v4

    .line 412
    invoke-virtual {p1, v2, v0, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 413
    .line 414
    .line 415
    goto :goto_4

    .line 416
    :cond_7
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 417
    .line 418
    int-to-float v2, v2

    .line 419
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 420
    .line 421
    int-to-float v3, v3

    .line 422
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 426
    .line 427
    .line 428
    move-result v2

    .line 429
    neg-int v2, v2

    .line 430
    int-to-float v2, v2

    .line 431
    iget v3, v1, Landroid/graphics/Rect;->right:I

    .line 432
    .line 433
    int-to-float v3, v3

    .line 434
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 435
    .line 436
    int-to-float v4, v4

    .line 437
    invoke-virtual {p1, v2, v0, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 438
    .line 439
    .line 440
    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 441
    .line 442
    .line 443
    :goto_5
    invoke-virtual {p1}, Landroid/graphics/Path;->isConvex()Z

    .line 444
    .line 445
    .line 446
    move-result v0

    .line 447
    if-eqz v0, :cond_8

    .line 448
    .line 449
    invoke-virtual {p2, p1}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    .line 450
    .line 451
    .line 452
    goto :goto_6

    .line 453
    :cond_8
    const-string p1, "ArrowPopupView"

    .line 454
    .line 455
    const-string v0, "outline path is not convex"

    .line 456
    .line 457
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    .line 459
    .line 460
    invoke-virtual {p2, v1}, Landroid/graphics/Outline;->setOval(Landroid/graphics/Rect;)V

    .line 461
    .line 462
    .line 463
    :cond_9
    :goto_6
    return-void

    .line 464
    nop

    .line 465
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
.end method

.class public Lcom/android/calendar/homepage/z0;
.super Landroid/view/View;
.source "MonthInYearView.java"


# static fields
.field private static final W:[I


# instance fields
.field private D:F

.field private E:F

.field private F:F

.field private G:F

.field private H:F

.field private I:F

.field private J:[Ljava/lang/String;

.field private K:[[Ljava/lang/String;

.field private L:[[I

.field private M:[I

.field private N:[I

.field private O:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Z

.field private S:Z

.field private T:Landroid/graphics/RectF;

.field private U:Landroid/graphics/RectF;

.field private V:Landroid/graphics/Rect;

.field private a:Landroid/content/Context;

.field private b:Landroid/text/TextPaint;

.field private c:Landroid/text/TextPaint;

.field private d:Landroid/text/TextPaint;

.field private e:Landroid/text/TextPaint;

.field private f:Landroid/text/TextPaint;

.field private g:Landroid/text/TextPaint;

.field private h:Landroid/graphics/Paint;

.field private i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/Paint;

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private v:F

.field private w:F

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/android/calendar/homepage/z0;->W:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x7f120370
        0x7f12036f
        0x7f120373
        0x7f12036c
        0x7f120374
        0x7f120372
        0x7f120371
        0x7f12036d
        0x7f120377
        0x7f120376
        0x7f120375
        0x7f12036e
    .end array-data
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

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/calendar/homepage/z0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/calendar/homepage/z0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x2

    new-array p3, p2, [I

    .line 4
    fill-array-data p3, :array_0

    iput-object p3, p0, Lcom/android/calendar/homepage/z0;->M:[I

    new-array p2, p2, [I

    .line 5
    fill-array-data p2, :array_1

    iput-object p2, p0, Lcom/android/calendar/homepage/z0;->N:[I

    const/4 p2, 0x0

    .line 6
    iput-boolean p2, p0, Lcom/android/calendar/homepage/z0;->R:Z

    .line 7
    iput-boolean p2, p0, Lcom/android/calendar/homepage/z0;->S:Z

    .line 8
    iput-object p1, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private b()V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/android/calendar/homepage/z0;->R:Z

    .line 2
    .line 3
    const/high16 v1, 0x40c00000    # 6.0f

    .line 4
    .line 5
    const/high16 v2, 0x41c00000    # 24.0f

    .line 6
    .line 7
    const/high16 v3, 0x40000000    # 2.0f

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 13
    .line 14
    const v5, 0x43058000    # 133.5f

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v5}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iput v0, p0, Lcom/android/calendar/homepage/z0;->k:F

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 24
    .line 25
    const/high16 v5, 0x42460000    # 49.5f

    .line 26
    .line 27
    invoke-static {v0, v5}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iput v0, p0, Lcom/android/calendar/homepage/z0;->l:F

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 34
    .line 35
    const/high16 v5, 0x42580000    # 54.0f

    .line 36
    .line 37
    invoke-static {v0, v5}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iput v0, p0, Lcom/android/calendar/homepage/z0;->m:F

    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 44
    .line 45
    invoke-static {v0, v4}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iput v0, p0, Lcom/android/calendar/homepage/z0;->q:F

    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 52
    .line 53
    invoke-static {v0, v5}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iput v0, p0, Lcom/android/calendar/homepage/z0;->n:F

    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 60
    .line 61
    const/high16 v5, 0x41ac0000    # 21.5f

    .line 62
    .line 63
    invoke-static {v0, v5}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    iput v0, p0, Lcom/android/calendar/homepage/z0;->o:F

    .line 68
    .line 69
    iget v0, p0, Lcom/android/calendar/homepage/z0;->m:F

    .line 70
    .line 71
    div-float/2addr v0, v3

    .line 72
    iput v0, p0, Lcom/android/calendar/homepage/z0;->r:F

    .line 73
    .line 74
    iget-object v0, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 75
    .line 76
    invoke-static {v0, v2}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    iput v0, p0, Lcom/android/calendar/homepage/z0;->v:F

    .line 81
    .line 82
    iget-object v0, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 83
    .line 84
    invoke-static {v0, v1}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    iput v0, p0, Lcom/android/calendar/homepage/z0;->w:F

    .line 89
    .line 90
    iget-object v0, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 91
    .line 92
    const/high16 v1, 0x40a00000    # 5.0f

    .line 93
    .line 94
    invoke-static {v0, v1}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    iput v0, p0, Lcom/android/calendar/homepage/z0;->x:F

    .line 99
    .line 100
    iget-object v0, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 101
    .line 102
    const/high16 v1, 0x42ba0000    # 93.0f

    .line 103
    .line 104
    invoke-static {v0, v1}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    iput v0, p0, Lcom/android/calendar/homepage/z0;->y:F

    .line 109
    .line 110
    iget-object v0, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 111
    .line 112
    const/high16 v1, 0x42a80000    # 84.0f

    .line 113
    .line 114
    invoke-static {v0, v1}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    iput v0, p0, Lcom/android/calendar/homepage/z0;->z:F

    .line 119
    .line 120
    iget-object v0, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 121
    .line 122
    invoke-static {v0, v2}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    iput v0, p0, Lcom/android/calendar/homepage/z0;->D:F

    .line 127
    .line 128
    iget-object v0, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 129
    .line 130
    const/high16 v1, 0x42280000    # 42.0f

    .line 131
    .line 132
    invoke-static {v0, v1}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    iput v0, p0, Lcom/android/calendar/homepage/z0;->E:F

    .line 137
    .line 138
    invoke-static {}, Lcom/miui/calendar/util/x0;->p0()Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_0

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 146
    .line 147
    const/high16 v1, -0x3f400000    # -6.0f

    .line 148
    .line 149
    invoke-static {v0, v1}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    :goto_0
    iput v4, p0, Lcom/android/calendar/homepage/z0;->F:F

    .line 154
    .line 155
    iget-object v0, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 156
    .line 157
    invoke-static {v0, v3}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    iput v0, p0, Lcom/android/calendar/homepage/z0;->G:F

    .line 162
    .line 163
    goto/16 :goto_3

    .line 164
    .line 165
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 166
    .line 167
    invoke-static {v0}, Lcom/miui/calendar/util/x0;->m0(Landroid/content/Context;)Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    const/high16 v5, 0x41e00000    # 28.0f

    .line 172
    .line 173
    const/high16 v6, 0x42600000    # 56.0f

    .line 174
    .line 175
    const/high16 v7, 0x40800000    # 4.0f

    .line 176
    .line 177
    const/high16 v8, 0x41800000    # 16.0f

    .line 178
    .line 179
    const/high16 v9, 0x42040000    # 33.0f

    .line 180
    .line 181
    const/high16 v10, 0x42200000    # 40.0f

    .line 182
    .line 183
    if-eqz v0, :cond_3

    .line 184
    .line 185
    iget-object v0, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 186
    .line 187
    const/high16 v11, 0x429e0000    # 79.0f

    .line 188
    .line 189
    invoke-static {v0, v11}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    iput v0, p0, Lcom/android/calendar/homepage/z0;->k:F

    .line 194
    .line 195
    iget-object v0, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 196
    .line 197
    invoke-static {v0, v9}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    iput v0, p0, Lcom/android/calendar/homepage/z0;->l:F

    .line 202
    .line 203
    iget-object v0, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 204
    .line 205
    invoke-static {v0, v10}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    iput v0, p0, Lcom/android/calendar/homepage/z0;->m:F

    .line 210
    .line 211
    iget-object v0, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 212
    .line 213
    invoke-static {v0, v4}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    iput v0, p0, Lcom/android/calendar/homepage/z0;->q:F

    .line 218
    .line 219
    iget-object v0, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 220
    .line 221
    invoke-static {v0, v10}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    iput v0, p0, Lcom/android/calendar/homepage/z0;->n:F

    .line 226
    .line 227
    iget v0, p0, Lcom/android/calendar/homepage/z0;->m:F

    .line 228
    .line 229
    div-float/2addr v0, v3

    .line 230
    iput v0, p0, Lcom/android/calendar/homepage/z0;->r:F

    .line 231
    .line 232
    iget-object v0, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 233
    .line 234
    invoke-static {v0, v8}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    iput v0, p0, Lcom/android/calendar/homepage/z0;->v:F

    .line 239
    .line 240
    iget-object v0, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 241
    .line 242
    invoke-static {v0, v7}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    iput v0, p0, Lcom/android/calendar/homepage/z0;->w:F

    .line 247
    .line 248
    iget-object v0, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 249
    .line 250
    invoke-static {v0, v3}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    iput v0, p0, Lcom/android/calendar/homepage/z0;->x:F

    .line 255
    .line 256
    iget-object v0, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 257
    .line 258
    invoke-static {v0, v6}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    iput v0, p0, Lcom/android/calendar/homepage/z0;->y:F

    .line 263
    .line 264
    iget-object v0, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 265
    .line 266
    const/high16 v3, 0x42400000    # 48.0f

    .line 267
    .line 268
    invoke-static {v0, v3}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    iput v0, p0, Lcom/android/calendar/homepage/z0;->z:F

    .line 273
    .line 274
    iget-object v0, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 275
    .line 276
    invoke-static {v0, v2}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    iput v0, p0, Lcom/android/calendar/homepage/z0;->D:F

    .line 281
    .line 282
    iget-object v0, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 283
    .line 284
    invoke-static {v0, v5}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    iput v0, p0, Lcom/android/calendar/homepage/z0;->E:F

    .line 289
    .line 290
    invoke-static {}, Lcom/miui/calendar/util/x0;->p0()Z

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    if-eqz v0, :cond_2

    .line 295
    .line 296
    goto :goto_1

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 298
    .line 299
    const/high16 v2, -0x3fc00000    # -3.0f

    .line 300
    .line 301
    invoke-static {v0, v2}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 302
    .line 303
    .line 304
    move-result v4

    .line 305
    :goto_1
    iput v4, p0, Lcom/android/calendar/homepage/z0;->F:F

    .line 306
    .line 307
    iget-object v0, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 308
    .line 309
    invoke-static {v0, v1}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    iput v0, p0, Lcom/android/calendar/homepage/z0;->G:F

    .line 314
    .line 315
    goto/16 :goto_3

    .line 316
    .line 317
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 318
    .line 319
    const/high16 v11, 0x42b20000    # 89.0f

    .line 320
    .line 321
    invoke-static {v0, v11}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 322
    .line 323
    .line 324
    move-result v0

    .line 325
    iput v0, p0, Lcom/android/calendar/homepage/z0;->k:F

    .line 326
    .line 327
    iget-object v0, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 328
    .line 329
    invoke-static {v0, v9}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    iput v0, p0, Lcom/android/calendar/homepage/z0;->l:F

    .line 334
    .line 335
    iget-object v0, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 336
    .line 337
    invoke-static {v0, v10}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 338
    .line 339
    .line 340
    move-result v0

    .line 341
    iput v0, p0, Lcom/android/calendar/homepage/z0;->m:F

    .line 342
    .line 343
    iget-object v0, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 344
    .line 345
    invoke-static {v0, v4}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 346
    .line 347
    .line 348
    move-result v0

    .line 349
    iput v0, p0, Lcom/android/calendar/homepage/z0;->q:F

    .line 350
    .line 351
    iget-object v0, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 352
    .line 353
    invoke-static {v0, v10}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    iput v0, p0, Lcom/android/calendar/homepage/z0;->n:F

    .line 358
    .line 359
    iget v0, p0, Lcom/android/calendar/homepage/z0;->m:F

    .line 360
    .line 361
    div-float/2addr v0, v3

    .line 362
    iput v0, p0, Lcom/android/calendar/homepage/z0;->r:F

    .line 363
    .line 364
    iget-object v0, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 365
    .line 366
    invoke-static {v0, v8}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    iput v0, p0, Lcom/android/calendar/homepage/z0;->v:F

    .line 371
    .line 372
    iget-object v0, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 373
    .line 374
    invoke-static {v0, v7}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 375
    .line 376
    .line 377
    move-result v0

    .line 378
    iput v0, p0, Lcom/android/calendar/homepage/z0;->w:F

    .line 379
    .line 380
    iget-object v0, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 381
    .line 382
    invoke-static {v0, v3}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 383
    .line 384
    .line 385
    move-result v0

    .line 386
    iput v0, p0, Lcom/android/calendar/homepage/z0;->x:F

    .line 387
    .line 388
    iget-object v0, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 389
    .line 390
    const/high16 v3, 0x42780000    # 62.0f

    .line 391
    .line 392
    invoke-static {v0, v3}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 393
    .line 394
    .line 395
    move-result v0

    .line 396
    iput v0, p0, Lcom/android/calendar/homepage/z0;->y:F

    .line 397
    .line 398
    iget-object v0, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 399
    .line 400
    invoke-static {v0, v6}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 401
    .line 402
    .line 403
    move-result v0

    .line 404
    iput v0, p0, Lcom/android/calendar/homepage/z0;->z:F

    .line 405
    .line 406
    iget-object v0, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 407
    .line 408
    invoke-static {v0, v2}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 409
    .line 410
    .line 411
    move-result v0

    .line 412
    iput v0, p0, Lcom/android/calendar/homepage/z0;->D:F

    .line 413
    .line 414
    iget-object v0, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 415
    .line 416
    invoke-static {v0, v5}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 417
    .line 418
    .line 419
    move-result v0

    .line 420
    iput v0, p0, Lcom/android/calendar/homepage/z0;->E:F

    .line 421
    .line 422
    invoke-static {}, Lcom/miui/calendar/util/x0;->p0()Z

    .line 423
    .line 424
    .line 425
    move-result v0

    .line 426
    if-eqz v0, :cond_4

    .line 427
    .line 428
    goto :goto_2

    .line 429
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 430
    .line 431
    const/high16 v2, -0x3f800000    # -4.0f

    .line 432
    .line 433
    invoke-static {v0, v2}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 434
    .line 435
    .line 436
    move-result v4

    .line 437
    :goto_2
    iput v4, p0, Lcom/android/calendar/homepage/z0;->F:F

    .line 438
    .line 439
    iget-object v0, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 440
    .line 441
    invoke-static {v0, v1}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 442
    .line 443
    .line 444
    move-result v0

    .line 445
    iput v0, p0, Lcom/android/calendar/homepage/z0;->G:F

    .line 446
    .line 447
    :goto_3
    return-void
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
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
.end method


# virtual methods
.method public a(Ljava/util/Calendar;Z)V
    .locals 12

    .line 1
    iput-boolean p2, p0, Lcom/android/calendar/homepage/z0;->R:Z

    .line 2
    .line 3
    invoke-static {}, Lcom/miui/calendar/util/y;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/miui/calendar/util/y;->f(Landroid/content/Context;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    move v0, v1

    .line 22
    :goto_1
    iput-boolean v0, p0, Lcom/android/calendar/homepage/z0;->S:Z

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v2, "mIsShowChineseCalendar: "

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-boolean v2, p0, Lcom/android/calendar/homepage/z0;->S:Z

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v2, "Cal:D:MonthInYearView"

    .line 44
    .line 45
    invoke-static {v2, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const v2, 0x7f06059c

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    const v3, 0x7f06059f

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    const v4, 0x7f0605a0

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    const v5, 0x7f06059e

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    const v6, 0x7f06059d

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColor(I)I

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    const v7, 0x7f06059a

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    const v8, 0x7f06059b

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    invoke-static {}, Lcom/miui/calendar/util/y;->g()Z

    .line 104
    .line 105
    .line 106
    move-result v8

    .line 107
    if-nez v8, :cond_3

    .line 108
    .line 109
    invoke-static {}, Lcom/miui/calendar/util/y;->a()Z

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    if-eqz v8, :cond_2

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_2
    iget-object v8, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 117
    .line 118
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    const v9, 0x7f03005f

    .line 123
    .line 124
    .line 125
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    iput-object v8, p0, Lcom/android/calendar/homepage/z0;->J:[Ljava/lang/String;

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_3
    :goto_2
    iget-object v8, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 133
    .line 134
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 135
    .line 136
    .line 137
    move-result-object v8

    .line 138
    const v9, 0x7f03005e

    .line 139
    .line 140
    .line 141
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    iput-object v8, p0, Lcom/android/calendar/homepage/z0;->J:[Ljava/lang/String;

    .line 146
    .line 147
    :goto_3
    invoke-direct {p0}, Lcom/android/calendar/homepage/z0;->b()V

    .line 148
    .line 149
    .line 150
    invoke-static {}, Lcom/miui/calendar/util/w;->d()Landroid/graphics/Typeface;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    new-instance v9, Landroid/text/TextPaint;

    .line 155
    .line 156
    invoke-direct {v9}, Landroid/text/TextPaint;-><init>()V

    .line 157
    .line 158
    .line 159
    iput-object v9, p0, Lcom/android/calendar/homepage/z0;->b:Landroid/text/TextPaint;

    .line 160
    .line 161
    iget v10, p0, Lcom/android/calendar/homepage/z0;->y:F

    .line 162
    .line 163
    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 164
    .line 165
    .line 166
    invoke-static {}, Lcom/miui/calendar/util/x0;->p0()Z

    .line 167
    .line 168
    .line 169
    move-result v9

    .line 170
    if-nez v9, :cond_4

    .line 171
    .line 172
    iget-object v9, p0, Lcom/android/calendar/homepage/z0;->b:Landroid/text/TextPaint;

    .line 173
    .line 174
    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 175
    .line 176
    .line 177
    :cond_4
    iget-object v9, p0, Lcom/android/calendar/homepage/z0;->b:Landroid/text/TextPaint;

    .line 178
    .line 179
    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 180
    .line 181
    .line 182
    invoke-static {}, Lcom/miui/calendar/util/w;->d()Landroid/graphics/Typeface;

    .line 183
    .line 184
    .line 185
    move-result-object v9

    .line 186
    new-instance v10, Landroid/text/TextPaint;

    .line 187
    .line 188
    invoke-direct {v10}, Landroid/text/TextPaint;-><init>()V

    .line 189
    .line 190
    .line 191
    iput-object v10, p0, Lcom/android/calendar/homepage/z0;->c:Landroid/text/TextPaint;

    .line 192
    .line 193
    iget v11, p0, Lcom/android/calendar/homepage/z0;->z:F

    .line 194
    .line 195
    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 196
    .line 197
    .line 198
    invoke-static {}, Lcom/miui/calendar/util/x0;->p0()Z

    .line 199
    .line 200
    .line 201
    move-result v10

    .line 202
    if-nez v10, :cond_5

    .line 203
    .line 204
    iget-object v10, p0, Lcom/android/calendar/homepage/z0;->c:Landroid/text/TextPaint;

    .line 205
    .line 206
    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 207
    .line 208
    .line 209
    :cond_5
    iget-object v9, p0, Lcom/android/calendar/homepage/z0;->c:Landroid/text/TextPaint;

    .line 210
    .line 211
    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 212
    .line 213
    .line 214
    new-instance v9, Landroid/text/TextPaint;

    .line 215
    .line 216
    invoke-direct {v9}, Landroid/text/TextPaint;-><init>()V

    .line 217
    .line 218
    .line 219
    iput-object v9, p0, Lcom/android/calendar/homepage/z0;->d:Landroid/text/TextPaint;

    .line 220
    .line 221
    iget v10, p0, Lcom/android/calendar/homepage/z0;->D:F

    .line 222
    .line 223
    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 224
    .line 225
    .line 226
    iget-object v9, p0, Lcom/android/calendar/homepage/z0;->d:Landroid/text/TextPaint;

    .line 227
    .line 228
    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 229
    .line 230
    .line 231
    iget-object v3, p0, Lcom/android/calendar/homepage/z0;->d:Landroid/text/TextPaint;

    .line 232
    .line 233
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 234
    .line 235
    .line 236
    new-instance v3, Landroid/text/TextPaint;

    .line 237
    .line 238
    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    .line 239
    .line 240
    .line 241
    iput-object v3, p0, Lcom/android/calendar/homepage/z0;->e:Landroid/text/TextPaint;

    .line 242
    .line 243
    iget v9, p0, Lcom/android/calendar/homepage/z0;->E:F

    .line 244
    .line 245
    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 246
    .line 247
    .line 248
    invoke-static {}, Lcom/miui/calendar/util/x0;->p0()Z

    .line 249
    .line 250
    .line 251
    move-result v3

    .line 252
    if-nez v3, :cond_6

    .line 253
    .line 254
    iget-object v3, p0, Lcom/android/calendar/homepage/z0;->e:Landroid/text/TextPaint;

    .line 255
    .line 256
    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 257
    .line 258
    .line 259
    :cond_6
    iget-object v3, p0, Lcom/android/calendar/homepage/z0;->e:Landroid/text/TextPaint;

    .line 260
    .line 261
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 262
    .line 263
    .line 264
    iget-object v2, p0, Lcom/android/calendar/homepage/z0;->e:Landroid/text/TextPaint;

    .line 265
    .line 266
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 267
    .line 268
    .line 269
    new-instance v2, Landroid/text/TextPaint;

    .line 270
    .line 271
    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    .line 272
    .line 273
    .line 274
    iput-object v2, p0, Lcom/android/calendar/homepage/z0;->f:Landroid/text/TextPaint;

    .line 275
    .line 276
    iget v3, p0, Lcom/android/calendar/homepage/z0;->E:F

    .line 277
    .line 278
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 279
    .line 280
    .line 281
    iget-object v2, p0, Lcom/android/calendar/homepage/z0;->f:Landroid/text/TextPaint;

    .line 282
    .line 283
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 284
    .line 285
    .line 286
    iget-object v2, p0, Lcom/android/calendar/homepage/z0;->f:Landroid/text/TextPaint;

    .line 287
    .line 288
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 289
    .line 290
    .line 291
    invoke-static {}, Lcom/miui/calendar/util/w;->c()Landroid/graphics/Typeface;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    new-instance v3, Landroid/text/TextPaint;

    .line 296
    .line 297
    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    .line 298
    .line 299
    .line 300
    iput-object v3, p0, Lcom/android/calendar/homepage/z0;->g:Landroid/text/TextPaint;

    .line 301
    .line 302
    iget v4, p0, Lcom/android/calendar/homepage/z0;->E:F

    .line 303
    .line 304
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 305
    .line 306
    .line 307
    invoke-static {}, Lcom/miui/calendar/util/x0;->p0()Z

    .line 308
    .line 309
    .line 310
    move-result v3

    .line 311
    if-nez v3, :cond_8

    .line 312
    .line 313
    iget-object v3, p0, Lcom/android/calendar/homepage/z0;->g:Landroid/text/TextPaint;

    .line 314
    .line 315
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 316
    .line 317
    .line 318
    iget-object v2, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 319
    .line 320
    if-eqz p2, :cond_7

    .line 321
    .line 322
    const/high16 v3, 0x40400000    # 3.0f

    .line 323
    .line 324
    goto :goto_4

    .line 325
    :cond_7
    const/high16 v3, 0x40a00000    # 5.0f

    .line 326
    .line 327
    :goto_4
    invoke-static {v2, v3}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 328
    .line 329
    .line 330
    move-result v2

    .line 331
    iput v2, p0, Lcom/android/calendar/homepage/z0;->H:F

    .line 332
    .line 333
    :cond_8
    iget-object v2, p0, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 334
    .line 335
    if-eqz p2, :cond_9

    .line 336
    .line 337
    const/high16 p2, 0x41400000    # 12.0f

    .line 338
    .line 339
    goto :goto_5

    .line 340
    :cond_9
    const/high16 p2, 0x41000000    # 8.0f

    .line 341
    .line 342
    :goto_5
    invoke-static {v2, p2}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 343
    .line 344
    .line 345
    move-result p2

    .line 346
    iput p2, p0, Lcom/android/calendar/homepage/z0;->I:F

    .line 347
    .line 348
    iget-object p2, p0, Lcom/android/calendar/homepage/z0;->g:Landroid/text/TextPaint;

    .line 349
    .line 350
    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 351
    .line 352
    .line 353
    iget-object p2, p0, Lcom/android/calendar/homepage/z0;->g:Landroid/text/TextPaint;

    .line 354
    .line 355
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 356
    .line 357
    .line 358
    new-instance p2, Landroid/graphics/Paint;

    .line 359
    .line 360
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 361
    .line 362
    .line 363
    iput-object p2, p0, Lcom/android/calendar/homepage/z0;->h:Landroid/graphics/Paint;

    .line 364
    .line 365
    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 366
    .line 367
    .line 368
    iget-object p2, p0, Lcom/android/calendar/homepage/z0;->h:Landroid/graphics/Paint;

    .line 369
    .line 370
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 371
    .line 372
    .line 373
    new-instance p2, Landroid/graphics/Paint;

    .line 374
    .line 375
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 376
    .line 377
    .line 378
    iput-object p2, p0, Lcom/android/calendar/homepage/z0;->i:Landroid/graphics/Paint;

    .line 379
    .line 380
    invoke-virtual {p2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 381
    .line 382
    .line 383
    iget-object p2, p0, Lcom/android/calendar/homepage/z0;->i:Landroid/graphics/Paint;

    .line 384
    .line 385
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 386
    .line 387
    .line 388
    new-instance p2, Landroid/graphics/Paint;

    .line 389
    .line 390
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 391
    .line 392
    .line 393
    iput-object p2, p0, Lcom/android/calendar/homepage/z0;->j:Landroid/graphics/Paint;

    .line 394
    .line 395
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 396
    .line 397
    .line 398
    iget-object p2, p0, Lcom/android/calendar/homepage/z0;->j:Landroid/graphics/Paint;

    .line 399
    .line 400
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 401
    .line 402
    .line 403
    new-instance p2, Landroid/graphics/RectF;

    .line 404
    .line 405
    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 406
    .line 407
    .line 408
    iput-object p2, p0, Lcom/android/calendar/homepage/z0;->T:Landroid/graphics/RectF;

    .line 409
    .line 410
    new-instance p2, Landroid/graphics/RectF;

    .line 411
    .line 412
    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 413
    .line 414
    .line 415
    iput-object p2, p0, Lcom/android/calendar/homepage/z0;->U:Landroid/graphics/RectF;

    .line 416
    .line 417
    new-instance p2, Landroid/graphics/Rect;

    .line 418
    .line 419
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 420
    .line 421
    .line 422
    iput-object p2, p0, Lcom/android/calendar/homepage/z0;->V:Landroid/graphics/Rect;

    .line 423
    .line 424
    invoke-virtual {p0, p1}, Lcom/android/calendar/homepage/z0;->c(Ljava/util/Calendar;)V

    .line 425
    .line 426
    .line 427
    return-void
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
.end method

.method public c(Ljava/util/Calendar;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    :try_start_0
    invoke-static {}, Lcom/miui/calendar/util/y;->a()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    iget-object v2, v1, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v2}, Lcom/miui/calendar/util/y;->f(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v2, v3

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    move v2, v4

    .line 25
    :goto_1
    iput-boolean v2, v1, Lcom/android/calendar/homepage/z0;->S:Z

    .line 26
    .line 27
    invoke-virtual/range {p1 .. p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/util/Calendar;

    .line 32
    .line 33
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    const/4 v6, 0x2

    .line 38
    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    if-ne v7, v8, :cond_2

    .line 47
    .line 48
    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-ne v7, v0, :cond_2

    .line 57
    .line 58
    move v0, v4

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    move v0, v3

    .line 61
    :goto_2
    iget-object v7, v1, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 62
    .line 63
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    const v8, 0x7f060599

    .line 70
    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_3
    const v8, 0x7f06059c

    .line 74
    .line 75
    .line 76
    :goto_3
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    iget-object v8, v1, Lcom/android/calendar/homepage/z0;->b:Landroid/text/TextPaint;

    .line 81
    .line 82
    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    iget-object v9, v1, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 90
    .line 91
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    sget-object v10, Lcom/android/calendar/homepage/z0;->W:[I

    .line 96
    .line 97
    aget v10, v10, v8

    .line 98
    .line 99
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    iput-object v9, v1, Lcom/android/calendar/homepage/z0;->P:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 110
    .line 111
    .line 112
    move-result-object v9

    .line 113
    const v10, 0x7f12031a

    .line 114
    .line 115
    .line 116
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    iput-object v9, v1, Lcom/android/calendar/homepage/z0;->Q:Ljava/lang/String;

    .line 121
    .line 122
    iget-object v9, v1, Lcom/android/calendar/homepage/z0;->c:Landroid/text/TextPaint;

    .line 123
    .line 124
    invoke-virtual {v9, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    .line 126
    .line 127
    new-array v7, v6, [I

    .line 128
    .line 129
    const/4 v9, -0x1

    .line 130
    aput v9, v7, v3

    .line 131
    .line 132
    aput v9, v7, v4

    .line 133
    .line 134
    iput-object v7, v1, Lcom/android/calendar/homepage/z0;->M:[I

    .line 135
    .line 136
    new-array v7, v6, [I

    .line 137
    .line 138
    const/4 v10, 0x7

    .line 139
    aput v10, v7, v4

    .line 140
    .line 141
    const/4 v11, 0x6

    .line 142
    aput v11, v7, v3

    .line 143
    .line 144
    const-class v12, Ljava/lang/String;

    .line 145
    .line 146
    invoke-static {v12, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    check-cast v7, [[Ljava/lang/String;

    .line 151
    .line 152
    iput-object v7, v1, Lcom/android/calendar/homepage/z0;->K:[[Ljava/lang/String;

    .line 153
    .line 154
    new-array v7, v6, [I

    .line 155
    .line 156
    aput v10, v7, v4

    .line 157
    .line 158
    aput v11, v7, v3

    .line 159
    .line 160
    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 161
    .line 162
    invoke-static {v12, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    check-cast v7, [[I

    .line 167
    .line 168
    iput-object v7, v1, Lcom/android/calendar/homepage/z0;->L:[[I

    .line 169
    .line 170
    new-array v7, v6, [I

    .line 171
    .line 172
    aput v9, v7, v3

    .line 173
    .line 174
    aput v9, v7, v4

    .line 175
    .line 176
    iput-object v7, v1, Lcom/android/calendar/homepage/z0;->N:[I

    .line 177
    .line 178
    new-instance v7, Ljava/util/ArrayList;

    .line 179
    .line 180
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .line 182
    .line 183
    iput-object v7, v1, Lcom/android/calendar/homepage/z0;->O:Ljava/util/List;

    .line 184
    .line 185
    const/4 v7, 0x5

    .line 186
    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    check-cast v2, Ljava/util/Calendar;

    .line 195
    .line 196
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 200
    .line 201
    .line 202
    :goto_4
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    .line 203
    .line 204
    .line 205
    move-result v9

    .line 206
    if-ne v8, v9, :cond_7

    .line 207
    .line 208
    const/4 v9, 0x4

    .line 209
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    .line 210
    .line 211
    .line 212
    move-result v9

    .line 213
    sub-int/2addr v9, v4

    .line 214
    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    .line 215
    .line 216
    .line 217
    move-result v12

    .line 218
    sub-int/2addr v12, v4

    .line 219
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    .line 220
    .line 221
    .line 222
    move-result v13

    .line 223
    iget-object v14, v1, Lcom/android/calendar/homepage/z0;->K:[[Ljava/lang/String;

    .line 224
    .line 225
    aget-object v14, v14, v9

    .line 226
    .line 227
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v15

    .line 231
    aput-object v15, v14, v12

    .line 232
    .line 233
    iget-object v14, v1, Lcom/android/calendar/homepage/z0;->L:[[I

    .line 234
    .line 235
    aget-object v14, v14, v9

    .line 236
    .line 237
    iget-object v15, v1, Lcom/android/calendar/homepage/z0;->a:Landroid/content/Context;

    .line 238
    .line 239
    invoke-static {v15}, Lcom/miui/calendar/util/DaysOffUtils;->g(Landroid/content/Context;)Lcom/miui/calendar/util/DaysOffUtils;

    .line 240
    .line 241
    .line 242
    move-result-object v15

    .line 243
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    .line 244
    .line 245
    .line 246
    move-result v7

    .line 247
    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    .line 248
    .line 249
    .line 250
    move-result v10

    .line 251
    invoke-virtual {v15, v7, v10}, Lcom/miui/calendar/util/DaysOffUtils;->e(II)I

    .line 252
    .line 253
    .line 254
    move-result v7

    .line 255
    aput v7, v14, v12

    .line 256
    .line 257
    if-eqz v0, :cond_4

    .line 258
    .line 259
    if-ne v5, v13, :cond_4

    .line 260
    .line 261
    iget-object v7, v1, Lcom/android/calendar/homepage/z0;->M:[I

    .line 262
    .line 263
    aput v9, v7, v3

    .line 264
    .line 265
    aput v12, v7, v4

    .line 266
    .line 267
    goto :goto_5

    .line 268
    :cond_4
    iget-boolean v7, v1, Lcom/android/calendar/homepage/z0;->S:Z

    .line 269
    .line 270
    if-eqz v7, :cond_5

    .line 271
    .line 272
    invoke-static {v2}, Lcom/miui/calendar/util/a0;->u(Ljava/util/Calendar;)Z

    .line 273
    .line 274
    .line 275
    move-result v7

    .line 276
    if-eqz v7, :cond_5

    .line 277
    .line 278
    iget-object v7, v1, Lcom/android/calendar/homepage/z0;->N:[I

    .line 279
    .line 280
    aput v9, v7, v3

    .line 281
    .line 282
    aput v12, v7, v4

    .line 283
    .line 284
    goto :goto_5

    .line 285
    :cond_5
    iget-boolean v7, v1, Lcom/android/calendar/homepage/z0;->S:Z

    .line 286
    .line 287
    if-eqz v7, :cond_6

    .line 288
    .line 289
    invoke-static {v2}, Lcom/miui/calendar/util/a0;->t(Ljava/util/Calendar;)Z

    .line 290
    .line 291
    .line 292
    move-result v7

    .line 293
    if-eqz v7, :cond_6

    .line 294
    .line 295
    new-array v7, v6, [I

    .line 296
    .line 297
    aput v9, v7, v3

    .line 298
    .line 299
    aput v12, v7, v4

    .line 300
    .line 301
    iget-object v9, v1, Lcom/android/calendar/homepage/z0;->O:Ljava/util/List;

    .line 302
    .line 303
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    :cond_6
    :goto_5
    invoke-virtual {v2, v11, v4}, Ljava/util/Calendar;->add(II)V

    .line 307
    .line 308
    .line 309
    const/4 v7, 0x5

    .line 310
    const/4 v10, 0x7

    .line 311
    goto :goto_4

    .line 312
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    .line 314
    .line 315
    goto :goto_6

    .line 316
    :catch_0
    move-exception v0

    .line 317
    const-string v2, "Cal:D:MonthInYearView"

    .line 318
    .line 319
    const-string v3, "RefreshView Error: "

    .line 320
    .line 321
    invoke-static {v2, v3, v0}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 322
    .line 323
    .line 324
    :goto_6
    return-void
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
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/miui/calendar/util/y;->a()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/high16 v3, 0x40000000    # 2.0f

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    const/4 v5, 0x0

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-static {}, Lcom/miui/calendar/util/x0;->p0()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    iget-object v2, v0, Lcom/android/calendar/homepage/z0;->c:Landroid/text/TextPaint;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v6, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-object v7, v0, Lcom/android/calendar/homepage/z0;->P:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v7, v0, Lcom/android/calendar/homepage/z0;->Q:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 50
    .line 51
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    iget-object v7, v0, Lcom/android/calendar/homepage/z0;->c:Landroid/text/TextPaint;

    .line 56
    .line 57
    invoke-virtual {v1, v6, v5, v2, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    iget-object v2, v0, Lcom/android/calendar/homepage/z0;->b:Landroid/text/TextPaint;

    .line 62
    .line 63
    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    iget-object v6, v0, Lcom/android/calendar/homepage/z0;->P:Ljava/lang/String;

    .line 68
    .line 69
    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 70
    .line 71
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    iget v7, v0, Lcom/android/calendar/homepage/z0;->F:F

    .line 76
    .line 77
    add-float/2addr v2, v7

    .line 78
    iget-object v7, v0, Lcom/android/calendar/homepage/z0;->b:Landroid/text/TextPaint;

    .line 79
    .line 80
    invoke-virtual {v1, v6, v5, v2, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 81
    .line 82
    .line 83
    iget-object v2, v0, Lcom/android/calendar/homepage/z0;->b:Landroid/text/TextPaint;

    .line 84
    .line 85
    iget-object v6, v0, Lcom/android/calendar/homepage/z0;->P:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    add-float/2addr v2, v5

    .line 92
    sub-float/2addr v2, v3

    .line 93
    iget-object v5, v0, Lcom/android/calendar/homepage/z0;->c:Landroid/text/TextPaint;

    .line 94
    .line 95
    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    iget-object v6, v0, Lcom/android/calendar/homepage/z0;->Q:Ljava/lang/String;

    .line 100
    .line 101
    iget v5, v5, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 102
    .line 103
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    iget-object v7, v0, Lcom/android/calendar/homepage/z0;->c:Landroid/text/TextPaint;

    .line 108
    .line 109
    invoke-virtual {v1, v6, v2, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_1
    iget-object v2, v0, Lcom/android/calendar/homepage/z0;->c:Landroid/text/TextPaint;

    .line 114
    .line 115
    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    if-ne v6, v4, :cond_2

    .line 124
    .line 125
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    int-to-float v5, v5

    .line 130
    iget-object v6, v0, Lcom/android/calendar/homepage/z0;->c:Landroid/text/TextPaint;

    .line 131
    .line 132
    iget-object v7, v0, Lcom/android/calendar/homepage/z0;->P:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    sub-float/2addr v5, v6

    .line 139
    :cond_2
    iget-object v6, v0, Lcom/android/calendar/homepage/z0;->P:Ljava/lang/String;

    .line 140
    .line 141
    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 142
    .line 143
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    iget-object v7, v0, Lcom/android/calendar/homepage/z0;->c:Landroid/text/TextPaint;

    .line 148
    .line 149
    invoke-virtual {v1, v6, v5, v2, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 150
    .line 151
    .line 152
    :goto_0
    iget-object v2, v0, Lcom/android/calendar/homepage/z0;->d:Landroid/text/TextPaint;

    .line 153
    .line 154
    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    iget v5, v0, Lcom/android/calendar/homepage/z0;->q:F

    .line 159
    .line 160
    iget v6, v0, Lcom/android/calendar/homepage/z0;->k:F

    .line 161
    .line 162
    iget v7, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 163
    .line 164
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 165
    .line 166
    .line 167
    move-result v7

    .line 168
    add-float/2addr v7, v6

    .line 169
    iget v8, v0, Lcom/android/calendar/homepage/z0;->l:F

    .line 170
    .line 171
    iget v9, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    .line 172
    .line 173
    sub-float/2addr v8, v9

    .line 174
    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 175
    .line 176
    add-float/2addr v8, v2

    .line 177
    div-float/2addr v8, v3

    .line 178
    add-float/2addr v7, v8

    .line 179
    const/4 v2, 0x0

    .line 180
    move v8, v2

    .line 181
    :goto_1
    const/4 v9, 0x7

    .line 182
    if-ge v8, v9, :cond_4

    .line 183
    .line 184
    invoke-static {}, Lcom/miui/calendar/util/x0;->x0()Z

    .line 185
    .line 186
    .line 187
    move-result v9

    .line 188
    if-eqz v9, :cond_3

    .line 189
    .line 190
    rsub-int/lit8 v9, v8, 0x6

    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_3
    move v9, v8

    .line 194
    :goto_2
    iget v10, v0, Lcom/android/calendar/homepage/z0;->m:F

    .line 195
    .line 196
    iget-object v11, v0, Lcom/android/calendar/homepage/z0;->d:Landroid/text/TextPaint;

    .line 197
    .line 198
    iget-object v12, v0, Lcom/android/calendar/homepage/z0;->J:[Ljava/lang/String;

    .line 199
    .line 200
    aget-object v12, v12, v9

    .line 201
    .line 202
    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 203
    .line 204
    .line 205
    move-result v11

    .line 206
    sub-float/2addr v10, v11

    .line 207
    div-float/2addr v10, v3

    .line 208
    add-float/2addr v10, v5

    .line 209
    iget-object v11, v0, Lcom/android/calendar/homepage/z0;->J:[Ljava/lang/String;

    .line 210
    .line 211
    aget-object v9, v11, v9

    .line 212
    .line 213
    iget-object v11, v0, Lcom/android/calendar/homepage/z0;->d:Landroid/text/TextPaint;

    .line 214
    .line 215
    invoke-virtual {v1, v9, v10, v7, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 216
    .line 217
    .line 218
    iget v9, v0, Lcom/android/calendar/homepage/z0;->m:F

    .line 219
    .line 220
    iget v10, v0, Lcom/android/calendar/homepage/z0;->p:F

    .line 221
    .line 222
    add-float/2addr v9, v10

    .line 223
    add-float/2addr v5, v9

    .line 224
    add-int/lit8 v8, v8, 0x1

    .line 225
    .line 226
    goto :goto_1

    .line 227
    :cond_4
    iget-object v5, v0, Lcom/android/calendar/homepage/z0;->e:Landroid/text/TextPaint;

    .line 228
    .line 229
    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    iget v7, v0, Lcom/android/calendar/homepage/z0;->l:F

    .line 234
    .line 235
    add-float/2addr v6, v7

    .line 236
    move v7, v2

    .line 237
    :goto_3
    iget-object v8, v0, Lcom/android/calendar/homepage/z0;->K:[[Ljava/lang/String;

    .line 238
    .line 239
    array-length v8, v8

    .line 240
    if-ge v7, v8, :cond_f

    .line 241
    .line 242
    iget v8, v0, Lcom/android/calendar/homepage/z0;->o:F

    .line 243
    .line 244
    add-float/2addr v6, v8

    .line 245
    iget v8, v0, Lcom/android/calendar/homepage/z0;->q:F

    .line 246
    .line 247
    iget v9, v5, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 248
    .line 249
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 250
    .line 251
    .line 252
    move-result v9

    .line 253
    add-float/2addr v9, v6

    .line 254
    move v10, v2

    .line 255
    :goto_4
    iget-object v11, v0, Lcom/android/calendar/homepage/z0;->K:[[Ljava/lang/String;

    .line 256
    .line 257
    aget-object v11, v11, v7

    .line 258
    .line 259
    array-length v11, v11

    .line 260
    if-ge v10, v11, :cond_e

    .line 261
    .line 262
    invoke-static {}, Lcom/miui/calendar/util/x0;->x0()Z

    .line 263
    .line 264
    .line 265
    move-result v11

    .line 266
    if-eqz v11, :cond_5

    .line 267
    .line 268
    iget-object v11, v0, Lcom/android/calendar/homepage/z0;->K:[[Ljava/lang/String;

    .line 269
    .line 270
    aget-object v11, v11, v7

    .line 271
    .line 272
    array-length v11, v11

    .line 273
    sub-int/2addr v11, v4

    .line 274
    sub-int/2addr v11, v10

    .line 275
    goto :goto_5

    .line 276
    :cond_5
    move v11, v10

    .line 277
    :goto_5
    iget-object v12, v0, Lcom/android/calendar/homepage/z0;->K:[[Ljava/lang/String;

    .line 278
    .line 279
    aget-object v12, v12, v7

    .line 280
    .line 281
    aget-object v12, v12, v11

    .line 282
    .line 283
    if-eqz v12, :cond_d

    .line 284
    .line 285
    if-eqz v11, :cond_6

    .line 286
    .line 287
    const/4 v13, 0x6

    .line 288
    if-ne v11, v13, :cond_7

    .line 289
    .line 290
    :cond_6
    iget-object v13, v0, Lcom/android/calendar/homepage/z0;->L:[[I

    .line 291
    .line 292
    aget-object v13, v13, v7

    .line 293
    .line 294
    aget v13, v13, v11

    .line 295
    .line 296
    const/4 v14, 0x2

    .line 297
    if-ne v13, v14, :cond_9

    .line 298
    .line 299
    :cond_7
    iget-object v13, v0, Lcom/android/calendar/homepage/z0;->L:[[I

    .line 300
    .line 301
    aget-object v13, v13, v7

    .line 302
    .line 303
    aget v13, v13, v11

    .line 304
    .line 305
    if-ne v13, v4, :cond_8

    .line 306
    .line 307
    goto :goto_6

    .line 308
    :cond_8
    iget-object v13, v0, Lcom/android/calendar/homepage/z0;->e:Landroid/text/TextPaint;

    .line 309
    .line 310
    goto :goto_7

    .line 311
    :cond_9
    :goto_6
    iget-object v13, v0, Lcom/android/calendar/homepage/z0;->f:Landroid/text/TextPaint;

    .line 312
    .line 313
    :goto_7
    iget v14, v0, Lcom/android/calendar/homepage/z0;->m:F

    .line 314
    .line 315
    invoke-virtual {v13, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 316
    .line 317
    .line 318
    move-result v12

    .line 319
    sub-float/2addr v14, v12

    .line 320
    div-float/2addr v14, v3

    .line 321
    add-float/2addr v14, v8

    .line 322
    iget-object v12, v0, Lcom/android/calendar/homepage/z0;->M:[I

    .line 323
    .line 324
    aget v15, v12, v2

    .line 325
    .line 326
    if-ne v15, v7, :cond_a

    .line 327
    .line 328
    aget v12, v12, v4

    .line 329
    .line 330
    if-ne v12, v11, :cond_a

    .line 331
    .line 332
    iget-object v12, v0, Lcom/android/calendar/homepage/z0;->g:Landroid/text/TextPaint;

    .line 333
    .line 334
    iget-object v13, v0, Lcom/android/calendar/homepage/z0;->K:[[Ljava/lang/String;

    .line 335
    .line 336
    aget-object v13, v13, v7

    .line 337
    .line 338
    aget-object v13, v13, v11

    .line 339
    .line 340
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 341
    .line 342
    .line 343
    move-result v15

    .line 344
    iget-object v4, v0, Lcom/android/calendar/homepage/z0;->V:Landroid/graphics/Rect;

    .line 345
    .line 346
    invoke-virtual {v12, v13, v2, v15, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 347
    .line 348
    .line 349
    iget v4, v0, Lcom/android/calendar/homepage/z0;->m:F

    .line 350
    .line 351
    div-float/2addr v4, v3

    .line 352
    add-float/2addr v4, v8

    .line 353
    iget v13, v0, Lcom/android/calendar/homepage/z0;->G:F

    .line 354
    .line 355
    add-float/2addr v13, v9

    .line 356
    iget-object v15, v0, Lcom/android/calendar/homepage/z0;->V:Landroid/graphics/Rect;

    .line 357
    .line 358
    iget v2, v15, Landroid/graphics/Rect;->top:I

    .line 359
    .line 360
    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    .line 361
    .line 362
    add-int/2addr v2, v15

    .line 363
    int-to-float v2, v2

    .line 364
    div-float/2addr v2, v3

    .line 365
    add-float/2addr v13, v2

    .line 366
    iget v2, v0, Lcom/android/calendar/homepage/z0;->r:F

    .line 367
    .line 368
    iget-object v15, v0, Lcom/android/calendar/homepage/z0;->h:Landroid/graphics/Paint;

    .line 369
    .line 370
    invoke-virtual {v1, v4, v13, v2, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 371
    .line 372
    .line 373
    iget-object v2, v0, Lcom/android/calendar/homepage/z0;->K:[[Ljava/lang/String;

    .line 374
    .line 375
    aget-object v2, v2, v7

    .line 376
    .line 377
    aget-object v2, v2, v11

    .line 378
    .line 379
    iget v4, v0, Lcom/android/calendar/homepage/z0;->G:F

    .line 380
    .line 381
    add-float/2addr v4, v9

    .line 382
    invoke-virtual {v1, v2, v14, v4, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 383
    .line 384
    .line 385
    goto :goto_8

    .line 386
    :cond_a
    iget v2, v0, Lcom/android/calendar/homepage/z0;->m:F

    .line 387
    .line 388
    iget-object v4, v0, Lcom/android/calendar/homepage/z0;->K:[[Ljava/lang/String;

    .line 389
    .line 390
    aget-object v4, v4, v7

    .line 391
    .line 392
    aget-object v4, v4, v11

    .line 393
    .line 394
    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 395
    .line 396
    .line 397
    move-result v4

    .line 398
    sub-float/2addr v2, v4

    .line 399
    div-float/2addr v2, v3

    .line 400
    add-float/2addr v2, v8

    .line 401
    iget-object v4, v0, Lcom/android/calendar/homepage/z0;->K:[[Ljava/lang/String;

    .line 402
    .line 403
    aget-object v4, v4, v7

    .line 404
    .line 405
    aget-object v4, v4, v11

    .line 406
    .line 407
    iget v12, v0, Lcom/android/calendar/homepage/z0;->G:F

    .line 408
    .line 409
    add-float/2addr v12, v9

    .line 410
    invoke-virtual {v1, v4, v2, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 411
    .line 412
    .line 413
    :goto_8
    iget-object v2, v0, Lcom/android/calendar/homepage/z0;->N:[I

    .line 414
    .line 415
    const/4 v4, 0x0

    .line 416
    aget v12, v2, v4

    .line 417
    .line 418
    if-ne v12, v7, :cond_b

    .line 419
    .line 420
    const/4 v4, 0x1

    .line 421
    aget v2, v2, v4

    .line 422
    .line 423
    if-ne v2, v11, :cond_b

    .line 424
    .line 425
    iget-object v2, v0, Lcom/android/calendar/homepage/z0;->U:Landroid/graphics/RectF;

    .line 426
    .line 427
    iget v4, v0, Lcom/android/calendar/homepage/z0;->m:F

    .line 428
    .line 429
    iget v11, v0, Lcom/android/calendar/homepage/z0;->v:F

    .line 430
    .line 431
    sub-float/2addr v4, v11

    .line 432
    div-float/2addr v4, v3

    .line 433
    add-float/2addr v4, v8

    .line 434
    iput v4, v2, Landroid/graphics/RectF;->left:F

    .line 435
    .line 436
    iget v12, v0, Lcom/android/calendar/homepage/z0;->n:F

    .line 437
    .line 438
    add-float/2addr v12, v6

    .line 439
    iget v13, v0, Lcom/android/calendar/homepage/z0;->w:F

    .line 440
    .line 441
    sub-float/2addr v12, v13

    .line 442
    iget v14, v0, Lcom/android/calendar/homepage/z0;->I:F

    .line 443
    .line 444
    add-float/2addr v12, v14

    .line 445
    iput v12, v2, Landroid/graphics/RectF;->top:F

    .line 446
    .line 447
    add-float/2addr v4, v11

    .line 448
    iput v4, v2, Landroid/graphics/RectF;->right:F

    .line 449
    .line 450
    add-float/2addr v12, v13

    .line 451
    iput v12, v2, Landroid/graphics/RectF;->bottom:F

    .line 452
    .line 453
    iget v4, v0, Lcom/android/calendar/homepage/z0;->x:F

    .line 454
    .line 455
    iget-object v11, v0, Lcom/android/calendar/homepage/z0;->j:Landroid/graphics/Paint;

    .line 456
    .line 457
    invoke-virtual {v1, v2, v4, v4, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 458
    .line 459
    .line 460
    goto :goto_a

    .line 461
    :cond_b
    iget-object v2, v0, Lcom/android/calendar/homepage/z0;->O:Ljava/util/List;

    .line 462
    .line 463
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 464
    .line 465
    .line 466
    move-result v2

    .line 467
    if-nez v2, :cond_d

    .line 468
    .line 469
    iget-object v2, v0, Lcom/android/calendar/homepage/z0;->O:Ljava/util/List;

    .line 470
    .line 471
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 472
    .line 473
    .line 474
    move-result-object v2

    .line 475
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 476
    .line 477
    .line 478
    move-result v4

    .line 479
    if-eqz v4, :cond_d

    .line 480
    .line 481
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object v4

    .line 485
    check-cast v4, [I

    .line 486
    .line 487
    const/4 v12, 0x0

    .line 488
    aget v13, v4, v12

    .line 489
    .line 490
    if-ne v13, v7, :cond_c

    .line 491
    .line 492
    const/4 v13, 0x1

    .line 493
    aget v4, v4, v13

    .line 494
    .line 495
    if-ne v4, v11, :cond_c

    .line 496
    .line 497
    iget-object v4, v0, Lcom/android/calendar/homepage/z0;->T:Landroid/graphics/RectF;

    .line 498
    .line 499
    iget v14, v0, Lcom/android/calendar/homepage/z0;->m:F

    .line 500
    .line 501
    iget v15, v0, Lcom/android/calendar/homepage/z0;->v:F

    .line 502
    .line 503
    sub-float/2addr v14, v15

    .line 504
    div-float/2addr v14, v3

    .line 505
    add-float/2addr v14, v8

    .line 506
    iput v14, v4, Landroid/graphics/RectF;->left:F

    .line 507
    .line 508
    iget v3, v0, Lcom/android/calendar/homepage/z0;->n:F

    .line 509
    .line 510
    add-float/2addr v3, v6

    .line 511
    iget v12, v0, Lcom/android/calendar/homepage/z0;->w:F

    .line 512
    .line 513
    sub-float/2addr v3, v12

    .line 514
    iget v13, v0, Lcom/android/calendar/homepage/z0;->I:F

    .line 515
    .line 516
    add-float/2addr v3, v13

    .line 517
    iput v3, v4, Landroid/graphics/RectF;->top:F

    .line 518
    .line 519
    add-float/2addr v14, v15

    .line 520
    iput v14, v4, Landroid/graphics/RectF;->right:F

    .line 521
    .line 522
    add-float/2addr v3, v12

    .line 523
    iput v3, v4, Landroid/graphics/RectF;->bottom:F

    .line 524
    .line 525
    iget v3, v0, Lcom/android/calendar/homepage/z0;->x:F

    .line 526
    .line 527
    iget-object v12, v0, Lcom/android/calendar/homepage/z0;->i:Landroid/graphics/Paint;

    .line 528
    .line 529
    invoke-virtual {v1, v4, v3, v3, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 530
    .line 531
    .line 532
    :cond_c
    const/high16 v3, 0x40000000    # 2.0f

    .line 533
    .line 534
    goto :goto_9

    .line 535
    :cond_d
    :goto_a
    iget v2, v0, Lcom/android/calendar/homepage/z0;->m:F

    .line 536
    .line 537
    iget v3, v0, Lcom/android/calendar/homepage/z0;->p:F

    .line 538
    .line 539
    add-float/2addr v2, v3

    .line 540
    add-float/2addr v8, v2

    .line 541
    add-int/lit8 v10, v10, 0x1

    .line 542
    .line 543
    const/4 v2, 0x0

    .line 544
    const/high16 v3, 0x40000000    # 2.0f

    .line 545
    .line 546
    const/4 v4, 0x1

    .line 547
    goto/16 :goto_4

    .line 548
    .line 549
    :cond_e
    iget v2, v0, Lcom/android/calendar/homepage/z0;->n:F

    .line 550
    .line 551
    add-float/2addr v6, v2

    .line 552
    add-int/lit8 v7, v7, 0x1

    .line 553
    .line 554
    const/4 v2, 0x0

    .line 555
    const/high16 v3, 0x40000000    # 2.0f

    .line 556
    .line 557
    const/4 v4, 0x1

    .line 558
    goto/16 :goto_3

    .line 559
    .line 560
    :cond_f
    return-void
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
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    .line 1342
    .line 1343
    .line 1344
    .line 1345
    .line 1346
    .line 1347
    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    .line 1357
    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    .line 1365
    .line 1366
    .line 1367
    .line 1368
    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    .line 1380
    .line 1381
    .line 1382
    .line 1383
    .line 1384
    .line 1385
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    int-to-float p1, p1

    .line 5
    iget p3, p0, Lcom/android/calendar/homepage/z0;->m:F

    .line 6
    .line 7
    const/high16 p4, 0x40e00000    # 7.0f

    .line 8
    .line 9
    mul-float/2addr p3, p4

    .line 10
    sub-float/2addr p1, p3

    .line 11
    const/high16 p3, 0x40c00000    # 6.0f

    .line 12
    .line 13
    div-float/2addr p1, p3

    .line 14
    iput p1, p0, Lcom/android/calendar/homepage/z0;->p:F

    .line 15
    .line 16
    iget-boolean p1, p0, Lcom/android/calendar/homepage/z0;->R:Z

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    int-to-float p1, p2

    .line 21
    iget p2, p0, Lcom/android/calendar/homepage/z0;->r:F

    .line 22
    .line 23
    iget p4, p0, Lcom/android/calendar/homepage/z0;->n:F

    .line 24
    .line 25
    sub-float/2addr p2, p4

    .line 26
    const/high16 v0, 0x40000000    # 2.0f

    .line 27
    .line 28
    div-float/2addr p2, v0

    .line 29
    add-float/2addr p1, p2

    .line 30
    iget p2, p0, Lcom/android/calendar/homepage/z0;->k:F

    .line 31
    .line 32
    sub-float/2addr p1, p2

    .line 33
    iget p2, p0, Lcom/android/calendar/homepage/z0;->l:F

    .line 34
    .line 35
    sub-float/2addr p1, p2

    .line 36
    mul-float/2addr p4, p3

    .line 37
    sub-float/2addr p1, p4

    .line 38
    div-float/2addr p1, p3

    .line 39
    iput p1, p0, Lcom/android/calendar/homepage/z0;->o:F

    .line 40
    .line 41
    :cond_0
    return-void
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
.end method

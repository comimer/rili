.class Lmiuix/miuixbasewidget/widget/FilterSortView$b;
.super Ljava/lang/Object;
.source "FilterSortView.java"

# interfaces
.implements Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/miuixbasewidget/widget/FilterSortView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/miuixbasewidget/widget/FilterSortView;


# direct methods
.method constructor <init>(Lmiuix/miuixbasewidget/widget/FilterSortView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$b;->a:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
.method public a()V
    .locals 8

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$b;->a:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 2
    .line 3
    invoke-static {v0}, Lmiuix/miuixbasewidget/widget/FilterSortView;->v(Lmiuix/miuixbasewidget/widget/FilterSortView;)Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x2

    .line 8
    new-array v2, v1, [F

    .line 9
    .line 10
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$b;->a:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 11
    .line 12
    invoke-static {v3}, Lmiuix/miuixbasewidget/widget/FilterSortView;->v(Lmiuix/miuixbasewidget/widget/FilterSortView;)Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x0

    .line 21
    aput v3, v2, v4

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    const/high16 v5, 0x3f800000    # 1.0f

    .line 25
    .line 26
    aput v5, v2, v3

    .line 27
    .line 28
    const-string v6, "scaleX"

    .line 29
    .line 30
    invoke-static {v0, v6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$b;->a:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 35
    .line 36
    invoke-static {v2}, Lmiuix/miuixbasewidget/widget/FilterSortView;->v(Lmiuix/miuixbasewidget/widget/FilterSortView;)Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    new-array v6, v1, [F

    .line 41
    .line 42
    iget-object v7, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$b;->a:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 43
    .line 44
    invoke-static {v7}, Lmiuix/miuixbasewidget/widget/FilterSortView;->v(Lmiuix/miuixbasewidget/widget/FilterSortView;)Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    aput v7, v6, v4

    .line 53
    .line 54
    aput v5, v6, v3

    .line 55
    .line 56
    const-string v5, "scaleY"

    .line 57
    .line 58
    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    new-instance v5, Landroid/animation/AnimatorSet;

    .line 63
    .line 64
    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 65
    .line 66
    .line 67
    new-array v1, v1, [Landroid/animation/Animator;

    .line 68
    .line 69
    aput-object v0, v1, v4

    .line 70
    .line 71
    aput-object v2, v1, v3

    .line 72
    .line 73
    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 74
    .line 75
    .line 76
    const-wide/16 v0, 0x15e

    .line 77
    .line 78
    invoke-virtual {v5, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 79
    .line 80
    .line 81
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 82
    .line 83
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 84
    .line 85
    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 92
    .line 93
    .line 94
    return-void
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

.method public b()V
    .locals 8

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$b;->a:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 2
    .line 3
    invoke-static {v0}, Lmiuix/miuixbasewidget/widget/FilterSortView;->v(Lmiuix/miuixbasewidget/widget/FilterSortView;)Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x2

    .line 8
    new-array v2, v1, [F

    .line 9
    .line 10
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$b;->a:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 11
    .line 12
    invoke-static {v3}, Lmiuix/miuixbasewidget/widget/FilterSortView;->v(Lmiuix/miuixbasewidget/widget/FilterSortView;)Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x0

    .line 21
    aput v3, v2, v4

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    const v5, 0x3f866666    # 1.05f

    .line 25
    .line 26
    .line 27
    aput v5, v2, v3

    .line 28
    .line 29
    const-string v6, "scaleX"

    .line 30
    .line 31
    invoke-static {v0, v6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$b;->a:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 36
    .line 37
    invoke-static {v2}, Lmiuix/miuixbasewidget/widget/FilterSortView;->v(Lmiuix/miuixbasewidget/widget/FilterSortView;)Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    new-array v6, v1, [F

    .line 42
    .line 43
    iget-object v7, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$b;->a:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 44
    .line 45
    invoke-static {v7}, Lmiuix/miuixbasewidget/widget/FilterSortView;->v(Lmiuix/miuixbasewidget/widget/FilterSortView;)Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    aput v7, v6, v4

    .line 54
    .line 55
    aput v5, v6, v3

    .line 56
    .line 57
    const-string v5, "scaleY"

    .line 58
    .line 59
    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    new-instance v5, Landroid/animation/AnimatorSet;

    .line 64
    .line 65
    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 66
    .line 67
    .line 68
    new-array v1, v1, [Landroid/animation/Animator;

    .line 69
    .line 70
    aput-object v0, v1, v4

    .line 71
    .line 72
    aput-object v2, v1, v3

    .line 73
    .line 74
    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 75
    .line 76
    .line 77
    const-wide/16 v0, 0x15e

    .line 78
    .line 79
    invoke-virtual {v5, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 80
    .line 81
    .line 82
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 83
    .line 84
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 85
    .line 86
    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 93
    .line 94
    .line 95
    return-void
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

.method public c(FF)V
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$b;->a:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 2
    .line 3
    invoke-static {v0}, Lmiuix/miuixbasewidget/widget/FilterSortView;->y(Lmiuix/miuixbasewidget/widget/FilterSortView;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    cmpg-float v0, p1, v0

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x2

    .line 12
    if-ltz v0, :cond_0

    .line 13
    .line 14
    cmpg-float v0, p2, v1

    .line 15
    .line 16
    if-ltz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$b;->a:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$b;->a:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 25
    .line 26
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    sub-int/2addr v0, v3

    .line 31
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$b;->a:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 32
    .line 33
    invoke-static {v3}, Lmiuix/miuixbasewidget/widget/FilterSortView;->y(Lmiuix/miuixbasewidget/widget/FilterSortView;)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    mul-int/2addr v3, v2

    .line 38
    sub-int/2addr v0, v3

    .line 39
    int-to-float v0, v0

    .line 40
    cmpl-float p1, p1, v0

    .line 41
    .line 42
    if-gtz p1, :cond_0

    .line 43
    .line 44
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$b;->a:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$b;->a:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    sub-int/2addr p1, v0

    .line 57
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$b;->a:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 58
    .line 59
    invoke-static {v0}, Lmiuix/miuixbasewidget/widget/FilterSortView;->y(Lmiuix/miuixbasewidget/widget/FilterSortView;)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    mul-int/2addr v0, v2

    .line 64
    sub-int/2addr p1, v0

    .line 65
    int-to-float p1, p1

    .line 66
    cmpl-float p1, p2, p1

    .line 67
    .line 68
    if-lez p1, :cond_1

    .line 69
    .line 70
    :cond_0
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$b;->a:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 71
    .line 72
    invoke-static {p1}, Lmiuix/miuixbasewidget/widget/FilterSortView;->x(Lmiuix/miuixbasewidget/widget/FilterSortView;)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    new-array p2, v2, [F

    .line 77
    .line 78
    const/4 v0, 0x0

    .line 79
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$b;->a:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 80
    .line 81
    invoke-static {v2}, Lmiuix/miuixbasewidget/widget/FilterSortView;->x(Lmiuix/miuixbasewidget/widget/FilterSortView;)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    aput v2, p2, v0

    .line 90
    .line 91
    const/4 v0, 0x1

    .line 92
    aput v1, p2, v0

    .line 93
    .line 94
    const-string v0, "alpha"

    .line 95
    .line 96
    invoke-static {p1, v0, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    const-wide/16 v0, 0x15e

    .line 101
    .line 102
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 103
    .line 104
    .line 105
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    .line 106
    .line 107
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 108
    .line 109
    invoke-direct {p2, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 116
    .line 117
    .line 118
    :cond_1
    return-void
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

.method public d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$b;->a:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 2
    .line 3
    invoke-static {v0}, Lmiuix/miuixbasewidget/widget/FilterSortView;->x(Lmiuix/miuixbasewidget/widget/FilterSortView;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x2

    .line 8
    new-array v1, v1, [F

    .line 9
    .line 10
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$b;->a:Lmiuix/miuixbasewidget/widget/FilterSortView;

    .line 11
    .line 12
    invoke-static {v2}, Lmiuix/miuixbasewidget/widget/FilterSortView;->x(Lmiuix/miuixbasewidget/widget/FilterSortView;)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    aput v2, v1, v3

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    const/high16 v3, 0x3f800000    # 1.0f

    .line 25
    .line 26
    aput v3, v1, v2

    .line 27
    .line 28
    const-string v2, "alpha"

    .line 29
    .line 30
    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-wide/16 v1, 0x15e

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 37
    .line 38
    .line 39
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 40
    .line 41
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 42
    .line 43
    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 50
    .line 51
    .line 52
    return-void
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

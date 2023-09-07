.class public Lcom/miui/calendar/view/VerticalTextView;
.super Landroid/view/View;
.source "VerticalTextView.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:I

.field private c:I

.field private d:F

.field private e:I

.field private f:F

.field private g:I

.field private h:[Ljava/lang/String;

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/calendar/view/VerticalTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x42100000    # 36.0f

    .line 3
    iput p1, p0, Lcom/miui/calendar/view/VerticalTextView;->f:F

    const-string p1, ""

    .line 4
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/calendar/view/VerticalTextView;->h:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/miui/calendar/view/VerticalTextView;->i:I

    .line 6
    iput p1, p0, Lcom/miui/calendar/view/VerticalTextView;->j:I

    .line 7
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/view/VerticalTextView;->a:Landroid/graphics/Paint;

    .line 8
    sget-object p2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 9
    iget-object p1, p0, Lcom/miui/calendar/view/VerticalTextView;->a:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 10
    iget-object p1, p0, Lcom/miui/calendar/view/VerticalTextView;->a:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private a()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/miui/calendar/view/VerticalTextView;->c:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    new-array v1, v0, [F

    .line 8
    .line 9
    iget-object v2, p0, Lcom/miui/calendar/view/VerticalTextView;->a:Landroid/graphics/Paint;

    .line 10
    .line 11
    iget v3, p0, Lcom/miui/calendar/view/VerticalTextView;->f:F

    .line 12
    .line 13
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lcom/miui/calendar/view/VerticalTextView;->a:Landroid/graphics/Paint;

    .line 17
    .line 18
    const-string v3, "\u6b63"

    .line 19
    .line 20
    invoke-virtual {v2, v3, v1}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/miui/calendar/view/VerticalTextView;->a:Landroid/graphics/Paint;

    .line 24
    .line 25
    invoke-static {}, Lcom/miui/calendar/util/w;->c()Landroid/graphics/Typeface;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 30
    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    aget v1, v1, v2

    .line 34
    .line 35
    iput v1, p0, Lcom/miui/calendar/view/VerticalTextView;->d:F

    .line 36
    .line 37
    iget-object v1, p0, Lcom/miui/calendar/view/VerticalTextView;->a:Landroid/graphics/Paint;

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget v3, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    .line 44
    .line 45
    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 46
    .line 47
    sub-float/2addr v3, v1

    .line 48
    float-to-double v3, v3

    .line 49
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 50
    .line 51
    .line 52
    move-result-wide v3

    .line 53
    const-wide v5, 0x3feccccccccccccdL    # 0.9

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    mul-double/2addr v3, v5

    .line 59
    double-to-int v1, v3

    .line 60
    iput v1, p0, Lcom/miui/calendar/view/VerticalTextView;->e:I

    .line 61
    .line 62
    iget v1, p0, Lcom/miui/calendar/view/VerticalTextView;->d:F

    .line 63
    .line 64
    float-to-double v3, v1

    .line 65
    const-wide v5, 0x3ff199999999999aL    # 1.1

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    mul-double/2addr v3, v5

    .line 71
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 72
    .line 73
    add-double/2addr v3, v5

    .line 74
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 75
    .line 76
    .line 77
    move-result-wide v3

    .line 78
    double-to-int v1, v3

    .line 79
    iput v1, p0, Lcom/miui/calendar/view/VerticalTextView;->g:I

    .line 80
    .line 81
    move v4, v0

    .line 82
    move v1, v2

    .line 83
    move v3, v1

    .line 84
    move v5, v3

    .line 85
    :goto_0
    iget-object v6, p0, Lcom/miui/calendar/view/VerticalTextView;->h:[Ljava/lang/String;

    .line 86
    .line 87
    array-length v7, v6

    .line 88
    if-ge v1, v7, :cond_4

    .line 89
    .line 90
    if-eqz v3, :cond_1

    .line 91
    .line 92
    iget v7, p0, Lcom/miui/calendar/view/VerticalTextView;->e:I

    .line 93
    .line 94
    div-int/lit8 v7, v7, 0x3

    .line 95
    .line 96
    add-int/2addr v3, v7

    .line 97
    :cond_1
    iget v7, p0, Lcom/miui/calendar/view/VerticalTextView;->e:I

    .line 98
    .line 99
    aget-object v6, v6, v1

    .line 100
    .line 101
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    mul-int/2addr v7, v6

    .line 106
    add-int/2addr v3, v7

    .line 107
    iget v6, p0, Lcom/miui/calendar/view/VerticalTextView;->c:I

    .line 108
    .line 109
    if-le v3, v6, :cond_3

    .line 110
    .line 111
    add-int/lit8 v4, v4, 0x1

    .line 112
    .line 113
    add-int/lit8 v1, v1, -0x1

    .line 114
    .line 115
    if-eqz v5, :cond_2

    .line 116
    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string v3, "can\'t draw this word:"

    .line 123
    .line 124
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    iget-object v3, p0, Lcom/miui/calendar/view/VerticalTextView;->h:[Ljava/lang/String;

    .line 128
    .line 129
    add-int/2addr v1, v0

    .line 130
    aget-object v0, v3, v1

    .line 131
    .line 132
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    const-string v1, "Cal:D:VerticalTextView"

    .line 140
    .line 141
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_2
    move v5, v0

    .line 146
    move v3, v2

    .line 147
    goto :goto_1

    .line 148
    :cond_3
    move v5, v2

    .line 149
    :goto_1
    add-int/2addr v1, v0

    .line 150
    goto :goto_0

    .line 151
    :cond_4
    :goto_2
    iget v0, p0, Lcom/miui/calendar/view/VerticalTextView;->g:I

    .line 152
    .line 153
    mul-int/2addr v0, v4

    .line 154
    iput v0, p0, Lcom/miui/calendar/view/VerticalTextView;->b:I

    .line 155
    .line 156
    return-void
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

.method private b(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/miui/calendar/view/VerticalTextView;->c:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/miui/calendar/view/VerticalTextView;->j:I

    .line 8
    .line 9
    iget v1, p0, Lcom/miui/calendar/view/VerticalTextView;->b:I

    .line 10
    .line 11
    iget v2, p0, Lcom/miui/calendar/view/VerticalTextView;->g:I

    .line 12
    .line 13
    sub-int/2addr v1, v2

    .line 14
    iget v3, p0, Lcom/miui/calendar/view/VerticalTextView;->d:F

    .line 15
    .line 16
    float-to-int v3, v3

    .line 17
    sub-int/2addr v2, v3

    .line 18
    div-int/lit8 v2, v2, 0x2

    .line 19
    .line 20
    add-int/2addr v1, v2

    .line 21
    iput v1, p0, Lcom/miui/calendar/view/VerticalTextView;->i:I

    .line 22
    .line 23
    move v1, v0

    .line 24
    move v2, v1

    .line 25
    :goto_0
    iget-object v3, p0, Lcom/miui/calendar/view/VerticalTextView;->h:[Ljava/lang/String;

    .line 26
    .line 27
    array-length v4, v3

    .line 28
    if-ge v1, v4, :cond_5

    .line 29
    .line 30
    iget v4, p0, Lcom/miui/calendar/view/VerticalTextView;->j:I

    .line 31
    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    iget v5, p0, Lcom/miui/calendar/view/VerticalTextView;->e:I

    .line 35
    .line 36
    div-int/lit8 v5, v5, 0x3

    .line 37
    .line 38
    add-int/2addr v4, v5

    .line 39
    iput v4, p0, Lcom/miui/calendar/view/VerticalTextView;->j:I

    .line 40
    .line 41
    :cond_1
    iget v4, p0, Lcom/miui/calendar/view/VerticalTextView;->j:I

    .line 42
    .line 43
    iget v5, p0, Lcom/miui/calendar/view/VerticalTextView;->e:I

    .line 44
    .line 45
    aget-object v3, v3, v1

    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    mul-int/2addr v5, v3

    .line 52
    add-int/2addr v4, v5

    .line 53
    iget v3, p0, Lcom/miui/calendar/view/VerticalTextView;->c:I

    .line 54
    .line 55
    const/4 v5, 0x1

    .line 56
    if-le v4, v3, :cond_3

    .line 57
    .line 58
    iget v3, p0, Lcom/miui/calendar/view/VerticalTextView;->i:I

    .line 59
    .line 60
    iget v4, p0, Lcom/miui/calendar/view/VerticalTextView;->g:I

    .line 61
    .line 62
    sub-int/2addr v3, v4

    .line 63
    iput v3, p0, Lcom/miui/calendar/view/VerticalTextView;->i:I

    .line 64
    .line 65
    add-int/lit8 v1, v1, -0x1

    .line 66
    .line 67
    iput v0, p0, Lcom/miui/calendar/view/VerticalTextView;->j:I

    .line 68
    .line 69
    if-eqz v2, :cond_2

    .line 70
    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v0, "can\'t draw this word:"

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/miui/calendar/view/VerticalTextView;->h:[Ljava/lang/String;

    .line 82
    .line 83
    add-int/2addr v1, v5

    .line 84
    aget-object v0, v0, v1

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const-string v0, "Cal:D:VerticalTextView"

    .line 94
    .line 95
    invoke-static {v0, p1}, Lcom/miui/calendar/util/z;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_2
    move v2, v5

    .line 100
    goto :goto_2

    .line 101
    :cond_3
    move v2, v0

    .line 102
    :goto_1
    iget-object v3, p0, Lcom/miui/calendar/view/VerticalTextView;->h:[Ljava/lang/String;

    .line 103
    .line 104
    aget-object v3, v3, v1

    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-ge v2, v3, :cond_4

    .line 111
    .line 112
    iget-object v3, p0, Lcom/miui/calendar/view/VerticalTextView;->h:[Ljava/lang/String;

    .line 113
    .line 114
    aget-object v3, v3, v1

    .line 115
    .line 116
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    iget v6, p0, Lcom/miui/calendar/view/VerticalTextView;->i:I

    .line 125
    .line 126
    int-to-float v6, v6

    .line 127
    iget v7, p0, Lcom/miui/calendar/view/VerticalTextView;->j:I

    .line 128
    .line 129
    iget v8, p0, Lcom/miui/calendar/view/VerticalTextView;->e:I

    .line 130
    .line 131
    add-int/lit8 v2, v2, 0x1

    .line 132
    .line 133
    mul-int/2addr v8, v2

    .line 134
    add-int/2addr v7, v8

    .line 135
    int-to-float v7, v7

    .line 136
    iget-object v8, p0, Lcom/miui/calendar/view/VerticalTextView;->a:Landroid/graphics/Paint;

    .line 137
    .line 138
    invoke-virtual {p1, v3, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_4
    iput v4, p0, Lcom/miui/calendar/view/VerticalTextView;->j:I

    .line 143
    .line 144
    move v2, v0

    .line 145
    :goto_2
    add-int/2addr v1, v5

    .line 146
    goto :goto_0

    .line 147
    :cond_5
    :goto_3
    return-void
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

.method private c(I)I
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/high16 v1, -0x80000000

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iput p1, p0, Lcom/miui/calendar/view/VerticalTextView;->c:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    .line 17
    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    iput p1, p0, Lcom/miui/calendar/view/VerticalTextView;->c:I

    .line 21
    .line 22
    :cond_1
    :goto_0
    iget p1, p0, Lcom/miui/calendar/view/VerticalTextView;->c:I

    .line 23
    .line 24
    return p1
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
    .line 65
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/miui/calendar/view/VerticalTextView;->b(Landroid/graphics/Canvas;)V

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
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/miui/calendar/view/VerticalTextView;->c(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget p2, p0, Lcom/miui/calendar/view/VerticalTextView;->b:I

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    iget p2, p0, Lcom/miui/calendar/view/VerticalTextView;->c:I

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/miui/calendar/view/VerticalTextView;->a()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget p2, p0, Lcom/miui/calendar/view/VerticalTextView;->b:I

    .line 17
    .line 18
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 19
    .line 20
    .line 21
    return-void
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

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, " "

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/miui/calendar/view/VerticalTextView;->h:[Ljava/lang/String;

    .line 8
    .line 9
    iget p1, p0, Lcom/miui/calendar/view/VerticalTextView;->c:I

    .line 10
    .line 11
    if-lez p1, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/miui/calendar/view/VerticalTextView;->a()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
    .line 20
    .line 21
    .line 22
.end method

.method public setTextColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/view/VerticalTextView;->a:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

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

.method public setTextSize(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/calendar/view/VerticalTextView;->f:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

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

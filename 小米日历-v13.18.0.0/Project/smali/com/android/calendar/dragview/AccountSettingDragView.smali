.class public Lcom/android/calendar/dragview/AccountSettingDragView;
.super Landroid/view/View;
.source "AccountSettingDragView.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Path;

.field private c:F

.field private d:F

.field private e:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/calendar/dragview/AccountSettingDragView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-direct {p0}, Lcom/android/calendar/dragview/AccountSettingDragView;->a()V

    return-void
.end method

.method private a()V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/calendar/dragview/AccountSettingDragView;->a:Landroid/graphics/Paint;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const v1, 0x7f070148

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const v2, 0x7f070149

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    int-to-float v1, v1

    .line 32
    iput v1, p0, Lcom/android/calendar/dragview/AccountSettingDragView;->d:F

    .line 33
    .line 34
    int-to-float v0, v0

    .line 35
    iput v0, p0, Lcom/android/calendar/dragview/AccountSettingDragView;->c:F

    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/calendar/dragview/AccountSettingDragView;->a:Landroid/graphics/Paint;

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/calendar/dragview/AccountSettingDragView;->a:Landroid/graphics/Paint;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const v2, 0x7f060108

    .line 49
    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/calendar/dragview/AccountSettingDragView;->a:Landroid/graphics/Paint;

    .line 60
    .line 61
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/calendar/dragview/AccountSettingDragView;->a:Landroid/graphics/Paint;

    .line 67
    .line 68
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/android/calendar/dragview/AccountSettingDragView;->a:Landroid/graphics/Paint;

    .line 74
    .line 75
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    .line 79
    .line 80
    new-instance v0, Landroid/graphics/Path;

    .line 81
    .line 82
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object v0, p0, Lcom/android/calendar/dragview/AccountSettingDragView;->b:Landroid/graphics/Path;

    .line 86
    .line 87
    return-void
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
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/calendar/dragview/AccountSettingDragView;->b:Landroid/graphics/Path;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Lcom/android/calendar/dragview/AccountSettingDragView;->c:F

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    add-float/2addr v0, v1

    .line 13
    iget v1, p0, Lcom/android/calendar/dragview/AccountSettingDragView;->d:F

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    div-int/lit8 v2, v2, 0x2

    .line 20
    .line 21
    int-to-float v2, v2

    .line 22
    iget v3, p0, Lcom/android/calendar/dragview/AccountSettingDragView;->e:F

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    int-to-float v4, v4

    .line 29
    mul-float/2addr v3, v4

    .line 30
    const/high16 v4, 0x40800000    # 4.0f

    .line 31
    .line 32
    div-float/2addr v3, v4

    .line 33
    add-float/2addr v3, v1

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    int-to-float v4, v4

    .line 39
    iget v5, p0, Lcom/android/calendar/dragview/AccountSettingDragView;->c:F

    .line 40
    .line 41
    sub-float/2addr v4, v5

    .line 42
    iget v5, p0, Lcom/android/calendar/dragview/AccountSettingDragView;->d:F

    .line 43
    .line 44
    iget-object v6, p0, Lcom/android/calendar/dragview/AccountSettingDragView;->b:Landroid/graphics/Path;

    .line 45
    .line 46
    invoke-virtual {v6, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/calendar/dragview/AccountSettingDragView;->b:Landroid/graphics/Path;

    .line 50
    .line 51
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/calendar/dragview/AccountSettingDragView;->b:Landroid/graphics/Path;

    .line 55
    .line 56
    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/calendar/dragview/AccountSettingDragView;->b:Landroid/graphics/Path;

    .line 60
    .line 61
    iget-object v1, p0, Lcom/android/calendar/dragview/AccountSettingDragView;->a:Landroid/graphics/Paint;

    .line 62
    .line 63
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 64
    .line 65
    .line 66
    return-void
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
.end method

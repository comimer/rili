.class public Lx9/a;
.super Ljava/lang/Object;
.source "FreeFormModeHelper.java"


# direct methods
.method private static a(Landroid/content/Context;)Lx9/b$a;
    .locals 5

    .line 1
    invoke-static {p0}, Lmiuix/core/util/d;->i(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance p0, Lx9/b$a;

    .line 8
    .line 9
    invoke-direct {p0}, Lx9/b$a;-><init>()V

    .line 10
    .line 11
    .line 12
    const/16 v0, 0x2000

    .line 13
    .line 14
    iput v0, p0, Lx9/b$a;->a:I

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    const-string v1, "window"

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Landroid/view/WindowManager;

    .line 25
    .line 26
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 27
    .line 28
    const/16 v2, 0x1e

    .line 29
    .line 30
    const/high16 v3, 0x3f800000    # 1.0f

    .line 31
    .line 32
    if-lt v1, v2, :cond_2

    .line 33
    .line 34
    invoke-static {p0}, Lmiuix/core/util/g;->a(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const/4 v1, 0x0

    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    int-to-float v0, p0

    .line 68
    mul-float/2addr v0, v3

    .line 69
    int-to-float v2, v1

    .line 70
    div-float/2addr v0, v2

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    move p0, v1

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    new-instance v1, Landroid/graphics/Point;

    .line 75
    .line 76
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 84
    .line 85
    .line 86
    iget p0, v1, Landroid/graphics/Point;->x:I

    .line 87
    .line 88
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 89
    .line 90
    if-eqz p0, :cond_3

    .line 91
    .line 92
    int-to-float v0, v1

    .line 93
    mul-float/2addr v0, v3

    .line 94
    int-to-float v2, p0

    .line 95
    div-float/2addr v0, v2

    .line 96
    :cond_3
    move v4, v1

    .line 97
    move v1, p0

    .line 98
    move p0, v4

    .line 99
    :goto_0
    invoke-static {v0, v1, p0}, Lx9/a;->d(FII)Lx9/b$a;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    return-object p0
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

.method public static b(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lx9/a;->c(Landroid/content/Context;)Lx9/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget p0, p0, Lx9/b$a;->a:I

    .line 6
    .line 7
    return p0
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

.method public static c(Landroid/content/Context;)Lx9/b$a;
    .locals 0

    .line 1
    invoke-static {p0}, Lx9/a;->a(Landroid/content/Context;)Lx9/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
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
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method private static d(FII)Lx9/b$a;
    .locals 2

    .line 1
    new-instance v0, Lx9/b$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lx9/b$a;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    cmpg-float v1, p0, v1

    .line 8
    .line 9
    if-gtz v1, :cond_0

    .line 10
    .line 11
    const/16 p0, 0x2000

    .line 12
    .line 13
    iput p0, v0, Lx9/b$a;->a:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const v1, 0x3f3d70a4    # 0.74f

    .line 17
    .line 18
    .line 19
    cmpl-float v1, p0, v1

    .line 20
    .line 21
    if-ltz v1, :cond_1

    .line 22
    .line 23
    const v1, 0x3f428f5c    # 0.76f

    .line 24
    .line 25
    .line 26
    cmpg-float v1, p0, v1

    .line 27
    .line 28
    if-gez v1, :cond_1

    .line 29
    .line 30
    const/16 p0, 0x2003

    .line 31
    .line 32
    iput p0, v0, Lx9/b$a;->a:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const v1, 0x3fa8f5c3    # 1.32f

    .line 36
    .line 37
    .line 38
    cmpl-float v1, p0, v1

    .line 39
    .line 40
    if-ltz v1, :cond_2

    .line 41
    .line 42
    const v1, 0x3fab851f    # 1.34f

    .line 43
    .line 44
    .line 45
    cmpg-float v1, p0, v1

    .line 46
    .line 47
    if-gez v1, :cond_2

    .line 48
    .line 49
    const/16 p0, 0x2002

    .line 50
    .line 51
    iput p0, v0, Lx9/b$a;->a:I

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const v1, 0x3fe147ae    # 1.76f

    .line 55
    .line 56
    .line 57
    cmpl-float v1, p0, v1

    .line 58
    .line 59
    if-ltz v1, :cond_3

    .line 60
    .line 61
    const v1, 0x3fe51eb8    # 1.79f

    .line 62
    .line 63
    .line 64
    cmpg-float p0, p0, v1

    .line 65
    .line 66
    if-gez p0, :cond_3

    .line 67
    .line 68
    const/16 p0, 0x2001

    .line 69
    .line 70
    iput p0, v0, Lx9/b$a;->a:I

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    const/16 p0, 0x2004

    .line 74
    .line 75
    iput p0, v0, Lx9/b$a;->a:I

    .line 76
    .line 77
    :goto_0
    iput p1, v0, Lx9/b$a;->b:I

    .line 78
    .line 79
    iput p2, v0, Lx9/b$a;->c:I

    .line 80
    .line 81
    return-object v0
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
.end method

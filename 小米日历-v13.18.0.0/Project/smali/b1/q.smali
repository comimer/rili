.class public Lb1/q;
.super Ljava/lang/Object;
.source "RoundedCornersContent.java"

# interfaces
.implements Lb1/s;
.implements Lc1/a$b;


# instance fields
.field private final a:Lcom/airbnb/lottie/LottieDrawable;

.field private final b:Ljava/lang/String;

.field private final c:Lc1/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc1/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lg1/i;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/a;Lg1/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb1/q;->a:Lcom/airbnb/lottie/LottieDrawable;

    .line 5
    .line 6
    invoke-virtual {p3}, Lg1/h;->c()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lb1/q;->b:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p3}, Lg1/h;->b()Lf1/m;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p1}, Lf1/m;->m()Lc1/a;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lb1/q;->c:Lc1/a;

    .line 21
    .line 22
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Lc1/a;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p0}, Lc1/a;->a(Lc1/a$b;)V

    .line 26
    .line 27
    .line 28
    return-void
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
.end method

.method private static e(II)I
    .locals 2

    .line 1
    div-int v0, p0, p1

    .line 2
    .line 3
    xor-int v1, p0, p1

    .line 4
    .line 5
    if-gez v1, :cond_0

    .line 6
    .line 7
    mul-int/2addr p1, v0

    .line 8
    if-eq p1, p0, :cond_0

    .line 9
    .line 10
    add-int/lit8 v0, v0, -0x1

    .line 11
    .line 12
    :cond_0
    return v0
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

.method private static f(II)I
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lb1/q;->e(II)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/2addr v0, p1

    .line 6
    sub-int/2addr p0, v0

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

.method private i(Lg1/i;)Lg1/i;
    .locals 10

    .line 1
    invoke-virtual {p1}, Lg1/i;->a()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lg1/i;->d()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x1

    .line 14
    sub-int/2addr v2, v3

    .line 15
    const/4 v4, 0x0

    .line 16
    move v5, v4

    .line 17
    :goto_0
    if-ltz v2, :cond_4

    .line 18
    .line 19
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    check-cast v6, Le1/a;

    .line 24
    .line 25
    add-int/lit8 v7, v2, -0x1

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    invoke-static {v7, v8}, Lb1/q;->f(II)I

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    check-cast v7, Le1/a;

    .line 40
    .line 41
    if-nez v2, :cond_0

    .line 42
    .line 43
    if-nez v1, :cond_0

    .line 44
    .line 45
    invoke-virtual {p1}, Lg1/i;->b()Landroid/graphics/PointF;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    invoke-virtual {v7}, Le1/a;->c()Landroid/graphics/PointF;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    :goto_1
    if-nez v2, :cond_1

    .line 55
    .line 56
    if-nez v1, :cond_1

    .line 57
    .line 58
    move-object v7, v8

    .line 59
    goto :goto_2

    .line 60
    :cond_1
    invoke-virtual {v7}, Le1/a;->b()Landroid/graphics/PointF;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    :goto_2
    invoke-virtual {v6}, Le1/a;->a()Landroid/graphics/PointF;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    invoke-virtual {p1}, Lg1/i;->d()Z

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    if-nez v9, :cond_2

    .line 73
    .line 74
    if-nez v2, :cond_2

    .line 75
    .line 76
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    sub-int/2addr v9, v3

    .line 81
    if-ne v2, v9, :cond_2

    .line 82
    .line 83
    move v9, v3

    .line 84
    goto :goto_3

    .line 85
    :cond_2
    move v9, v4

    .line 86
    :goto_3
    invoke-virtual {v7, v8}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    if-eqz v7, :cond_3

    .line 91
    .line 92
    invoke-virtual {v6, v8}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-eqz v6, :cond_3

    .line 97
    .line 98
    if-nez v9, :cond_3

    .line 99
    .line 100
    add-int/lit8 v5, v5, 0x2

    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 104
    .line 105
    :goto_4
    add-int/lit8 v2, v2, -0x1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_4
    iget-object p1, p0, Lb1/q;->d:Lg1/i;

    .line 109
    .line 110
    if-eqz p1, :cond_5

    .line 111
    .line 112
    invoke-virtual {p1}, Lg1/i;->a()Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-eq p1, v5, :cond_7

    .line 121
    .line 122
    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-direct {p1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 125
    .line 126
    .line 127
    move v0, v4

    .line 128
    :goto_5
    if-ge v0, v5, :cond_6

    .line 129
    .line 130
    new-instance v2, Le1/a;

    .line 131
    .line 132
    invoke-direct {v2}, Le1/a;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    add-int/lit8 v0, v0, 0x1

    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_6
    new-instance v0, Lg1/i;

    .line 142
    .line 143
    new-instance v2, Landroid/graphics/PointF;

    .line 144
    .line 145
    const/4 v3, 0x0

    .line 146
    invoke-direct {v2, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 147
    .line 148
    .line 149
    invoke-direct {v0, v2, v4, p1}, Lg1/i;-><init>(Landroid/graphics/PointF;ZLjava/util/List;)V

    .line 150
    .line 151
    .line 152
    iput-object v0, p0, Lb1/q;->d:Lg1/i;

    .line 153
    .line 154
    :cond_7
    iget-object p1, p0, Lb1/q;->d:Lg1/i;

    .line 155
    .line 156
    invoke-virtual {p1, v1}, Lg1/i;->e(Z)V

    .line 157
    .line 158
    .line 159
    iget-object p1, p0, Lb1/q;->d:Lg1/i;

    .line 160
    .line 161
    return-object p1
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb1/q;->a:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

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

.method public b(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb1/c;",
            ">;",
            "Ljava/util/List<",
            "Lb1/c;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public d(Lg1/i;)Lg1/i;
    .locals 18

    .line 1
    invoke-virtual/range {p1 .. p1}, Lg1/i;->a()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x2

    .line 10
    if-gt v1, v2, :cond_0

    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_0
    move-object/from16 v1, p0

    .line 14
    .line 15
    iget-object v2, v1, Lb1/q;->c:Lc1/a;

    .line 16
    .line 17
    invoke-virtual {v2}, Lc1/a;->h()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Ljava/lang/Float;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x0

    .line 28
    cmpl-float v3, v2, v3

    .line 29
    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_1
    invoke-direct/range {p0 .. p1}, Lb1/q;->i(Lg1/i;)Lg1/i;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual/range {p1 .. p1}, Lg1/i;->b()Landroid/graphics/PointF;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    iget v4, v4, Landroid/graphics/PointF;->x:F

    .line 42
    .line 43
    invoke-virtual/range {p1 .. p1}, Lg1/i;->b()Landroid/graphics/PointF;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 48
    .line 49
    invoke-virtual {v3, v4, v5}, Lg1/i;->f(FF)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Lg1/i;->a()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual/range {p1 .. p1}, Lg1/i;->d()Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    const/4 v7, 0x0

    .line 61
    const/4 v8, 0x0

    .line 62
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    if-ge v7, v9, :cond_7

    .line 67
    .line 68
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    check-cast v9, Le1/a;

    .line 73
    .line 74
    add-int/lit8 v10, v7, -0x1

    .line 75
    .line 76
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 77
    .line 78
    .line 79
    move-result v11

    .line 80
    invoke-static {v10, v11}, Lb1/q;->f(II)I

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v10

    .line 88
    check-cast v10, Le1/a;

    .line 89
    .line 90
    add-int/lit8 v11, v7, -0x2

    .line 91
    .line 92
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 93
    .line 94
    .line 95
    move-result v12

    .line 96
    invoke-static {v11, v12}, Lb1/q;->f(II)I

    .line 97
    .line 98
    .line 99
    move-result v11

    .line 100
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v11

    .line 104
    check-cast v11, Le1/a;

    .line 105
    .line 106
    if-nez v7, :cond_2

    .line 107
    .line 108
    if-nez v5, :cond_2

    .line 109
    .line 110
    invoke-virtual/range {p1 .. p1}, Lg1/i;->b()Landroid/graphics/PointF;

    .line 111
    .line 112
    .line 113
    move-result-object v12

    .line 114
    goto :goto_1

    .line 115
    :cond_2
    invoke-virtual {v10}, Le1/a;->c()Landroid/graphics/PointF;

    .line 116
    .line 117
    .line 118
    move-result-object v12

    .line 119
    :goto_1
    if-nez v7, :cond_3

    .line 120
    .line 121
    if-nez v5, :cond_3

    .line 122
    .line 123
    move-object v13, v12

    .line 124
    goto :goto_2

    .line 125
    :cond_3
    invoke-virtual {v10}, Le1/a;->b()Landroid/graphics/PointF;

    .line 126
    .line 127
    .line 128
    move-result-object v13

    .line 129
    :goto_2
    invoke-virtual {v9}, Le1/a;->a()Landroid/graphics/PointF;

    .line 130
    .line 131
    .line 132
    move-result-object v14

    .line 133
    invoke-virtual {v11}, Le1/a;->c()Landroid/graphics/PointF;

    .line 134
    .line 135
    .line 136
    move-result-object v11

    .line 137
    invoke-virtual {v9}, Le1/a;->c()Landroid/graphics/PointF;

    .line 138
    .line 139
    .line 140
    move-result-object v15

    .line 141
    invoke-virtual/range {p1 .. p1}, Lg1/i;->d()Z

    .line 142
    .line 143
    .line 144
    move-result v16

    .line 145
    const/16 v17, 0x1

    .line 146
    .line 147
    if-nez v16, :cond_4

    .line 148
    .line 149
    if-nez v7, :cond_4

    .line 150
    .line 151
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 152
    .line 153
    .line 154
    move-result v16

    .line 155
    add-int/lit8 v6, v16, -0x1

    .line 156
    .line 157
    if-ne v7, v6, :cond_4

    .line 158
    .line 159
    move/from16 v6, v17

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_4
    const/4 v6, 0x0

    .line 163
    :goto_3
    invoke-virtual {v13, v12}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v13

    .line 167
    if-eqz v13, :cond_6

    .line 168
    .line 169
    invoke-virtual {v14, v12}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v13

    .line 173
    if-eqz v13, :cond_6

    .line 174
    .line 175
    if-nez v6, :cond_6

    .line 176
    .line 177
    iget v6, v12, Landroid/graphics/PointF;->x:F

    .line 178
    .line 179
    iget v9, v11, Landroid/graphics/PointF;->x:F

    .line 180
    .line 181
    sub-float v9, v6, v9

    .line 182
    .line 183
    iget v10, v12, Landroid/graphics/PointF;->y:F

    .line 184
    .line 185
    iget v13, v11, Landroid/graphics/PointF;->y:F

    .line 186
    .line 187
    sub-float v13, v10, v13

    .line 188
    .line 189
    iget v14, v15, Landroid/graphics/PointF;->x:F

    .line 190
    .line 191
    sub-float/2addr v14, v6

    .line 192
    iget v6, v15, Landroid/graphics/PointF;->y:F

    .line 193
    .line 194
    sub-float/2addr v6, v10

    .line 195
    float-to-double v9, v9

    .line 196
    move-object/from16 v16, v0

    .line 197
    .line 198
    float-to-double v0, v13

    .line 199
    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    .line 200
    .line 201
    .line 202
    move-result-wide v0

    .line 203
    double-to-float v0, v0

    .line 204
    float-to-double v9, v14

    .line 205
    float-to-double v13, v6

    .line 206
    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    .line 207
    .line 208
    .line 209
    move-result-wide v9

    .line 210
    double-to-float v1, v9

    .line 211
    div-float v0, v2, v0

    .line 212
    .line 213
    const/high16 v6, 0x3f000000    # 0.5f

    .line 214
    .line 215
    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    div-float v1, v2, v1

    .line 220
    .line 221
    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    iget v6, v12, Landroid/graphics/PointF;->x:F

    .line 226
    .line 227
    iget v9, v11, Landroid/graphics/PointF;->x:F

    .line 228
    .line 229
    sub-float/2addr v9, v6

    .line 230
    mul-float/2addr v9, v0

    .line 231
    add-float/2addr v9, v6

    .line 232
    iget v10, v12, Landroid/graphics/PointF;->y:F

    .line 233
    .line 234
    iget v11, v11, Landroid/graphics/PointF;->y:F

    .line 235
    .line 236
    sub-float/2addr v11, v10

    .line 237
    mul-float/2addr v11, v0

    .line 238
    add-float/2addr v11, v10

    .line 239
    iget v0, v15, Landroid/graphics/PointF;->x:F

    .line 240
    .line 241
    sub-float/2addr v0, v6

    .line 242
    mul-float/2addr v0, v1

    .line 243
    add-float/2addr v0, v6

    .line 244
    iget v12, v15, Landroid/graphics/PointF;->y:F

    .line 245
    .line 246
    sub-float/2addr v12, v10

    .line 247
    mul-float/2addr v12, v1

    .line 248
    add-float/2addr v12, v10

    .line 249
    sub-float v1, v9, v6

    .line 250
    .line 251
    const v13, 0x3f0d4952    # 0.5519f

    .line 252
    .line 253
    .line 254
    mul-float/2addr v1, v13

    .line 255
    sub-float v1, v9, v1

    .line 256
    .line 257
    sub-float v14, v11, v10

    .line 258
    .line 259
    mul-float/2addr v14, v13

    .line 260
    sub-float v14, v11, v14

    .line 261
    .line 262
    sub-float v6, v0, v6

    .line 263
    .line 264
    mul-float/2addr v6, v13

    .line 265
    sub-float v6, v0, v6

    .line 266
    .line 267
    sub-float v10, v12, v10

    .line 268
    .line 269
    mul-float/2addr v10, v13

    .line 270
    sub-float v10, v12, v10

    .line 271
    .line 272
    add-int/lit8 v13, v8, -0x1

    .line 273
    .line 274
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 275
    .line 276
    .line 277
    move-result v15

    .line 278
    invoke-static {v13, v15}, Lb1/q;->f(II)I

    .line 279
    .line 280
    .line 281
    move-result v13

    .line 282
    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v13

    .line 286
    check-cast v13, Le1/a;

    .line 287
    .line 288
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v15

    .line 292
    check-cast v15, Le1/a;

    .line 293
    .line 294
    invoke-virtual {v13, v9, v11}, Le1/a;->e(FF)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v13, v9, v11}, Le1/a;->f(FF)V

    .line 298
    .line 299
    .line 300
    if-nez v7, :cond_5

    .line 301
    .line 302
    invoke-virtual {v3, v9, v11}, Lg1/i;->f(FF)V

    .line 303
    .line 304
    .line 305
    :cond_5
    invoke-virtual {v15, v1, v14}, Le1/a;->d(FF)V

    .line 306
    .line 307
    .line 308
    add-int/lit8 v8, v8, 0x1

    .line 309
    .line 310
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    check-cast v1, Le1/a;

    .line 315
    .line 316
    invoke-virtual {v15, v6, v10}, Le1/a;->e(FF)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v15, v0, v12}, Le1/a;->f(FF)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1, v0, v12}, Le1/a;->d(FF)V

    .line 323
    .line 324
    .line 325
    add-int/lit8 v8, v8, 0x1

    .line 326
    .line 327
    goto :goto_4

    .line 328
    :cond_6
    move-object/from16 v16, v0

    .line 329
    .line 330
    add-int/lit8 v0, v8, -0x1

    .line 331
    .line 332
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    invoke-static {v0, v1}, Lb1/q;->f(II)I

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    check-cast v0, Le1/a;

    .line 345
    .line 346
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    check-cast v1, Le1/a;

    .line 351
    .line 352
    invoke-virtual {v10}, Le1/a;->c()Landroid/graphics/PointF;

    .line 353
    .line 354
    .line 355
    move-result-object v6

    .line 356
    iget v6, v6, Landroid/graphics/PointF;->x:F

    .line 357
    .line 358
    invoke-virtual {v10}, Le1/a;->c()Landroid/graphics/PointF;

    .line 359
    .line 360
    .line 361
    move-result-object v11

    .line 362
    iget v11, v11, Landroid/graphics/PointF;->y:F

    .line 363
    .line 364
    invoke-virtual {v0, v6, v11}, Le1/a;->e(FF)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v10}, Le1/a;->c()Landroid/graphics/PointF;

    .line 368
    .line 369
    .line 370
    move-result-object v6

    .line 371
    iget v6, v6, Landroid/graphics/PointF;->x:F

    .line 372
    .line 373
    invoke-virtual {v10}, Le1/a;->c()Landroid/graphics/PointF;

    .line 374
    .line 375
    .line 376
    move-result-object v10

    .line 377
    iget v10, v10, Landroid/graphics/PointF;->y:F

    .line 378
    .line 379
    invoke-virtual {v0, v6, v10}, Le1/a;->f(FF)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v9}, Le1/a;->c()Landroid/graphics/PointF;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 387
    .line 388
    invoke-virtual {v9}, Le1/a;->c()Landroid/graphics/PointF;

    .line 389
    .line 390
    .line 391
    move-result-object v6

    .line 392
    iget v6, v6, Landroid/graphics/PointF;->y:F

    .line 393
    .line 394
    invoke-virtual {v1, v0, v6}, Le1/a;->d(FF)V

    .line 395
    .line 396
    .line 397
    add-int/lit8 v8, v8, 0x1

    .line 398
    .line 399
    :goto_4
    add-int/lit8 v7, v7, 0x1

    .line 400
    .line 401
    move-object/from16 v1, p0

    .line 402
    .line 403
    move-object/from16 v0, v16

    .line 404
    .line 405
    goto/16 :goto_0

    .line 406
    .line 407
    :cond_7
    return-object v3
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

.method public h()Lc1/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc1/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb1/q;->c:Lc1/a;

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
.end method

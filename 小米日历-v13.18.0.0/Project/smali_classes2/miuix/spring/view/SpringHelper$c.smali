.class abstract Lmiuix/spring/view/SpringHelper$c;
.super Ljava/lang/Object;
.source "SpringHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/spring/view/SpringHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "c"
.end annotation


# instance fields
.field a:F

.field b:F

.field c:I

.field final synthetic d:Lmiuix/spring/view/SpringHelper;


# direct methods
.method constructor <init>(Lmiuix/spring/view/SpringHelper;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/spring/view/SpringHelper$c;->d:Lmiuix/spring/view/SpringHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lmiuix/spring/view/SpringHelper$c;->c:I

    .line 7
    .line 8
    return-void
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
.end method

.method private e(F)F
    .locals 7

    .line 1
    invoke-virtual {p0}, Lmiuix/spring/view/SpringHelper$c;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/high16 v0, 0x3f000000    # 0.5f

    .line 12
    .line 13
    :goto_0
    mul-float/2addr p1, v0

    .line 14
    return p1

    .line 15
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    int-to-float v0, v0

    .line 20
    div-float/2addr p1, v0

    .line 21
    const/high16 v1, 0x3f800000    # 1.0f

    .line 22
    .line 23
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    float-to-double v1, p1

    .line 28
    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    .line 29
    .line 30
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 31
    .line 32
    .line 33
    move-result-wide v5

    .line 34
    div-double/2addr v5, v3

    .line 35
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 36
    .line 37
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 38
    .line 39
    .line 40
    move-result-wide v3

    .line 41
    sub-double/2addr v5, v3

    .line 42
    add-double/2addr v5, v1

    .line 43
    double-to-float p1, v5

    .line 44
    goto :goto_0
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
.end method

.method private g(I[IZ)V
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p0}, Lmiuix/spring/view/SpringHelper$c;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget v0, p0, Lmiuix/spring/view/SpringHelper$c;->b:F

    .line 10
    .line 11
    int-to-float v1, p1

    .line 12
    add-float/2addr v0, v1

    .line 13
    iput v0, p0, Lmiuix/spring/view/SpringHelper$c;->b:F

    .line 14
    .line 15
    if-eqz p3, :cond_0

    .line 16
    .line 17
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    iget v0, p0, Lmiuix/spring/view/SpringHelper$c;->b:F

    .line 22
    .line 23
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-direct {p0, v0}, Lmiuix/spring/view/SpringHelper$c;->e(F)F

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    mul-float/2addr p3, v0

    .line 32
    iput p3, p0, Lmiuix/spring/view/SpringHelper$c;->a:F

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget p3, p0, Lmiuix/spring/view/SpringHelper$c;->a:F

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    cmpl-float p3, p3, v0

    .line 39
    .line 40
    if-nez p3, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0}, Lmiuix/spring/view/SpringHelper$c;->f()V

    .line 43
    .line 44
    .line 45
    :cond_1
    iget p3, p0, Lmiuix/spring/view/SpringHelper$c;->a:F

    .line 46
    .line 47
    add-float/2addr p3, v1

    .line 48
    iput p3, p0, Lmiuix/spring/view/SpringHelper$c;->a:F

    .line 49
    .line 50
    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    .line 51
    .line 52
    .line 53
    move-result p3

    .line 54
    iget v0, p0, Lmiuix/spring/view/SpringHelper$c;->a:F

    .line 55
    .line 56
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-direct {p0, v0}, Lmiuix/spring/view/SpringHelper$c;->i(F)F

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    mul-float/2addr p3, v0

    .line 65
    iput p3, p0, Lmiuix/spring/view/SpringHelper$c;->b:F

    .line 66
    .line 67
    :goto_0
    iget p3, p0, Lmiuix/spring/view/SpringHelper$c;->c:I

    .line 68
    .line 69
    aget v0, p2, p3

    .line 70
    .line 71
    add-int/2addr v0, p1

    .line 72
    aput v0, p2, p3

    .line 73
    .line 74
    :cond_2
    return-void
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
.end method

.method private h(I[IZ)I
    .locals 6

    .line 1
    iget v0, p0, Lmiuix/spring/view/SpringHelper$c;->a:F

    .line 2
    .line 3
    iget v1, p0, Lmiuix/spring/view/SpringHelper$c;->b:F

    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget v3, p0, Lmiuix/spring/view/SpringHelper$c;->b:F

    .line 10
    .line 11
    int-to-float v4, p1

    .line 12
    add-float/2addr v3, v4

    .line 13
    iput v3, p0, Lmiuix/spring/view/SpringHelper$c;->b:F

    .line 14
    .line 15
    if-eqz p3, :cond_0

    .line 16
    .line 17
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    iget v4, p0, Lmiuix/spring/view/SpringHelper$c;->b:F

    .line 22
    .line 23
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-direct {p0, v4}, Lmiuix/spring/view/SpringHelper$c;->e(F)F

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    mul-float/2addr v3, v4

    .line 32
    iput v3, p0, Lmiuix/spring/view/SpringHelper$c;->a:F

    .line 33
    .line 34
    iget v3, p0, Lmiuix/spring/view/SpringHelper$c;->c:I

    .line 35
    .line 36
    aget v4, p2, v3

    .line 37
    .line 38
    sub-int v5, p1, p1

    .line 39
    .line 40
    add-int/2addr v4, v5

    .line 41
    aput v4, p2, v3

    .line 42
    .line 43
    :cond_0
    iget v3, p0, Lmiuix/spring/view/SpringHelper$c;->a:F

    .line 44
    .line 45
    iget v4, p0, Lmiuix/spring/view/SpringHelper$c;->b:F

    .line 46
    .line 47
    sub-float/2addr v4, v1

    .line 48
    add-float/2addr v3, v4

    .line 49
    float-to-int v1, v3

    .line 50
    int-to-float v3, v1

    .line 51
    mul-float/2addr v2, v3

    .line 52
    const/4 v4, 0x0

    .line 53
    cmpl-float v2, v2, v4

    .line 54
    .line 55
    if-ltz v2, :cond_2

    .line 56
    .line 57
    if-nez p3, :cond_1

    .line 58
    .line 59
    iput v3, p0, Lmiuix/spring/view/SpringHelper$c;->a:F

    .line 60
    .line 61
    :cond_1
    iget v0, p0, Lmiuix/spring/view/SpringHelper$c;->c:I

    .line 62
    .line 63
    aput p1, p2, v0

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    iput v4, p0, Lmiuix/spring/view/SpringHelper$c;->a:F

    .line 67
    .line 68
    iget p1, p0, Lmiuix/spring/view/SpringHelper$c;->c:I

    .line 69
    .line 70
    aget v2, p2, p1

    .line 71
    .line 72
    int-to-float v2, v2

    .line 73
    add-float/2addr v2, v0

    .line 74
    float-to-int v0, v2

    .line 75
    aput v0, p2, p1

    .line 76
    .line 77
    :goto_0
    iget p1, p0, Lmiuix/spring/view/SpringHelper$c;->a:F

    .line 78
    .line 79
    cmpl-float p2, p1, v4

    .line 80
    .line 81
    if-nez p2, :cond_3

    .line 82
    .line 83
    iput v4, p0, Lmiuix/spring/view/SpringHelper$c;->b:F

    .line 84
    .line 85
    :cond_3
    if-nez p3, :cond_4

    .line 86
    .line 87
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    iget p2, p0, Lmiuix/spring/view/SpringHelper$c;->a:F

    .line 92
    .line 93
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    invoke-direct {p0, p2}, Lmiuix/spring/view/SpringHelper$c;->i(F)F

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    mul-float/2addr p1, p2

    .line 102
    iput p1, p0, Lmiuix/spring/view/SpringHelper$c;->b:F

    .line 103
    .line 104
    :cond_4
    return v1
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

.method private i(F)F
    .locals 8

    .line 1
    invoke-virtual {p0}, Lmiuix/spring/view/SpringHelper$c;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/high16 v0, 0x40000000    # 2.0f

    .line 12
    .line 13
    mul-float/2addr p1, v0

    .line 14
    return p1

    .line 15
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    int-to-float v2, v0

    .line 20
    div-float/2addr v1, v2

    .line 21
    const v3, 0x3eaaaaab

    .line 22
    .line 23
    .line 24
    cmpg-float v1, v1, v3

    .line 25
    .line 26
    const/high16 v3, 0x40400000    # 3.0f

    .line 27
    .line 28
    if-gtz v1, :cond_1

    .line 29
    .line 30
    int-to-double v0, v0

    .line 31
    const-wide v4, 0x3fe5555560000000L    # 0.6666666865348816

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 37
    .line 38
    .line 39
    move-result-wide v4

    .line 40
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    mul-float/2addr p1, v3

    .line 45
    sub-float/2addr v2, p1

    .line 46
    float-to-double v2, v2

    .line 47
    const-wide v6, 0x3fd5555560000000L    # 0.3333333432674408

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 53
    .line 54
    .line 55
    move-result-wide v2

    .line 56
    mul-double/2addr v4, v2

    .line 57
    sub-double/2addr v0, v4

    .line 58
    double-to-float p1, v0

    .line 59
    return p1

    .line 60
    :cond_1
    mul-float/2addr p1, v3

    .line 61
    return p1
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
.end method


# virtual methods
.method protected abstract a()Z
.end method

.method protected abstract b()I
.end method

.method c([I[IZ)Z
    .locals 4

    .line 1
    iget v0, p0, Lmiuix/spring/view/SpringHelper$c;->c:I

    .line 2
    .line 3
    aget v0, p1, v0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0}, Lmiuix/spring/view/SpringHelper$c;->a()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    iget v2, p0, Lmiuix/spring/view/SpringHelper$c;->a:F

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    cmpl-float v3, v2, v3

    .line 18
    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    float-to-int v2, v2

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->signum(I)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    mul-int/2addr v2, v0

    .line 28
    if-lez v2, :cond_1

    .line 29
    .line 30
    return v1

    .line 31
    :cond_1
    iget v1, p0, Lmiuix/spring/view/SpringHelper$c;->c:I

    .line 32
    .line 33
    invoke-direct {p0, v0, p2, p3}, Lmiuix/spring/view/SpringHelper$c;->h(I[IZ)I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    aput p2, p1, v1

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    return p1

    .line 41
    :cond_2
    :goto_0
    return v1
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
.end method

.method d(I[II[I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lmiuix/spring/view/SpringHelper$c;->d:Lmiuix/spring/view/SpringHelper;

    .line 2
    .line 3
    invoke-virtual {p2}, Lmiuix/spring/view/SpringHelper;->k()Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    if-nez p3, :cond_0

    .line 10
    .line 11
    const/4 p2, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p2, 0x0

    .line 14
    :goto_0
    invoke-direct {p0, p1, p4, p2}, Lmiuix/spring/view/SpringHelper$c;->g(I[IZ)V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
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
.end method

.method abstract f()V
.end method

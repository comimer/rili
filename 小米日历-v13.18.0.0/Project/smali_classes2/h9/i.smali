.class public final Lh9/i;
.super Ljava/lang/Object;
.source "SpringForce.java"


# instance fields
.field a:D

.field b:D

.field private c:Z

.field private d:D

.field private e:D

.field private f:D

.field private g:D

.field private h:D

.field private i:D

.field private final j:Lh9/c$a;


# direct methods
.method public constructor <init>(F)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x4097700000000000L    # 1500.0

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Lh9/i;->a:D

    .line 14
    .line 15
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 16
    .line 17
    iput-wide v0, p0, Lh9/i;->b:D

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lh9/i;->c:Z

    .line 21
    .line 22
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    iput-wide v0, p0, Lh9/i;->i:D

    .line 28
    .line 29
    new-instance v0, Lh9/c$a;

    .line 30
    .line 31
    invoke-direct {v0}, Lh9/c$a;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lh9/i;->j:Lh9/c$a;

    .line 35
    .line 36
    float-to-double v0, p1

    .line 37
    iput-wide v0, p0, Lh9/i;->i:D

    .line 38
    .line 39
    return-void
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
.end method

.method private b()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lh9/i;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-wide v0, p0, Lh9/i;->i:D

    .line 7
    .line 8
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    cmpl-double v0, v0, v2

    .line 14
    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    iget-wide v0, p0, Lh9/i;->b:D

    .line 18
    .line 19
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 20
    .line 21
    cmpl-double v4, v0, v2

    .line 22
    .line 23
    if-lez v4, :cond_1

    .line 24
    .line 25
    neg-double v4, v0

    .line 26
    iget-wide v6, p0, Lh9/i;->a:D

    .line 27
    .line 28
    mul-double/2addr v4, v6

    .line 29
    mul-double/2addr v0, v0

    .line 30
    sub-double/2addr v0, v2

    .line 31
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    mul-double/2addr v6, v0

    .line 36
    add-double/2addr v4, v6

    .line 37
    iput-wide v4, p0, Lh9/i;->f:D

    .line 38
    .line 39
    iget-wide v0, p0, Lh9/i;->b:D

    .line 40
    .line 41
    neg-double v4, v0

    .line 42
    iget-wide v6, p0, Lh9/i;->a:D

    .line 43
    .line 44
    mul-double/2addr v4, v6

    .line 45
    mul-double/2addr v0, v0

    .line 46
    sub-double/2addr v0, v2

    .line 47
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    mul-double/2addr v6, v0

    .line 52
    sub-double/2addr v4, v6

    .line 53
    iput-wide v4, p0, Lh9/i;->g:D

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const-wide/16 v4, 0x0

    .line 57
    .line 58
    cmpl-double v4, v0, v4

    .line 59
    .line 60
    if-ltz v4, :cond_2

    .line 61
    .line 62
    cmpg-double v4, v0, v2

    .line 63
    .line 64
    if-gez v4, :cond_2

    .line 65
    .line 66
    iget-wide v4, p0, Lh9/i;->a:D

    .line 67
    .line 68
    mul-double/2addr v0, v0

    .line 69
    sub-double/2addr v2, v0

    .line 70
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 71
    .line 72
    .line 73
    move-result-wide v0

    .line 74
    mul-double/2addr v4, v0

    .line 75
    iput-wide v4, p0, Lh9/i;->h:D

    .line 76
    .line 77
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lh9/i;->c:Z

    .line 79
    .line 80
    return-void

    .line 81
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 82
    .line 83
    const-string v1, "Error: Final position of the spring must be set before the miuix.animation starts"

    .line 84
    .line 85
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw v0
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


# virtual methods
.method public a()F
    .locals 2

    .line 1
    iget-wide v0, p0, Lh9/i;->i:D

    .line 2
    .line 3
    double-to-float v0, v0

    .line 4
    return v0
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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public c(FF)Z
    .locals 4

    .line 1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    float-to-double v0, p2

    .line 6
    iget-wide v2, p0, Lh9/i;->e:D

    .line 7
    .line 8
    cmpg-double p2, v0, v2

    .line 9
    .line 10
    if-gez p2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lh9/i;->a()F

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    sub-float/2addr p1, p2

    .line 17
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    float-to-double p1, p1

    .line 22
    iget-wide v0, p0, Lh9/i;->d:D

    .line 23
    .line 24
    cmpg-double p1, p1, v0

    .line 25
    .line 26
    if-gez p1, :cond_0

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    return p1
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

.method public d(F)Lh9/i;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    .line 4
    if-ltz v0, :cond_0

    .line 5
    .line 6
    float-to-double v0, p1

    .line 7
    iput-wide v0, p0, Lh9/i;->b:D

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lh9/i;->c:Z

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string v0, "Damping ratio must be non-negative"

    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1
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

.method public e(F)Lh9/i;
    .locals 2

    .line 1
    float-to-double v0, p1

    .line 2
    iput-wide v0, p0, Lh9/i;->i:D

    .line 3
    .line 4
    return-object p0
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

.method public f(F)Lh9/i;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    float-to-double v0, p1

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Lh9/i;->a:D

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lh9/i;->c:Z

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string v0, "Spring stiffness constant must be positive."

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
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

.method g(D)V
    .locals 2

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    iput-wide p1, p0, Lh9/i;->d:D

    .line 6
    .line 7
    const-wide v0, 0x404f400000000000L    # 62.5

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    mul-double/2addr p1, v0

    .line 13
    iput-wide p1, p0, Lh9/i;->e:D

    .line 14
    .line 15
    return-void
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

.method h(DDJ)Lh9/c$a;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Lh9/i;->b()V

    .line 4
    .line 5
    .line 6
    move-wide/from16 v1, p5

    .line 7
    .line 8
    long-to-double v1, v1

    .line 9
    const-wide v3, 0x408f400000000000L    # 1000.0

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    div-double/2addr v1, v3

    .line 15
    iget-wide v3, v0, Lh9/i;->i:D

    .line 16
    .line 17
    sub-double v3, p1, v3

    .line 18
    .line 19
    iget-wide v5, v0, Lh9/i;->b:D

    .line 20
    .line 21
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 22
    .line 23
    cmpl-double v9, v5, v7

    .line 24
    .line 25
    const-wide v10, 0x4005bf0a8b145769L    # Math.E

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    if-lez v9, :cond_0

    .line 31
    .line 32
    iget-wide v5, v0, Lh9/i;->g:D

    .line 33
    .line 34
    mul-double v7, v5, v3

    .line 35
    .line 36
    sub-double v7, v7, p3

    .line 37
    .line 38
    iget-wide v12, v0, Lh9/i;->f:D

    .line 39
    .line 40
    sub-double v14, v5, v12

    .line 41
    .line 42
    div-double/2addr v7, v14

    .line 43
    sub-double v7, v3, v7

    .line 44
    .line 45
    mul-double/2addr v3, v5

    .line 46
    sub-double v3, v3, p3

    .line 47
    .line 48
    sub-double v12, v5, v12

    .line 49
    .line 50
    div-double/2addr v3, v12

    .line 51
    mul-double/2addr v5, v1

    .line 52
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 53
    .line 54
    .line 55
    move-result-wide v5

    .line 56
    mul-double/2addr v5, v7

    .line 57
    iget-wide v12, v0, Lh9/i;->f:D

    .line 58
    .line 59
    mul-double/2addr v12, v1

    .line 60
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 61
    .line 62
    .line 63
    move-result-wide v12

    .line 64
    mul-double/2addr v12, v3

    .line 65
    add-double/2addr v5, v12

    .line 66
    iget-wide v12, v0, Lh9/i;->g:D

    .line 67
    .line 68
    mul-double/2addr v7, v12

    .line 69
    mul-double/2addr v12, v1

    .line 70
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 71
    .line 72
    .line 73
    move-result-wide v12

    .line 74
    mul-double/2addr v7, v12

    .line 75
    iget-wide v12, v0, Lh9/i;->f:D

    .line 76
    .line 77
    mul-double/2addr v3, v12

    .line 78
    mul-double/2addr v12, v1

    .line 79
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 80
    .line 81
    .line 82
    move-result-wide v1

    .line 83
    mul-double/2addr v3, v1

    .line 84
    add-double/2addr v7, v3

    .line 85
    goto/16 :goto_0

    .line 86
    .line 87
    :cond_0
    cmpl-double v9, v5, v7

    .line 88
    .line 89
    if-nez v9, :cond_1

    .line 90
    .line 91
    iget-wide v5, v0, Lh9/i;->a:D

    .line 92
    .line 93
    mul-double v7, v5, v3

    .line 94
    .line 95
    add-double v7, p3, v7

    .line 96
    .line 97
    mul-double v12, v7, v1

    .line 98
    .line 99
    add-double/2addr v3, v12

    .line 100
    neg-double v5, v5

    .line 101
    mul-double/2addr v5, v1

    .line 102
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 103
    .line 104
    .line 105
    move-result-wide v5

    .line 106
    mul-double/2addr v5, v3

    .line 107
    iget-wide v12, v0, Lh9/i;->a:D

    .line 108
    .line 109
    neg-double v12, v12

    .line 110
    mul-double/2addr v12, v1

    .line 111
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 112
    .line 113
    .line 114
    move-result-wide v12

    .line 115
    mul-double/2addr v3, v12

    .line 116
    iget-wide v12, v0, Lh9/i;->a:D

    .line 117
    .line 118
    neg-double v14, v12

    .line 119
    mul-double/2addr v3, v14

    .line 120
    neg-double v12, v12

    .line 121
    mul-double/2addr v12, v1

    .line 122
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 123
    .line 124
    .line 125
    move-result-wide v1

    .line 126
    mul-double/2addr v7, v1

    .line 127
    add-double/2addr v7, v3

    .line 128
    goto :goto_0

    .line 129
    :cond_1
    iget-wide v12, v0, Lh9/i;->h:D

    .line 130
    .line 131
    div-double/2addr v7, v12

    .line 132
    iget-wide v12, v0, Lh9/i;->a:D

    .line 133
    .line 134
    mul-double v14, v5, v12

    .line 135
    .line 136
    mul-double/2addr v14, v3

    .line 137
    add-double v14, v14, p3

    .line 138
    .line 139
    mul-double/2addr v7, v14

    .line 140
    neg-double v5, v5

    .line 141
    mul-double/2addr v5, v12

    .line 142
    mul-double/2addr v5, v1

    .line 143
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 144
    .line 145
    .line 146
    move-result-wide v5

    .line 147
    iget-wide v12, v0, Lh9/i;->h:D

    .line 148
    .line 149
    mul-double/2addr v12, v1

    .line 150
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    .line 151
    .line 152
    .line 153
    move-result-wide v12

    .line 154
    mul-double/2addr v12, v3

    .line 155
    iget-wide v14, v0, Lh9/i;->h:D

    .line 156
    .line 157
    mul-double/2addr v14, v1

    .line 158
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    .line 159
    .line 160
    .line 161
    move-result-wide v14

    .line 162
    mul-double/2addr v14, v7

    .line 163
    add-double/2addr v12, v14

    .line 164
    mul-double/2addr v5, v12

    .line 165
    iget-wide v12, v0, Lh9/i;->a:D

    .line 166
    .line 167
    neg-double v14, v12

    .line 168
    mul-double/2addr v14, v5

    .line 169
    iget-wide v10, v0, Lh9/i;->b:D

    .line 170
    .line 171
    mul-double/2addr v14, v10

    .line 172
    neg-double v9, v10

    .line 173
    mul-double/2addr v9, v12

    .line 174
    mul-double/2addr v9, v1

    .line 175
    const-wide v11, 0x4005bf0a8b145769L    # Math.E

    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 181
    .line 182
    .line 183
    move-result-wide v9

    .line 184
    iget-wide v11, v0, Lh9/i;->h:D

    .line 185
    .line 186
    move-wide/from16 p1, v5

    .line 187
    .line 188
    neg-double v5, v11

    .line 189
    mul-double/2addr v5, v3

    .line 190
    mul-double/2addr v11, v1

    .line 191
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    .line 192
    .line 193
    .line 194
    move-result-wide v3

    .line 195
    mul-double/2addr v5, v3

    .line 196
    iget-wide v3, v0, Lh9/i;->h:D

    .line 197
    .line 198
    mul-double/2addr v7, v3

    .line 199
    mul-double/2addr v3, v1

    .line 200
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    .line 201
    .line 202
    .line 203
    move-result-wide v1

    .line 204
    mul-double/2addr v7, v1

    .line 205
    add-double/2addr v5, v7

    .line 206
    mul-double/2addr v9, v5

    .line 207
    add-double v7, v14, v9

    .line 208
    .line 209
    move-wide/from16 v5, p1

    .line 210
    .line 211
    :goto_0
    iget-object v1, v0, Lh9/i;->j:Lh9/c$a;

    .line 212
    .line 213
    iget-wide v2, v0, Lh9/i;->i:D

    .line 214
    .line 215
    add-double/2addr v5, v2

    .line 216
    double-to-float v2, v5

    .line 217
    iput v2, v1, Lh9/c$a;->a:F

    .line 218
    .line 219
    double-to-float v2, v7

    .line 220
    iput v2, v1, Lh9/c$a;->b:F

    .line 221
    .line 222
    return-object v1
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
.end method

.class public Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;
.super Ljava/lang/Object;
.source "PhysicBasedInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private c:F

.field private c1:F

.field private c2:F

.field private k:F

.field private m:F

.field private mDamping:F

.field private mDampingExp:Lcom/miui/maml/data/Expression;

.field private mInitial:F

.field private mNeedEvaluate:Z

.field private mResponse:F

.field private mResponseExp:Lcom/miui/maml/data/Expression;

.field private r:F

.field private w:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f666666    # 0.9f

    .line 2
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mDamping:F

    const v0, 0x3e99999a    # 0.3f

    .line 3
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mResponse:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 4
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mInitial:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    iput v1, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->m:F

    .line 6
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->c1:F

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mNeedEvaluate:Z

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 20
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mInitial:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 21
    iput v1, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->m:F

    .line 22
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->c1:F

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mNeedEvaluate:Z

    .line 24
    iput p1, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mDamping:F

    .line 25
    iput p2, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mResponse:F

    return-void
.end method

.method public constructor <init>([Lcom/miui/maml/data/Expression;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f666666    # 0.9f

    .line 9
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mDamping:F

    const v0, 0x3e99999a    # 0.3f

    .line 10
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mResponse:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 11
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mInitial:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    iput v1, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->m:F

    .line 13
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->c1:F

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mNeedEvaluate:Z

    if-eqz p1, :cond_1

    .line 15
    array-length v1, p1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 16
    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mDampingExp:Lcom/miui/maml/data/Expression;

    .line 17
    :cond_0
    array-length v1, p1

    if-le v1, v0, :cond_1

    .line 18
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mResponseExp:Lcom/miui/maml/data/Expression;

    :cond_1
    return-void
.end method

.method private evaluate()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mNeedEvaluate:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    iget v2, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mResponse:F

    .line 11
    .line 12
    float-to-double v2, v2

    .line 13
    div-double/2addr v0, v2

    .line 14
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 15
    .line 16
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    iget v2, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->m:F

    .line 21
    .line 22
    float-to-double v3, v2

    .line 23
    mul-double/2addr v0, v3

    .line 24
    double-to-float v0, v0

    .line 25
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->k:F

    .line 26
    .line 27
    const-wide v3, 0x402921fb54442d18L    # 12.566370614359172

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    iget v1, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mDamping:F

    .line 33
    .line 34
    float-to-double v5, v1

    .line 35
    mul-double/2addr v5, v3

    .line 36
    float-to-double v3, v2

    .line 37
    mul-double/2addr v5, v3

    .line 38
    iget v1, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mResponse:F

    .line 39
    .line 40
    float-to-double v3, v1

    .line 41
    div-double/2addr v5, v3

    .line 42
    double-to-float v1, v5

    .line 43
    iput v1, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->c:F

    .line 44
    .line 45
    const/high16 v3, 0x40800000    # 4.0f

    .line 46
    .line 47
    mul-float/2addr v2, v3

    .line 48
    mul-float/2addr v2, v0

    .line 49
    mul-float/2addr v1, v1

    .line 50
    sub-float/2addr v2, v1

    .line 51
    float-to-double v0, v2

    .line 52
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    double-to-float v0, v0

    .line 57
    iget v1, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->m:F

    .line 58
    .line 59
    const/high16 v2, 0x40000000    # 2.0f

    .line 60
    .line 61
    mul-float v3, v1, v2

    .line 62
    .line 63
    div-float/2addr v0, v3

    .line 64
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->w:F

    .line 65
    .line 66
    iget v3, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->c:F

    .line 67
    .line 68
    div-float/2addr v3, v2

    .line 69
    mul-float/2addr v3, v1

    .line 70
    neg-float v1, v3

    .line 71
    iput v1, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->r:F

    .line 72
    .line 73
    const/4 v2, 0x0

    .line 74
    iget v3, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mInitial:F

    .line 75
    .line 76
    mul-float/2addr v1, v3

    .line 77
    sub-float/2addr v2, v1

    .line 78
    div-float/2addr v2, v0

    .line 79
    iput v2, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->c2:F

    .line 80
    .line 81
    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mNeedEvaluate:Z

    .line 83
    .line 84
    :cond_0
    return-void
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
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mDampingExp:Lcom/miui/maml/data/Expression;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    double-to-float v0, v2

    .line 11
    iget v2, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mDamping:F

    .line 12
    .line 13
    cmpl-float v2, v2, v0

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mDamping:F

    .line 18
    .line 19
    iput-boolean v1, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mNeedEvaluate:Z

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mResponseExp:Lcom/miui/maml/data/Expression;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    double-to-float v0, v2

    .line 30
    iget v2, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mResponse:F

    .line 31
    .line 32
    cmpl-float v2, v2, v0

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mResponse:F

    .line 37
    .line 38
    iput-boolean v1, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mNeedEvaluate:Z

    .line 39
    .line 40
    :cond_1
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->evaluate()V

    .line 41
    .line 42
    .line 43
    const-wide v0, 0x4005bf0a8b145769L    # Math.E

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    iget v2, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->r:F

    .line 49
    .line 50
    mul-float/2addr v2, p1

    .line 51
    float-to-double v2, v2

    .line 52
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    iget v2, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->c1:F

    .line 57
    .line 58
    float-to-double v2, v2

    .line 59
    iget v4, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->w:F

    .line 60
    .line 61
    mul-float/2addr v4, p1

    .line 62
    float-to-double v4, v4

    .line 63
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    .line 64
    .line 65
    .line 66
    move-result-wide v4

    .line 67
    mul-double/2addr v2, v4

    .line 68
    iget v4, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->c2:F

    .line 69
    .line 70
    float-to-double v4, v4

    .line 71
    iget v6, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->w:F

    .line 72
    .line 73
    mul-float/2addr v6, p1

    .line 74
    float-to-double v6, v6

    .line 75
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    .line 76
    .line 77
    .line 78
    move-result-wide v6

    .line 79
    mul-double/2addr v4, v6

    .line 80
    add-double/2addr v2, v4

    .line 81
    mul-double/2addr v0, v2

    .line 82
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 83
    .line 84
    add-double/2addr v0, v2

    .line 85
    double-to-float p1, v0

    .line 86
    return p1
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

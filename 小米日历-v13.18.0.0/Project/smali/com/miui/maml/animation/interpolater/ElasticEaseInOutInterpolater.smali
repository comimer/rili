.class public Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;
.super Ljava/lang/Object;
.source "ElasticEaseInOutInterpolater.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private mAmplitude:F

.field private mAmplitudeExp:Lcom/miui/maml/data/Expression;

.field private mPriod:F

.field private mPriodExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mAmplitude:F

    const v0, 0x3ee66667    # 0.45000002f

    .line 3
    iput v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mPriod:F

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mPriod:F

    .line 13
    iput p2, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mAmplitude:F

    return-void
.end method

.method public constructor <init>([Lcom/miui/maml/data/Expression;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mAmplitude:F

    const v0, 0x3ee66667    # 0.45000002f

    .line 6
    iput v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mPriod:F

    if-eqz p1, :cond_1

    .line 7
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 8
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mAmplitudeExp:Lcom/miui/maml/data/Expression;

    .line 9
    :cond_0
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 10
    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mPriodExp:Lcom/miui/maml/data/Expression;

    :cond_1
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mAmplitudeExp:Lcom/miui/maml/data/Expression;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    double-to-float v0, v0

    .line 10
    iput v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mAmplitude:F

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mPriodExp:Lcom/miui/maml/data/Expression;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    double-to-float v0, v0

    .line 21
    iput v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mPriod:F

    .line 22
    .line 23
    :cond_1
    iget v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mAmplitude:F

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    cmpl-float v2, p1, v1

    .line 27
    .line 28
    if-nez v2, :cond_2

    .line 29
    .line 30
    return v1

    .line 31
    :cond_2
    const/high16 v1, 0x3f000000    # 0.5f

    .line 32
    .line 33
    div-float/2addr p1, v1

    .line 34
    const/high16 v1, 0x40000000    # 2.0f

    .line 35
    .line 36
    cmpl-float v1, p1, v1

    .line 37
    .line 38
    const/high16 v2, 0x3f800000    # 1.0f

    .line 39
    .line 40
    if-nez v1, :cond_3

    .line 41
    .line 42
    return v2

    .line 43
    :cond_3
    cmpg-float v1, v0, v2

    .line 44
    .line 45
    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    if-gez v1, :cond_4

    .line 51
    .line 52
    iget v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mPriod:F

    .line 53
    .line 54
    const/high16 v1, 0x40800000    # 4.0f

    .line 55
    .line 56
    div-float/2addr v0, v1

    .line 57
    move v1, v0

    .line 58
    move v0, v2

    .line 59
    goto :goto_0

    .line 60
    :cond_4
    iget v1, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mPriod:F

    .line 61
    .line 62
    float-to-double v5, v1

    .line 63
    div-double/2addr v5, v3

    .line 64
    div-float v1, v2, v0

    .line 65
    .line 66
    float-to-double v7, v1

    .line 67
    invoke-static {v7, v8}, Ljava/lang/Math;->asin(D)D

    .line 68
    .line 69
    .line 70
    move-result-wide v7

    .line 71
    mul-double/2addr v5, v7

    .line 72
    double-to-float v1, v5

    .line 73
    :goto_0
    cmpg-float v5, p1, v2

    .line 74
    .line 75
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 76
    .line 77
    if-gez v5, :cond_5

    .line 78
    .line 79
    const/high16 v5, -0x41000000    # -0.5f

    .line 80
    .line 81
    float-to-double v8, v0

    .line 82
    const/high16 v0, 0x41200000    # 10.0f

    .line 83
    .line 84
    sub-float/2addr p1, v2

    .line 85
    mul-float/2addr v0, p1

    .line 86
    float-to-double v10, v0

    .line 87
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 88
    .line 89
    .line 90
    move-result-wide v6

    .line 91
    mul-double/2addr v8, v6

    .line 92
    sub-float/2addr p1, v1

    .line 93
    float-to-double v0, p1

    .line 94
    mul-double/2addr v0, v3

    .line 95
    iget p1, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mPriod:F

    .line 96
    .line 97
    float-to-double v2, p1

    .line 98
    div-double/2addr v0, v2

    .line 99
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 100
    .line 101
    .line 102
    move-result-wide v0

    .line 103
    mul-double/2addr v8, v0

    .line 104
    double-to-float p1, v8

    .line 105
    mul-float/2addr p1, v5

    .line 106
    return p1

    .line 107
    :cond_5
    float-to-double v8, v0

    .line 108
    const/high16 v0, -0x3ee00000    # -10.0f

    .line 109
    .line 110
    sub-float/2addr p1, v2

    .line 111
    mul-float/2addr v0, p1

    .line 112
    float-to-double v10, v0

    .line 113
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 114
    .line 115
    .line 116
    move-result-wide v5

    .line 117
    mul-double/2addr v8, v5

    .line 118
    sub-float/2addr p1, v1

    .line 119
    float-to-double v0, p1

    .line 120
    mul-double/2addr v0, v3

    .line 121
    iget p1, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mPriod:F

    .line 122
    .line 123
    float-to-double v2, p1

    .line 124
    div-double/2addr v0, v2

    .line 125
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 126
    .line 127
    .line 128
    move-result-wide v0

    .line 129
    mul-double/2addr v8, v0

    .line 130
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 131
    .line 132
    mul-double/2addr v8, v0

    .line 133
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 134
    .line 135
    add-double/2addr v8, v0

    .line 136
    double-to-float p1, v8

    .line 137
    return p1
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

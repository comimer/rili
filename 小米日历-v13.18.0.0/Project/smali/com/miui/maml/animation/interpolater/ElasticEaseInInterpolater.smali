.class public Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;
.super Ljava/lang/Object;
.source "ElasticEaseInInterpolater.java"

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
    iput v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;->mAmplitude:F

    const v0, 0x3e99999a    # 0.3f

    .line 3
    iput v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;->mPriod:F

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;->mPriod:F

    .line 13
    iput p2, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;->mAmplitude:F

    return-void
.end method

.method public constructor <init>([Lcom/miui/maml/data/Expression;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;->mAmplitude:F

    const v0, 0x3e99999a    # 0.3f

    .line 6
    iput v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;->mPriod:F

    if-eqz p1, :cond_1

    .line 7
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 8
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;->mAmplitudeExp:Lcom/miui/maml/data/Expression;

    .line 9
    :cond_0
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 10
    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;->mPriodExp:Lcom/miui/maml/data/Expression;

    :cond_1
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;->mAmplitudeExp:Lcom/miui/maml/data/Expression;

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
    iput v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;->mAmplitude:F

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;->mPriodExp:Lcom/miui/maml/data/Expression;

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
    iput v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;->mPriod:F

    .line 22
    .line 23
    :cond_1
    iget v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;->mAmplitude:F

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
    const/high16 v1, 0x3f800000    # 1.0f

    .line 32
    .line 33
    cmpl-float v2, p1, v1

    .line 34
    .line 35
    if-nez v2, :cond_3

    .line 36
    .line 37
    return v1

    .line 38
    :cond_3
    cmpg-float v2, v0, v1

    .line 39
    .line 40
    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    if-gez v2, :cond_4

    .line 46
    .line 47
    iget v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;->mPriod:F

    .line 48
    .line 49
    const/high16 v2, 0x40800000    # 4.0f

    .line 50
    .line 51
    div-float/2addr v0, v2

    .line 52
    move v2, v0

    .line 53
    move v0, v1

    .line 54
    goto :goto_0

    .line 55
    :cond_4
    iget v2, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;->mPriod:F

    .line 56
    .line 57
    float-to-double v5, v2

    .line 58
    div-double/2addr v5, v3

    .line 59
    div-float v2, v1, v0

    .line 60
    .line 61
    float-to-double v7, v2

    .line 62
    invoke-static {v7, v8}, Ljava/lang/Math;->asin(D)D

    .line 63
    .line 64
    .line 65
    move-result-wide v7

    .line 66
    mul-double/2addr v5, v7

    .line 67
    double-to-float v2, v5

    .line 68
    :goto_0
    float-to-double v5, v0

    .line 69
    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    .line 70
    .line 71
    const/high16 v0, 0x41200000    # 10.0f

    .line 72
    .line 73
    sub-float/2addr p1, v1

    .line 74
    mul-float/2addr v0, p1

    .line 75
    float-to-double v0, v0

    .line 76
    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 77
    .line 78
    .line 79
    move-result-wide v0

    .line 80
    mul-double/2addr v5, v0

    .line 81
    sub-float/2addr p1, v2

    .line 82
    float-to-double v0, p1

    .line 83
    mul-double/2addr v0, v3

    .line 84
    iget p1, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;->mPriod:F

    .line 85
    .line 86
    float-to-double v2, p1

    .line 87
    div-double/2addr v0, v2

    .line 88
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 89
    .line 90
    .line 91
    move-result-wide v0

    .line 92
    mul-double/2addr v5, v0

    .line 93
    double-to-float p1, v5

    .line 94
    neg-float p1, p1

    .line 95
    return p1
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

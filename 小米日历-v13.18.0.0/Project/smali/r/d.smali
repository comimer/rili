.class public abstract Lr/d;
.super Lp/f;
.source "ViewTimeCycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr/d$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp/f;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
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


# virtual methods
.method public a(FJLandroid/view/View;Lp/c;)F
    .locals 4

    .line 1
    iget-object p4, p0, Lp/f;->a:Lp/a;

    .line 2
    .line 3
    float-to-double v0, p1

    .line 4
    iget-object p1, p0, Lp/f;->g:[F

    .line 5
    .line 6
    invoke-virtual {p4, v0, v1, p1}, Lp/a;->c(D[F)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lp/f;->g:[F

    .line 10
    .line 11
    const/4 p4, 0x1

    .line 12
    aget p4, p1, p4

    .line 13
    .line 14
    const/4 p5, 0x0

    .line 15
    cmpl-float p5, p4, p5

    .line 16
    .line 17
    if-nez p5, :cond_0

    .line 18
    .line 19
    const/4 p2, 0x0

    .line 20
    iput-boolean p2, p0, Lp/f;->h:Z

    .line 21
    .line 22
    const/4 p2, 0x2

    .line 23
    aget p1, p1, p2

    .line 24
    .line 25
    return p1

    .line 26
    :cond_0
    iget p1, p0, Lp/f;->j:F

    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const/4 p5, 0x0

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    throw p5

    .line 36
    :cond_1
    iget-wide v0, p0, Lp/f;->i:J

    .line 37
    .line 38
    sub-long/2addr p2, v0

    .line 39
    iget p1, p0, Lp/f;->j:F

    .line 40
    .line 41
    float-to-double v0, p1

    .line 42
    long-to-double p1, p2

    .line 43
    const-wide v2, 0x3e112e0be826d695L    # 1.0E-9

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    mul-double/2addr p1, v2

    .line 49
    float-to-double p3, p4

    .line 50
    mul-double/2addr p1, p3

    .line 51
    add-double/2addr v0, p1

    .line 52
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 53
    .line 54
    rem-double/2addr v0, p1

    .line 55
    double-to-float p1, v0

    .line 56
    iput p1, p0, Lp/f;->j:F

    .line 57
    .line 58
    throw p5
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
.end method

.method public abstract b(Landroid/view/View;FJLp/c;)Z
.end method

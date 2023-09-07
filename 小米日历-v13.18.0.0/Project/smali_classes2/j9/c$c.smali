.class public Lj9/c$c;
.super Ljava/lang/Object;
.source "EaseManager.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj9/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x3f733333    # 0.95f

    .line 5
    .line 6
    .line 7
    iput v0, p0, Lj9/c$c;->a:F

    .line 8
    .line 9
    const v0, 0x3f19999a    # 0.6f

    .line 10
    .line 11
    .line 12
    iput v0, p0, Lj9/c$c;->b:F

    .line 13
    .line 14
    const/high16 v0, -0x40800000    # -1.0f

    .line 15
    .line 16
    iput v0, p0, Lj9/c$c;->c:F

    .line 17
    .line 18
    iput v0, p0, Lj9/c$c;->d:F

    .line 19
    .line 20
    const/high16 v0, 0x3f800000    # 1.0f

    .line 21
    .line 22
    iput v0, p0, Lj9/c$c;->e:F

    .line 23
    .line 24
    invoke-direct {p0}, Lj9/c$c;->c()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private c()V
    .locals 7

    .line 1
    iget v0, p0, Lj9/c$c;->b:F

    .line 2
    .line 3
    float-to-double v0, v0

    .line 4
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    div-double/2addr v2, v0

    .line 10
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 11
    .line 12
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iget v2, p0, Lj9/c$c;->e:F

    .line 17
    .line 18
    float-to-double v3, v2

    .line 19
    mul-double/2addr v0, v3

    .line 20
    double-to-float v0, v0

    .line 21
    iput v0, p0, Lj9/c$c;->f:F

    .line 22
    .line 23
    iget v1, p0, Lj9/c$c;->a:F

    .line 24
    .line 25
    float-to-double v3, v1

    .line 26
    const-wide v5, 0x402921fb54442d18L    # 12.566370614359172

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    mul-double/2addr v3, v5

    .line 32
    float-to-double v5, v2

    .line 33
    mul-double/2addr v3, v5

    .line 34
    iget v1, p0, Lj9/c$c;->b:F

    .line 35
    .line 36
    float-to-double v5, v1

    .line 37
    div-double/2addr v3, v5

    .line 38
    double-to-float v1, v3

    .line 39
    iput v1, p0, Lj9/c$c;->g:F

    .line 40
    .line 41
    const/high16 v3, 0x40800000    # 4.0f

    .line 42
    .line 43
    mul-float/2addr v2, v3

    .line 44
    mul-float/2addr v2, v0

    .line 45
    mul-float/2addr v1, v1

    .line 46
    sub-float/2addr v2, v1

    .line 47
    float-to-double v0, v2

    .line 48
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 49
    .line 50
    .line 51
    move-result-wide v0

    .line 52
    double-to-float v0, v0

    .line 53
    iget v1, p0, Lj9/c$c;->e:F

    .line 54
    .line 55
    const/high16 v2, 0x40000000    # 2.0f

    .line 56
    .line 57
    mul-float v3, v1, v2

    .line 58
    .line 59
    div-float/2addr v0, v3

    .line 60
    iput v0, p0, Lj9/c$c;->h:F

    .line 61
    .line 62
    iget v3, p0, Lj9/c$c;->g:F

    .line 63
    .line 64
    div-float/2addr v3, v2

    .line 65
    mul-float/2addr v3, v1

    .line 66
    neg-float v1, v3

    .line 67
    iput v1, p0, Lj9/c$c;->i:F

    .line 68
    .line 69
    iget v2, p0, Lj9/c$c;->c:F

    .line 70
    .line 71
    mul-float/2addr v1, v2

    .line 72
    const/4 v2, 0x0

    .line 73
    sub-float/2addr v2, v1

    .line 74
    div-float/2addr v2, v0

    .line 75
    iput v2, p0, Lj9/c$c;->j:F

    .line 76
    .line 77
    return-void
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
.end method


# virtual methods
.method public a(F)Lj9/c$c;
    .locals 0

    .line 1
    iput p1, p0, Lj9/c$c;->a:F

    .line 2
    .line 3
    invoke-direct {p0}, Lj9/c$c;->c()V

    .line 4
    .line 5
    .line 6
    return-object p0
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

.method public b(F)Lj9/c$c;
    .locals 0

    .line 1
    iput p1, p0, Lj9/c$c;->b:F

    .line 2
    .line 3
    invoke-direct {p0}, Lj9/c$c;->c()V

    .line 4
    .line 5
    .line 6
    return-object p0
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

.method public getInterpolation(F)F
    .locals 8

    .line 1
    iget v0, p0, Lj9/c$c;->i:F

    .line 2
    .line 3
    mul-float/2addr v0, p1

    .line 4
    float-to-double v0, v0

    .line 5
    const-wide v2, 0x4005bf0a8b145769L    # Math.E

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iget v2, p0, Lj9/c$c;->d:F

    .line 15
    .line 16
    float-to-double v2, v2

    .line 17
    iget v4, p0, Lj9/c$c;->h:F

    .line 18
    .line 19
    mul-float/2addr v4, p1

    .line 20
    float-to-double v4, v4

    .line 21
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    .line 22
    .line 23
    .line 24
    move-result-wide v4

    .line 25
    mul-double/2addr v2, v4

    .line 26
    iget v4, p0, Lj9/c$c;->j:F

    .line 27
    .line 28
    float-to-double v4, v4

    .line 29
    iget v6, p0, Lj9/c$c;->h:F

    .line 30
    .line 31
    mul-float/2addr v6, p1

    .line 32
    float-to-double v6, v6

    .line 33
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    .line 34
    .line 35
    .line 36
    move-result-wide v6

    .line 37
    mul-double/2addr v4, v6

    .line 38
    add-double/2addr v2, v4

    .line 39
    mul-double/2addr v0, v2

    .line 40
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 41
    .line 42
    add-double/2addr v0, v2

    .line 43
    double-to-float p1, v0

    .line 44
    return p1
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

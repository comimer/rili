.class Landroidx/recyclerview/widget/p$a;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source "RemixRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private h:I

.field private i:I

.field j:Lqa/c;

.field k:Landroid/view/animation/Interpolator;

.field private l:Z

.field private m:Z

.field private n:Z

.field o:I

.field p:I

.field q:Z

.field final synthetic r:Landroidx/recyclerview/widget/p;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/p;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    .line 7
    .line 8
    iput-object v0, p0, Landroidx/recyclerview/widget/p$a;->k:Landroid/view/animation/Interpolator;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Landroidx/recyclerview/widget/p$a;->l:Z

    .line 12
    .line 13
    iput-boolean v1, p0, Landroidx/recyclerview/widget/p$a;->m:Z

    .line 14
    .line 15
    iput v1, p0, Landroidx/recyclerview/widget/p$a;->o:I

    .line 16
    .line 17
    iput v1, p0, Landroidx/recyclerview/widget/p$a;->p:I

    .line 18
    .line 19
    iput-boolean v1, p0, Landroidx/recyclerview/widget/p$a;->q:Z

    .line 20
    .line 21
    new-instance v1, Lqa/c;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-direct {v1, p1, v0}, Lqa/c;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Landroidx/recyclerview/widget/p$a;->j:Lqa/c;

    .line 31
    .line 32
    return-void
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
.end method

.method private a(IIII)I
    .locals 4

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-le v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v2, 0x0

    .line 14
    :goto_0
    mul-int/2addr p3, p3

    .line 15
    mul-int/2addr p4, p4

    .line 16
    add-int/2addr p3, p4

    .line 17
    int-to-double p3, p3

    .line 18
    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    .line 19
    .line 20
    .line 21
    move-result-wide p3

    .line 22
    double-to-int p3, p3

    .line 23
    mul-int/2addr p1, p1

    .line 24
    mul-int/2addr p2, p2

    .line 25
    add-int/2addr p1, p2

    .line 26
    int-to-double p1, p1

    .line 27
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    .line 28
    .line 29
    .line 30
    move-result-wide p1

    .line 31
    double-to-int p1, p1

    .line 32
    iget-object p2, p0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    :goto_1
    div-int/lit8 p4, p2, 0x2

    .line 46
    .line 47
    int-to-float p1, p1

    .line 48
    const/high16 v3, 0x3f800000    # 1.0f

    .line 49
    .line 50
    mul-float/2addr p1, v3

    .line 51
    int-to-float p2, p2

    .line 52
    div-float/2addr p1, p2

    .line 53
    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    int-to-float p4, p4

    .line 58
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/p$a;->b(F)F

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    mul-float/2addr p1, p4

    .line 63
    add-float/2addr p4, p1

    .line 64
    if-lez p3, :cond_2

    .line 65
    .line 66
    const/high16 p1, 0x447a0000    # 1000.0f

    .line 67
    .line 68
    int-to-float p2, p3

    .line 69
    div-float/2addr p4, p2

    .line 70
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    mul-float/2addr p2, p1

    .line 75
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    mul-int/lit8 p1, p1, 0x4

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_2
    if-eqz v2, :cond_3

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_3
    move v0, v1

    .line 86
    :goto_2
    int-to-float p1, v0

    .line 87
    div-float/2addr p1, p2

    .line 88
    add-float/2addr p1, v3

    .line 89
    const/high16 p2, 0x43960000    # 300.0f

    .line 90
    .line 91
    mul-float/2addr p1, p2

    .line 92
    float-to-int p1, p1

    .line 93
    :goto_3
    const/16 p2, 0x7d0

    .line 94
    .line 95
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    return p1
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

.method private b(F)F
    .locals 2

    .line 1
    const/high16 v0, 0x3f000000    # 0.5f

    .line 2
    .line 3
    sub-float/2addr p1, v0

    .line 4
    const v0, 0x3ef1463b

    .line 5
    .line 6
    .line 7
    mul-float/2addr p1, v0

    .line 8
    float-to-double v0, p1

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    double-to-float p1, v0

    .line 14
    return p1
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private d()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 7
    .line 8
    invoke-static {v0, p0}, Landroidx/core/view/a0;->d0(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
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
.method public c(II)V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Landroidx/recyclerview/widget/p$a;->i:I

    .line 9
    .line 10
    iput v0, p0, Landroidx/recyclerview/widget/p$a;->h:I

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/recyclerview/widget/p$a;->k:Landroid/view/animation/Interpolator;

    .line 13
    .line 14
    sget-object v3, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    .line 15
    .line 16
    if-eq v2, v3, :cond_0

    .line 17
    .line 18
    iput-object v3, p0, Landroidx/recyclerview/widget/p$a;->k:Landroid/view/animation/Interpolator;

    .line 19
    .line 20
    new-instance v2, Lqa/c;

    .line 21
    .line 22
    iget-object v4, p0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 23
    .line 24
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-direct {v2, v4, v3}, Lqa/c;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 29
    .line 30
    .line 31
    iput-object v2, p0, Landroidx/recyclerview/widget/p$a;->j:Lqa/c;

    .line 32
    .line 33
    :cond_0
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iget-object p1, p0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 36
    .line 37
    invoke-static {p1}, Landroidx/recyclerview/widget/p;->c(Landroidx/recyclerview/widget/p;)Lj9/i;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1, v0}, Lj9/i;->g(I)F

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    float-to-int p1, p1

    .line 46
    neg-int p1, p1

    .line 47
    :cond_1
    move v5, p1

    .line 48
    const/4 p1, 0x1

    .line 49
    if-eqz p2, :cond_2

    .line 50
    .line 51
    iget-object p2, p0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 52
    .line 53
    invoke-static {p2}, Landroidx/recyclerview/widget/p;->c(Landroidx/recyclerview/widget/p;)Lj9/i;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p2, p1}, Lj9/i;->g(I)F

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    float-to-int p2, p2

    .line 62
    neg-int p2, p2

    .line 63
    :cond_2
    move v6, p2

    .line 64
    iget-object p2, p0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 65
    .line 66
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$o;

    .line 67
    .line 68
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$o;->canScrollHorizontally()Z

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    iget-object v0, p0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 73
    .line 74
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$o;

    .line 75
    .line 76
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$o;->canScrollVertically()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    or-int/lit8 p2, p2, 0x2

    .line 83
    .line 84
    :cond_3
    const/4 v0, -0x1

    .line 85
    if-ne p2, v1, :cond_5

    .line 86
    .line 87
    if-lez v6, :cond_4

    .line 88
    .line 89
    move v0, p1

    .line 90
    :cond_4
    iget-object p2, p0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 91
    .line 92
    invoke-virtual {p2, v0}, Landroid/view/View;->canScrollVertically(I)Z

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    xor-int/2addr p1, p2

    .line 97
    iput-boolean p1, p0, Landroidx/recyclerview/widget/p$a;->n:Z

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_5
    if-ne p2, p1, :cond_7

    .line 101
    .line 102
    if-lez v5, :cond_6

    .line 103
    .line 104
    move v0, p1

    .line 105
    :cond_6
    iget-object p2, p0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 106
    .line 107
    invoke-virtual {p2, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    xor-int/2addr p1, p2

    .line 112
    iput-boolean p1, p0, Landroidx/recyclerview/widget/p$a;->n:Z

    .line 113
    .line 114
    :cond_7
    :goto_0
    iget-object v2, p0, Landroidx/recyclerview/widget/p$a;->j:Lqa/c;

    .line 115
    .line 116
    const/4 v3, 0x0

    .line 117
    const/4 v4, 0x0

    .line 118
    const/high16 v7, -0x80000000

    .line 119
    .line 120
    const v8, 0x7fffffff

    .line 121
    .line 122
    .line 123
    const/high16 v9, -0x80000000

    .line 124
    .line 125
    const v10, 0x7fffffff

    .line 126
    .line 127
    .line 128
    invoke-virtual/range {v2 .. v10}, Lqa/c;->c(IIIIIIII)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Landroidx/recyclerview/widget/p$a;->e()V

    .line 132
    .line 133
    .line 134
    return-void
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

.method e()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/p$a;->l:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/recyclerview/widget/p$a;->m:Z

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0}, Landroidx/recyclerview/widget/p$a;->d()V

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
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

.method public f(IIILandroid/view/animation/Interpolator;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->d()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/high16 v0, -0x80000000

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-ne p3, v0, :cond_1

    .line 14
    .line 15
    invoke-direct {p0, p1, p2, v1, v1}, Landroidx/recyclerview/widget/p$a;->a(IIII)I

    .line 16
    .line 17
    .line 18
    :cond_1
    if-nez p4, :cond_2

    .line 19
    .line 20
    sget-object p4, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    .line 21
    .line 22
    :cond_2
    iget-object p3, p0, Landroidx/recyclerview/widget/p$a;->j:Lqa/c;

    .line 23
    .line 24
    invoke-virtual {p3}, Lqa/c;->l()I

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    const/4 v0, 0x2

    .line 29
    if-ne p3, v0, :cond_3

    .line 30
    .line 31
    iget-boolean p3, p0, Landroidx/recyclerview/widget/p$a;->q:Z

    .line 32
    .line 33
    if-nez p3, :cond_3

    .line 34
    .line 35
    iget-object p3, p0, Landroidx/recyclerview/widget/p$a;->j:Lqa/c;

    .line 36
    .line 37
    invoke-virtual {p3}, Lqa/c;->g()F

    .line 38
    .line 39
    .line 40
    move-result p3

    .line 41
    float-to-int p3, p3

    .line 42
    iput p3, p0, Landroidx/recyclerview/widget/p$a;->p:I

    .line 43
    .line 44
    iget-object p3, p0, Landroidx/recyclerview/widget/p$a;->j:Lqa/c;

    .line 45
    .line 46
    invoke-virtual {p3}, Lqa/c;->f()F

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    float-to-int p3, p3

    .line 51
    iput p3, p0, Landroidx/recyclerview/widget/p$a;->o:I

    .line 52
    .line 53
    :cond_3
    iget-object p3, p0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 54
    .line 55
    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$o;

    .line 56
    .line 57
    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$o;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 58
    .line 59
    instance-of v2, p3, Landroidx/recyclerview/widget/h;

    .line 60
    .line 61
    if-eqz v2, :cond_4

    .line 62
    .line 63
    const v2, 0x3f99999a    # 1.2f

    .line 64
    .line 65
    .line 66
    move-object v3, p3

    .line 67
    check-cast v3, Landroidx/recyclerview/widget/h;

    .line 68
    .line 69
    iget v3, v3, Landroidx/recyclerview/widget/h;->mInterimTargetDx:I

    .line 70
    .line 71
    int-to-float v3, v3

    .line 72
    mul-float/2addr v3, v2

    .line 73
    check-cast p3, Landroidx/recyclerview/widget/h;

    .line 74
    .line 75
    iget p3, p3, Landroidx/recyclerview/widget/h;->mInterimTargetDy:I

    .line 76
    .line 77
    int-to-float p3, p3

    .line 78
    mul-float/2addr p3, v2

    .line 79
    int-to-float v2, p1

    .line 80
    cmpl-float v2, v3, v2

    .line 81
    .line 82
    if-nez v2, :cond_4

    .line 83
    .line 84
    int-to-float v2, p2

    .line 85
    cmpl-float p3, p3, v2

    .line 86
    .line 87
    if-nez p3, :cond_4

    .line 88
    .line 89
    const/4 p3, 0x1

    .line 90
    goto :goto_0

    .line 91
    :cond_4
    move p3, v1

    .line 92
    :goto_0
    iput-boolean p3, p0, Landroidx/recyclerview/widget/p$a;->q:Z

    .line 93
    .line 94
    iget-object p3, p0, Landroidx/recyclerview/widget/p$a;->k:Landroid/view/animation/Interpolator;

    .line 95
    .line 96
    if-eq p3, p4, :cond_5

    .line 97
    .line 98
    iput-object p4, p0, Landroidx/recyclerview/widget/p$a;->k:Landroid/view/animation/Interpolator;

    .line 99
    .line 100
    new-instance p3, Lqa/c;

    .line 101
    .line 102
    iget-object v2, p0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 103
    .line 104
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-direct {p3, v2, p4}, Lqa/c;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 109
    .line 110
    .line 111
    iput-object p3, p0, Landroidx/recyclerview/widget/p$a;->j:Lqa/c;

    .line 112
    .line 113
    :cond_5
    iput v1, p0, Landroidx/recyclerview/widget/p$a;->i:I

    .line 114
    .line 115
    iput v1, p0, Landroidx/recyclerview/widget/p$a;->h:I

    .line 116
    .line 117
    iget-object p3, p0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 118
    .line 119
    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 120
    .line 121
    .line 122
    iget-object v1, p0, Landroidx/recyclerview/widget/p$a;->j:Lqa/c;

    .line 123
    .line 124
    const/4 v2, 0x0

    .line 125
    const/4 v3, 0x0

    .line 126
    iget v6, p0, Landroidx/recyclerview/widget/p$a;->o:I

    .line 127
    .line 128
    iget v7, p0, Landroidx/recyclerview/widget/p$a;->p:I

    .line 129
    .line 130
    move v4, p1

    .line 131
    move v5, p2

    .line 132
    invoke-virtual/range {v1 .. v7}, Lqa/c;->s(IIIIII)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Landroidx/recyclerview/widget/p$a;->e()V

    .line 136
    .line 137
    .line 138
    return-void
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

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/p$a;->j:Lqa/c;

    .line 7
    .line 8
    invoke-virtual {v0}, Lqa/c;->a()V

    .line 9
    .line 10
    .line 11
    return-void
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

.method h()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/recyclerview/widget/p$a;->i:I

    .line 3
    .line 4
    iput v0, p0, Landroidx/recyclerview/widget/p$a;->h:I

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

.method public run()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$o;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/p$a;->g()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v2, 0x0

    .line 14
    iput-boolean v2, v0, Landroidx/recyclerview/widget/p$a;->m:Z

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    iput-boolean v3, v0, Landroidx/recyclerview/widget/p$a;->l:Z

    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 20
    .line 21
    .line 22
    iget-object v1, v0, Landroidx/recyclerview/widget/p$a;->j:Lqa/c;

    .line 23
    .line 24
    invoke-virtual {v1}, Lqa/c;->b()Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_20

    .line 29
    .line 30
    invoke-virtual {v1}, Lqa/c;->h()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-virtual {v1}, Lqa/c;->i()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    iget-object v6, v0, Landroidx/recyclerview/widget/p$a;->j:Lqa/c;

    .line 39
    .line 40
    invoke-virtual {v6}, Lqa/c;->l()I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-ne v6, v3, :cond_1

    .line 45
    .line 46
    invoke-virtual {v1}, Lqa/c;->f()F

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    float-to-int v6, v6

    .line 51
    iput v6, v0, Landroidx/recyclerview/widget/p$a;->o:I

    .line 52
    .line 53
    invoke-virtual {v1}, Lqa/c;->g()F

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    float-to-int v6, v6

    .line 58
    iput v6, v0, Landroidx/recyclerview/widget/p$a;->p:I

    .line 59
    .line 60
    :cond_1
    iget v6, v0, Landroidx/recyclerview/widget/p$a;->h:I

    .line 61
    .line 62
    sub-int v6, v4, v6

    .line 63
    .line 64
    iget v7, v0, Landroidx/recyclerview/widget/p$a;->i:I

    .line 65
    .line 66
    sub-int v13, v5, v7

    .line 67
    .line 68
    iput v4, v0, Landroidx/recyclerview/widget/p$a;->h:I

    .line 69
    .line 70
    iput v5, v0, Landroidx/recyclerview/widget/p$a;->i:I

    .line 71
    .line 72
    iget-object v4, v0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 73
    .line 74
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 75
    .line 76
    aput v2, v4, v2

    .line 77
    .line 78
    aput v2, v4, v3

    .line 79
    .line 80
    iget-object v4, v0, Landroidx/recyclerview/widget/p$a;->j:Lqa/c;

    .line 81
    .line 82
    invoke-virtual {v4}, Lqa/c;->l()I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-ne v4, v3, :cond_4

    .line 87
    .line 88
    iget-object v4, v0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 89
    .line 90
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    iget-object v5, v0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 95
    .line 96
    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    const v7, 0x1020002

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    :goto_0
    if-eqz v4, :cond_4

    .line 108
    .line 109
    instance-of v7, v4, Lz9/a;

    .line 110
    .line 111
    if-eqz v7, :cond_2

    .line 112
    .line 113
    move-object v7, v4

    .line 114
    check-cast v7, Lz9/a;

    .line 115
    .line 116
    iget-object v8, v0, Landroidx/recyclerview/widget/p$a;->j:Lqa/c;

    .line 117
    .line 118
    invoke-virtual {v8}, Lqa/c;->f()F

    .line 119
    .line 120
    .line 121
    move-result v8

    .line 122
    iget-object v9, v0, Landroidx/recyclerview/widget/p$a;->j:Lqa/c;

    .line 123
    .line 124
    invoke-virtual {v9}, Lqa/c;->g()F

    .line 125
    .line 126
    .line 127
    move-result v9

    .line 128
    invoke-interface {v7, v8, v9}, Lz9/a;->a(FF)Z

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    if-eqz v7, :cond_2

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_2
    instance-of v7, v4, Landroid/view/ViewGroup;

    .line 136
    .line 137
    if-eqz v7, :cond_3

    .line 138
    .line 139
    if-ne v4, v5, :cond_3

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_3
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    goto :goto_0

    .line 147
    :cond_4
    :goto_1
    iget-object v7, v0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 148
    .line 149
    iget-object v10, v7, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 150
    .line 151
    const/4 v11, 0x0

    .line 152
    const/4 v12, 0x1

    .line 153
    move v8, v6

    .line 154
    move v9, v13

    .line 155
    invoke-virtual/range {v7 .. v12}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    if-eqz v4, :cond_5

    .line 160
    .line 161
    iget-object v4, v0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 162
    .line 163
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 164
    .line 165
    aget v5, v4, v2

    .line 166
    .line 167
    sub-int/2addr v6, v5

    .line 168
    aget v4, v4, v3

    .line 169
    .line 170
    sub-int/2addr v13, v4

    .line 171
    :cond_5
    iget-object v4, v0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 172
    .line 173
    invoke-virtual {v4}, Landroid/view/View;->getOverScrollMode()I

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    const/4 v5, 0x2

    .line 178
    if-eq v4, v5, :cond_6

    .line 179
    .line 180
    iget-object v4, v0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 181
    .line 182
    invoke-virtual {v4, v6, v13}, Landroidx/recyclerview/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    .line 183
    .line 184
    .line 185
    :cond_6
    iget-object v4, v0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 186
    .line 187
    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$g;

    .line 188
    .line 189
    if-eqz v7, :cond_9

    .line 190
    .line 191
    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 192
    .line 193
    aput v2, v7, v2

    .line 194
    .line 195
    aput v2, v7, v3

    .line 196
    .line 197
    invoke-virtual {v4, v6, v13, v7}, Landroidx/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    .line 198
    .line 199
    .line 200
    iget-object v4, v0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 201
    .line 202
    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 203
    .line 204
    aget v8, v7, v2

    .line 205
    .line 206
    aget v7, v7, v3

    .line 207
    .line 208
    sub-int/2addr v6, v8

    .line 209
    sub-int/2addr v13, v7

    .line 210
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$o;

    .line 211
    .line 212
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$o;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 213
    .line 214
    if-eqz v4, :cond_a

    .line 215
    .line 216
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$y;->isPendingInitialRun()Z

    .line 217
    .line 218
    .line 219
    move-result v9

    .line 220
    if-nez v9, :cond_a

    .line 221
    .line 222
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$y;->isRunning()Z

    .line 223
    .line 224
    .line 225
    move-result v9

    .line 226
    if-eqz v9, :cond_a

    .line 227
    .line 228
    iget-object v9, v0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 229
    .line 230
    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$z;

    .line 231
    .line 232
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$z;->b()I

    .line 233
    .line 234
    .line 235
    move-result v9

    .line 236
    if-nez v9, :cond_7

    .line 237
    .line 238
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$y;->stop()V

    .line 239
    .line 240
    .line 241
    goto :goto_2

    .line 242
    :cond_7
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$y;->getTargetPosition()I

    .line 243
    .line 244
    .line 245
    move-result v10

    .line 246
    if-lt v10, v9, :cond_8

    .line 247
    .line 248
    sub-int/2addr v9, v3

    .line 249
    invoke-virtual {v4, v9}, Landroidx/recyclerview/widget/RecyclerView$y;->setTargetPosition(I)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v4, v8, v7}, Landroidx/recyclerview/widget/RecyclerView$y;->onAnimation(II)V

    .line 253
    .line 254
    .line 255
    goto :goto_2

    .line 256
    :cond_8
    invoke-virtual {v4, v8, v7}, Landroidx/recyclerview/widget/RecyclerView$y;->onAnimation(II)V

    .line 257
    .line 258
    .line 259
    goto :goto_2

    .line 260
    :cond_9
    move v7, v2

    .line 261
    move v8, v7

    .line 262
    :cond_a
    :goto_2
    iget-object v4, v0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 263
    .line 264
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 265
    .line 266
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 267
    .line 268
    .line 269
    move-result v4

    .line 270
    if-nez v4, :cond_b

    .line 271
    .line 272
    iget-object v4, v0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 273
    .line 274
    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 275
    .line 276
    .line 277
    :cond_b
    iget-object v14, v0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 278
    .line 279
    iget-object v4, v14, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 280
    .line 281
    aput v2, v4, v2

    .line 282
    .line 283
    aput v2, v4, v3

    .line 284
    .line 285
    const/16 v19, 0x0

    .line 286
    .line 287
    const/16 v20, 0x1

    .line 288
    .line 289
    move v15, v8

    .line 290
    move/from16 v16, v7

    .line 291
    .line 292
    move/from16 v17, v6

    .line 293
    .line 294
    move/from16 v18, v13

    .line 295
    .line 296
    move-object/from16 v21, v4

    .line 297
    .line 298
    invoke-virtual/range {v14 .. v21}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedScroll(IIII[II[I)V

    .line 299
    .line 300
    .line 301
    iget-object v4, v0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 302
    .line 303
    iget-object v9, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 304
    .line 305
    aget v10, v9, v2

    .line 306
    .line 307
    sub-int/2addr v6, v10

    .line 308
    aget v9, v9, v3

    .line 309
    .line 310
    sub-int/2addr v13, v9

    .line 311
    if-nez v8, :cond_c

    .line 312
    .line 313
    if-eqz v7, :cond_d

    .line 314
    .line 315
    :cond_c
    invoke-virtual {v4, v8, v7}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 316
    .line 317
    .line 318
    :cond_d
    iget-object v4, v0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 319
    .line 320
    invoke-static {v4}, Landroidx/recyclerview/widget/p;->a(Landroidx/recyclerview/widget/p;)Z

    .line 321
    .line 322
    .line 323
    move-result v4

    .line 324
    if-nez v4, :cond_e

    .line 325
    .line 326
    iget-object v4, v0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 327
    .line 328
    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 329
    .line 330
    .line 331
    :cond_e
    invoke-virtual {v1}, Lqa/c;->h()I

    .line 332
    .line 333
    .line 334
    move-result v4

    .line 335
    invoke-virtual {v1}, Lqa/c;->j()I

    .line 336
    .line 337
    .line 338
    move-result v9

    .line 339
    if-ne v4, v9, :cond_f

    .line 340
    .line 341
    move v4, v3

    .line 342
    goto :goto_3

    .line 343
    :cond_f
    move v4, v2

    .line 344
    :goto_3
    invoke-virtual {v1}, Lqa/c;->i()I

    .line 345
    .line 346
    .line 347
    move-result v9

    .line 348
    invoke-virtual {v1}, Lqa/c;->k()I

    .line 349
    .line 350
    .line 351
    move-result v10

    .line 352
    if-ne v9, v10, :cond_10

    .line 353
    .line 354
    move v9, v3

    .line 355
    goto :goto_4

    .line 356
    :cond_10
    move v9, v2

    .line 357
    :goto_4
    invoke-virtual {v1}, Lqa/c;->o()Z

    .line 358
    .line 359
    .line 360
    move-result v10

    .line 361
    if-nez v10, :cond_13

    .line 362
    .line 363
    if-nez v4, :cond_11

    .line 364
    .line 365
    if-eqz v6, :cond_12

    .line 366
    .line 367
    :cond_11
    if-nez v9, :cond_13

    .line 368
    .line 369
    if-eqz v13, :cond_12

    .line 370
    .line 371
    goto :goto_5

    .line 372
    :cond_12
    move v4, v2

    .line 373
    goto :goto_6

    .line 374
    :cond_13
    :goto_5
    move v4, v3

    .line 375
    :goto_6
    iget-object v9, v0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 376
    .line 377
    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$o;

    .line 378
    .line 379
    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView$o;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 380
    .line 381
    if-eqz v9, :cond_14

    .line 382
    .line 383
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$y;->isPendingInitialRun()Z

    .line 384
    .line 385
    .line 386
    move-result v9

    .line 387
    if-eqz v9, :cond_14

    .line 388
    .line 389
    move v9, v3

    .line 390
    goto :goto_7

    .line 391
    :cond_14
    move v9, v2

    .line 392
    :goto_7
    if-nez v9, :cond_1f

    .line 393
    .line 394
    if-eqz v4, :cond_1f

    .line 395
    .line 396
    iget-object v4, v0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 397
    .line 398
    invoke-virtual {v4}, Landroid/view/View;->getOverScrollMode()I

    .line 399
    .line 400
    .line 401
    move-result v4

    .line 402
    if-eq v4, v5, :cond_19

    .line 403
    .line 404
    invoke-virtual {v1}, Lqa/c;->e()F

    .line 405
    .line 406
    .line 407
    move-result v1

    .line 408
    float-to-int v1, v1

    .line 409
    if-gez v6, :cond_15

    .line 410
    .line 411
    neg-int v4, v1

    .line 412
    goto :goto_8

    .line 413
    :cond_15
    if-lez v6, :cond_16

    .line 414
    .line 415
    move v4, v1

    .line 416
    goto :goto_8

    .line 417
    :cond_16
    move v4, v2

    .line 418
    :goto_8
    if-gez v13, :cond_17

    .line 419
    .line 420
    neg-int v1, v1

    .line 421
    goto :goto_9

    .line 422
    :cond_17
    if-lez v13, :cond_18

    .line 423
    .line 424
    goto :goto_9

    .line 425
    :cond_18
    move v1, v2

    .line 426
    :goto_9
    iget-object v5, v0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 427
    .line 428
    invoke-virtual {v5, v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->absorbGlows(II)V

    .line 429
    .line 430
    .line 431
    :cond_19
    iget-object v1, v0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 432
    .line 433
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$o;

    .line 434
    .line 435
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$o;->canScrollVertically()Z

    .line 436
    .line 437
    .line 438
    move-result v1

    .line 439
    const/4 v4, -0x1

    .line 440
    if-eqz v1, :cond_1b

    .line 441
    .line 442
    iget-object v1, v0, Landroidx/recyclerview/widget/p$a;->j:Lqa/c;

    .line 443
    .line 444
    invoke-virtual {v1}, Lqa/c;->k()I

    .line 445
    .line 446
    .line 447
    move-result v1

    .line 448
    iget-object v5, v0, Landroidx/recyclerview/widget/p$a;->j:Lqa/c;

    .line 449
    .line 450
    invoke-virtual {v5}, Lqa/c;->n()I

    .line 451
    .line 452
    .line 453
    move-result v5

    .line 454
    if-le v1, v5, :cond_1a

    .line 455
    .line 456
    move v4, v3

    .line 457
    :cond_1a
    iget-object v1, v0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 458
    .line 459
    invoke-virtual {v1, v4}, Landroid/view/View;->canScrollVertically(I)Z

    .line 460
    .line 461
    .line 462
    move-result v1

    .line 463
    :goto_a
    xor-int/2addr v1, v3

    .line 464
    goto :goto_b

    .line 465
    :cond_1b
    iget-object v1, v0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 466
    .line 467
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$o;

    .line 468
    .line 469
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$o;->canScrollHorizontally()Z

    .line 470
    .line 471
    .line 472
    move-result v1

    .line 473
    if-eqz v1, :cond_1d

    .line 474
    .line 475
    iget-object v1, v0, Landroidx/recyclerview/widget/p$a;->j:Lqa/c;

    .line 476
    .line 477
    invoke-virtual {v1}, Lqa/c;->j()I

    .line 478
    .line 479
    .line 480
    move-result v1

    .line 481
    iget-object v5, v0, Landroidx/recyclerview/widget/p$a;->j:Lqa/c;

    .line 482
    .line 483
    invoke-virtual {v5}, Lqa/c;->m()I

    .line 484
    .line 485
    .line 486
    move-result v5

    .line 487
    if-le v1, v5, :cond_1c

    .line 488
    .line 489
    move v4, v3

    .line 490
    :cond_1c
    iget-object v1, v0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 491
    .line 492
    invoke-virtual {v1, v4}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 493
    .line 494
    .line 495
    move-result v1

    .line 496
    goto :goto_a

    .line 497
    :cond_1d
    move v1, v2

    .line 498
    :goto_b
    iget-object v4, v0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 499
    .line 500
    invoke-static {v4}, Landroidx/recyclerview/widget/p;->b(Landroidx/recyclerview/widget/p;)Z

    .line 501
    .line 502
    .line 503
    move-result v4

    .line 504
    if-nez v4, :cond_1e

    .line 505
    .line 506
    iget-object v4, v0, Landroidx/recyclerview/widget/p$a;->j:Lqa/c;

    .line 507
    .line 508
    invoke-virtual {v4}, Lqa/c;->l()I

    .line 509
    .line 510
    .line 511
    move-result v4

    .line 512
    if-ne v4, v3, :cond_1e

    .line 513
    .line 514
    iget-boolean v4, v0, Landroidx/recyclerview/widget/p$a;->n:Z

    .line 515
    .line 516
    if-nez v4, :cond_1e

    .line 517
    .line 518
    if-eqz v1, :cond_1e

    .line 519
    .line 520
    iget-object v1, v0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 521
    .line 522
    sget v4, Lmiuix/view/f;->q:I

    .line 523
    .line 524
    invoke-static {v1, v4}, Lmiuix/view/HapticCompat;->performHapticFeedbackAsync(Landroid/view/View;I)V

    .line 525
    .line 526
    .line 527
    :cond_1e
    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    .line 528
    .line 529
    if-eqz v1, :cond_20

    .line 530
    .line 531
    iget-object v1, v0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 532
    .line 533
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/f$b;

    .line 534
    .line 535
    invoke-virtual {v1}, Landroidx/recyclerview/widget/f$b;->b()V

    .line 536
    .line 537
    .line 538
    goto :goto_c

    .line 539
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/p$a;->e()V

    .line 540
    .line 541
    .line 542
    iget-object v1, v0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 543
    .line 544
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/f;

    .line 545
    .line 546
    if-eqz v4, :cond_20

    .line 547
    .line 548
    invoke-virtual {v4, v1, v8, v7}, Landroidx/recyclerview/widget/f;->f(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 549
    .line 550
    .line 551
    :cond_20
    :goto_c
    iget-object v1, v0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 552
    .line 553
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$o;

    .line 554
    .line 555
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$o;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$y;

    .line 556
    .line 557
    if-eqz v1, :cond_21

    .line 558
    .line 559
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$y;->isPendingInitialRun()Z

    .line 560
    .line 561
    .line 562
    move-result v4

    .line 563
    if-eqz v4, :cond_21

    .line 564
    .line 565
    invoke-virtual {v1, v2, v2}, Landroidx/recyclerview/widget/RecyclerView$y;->onAnimation(II)V

    .line 566
    .line 567
    .line 568
    :cond_21
    iput-boolean v2, v0, Landroidx/recyclerview/widget/p$a;->l:Z

    .line 569
    .line 570
    iget-boolean v1, v0, Landroidx/recyclerview/widget/p$a;->m:Z

    .line 571
    .line 572
    if-eqz v1, :cond_22

    .line 573
    .line 574
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/p$a;->d()V

    .line 575
    .line 576
    .line 577
    goto :goto_d

    .line 578
    :cond_22
    iget-object v1, v0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 579
    .line 580
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 581
    .line 582
    .line 583
    iget-object v1, v0, Landroidx/recyclerview/widget/p$a;->r:Landroidx/recyclerview/widget/p;

    .line 584
    .line 585
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    .line 586
    .line 587
    .line 588
    iput v2, v0, Landroidx/recyclerview/widget/p$a;->p:I

    .line 589
    .line 590
    iput v2, v0, Landroidx/recyclerview/widget/p$a;->o:I

    .line 591
    .line 592
    :goto_d
    return-void
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
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
.end method

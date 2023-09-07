.class Lqa/a$b;
.super Ljava/lang/Object;
.source "DynamicScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqa/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqa/a$b$b;,
        Lqa/a$b$a;
    }
.end annotation


# instance fields
.field a:Lpa/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpa/b<",
            "*>;"
        }
    .end annotation
.end field

.field b:I

.field private final c:I

.field private final d:I

.field e:F

.field f:I

.field private g:Lqa/a$b$b;

.field private h:F

.field private i:F

.field private j:J

.field private k:Lqa/a$b$a;


# direct methods
.method constructor <init>(Lpa/b;IF)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpa/b<",
            "*>;IF)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lqa/a$b$a;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lqa/a$b$a;-><init>(Lqa/a$b;Lqa/a$a;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lqa/a$b;->k:Lqa/a$b$a;

    .line 11
    .line 12
    iput-object p1, p0, Lqa/a$b;->a:Lpa/b;

    .line 13
    .line 14
    const v0, -0x800001

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lpa/b;->l(F)Lpa/b;

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lqa/a$b;->a:Lpa/b;

    .line 21
    .line 22
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lpa/b;->k(F)Lpa/b;

    .line 26
    .line 27
    .line 28
    iput p2, p0, Lqa/a$b;->b:I

    .line 29
    .line 30
    iput p3, p0, Lqa/a$b;->e:F

    .line 31
    .line 32
    const p1, 0x7fffffff

    .line 33
    .line 34
    .line 35
    const/high16 v0, -0x80000000

    .line 36
    .line 37
    if-lez p2, :cond_0

    .line 38
    .line 39
    add-int/2addr v0, p2

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    if-gez p2, :cond_1

    .line 42
    .line 43
    add-int/2addr p1, p2

    .line 44
    :cond_1
    :goto_0
    iput v0, p0, Lqa/a$b;->c:I

    .line 45
    .line 46
    iput p1, p0, Lqa/a$b;->d:I

    .line 47
    .line 48
    iget-object p1, p0, Lqa/a$b;->a:Lpa/b;

    .line 49
    .line 50
    const/4 p2, 0x0

    .line 51
    invoke-virtual {p1, p2}, Lpa/b;->o(F)Lpa/b;

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lqa/a$b;->a:Lpa/b;

    .line 55
    .line 56
    invoke-virtual {p1, p3}, Lpa/b;->p(F)Lpa/b;

    .line 57
    .line 58
    .line 59
    return-void
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

.method static synthetic a(Lqa/a$b;)F
    .locals 0

    .line 1
    iget p0, p0, Lqa/a$b;->h:F

    .line 2
    .line 3
    return p0
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

.method static synthetic b(Lqa/a$b;)F
    .locals 0

    .line 1
    iget p0, p0, Lqa/a$b;->i:F

    .line 2
    .line 3
    return p0
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


# virtual methods
.method c()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lqa/a$b;->j:J

    .line 4
    .line 5
    iget-object v0, p0, Lqa/a$b;->a:Lpa/b;

    .line 6
    .line 7
    invoke-virtual {v0}, Lpa/b;->c()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lqa/a$b;->a:Lpa/b;

    .line 11
    .line 12
    iget-object v1, p0, Lqa/a$b;->k:Lqa/a$b$a;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lpa/b;->j(Lpa/b$r;)V

    .line 15
    .line 16
    .line 17
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
.end method

.method d()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lqa/a$b;->g:Lqa/a$b$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lqa/a$b;->f:I

    .line 6
    .line 7
    int-to-float v1, v1

    .line 8
    iget v2, p0, Lqa/a$b;->e:F

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Lqa/a$b$b;->a(FF)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
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

.method e()Lpa/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lpa/b<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lqa/a$b;->a:Lpa/b;

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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method f(I)I
    .locals 1

    .line 1
    iget v0, p0, Lqa/a$b;->b:I

    .line 2
    .line 3
    sub-int/2addr p1, v0

    .line 4
    return p1
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

.method g(I)V
    .locals 1

    .line 1
    iget v0, p0, Lqa/a$b;->d:I

    .line 2
    .line 3
    if-le p1, v0, :cond_0

    .line 4
    .line 5
    move p1, v0

    .line 6
    :cond_0
    iget v0, p0, Lqa/a$b;->b:I

    .line 7
    .line 8
    sub-int/2addr p1, v0

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    int-to-float p1, p1

    .line 15
    iget-object v0, p0, Lqa/a$b;->a:Lpa/b;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lpa/b;->k(F)Lpa/b;

    .line 18
    .line 19
    .line 20
    iput p1, p0, Lqa/a$b;->i:F

    .line 21
    .line 22
    return-void
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

.method h(I)V
    .locals 1

    .line 1
    iget v0, p0, Lqa/a$b;->c:I

    .line 2
    .line 3
    if-ge p1, v0, :cond_0

    .line 4
    .line 5
    move p1, v0

    .line 6
    :cond_0
    iget v0, p0, Lqa/a$b;->b:I

    .line 7
    .line 8
    sub-int/2addr p1, v0

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    int-to-float p1, p1

    .line 15
    iget-object v0, p0, Lqa/a$b;->a:Lpa/b;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lpa/b;->l(F)Lpa/b;

    .line 18
    .line 19
    .line 20
    iput p1, p0, Lqa/a$b;->h:F

    .line 21
    .line 22
    return-void
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

.method i(Lqa/a$b$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqa/a$b;->g:Lqa/a$b$b;

    .line 2
    .line 3
    return-void
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

.method j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lqa/a$b;->a:Lpa/b;

    .line 2
    .line 3
    iget-object v1, p0, Lqa/a$b;->k:Lqa/a$b$a;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lpa/b;->b(Lpa/b$r;)Lpa/b;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lqa/a$b;->a:Lpa/b;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Lpa/b;->r(Z)V

    .line 12
    .line 13
    .line 14
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    iput-wide v0, p0, Lqa/a$b;->j:J

    .line 17
    .line 18
    return-void
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

.method k()Z
    .locals 7

    .line 1
    iget-wide v0, p0, Lqa/a$b;->j:J

    .line 2
    .line 3
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    cmp-long v0, v2, v0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string v0, "update done in this frame, dropping current update request"

    .line 13
    .line 14
    invoke-static {v0}, Lqa/b;->c(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lqa/a$b;->a:Lpa/b;

    .line 18
    .line 19
    invoke-virtual {v0}, Lpa/b;->g()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    xor-int/2addr v0, v1

    .line 24
    return v0

    .line 25
    :cond_0
    iget-object v0, p0, Lqa/a$b;->a:Lpa/b;

    .line 26
    .line 27
    invoke-virtual {v0, v2, v3}, Lpa/b;->a(J)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    const/4 v4, 0x3

    .line 34
    new-array v4, v4, [Ljava/lang/Object;

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    iget-object v6, p0, Lqa/a$b;->a:Lpa/b;

    .line 38
    .line 39
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    aput-object v6, v4, v5

    .line 48
    .line 49
    iget v5, p0, Lqa/a$b;->f:I

    .line 50
    .line 51
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    aput-object v5, v4, v1

    .line 56
    .line 57
    const/4 v1, 0x2

    .line 58
    iget v5, p0, Lqa/a$b;->e:F

    .line 59
    .line 60
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    aput-object v5, v4, v1

    .line 65
    .line 66
    const-string v1, "%s finishing value(%d) velocity(%f)"

    .line 67
    .line 68
    invoke-static {v1, v4}, Lqa/b;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lqa/a$b;->a:Lpa/b;

    .line 72
    .line 73
    iget-object v4, p0, Lqa/a$b;->k:Lqa/a$b$a;

    .line 74
    .line 75
    invoke-virtual {v1, v4}, Lpa/b;->j(Lpa/b$r;)V

    .line 76
    .line 77
    .line 78
    const-wide/16 v4, 0x0

    .line 79
    .line 80
    iput-wide v4, p0, Lqa/a$b;->j:J

    .line 81
    .line 82
    :cond_1
    iput-wide v2, p0, Lqa/a$b;->j:J

    .line 83
    .line 84
    return v0
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

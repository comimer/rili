.class public final Lpa/c;
.super Lpa/b;
.source "FlingAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpa/c$a;,
        Lpa/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpa/b<",
        "Lpa/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final B:Lpa/c$a;

.field private C:Lpa/c$b;


# direct methods
.method public constructor <init>(Lpa/e;Lpa/c$b;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lpa/b;-><init>(Lpa/e;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lpa/c$a;

    .line 5
    .line 6
    invoke-direct {p1}, Lpa/c$a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lpa/c;->B:Lpa/c$a;

    .line 10
    .line 11
    invoke-virtual {p0}, Lpa/b;->f()F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1, v0}, Lpa/c$a;->e(F)V

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Lpa/c;->C:Lpa/c$b;

    .line 19
    .line 20
    return-void
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

.method private y(F)F
    .locals 4

    .line 1
    iget v0, p0, Lpa/b;->a:F

    .line 2
    .line 3
    div-float/2addr p1, v0

    .line 4
    float-to-double v0, p1

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    mul-double/2addr v0, v2

    .line 15
    iget-object p1, p0, Lpa/c;->B:Lpa/c$a;

    .line 16
    .line 17
    invoke-static {p1}, Lpa/c$a;->a(Lpa/c$a;)F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    float-to-double v2, p1

    .line 22
    div-double/2addr v0, v2

    .line 23
    double-to-float p1, v0

    .line 24
    return p1
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
.method public A(F)Lpa/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lpa/b;->k(F)Lpa/b;

    .line 2
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

.method public B(F)Lpa/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lpa/b;->l(F)Lpa/b;

    .line 2
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

.method public C(F)Lpa/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lpa/b;->p(F)Lpa/b;

    .line 2
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

.method public bridge synthetic k(F)Lpa/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lpa/c;->A(F)Lpa/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
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

.method public bridge synthetic l(F)Lpa/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lpa/c;->B(F)Lpa/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
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

.method public bridge synthetic p(F)Lpa/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lpa/c;->C(F)Lpa/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
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

.method q(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lpa/c;->B:Lpa/c$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lpa/c$a;->e(F)V

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

.method t(J)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lpa/c;->B:Lpa/c$a;

    .line 2
    .line 3
    iget v1, p0, Lpa/b;->b:F

    .line 4
    .line 5
    iget v2, p0, Lpa/b;->a:F

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2, p1, p2}, Lpa/c$a;->f(FFJ)Lpa/b$p;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget p2, p1, Lpa/b$p;->a:F

    .line 12
    .line 13
    iput p2, p0, Lpa/b;->b:F

    .line 14
    .line 15
    iget p1, p1, Lpa/b$p;->b:F

    .line 16
    .line 17
    iput p1, p0, Lpa/b;->a:F

    .line 18
    .line 19
    iget v0, p0, Lpa/b;->h:F

    .line 20
    .line 21
    cmpg-float v1, p2, v0

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    if-gez v1, :cond_0

    .line 25
    .line 26
    iput v0, p0, Lpa/b;->b:F

    .line 27
    .line 28
    return v2

    .line 29
    :cond_0
    iget v0, p0, Lpa/b;->g:F

    .line 30
    .line 31
    cmpl-float v1, p2, v0

    .line 32
    .line 33
    if-lez v1, :cond_1

    .line 34
    .line 35
    iput v0, p0, Lpa/b;->b:F

    .line 36
    .line 37
    return v2

    .line 38
    :cond_1
    invoke-virtual {p0, p2, p1}, Lpa/c;->u(FF)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    iget-object p1, p0, Lpa/c;->C:Lpa/c$b;

    .line 45
    .line 46
    iget p2, p0, Lpa/b;->b:F

    .line 47
    .line 48
    float-to-int p2, p2

    .line 49
    invoke-interface {p1, p2}, Lpa/c$b;->a(I)V

    .line 50
    .line 51
    .line 52
    return v2

    .line 53
    :cond_2
    const/4 p1, 0x0

    .line 54
    return p1
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

.method u(FF)Z
    .locals 1

    .line 1
    iget v0, p0, Lpa/b;->g:F

    .line 2
    .line 3
    cmpl-float v0, p1, v0

    .line 4
    .line 5
    if-gez v0, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lpa/b;->h:F

    .line 8
    .line 9
    cmpg-float v0, p1, v0

    .line 10
    .line 11
    if-lez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lpa/c;->B:Lpa/c$a;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Lpa/c$a;->c(FF)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 25
    :goto_1
    return p1
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

.method public v()F
    .locals 2

    .line 1
    iget v0, p0, Lpa/b;->a:F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lpa/c;->B:Lpa/c$a;

    .line 8
    .line 9
    invoke-static {v1}, Lpa/c$a;->b(Lpa/c$a;)F

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    mul-float/2addr v0, v1

    .line 14
    invoke-direct {p0, v0}, Lpa/c;->y(F)F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
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

.method public w()F
    .locals 4

    .line 1
    iget v0, p0, Lpa/b;->a:F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lpa/b;->b:F

    .line 8
    .line 9
    iget v2, p0, Lpa/b;->a:F

    .line 10
    .line 11
    iget-object v3, p0, Lpa/c;->B:Lpa/c$a;

    .line 12
    .line 13
    invoke-static {v3}, Lpa/c$a;->a(Lpa/c$a;)F

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    div-float/2addr v2, v3

    .line 18
    sub-float/2addr v1, v2

    .line 19
    iget-object v2, p0, Lpa/c;->B:Lpa/c$a;

    .line 20
    .line 21
    invoke-static {v2}, Lpa/c$a;->b(Lpa/c$a;)F

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    mul-float/2addr v0, v2

    .line 26
    iget-object v2, p0, Lpa/c;->B:Lpa/c$a;

    .line 27
    .line 28
    invoke-static {v2}, Lpa/c$a;->a(Lpa/c$a;)F

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    div-float/2addr v0, v2

    .line 33
    add-float/2addr v1, v0

    .line 34
    return v1
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
.end method

.method public x(F)F
    .locals 2

    .line 1
    iget v0, p0, Lpa/b;->b:F

    .line 2
    .line 3
    sub-float/2addr p1, v0

    .line 4
    iget v0, p0, Lpa/b;->a:F

    .line 5
    .line 6
    iget-object v1, p0, Lpa/c;->B:Lpa/c$a;

    .line 7
    .line 8
    invoke-static {v1}, Lpa/c$a;->a(Lpa/c$a;)F

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    div-float/2addr v0, v1

    .line 13
    add-float/2addr p1, v0

    .line 14
    iget-object v0, p0, Lpa/c;->B:Lpa/c$a;

    .line 15
    .line 16
    invoke-static {v0}, Lpa/c$a;->a(Lpa/c$a;)F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    mul-float/2addr p1, v0

    .line 21
    invoke-direct {p0, p1}, Lpa/c;->y(F)F

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method public z(F)Lpa/c;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lpa/c;->B:Lpa/c$a;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lpa/c$a;->d(F)V

    .line 9
    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string v0, "Friction must be positive"

    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1
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

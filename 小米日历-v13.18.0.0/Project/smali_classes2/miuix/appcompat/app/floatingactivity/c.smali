.class public Lmiuix/appcompat/app/floatingactivity/c;
.super Ljava/lang/Object;
.source "FloatingSwitcherAnimHelper.java"


# direct methods
.method static synthetic a(Landroid/view/View;Ld9/a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lmiuix/appcompat/app/floatingactivity/c;->i(Landroid/view/View;Ld9/a;)V

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

.method public static b(Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lmiuix/appcompat/app/floatingactivity/c;->c(Landroid/view/View;Ld9/a;)V

    .line 3
    .line 4
    .line 5
    return-void
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

.method public static c(Landroid/view/View;Ld9/a;)V
    .locals 5

    .line 1
    new-instance v0, Le9/a;

    .line 2
    .line 3
    invoke-direct {v0}, Le9/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lmiuix/animation/property/h;->a:Lmiuix/animation/property/h;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    int-to-double v3, v2

    .line 10
    invoke-virtual {v0, v1, v3, v4}, Le9/a;->a(Ljava/lang/Object;D)Le9/a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v3, 0x1

    .line 15
    new-array v4, v3, [Landroid/view/View;

    .line 16
    .line 17
    aput-object p0, v4, v2

    .line 18
    .line 19
    invoke-static {v4}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p0}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const/4 v4, 0x2

    .line 28
    new-array v4, v4, [Ljava/lang/Object;

    .line 29
    .line 30
    aput-object v1, v4, v2

    .line 31
    .line 32
    const/16 v1, -0xc8

    .line 33
    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    aput-object v1, v4, v3

    .line 39
    .line 40
    invoke-interface {p0, v4}, Lmiuix/animation/f;->M([Ljava/lang/Object;)Lmiuix/animation/f;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    new-array v1, v3, [Ld9/a;

    .line 45
    .line 46
    if-nez p1, :cond_0

    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    invoke-static {v2, p1}, Lmiuix/appcompat/app/floatingactivity/c;->l(ILjava/lang/Runnable;)Ld9/a;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    :cond_0
    aput-object p1, v1, v2

    .line 54
    .line 55
    invoke-interface {p0, v0, v1}, Lmiuix/animation/f;->J(Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 56
    .line 57
    .line 58
    return-void
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
.end method

.method public static d(Landroid/view/View;Ld9/a;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Le9/a;

    .line 6
    .line 7
    invoke-direct {v1}, Le9/a;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v2, Lmiuix/animation/property/h;->a:Lmiuix/animation/property/h;

    .line 11
    .line 12
    int-to-double v3, v0

    .line 13
    invoke-virtual {v1, v2, v3, v4}, Le9/a;->a(Ljava/lang/Object;D)Le9/a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    new-array v3, v1, [Landroid/view/View;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    aput-object p0, v3, v4

    .line 22
    .line 23
    invoke-static {v3}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-interface {p0}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const/4 v3, 0x2

    .line 32
    new-array v3, v3, [Ljava/lang/Object;

    .line 33
    .line 34
    aput-object v2, v3, v4

    .line 35
    .line 36
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    aput-object v2, v3, v1

    .line 41
    .line 42
    invoke-interface {p0, v3}, Lmiuix/animation/f;->M([Ljava/lang/Object;)Lmiuix/animation/f;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    new-array v1, v1, [Ld9/a;

    .line 47
    .line 48
    if-nez p1, :cond_0

    .line 49
    .line 50
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/c;->j()Ld9/a;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    :cond_0
    aput-object p1, v1, v4

    .line 55
    .line 56
    invoke-interface {p0, v0, v1}, Lmiuix/animation/f;->J(Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 57
    .line 58
    .line 59
    return-void
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
.end method

.method public static e(Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lmiuix/appcompat/app/floatingactivity/c;->f(Landroid/view/View;Ld9/a;)V

    .line 3
    .line 4
    .line 5
    return-void
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

.method public static f(Landroid/view/View;Ld9/a;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1}, Lmiuix/appcompat/app/floatingactivity/c;->i(Landroid/view/View;Ld9/a;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Lmiuix/appcompat/app/floatingactivity/c$b;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Lmiuix/appcompat/app/floatingactivity/c$b;-><init>(Landroid/view/View;Ld9/a;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
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

.method public static g(Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lmiuix/appcompat/app/floatingactivity/c;->h(Landroid/view/View;Ld9/a;)V

    .line 3
    .line 4
    .line 5
    return-void
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

.method public static h(Landroid/view/View;Ld9/a;)V
    .locals 4

    .line 1
    new-instance v0, Le9/a;

    .line 2
    .line 3
    invoke-direct {v0}, Le9/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lmiuix/animation/property/h;->a:Lmiuix/animation/property/h;

    .line 7
    .line 8
    const-wide/high16 v2, -0x3f97000000000000L    # -200.0

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2, v3}, Le9/a;->a(Ljava/lang/Object;D)Le9/a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x1

    .line 15
    new-array v2, v1, [Landroid/view/View;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    aput-object p0, v2, v3

    .line 19
    .line 20
    invoke-static {v2}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-interface {p0}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    new-array v1, v1, [Ld9/a;

    .line 29
    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    invoke-static {v3, p1}, Lmiuix/appcompat/app/floatingactivity/c;->l(ILjava/lang/Runnable;)Ld9/a;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    :cond_0
    aput-object p1, v1, v3

    .line 38
    .line 39
    invoke-interface {p0, v0, v1}, Lmiuix/animation/f;->J(Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 40
    .line 41
    .line 42
    return-void
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

.method private static i(Landroid/view/View;Ld9/a;)V
    .locals 6

    .line 1
    new-instance v0, Le9/a;

    .line 2
    .line 3
    invoke-direct {v0}, Le9/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lmiuix/animation/property/h;->a:Lmiuix/animation/property/h;

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2, v3}, Le9/a;->a(Ljava/lang/Object;D)Le9/a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v2, 0x1

    .line 15
    new-array v3, v2, [Landroid/view/View;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    aput-object p0, v3, v4

    .line 19
    .line 20
    invoke-static {v3}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-interface {v3}, Lmiuix/animation/d;->a()Lmiuix/animation/f;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const/4 v5, 0x2

    .line 29
    new-array v5, v5, [Ljava/lang/Object;

    .line 30
    .line 31
    aput-object v1, v5, v4

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    aput-object p0, v5, v2

    .line 42
    .line 43
    invoke-interface {v3, v5}, Lmiuix/animation/f;->M([Ljava/lang/Object;)Lmiuix/animation/f;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    new-array v1, v2, [Ld9/a;

    .line 48
    .line 49
    if-nez p1, :cond_0

    .line 50
    .line 51
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/c;->j()Ld9/a;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    :cond_0
    aput-object p1, v1, v4

    .line 56
    .line 57
    invoke-interface {p0, v0, v1}, Lmiuix/animation/f;->J(Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 58
    .line 59
    .line 60
    return-void
    .line 61
    .line 62
    .line 63
    .line 64
.end method

.method public static j()Ld9/a;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lmiuix/appcompat/app/floatingactivity/c;->l(ILjava/lang/Runnable;)Ld9/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
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

.method private static k(I)Ld9/a;
    .locals 4

    .line 1
    new-instance v0, Ld9/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ld9/a;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    const/4 v2, -0x2

    .line 8
    if-eqz p0, :cond_1

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    if-eq p0, v3, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    invoke-static {p0}, Lmiuix/appcompat/app/floatingactivity/c;->k(I)Ld9/a;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-array p0, v1, [F

    .line 20
    .line 21
    fill-array-data p0, :array_0

    .line 22
    .line 23
    .line 24
    invoke-static {v2, p0}, Lj9/c;->e(I[F)Lj9/c$a;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v0, p0}, Ld9/a;->l(Lj9/c$a;)Ld9/a;

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    new-array p0, v1, [F

    .line 33
    .line 34
    fill-array-data p0, :array_1

    .line 35
    .line 36
    .line 37
    invoke-static {v2, p0}, Lj9/c;->e(I[F)Lj9/c$a;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {v0, p0}, Ld9/a;->l(Lj9/c$a;)Ld9/a;

    .line 42
    .line 43
    .line 44
    :goto_0
    return-object v0

    .line 45
    :array_0
    .array-data 4
        0x3f59999a    # 0.85f
        0x3e99999a    # 0.3f
    .end array-data

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3eeb851f    # 0.46f
    .end array-data
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

.method public static l(ILjava/lang/Runnable;)Ld9/a;
    .locals 3

    .line 1
    invoke-static {p0}, Lmiuix/appcompat/app/floatingactivity/c;->k(I)Ld9/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    new-array v0, v0, [Lg9/b;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    new-instance v2, Lmiuix/appcompat/app/floatingactivity/c$a;

    .line 12
    .line 13
    invoke-direct {v2, p1, p0}, Lmiuix/appcompat/app/floatingactivity/c$a;-><init>(Ljava/lang/Runnable;Ld9/a;)V

    .line 14
    .line 15
    .line 16
    aput-object v2, v0, v1

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Ld9/a;->a([Lg9/b;)Ld9/a;

    .line 19
    .line 20
    .line 21
    :cond_0
    return-object p0
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

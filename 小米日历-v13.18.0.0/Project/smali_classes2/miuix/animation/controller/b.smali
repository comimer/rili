.class public Lmiuix/animation/controller/b;
.super Lmiuix/animation/controller/a;
.source "FolmeBlink.java"

# interfaces
.implements Lmiuix/animation/IBlinkStyle;


# instance fields
.field private b:J

.field private c:I

.field private d:Ld9/a;

.field private e:Ld9/a;

.field private f:Ld9/a;

.field private g:Ljava/lang/Runnable;

.field h:I


# direct methods
.method public varargs constructor <init>([Lmiuix/animation/b;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lmiuix/animation/controller/a;-><init>([Lmiuix/animation/b;)V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lmiuix/animation/controller/b;->b:J

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput p1, p0, Lmiuix/animation/controller/b;->c:I

    .line 10
    .line 11
    new-instance v0, Ld9/a;

    .line 12
    .line 13
    invoke-direct {v0}, Ld9/a;-><init>()V

    .line 14
    .line 15
    .line 16
    new-array v1, p1, [F

    .line 17
    .line 18
    const/high16 v2, 0x44160000    # 600.0f

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    aput v2, v1, v3

    .line 22
    .line 23
    const/4 v2, 0x6

    .line 24
    invoke-virtual {v0, v2, v1}, Ld9/a;->k(I[F)Ld9/a;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lmiuix/animation/controller/b;->d:Ld9/a;

    .line 29
    .line 30
    new-instance v0, Ld9/a;

    .line 31
    .line 32
    invoke-direct {v0}, Ld9/a;-><init>()V

    .line 33
    .line 34
    .line 35
    new-array v1, p1, [F

    .line 36
    .line 37
    const/high16 v4, 0x43c80000    # 400.0f

    .line 38
    .line 39
    aput v4, v1, v3

    .line 40
    .line 41
    const/16 v4, 0x10

    .line 42
    .line 43
    invoke-virtual {v0, v4, v1}, Ld9/a;->k(I[F)Ld9/a;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lmiuix/animation/controller/b;->e:Ld9/a;

    .line 48
    .line 49
    new-instance v0, Ld9/a;

    .line 50
    .line 51
    invoke-direct {v0}, Ld9/a;-><init>()V

    .line 52
    .line 53
    .line 54
    new-array v1, p1, [F

    .line 55
    .line 56
    const/high16 v4, 0x42c80000    # 100.0f

    .line 57
    .line 58
    aput v4, v1, v3

    .line 59
    .line 60
    invoke-virtual {v0, v2, v1}, Ld9/a;->k(I[F)Ld9/a;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iput-object v0, p0, Lmiuix/animation/controller/b;->f:Ld9/a;

    .line 65
    .line 66
    new-instance v0, Lmiuix/animation/controller/b$a;

    .line 67
    .line 68
    invoke-direct {v0, p0}, Lmiuix/animation/controller/b$a;-><init>(Lmiuix/animation/controller/b;)V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lmiuix/animation/controller/b;->g:Ljava/lang/Runnable;

    .line 72
    .line 73
    iput v3, p0, Lmiuix/animation/controller/b;->h:I

    .line 74
    .line 75
    invoke-direct {p0}, Lmiuix/animation/controller/b;->V()V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lmiuix/animation/controller/b;->e:Ld9/a;

    .line 79
    .line 80
    new-array v1, p1, [Lg9/b;

    .line 81
    .line 82
    new-instance v2, Lmiuix/animation/controller/b$d;

    .line 83
    .line 84
    invoke-direct {v2, p0}, Lmiuix/animation/controller/b$d;-><init>(Lmiuix/animation/controller/b;)V

    .line 85
    .line 86
    .line 87
    aput-object v2, v1, v3

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ld9/a;->a([Lg9/b;)Ld9/a;

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lmiuix/animation/controller/b;->d:Ld9/a;

    .line 93
    .line 94
    new-array v1, p1, [Lg9/b;

    .line 95
    .line 96
    new-instance v2, Lmiuix/animation/controller/b$e;

    .line 97
    .line 98
    invoke-direct {v2, p0}, Lmiuix/animation/controller/b$e;-><init>(Lmiuix/animation/controller/b;)V

    .line 99
    .line 100
    .line 101
    aput-object v2, v1, v3

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ld9/a;->a([Lg9/b;)Ld9/a;

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lmiuix/animation/controller/b;->f:Ld9/a;

    .line 107
    .line 108
    new-array p1, p1, [Lg9/b;

    .line 109
    .line 110
    new-instance v1, Lmiuix/animation/controller/b$f;

    .line 111
    .line 112
    invoke-direct {v1, p0}, Lmiuix/animation/controller/b$f;-><init>(Lmiuix/animation/controller/b;)V

    .line 113
    .line 114
    .line 115
    aput-object v1, p1, v3

    .line 116
    .line 117
    invoke-virtual {v0, p1}, Ld9/a;->a([Lg9/b;)Ld9/a;

    .line 118
    .line 119
    .line 120
    return-void
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
.end method

.method static synthetic S(Lmiuix/animation/controller/b;)Ld9/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/b;->d:Ld9/a;

    .line 2
    .line 3
    return-object p0
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

.method static synthetic T(Lmiuix/animation/controller/b;)Ld9/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/b;->e:Ld9/a;

    .line 2
    .line 3
    return-object p0
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

.method static synthetic U(Lmiuix/animation/controller/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/animation/controller/b;->c:I

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

.method private V()V
    .locals 5

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lmiuix/animation/controller/a;->a:Le9/c;

    .line 9
    .line 10
    invoke-interface {v1}, Le9/c;->getTarget()Lmiuix/animation/b;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lmiuix/animation/b;->getTargetObject()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    instance-of v2, v1, Landroid/view/View;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    check-cast v1, Landroid/view/View;

    .line 23
    .line 24
    sget v0, Lba/a;->a:I

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    :cond_0
    sget-object v1, Lmiuix/animation/property/i;->a:Lmiuix/animation/property/i$c;

    .line 35
    .line 36
    iget-object v2, p0, Lmiuix/animation/controller/a;->a:Le9/c;

    .line 37
    .line 38
    sget-object v3, Lmiuix/animation/IBlinkStyle$BlinkType;->HIGHLIGHT:Lmiuix/animation/IBlinkStyle$BlinkType;

    .line 39
    .line 40
    invoke-interface {v2, v3}, Le9/c;->w(Ljava/lang/Object;)Le9/a;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    int-to-double v3, v0

    .line 45
    invoke-virtual {v2, v1, v3, v4}, Le9/a;->a(Ljava/lang/Object;D)Le9/a;

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lmiuix/animation/controller/a;->a:Le9/c;

    .line 49
    .line 50
    sget-object v2, Lmiuix/animation/IBlinkStyle$BlinkType;->NORMAL:Lmiuix/animation/IBlinkStyle$BlinkType;

    .line 51
    .line 52
    invoke-interface {v0, v2}, Le9/c;->w(Ljava/lang/Object;)Le9/a;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-wide/16 v2, 0x0

    .line 57
    .line 58
    invoke-virtual {v0, v1, v2, v3}, Le9/a;->a(Ljava/lang/Object;D)Le9/a;

    .line 59
    .line 60
    .line 61
    return-void
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


# virtual methods
.method public varargs Q(I[Ld9/a;)V
    .locals 2

    .line 1
    iput p1, p0, Lmiuix/animation/controller/b;->c:I

    .line 2
    .line 3
    array-length p1, p2

    .line 4
    const/4 v0, 0x0

    .line 5
    if-lez p1, :cond_0

    .line 6
    .line 7
    aget-object p1, p2, v0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/b;->W(Ld9/a;)Lmiuix/animation/IBlinkStyle;

    .line 10
    .line 11
    .line 12
    array-length p1, p2

    .line 13
    const/4 v1, 0x1

    .line 14
    if-le p1, v1, :cond_0

    .line 15
    .line 16
    aget-object p1, p2, v1

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/b;->X(Ld9/a;)Lmiuix/animation/IBlinkStyle;

    .line 19
    .line 20
    .line 21
    :cond_0
    new-array p1, v0, [Ld9/a;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/b;->Y([Ld9/a;)V

    .line 24
    .line 25
    .line 26
    return-void
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

.method public W(Ld9/a;)Lmiuix/animation/IBlinkStyle;
    .locals 3

    .line 1
    iput-object p1, p0, Lmiuix/animation/controller/b;->d:Ld9/a;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    new-array v0, v0, [Lg9/b;

    .line 5
    .line 6
    new-instance v1, Lmiuix/animation/controller/b$b;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lmiuix/animation/controller/b$b;-><init>(Lmiuix/animation/controller/b;)V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ld9/a;->a([Lg9/b;)Ld9/a;

    .line 15
    .line 16
    .line 17
    return-object p0
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

.method public X(Ld9/a;)Lmiuix/animation/IBlinkStyle;
    .locals 3

    .line 1
    iput-object p1, p0, Lmiuix/animation/controller/b;->e:Ld9/a;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    new-array v0, v0, [Lg9/b;

    .line 5
    .line 6
    new-instance v1, Lmiuix/animation/controller/b$c;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lmiuix/animation/controller/b$c;-><init>(Lmiuix/animation/controller/b;)V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ld9/a;->a([Lg9/b;)Ld9/a;

    .line 15
    .line 16
    .line 17
    return-object p0
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

.method public varargs Y([Ld9/a;)V
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    if-lez v0, :cond_0

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    aget-object v0, p1, v0

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lmiuix/animation/controller/b;->W(Ld9/a;)Lmiuix/animation/IBlinkStyle;

    .line 8
    .line 9
    .line 10
    array-length v0, p1

    .line 11
    const/4 v1, 0x1

    .line 12
    if-le v0, v1, :cond_0

    .line 13
    .line 14
    aget-object p1, p1, v1

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/b;->X(Ld9/a;)Lmiuix/animation/IBlinkStyle;

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lmiuix/animation/controller/b;->g:Ljava/lang/Runnable;

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    iget-object p1, p0, Lmiuix/animation/controller/a;->a:Le9/c;

    .line 24
    .line 25
    invoke-interface {p1}, Le9/c;->getTarget()Lmiuix/animation/b;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object p1, p1, Lmiuix/animation/b;->handler:Lf9/n;

    .line 30
    .line 31
    iget-object v0, p0, Lmiuix/animation/controller/b;->g:Ljava/lang/Runnable;

    .line 32
    .line 33
    iget v1, p0, Lmiuix/animation/controller/b;->h:I

    .line 34
    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    const-wide/16 v1, 0x0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-wide v1, p0, Lmiuix/animation/controller/b;->b:J

    .line 41
    .line 42
    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 43
    .line 44
    .line 45
    :cond_2
    return-void
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

.method public n()V
    .locals 5

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/a;->a:Le9/c;

    .line 2
    .line 3
    invoke-interface {v0}, Le9/c;->getTarget()Lmiuix/animation/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lmiuix/animation/b;->handler:Lf9/n;

    .line 8
    .line 9
    iget-object v1, p0, Lmiuix/animation/controller/b;->g:Ljava/lang/Runnable;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lmiuix/animation/controller/a;->a:Le9/c;

    .line 15
    .line 16
    sget-object v1, Lmiuix/animation/IBlinkStyle$BlinkType;->NORMAL:Lmiuix/animation/IBlinkStyle$BlinkType;

    .line 17
    .line 18
    invoke-interface {v0, v1}, Le9/c;->w(Ljava/lang/Object;)Le9/a;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x1

    .line 23
    new-array v2, v2, [Ld9/a;

    .line 24
    .line 25
    iget-object v3, p0, Lmiuix/animation/controller/b;->f:Ld9/a;

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    aput-object v3, v2, v4

    .line 29
    .line 30
    invoke-interface {v0, v1, v2}, Lmiuix/animation/f;->J(Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 31
    .line 32
    .line 33
    return-void
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

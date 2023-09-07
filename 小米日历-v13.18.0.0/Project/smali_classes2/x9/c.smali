.class public Lx9/c;
.super Ljava/lang/Object;
.source "SplitScreenModeHelper.java"


# static fields
.field private static a:Landroid/graphics/Point;

.field private static b:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Point;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lx9/c;->a:Landroid/graphics/Point;

    .line 7
    .line 8
    new-instance v0, Landroid/graphics/Point;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lx9/c;->b:Landroid/graphics/Point;

    .line 14
    .line 15
    return-void
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

.method public static a(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lx9/c;->b(Landroid/content/Context;)Lx9/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget p0, p0, Lx9/b$a;->a:I

    .line 6
    .line 7
    return p0
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

.method public static b(Landroid/content/Context;)Lx9/b$a;
    .locals 5

    .line 1
    new-instance v0, Lx9/b$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lx9/b$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lx9/c;->a:Landroid/graphics/Point;

    .line 7
    .line 8
    sget-object v2, Lx9/c;->b:Landroid/graphics/Point;

    .line 9
    .line 10
    invoke-static {p0, v1, v2}, Lmiuix/core/util/j;->b(Landroid/content/Context;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lx9/c;->d()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    sget-object p0, Lx9/c;->b:Landroid/graphics/Point;

    .line 21
    .line 22
    iget p0, p0, Landroid/graphics/Point;->x:I

    .line 23
    .line 24
    int-to-float p0, p0

    .line 25
    sget-object v2, Lx9/c;->a:Landroid/graphics/Point;

    .line 26
    .line 27
    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 28
    .line 29
    :goto_0
    int-to-float v2, v2

    .line 30
    add-float/2addr v2, v1

    .line 31
    div-float/2addr p0, v2

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    sget-object p0, Lx9/c;->b:Landroid/graphics/Point;

    .line 34
    .line 35
    iget v2, p0, Landroid/graphics/Point;->x:I

    .line 36
    .line 37
    int-to-float v2, v2

    .line 38
    sget-object v3, Lx9/c;->a:Landroid/graphics/Point;

    .line 39
    .line 40
    iget v4, v3, Landroid/graphics/Point;->x:I

    .line 41
    .line 42
    int-to-float v4, v4

    .line 43
    add-float/2addr v4, v1

    .line 44
    div-float/2addr v2, v4

    .line 45
    const/high16 v4, 0x3f800000    # 1.0f

    .line 46
    .line 47
    cmpl-float v4, v2, v4

    .line 48
    .line 49
    if-nez v4, :cond_1

    .line 50
    .line 51
    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 52
    .line 53
    int-to-float p0, p0

    .line 54
    iget v2, v3, Landroid/graphics/Point;->y:I

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move p0, v2

    .line 58
    :goto_1
    sget-object v2, Lx9/c;->b:Landroid/graphics/Point;

    .line 59
    .line 60
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 61
    .line 62
    iput v3, v0, Lx9/b$a;->b:I

    .line 63
    .line 64
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 65
    .line 66
    iput v2, v0, Lx9/b$a;->c:I

    .line 67
    .line 68
    const v2, 0x3ecccccd    # 0.4f

    .line 69
    .line 70
    .line 71
    invoke-static {p0, v1, v2}, Lx9/c;->c(FFF)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_2

    .line 76
    .line 77
    const/16 p0, 0x1001

    .line 78
    .line 79
    iput p0, v0, Lx9/b$a;->a:I

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_2
    const v1, 0x3f19999a    # 0.6f

    .line 83
    .line 84
    .line 85
    invoke-static {p0, v2, v1}, Lx9/c;->c(FFF)Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_3

    .line 90
    .line 91
    const/16 p0, 0x1002

    .line 92
    .line 93
    iput p0, v0, Lx9/b$a;->a:I

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_3
    const v2, 0x3f4ccccd    # 0.8f

    .line 97
    .line 98
    .line 99
    invoke-static {p0, v1, v2}, Lx9/c;->c(FFF)Z

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    if-eqz p0, :cond_4

    .line 104
    .line 105
    const/16 p0, 0x1003

    .line 106
    .line 107
    iput p0, v0, Lx9/b$a;->a:I

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_4
    const/16 p0, 0x1004

    .line 111
    .line 112
    iput p0, v0, Lx9/b$a;->a:I

    .line 113
    .line 114
    :goto_2
    return-object v0
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

.method private static c(FFF)Z
    .locals 0

    cmpl-float p1, p0, p1

    if-ltz p1, :cond_0

    cmpg-float p0, p0, p2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static d()Z
    .locals 2

    .line 1
    sget-object v0, Lx9/c;->a:Landroid/graphics/Point;

    .line 2
    .line 3
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 4
    .line 5
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 6
    .line 7
    if-le v1, v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
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

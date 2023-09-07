.class public Lmiuix/animation/controller/FolmeFont;
.super Lmiuix/animation/controller/a;
.source "FolmeFont.java"

# interfaces
.implements Lmiuix/animation/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/controller/FolmeFont$FontType;
    }
.end annotation


# instance fields
.field private b:I

.field private c:Ld9/a;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Lmiuix/animation/b;

    .line 3
    .line 4
    invoke-direct {p0, v1}, Lmiuix/animation/controller/a;-><init>([Lmiuix/animation/b;)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Ld9/a;

    .line 8
    .line 9
    invoke-direct {v1}, Ld9/a;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lmiuix/animation/controller/FolmeFont;->c:Ld9/a;

    .line 13
    .line 14
    const/4 v2, 0x3

    .line 15
    new-array v2, v2, [F

    .line 16
    .line 17
    fill-array-data v2, :array_0

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v2}, Lj9/c;->e(I[F)Lj9/c$a;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v1, v0}, Ld9/a;->l(Lj9/c$a;)Ld9/a;

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    nop

    .line 29
    :array_0
    .array-data 4
        0x43af0000    # 350.0f
        0x3f666666    # 0.9f
        0x3f5c28f6    # 0.86f
    .end array-data
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
.method public varargs S(I[Ld9/a;)Lmiuix/animation/h;
    .locals 5

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/a;->a:Le9/c;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-boolean v1, p0, Lmiuix/animation/controller/FolmeFont;->d:Z

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    iput-boolean v2, p0, Lmiuix/animation/controller/FolmeFont;->d:Z

    .line 11
    .line 12
    sget-object v1, Lmiuix/animation/controller/FolmeFont$FontType;->INIT:Lmiuix/animation/controller/FolmeFont$FontType;

    .line 13
    .line 14
    invoke-interface {v0, v1}, Lmiuix/animation/f;->u(Ljava/lang/Object;)Lmiuix/animation/f;

    .line 15
    .line 16
    .line 17
    :cond_0
    new-array v0, v2, [Ld9/a;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iget-object v2, p0, Lmiuix/animation/controller/FolmeFont;->c:Ld9/a;

    .line 21
    .line 22
    aput-object v2, v0, v1

    .line 23
    .line 24
    invoke-static {p2, v0}, Lj9/a;->m([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    check-cast p2, [Ld9/a;

    .line 29
    .line 30
    iget v0, p0, Lmiuix/animation/controller/FolmeFont;->b:I

    .line 31
    .line 32
    if-ne v0, p1, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Lmiuix/animation/controller/a;->a:Le9/c;

    .line 35
    .line 36
    sget-object v0, Lmiuix/animation/controller/FolmeFont$FontType;->INIT:Lmiuix/animation/controller/FolmeFont$FontType;

    .line 37
    .line 38
    invoke-interface {p1, v0, p2}, Lmiuix/animation/f;->J(Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p0, Lmiuix/animation/controller/a;->a:Le9/c;

    .line 43
    .line 44
    sget-object v1, Lmiuix/animation/controller/FolmeFont$FontType;->TARGET:Lmiuix/animation/controller/FolmeFont$FontType;

    .line 45
    .line 46
    invoke-interface {v0, v1}, Le9/c;->w(Ljava/lang/Object;)Le9/a;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const/4 v2, 0x0

    .line 51
    int-to-double v3, p1

    .line 52
    invoke-virtual {v0, v2, v3, v4}, Le9/a;->a(Ljava/lang/Object;D)Le9/a;

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lmiuix/animation/controller/a;->a:Le9/c;

    .line 56
    .line 57
    invoke-interface {p1, v1, p2}, Lmiuix/animation/f;->J(Ljava/lang/Object;[Ld9/a;)Lmiuix/animation/f;

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_0
    return-object p0
    .line 61
    .line 62
    .line 63
    .line 64
.end method

.method public d()V
    .locals 1

    .line 1
    invoke-super {p0}, Lmiuix/animation/controller/a;->d()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lmiuix/animation/controller/a;->a:Le9/c;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lmiuix/animation/controller/FolmeFont;->b:I

    .line 9
    .line 10
    return-void
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

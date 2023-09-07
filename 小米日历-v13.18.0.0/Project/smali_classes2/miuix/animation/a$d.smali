.class Lmiuix/animation/a$d;
.super Ljava/lang/Object;
.source "Folme.java"

# interfaces
.implements Lmiuix/animation/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private a:Lmiuix/animation/f;

.field private b:Lmiuix/animation/ITouchStyle;

.field private c:Lmiuix/animation/IVisibleStyle;

.field private d:Lmiuix/animation/IHoverStyle;

.field private e:Lmiuix/animation/IBlinkStyle;

.field private f:[Lmiuix/animation/b;


# direct methods
.method private varargs constructor <init>([Lmiuix/animation/b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lmiuix/animation/a$d;->f:[Lmiuix/animation/b;

    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Lmiuix/animation/a;->a(Z)V

    .line 5
    invoke-static {}, Lmiuix/animation/a;->b()V

    return-void
.end method

.method synthetic constructor <init>([Lmiuix/animation/b;Lmiuix/animation/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmiuix/animation/a$d;-><init>([Lmiuix/animation/b;)V

    return-void
.end method


# virtual methods
.method public a()Lmiuix/animation/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/a$d;->a:Lmiuix/animation/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lmiuix/animation/a$d;->f:[Lmiuix/animation/b;

    .line 6
    .line 7
    invoke-static {v0}, Le9/d;->a([Lmiuix/animation/b;)Le9/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lmiuix/animation/a$d;->a:Lmiuix/animation/f;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lmiuix/animation/a$d;->a:Lmiuix/animation/f;

    .line 14
    .line 15
    return-object v0
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

.method public b()Lmiuix/animation/IVisibleStyle;
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/a$d;->c:Lmiuix/animation/IVisibleStyle;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lmiuix/animation/controller/e;

    .line 6
    .line 7
    iget-object v1, p0, Lmiuix/animation/a$d;->f:[Lmiuix/animation/b;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lmiuix/animation/controller/e;-><init>([Lmiuix/animation/b;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lmiuix/animation/a$d;->c:Lmiuix/animation/IVisibleStyle;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lmiuix/animation/a$d;->c:Lmiuix/animation/IVisibleStyle;

    .line 15
    .line 16
    return-object v0
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

.method public c()Lmiuix/animation/IHoverStyle;
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/a$d;->d:Lmiuix/animation/IHoverStyle;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lmiuix/animation/controller/c;

    .line 6
    .line 7
    iget-object v1, p0, Lmiuix/animation/a$d;->f:[Lmiuix/animation/b;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lmiuix/animation/controller/c;-><init>([Lmiuix/animation/b;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lmiuix/animation/a$d;->d:Lmiuix/animation/IHoverStyle;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lmiuix/animation/a$d;->d:Lmiuix/animation/IHoverStyle;

    .line 15
    .line 16
    return-object v0
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

.method public d()Lmiuix/animation/ITouchStyle;
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/a$d;->b:Lmiuix/animation/ITouchStyle;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lmiuix/animation/controller/d;

    .line 6
    .line 7
    iget-object v1, p0, Lmiuix/animation/a$d;->f:[Lmiuix/animation/b;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lmiuix/animation/controller/d;-><init>([Lmiuix/animation/b;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lmiuix/animation/controller/FolmeFont;

    .line 13
    .line 14
    invoke-direct {v1}, Lmiuix/animation/controller/FolmeFont;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lmiuix/animation/controller/d;->B0(Lmiuix/animation/controller/FolmeFont;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lmiuix/animation/a$d;->b:Lmiuix/animation/ITouchStyle;

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lmiuix/animation/a$d;->b:Lmiuix/animation/ITouchStyle;

    .line 23
    .line 24
    return-object v0
    .line 25
    .line 26
    .line 27
.end method

.method public e()Lmiuix/animation/IBlinkStyle;
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/a$d;->e:Lmiuix/animation/IBlinkStyle;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lmiuix/animation/controller/b;

    .line 6
    .line 7
    iget-object v1, p0, Lmiuix/animation/a$d;->f:[Lmiuix/animation/b;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lmiuix/animation/controller/b;-><init>([Lmiuix/animation/b;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lmiuix/animation/a$d;->e:Lmiuix/animation/IBlinkStyle;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lmiuix/animation/a$d;->e:Lmiuix/animation/IBlinkStyle;

    .line 15
    .line 16
    return-object v0
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

.method f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/a$d;->b:Lmiuix/animation/ITouchStyle;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lmiuix/animation/e;->d()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lmiuix/animation/a$d;->c:Lmiuix/animation/IVisibleStyle;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0}, Lmiuix/animation/e;->d()V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lmiuix/animation/a$d;->a:Lmiuix/animation/f;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-interface {v0}, Lmiuix/animation/e;->d()V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Lmiuix/animation/a$d;->d:Lmiuix/animation/IHoverStyle;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-interface {v0}, Lmiuix/animation/e;->d()V

    .line 27
    .line 28
    .line 29
    :cond_3
    return-void
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

.method g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/a$d;->b:Lmiuix/animation/ITouchStyle;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-array v2, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    invoke-interface {v0, v2}, Lmiuix/animation/c;->C([Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lmiuix/animation/a$d;->c:Lmiuix/animation/IVisibleStyle;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    new-array v2, v1, [Ljava/lang/Object;

    .line 16
    .line 17
    invoke-interface {v0, v2}, Lmiuix/animation/c;->C([Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lmiuix/animation/a$d;->a:Lmiuix/animation/f;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    new-array v2, v1, [Ljava/lang/Object;

    .line 25
    .line 26
    invoke-interface {v0, v2}, Lmiuix/animation/c;->C([Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_2
    iget-object v0, p0, Lmiuix/animation/a$d;->d:Lmiuix/animation/IHoverStyle;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    new-array v1, v1, [Ljava/lang/Object;

    .line 34
    .line 35
    invoke-interface {v0, v1}, Lmiuix/animation/c;->C([Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :cond_3
    return-void
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

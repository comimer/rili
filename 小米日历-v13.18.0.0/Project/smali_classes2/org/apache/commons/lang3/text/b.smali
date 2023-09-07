.class public abstract Lorg/apache/commons/lang3/text/b;
.super Ljava/lang/Object;
.source "StrMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/text/b$d;,
        Lorg/apache/commons/lang3/text/b$c;,
        Lorg/apache/commons/lang3/text/b$a;,
        Lorg/apache/commons/lang3/text/b$b;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final a:Lorg/apache/commons/lang3/text/b;

.field private static final b:Lorg/apache/commons/lang3/text/b;

.field private static final c:Lorg/apache/commons/lang3/text/b;

.field private static final d:Lorg/apache/commons/lang3/text/b;

.field private static final e:Lorg/apache/commons/lang3/text/b;

.field private static final f:Lorg/apache/commons/lang3/text/b;

.field private static final g:Lorg/apache/commons/lang3/text/b;

.field private static final h:Lorg/apache/commons/lang3/text/b;

.field private static final i:Lorg/apache/commons/lang3/text/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/text/b$a;

    .line 2
    .line 3
    const/16 v1, 0x2c

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/b$a;-><init>(C)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/apache/commons/lang3/text/b;->a:Lorg/apache/commons/lang3/text/b;

    .line 9
    .line 10
    new-instance v0, Lorg/apache/commons/lang3/text/b$a;

    .line 11
    .line 12
    const/16 v1, 0x9

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/b$a;-><init>(C)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lorg/apache/commons/lang3/text/b;->b:Lorg/apache/commons/lang3/text/b;

    .line 18
    .line 19
    new-instance v0, Lorg/apache/commons/lang3/text/b$a;

    .line 20
    .line 21
    const/16 v1, 0x20

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/b$a;-><init>(C)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lorg/apache/commons/lang3/text/b;->c:Lorg/apache/commons/lang3/text/b;

    .line 27
    .line 28
    new-instance v0, Lorg/apache/commons/lang3/text/b$b;

    .line 29
    .line 30
    const-string v1, " \t\n\r\u000c"

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/b$b;-><init>([C)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lorg/apache/commons/lang3/text/b;->d:Lorg/apache/commons/lang3/text/b;

    .line 40
    .line 41
    new-instance v0, Lorg/apache/commons/lang3/text/b$d;

    .line 42
    .line 43
    invoke-direct {v0}, Lorg/apache/commons/lang3/text/b$d;-><init>()V

    .line 44
    .line 45
    .line 46
    sput-object v0, Lorg/apache/commons/lang3/text/b;->e:Lorg/apache/commons/lang3/text/b;

    .line 47
    .line 48
    new-instance v0, Lorg/apache/commons/lang3/text/b$a;

    .line 49
    .line 50
    const/16 v1, 0x27

    .line 51
    .line 52
    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/b$a;-><init>(C)V

    .line 53
    .line 54
    .line 55
    sput-object v0, Lorg/apache/commons/lang3/text/b;->f:Lorg/apache/commons/lang3/text/b;

    .line 56
    .line 57
    new-instance v0, Lorg/apache/commons/lang3/text/b$a;

    .line 58
    .line 59
    const/16 v1, 0x22

    .line 60
    .line 61
    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/b$a;-><init>(C)V

    .line 62
    .line 63
    .line 64
    sput-object v0, Lorg/apache/commons/lang3/text/b;->g:Lorg/apache/commons/lang3/text/b;

    .line 65
    .line 66
    new-instance v0, Lorg/apache/commons/lang3/text/b$b;

    .line 67
    .line 68
    const-string v1, "\'\""

    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/b$b;-><init>([C)V

    .line 75
    .line 76
    .line 77
    sput-object v0, Lorg/apache/commons/lang3/text/b;->h:Lorg/apache/commons/lang3/text/b;

    .line 78
    .line 79
    new-instance v0, Lorg/apache/commons/lang3/text/b$c;

    .line 80
    .line 81
    invoke-direct {v0}, Lorg/apache/commons/lang3/text/b$c;-><init>()V

    .line 82
    .line 83
    .line 84
    sput-object v0, Lorg/apache/commons/lang3/text/b;->i:Lorg/apache/commons/lang3/text/b;

    .line 85
    .line 86
    return-void
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

.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
.end method

.method public static a()Lorg/apache/commons/lang3/text/b;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/text/b;->a:Lorg/apache/commons/lang3/text/b;

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

.method public static b()Lorg/apache/commons/lang3/text/b;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/text/b;->g:Lorg/apache/commons/lang3/text/b;

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

.method public static e()Lorg/apache/commons/lang3/text/b;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/text/b;->i:Lorg/apache/commons/lang3/text/b;

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

.method public static f()Lorg/apache/commons/lang3/text/b;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/text/b;->d:Lorg/apache/commons/lang3/text/b;

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

.method public static g()Lorg/apache/commons/lang3/text/b;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/text/b;->b:Lorg/apache/commons/lang3/text/b;

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

.method public static h()Lorg/apache/commons/lang3/text/b;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/text/b;->e:Lorg/apache/commons/lang3/text/b;

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


# virtual methods
.method public c([CI)I
    .locals 2

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v1, v0}, Lorg/apache/commons/lang3/text/b;->d([CIII)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
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

.method public abstract d([CIII)I
.end method

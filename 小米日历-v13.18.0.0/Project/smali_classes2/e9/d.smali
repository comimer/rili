.class public Le9/d;
.super Ljava/lang/Object;
.source "StateComposer.java"


# static fields
.field private static final a:Lj9/h$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj9/h$b<",
            "Le9/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le9/d$a;

    .line 2
    .line 3
    invoke-direct {v0}, Le9/d$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Le9/d;->a:Lj9/h$b;

    .line 7
    .line 8
    return-void
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

.method public static varargs a([Lmiuix/animation/b;)Le9/c;
    .locals 4

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    array-length v0, p0

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne v0, v2, :cond_1

    .line 11
    .line 12
    new-instance v0, Le9/b;

    .line 13
    .line 14
    aget-object p0, p0, v1

    .line 15
    .line 16
    invoke-direct {v0, p0}, Le9/b;-><init>(Lmiuix/animation/b;)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    array-length v0, p0

    .line 21
    new-array v0, v0, [Le9/b;

    .line 22
    .line 23
    :goto_0
    array-length v2, p0

    .line 24
    if-ge v1, v2, :cond_2

    .line 25
    .line 26
    new-instance v2, Le9/b;

    .line 27
    .line 28
    aget-object v3, p0, v1

    .line 29
    .line 30
    invoke-direct {v2, v3}, Le9/b;-><init>(Lmiuix/animation/b;)V

    .line 31
    .line 32
    .line 33
    aput-object v2, v0, v1

    .line 34
    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const-class p0, Le9/c;

    .line 39
    .line 40
    sget-object v1, Le9/d;->a:Lj9/h$b;

    .line 41
    .line 42
    invoke-static {p0, v1, v0}, Lj9/h;->a(Ljava/lang/Class;Lj9/h$b;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Le9/c;

    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 50
    return-object p0
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

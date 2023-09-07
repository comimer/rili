.class public final Loc/a;
.super Ljava/lang/Object;
.source "TaskContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loc/a$c;,
        Loc/a$a;,
        Loc/a$b;,
        Loc/a$g;,
        Loc/a$e;,
        Loc/a$f;,
        Loc/a$d;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Loc/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Loc/a;->a:Ljava/util/Map;

    .line 8
    .line 9
    return-void
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

.method static synthetic a(Ljava/lang/String;)Loc/b;
    .locals 0

    .line 1
    invoke-static {p0}, Loc/a;->b(Ljava/lang/String;)Loc/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
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

.method private static declared-synchronized b(Ljava/lang/String;)Loc/b;
    .locals 3

    .line 1
    const-class v0, Loc/a;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Loc/a;->a:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Loc/b;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Loc/b;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Loc/b;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v2, "syncstate"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Loc/b;->a(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v2, "tasklists"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Loc/b;->a(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v2, "tasks"

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Loc/b;->a(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v2, "tasks_search"

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Loc/b;->a(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v2, "instances"

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Loc/b;->a(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string v2, "categories"

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Loc/b;->a(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v2, "alarms"

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Loc/b;->a(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v2, "properties"

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Loc/b;->a(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sget-object v2, Loc/a;->a:Ljava/util/Map;

    .line 60
    .line 61
    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    :cond_0
    monitor-exit v0

    .line 65
    return-object v1

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    monitor-exit v0

    .line 68
    throw p0
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

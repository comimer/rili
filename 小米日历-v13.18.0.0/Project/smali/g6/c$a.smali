.class Lg6/c$a;
.super Ljava/lang/Object;
.source "SysAnalytics.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg6/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lg6/c;


# direct methods
.method constructor <init>(Lg6/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg6/c$a;->a:Lg6/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lg6/c$a;->a:Lg6/c;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Lg6/c;->c(Lg6/c;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lg6/c$a;->a:Lg6/c;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {p1, v1}, Lg6/c;->f(Lg6/c;Z)Z

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lg6/c$a;->a:Lg6/c;

    .line 14
    .line 15
    invoke-static {p2}, Lcom/miui/analytics/ICore$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/analytics/ICore;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-static {p1, p2}, Lg6/c;->e(Lg6/c;Lcom/miui/analytics/ICore;)Lcom/miui/analytics/ICore;

    .line 20
    .line 21
    .line 22
    const-string p1, "SysAnalytics"

    .line 23
    .line 24
    invoke-static {p1}, Lf6/a;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string p2, "onServiceConnected %s, pid:%d, tid:%d"

    .line 29
    .line 30
    const/4 v2, 0x3

    .line 31
    new-array v2, v2, [Ljava/lang/Object;

    .line 32
    .line 33
    iget-object v3, p0, Lg6/c$a;->a:Lg6/c;

    .line 34
    .line 35
    invoke-static {v3}, Lg6/c;->d(Lg6/c;)Lcom/miui/analytics/ICore;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    aput-object v3, v2, v1

    .line 40
    .line 41
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    aput-object v1, v2, v0

    .line 50
    .line 51
    invoke-static {}, Landroid/os/Process;->myTid()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const/4 v1, 0x2

    .line 60
    aput-object v0, v2, v1

    .line 61
    .line 62
    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lg6/c$a;->a:Lg6/c;

    .line 70
    .line 71
    invoke-static {p1}, Lg6/c;->g(Lg6/c;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    monitor-enter p1

    .line 76
    :try_start_0
    iget-object p2, p0, Lg6/c$a;->a:Lg6/c;

    .line 77
    .line 78
    invoke-static {p2}, Lg6/c;->g(Lg6/c;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :catchall_0
    move-exception p2

    .line 87
    goto :goto_1

    .line 88
    :catch_0
    move-exception p2

    .line 89
    :try_start_1
    const-string v0, "SysAnalytics"

    .line 90
    .line 91
    invoke-static {v0}, Lf6/a;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const-string v1, "onServiceConnected notifyAll exception:"

    .line 96
    .line 97
    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    .line 99
    .line 100
    :goto_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    iget-object p1, p0, Lg6/c$a;->a:Lg6/c;

    .line 102
    .line 103
    invoke-static {p1}, Lg6/c;->h(Lg6/c;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :goto_1
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    throw p2
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
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    .line 1
    const-string p1, "SysAnalytics"

    .line 2
    .line 3
    invoke-static {p1}, Lf6/a;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x2

    .line 8
    new-array v0, v0, [Ljava/lang/Object;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    aput-object v1, v0, v2

    .line 20
    .line 21
    invoke-static {}, Landroid/os/Process;->myTid()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v3, 0x1

    .line 30
    aput-object v1, v0, v3

    .line 31
    .line 32
    const-string v1, "onServiceDisconnected, pid:%d, tid:%d"

    .line 33
    .line 34
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lg6/c$a;->a:Lg6/c;

    .line 42
    .line 43
    invoke-static {p1, v2}, Lg6/c;->c(Lg6/c;Z)Z

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lg6/c$a;->a:Lg6/c;

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    invoke-static {p1, v0}, Lg6/c;->e(Lg6/c;Lcom/miui/analytics/ICore;)Lcom/miui/analytics/ICore;

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lg6/c$a;->a:Lg6/c;

    .line 53
    .line 54
    invoke-static {p1, v2}, Lg6/c;->f(Lg6/c;Z)Z

    .line 55
    .line 56
    .line 57
    return-void
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
.end method

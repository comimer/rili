.class public abstract Li3/b;
.super Ljava/lang/Object;
.source "ServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li3/b$b;,
        Li3/b$a;
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/String;

.field private final b:Landroid/content/Context;

.field protected final c:Landroid/content/Intent;

.field private d:Li3/b$b;

.field private e:Ljava/lang/String;

.field private final f:Landroid/content/ServiceConnection;

.field private g:I

.field private h:J

.field private i:Z

.field private j:Z

.field private k:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, " unnamed"

    .line 5
    .line 6
    iput-object v0, p0, Li3/b;->e:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Li3/b$a;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, p0, v1}, Li3/b$a;-><init>(Li3/b;Li3/a;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Li3/b;->f:Landroid/content/ServiceConnection;

    .line 15
    .line 16
    const/16 v0, 0x2d

    .line 17
    .line 18
    iput v0, p0, Li3/b;->g:I

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Li3/b;->i:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Li3/b;->j:Z

    .line 24
    .line 25
    iput-object p1, p0, Li3/b;->b:Landroid/content/Context;

    .line 26
    .line 27
    iput-object p2, p0, Li3/b;->c:Landroid/content/Intent;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Li3/b;->a:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    iget p1, p0, Li3/b;->g:I

    .line 46
    .line 47
    shl-int/lit8 p1, p1, 0x2

    .line 48
    .line 49
    iput p1, p0, Li3/b;->g:I

    .line 50
    .line 51
    :cond_0
    iget-object p1, p0, Li3/b;->k:Ljava/util/concurrent/Executor;

    .line 52
    .line 53
    if-nez p1, :cond_1

    .line 54
    .line 55
    const/16 p1, 0x64

    .line 56
    .line 57
    const/4 p2, 0x5

    .line 58
    const-string v0, "ServiceProxy"

    .line 59
    .line 60
    invoke-static {p2, p1, p2, v0}, Lcom/market/sdk/k;->a(IIILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p0, Li3/b;->k:Ljava/util/concurrent/Executor;

    .line 65
    .line 66
    :cond_1
    return-void
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

.method static synthetic n0(Li3/b;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    iget-object p0, p0, Li3/b;->k:Ljava/util/concurrent/Executor;

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
.end method

.method static synthetic o0(Li3/b;)Li3/b$b;
    .locals 0

    .line 1
    iget-object p0, p0, Li3/b;->d:Li3/b$b;

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
.end method

.method static synthetic p0(Li3/b;)Landroid/content/ServiceConnection;
    .locals 0

    .line 1
    iget-object p0, p0, Li3/b;->f:Landroid/content/ServiceConnection;

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
.end method

.method static synthetic q0(Li3/b;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Li3/b;->b:Landroid/content/Context;

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
.end method

.method static synthetic r0(Li3/b;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Li3/b;->j:Z

    .line 2
    .line 3
    return p1
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
.end method


# virtual methods
.method public abstract s0(Landroid/os/IBinder;)V
.end method

.method public abstract t0()V
.end method

.method protected u0(Li3/b$b;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Li3/b;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Li3/b;->i:Z

    .line 7
    .line 8
    iput-object p2, p0, Li3/b;->e:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p1, p0, Li3/b;->d:Li3/b$b;

    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide p1

    .line 16
    iput-wide p1, p0, Li3/b;->h:J

    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Li3/b;->b:Landroid/content/Context;

    .line 22
    .line 23
    iget-object p2, p0, Li3/b;->c:Landroid/content/Intent;

    .line 24
    .line 25
    iget-object v1, p0, Li3/b;->f:Landroid/content/ServiceConnection;

    .line 26
    .line 27
    invoke-virtual {p1, p2, v1, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    return p1

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    const-string p2, "Cannot call setTask twice on the same ServiceProxy."

    .line 35
    .line 36
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method protected v0()V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Li3/b;->f:Landroid/content/ServiceConnection;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    :try_start_1
    iget-object v1, p0, Li3/b;->f:Landroid/content/ServiceConnection;

    .line 18
    .line 19
    iget v2, p0, Li3/b;->g:I

    .line 20
    .line 21
    int-to-long v2, v2

    .line 22
    const-wide/16 v4, 0x3e8

    .line 23
    .line 24
    mul-long/2addr v2, v4

    .line 25
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .line 27
    .line 28
    :catch_0
    :try_start_2
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    throw v1

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    const-string v1, "This cannot be called on the main thread."

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0
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
.end method

.class public final Lkotlinx/coroutines/n0;
.super Lkotlinx/coroutines/d1;
.source "DefaultExecutor.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u00c0\u0002\u0018\u00002\u00020\u00012\u00060\u0002j\u0002`\u0003B\t\u0008\u0002\u00a2\u0006\u0004\u0008,\u0010 J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0007\u001a\u00020\u0006H\u0002J\u0008\u0010\t\u001a\u00020\u0008H\u0002J\u0008\u0010\n\u001a\u00020\u0004H\u0002J\u0014\u0010\u000c\u001a\u00020\u00042\n\u0010\u000b\u001a\u00060\u0002j\u0002`\u0003H\u0016J\u0018\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0014J\u0008\u0010\u0012\u001a\u00020\u0004H\u0016J$\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\r2\n\u0010\u0014\u001a\u00060\u0002j\u0002`\u00032\u0006\u0010\u0016\u001a\u00020\u0015H\u0016J\u0008\u0010\u0019\u001a\u00020\u0004H\u0016R\u0014\u0010\u001c\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u001e\u0010\u001d\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u0012\u0004\u0008\u001f\u0010 R\u0016\u0010\"\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0014\u0010&\u001a\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010%R\u0014\u0010(\u001a\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010%R\u0014\u0010+\u001a\u00020\u00068TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010*\u00a8\u0006-"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "Lkotlinx/coroutines/d1;",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "Lkotlin/u;",
        "b1",
        "Ljava/lang/Thread;",
        "X0",
        "",
        "a1",
        "W0",
        "task",
        "M0",
        "",
        "now",
        "Lkotlinx/coroutines/d1$c;",
        "delayedTask",
        "H0",
        "shutdown",
        "timeMillis",
        "block",
        "Lkotlin/coroutines/CoroutineContext;",
        "context",
        "Lkotlinx/coroutines/y0;",
        "V",
        "run",
        "h",
        "J",
        "KEEP_ALIVE_NANOS",
        "_thread",
        "Ljava/lang/Thread;",
        "get_thread$annotations",
        "()V",
        "",
        "debugStatus",
        "I",
        "Y0",
        "()Z",
        "isShutDown",
        "Z0",
        "isShutdownRequested",
        "G0",
        "()Ljava/lang/Thread;",
        "thread",
        "<init>",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field private static volatile _thread:Ljava/lang/Thread;

.field private static volatile debugStatus:I

.field public static final g:Lkotlinx/coroutines/n0;

.field private static final h:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlinx/coroutines/n0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkotlinx/coroutines/n0;->g:Lkotlinx/coroutines/n0;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {v0, v1, v2, v3}, Lkotlinx/coroutines/c1;->A0(Lkotlinx/coroutines/c1;ZILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 15
    .line 16
    const-wide/16 v1, 0x3e8

    .line 17
    .line 18
    :try_start_0
    const-string v3, "kotlinx.coroutines.DefaultExecutor.keepAlive"

    .line 19
    .line 20
    invoke-static {v3, v1, v2}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    sput-wide v0, Lkotlinx/coroutines/n0;->h:J

    .line 38
    .line 39
    return-void
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

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/d1;-><init>()V

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

.method private final declared-synchronized W0()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lkotlinx/coroutines/n0;->Z0()Z

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x3

    .line 11
    :try_start_1
    sput v0, Lkotlinx/coroutines/n0;->debugStatus:I

    .line 12
    .line 13
    invoke-virtual {p0}, Lkotlinx/coroutines/d1;->Q0()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    monitor-exit p0

    .line 23
    throw v0
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method private final declared-synchronized X0()Ljava/lang/Thread;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lkotlinx/coroutines/n0;->_thread:Ljava/lang/Thread;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/lang/Thread;

    .line 7
    .line 8
    const-string v1, "kotlinx.coroutines.DefaultExecutor"

    .line 9
    .line 10
    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lkotlinx/coroutines/n0;->_thread:Ljava/lang/Thread;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    :cond_0
    monitor-exit p0

    .line 23
    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    monitor-exit p0

    .line 26
    throw v0
    .line 27
.end method

.method private final Y0()Z
    .locals 2

    .line 1
    sget v0, Lkotlinx/coroutines/n0;->debugStatus:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
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

.method private final Z0()Z
    .locals 2

    .line 1
    sget v0, Lkotlinx/coroutines/n0;->debugStatus:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
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

.method private final declared-synchronized a1()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lkotlinx/coroutines/n0;->Z0()Z

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    monitor-exit p0

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    :try_start_1
    sput v0, Lkotlinx/coroutines/n0;->debugStatus:I

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return v0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    monitor-exit p0

    .line 21
    throw v0
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method private final b1()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    .line 2
    .line 3
    const-string v1, "DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
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
.method protected G0()Ljava/lang/Thread;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/n0;->_thread:Ljava/lang/Thread;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lkotlinx/coroutines/n0;->X0()Ljava/lang/Thread;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
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

.method protected H0(JLkotlinx/coroutines/d1$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/n0;->b1()V

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

.method public M0(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/n0;->Y0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lkotlinx/coroutines/n0;->b1()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-super {p0, p1}, Lkotlinx/coroutines/d1;->M0(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
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

.method public V(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/y0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/d1;->T0(JLjava/lang/Runnable;)Lkotlinx/coroutines/y0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
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
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
.end method

.method public run()V
    .locals 12

    .line 1
    sget-object v0, Lkotlinx/coroutines/t2;->a:Lkotlinx/coroutines/t2;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/t2;->d(Lkotlinx/coroutines/c1;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lkotlinx/coroutines/c;->a()Lkotlinx/coroutines/b;

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :try_start_0
    invoke-direct {p0}, Lkotlinx/coroutines/n0;->a1()Z

    .line 11
    .line 12
    .line 13
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    sput-object v0, Lkotlinx/coroutines/n0;->_thread:Ljava/lang/Thread;

    .line 17
    .line 18
    invoke-direct {p0}, Lkotlinx/coroutines/n0;->W0()V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lkotlinx/coroutines/c;->a()Lkotlinx/coroutines/b;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lkotlinx/coroutines/d1;->O0()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Lkotlinx/coroutines/n0;->G0()Ljava/lang/Thread;

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void

    .line 34
    :cond_1
    const-wide v1, 0x7fffffffffffffffL

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    move-wide v3, v1

    .line 40
    :cond_2
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lkotlinx/coroutines/d1;->D0()J

    .line 44
    .line 45
    .line 46
    move-result-wide v5

    .line 47
    cmp-long v7, v5, v1

    .line 48
    .line 49
    const-wide/16 v8, 0x0

    .line 50
    .line 51
    if-nez v7, :cond_6

    .line 52
    .line 53
    invoke-static {}, Lkotlinx/coroutines/c;->a()Lkotlinx/coroutines/b;

    .line 54
    .line 55
    .line 56
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 57
    .line 58
    .line 59
    move-result-wide v10

    .line 60
    cmp-long v7, v3, v1

    .line 61
    .line 62
    if-nez v7, :cond_3

    .line 63
    .line 64
    sget-wide v3, Lkotlinx/coroutines/n0;->h:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    .line 66
    add-long/2addr v3, v10

    .line 67
    :cond_3
    sub-long v10, v3, v10

    .line 68
    .line 69
    cmp-long v7, v10, v8

    .line 70
    .line 71
    if-gtz v7, :cond_5

    .line 72
    .line 73
    sput-object v0, Lkotlinx/coroutines/n0;->_thread:Ljava/lang/Thread;

    .line 74
    .line 75
    invoke-direct {p0}, Lkotlinx/coroutines/n0;->W0()V

    .line 76
    .line 77
    .line 78
    invoke-static {}, Lkotlinx/coroutines/c;->a()Lkotlinx/coroutines/b;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lkotlinx/coroutines/d1;->O0()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_4

    .line 86
    .line 87
    invoke-virtual {p0}, Lkotlinx/coroutines/n0;->G0()Ljava/lang/Thread;

    .line 88
    .line 89
    .line 90
    :cond_4
    return-void

    .line 91
    :cond_5
    :try_start_2
    invoke-static {v5, v6, v10, v11}, Lb8/g;->g(JJ)J

    .line 92
    .line 93
    .line 94
    move-result-wide v5

    .line 95
    goto :goto_1

    .line 96
    :cond_6
    move-wide v3, v1

    .line 97
    :goto_1
    cmp-long v7, v5, v8

    .line 98
    .line 99
    if-lez v7, :cond_2

    .line 100
    .line 101
    invoke-direct {p0}, Lkotlinx/coroutines/n0;->Z0()Z

    .line 102
    .line 103
    .line 104
    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    if-eqz v7, :cond_8

    .line 106
    .line 107
    sput-object v0, Lkotlinx/coroutines/n0;->_thread:Ljava/lang/Thread;

    .line 108
    .line 109
    invoke-direct {p0}, Lkotlinx/coroutines/n0;->W0()V

    .line 110
    .line 111
    .line 112
    invoke-static {}, Lkotlinx/coroutines/c;->a()Lkotlinx/coroutines/b;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Lkotlinx/coroutines/d1;->O0()Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-nez v0, :cond_7

    .line 120
    .line 121
    invoke-virtual {p0}, Lkotlinx/coroutines/n0;->G0()Ljava/lang/Thread;

    .line 122
    .line 123
    .line 124
    :cond_7
    return-void

    .line 125
    :cond_8
    :try_start_3
    invoke-static {}, Lkotlinx/coroutines/c;->a()Lkotlinx/coroutines/b;

    .line 126
    .line 127
    .line 128
    invoke-static {p0, v5, v6}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :catchall_0
    move-exception v1

    .line 133
    sput-object v0, Lkotlinx/coroutines/n0;->_thread:Ljava/lang/Thread;

    .line 134
    .line 135
    invoke-direct {p0}, Lkotlinx/coroutines/n0;->W0()V

    .line 136
    .line 137
    .line 138
    invoke-static {}, Lkotlinx/coroutines/c;->a()Lkotlinx/coroutines/b;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Lkotlinx/coroutines/d1;->O0()Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-nez v0, :cond_9

    .line 146
    .line 147
    invoke-virtual {p0}, Lkotlinx/coroutines/n0;->G0()Ljava/lang/Thread;

    .line 148
    .line 149
    .line 150
    :cond_9
    throw v1
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
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
.end method

.method public shutdown()V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    sput v0, Lkotlinx/coroutines/n0;->debugStatus:I

    .line 3
    .line 4
    invoke-super {p0}, Lkotlinx/coroutines/d1;->shutdown()V

    .line 5
    .line 6
    .line 7
    return-void
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

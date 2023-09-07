.class public Lcom/miui/maml/RenderVsyncUpdater;
.super Ljava/lang/Object;
.source "RenderVsyncUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;,
        Lcom/miui/maml/RenderVsyncUpdater$RenderVsyncUpdaterHolder;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RenderVsyncUpdater"


# instance fields
.field private mDisplayEventReceiver:Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mPaused:Z

.field private mRendererControllerList:Ln/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln/b<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/RendererController;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScheduleFrame:Ljava/lang/Runnable;

.field private mStopRefresh:Z

.field private mSyncInterval:I

.field private mVsyncLeft:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ln/b;

    invoke-direct {v0}, Ln/b;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Ln/b;

    const/16 v0, 0x10

    .line 4
    iput v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mSyncInterval:I

    .line 5
    new-instance v0, Lcom/miui/maml/RenderVsyncUpdater$1;

    invoke-direct {v0, p0}, Lcom/miui/maml/RenderVsyncUpdater$1;-><init>(Lcom/miui/maml/RenderVsyncUpdater;)V

    iput-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mScheduleFrame:Ljava/lang/Runnable;

    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.ui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 9
    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/miui/maml/RenderVsyncUpdater;->mHandler:Landroid/os/Handler;

    .line 10
    new-instance v1, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;

    invoke-direct {v1, p0, v0}, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;-><init>(Lcom/miui/maml/RenderVsyncUpdater;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/miui/maml/RenderVsyncUpdater;->mDisplayEventReceiver:Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/maml/RenderVsyncUpdater$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/RenderVsyncUpdater;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/maml/RenderVsyncUpdater;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/RenderVsyncUpdater;->scheduleFrame()V

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
.end method

.method static synthetic access$200(Lcom/miui/maml/RenderVsyncUpdater;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    .line 2
    .line 3
    return-wide v0
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

.method static synthetic access$222(Lcom/miui/maml/RenderVsyncUpdater;J)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    .line 2
    .line 3
    sub-long/2addr v0, p1

    .line 4
    iput-wide v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    .line 5
    .line 6
    return-wide v0
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

.method static synthetic access$300(Lcom/miui/maml/RenderVsyncUpdater;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mHandler:Landroid/os/Handler;

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

.method static synthetic access$400(Lcom/miui/maml/RenderVsyncUpdater;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mPaused:Z

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
.end method

.method static synthetic access$500(Lcom/miui/maml/RenderVsyncUpdater;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mStopRefresh:Z

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
.end method

.method private doRunUpdater()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mDisplayEventReceiver:Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->scheduleVsync()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mHandler:Landroid/os/Handler;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/miui/maml/RenderVsyncUpdater;->mScheduleFrame:Ljava/lang/Runnable;

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/miui/maml/b;->a(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mHandler:Landroid/os/Handler;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/miui/maml/RenderVsyncUpdater;->mScheduleFrame:Ljava/lang/Runnable;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
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
.end method

.method public static getInstance()Lcom/miui/maml/RenderVsyncUpdater;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/maml/RenderVsyncUpdater$RenderVsyncUpdaterHolder;->INSTANCE:Lcom/miui/maml/RenderVsyncUpdater;

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
.end method

.method private scheduleFrame()V
    .locals 14

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Ln/b;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    iget-object v3, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Ln/b;

    .line 9
    .line 10
    invoke-virtual {v3}, Ln/b;->size()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    add-int/lit8 v4, v3, -0x1

    .line 15
    .line 16
    const-wide v5, 0x7fffffffffffffffL

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    const/4 v7, 0x1

    .line 22
    move-wide v9, v5

    .line 23
    move v8, v7

    .line 24
    :goto_0
    const/4 v11, 0x0

    .line 25
    if-ltz v4, :cond_4

    .line 26
    .line 27
    iget-object v12, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Ln/b;

    .line 28
    .line 29
    invoke-virtual {v12, v4}, Ln/b;->n(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v12

    .line 33
    check-cast v12, Ljava/lang/ref/WeakReference;

    .line 34
    .line 35
    invoke-virtual {v12}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v12

    .line 39
    check-cast v12, Lcom/miui/maml/RendererController;

    .line 40
    .line 41
    if-nez v12, :cond_0

    .line 42
    .line 43
    iget-object v11, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Ln/b;

    .line 44
    .line 45
    invoke-virtual {v11, v4}, Ln/b;->m(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    invoke-virtual {v12}, Lcom/miui/maml/RendererController;->isSelfPaused()Z

    .line 50
    .line 51
    .line 52
    move-result v13

    .line 53
    if-eqz v13, :cond_1

    .line 54
    .line 55
    invoke-virtual {v12}, Lcom/miui/maml/RendererController;->hasRunnable()Z

    .line 56
    .line 57
    .line 58
    move-result v13

    .line 59
    if-nez v13, :cond_1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {v12}, Lcom/miui/maml/RendererController;->hasInited()Z

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    if-nez v8, :cond_2

    .line 67
    .line 68
    invoke-virtual {v12}, Lcom/miui/maml/RendererController;->init()V

    .line 69
    .line 70
    .line 71
    :cond_2
    invoke-virtual {v12, v0, v1}, Lcom/miui/maml/RendererController;->updateIfNeeded(J)J

    .line 72
    .line 73
    .line 74
    move-result-wide v12

    .line 75
    cmp-long v8, v12, v9

    .line 76
    .line 77
    if-gez v8, :cond_3

    .line 78
    .line 79
    move v8, v11

    .line 80
    move-wide v9, v12

    .line 81
    goto :goto_1

    .line 82
    :cond_3
    move v8, v11

    .line 83
    :goto_1
    add-int/lit8 v4, v4, -0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_4
    if-eqz v3, :cond_6

    .line 87
    .line 88
    if-eqz v8, :cond_5

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_5
    iput-boolean v11, p0, Lcom/miui/maml/RenderVsyncUpdater;->mPaused:Z

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_6
    :goto_2
    iput-boolean v7, p0, Lcom/miui/maml/RenderVsyncUpdater;->mPaused:Z

    .line 95
    .line 96
    const-string v0, "RenderVsyncUpdater"

    .line 97
    .line 98
    const-string v1, "All controllers paused."

    .line 99
    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    cmp-long v0, v9, v5

    .line 105
    .line 106
    if-nez v0, :cond_7

    .line 107
    .line 108
    iput-boolean v7, p0, Lcom/miui/maml/RenderVsyncUpdater;->mStopRefresh:Z

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_7
    iput-boolean v11, p0, Lcom/miui/maml/RenderVsyncUpdater;->mStopRefresh:Z

    .line 112
    .line 113
    :goto_4
    iget-boolean v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mStopRefresh:Z

    .line 114
    .line 115
    if-nez v0, :cond_9

    .line 116
    .line 117
    iget-boolean v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mPaused:Z

    .line 118
    .line 119
    if-nez v0, :cond_9

    .line 120
    .line 121
    const-wide/16 v0, 0x0

    .line 122
    .line 123
    cmp-long v2, v9, v0

    .line 124
    .line 125
    if-lez v2, :cond_9

    .line 126
    .line 127
    iget v2, p0, Lcom/miui/maml/RenderVsyncUpdater;->mSyncInterval:I

    .line 128
    .line 129
    int-to-long v2, v2

    .line 130
    div-long/2addr v9, v2

    .line 131
    iput-wide v9, p0, Lcom/miui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    .line 132
    .line 133
    cmp-long v0, v9, v0

    .line 134
    .line 135
    if-lez v0, :cond_8

    .line 136
    .line 137
    const-wide/16 v0, 0x1

    .line 138
    .line 139
    sub-long/2addr v9, v0

    .line 140
    iput-wide v9, p0, Lcom/miui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    .line 141
    .line 142
    :cond_8
    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mDisplayEventReceiver:Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;

    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->scheduleVsync()V

    .line 145
    .line 146
    .line 147
    :cond_9
    return-void

    .line 148
    :catchall_0
    move-exception v0

    .line 149
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    throw v0
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
.end method


# virtual methods
.method public addRendererController(Lcom/miui/maml/RendererController;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Ln/b;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Ln/b;

    .line 5
    .line 6
    invoke-virtual {v1}, Ln/b;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_1

    .line 12
    .line 13
    iget-object v3, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Ln/b;

    .line 14
    .line 15
    invoke-virtual {v3, v2}, Ln/b;->n(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lcom/miui/maml/RendererController;

    .line 26
    .line 27
    if-ne v3, p1, :cond_0

    .line 28
    .line 29
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object v1, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Ln/b;

    .line 35
    .line 36
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 37
    .line 38
    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ln/b;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    monitor-exit v0

    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw p1
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
.end method

.method public forceUpdate()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/miui/maml/RenderVsyncUpdater;->doRunUpdater()V

    .line 6
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
.end method

.method public onResume()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mPaused:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mStopRefresh:Z

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/miui/maml/RenderVsyncUpdater;->forceUpdate()V

    .line 7
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
.end method

.method public removeRendererController(Lcom/miui/maml/RendererController;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Ln/b;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Ln/b;

    .line 5
    .line 6
    invoke-virtual {v1}, Ln/b;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    add-int/lit8 v1, v1, -0x1

    .line 11
    .line 12
    :goto_0
    if-ltz v1, :cond_2

    .line 13
    .line 14
    iget-object v2, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Ln/b;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Ln/b;->n(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/miui/maml/RendererController;

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    if-ne v2, p1, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Ln/b;

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Ln/b;->m(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    :cond_2
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p1
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
.end method

.method public setSyncInterval(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/maml/RenderVsyncUpdater;->mSyncInterval:I

    .line 2
    .line 3
    return-void
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

.method public triggerUpdate()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/RenderVsyncUpdater;->doRunUpdater()V

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
.end method

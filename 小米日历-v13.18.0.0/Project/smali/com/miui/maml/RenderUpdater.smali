.class public abstract Lcom/miui/maml/RenderUpdater;
.super Ljava/lang/Object;
.source "RenderUpdater.java"

# interfaces
.implements Lcom/miui/maml/RendererController$ISelfUpdateRenderable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mAutoCleanup:Z

.field private mCreateTime:J

.field private mDelay:J

.field private mHandler:Landroid/os/Handler;

.field protected mLastUpdateTime:J

.field protected mNextUpdateInterval:J

.field private mPaused:Z

.field protected mPendingRender:Z

.field private mRoot:Lcom/miui/maml/ScreenElementRoot;

.field private mRunUpdater:Ljava/lang/Runnable;

.field private mSignaled:Z

.field private mStarted:Z

.field private mUpdater:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/maml/RenderUpdater;-><init>(Lcom/miui/maml/ScreenElementRoot;Landroid/os/Handler;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;Landroid/os/Handler;Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/miui/maml/RenderUpdater$1;

    invoke-direct {v0, p0}, Lcom/miui/maml/RenderUpdater$1;-><init>(Lcom/miui/maml/RenderUpdater;)V

    iput-object v0, p0, Lcom/miui/maml/RenderUpdater;->mUpdater:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Lcom/miui/maml/RenderUpdater$2;

    invoke-direct {v0, p0}, Lcom/miui/maml/RenderUpdater$2;-><init>(Lcom/miui/maml/RenderUpdater;)V

    iput-object v0, p0, Lcom/miui/maml/RenderUpdater;->mRunUpdater:Ljava/lang/Runnable;

    .line 5
    iput-object p1, p0, Lcom/miui/maml/RenderUpdater;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 6
    iput-object p2, p0, Lcom/miui/maml/RenderUpdater;->mHandler:Landroid/os/Handler;

    .line 7
    iput-boolean p3, p0, Lcom/miui/maml/RenderUpdater;->mAutoCleanup:Z

    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/RenderUpdater;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/RenderUpdater;->mSignaled:Z

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

.method static synthetic access$002(Lcom/miui/maml/RenderUpdater;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/RenderUpdater;->mSignaled:Z

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

.method static synthetic access$100(Lcom/miui/maml/RenderUpdater;)Lcom/miui/maml/ScreenElementRoot;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/RenderUpdater;->mRoot:Lcom/miui/maml/ScreenElementRoot;

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

.method static synthetic access$200(Lcom/miui/maml/RenderUpdater;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/RenderUpdater;->mPaused:Z

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

.method static synthetic access$300(Lcom/miui/maml/RenderUpdater;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/RenderUpdater;->mUpdater:Ljava/lang/Runnable;

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

.method static synthetic access$400(Lcom/miui/maml/RenderUpdater;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/RenderUpdater;->mHandler:Landroid/os/Handler;

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

.method static synthetic access$500(Lcom/miui/maml/RenderUpdater;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/RenderUpdater;->doRunUpdater()V

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

.method static synthetic access$602(Lcom/miui/maml/RenderUpdater;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/RenderUpdater;->mStarted:Z

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

.method private checkDelay()J
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/miui/maml/RenderUpdater;->mDelay:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    return-wide v2

    .line 10
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iget-wide v4, p0, Lcom/miui/maml/RenderUpdater;->mCreateTime:J

    .line 15
    .line 16
    sub-long/2addr v0, v4

    .line 17
    iget-wide v4, p0, Lcom/miui/maml/RenderUpdater;->mDelay:J

    .line 18
    .line 19
    cmp-long v6, v0, v4

    .line 20
    .line 21
    if-gez v6, :cond_1

    .line 22
    .line 23
    sub-long v2, v4, v0

    .line 24
    .line 25
    :cond_1
    return-wide v2
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
.end method

.method private doRunUpdater()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mSignaled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mSignaled:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/miui/maml/RenderUpdater;->mHandler:Landroid/os/Handler;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/miui/maml/RenderUpdater;->mUpdater:Ljava/lang/Runnable;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/miui/maml/RenderUpdater;->mHandler:Landroid/os/Handler;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/miui/maml/RenderUpdater;->mUpdater:Ljava/lang/Runnable;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void
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
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RenderUpdater;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/miui/maml/RenderUpdater;->mUpdater:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mPaused:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/miui/maml/RenderUpdater;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->selfFinish()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mSignaled:Z

    .line 18
    .line 19
    return-void
    .line 20
    .line 21
    .line 22
.end method

.method public final doRender()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mPendingRender:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/RenderUpdater;->doRenderImp()V

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
.end method

.method protected abstract doRenderImp()V
.end method

.method public doneRender()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mPendingRender:Z

    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mPaused:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mSignaled:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-wide v0, p0, Lcom/miui/maml/RenderUpdater;->mNextUpdateInterval:J

    .line 13
    .line 14
    const-wide v2, 0x7fffffffffffffffL

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    cmp-long v2, v0, v2

    .line 20
    .line 21
    if-gez v2, :cond_0

    .line 22
    .line 23
    iget-object v2, p0, Lcom/miui/maml/RenderUpdater;->mHandler:Landroid/os/Handler;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/miui/maml/RenderUpdater;->mUpdater:Ljava/lang/Runnable;

    .line 26
    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    iget-wide v6, p0, Lcom/miui/maml/RenderUpdater;->mLastUpdateTime:J

    .line 32
    .line 33
    sub-long/2addr v4, v6

    .line 34
    sub-long/2addr v0, v4

    .line 35
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 36
    .line 37
    .line 38
    :cond_0
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
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mAutoCleanup:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/RenderUpdater;->cleanUp()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 9
    .line 10
    .line 11
    return-void
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

.method public forceUpdate()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/RenderUpdater;->runUpdater()V

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

.method public init()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mPaused:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/miui/maml/RenderUpdater;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/miui/maml/ScreenElementRoot;->setRenderControllerRenderable(Lcom/miui/maml/RendererController$IRenderable;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/miui/maml/RenderUpdater;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->selfInit()V

    .line 12
    .line 13
    .line 14
    return-void
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public isStarted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mStarted:Z

    .line 2
    .line 3
    return v0
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

.method public onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RenderUpdater;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->selfPause()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mSignaled:Z

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mPaused:Z

    .line 11
    .line 12
    return-void
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
    iput-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mPaused:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/miui/maml/RenderUpdater;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->selfResume()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/miui/maml/RenderUpdater;->runUpdater()V

    .line 10
    .line 11
    .line 12
    return-void
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

.method public runUpdater()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mStarted:Z

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move-wide v3, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/miui/maml/RenderUpdater;->checkDelay()J

    .line 10
    .line 11
    .line 12
    move-result-wide v3

    .line 13
    :goto_0
    cmp-long v0, v3, v1

    .line 14
    .line 15
    if-lez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/miui/maml/RenderUpdater;->mHandler:Landroid/os/Handler;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/miui/maml/RenderUpdater;->mRunUpdater:Ljava/lang/Runnable;

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/miui/maml/b;->a(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lcom/miui/maml/RenderUpdater;->mHandler:Landroid/os/Handler;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/miui/maml/RenderUpdater;->mRunUpdater:Ljava/lang/Runnable;

    .line 30
    .line 31
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-direct {p0}, Lcom/miui/maml/RenderUpdater;->doRunUpdater()V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/miui/maml/RenderUpdater;->mStarted:Z

    .line 40
    .line 41
    :cond_2
    :goto_1
    return-void
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

.method public setAutoCleanup(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/RenderUpdater;->mAutoCleanup:Z

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

.method public setStartDelay(JJ)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/miui/maml/RenderUpdater;->mCreateTime:J

    .line 2
    .line 3
    iput-wide p3, p0, Lcom/miui/maml/RenderUpdater;->mDelay:J

    .line 4
    .line 5
    const-wide/16 p1, 0x0

    .line 6
    .line 7
    cmp-long p1, p3, p1

    .line 8
    .line 9
    if-gtz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/miui/maml/RenderUpdater;->mStarted:Z

    .line 13
    .line 14
    :cond_0
    return-void
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

.method public triggerUpdate()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/RenderUpdater;->runUpdater()V

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

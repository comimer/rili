.class public Lcom/xiaomi/ad/feedback/DislikeManagerV2;
.super Ljava/lang/Object;
.source "DislikeManagerV2.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DislikeManagerV2"

.field private static volatile sManager:Lcom/xiaomi/ad/feedback/DislikeManagerV2;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/xiaomi/ad/feedback/DislikeManagerV2;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iput-object p1, p0, Lcom/xiaomi/ad/feedback/DislikeManagerV2;->mContext:Landroid/content/Context;

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
.end method

.method private buildIntent()Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "miui.intent.action.ad.FEEDBACK_SERVICE"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "com.miui.systemAdSolution"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    return-object v0
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

.method public static getInstance(Landroid/content/Context;)Lcom/xiaomi/ad/feedback/DislikeManagerV2;
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/ad/feedback/DislikeManagerV2;->sManager:Lcom/xiaomi/ad/feedback/DislikeManagerV2;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/xiaomi/ad/feedback/DislikeManagerV2;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/xiaomi/ad/feedback/DislikeManagerV2;->sManager:Lcom/xiaomi/ad/feedback/DislikeManagerV2;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/xiaomi/ad/feedback/DislikeManagerV2;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/xiaomi/ad/feedback/DislikeManagerV2;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/xiaomi/ad/feedback/DislikeManagerV2;->sManager:Lcom/xiaomi/ad/feedback/DislikeManagerV2;

    .line 18
    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0

    .line 24
    :cond_1
    :goto_0
    sget-object p0, Lcom/xiaomi/ad/feedback/DislikeManagerV2;->sManager:Lcom/xiaomi/ad/feedback/DislikeManagerV2;

    .line 25
    .line 26
    return-object p0
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
.end method

.method private isSupported()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/ad/feedback/DislikeManagerV2;->buildIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/xiaomi/ad/feedback/DislikeManagerV2;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    :cond_0
    return v2
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
.method public showDislikeWindow(Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/ad/feedback/DislikeManagerV2;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/xiaomi/ad/feedback/DislikeManagerV2$1;

    iget-object v3, p0, Lcom/xiaomi/ad/feedback/DislikeManagerV2;->mContext:Landroid/content/Context;

    const-class v4, Lcom/xiaomi/ad/feedback/IAdFeedbackService;

    move-object v1, v0

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/xiaomi/ad/feedback/DislikeManagerV2$1;-><init>(Lcom/xiaomi/ad/feedback/DislikeManagerV2;Landroid/content/Context;Ljava/lang/Class;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/xiaomi/ad/feedback/DislikeManagerV2;->buildIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/systemAdSolution/remoteMethodInvoker/d;->invokeAsync(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public showDislikeWindow(Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/ad/feedback/IAdFeedbackListener;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/xiaomi/ad/feedback/DislikeManagerV2;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lcom/xiaomi/ad/feedback/DislikeManagerV2$2;

    iget-object v3, p0, Lcom/xiaomi/ad/feedback/DislikeManagerV2;->mContext:Landroid/content/Context;

    const-class v4, Lcom/xiaomi/ad/feedback/IAdFeedbackService;

    move-object v1, v0

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/xiaomi/ad/feedback/DislikeManagerV2$2;-><init>(Lcom/xiaomi/ad/feedback/DislikeManagerV2;Landroid/content/Context;Ljava/lang/Class;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 6
    invoke-direct {p0}, Lcom/xiaomi/ad/feedback/DislikeManagerV2;->buildIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/systemAdSolution/remoteMethodInvoker/d;->invokeAsync(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

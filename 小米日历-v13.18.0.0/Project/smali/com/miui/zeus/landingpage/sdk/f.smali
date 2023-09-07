.class public Lcom/miui/zeus/landingpage/sdk/f;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static b:Lcom/miui/zeus/landingpage/sdk/f;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/zeus/landingpage/sdk/OnAppLaunchListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/zeus/landingpage/sdk/f;->a:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/miui/zeus/landingpage/sdk/f;
    .locals 2

    sget-object v0, Lcom/miui/zeus/landingpage/sdk/f;->b:Lcom/miui/zeus/landingpage/sdk/f;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/zeus/landingpage/sdk/f;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/zeus/landingpage/sdk/f;->b:Lcom/miui/zeus/landingpage/sdk/f;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/zeus/landingpage/sdk/f;

    invoke-direct {v1}, Lcom/miui/zeus/landingpage/sdk/f;-><init>()V

    sput-object v1, Lcom/miui/zeus/landingpage/sdk/f;->b:Lcom/miui/zeus/landingpage/sdk/f;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/zeus/landingpage/sdk/f;->b:Lcom/miui/zeus/landingpage/sdk/f;

    return-object v0
.end method

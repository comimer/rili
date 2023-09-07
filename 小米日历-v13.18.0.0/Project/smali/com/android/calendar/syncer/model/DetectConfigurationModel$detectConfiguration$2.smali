.class final Lcom/android/calendar/syncer/model/DetectConfigurationModel$detectConfiguration$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DetectConfigurationModel.kt"

# interfaces
.implements Lw7/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/syncer/model/DetectConfigurationModel;->detectConfiguration(Lcom/android/calendar/syncer/model/LoginModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lw7/a<",
        "Lkotlin/u;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lkotlin/u;",
        "invoke",
        "()V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $loginModel:Lcom/android/calendar/syncer/model/LoginModel;

.field final synthetic this$0:Lcom/android/calendar/syncer/model/DetectConfigurationModel;


# direct methods
.method constructor <init>(Lcom/android/calendar/syncer/model/DetectConfigurationModel;Lcom/android/calendar/syncer/model/LoginModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/syncer/model/DetectConfigurationModel$detectConfiguration$2;->this$0:Lcom/android/calendar/syncer/model/DetectConfigurationModel;

    iput-object p2, p0, Lcom/android/calendar/syncer/model/DetectConfigurationModel$detectConfiguration$2;->$loginModel:Lcom/android/calendar/syncer/model/LoginModel;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/calendar/syncer/model/DetectConfigurationModel$detectConfiguration$2;->invoke()V

    sget-object v0, Lkotlin/u;->a:Lkotlin/u;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/android/calendar/syncer/model/DetectConfigurationModel$detectConfiguration$2;->this$0:Lcom/android/calendar/syncer/model/DetectConfigurationModel;

    invoke-virtual {v0}, Lcom/android/calendar/syncer/model/DetectConfigurationModel;->getResult()Landroidx/lifecycle/u;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/syncer/model/DetectConfigurationModel$detectConfiguration$2;->this$0:Lcom/android/calendar/syncer/model/DetectConfigurationModel;

    monitor-enter v0

    .line 3
    :try_start_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/android/calendar/syncer/model/DetectConfigurationModel;->access$setDetectionThread$p(Lcom/android/calendar/syncer/model/DetectConfigurationModel;Ljava/lang/ref/WeakReference;)V

    .line 4
    sget-object v1, Lkotlin/u;->a:Lkotlin/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit v0

    .line 6
    :try_start_1
    new-instance v0, Lcom/android/calendar/syncer/resource/DavResourceFinder;

    iget-object v1, p0, Lcom/android/calendar/syncer/model/DetectConfigurationModel$detectConfiguration$2;->this$0:Lcom/android/calendar/syncer/model/DetectConfigurationModel;

    invoke-virtual {v1}, Landroidx/lifecycle/a;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApplication()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/calendar/syncer/model/DetectConfigurationModel$detectConfiguration$2;->$loginModel:Lcom/android/calendar/syncer/model/LoginModel;

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/syncer/resource/DavResourceFinder;-><init>(Landroid/content/Context;Lcom/android/calendar/syncer/model/LoginModel;)V

    iget-object v1, p0, Lcom/android/calendar/syncer/model/DetectConfigurationModel$detectConfiguration$2;->this$0:Lcom/android/calendar/syncer/model/DetectConfigurationModel;

    .line 7
    invoke-virtual {v1}, Lcom/android/calendar/syncer/model/DetectConfigurationModel;->getResult()Landroidx/lifecycle/u;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/calendar/syncer/resource/DavResourceFinder;->m()Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/lifecycle/u;->l(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CalSync:D:DetectConfigurationModel"

    const-string v2, "Internal resource detection error"

    .line 8
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    iget-object v0, p0, Lcom/android/calendar/syncer/model/DetectConfigurationModel$detectConfiguration$2;->this$0:Lcom/android/calendar/syncer/model/DetectConfigurationModel;

    invoke-virtual {v0}, Lcom/android/calendar/syncer/model/DetectConfigurationModel;->getResult()Landroidx/lifecycle/u;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/u;->l(Ljava/lang/Object;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0

    throw v1
.end method

.class final Lcom/miui/calendar/sync/NewEventImportActivity$mDetectConfigModel$2;
.super Lkotlin/jvm/internal/Lambda;
.source "NewEventImportActivity.kt"

# interfaces
.implements Lw7/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/calendar/sync/NewEventImportActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lw7/a<",
        "Lcom/android/calendar/syncer/model/DetectConfigurationModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/android/calendar/syncer/model/DetectConfigurationModel;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/calendar/sync/NewEventImportActivity;


# direct methods
.method constructor <init>(Lcom/miui/calendar/sync/NewEventImportActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/calendar/sync/NewEventImportActivity$mDetectConfigModel$2;->this$0:Lcom/miui/calendar/sync/NewEventImportActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/android/calendar/syncer/model/DetectConfigurationModel;
    .locals 2

    .line 2
    new-instance v0, Landroidx/lifecycle/k0;

    iget-object v1, p0, Lcom/miui/calendar/sync/NewEventImportActivity$mDetectConfigModel$2;->this$0:Lcom/miui/calendar/sync/NewEventImportActivity;

    invoke-direct {v0, v1}, Landroidx/lifecycle/k0;-><init>(Landroidx/lifecycle/n0;)V

    const-class v1, Lcom/android/calendar/syncer/model/DetectConfigurationModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/k0;->a(Ljava/lang/Class;)Landroidx/lifecycle/i0;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/syncer/model/DetectConfigurationModel;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/miui/calendar/sync/NewEventImportActivity$mDetectConfigModel$2;->invoke()Lcom/android/calendar/syncer/model/DetectConfigurationModel;

    move-result-object v0

    return-object v0
.end method

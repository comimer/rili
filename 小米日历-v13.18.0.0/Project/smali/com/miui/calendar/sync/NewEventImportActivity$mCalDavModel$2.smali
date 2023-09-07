.class final Lcom/miui/calendar/sync/NewEventImportActivity$mCalDavModel$2;
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
        "Ln4/a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Ln4/a;",
        "invoke",
        "()Ln4/a;",
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
.field final synthetic this$0:Lcom/miui/calendar/sync/NewEventImportActivity;


# direct methods
.method constructor <init>(Lcom/miui/calendar/sync/NewEventImportActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/calendar/sync/NewEventImportActivity$mCalDavModel$2;->this$0:Lcom/miui/calendar/sync/NewEventImportActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/miui/calendar/sync/NewEventImportActivity$mCalDavModel$2;->invoke()Ln4/a;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ln4/a;
    .locals 2

    .line 2
    new-instance v0, Landroidx/lifecycle/k0;

    iget-object v1, p0, Lcom/miui/calendar/sync/NewEventImportActivity$mCalDavModel$2;->this$0:Lcom/miui/calendar/sync/NewEventImportActivity;

    invoke-direct {v0, v1}, Landroidx/lifecycle/k0;-><init>(Landroidx/lifecycle/n0;)V

    const-class v1, Ln4/a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/k0;->a(Ljava/lang/Class;)Landroidx/lifecycle/i0;

    move-result-object v0

    check-cast v0, Ln4/a;

    return-object v0
.end method

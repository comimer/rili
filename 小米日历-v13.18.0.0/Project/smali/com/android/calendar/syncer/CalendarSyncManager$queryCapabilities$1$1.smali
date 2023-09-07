.class final Lcom/android/calendar/syncer/CalendarSyncManager$queryCapabilities$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CalendarSyncManager.kt"

# interfaces
.implements Lw7/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/syncer/CalendarSyncManager$queryCapabilities$1;->invoke(Lat/bitfire/dav4jvm/DavCalendar;)Lcom/android/calendar/syncer/model/SyncState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lw7/p<",
        "Lat/bitfire/dav4jvm/Response;",
        "Lat/bitfire/dav4jvm/Response$HrefRelation;",
        "Lkotlin/u;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "Lat/bitfire/dav4jvm/Response;",
        "response",
        "Lat/bitfire/dav4jvm/Response$HrefRelation;",
        "relation",
        "Lkotlin/u;",
        "invoke",
        "(Lat/bitfire/dav4jvm/Response;Lat/bitfire/dav4jvm/Response$HrefRelation;)V",
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
.field final synthetic $syncState:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/android/calendar/syncer/model/SyncState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/calendar/syncer/CalendarSyncManager;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/calendar/syncer/CalendarSyncManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/android/calendar/syncer/model/SyncState;",
            ">;",
            "Lcom/android/calendar/syncer/CalendarSyncManager;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/calendar/syncer/CalendarSyncManager$queryCapabilities$1$1;->$syncState:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/android/calendar/syncer/CalendarSyncManager$queryCapabilities$1$1;->this$0:Lcom/android/calendar/syncer/CalendarSyncManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lat/bitfire/dav4jvm/Response;

    check-cast p2, Lat/bitfire/dav4jvm/Response$HrefRelation;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/syncer/CalendarSyncManager$queryCapabilities$1$1;->invoke(Lat/bitfire/dav4jvm/Response;Lat/bitfire/dav4jvm/Response$HrefRelation;)V

    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    return-object p1
.end method

.method public final invoke(Lat/bitfire/dav4jvm/Response;Lat/bitfire/dav4jvm/Response$HrefRelation;)V
    .locals 2

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "relation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lat/bitfire/dav4jvm/Response$HrefRelation;->SELF:Lat/bitfire/dav4jvm/Response$HrefRelation;

    if-ne p2, v0, :cond_1

    .line 3
    const-class p2, Lat/bitfire/dav4jvm/property/SupportedReportSet;

    invoke-virtual {p1, p2}, Lat/bitfire/dav4jvm/Response;->get(Ljava/lang/Class;)Lat/bitfire/dav4jvm/Property;

    move-result-object p2

    check-cast p2, Lat/bitfire/dav4jvm/property/SupportedReportSet;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/calendar/syncer/CalendarSyncManager$queryCapabilities$1$1;->this$0:Lcom/android/calendar/syncer/CalendarSyncManager;

    .line 4
    invoke-virtual {p2}, Lat/bitfire/dav4jvm/property/SupportedReportSet;->getReports()Ljava/util/Set;

    move-result-object p2

    const-string v1, "DAV:sync-collection"

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/calendar/syncer/SyncManager;->w0(Z)V

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/android/calendar/syncer/CalendarSyncManager$queryCapabilities$1$1;->$syncState:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, p0, Lcom/android/calendar/syncer/CalendarSyncManager$queryCapabilities$1$1;->this$0:Lcom/android/calendar/syncer/CalendarSyncManager;

    invoke-virtual {v0, p1}, Lcom/android/calendar/syncer/SyncManager;->A0(Lat/bitfire/dav4jvm/Response;)Lcom/android/calendar/syncer/model/SyncState;

    move-result-object p1

    iput-object p1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_1
    return-void
.end method

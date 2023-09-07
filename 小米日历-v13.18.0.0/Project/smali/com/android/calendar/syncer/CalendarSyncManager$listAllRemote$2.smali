.class final Lcom/android/calendar/syncer/CalendarSyncManager$listAllRemote$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CalendarSyncManager.kt"

# interfaces
.implements Lw7/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/syncer/CalendarSyncManager;->W(Lw7/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lw7/l<",
        "Lat/bitfire/dav4jvm/DavCalendar;",
        "Lkotlin/u;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lat/bitfire/dav4jvm/DavCalendar;",
        "remote",
        "Lkotlin/u;",
        "invoke",
        "(Lat/bitfire/dav4jvm/DavCalendar;)V",
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
.field final synthetic $callback:Lw7/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw7/p<",
            "Lat/bitfire/dav4jvm/Response;",
            "Lat/bitfire/dav4jvm/Response$HrefRelation;",
            "Lkotlin/u;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $limitStart:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lw7/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/Date;",
            ">;",
            "Lw7/p<",
            "-",
            "Lat/bitfire/dav4jvm/Response;",
            "-",
            "Lat/bitfire/dav4jvm/Response$HrefRelation;",
            "Lkotlin/u;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/calendar/syncer/CalendarSyncManager$listAllRemote$2;->$limitStart:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/android/calendar/syncer/CalendarSyncManager$listAllRemote$2;->$callback:Lw7/p;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lat/bitfire/dav4jvm/DavCalendar;

    invoke-virtual {p0, p1}, Lcom/android/calendar/syncer/CalendarSyncManager$listAllRemote$2;->invoke(Lat/bitfire/dav4jvm/DavCalendar;)V

    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    return-object p1
.end method

.method public final invoke(Lat/bitfire/dav4jvm/DavCalendar;)V
    .locals 4

    const-string v0, "remote"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Querying events since "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/calendar/syncer/CalendarSyncManager$listAllRemote$2;->$limitStart:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CalSync:D:SyncManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/calendar/syncer/CalendarSyncManager$listAllRemote$2;->$limitStart:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/android/calendar/syncer/CalendarSyncManager$listAllRemote$2;->$callback:Lw7/p;

    const-string v2, "VEVENT"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v3, v1}, Lat/bitfire/dav4jvm/DavCalendar;->calendarQuery(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lw7/p;)Ljava/util/List;

    return-void
.end method

.class final Lcom/android/calendar/syncer/CalendarSyncManager$queryCapabilities$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CalendarSyncManager.kt"

# interfaces
.implements Lw7/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/syncer/CalendarSyncManager;->l0()Lcom/android/calendar/syncer/model/SyncState;
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
        "Lcom/android/calendar/syncer/model/SyncState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/android/calendar/syncer/model/SyncState;",
        "it",
        "Lat/bitfire/dav4jvm/DavCalendar;",
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
.field final synthetic this$0:Lcom/android/calendar/syncer/CalendarSyncManager;


# direct methods
.method constructor <init>(Lcom/android/calendar/syncer/CalendarSyncManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/syncer/CalendarSyncManager$queryCapabilities$1;->this$0:Lcom/android/calendar/syncer/CalendarSyncManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lat/bitfire/dav4jvm/DavCalendar;)Lcom/android/calendar/syncer/model/SyncState;
    .locals 5

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Lat/bitfire/dav4jvm/Property$Name;

    .line 3
    sget-object v2, Lat/bitfire/dav4jvm/property/SupportedReportSet;->NAME:Lat/bitfire/dav4jvm/Property$Name;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lat/bitfire/dav4jvm/property/GetCTag;->NAME:Lat/bitfire/dav4jvm/Property$Name;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lat/bitfire/dav4jvm/property/SyncToken;->NAME:Lat/bitfire/dav4jvm/Property$Name;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    new-instance v2, Lcom/android/calendar/syncer/CalendarSyncManager$queryCapabilities$1$1;

    iget-object v4, p0, Lcom/android/calendar/syncer/CalendarSyncManager$queryCapabilities$1;->this$0:Lcom/android/calendar/syncer/CalendarSyncManager;

    invoke-direct {v2, v0, v4}, Lcom/android/calendar/syncer/CalendarSyncManager$queryCapabilities$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/calendar/syncer/CalendarSyncManager;)V

    invoke-virtual {p1, v3, v1, v2}, Lat/bitfire/dav4jvm/DavResource;->propfind(I[Lat/bitfire/dav4jvm/Property$Name;Lw7/p;)V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Server supports Collection Sync: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/calendar/syncer/CalendarSyncManager$queryCapabilities$1;->this$0:Lcom/android/calendar/syncer/CalendarSyncManager;

    invoke-virtual {v1}, Lcom/android/calendar/syncer/SyncManager;->z()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CalSync:D:SyncManager"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/android/calendar/syncer/model/SyncState;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lat/bitfire/dav4jvm/DavCalendar;

    invoke-virtual {p0, p1}, Lcom/android/calendar/syncer/CalendarSyncManager$queryCapabilities$1;->invoke(Lat/bitfire/dav4jvm/DavCalendar;)Lcom/android/calendar/syncer/model/SyncState;

    move-result-object p1

    return-object p1
.end method

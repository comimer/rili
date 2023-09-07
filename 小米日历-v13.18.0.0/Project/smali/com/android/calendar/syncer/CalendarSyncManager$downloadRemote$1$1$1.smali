.class final Lcom/android/calendar/syncer/CalendarSyncManager$downloadRemote$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CalendarSyncManager.kt"

# interfaces
.implements Lw7/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/syncer/CalendarSyncManager$downloadRemote$1$1;->invoke(Lat/bitfire/dav4jvm/Response;Lat/bitfire/dav4jvm/Response$HrefRelation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lw7/l<",
        "Lat/bitfire/dav4jvm/Response;",
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
        "Lat/bitfire/dav4jvm/Response;",
        "it",
        "Lkotlin/u;",
        "invoke",
        "(Lat/bitfire/dav4jvm/Response;)V",
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
.field final synthetic $response:Lat/bitfire/dav4jvm/Response;

.field final synthetic this$0:Lcom/android/calendar/syncer/CalendarSyncManager;


# direct methods
.method constructor <init>(Lat/bitfire/dav4jvm/Response;Lcom/android/calendar/syncer/CalendarSyncManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/syncer/CalendarSyncManager$downloadRemote$1$1$1;->$response:Lat/bitfire/dav4jvm/Response;

    iput-object p2, p0, Lcom/android/calendar/syncer/CalendarSyncManager$downloadRemote$1$1$1;->this$0:Lcom/android/calendar/syncer/CalendarSyncManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lat/bitfire/dav4jvm/Response;

    invoke-virtual {p0, p1}, Lcom/android/calendar/syncer/CalendarSyncManager$downloadRemote$1$1$1;->invoke(Lat/bitfire/dav4jvm/Response;)V

    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    return-object p1
.end method

.method public final invoke(Lat/bitfire/dav4jvm/Response;)V
    .locals 11

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/android/calendar/syncer/CalendarSyncManager$downloadRemote$1$1$1;->$response:Lat/bitfire/dav4jvm/Response;

    invoke-virtual {p1}, Lat/bitfire/dav4jvm/Response;->isSuccess()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received non-successful multiget response for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/calendar/syncer/CalendarSyncManager$downloadRemote$1$1$1;->$response:Lat/bitfire/dav4jvm/Response;

    invoke-virtual {v0}, Lat/bitfire/dav4jvm/Response;->getHref()Lokhttp3/t;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CalSync:D:SyncManager"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/calendar/syncer/CalendarSyncManager$downloadRemote$1$1$1;->$response:Lat/bitfire/dav4jvm/Response;

    const-class v0, Lat/bitfire/dav4jvm/property/GetETag;

    invoke-virtual {p1, v0}, Lat/bitfire/dav4jvm/Response;->get(Ljava/lang/Class;)Lat/bitfire/dav4jvm/Property;

    move-result-object p1

    check-cast p1, Lat/bitfire/dav4jvm/property/GetETag;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lat/bitfire/dav4jvm/property/GetETag;->getETag()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 5
    iget-object v0, p0, Lcom/android/calendar/syncer/CalendarSyncManager$downloadRemote$1$1$1;->$response:Lat/bitfire/dav4jvm/Response;

    const-class v1, Lat/bitfire/dav4jvm/property/ScheduleTag;

    invoke-virtual {v0, v1}, Lat/bitfire/dav4jvm/Response;->get(Ljava/lang/Class;)Lat/bitfire/dav4jvm/Property;

    move-result-object v0

    check-cast v0, Lat/bitfire/dav4jvm/property/ScheduleTag;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lat/bitfire/dav4jvm/property/ScheduleTag;->getScheduleTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/syncer/CalendarSyncManager$downloadRemote$1$1$1;->$response:Lat/bitfire/dav4jvm/Response;

    const-class v2, Lat/bitfire/dav4jvm/property/CalendarData;

    invoke-virtual {v1, v2}, Lat/bitfire/dav4jvm/Response;->get(Ljava/lang/Class;)Lat/bitfire/dav4jvm/Property;

    move-result-object v1

    check-cast v1, Lat/bitfire/dav4jvm/property/CalendarData;

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1}, Lat/bitfire/dav4jvm/property/CalendarData;->getICalendar()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8
    iget-object v2, p0, Lcom/android/calendar/syncer/CalendarSyncManager$downloadRemote$1$1$1;->this$0:Lcom/android/calendar/syncer/CalendarSyncManager;

    sget-object v3, Lcom/android/calendar/syncer/g;->a:Lcom/android/calendar/syncer/g;

    iget-object v4, p0, Lcom/android/calendar/syncer/CalendarSyncManager$downloadRemote$1$1$1;->$response:Lat/bitfire/dav4jvm/Response;

    invoke-virtual {v4}, Lat/bitfire/dav4jvm/Response;->getHref()Lokhttp3/t;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/calendar/syncer/g;->d(Lokhttp3/t;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/calendar/syncer/CalendarSyncManager;->E0(Lcom/android/calendar/syncer/CalendarSyncManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;)V

    return-void

    .line 9
    :cond_2
    new-instance p1, Lat/bitfire/dav4jvm/exception/DavException;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    const-string v6, "Received multi-get response without address data"

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Lat/bitfire/dav4jvm/exception/DavException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lokhttp3/a0;ILkotlin/jvm/internal/o;)V

    throw p1

    .line 10
    :cond_3
    new-instance p1, Lat/bitfire/dav4jvm/exception/DavException;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v1, "Received multi-get response without ETag"

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lat/bitfire/dav4jvm/exception/DavException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lokhttp3/a0;ILkotlin/jvm/internal/o;)V

    throw p1
.end method

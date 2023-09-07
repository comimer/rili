.class final Lcom/android/calendar/syncer/CalendarSyncManager$generateUpload$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CalendarSyncManager.kt"

# interfaces
.implements Lw7/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/syncer/CalendarSyncManager;->F0(Lcom/android/calendar/syncer/resource/c;)Lokhttp3/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lw7/l<",
        "Lcom/android/calendar/syncer/resource/c;",
        "Lokhttp3/z;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lcom/android/calendar/syncer/resource/c;",
        "it",
        "Lokhttp3/z;",
        "invoke",
        "(Lcom/android/calendar/syncer/resource/c;)Lokhttp3/z;",
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
.field final synthetic $resource:Lcom/android/calendar/syncer/resource/c;


# direct methods
.method constructor <init>(Lcom/android/calendar/syncer/resource/c;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/syncer/CalendarSyncManager$generateUpload$1;->$resource:Lcom/android/calendar/syncer/resource/c;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/calendar/syncer/resource/c;

    invoke-virtual {p0, p1}, Lcom/android/calendar/syncer/CalendarSyncManager$generateUpload$1;->invoke(Lcom/android/calendar/syncer/resource/c;)Lokhttp3/z;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lcom/android/calendar/syncer/resource/c;)Lokhttp3/z;
    .locals 8

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/android/calendar/syncer/CalendarSyncManager$generateUpload$1;->$resource:Lcom/android/calendar/syncer/resource/c;

    invoke-virtual {p1}, Lat/bitfire/ical4android/AndroidEvent;->getEvent()Lat/bitfire/ical4android/Event;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preparing upload of event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/calendar/syncer/CalendarSyncManager$generateUpload$1;->$resource:Lcom/android/calendar/syncer/resource/c;

    invoke-virtual {v1}, Lcom/android/calendar/syncer/resource/c;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CalSync:D:SyncManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 5
    invoke-virtual {p1, v0}, Lat/bitfire/ical4android/Event;->write(Ljava/io/OutputStream;)V

    .line 6
    sget-object v1, Lokhttp3/z;->a:Lokhttp3/z$a;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const-string p1, "os.toByteArray()"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lat/bitfire/dav4jvm/DavCalendar;->Companion:Lat/bitfire/dav4jvm/DavCalendar$Companion;

    invoke-virtual {p1}, Lat/bitfire/dav4jvm/DavCalendar$Companion;->getMIME_ICALENDAR_UTF8()Lokhttp3/v;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lokhttp3/z$a;->g(Lokhttp3/z$a;[BLokhttp3/v;IIILjava/lang/Object;)Lokhttp3/z;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Required value was null."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

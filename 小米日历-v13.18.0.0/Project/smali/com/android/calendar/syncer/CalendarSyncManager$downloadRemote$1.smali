.class final Lcom/android/calendar/syncer/CalendarSyncManager$downloadRemote$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CalendarSyncManager.kt"

# interfaces
.implements Lw7/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/syncer/CalendarSyncManager;->j(Ljava/util/List;)V
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
        "Ljava/util/List<",
        "+",
        "Lat/bitfire/dav4jvm/Property;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lat/bitfire/dav4jvm/Property;",
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
.field final synthetic $bunch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/t;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/calendar/syncer/CalendarSyncManager;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/android/calendar/syncer/CalendarSyncManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/t;",
            ">;",
            "Lcom/android/calendar/syncer/CalendarSyncManager;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/calendar/syncer/CalendarSyncManager$downloadRemote$1;->$bunch:Ljava/util/List;

    iput-object p2, p0, Lcom/android/calendar/syncer/CalendarSyncManager$downloadRemote$1;->this$0:Lcom/android/calendar/syncer/CalendarSyncManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lat/bitfire/dav4jvm/DavCalendar;

    invoke-virtual {p0, p1}, Lcom/android/calendar/syncer/CalendarSyncManager$downloadRemote$1;->invoke(Lat/bitfire/dav4jvm/DavCalendar;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lat/bitfire/dav4jvm/DavCalendar;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lat/bitfire/dav4jvm/DavCalendar;",
            ")",
            "Ljava/util/List<",
            "Lat/bitfire/dav4jvm/Property;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/calendar/syncer/CalendarSyncManager$downloadRemote$1;->$bunch:Ljava/util/List;

    new-instance v1, Lcom/android/calendar/syncer/CalendarSyncManager$downloadRemote$1$1;

    iget-object v2, p0, Lcom/android/calendar/syncer/CalendarSyncManager$downloadRemote$1;->this$0:Lcom/android/calendar/syncer/CalendarSyncManager;

    invoke-direct {v1, v2}, Lcom/android/calendar/syncer/CalendarSyncManager$downloadRemote$1$1;-><init>(Lcom/android/calendar/syncer/CalendarSyncManager;)V

    invoke-virtual {p1, v0, v1}, Lat/bitfire/dav4jvm/DavCalendar;->multiget(Ljava/util/List;Lw7/p;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

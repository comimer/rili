.class final Lcom/android/calendar/syncer/CalendarSyncManager$processVEvent$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CalendarSyncManager.kt"

# interfaces
.implements Lw7/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/syncer/CalendarSyncManager;->G0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;)V
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0008\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lcom/android/calendar/syncer/resource/c;",
        "local",
        "",
        "invoke",
        "(Lcom/android/calendar/syncer/resource/c;)Ljava/lang/Long;",
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
.field final synthetic $eTag:Ljava/lang/String;

.field final synthetic $event:Lat/bitfire/ical4android/Event;

.field final synthetic $fileName:Ljava/lang/String;

.field final synthetic $scheduleTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/calendar/syncer/CalendarSyncManager;


# direct methods
.method constructor <init>(Ljava/lang/String;Lat/bitfire/ical4android/Event;Ljava/lang/String;Ljava/lang/String;Lcom/android/calendar/syncer/CalendarSyncManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/syncer/CalendarSyncManager$processVEvent$1;->$fileName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/calendar/syncer/CalendarSyncManager$processVEvent$1;->$event:Lat/bitfire/ical4android/Event;

    iput-object p3, p0, Lcom/android/calendar/syncer/CalendarSyncManager$processVEvent$1;->$eTag:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/calendar/syncer/CalendarSyncManager$processVEvent$1;->$scheduleTag:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/calendar/syncer/CalendarSyncManager$processVEvent$1;->this$0:Lcom/android/calendar/syncer/CalendarSyncManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/android/calendar/syncer/resource/c;)Ljava/lang/Long;
    .locals 10

    const-wide/16 v0, 0x1

    const-string v2, "CalSync:D:SyncManager"

    if-eqz p1, :cond_0

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/calendar/syncer/CalendarSyncManager$processVEvent$1;->$fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " in local calendar: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/calendar/syncer/CalendarSyncManager$processVEvent$1;->$event:Lat/bitfire/ical4android/Event;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v2, p0, Lcom/android/calendar/syncer/CalendarSyncManager$processVEvent$1;->$eTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/calendar/syncer/resource/c;->h(Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Lcom/android/calendar/syncer/CalendarSyncManager$processVEvent$1;->$scheduleTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/calendar/syncer/resource/c;->i(Ljava/lang/String;)V

    .line 5
    iget-object v2, p0, Lcom/android/calendar/syncer/CalendarSyncManager$processVEvent$1;->$event:Lat/bitfire/ical4android/Event;

    invoke-virtual {p1, v2}, Lat/bitfire/ical4android/AndroidEvent;->update(Lat/bitfire/ical4android/Event;)Landroid/net/Uri;

    .line 6
    iget-object p1, p0, Lcom/android/calendar/syncer/CalendarSyncManager$processVEvent$1;->this$0:Lcom/android/calendar/syncer/CalendarSyncManager;

    invoke-virtual {p1}, Lcom/android/calendar/syncer/SyncManager;->V()Landroid/content/SyncResult;

    move-result-object p1

    iget-object p1, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, p1, Landroid/content/SyncStats;->numUpdates:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Landroid/content/SyncStats;->numUpdates:J

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/calendar/syncer/CalendarSyncManager$processVEvent$1;->$fileName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to local calendar: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/calendar/syncer/CalendarSyncManager$processVEvent$1;->$event:Lat/bitfire/ical4android/Event;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object p1, p0, Lcom/android/calendar/syncer/CalendarSyncManager$processVEvent$1;->this$0:Lcom/android/calendar/syncer/CalendarSyncManager;

    new-instance v9, Lcom/android/calendar/syncer/resource/c;

    iget-object v2, p0, Lcom/android/calendar/syncer/CalendarSyncManager$processVEvent$1;->this$0:Lcom/android/calendar/syncer/CalendarSyncManager;

    invoke-virtual {v2}, Lcom/android/calendar/syncer/SyncManager;->H()Lcom/android/calendar/syncer/resource/b;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lat/bitfire/ical4android/AndroidCalendar;

    iget-object v4, p0, Lcom/android/calendar/syncer/CalendarSyncManager$processVEvent$1;->$event:Lat/bitfire/ical4android/Event;

    iget-object v5, p0, Lcom/android/calendar/syncer/CalendarSyncManager$processVEvent$1;->$fileName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/calendar/syncer/CalendarSyncManager$processVEvent$1;->$eTag:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/calendar/syncer/CalendarSyncManager$processVEvent$1;->$scheduleTag:Ljava/lang/String;

    const/4 v8, 0x1

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/calendar/syncer/resource/c;-><init>(Lat/bitfire/ical4android/AndroidCalendar;Lat/bitfire/ical4android/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/calendar/syncer/CalendarSyncManager$processVEvent$1$1;->INSTANCE:Lcom/android/calendar/syncer/CalendarSyncManager$processVEvent$1$1;

    invoke-virtual {p1, v9, v2}, Lcom/android/calendar/syncer/SyncManager;->a0(Lcom/android/calendar/syncer/resource/d;Lw7/l;)Ljava/lang/Object;

    .line 9
    iget-object p1, p0, Lcom/android/calendar/syncer/CalendarSyncManager$processVEvent$1;->this$0:Lcom/android/calendar/syncer/CalendarSyncManager;

    invoke-virtual {p1}, Lcom/android/calendar/syncer/SyncManager;->V()Landroid/content/SyncResult;

    move-result-object p1

    iget-object p1, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, p1, Landroid/content/SyncStats;->numInserts:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Landroid/content/SyncStats;->numInserts:J

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/calendar/syncer/resource/c;

    invoke-virtual {p0, p1}, Lcom/android/calendar/syncer/CalendarSyncManager$processVEvent$1;->invoke(Lcom/android/calendar/syncer/resource/c;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

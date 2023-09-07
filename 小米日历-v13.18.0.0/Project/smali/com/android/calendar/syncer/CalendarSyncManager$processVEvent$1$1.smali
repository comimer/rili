.class final Lcom/android/calendar/syncer/CalendarSyncManager$processVEvent$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CalendarSyncManager.kt"

# interfaces
.implements Lw7/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/syncer/CalendarSyncManager$processVEvent$1;->invoke(Lcom/android/calendar/syncer/resource/c;)Ljava/lang/Long;
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
        "Landroid/net/Uri;",
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
        "Landroid/net/Uri;",
        "invoke",
        "(Lcom/android/calendar/syncer/resource/c;)Landroid/net/Uri;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/calendar/syncer/CalendarSyncManager$processVEvent$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/calendar/syncer/CalendarSyncManager$processVEvent$1$1;

    invoke-direct {v0}, Lcom/android/calendar/syncer/CalendarSyncManager$processVEvent$1$1;-><init>()V

    sput-object v0, Lcom/android/calendar/syncer/CalendarSyncManager$processVEvent$1$1;->INSTANCE:Lcom/android/calendar/syncer/CalendarSyncManager$processVEvent$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/android/calendar/syncer/resource/c;)Landroid/net/Uri;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lat/bitfire/ical4android/AndroidEvent;->add()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/calendar/syncer/resource/c;

    invoke-virtual {p0, p1}, Lcom/android/calendar/syncer/CalendarSyncManager$processVEvent$1$1;->invoke(Lcom/android/calendar/syncer/resource/c;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

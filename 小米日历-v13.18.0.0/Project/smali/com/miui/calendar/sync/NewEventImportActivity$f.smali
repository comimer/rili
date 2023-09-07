.class public final Lcom/miui/calendar/sync/NewEventImportActivity$f;
.super Ljava/lang/Object;
.source "NewEventImportActivity.kt"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/calendar/sync/NewEventImportActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001c\u0010\u0008\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/miui/calendar/sync/NewEventImportActivity$f",
        "Landroid/content/ServiceConnection;",
        "Landroid/content/ComponentName;",
        "name",
        "Lkotlin/u;",
        "onServiceDisconnected",
        "Landroid/os/IBinder;",
        "service",
        "onServiceConnected",
        "app_chinaNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/calendar/sync/NewEventImportActivity;


# direct methods
.method constructor <init>(Lcom/miui/calendar/sync/NewEventImportActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/sync/NewEventImportActivity$f;->a:Lcom/miui/calendar/sync/NewEventImportActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    const-string p1, "null cannot be cast to non-null type com.android.calendar.syncer.CalDavService.InfoBinder"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p2, Lcom/android/calendar/syncer/CalDavService$b;

    .line 7
    .line 8
    iget-object p1, p0, Lcom/miui/calendar/sync/NewEventImportActivity$f;->a:Lcom/miui/calendar/sync/NewEventImportActivity;

    .line 9
    .line 10
    invoke-static {p1, p2}, Lcom/miui/calendar/sync/NewEventImportActivity;->w0(Lcom/miui/calendar/sync/NewEventImportActivity;Lcom/android/calendar/syncer/CalDavService$b;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/miui/calendar/sync/NewEventImportActivity$f;->a:Lcom/miui/calendar/sync/NewEventImportActivity;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/miui/calendar/sync/NewEventImportActivity;->o0(Lcom/miui/calendar/sync/NewEventImportActivity;)Lcom/android/calendar/syncer/CalDavService$b;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p2, p0, Lcom/miui/calendar/sync/NewEventImportActivity$f;->a:Lcom/miui/calendar/sync/NewEventImportActivity;

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-virtual {p1, p2, v0}, Lcom/android/calendar/syncer/CalDavService$b;->a(Lcom/android/calendar/syncer/CalDavService$c;Z)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/miui/calendar/sync/NewEventImportActivity$f;->a:Lcom/miui/calendar/sync/NewEventImportActivity;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/miui/calendar/sync/NewEventImportActivity;->w0(Lcom/miui/calendar/sync/NewEventImportActivity;Lcom/android/calendar/syncer/CalDavService$b;)V

    .line 5
    .line 6
    .line 7
    return-void
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.class Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory$b;
.super Ljava/lang/Object;
.source "AgendaWidgetService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/BroadcastReceiver$PendingResult;

.field final synthetic b:Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;


# direct methods
.method constructor <init>(Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory$b;->b:Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory$b;->a:Landroid/content/BroadcastReceiver$PendingResult;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
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


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory$b;->b:Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->g(Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory$b;->b:Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->a(Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;)Landroid/content/CursorLoader;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory$b;->b:Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;

    .line 16
    .line 17
    const/4 v2, -0x1

    .line 18
    invoke-static {v1, v2}, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->h(Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;I)I

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory$b;->b:Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;

    .line 22
    .line 23
    invoke-static {v1}, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->i(Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;)Landroid/os/Handler;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-instance v2, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory$b$a;

    .line 28
    .line 29
    invoke-direct {v2, p0, v0}, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory$b$a;-><init>(Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory$b;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory$b;->b:Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->i(Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;)Landroid/os/Handler;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-object v2, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory$b;->b:Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;

    .line 43
    .line 44
    iget-object v3, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory$b;->a:Landroid/content/BroadcastReceiver$PendingResult;

    .line 45
    .line 46
    invoke-static {}, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->b()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    invoke-static {v2, v0, v3, v4}, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->j(Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;I)Ljava/lang/Runnable;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    .line 60
    .line 61
    :goto_0
    return-void
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

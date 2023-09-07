.class public Lcom/miui/calendar/job/CalendarJobReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CalendarJobReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
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

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {p0}, Ld4/b;->c(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/miui/calendar/job/RemoteJobService;->h()Ld4/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {p0, v0, v1}, Ld4/b;->g(Landroid/content/Context;Ld4/a;Z)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/miui/calendar/job/LimitJobService;->d()Ld4/a;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {p0, v0, v1}, Ld4/b;->g(Landroid/content/Context;Ld4/a;Z)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/miui/calendar/job/StatJobService;->d()Ld4/a;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {p0, v0, v1}, Ld4/b;->g(Landroid/content/Context;Ld4/a;Z)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/miui/calendar/job/StatDailyJobService;->e()Ld4/a;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {p0, v0, v1}, Ld4/b;->g(Landroid/content/Context;Ld4/a;Z)V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/miui/calendar/job/DaysOffJobService;->d()Ld4/a;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {p0, v0, v1}, Ld4/b;->g(Landroid/content/Context;Ld4/a;Z)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/miui/calendar/job/DataMigrationAnniversaryJobService;->d()Ld4/a;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {p0, v0, v1}, Ld4/b;->g(Landroid/content/Context;Ld4/a;Z)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const-string p0, "Cal:D:CalendarJobReceiver"

    .line 52
    .line 53
    const-string v0, "onReceive(): normal job scheduler is not supported, do nothing."

    .line 54
    .line 55
    invoke-static {p0, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onReceive(): intent:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const-string v0, "Cal:D:CalendarJobReceiver"

    .line 19
    .line 20
    invoke-static {v0, p2}, Lcom/miui/calendar/util/z;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/miui/calendar/job/CalendarJobReceiver;->a(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    return-void
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

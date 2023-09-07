.class Lcom/android/calendar/homepage/l0$q;
.super Ljava/lang/Object;
.source "EventsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/homepage/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "q"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/calendar/homepage/l0;


# direct methods
.method constructor <init>(Lcom/android/calendar/homepage/l0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/homepage/l0$q;->a:Lcom/android/calendar/homepage/l0;

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
.method public run()V
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/android/calendar/homepage/l0$q;->a:Lcom/android/calendar/homepage/l0;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/android/calendar/homepage/l0;->j:Lcom/miui/calendar/util/r0;

    .line 8
    .line 9
    invoke-virtual {v2, v0, v1}, Lcom/miui/calendar/util/r0;->D(J)V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/calendar/homepage/l0$q;->a:Lcom/android/calendar/homepage/l0;

    .line 13
    .line 14
    iget-boolean v3, v2, Lcom/android/calendar/homepage/l0;->c:Z

    .line 15
    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    invoke-static {v2}, Lcom/android/calendar/homepage/l0;->v(Lcom/android/calendar/homepage/l0;)Landroid/os/Handler;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iget-object v3, p0, Lcom/android/calendar/homepage/l0$q;->a:Lcom/android/calendar/homepage/l0;

    .line 23
    .line 24
    invoke-static {v3}, Lcom/android/calendar/homepage/l0;->c0(Lcom/android/calendar/homepage/l0;)Lcom/android/calendar/homepage/l0$q;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const-wide/32 v4, 0x493e0

    .line 29
    .line 30
    .line 31
    rem-long v6, v0, v4

    .line 32
    .line 33
    sub-long/2addr v4, v6

    .line 34
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/homepage/l0$q;->a:Lcom/android/calendar/homepage/l0;

    .line 38
    .line 39
    iget-object v3, v2, Lcom/android/calendar/homepage/l0;->j:Lcom/miui/calendar/util/r0;

    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/miui/calendar/util/r0;->l()J

    .line 42
    .line 43
    .line 44
    move-result-wide v3

    .line 45
    invoke-static {v0, v1, v3, v4}, Lcom/miui/calendar/util/r0;->n(JJ)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iput v0, v2, Lcom/android/calendar/homepage/l0;->l:I

    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/calendar/homepage/l0$q;->a:Lcom/android/calendar/homepage/l0;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 54
    .line 55
    .line 56
    return-void
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
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

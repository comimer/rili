.class Lcom/android/calendar/homepage/l0$f;
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
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/calendar/homepage/l0;


# direct methods
.method constructor <init>(Lcom/android/calendar/homepage/l0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/homepage/l0$f;->a:Lcom/android/calendar/homepage/l0;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/l0$f;->a:Lcom/android/calendar/homepage/l0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/calendar/homepage/l0;->C(Lcom/android/calendar/homepage/l0;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Lcom/android/calendar/homepage/l0$f;->a:Lcom/android/calendar/homepage/l0;

    .line 8
    .line 9
    invoke-static {v2}, Lcom/android/calendar/homepage/l0;->D(Lcom/android/calendar/homepage/l0;)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    sub-int/2addr v1, v2

    .line 14
    invoke-static {v0, v1}, Lcom/android/calendar/homepage/l0;->E(Lcom/android/calendar/homepage/l0;I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-static {v0, v1}, Lcom/android/calendar/homepage/l0;->F(Lcom/android/calendar/homepage/l0;I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/calendar/homepage/l0$f;->a:Lcom/android/calendar/homepage/l0;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/calendar/homepage/l0$f;->a:Lcom/android/calendar/homepage/l0;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/calendar/homepage/l0;->P2:Landroid/os/Handler;

    .line 29
    .line 30
    const-wide/16 v1, 0x14

    .line 31
    .line 32
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 33
    .line 34
    .line 35
    return-void
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
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
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

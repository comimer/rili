.class Lcom/android/calendar/event/q1$s$a;
.super Ljava/lang/Object;
.source "NewEditEventView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/q1$s;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/calendar/event/q1$s;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/q1$s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/event/q1$s$a;->a:Lcom/android/calendar/event/q1$s;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/q1$s$a;->a:Lcom/android/calendar/event/q1$s;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/calendar/event/q1$s;->d:Lcom/android/calendar/event/q1;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/android/calendar/event/q1;->K(Lcom/android/calendar/event/q1;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/calendar/event/q1$s$a;->a:Lcom/android/calendar/event/q1$s;

    .line 12
    .line 13
    iget-object v1, v0, Lcom/android/calendar/event/q1$s;->d:Lcom/android/calendar/event/q1;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/android/calendar/event/q1$s;->a(Lcom/android/calendar/event/q1$s;)Ljava/time/ZonedDateTime;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v2, p0, Lcom/android/calendar/event/q1$s$a;->a:Lcom/android/calendar/event/q1$s;

    .line 20
    .line 21
    invoke-static {v2}, Lcom/android/calendar/event/q1$s;->b(Lcom/android/calendar/event/q1$s;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    iget-object v3, p0, Lcom/android/calendar/event/q1$s$a;->a:Lcom/android/calendar/event/q1$s;

    .line 26
    .line 27
    invoke-static {v3}, Lcom/android/calendar/event/q1$s;->c(Lcom/android/calendar/event/q1$s;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-static {v1, v0, v2, v3}, Lcom/android/calendar/event/q1;->M(Lcom/android/calendar/event/q1;Ljava/time/ZonedDateTime;ZZ)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/q1$s$a;->a:Lcom/android/calendar/event/q1$s;

    .line 36
    .line 37
    iget-object v1, v0, Lcom/android/calendar/event/q1$s;->d:Lcom/android/calendar/event/q1;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/android/calendar/event/q1$s;->a(Lcom/android/calendar/event/q1$s;)Ljava/time/ZonedDateTime;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v2, p0, Lcom/android/calendar/event/q1$s$a;->a:Lcom/android/calendar/event/q1$s;

    .line 44
    .line 45
    invoke-static {v2}, Lcom/android/calendar/event/q1$s;->b(Lcom/android/calendar/event/q1$s;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-static {v1, v0, v2}, Lcom/android/calendar/event/q1;->N(Lcom/android/calendar/event/q1;Ljava/time/ZonedDateTime;Z)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
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

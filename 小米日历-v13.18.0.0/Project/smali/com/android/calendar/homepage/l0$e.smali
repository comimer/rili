.class Lcom/android/calendar/homepage/l0$e;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EventsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/homepage/l0;->getAllDayAnimator()Landroid/animation/ObjectAnimator;
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
    iput-object p1, p0, Lcom/android/calendar/homepage/l0$e;->a:Lcom/android/calendar/homepage/l0;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

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
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/calendar/homepage/l0$e;->a:Lcom/android/calendar/homepage/l0;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/calendar/homepage/l0;->w(Lcom/android/calendar/homepage/l0;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/calendar/homepage/l0$e;->a:Lcom/android/calendar/homepage/l0;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {p1, v1}, Lcom/android/calendar/homepage/l0;->x(Lcom/android/calendar/homepage/l0;I)I

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/android/calendar/homepage/l0;->A()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    xor-int/2addr p1, v0

    .line 21
    invoke-static {p1}, Lcom/android/calendar/homepage/l0;->y(Z)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/android/calendar/homepage/l0$e;->a:Lcom/android/calendar/homepage/l0;

    .line 25
    .line 26
    iput-boolean v0, p1, Lcom/android/calendar/homepage/l0;->L0:Z

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 29
    .line 30
    .line 31
    return-void
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
.end method

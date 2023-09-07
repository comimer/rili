.class public Lcom/android/calendar/homepage/l0$n;
.super Ljava/lang/Object;
.source "EventsView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/homepage/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "n"
.end annotation


# instance fields
.field private final a:I

.field private final b:Lcom/miui/calendar/util/r0;

.field private final c:J

.field private d:Landroid/widget/ViewSwitcher;


# direct methods
.method public constructor <init>(Lcom/miui/calendar/util/r0;JLandroid/widget/ViewSwitcher;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/android/calendar/homepage/l0;->o0()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput v0, p0, Lcom/android/calendar/homepage/l0$n;->a:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/android/calendar/homepage/l0$n;->b:Lcom/miui/calendar/util/r0;

    .line 11
    .line 12
    iput-wide p2, p0, Lcom/android/calendar/homepage/l0$n;->c:J

    .line 13
    .line 14
    iput-object p4, p0, Lcom/android/calendar/homepage/l0$n;->d:Landroid/widget/ViewSwitcher;

    .line 15
    .line 16
    return-void
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
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/calendar/homepage/l0$n;->d:Landroid/widget/ViewSwitcher;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/calendar/homepage/l0;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p1, v0}, Lcom/android/calendar/homepage/l0;->p0(Lcom/android/calendar/homepage/l0;I)I

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/calendar/homepage/l0$n;->d:Landroid/widget/ViewSwitcher;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/android/calendar/homepage/l0;

    .line 20
    .line 21
    invoke-static {p1, v0}, Lcom/android/calendar/homepage/l0;->p0(Lcom/android/calendar/homepage/l0;I)I

    .line 22
    .line 23
    .line 24
    new-instance p1, Lcom/miui/calendar/util/g$x0;

    .line 25
    .line 26
    invoke-direct {p1}, Lcom/miui/calendar/util/g$x0;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lcom/miui/calendar/util/g;->c(Lcom/miui/calendar/util/g$j;)V

    .line 30
    .line 31
    .line 32
    return-void
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

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/android/calendar/homepage/l0$n;->a:I

    .line 2
    .line 3
    invoke-static {}, Lcom/android/calendar/homepage/l0;->n0()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/android/calendar/homepage/l0$n;->b:Lcom/miui/calendar/util/r0;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/r0;->P(Z)J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/android/calendar/common/k;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    new-instance v0, Lcom/miui/calendar/util/g$a0;

    .line 28
    .line 29
    invoke-direct {v0, p1}, Lcom/miui/calendar/util/g$a0;-><init>(Ljava/util/Calendar;)V

    .line 30
    .line 31
    .line 32
    iget-wide v1, p0, Lcom/android/calendar/homepage/l0$n;->c:J

    .line 33
    .line 34
    long-to-int p1, v1

    .line 35
    invoke-virtual {v0, p1}, Lcom/miui/calendar/util/g$a0;->c(I)Lcom/miui/calendar/util/g$a0;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Lcom/miui/calendar/util/g;->c(Lcom/miui/calendar/util/g$j;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
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

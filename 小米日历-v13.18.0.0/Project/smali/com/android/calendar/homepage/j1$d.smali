.class public final Lcom/android/calendar/homepage/j1$d;
.super Ljava/lang/Object;
.source "WeekAgendaContainerView.kt"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/homepage/j1;->N(Ljava/util/Calendar;Ljava/util/Calendar;ZFFI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0006\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0007\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/android/calendar/homepage/j1$d",
        "Landroid/view/animation/Animation$AnimationListener;",
        "Landroid/view/animation/Animation;",
        "animation",
        "Lkotlin/u;",
        "onAnimationRepeat",
        "onAnimationEnd",
        "onAnimationStart",
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
.field final synthetic a:Lcom/android/calendar/homepage/j1;

.field final synthetic b:Ljava/util/Calendar;


# direct methods
.method constructor <init>(Lcom/android/calendar/homepage/j1;Ljava/util/Calendar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/homepage/j1$d;->a:Lcom/android/calendar/homepage/j1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/calendar/homepage/j1$d;->b:Ljava/util/Calendar;

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
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/calendar/homepage/j1$d;->a:Lcom/android/calendar/homepage/j1;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/calendar/homepage/j1;->k(Lcom/android/calendar/homepage/j1;)Landroid/widget/ViewSwitcher;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, "null cannot be cast to non-null type com.android.calendar.homepage.WeekAgendaContainerView"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast p1, Lcom/android/calendar/homepage/j1;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {p1, v1}, Lcom/android/calendar/homepage/j1;->v(Lcom/android/calendar/homepage/j1;F)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/android/calendar/homepage/j1$d;->a:Lcom/android/calendar/homepage/j1;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/android/calendar/homepage/j1;->k(Lcom/android/calendar/homepage/j1;)Landroid/widget/ViewSwitcher;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    check-cast p1, Lcom/android/calendar/homepage/j1;

    .line 36
    .line 37
    invoke-static {p1, v1}, Lcom/android/calendar/homepage/j1;->v(Lcom/android/calendar/homepage/j1;F)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/calendar/homepage/j1$d;->b:Ljava/util/Calendar;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lcom/android/calendar/homepage/j1;->setSelectedDay(Ljava/util/Calendar;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/android/calendar/homepage/j1;->K()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/android/calendar/homepage/j1;->J()V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/android/calendar/homepage/j1$d;->a:Lcom/android/calendar/homepage/j1;

    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    invoke-static {p1, v0}, Lcom/android/calendar/homepage/j1;->q(Lcom/android/calendar/homepage/j1;Z)V

    .line 55
    .line 56
    .line 57
    return-void
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
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/calendar/homepage/j1$d;->a:Lcom/android/calendar/homepage/j1;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Lcom/android/calendar/homepage/j1;->q(Lcom/android/calendar/homepage/j1;Z)V

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

.class Lcom/android/calendar/homepage/t0$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HomePageAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/homepage/t0;->J(Ljava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/android/calendar/homepage/t0;


# direct methods
.method constructor <init>(Lcom/android/calendar/homepage/t0;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/homepage/t0$a;->b:Lcom/android/calendar/homepage/t0;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/android/calendar/homepage/t0$a;->a:Z

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

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
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/calendar/homepage/t0$a;->b:Lcom/android/calendar/homepage/t0;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/calendar/homepage/t0$a;->a:Z

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/android/calendar/homepage/t0;->i(Lcom/android/calendar/homepage/t0;Z)Z

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/calendar/homepage/t0$a;->b:Lcom/android/calendar/homepage/t0;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/android/calendar/homepage/t0;->h(Lcom/android/calendar/homepage/t0;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/calendar/homepage/t0$a;->b:Lcom/android/calendar/homepage/t0;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/android/calendar/homepage/t0;->j(Lcom/android/calendar/homepage/t0;)Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object p1, p1, Lcom/android/calendar/homepage/AllInOneActivity$h;->D:Landroid/view/View;

    .line 23
    .line 24
    const/16 v0, 0x8

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
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
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/calendar/homepage/t0$a;->b:Lcom/android/calendar/homepage/t0;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/android/calendar/homepage/t0;->h(Lcom/android/calendar/homepage/t0;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/calendar/homepage/t0$a;->b:Lcom/android/calendar/homepage/t0;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/android/calendar/homepage/t0;->j(Lcom/android/calendar/homepage/t0;)Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object p1, p1, Lcom/android/calendar/homepage/AllInOneActivity$h;->D:Landroid/view/View;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
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
.end method

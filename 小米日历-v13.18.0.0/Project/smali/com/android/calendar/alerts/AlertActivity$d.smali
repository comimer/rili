.class Lcom/android/calendar/alerts/AlertActivity$d;
.super Landroidx/viewpager/widget/ViewPager$m;
.source "AlertActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/alerts/AlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/calendar/alerts/AlertActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/alerts/AlertActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/alerts/AlertActivity$d;->a:Lcom/android/calendar/alerts/AlertActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$m;-><init>()V

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
.method public onPageSelected(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity$d;->a:Lcom/android/calendar/alerts/AlertActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/calendar/alerts/AlertActivity;->f0(Lcom/android/calendar/alerts/AlertActivity;)[Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity$d;->a:Lcom/android/calendar/alerts/AlertActivity;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/android/calendar/alerts/AlertActivity;->f0(Lcom/android/calendar/alerts/AlertActivity;)[Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    array-length v0, v0

    .line 16
    if-le v0, p1, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity$d;->a:Lcom/android/calendar/alerts/AlertActivity;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/android/calendar/alerts/AlertActivity;->f0(Lcom/android/calendar/alerts/AlertActivity;)[Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    aget-object v0, v0, p1

    .line 25
    .line 26
    const v1, 0x7f0800cc

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity$d;->a:Lcom/android/calendar/alerts/AlertActivity;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/android/calendar/alerts/AlertActivity;->f0(Lcom/android/calendar/alerts/AlertActivity;)[Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/android/calendar/alerts/AlertActivity$d;->a:Lcom/android/calendar/alerts/AlertActivity;

    .line 39
    .line 40
    invoke-static {v1}, Lcom/android/calendar/alerts/AlertActivity;->g0(Lcom/android/calendar/alerts/AlertActivity;)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    aget-object v0, v0, v1

    .line 45
    .line 46
    const v1, 0x7f0800cb

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity$d;->a:Lcom/android/calendar/alerts/AlertActivity;

    .line 53
    .line 54
    invoke-static {v0, p1}, Lcom/android/calendar/alerts/AlertActivity;->h0(Lcom/android/calendar/alerts/AlertActivity;I)I

    .line 55
    .line 56
    .line 57
    :cond_0
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

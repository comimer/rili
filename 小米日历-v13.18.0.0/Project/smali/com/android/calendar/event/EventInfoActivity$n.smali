.class public final Lcom/android/calendar/event/EventInfoActivity$n;
.super Landroidx/viewpager2/widget/ViewPager2$i;
.source "EventInfoActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/EventInfoActivity;->a1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/android/calendar/event/EventInfoActivity$n",
        "Landroidx/viewpager2/widget/ViewPager2$i;",
        "",
        "position",
        "Lkotlin/u;",
        "onPageSelected",
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
.field final synthetic a:Lcom/android/calendar/event/EventInfoActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EventInfoActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoActivity$n;->a:Lcom/android/calendar/event/EventInfoActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$i;-><init>()V

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
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$i;->onPageSelected(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity$n;->a:Lcom/android/calendar/event/EventInfoActivity;

    .line 5
    .line 6
    invoke-static {v0, p1}, Lcom/android/calendar/event/EventInfoActivity;->m0(Lcom/android/calendar/event/EventInfoActivity;I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity$n;->a:Lcom/android/calendar/event/EventInfoActivity;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoActivity;->p0(Lcom/android/calendar/event/EventInfoActivity;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoActivity$n;->a:Lcom/android/calendar/event/EventInfoActivity;

    .line 18
    .line 19
    if-ltz p1, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-ge p1, v2, :cond_1

    .line 26
    .line 27
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lcom/android/calendar/event/v2/BaseEventInfoFragment;

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->o()Lcom/android/calendar/common/event/schema/Event;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p1, 0x0

    .line 41
    :goto_0
    invoke-virtual {v1, p1}, Lcom/android/calendar/event/EventInfoActivity;->G0(Lcom/android/calendar/common/event/schema/Event;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
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

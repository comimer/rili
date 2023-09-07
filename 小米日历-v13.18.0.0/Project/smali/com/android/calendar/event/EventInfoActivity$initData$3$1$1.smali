.class final Lcom/android/calendar/event/EventInfoActivity$initData$3$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "EventInfoActivity.kt"

# interfaces
.implements Lw7/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/EventInfoActivity;->d1(Lcom/android/calendar/event/EventInfoActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lw7/l<",
        "Ljava/lang/Integer;",
        "Lkotlin/u;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "",
        "whichDeleted",
        "Lkotlin/u;",
        "invoke",
        "(I)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $eventPosition:I

.field final synthetic this$0:Lcom/android/calendar/event/EventInfoActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EventInfoActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/event/EventInfoActivity$initData$3$1$1;->this$0:Lcom/android/calendar/event/EventInfoActivity;

    iput p2, p0, Lcom/android/calendar/event/EventInfoActivity$initData$3$1$1;->$eventPosition:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/EventInfoActivity$initData$3$1$1;->invoke(I)V

    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    return-object p1
.end method

.method public final invoke(I)V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity$initData$3$1$1;->this$0:Lcom/android/calendar/event/EventInfoActivity;

    invoke-static {v0}, Lcom/android/calendar/event/EventInfoActivity;->x0(Lcom/android/calendar/event/EventInfoActivity;)Z

    move-result v0

    const-string v1, "Cal:D:EventInfoActivity"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/calendar/event/EventInfoActivity$initData$3$1$1;->this$0:Lcom/android/calendar/event/EventInfoActivity;

    invoke-static {p1, v2}, Lcom/android/calendar/event/EventInfoActivity;->y0(Lcom/android/calendar/event/EventInfoActivity;Z)V

    const-string p1, "isPaused"

    .line 4
    invoke-static {v1, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget v0, p0, Lcom/android/calendar/event/EventInfoActivity$initData$3$1$1;->$eventPosition:I

    if-ltz v0, :cond_11

    iget-object v3, p0, Lcom/android/calendar/event/EventInfoActivity$initData$3$1$1;->this$0:Lcom/android/calendar/event/EventInfoActivity;

    invoke-virtual {v3}, Lcom/android/calendar/event/EventInfoActivity;->T0()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    goto/16 :goto_1

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eq p1, v2, :cond_9

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    .line 6
    iget-object p1, p0, Lcom/android/calendar/event/EventInfoActivity$initData$3$1$1;->this$0:Lcom/android/calendar/event/EventInfoActivity;

    invoke-virtual {p1}, Lcom/android/calendar/event/EventInfoActivity;->T0()Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/android/calendar/event/EventInfoActivity$initData$3$1$1;->$eventPosition:I

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lcom/android/calendar/event/EventInfoActivity$initData$3$1$1;->this$0:Lcom/android/calendar/event/EventInfoActivity;

    invoke-static {p1}, Lcom/android/calendar/event/EventInfoActivity;->p0(Lcom/android/calendar/event/EventInfoActivity;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/android/calendar/event/EventInfoActivity$initData$3$1$1;->$eventPosition:I

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/calendar/event/v2/BaseEventInfoFragment;

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/android/calendar/event/EventInfoActivity$initData$3$1$1;->this$0:Lcom/android/calendar/event/EventInfoActivity;

    iget v0, p0, Lcom/android/calendar/event/EventInfoActivity$initData$3$1$1;->$eventPosition:I

    invoke-static {p1, v0}, Lcom/android/calendar/event/EventInfoActivity;->n0(Lcom/android/calendar/event/EventInfoActivity;I)V

    goto/16 :goto_0

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/android/calendar/event/EventInfoActivity$initData$3$1$1;->this$0:Lcom/android/calendar/event/EventInfoActivity;

    invoke-virtual {p1}, Lcom/android/calendar/event/EventInfoActivity;->T0()Ljava/util/List;

    move-result-object p1

    iget v3, p0, Lcom/android/calendar/event/EventInfoActivity$initData$3$1$1;->$eventPosition:I

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    invoke-virtual {p1}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->getEventId()J

    move-result-wide v3

    .line 10
    iget-object p1, p0, Lcom/android/calendar/event/EventInfoActivity$initData$3$1$1;->this$0:Lcom/android/calendar/event/EventInfoActivity;

    invoke-virtual {p1}, Lcom/android/calendar/event/EventInfoActivity;->T0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    .line 11
    iget-object v5, p0, Lcom/android/calendar/event/EventInfoActivity$initData$3$1$1;->this$0:Lcom/android/calendar/event/EventInfoActivity;

    invoke-static {v5}, Lcom/android/calendar/event/EventInfoActivity;->p0(Lcom/android/calendar/event/EventInfoActivity;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :cond_4
    move-object v5, v1

    .line 12
    :cond_5
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    if-eqz v5, :cond_6

    .line 13
    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/calendar/event/v2/BaseEventInfoFragment;

    .line 14
    :cond_6
    invoke-virtual {v1}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->getEventId()J

    move-result-wide v6

    cmp-long v1, v6, v3

    if-nez v1, :cond_7

    .line 15
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    if-eqz v5, :cond_7

    .line 16
    invoke-interface {v5}, Ljava/util/ListIterator;->remove()V

    :cond_7
    if-nez v0, :cond_8

    .line 17
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity$initData$3$1$1;->this$0:Lcom/android/calendar/event/EventInfoActivity;

    iget v1, p0, Lcom/android/calendar/event/EventInfoActivity$initData$3$1$1;->$eventPosition:I

    invoke-static {v0, v1}, Lcom/android/calendar/event/EventInfoActivity;->n0(Lcom/android/calendar/event/EventInfoActivity;I)V

    move v0, v2

    .line 18
    :cond_8
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    .line 19
    iget-object p1, p0, Lcom/android/calendar/event/EventInfoActivity$initData$3$1$1;->this$0:Lcom/android/calendar/event/EventInfoActivity;

    invoke-static {p1}, Lcom/android/calendar/event/EventInfoActivity;->s0(Lcom/android/calendar/event/EventInfoActivity;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    goto :goto_0

    .line 20
    :cond_9
    iget-object p1, p0, Lcom/android/calendar/event/EventInfoActivity$initData$3$1$1;->this$0:Lcom/android/calendar/event/EventInfoActivity;

    invoke-virtual {p1}, Lcom/android/calendar/event/EventInfoActivity;->T0()Ljava/util/List;

    move-result-object p1

    iget v3, p0, Lcom/android/calendar/event/EventInfoActivity$initData$3$1$1;->$eventPosition:I

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    invoke-virtual {p1}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->getEventId()J

    move-result-wide v3

    .line 21
    iget-object p1, p0, Lcom/android/calendar/event/EventInfoActivity$initData$3$1$1;->this$0:Lcom/android/calendar/event/EventInfoActivity;

    invoke-virtual {p1}, Lcom/android/calendar/event/EventInfoActivity;->T0()Ljava/util/List;

    move-result-object p1

    iget v5, p0, Lcom/android/calendar/event/EventInfoActivity$initData$3$1$1;->$eventPosition:I

    invoke-interface {p1, v5}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    .line 22
    iget-object v5, p0, Lcom/android/calendar/event/EventInfoActivity$initData$3$1$1;->this$0:Lcom/android/calendar/event/EventInfoActivity;

    invoke-static {v5}, Lcom/android/calendar/event/EventInfoActivity;->p0(Lcom/android/calendar/event/EventInfoActivity;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_a

    iget v1, p0, Lcom/android/calendar/event/EventInfoActivity$initData$3$1$1;->$eventPosition:I

    invoke-interface {v5, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    :cond_a
    move-object v5, v1

    .line 23
    :cond_b
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    if-eqz v5, :cond_c

    .line 24
    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/calendar/event/v2/BaseEventInfoFragment;

    .line 25
    :cond_c
    invoke-virtual {v1}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->getEventId()J

    move-result-wide v6

    cmp-long v1, v6, v3

    if-nez v1, :cond_d

    .line 26
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    if-eqz v5, :cond_d

    .line 27
    invoke-interface {v5}, Ljava/util/ListIterator;->remove()V

    :cond_d
    if-nez v0, :cond_e

    .line 28
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity$initData$3$1$1;->this$0:Lcom/android/calendar/event/EventInfoActivity;

    iget v1, p0, Lcom/android/calendar/event/EventInfoActivity$initData$3$1$1;->$eventPosition:I

    invoke-static {v0, v1}, Lcom/android/calendar/event/EventInfoActivity;->n0(Lcom/android/calendar/event/EventInfoActivity;I)V

    move v0, v2

    .line 29
    :cond_e
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_b

    .line 30
    iget-object p1, p0, Lcom/android/calendar/event/EventInfoActivity$initData$3$1$1;->this$0:Lcom/android/calendar/event/EventInfoActivity;

    invoke-static {p1}, Lcom/android/calendar/event/EventInfoActivity;->s0(Lcom/android/calendar/event/EventInfoActivity;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    .line 31
    :cond_f
    :goto_0
    iget-object p1, p0, Lcom/android/calendar/event/EventInfoActivity$initData$3$1$1;->this$0:Lcom/android/calendar/event/EventInfoActivity;

    invoke-virtual {p1}, Lcom/android/calendar/event/EventInfoActivity;->T0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 32
    iget-object p1, p0, Lcom/android/calendar/event/EventInfoActivity$initData$3$1$1;->this$0:Lcom/android/calendar/event/EventInfoActivity;

    invoke-virtual {p1}, Lcom/android/calendar/event/EventInfoActivity;->H0()V

    :cond_10
    return-void

    :cond_11
    :goto_1
    const-string p1, "eventPosition is illegal"

    .line 33
    invoke-static {v1, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

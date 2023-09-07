.class final Lcom/android/calendar/homepage/AllDayEventsView$mItemClickListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AllDayEventsView.kt"

# interfaces
.implements Lw7/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/homepage/AllDayEventsView;-><init>(Landroid/content/Context;ILcom/android/calendar/homepage/AllDayViewPager;Landroid/widget/ViewSwitcher;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lw7/r<",
        "Landroid/widget/AdapterView<",
        "*>;",
        "Landroid/view/View;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        "Lkotlin/u;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u000b\u001a\u00020\u00082\n\u0010\u0001\u001a\u0006\u0012\u0002\u0008\u00030\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\n\u00a2\u0006\u0004\u0008\t\u0010\n"
    }
    d2 = {
        "Landroid/widget/AdapterView;",
        "adapterView",
        "Landroid/view/View;",
        "view1",
        "",
        "position",
        "",
        "id",
        "Lkotlin/u;",
        "invoke",
        "(Landroid/widget/AdapterView;Landroid/view/View;IJ)V",
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
.field final synthetic this$0:Lcom/android/calendar/homepage/AllDayEventsView;


# direct methods
.method constructor <init>(Lcom/android/calendar/homepage/AllDayEventsView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/homepage/AllDayEventsView$mItemClickListener$1;->this$0:Lcom/android/calendar/homepage/AllDayEventsView;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    move-object v1, p1

    check-cast v1, Landroid/widget/AdapterView;

    move-object v2, p2

    check-cast v2, Landroid/view/View;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result v3

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/homepage/AllDayEventsView$mItemClickListener$1;->invoke(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    return-object p1
.end method

.method public final invoke(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-string p4, "adapterView"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "view1"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/calendar/homepage/AllDayEventsView$mItemClickListener$1;->this$0:Lcom/android/calendar/homepage/AllDayEventsView;

    invoke-static {p1}, Lcom/android/calendar/homepage/AllDayEventsView;->w(Lcom/android/calendar/homepage/AllDayEventsView;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/calendar/homepage/AllDayEventsView$mItemClickListener$1;->this$0:Lcom/android/calendar/homepage/AllDayEventsView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/calendar/homepage/AllDayEventsView$mItemClickListener$1;->this$0:Lcom/android/calendar/homepage/AllDayEventsView;

    invoke-static {p2}, Lcom/android/calendar/homepage/AllDayEventsView;->j(Lcom/android/calendar/homepage/AllDayEventsView;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/calendar/homepage/l0$l;

    iget-object p2, p2, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    iget-object p3, p0, Lcom/android/calendar/homepage/AllDayEventsView$mItemClickListener$1;->this$0:Lcom/android/calendar/homepage/AllDayEventsView;

    invoke-static {p3}, Lcom/android/calendar/homepage/AllDayEventsView;->g(Lcom/android/calendar/homepage/AllDayEventsView;)Ljava/util/ArrayList;

    move-result-object p3

    iget-object p4, p0, Lcom/android/calendar/homepage/AllDayEventsView$mItemClickListener$1;->this$0:Lcom/android/calendar/homepage/AllDayEventsView;

    invoke-static {p4}, Lcom/android/calendar/homepage/AllDayEventsView;->p(Lcom/android/calendar/homepage/AllDayEventsView;)I

    move-result p4

    .line 5
    iget-object p5, p0, Lcom/android/calendar/homepage/AllDayEventsView$mItemClickListener$1;->this$0:Lcom/android/calendar/homepage/AllDayEventsView;

    invoke-virtual {p5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-static {p5}, Lcom/android/calendar/common/Utils;->U(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p5

    .line 6
    invoke-static {p4, p5}, Lcom/miui/calendar/util/s0;->d(ILjava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p4

    invoke-static {p1, p2, p3, p4}, Lcom/android/calendar/common/Utils;->O0(Landroid/content/Context;Lcom/android/calendar/common/event/schema/Event;Ljava/util/List;Ljava/util/Calendar;)V

    :goto_0
    return-void
.end method

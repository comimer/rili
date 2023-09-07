.class final Lcom/android/calendar/homepage/AgendaListLayout$loadEvents$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AgendaListLayout.kt"

# interfaces
.implements Lw7/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/homepage/AgendaListLayout;->W(Ljava/util/Calendar;IZZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lw7/l<",
        "Ljava/util/List<",
        "+",
        "Lcom/android/calendar/common/event/schema/Event;",
        ">;",
        "Lkotlin/u;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0012\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0006\u001a\u00020\u00032\u0010\u0010\u0002\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "",
        "Lcom/android/calendar/common/event/schema/Event;",
        "it",
        "Lkotlin/u;",
        "invoke",
        "(Ljava/util/List;)V",
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
.field final synthetic $monthNumToQuery:I

.field final synthetic $resetPosition:Z

.field final synthetic $runnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/calendar/homepage/AgendaListLayout;


# direct methods
.method constructor <init>(ILcom/android/calendar/homepage/AgendaListLayout;ZLjava/lang/Runnable;)V
    .locals 0

    iput p1, p0, Lcom/android/calendar/homepage/AgendaListLayout$loadEvents$1;->$monthNumToQuery:I

    iput-object p2, p0, Lcom/android/calendar/homepage/AgendaListLayout$loadEvents$1;->this$0:Lcom/android/calendar/homepage/AgendaListLayout;

    iput-boolean p3, p0, Lcom/android/calendar/homepage/AgendaListLayout$loadEvents$1;->$resetPosition:Z

    iput-object p4, p0, Lcom/android/calendar/homepage/AgendaListLayout$loadEvents$1;->$runnable:Ljava/lang/Runnable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/calendar/homepage/AgendaListLayout$loadEvents$1;->invoke(Ljava/util/List;)V

    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/calendar/common/event/schema/Event;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/calendar/homepage/AgendaListLayout$loadEvents$1;->$monthNumToQuery:I

    if-lez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/calendar/homepage/AgendaListLayout$loadEvents$1;->this$0:Lcom/android/calendar/homepage/AgendaListLayout;

    invoke-virtual {p1}, Lcom/android/calendar/homepage/AgendaListLayout;->getMEventsList()Lcom/miui/calendar/view/RefreshLoadRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/calendar/view/RefreshLoadRecyclerView;->t()V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/android/calendar/homepage/AgendaListLayout$loadEvents$1;->this$0:Lcom/android/calendar/homepage/AgendaListLayout;

    invoke-static {p1}, Lcom/android/calendar/homepage/AgendaListLayout;->Q(Lcom/android/calendar/homepage/AgendaListLayout;)V

    .line 5
    iget-object p1, p0, Lcom/android/calendar/homepage/AgendaListLayout$loadEvents$1;->this$0:Lcom/android/calendar/homepage/AgendaListLayout;

    invoke-static {p1, v0}, Lcom/android/calendar/homepage/AgendaListLayout;->L(Lcom/android/calendar/homepage/AgendaListLayout;Z)V

    .line 6
    iget-object p1, p0, Lcom/android/calendar/homepage/AgendaListLayout$loadEvents$1;->this$0:Lcom/android/calendar/homepage/AgendaListLayout;

    invoke-static {p1, v0}, Lcom/android/calendar/homepage/AgendaListLayout;->P(Lcom/android/calendar/homepage/AgendaListLayout;Z)V

    .line 7
    iget-object p1, p0, Lcom/android/calendar/homepage/AgendaListLayout$loadEvents$1;->this$0:Lcom/android/calendar/homepage/AgendaListLayout;

    invoke-static {p1}, Lcom/android/calendar/homepage/AgendaListLayout;->E(Lcom/android/calendar/homepage/AgendaListLayout;)Ln1/i;

    move-result-object p1

    invoke-static {}, Lcom/android/calendar/common/Utils;->V()Ljava/util/Calendar;

    move-result-object v1

    const-string v2, "getToDate()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ln1/i;->a(Ljava/util/Calendar;)I

    move-result p1

    .line 8
    iget-object v1, p0, Lcom/android/calendar/homepage/AgendaListLayout$loadEvents$1;->this$0:Lcom/android/calendar/homepage/AgendaListLayout;

    invoke-static {v1, p1}, Lcom/android/calendar/homepage/AgendaListLayout;->D(Lcom/android/calendar/homepage/AgendaListLayout;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/android/calendar/homepage/AgendaListLayout$loadEvents$1;->this$0:Lcom/android/calendar/homepage/AgendaListLayout;

    invoke-static {p1}, Lcom/android/calendar/homepage/AgendaListLayout;->E(Lcom/android/calendar/homepage/AgendaListLayout;)Ln1/i;

    move-result-object p1

    invoke-static {}, Lcom/android/calendar/common/Utils;->V()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ln1/i;->a(Ljava/util/Calendar;)I

    move-result p1

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/android/calendar/homepage/AgendaListLayout$loadEvents$1;->this$0:Lcom/android/calendar/homepage/AgendaListLayout;

    invoke-virtual {v1}, Lcom/android/calendar/homepage/AgendaListLayout;->getMAdapter()Ln1/c;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    .line 11
    iget-boolean v1, p0, Lcom/android/calendar/homepage/AgendaListLayout$loadEvents$1;->$resetPosition:Z

    if-eqz v1, :cond_3

    .line 12
    iget-object v1, p0, Lcom/android/calendar/homepage/AgendaListLayout$loadEvents$1;->this$0:Lcom/android/calendar/homepage/AgendaListLayout;

    invoke-virtual {v1}, Lcom/android/calendar/homepage/AgendaListLayout;->getMEventsList()Lcom/miui/calendar/view/RefreshLoadRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 13
    iget-object v1, p0, Lcom/android/calendar/homepage/AgendaListLayout$loadEvents$1;->this$0:Lcom/android/calendar/homepage/AgendaListLayout;

    invoke-static {v1}, Lcom/android/calendar/homepage/AgendaListLayout;->H(Lcom/android/calendar/homepage/AgendaListLayout;)Lcom/android/calendar/common/WrapperLinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/android/calendar/homepage/AgendaListLayout$loadEvents$1;->$runnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 15
    :cond_4
    iget-object p1, p0, Lcom/android/calendar/homepage/AgendaListLayout$loadEvents$1;->this$0:Lcom/android/calendar/homepage/AgendaListLayout;

    invoke-static {p1}, Lcom/android/calendar/homepage/AgendaListLayout;->R(Lcom/android/calendar/homepage/AgendaListLayout;)V

    .line 16
    invoke-static {}, Lpc/c;->c()Lpc/c;

    move-result-object p1

    new-instance v0, Lcom/miui/calendar/util/g$w;

    iget-object v1, p0, Lcom/android/calendar/homepage/AgendaListLayout$loadEvents$1;->this$0:Lcom/android/calendar/homepage/AgendaListLayout;

    invoke-static {v1}, Lcom/android/calendar/homepage/AgendaListLayout;->E(Lcom/android/calendar/homepage/AgendaListLayout;)Ln1/i;

    move-result-object v1

    invoke-virtual {v1}, Ln1/i;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/miui/calendar/util/g$w;-><init>(I)V

    invoke-virtual {p1, v0}, Lpc/c;->k(Ljava/lang/Object;)V

    return-void
.end method

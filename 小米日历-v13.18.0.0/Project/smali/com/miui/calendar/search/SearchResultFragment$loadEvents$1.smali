.class final Lcom/miui/calendar/search/SearchResultFragment$loadEvents$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SearchResultFragment.kt"

# interfaces
.implements Lw7/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/calendar/search/SearchResultFragment;->y(Ljava/util/Calendar;ILjava/lang/String;Ljava/lang/Runnable;)V
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

.field final synthetic $runnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/miui/calendar/search/SearchResultFragment;


# direct methods
.method constructor <init>(ILcom/miui/calendar/search/SearchResultFragment;Ljava/lang/Runnable;)V
    .locals 0

    iput p1, p0, Lcom/miui/calendar/search/SearchResultFragment$loadEvents$1;->$monthNumToQuery:I

    iput-object p2, p0, Lcom/miui/calendar/search/SearchResultFragment$loadEvents$1;->this$0:Lcom/miui/calendar/search/SearchResultFragment;

    iput-object p3, p0, Lcom/miui/calendar/search/SearchResultFragment$loadEvents$1;->$runnable:Ljava/lang/Runnable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/calendar/search/SearchResultFragment$loadEvents$1;->invoke(Ljava/util/List;)V

    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 2
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
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/miui/calendar/search/SearchResultFragment$loadEvents$1;->$monthNumToQuery:I

    if-lez p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/miui/calendar/search/SearchResultFragment$loadEvents$1;->this$0:Lcom/miui/calendar/search/SearchResultFragment;

    invoke-static {p1}, Lcom/miui/calendar/search/SearchResultFragment;->o(Lcom/miui/calendar/search/SearchResultFragment;)Lcom/miui/calendar/view/RefreshLoadRecyclerView;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "mEventsList"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    move-object p1, v1

    :cond_1
    invoke-virtual {p1}, Lcom/miui/calendar/view/RefreshLoadRecyclerView;->t()V

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/miui/calendar/search/SearchResultFragment$loadEvents$1;->this$0:Lcom/miui/calendar/search/SearchResultFragment;

    invoke-static {p1}, Lcom/miui/calendar/search/SearchResultFragment;->t(Lcom/miui/calendar/search/SearchResultFragment;)V

    .line 5
    iget-object p1, p0, Lcom/miui/calendar/search/SearchResultFragment$loadEvents$1;->this$0:Lcom/miui/calendar/search/SearchResultFragment;

    invoke-static {p1, v0}, Lcom/miui/calendar/search/SearchResultFragment;->s(Lcom/miui/calendar/search/SearchResultFragment;Z)V

    .line 6
    iget-object p1, p0, Lcom/miui/calendar/search/SearchResultFragment$loadEvents$1;->this$0:Lcom/miui/calendar/search/SearchResultFragment;

    invoke-static {p1}, Lcom/miui/calendar/search/SearchResultFragment;->m(Lcom/miui/calendar/search/SearchResultFragment;)Ln1/c;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "mAdapter"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v1, p1

    :goto_1
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    .line 7
    iget-object p1, p0, Lcom/miui/calendar/search/SearchResultFragment$loadEvents$1;->$runnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/miui/calendar/search/SearchResultFragment$loadEvents$1;->this$0:Lcom/miui/calendar/search/SearchResultFragment;

    invoke-static {p1}, Lcom/miui/calendar/search/SearchResultFragment;->u(Lcom/miui/calendar/search/SearchResultFragment;)V

    return-void
.end method

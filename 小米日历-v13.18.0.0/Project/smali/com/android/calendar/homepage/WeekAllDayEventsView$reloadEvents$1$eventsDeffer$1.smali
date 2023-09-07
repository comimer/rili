.class final Lcom/android/calendar/homepage/WeekAllDayEventsView$reloadEvents$1$eventsDeffer$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WeekAllDayEventsView.kt"

# interfaces
.implements Lw7/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/homepage/WeekAllDayEventsView$reloadEvents$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lw7/p<",
        "Lkotlinx/coroutines/k0;",
        "Lkotlin/coroutines/c<",
        "-",
        "Ljava/util/List<",
        "+",
        "Lcom/android/calendar/common/event/schema/Event;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"
    }
    d2 = {
        "Lkotlinx/coroutines/k0;",
        "",
        "Lcom/android/calendar/common/event/schema/Event;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.android.calendar.homepage.WeekAllDayEventsView$reloadEvents$1$eventsDeffer$1"
    f = "WeekAllDayEventsView.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/android/calendar/homepage/WeekAllDayEventsView;


# direct methods
.method constructor <init>(Lcom/android/calendar/homepage/WeekAllDayEventsView;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/homepage/WeekAllDayEventsView;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcom/android/calendar/homepage/WeekAllDayEventsView$reloadEvents$1$eventsDeffer$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/calendar/homepage/WeekAllDayEventsView$reloadEvents$1$eventsDeffer$1;->this$0:Lcom/android/calendar/homepage/WeekAllDayEventsView;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/c<",
            "*>;)",
            "Lkotlin/coroutines/c<",
            "Lkotlin/u;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/android/calendar/homepage/WeekAllDayEventsView$reloadEvents$1$eventsDeffer$1;

    iget-object v0, p0, Lcom/android/calendar/homepage/WeekAllDayEventsView$reloadEvents$1$eventsDeffer$1;->this$0:Lcom/android/calendar/homepage/WeekAllDayEventsView;

    invoke-direct {p1, v0, p2}, Lcom/android/calendar/homepage/WeekAllDayEventsView$reloadEvents$1$eventsDeffer$1;-><init>(Lcom/android/calendar/homepage/WeekAllDayEventsView;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/k0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/homepage/WeekAllDayEventsView$reloadEvents$1$eventsDeffer$1;->invoke(Lkotlinx/coroutines/k0;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/k0;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/k0;",
            "Lkotlin/coroutines/c<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/android/calendar/common/event/schema/Event;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/homepage/WeekAllDayEventsView$reloadEvents$1$eventsDeffer$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcom/android/calendar/homepage/WeekAllDayEventsView$reloadEvents$1$eventsDeffer$1;

    sget-object p2, Lkotlin/u;->a:Lkotlin/u;

    invoke-virtual {p1, p2}, Lcom/android/calendar/homepage/WeekAllDayEventsView$reloadEvents$1$eventsDeffer$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/android/calendar/homepage/WeekAllDayEventsView$reloadEvents$1$eventsDeffer$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/j;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Ls1/e;->a:Ls1/e;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/calendar/homepage/WeekAllDayEventsView$reloadEvents$1$eventsDeffer$1;->this$0:Lcom/android/calendar/homepage/WeekAllDayEventsView;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string p1, "context"

    .line 20
    .line 21
    invoke-static {v2, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/calendar/homepage/WeekAllDayEventsView$reloadEvents$1$eventsDeffer$1;->this$0:Lcom/android/calendar/homepage/WeekAllDayEventsView;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/android/calendar/homepage/WeekAllDayEventsView;->y(Lcom/android/calendar/homepage/WeekAllDayEventsView;)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/4 v4, 0x7

    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v6, 0x0

    .line 33
    const/16 v7, 0x18

    .line 34
    .line 35
    const/4 v8, 0x0

    .line 36
    invoke-static/range {v1 .. v8}, Lcom/android/calendar/event/c0;->b(Ls1/e;Landroid/content/Context;IIILjava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1
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

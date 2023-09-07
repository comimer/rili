.class final Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$7$1$2$onOnceSuccess$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AgendaEventInfoFragment.kt"

# interfaces
.implements Lw7/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$7$1$2$onOnceSuccess$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lkotlin/u;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"
    }
    d2 = {
        "Lkotlinx/coroutines/k0;",
        "Lkotlin/u;",
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
    c = "com.android.calendar.event.v2.AgendaEventInfoFragment$onEventLoad$7$1$2$onOnceSuccess$1$1"
    f = "AgendaEventInfoFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $it:Landroidx/fragment/app/d;

.field final synthetic $newEventId:J

.field label:I

.field final synthetic this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;


# direct methods
.method constructor <init>(JLandroidx/fragment/app/d;Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/fragment/app/d;",
            "Lcom/android/calendar/event/v2/AgendaEventInfoFragment;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$7$1$2$onOnceSuccess$1$1;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$7$1$2$onOnceSuccess$1$1;->$newEventId:J

    iput-object p3, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$7$1$2$onOnceSuccess$1$1;->$it:Landroidx/fragment/app/d;

    iput-object p4, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$7$1$2$onOnceSuccess$1$1;->this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 6
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

    new-instance p1, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$7$1$2$onOnceSuccess$1$1;

    iget-wide v1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$7$1$2$onOnceSuccess$1$1;->$newEventId:J

    iget-object v3, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$7$1$2$onOnceSuccess$1$1;->$it:Landroidx/fragment/app/d;

    iget-object v4, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$7$1$2$onOnceSuccess$1$1;->this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$7$1$2$onOnceSuccess$1$1;-><init>(JLandroidx/fragment/app/d;Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/k0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$7$1$2$onOnceSuccess$1$1;->invoke(Lkotlinx/coroutines/k0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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
            "Lkotlin/u;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$7$1$2$onOnceSuccess$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$7$1$2$onOnceSuccess$1$1;

    sget-object p2, Lkotlin/u;->a:Lkotlin/u;

    invoke-virtual {p1, p2}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$7$1$2$onOnceSuccess$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$7$1$2$onOnceSuccess$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/j;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-wide v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$7$1$2$onOnceSuccess$1$1;->$newEventId:J

    .line 12
    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    cmp-long p1, v0, v2

    .line 16
    .line 17
    if-ltz p1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$7$1$2$onOnceSuccess$1$1;->$it:Landroidx/fragment/app/d;

    .line 20
    .line 21
    instance-of v0, p1, Lcom/android/calendar/event/EventInfoActivity;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    check-cast p1, Lcom/android/calendar/event/EventInfoActivity;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    :goto_0
    if-eqz p1, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$7$1$2$onOnceSuccess$1$1;->this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->p()Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-wide v1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$7$1$2$onOnceSuccess$1$1;->$newEventId:J

    .line 38
    .line 39
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/calendar/event/EventInfoActivity;->o1(Lcom/android/calendar/event/EventInfoActivity$EventInfo;J)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const-string p1, "Cal:D:AgendaEventInfoFragment"

    .line 44
    .line 45
    const-string v0, "alarm onSuccess error"

    .line 46
    .line 47
    invoke-static {p1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$7$1$2$onOnceSuccess$1$1;->$it:Landroidx/fragment/app/d;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_1
    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    .line 56
    .line 57
    return-object p1

    .line 58
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 61
    .line 62
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1
.end method

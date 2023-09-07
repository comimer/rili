.class final Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$startLoading$1$reminderDeffer$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BaseSmsEventInfoFragment.kt"

# interfaces
.implements Lw7/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$startLoading$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0000*\u00020\u0002H\u008a@"
    }
    d2 = {
        "Lcom/android/calendar/common/event/schema/SmsEvent;",
        "T",
        "Lkotlinx/coroutines/k0;",
        "",
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
    c = "com.android.calendar.event.v2.sms.BaseSmsEventInfoFragment$startLoading$1$reminderDeffer$1"
    f = "BaseSmsEventInfoFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment<",
            "TT;>;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$startLoading$1$reminderDeffer$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$startLoading$1$reminderDeffer$1;->this$0:Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;

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

    new-instance p1, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$startLoading$1$reminderDeffer$1;

    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$startLoading$1$reminderDeffer$1;->this$0:Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;

    invoke-direct {p1, v0, p2}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$startLoading$1$reminderDeffer$1;-><init>(Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/k0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$startLoading$1$reminderDeffer$1;->invoke(Lkotlinx/coroutines/k0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$startLoading$1$reminderDeffer$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$startLoading$1$reminderDeffer$1;

    sget-object p2, Lkotlin/u;->a:Lkotlin/u;

    invoke-virtual {p1, p2}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$startLoading$1$reminderDeffer$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$startLoading$1$reminderDeffer$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/j;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$startLoading$1$reminderDeffer$1;->this$0:Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->N(Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;)Lcom/android/calendar/event/EventInfoActivity;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$startLoading$1$reminderDeffer$1;->this$0:Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->M(Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;)Lcom/android/calendar/common/event/schema/SmsEvent;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    invoke-static {p1, v0, v1}, Lx3/b;->b(Landroid/content/Context;J)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment$startLoading$1$reminderDeffer$1;->this$0:Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->Z()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0, p1}, Lcom/miui/calendar/util/x0;->M(Ljava/util/List;I)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->b(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1
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

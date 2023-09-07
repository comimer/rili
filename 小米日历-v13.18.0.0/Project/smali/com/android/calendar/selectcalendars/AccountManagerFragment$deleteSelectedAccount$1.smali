.class final Lcom/android/calendar/selectcalendars/AccountManagerFragment$deleteSelectedAccount$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AccountManagerFragment.kt"

# interfaces
.implements Lw7/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/selectcalendars/AccountManagerFragment;->q()V
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
    c = "com.android.calendar.selectcalendars.AccountManagerFragment$deleteSelectedAccount$1"
    f = "AccountManagerFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $account:Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;

.field label:I

.field final synthetic this$0:Lcom/android/calendar/selectcalendars/AccountManagerFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;Lcom/android/calendar/selectcalendars/AccountManagerFragment;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;",
            "Lcom/android/calendar/selectcalendars/AccountManagerFragment;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcom/android/calendar/selectcalendars/AccountManagerFragment$deleteSelectedAccount$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment$deleteSelectedAccount$1;->$account:Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;

    iput-object p2, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment$deleteSelectedAccount$1;->this$0:Lcom/android/calendar/selectcalendars/AccountManagerFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 2
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

    new-instance p1, Lcom/android/calendar/selectcalendars/AccountManagerFragment$deleteSelectedAccount$1;

    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment$deleteSelectedAccount$1;->$account:Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;

    iget-object v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment$deleteSelectedAccount$1;->this$0:Lcom/android/calendar/selectcalendars/AccountManagerFragment;

    invoke-direct {p1, v0, v1, p2}, Lcom/android/calendar/selectcalendars/AccountManagerFragment$deleteSelectedAccount$1;-><init>(Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;Lcom/android/calendar/selectcalendars/AccountManagerFragment;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/k0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/selectcalendars/AccountManagerFragment$deleteSelectedAccount$1;->invoke(Lkotlinx/coroutines/k0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/selectcalendars/AccountManagerFragment$deleteSelectedAccount$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcom/android/calendar/selectcalendars/AccountManagerFragment$deleteSelectedAccount$1;

    sget-object p2, Lkotlin/u;->a:Lkotlin/u;

    invoke-virtual {p1, p2}, Lcom/android/calendar/selectcalendars/AccountManagerFragment$deleteSelectedAccount$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment$deleteSelectedAccount$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/j;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment$deleteSelectedAccount$1;->$account:Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$e;->g()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lcom/miui/calendar/util/DeviceUtils;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerFragment$deleteSelectedAccount$1;->this$0:Lcom/android/calendar/selectcalendars/AccountManagerFragment;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/android/calendar/selectcalendars/AccountManagerFragment;->m(Lcom/android/calendar/selectcalendars/AccountManagerFragment;)Landroid/app/Activity;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-static {v0, p1, v1}, Lb2/a;->l(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 32
    .line 33
    .line 34
    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 40
    .line 41
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1
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

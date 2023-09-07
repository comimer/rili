.class final Lcom/android/calendar/event/EventInfoActivity$registerFragmentLifecycleCallbacks$1$onFragmentViewDestroyed$job$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EventInfoActivity.kt"

# interfaces
.implements Lw7/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/EventInfoActivity$registerFragmentLifecycleCallbacks$1;->n(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
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
    c = "com.android.calendar.event.EventInfoActivity$registerFragmentLifecycleCallbacks$1$onFragmentViewDestroyed$job$1"
    f = "EventInfoActivity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $f:Landroidx/fragment/app/Fragment;

.field label:I

.field final synthetic this$0:Lcom/android/calendar/event/EventInfoActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EventInfoActivity;Landroidx/fragment/app/Fragment;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/event/EventInfoActivity;",
            "Landroidx/fragment/app/Fragment;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcom/android/calendar/event/EventInfoActivity$registerFragmentLifecycleCallbacks$1$onFragmentViewDestroyed$job$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/calendar/event/EventInfoActivity$registerFragmentLifecycleCallbacks$1$onFragmentViewDestroyed$job$1;->this$0:Lcom/android/calendar/event/EventInfoActivity;

    iput-object p2, p0, Lcom/android/calendar/event/EventInfoActivity$registerFragmentLifecycleCallbacks$1$onFragmentViewDestroyed$job$1;->$f:Landroidx/fragment/app/Fragment;

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

    new-instance p1, Lcom/android/calendar/event/EventInfoActivity$registerFragmentLifecycleCallbacks$1$onFragmentViewDestroyed$job$1;

    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity$registerFragmentLifecycleCallbacks$1$onFragmentViewDestroyed$job$1;->this$0:Lcom/android/calendar/event/EventInfoActivity;

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoActivity$registerFragmentLifecycleCallbacks$1$onFragmentViewDestroyed$job$1;->$f:Landroidx/fragment/app/Fragment;

    invoke-direct {p1, v0, v1, p2}, Lcom/android/calendar/event/EventInfoActivity$registerFragmentLifecycleCallbacks$1$onFragmentViewDestroyed$job$1;-><init>(Lcom/android/calendar/event/EventInfoActivity;Landroidx/fragment/app/Fragment;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/k0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/EventInfoActivity$registerFragmentLifecycleCallbacks$1$onFragmentViewDestroyed$job$1;->invoke(Lkotlinx/coroutines/k0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/EventInfoActivity$registerFragmentLifecycleCallbacks$1$onFragmentViewDestroyed$job$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcom/android/calendar/event/EventInfoActivity$registerFragmentLifecycleCallbacks$1$onFragmentViewDestroyed$job$1;

    sget-object p2, Lkotlin/u;->a:Lkotlin/u;

    invoke-virtual {p1, p2}, Lcom/android/calendar/event/EventInfoActivity$registerFragmentLifecycleCallbacks$1$onFragmentViewDestroyed$job$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/android/calendar/event/EventInfoActivity$registerFragmentLifecycleCallbacks$1$onFragmentViewDestroyed$job$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/j;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/calendar/event/EventInfoActivity$registerFragmentLifecycleCallbacks$1$onFragmentViewDestroyed$job$1;->this$0:Lcom/android/calendar/event/EventInfoActivity;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/android/calendar/event/EventInfoActivity;->q0(Lcom/android/calendar/event/EventInfoActivity;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity$registerFragmentLifecycleCallbacks$1$onFragmentViewDestroyed$job$1;->$f:Landroidx/fragment/app/Fragment;

    .line 18
    .line 19
    check-cast v0, Lcom/android/calendar/event/v2/BaseEventInfoFragment;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->p()Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->hash()J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    invoke-static {v2, v3}, Lkotlin/coroutines/jvm/internal/a;->c(J)Ljava/lang/Long;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move-object v0, v1

    .line 38
    :goto_0
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-nez p1, :cond_1

    .line 43
    .line 44
    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    .line 45
    .line 46
    return-object p1

    .line 47
    :cond_1
    iget-object p1, p0, Lcom/android/calendar/event/EventInfoActivity$registerFragmentLifecycleCallbacks$1$onFragmentViewDestroyed$job$1;->this$0:Lcom/android/calendar/event/EventInfoActivity;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/android/calendar/event/EventInfoActivity;->q0(Lcom/android/calendar/event/EventInfoActivity;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity$registerFragmentLifecycleCallbacks$1$onFragmentViewDestroyed$job$1;->$f:Landroidx/fragment/app/Fragment;

    .line 54
    .line 55
    check-cast v0, Lcom/android/calendar/event/v2/BaseEventInfoFragment;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->p()Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoActivity$EventInfo;->hash()J

    .line 64
    .line 65
    .line 66
    move-result-wide v0

    .line 67
    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/a;->c(J)Ljava/lang/Long;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    :cond_2
    invoke-static {p1}, Lkotlin/jvm/internal/a0;->e(Ljava/lang/Object;)Ljava/util/Map;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/android/calendar/event/EventInfoActivity$registerFragmentLifecycleCallbacks$1$onFragmentViewDestroyed$job$1;->this$0:Lcom/android/calendar/event/EventInfoActivity;

    .line 79
    .line 80
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity$registerFragmentLifecycleCallbacks$1$onFragmentViewDestroyed$job$1;->$f:Landroidx/fragment/app/Fragment;

    .line 81
    .line 82
    check-cast v0, Lcom/android/calendar/event/v2/BaseEventInfoFragment;

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->p()Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-static {p1, v0}, Lcom/android/calendar/event/EventInfoActivity;->t0(Lcom/android/calendar/event/EventInfoActivity;Lcom/android/calendar/event/EventInfoActivity$EventInfo;)V

    .line 92
    .line 93
    .line 94
    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    .line 95
    .line 96
    return-object p1

    .line 97
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 98
    .line 99
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 100
    .line 101
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p1
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method

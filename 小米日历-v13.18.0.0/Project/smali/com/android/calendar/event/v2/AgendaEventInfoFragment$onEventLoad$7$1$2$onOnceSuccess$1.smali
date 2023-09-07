.class final Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$7$1$2$onOnceSuccess$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AgendaEventInfoFragment.kt"

# interfaces
.implements Lw7/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$7$1$2;->b()V
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
    c = "com.android.calendar.event.v2.AgendaEventInfoFragment$onEventLoad$7$1$2$onOnceSuccess$1"
    f = "AgendaEventInfoFragment.kt"
    l = {
        0x213
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $it:Landroidx/fragment/app/d;

.field label:I

.field final synthetic this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Landroidx/fragment/app/d;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/event/v2/AgendaEventInfoFragment;",
            "Landroidx/fragment/app/d;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$7$1$2$onOnceSuccess$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$7$1$2$onOnceSuccess$1;->this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    iput-object p2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$7$1$2$onOnceSuccess$1;->$it:Landroidx/fragment/app/d;

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

    new-instance p1, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$7$1$2$onOnceSuccess$1;

    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$7$1$2$onOnceSuccess$1;->this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    iget-object v1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$7$1$2$onOnceSuccess$1;->$it:Landroidx/fragment/app/d;

    invoke-direct {p1, v0, v1, p2}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$7$1$2$onOnceSuccess$1;-><init>(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Landroidx/fragment/app/d;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/k0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$7$1$2$onOnceSuccess$1;->invoke(Lkotlinx/coroutines/k0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$7$1$2$onOnceSuccess$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$7$1$2$onOnceSuccess$1;

    sget-object p2, Lkotlin/u;->a:Lkotlin/u;

    invoke-virtual {p1, p2}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$7$1$2$onOnceSuccess$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$7$1$2$onOnceSuccess$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/j;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/j;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$7$1$2$onOnceSuccess$1;->this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->t()Lcom/android/calendar/common/event/schema/Event;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 38
    .line 39
    .line 40
    move-result-wide v3

    .line 41
    invoke-static {v3, v4}, Lkotlin/coroutines/jvm/internal/a;->c(J)Ljava/lang/Long;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const/4 v1, 0x0

    .line 47
    :goto_0
    invoke-virtual {p1, v1}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->A0(Ljava/lang/Long;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 54
    .line 55
    .line 56
    move-result-wide v3

    .line 57
    goto :goto_1

    .line 58
    :cond_3
    const-wide/16 v3, -0x1

    .line 59
    .line 60
    :goto_1
    move-wide v6, v3

    .line 61
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    new-instance v1, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$7$1$2$onOnceSuccess$1$1;

    .line 66
    .line 67
    iget-object v8, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$7$1$2$onOnceSuccess$1;->$it:Landroidx/fragment/app/d;

    .line 68
    .line 69
    iget-object v9, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$7$1$2$onOnceSuccess$1;->this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    .line 70
    .line 71
    const/4 v10, 0x0

    .line 72
    move-object v5, v1

    .line 73
    invoke-direct/range {v5 .. v10}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$7$1$2$onOnceSuccess$1$1;-><init>(JLandroidx/fragment/app/d;Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lkotlin/coroutines/c;)V

    .line 74
    .line 75
    .line 76
    iput v2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$7$1$2$onOnceSuccess$1;->label:I

    .line 77
    .line 78
    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/h;->g(Lkotlin/coroutines/CoroutineContext;Lw7/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-ne p1, v0, :cond_4

    .line 83
    .line 84
    return-object v0

    .line 85
    :cond_4
    :goto_2
    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    .line 86
    .line 87
    return-object p1
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
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

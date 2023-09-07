.class final Lcom/miui/calendar/view/MonthPanelContainer$reloadMonthEvents$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MonthPanelContainer.kt"

# interfaces
.implements Lw7/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/calendar/view/MonthPanelContainer;->O()V
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
    c = "com.miui.calendar.view.MonthPanelContainer$reloadMonthEvents$1"
    f = "MonthPanelContainer.kt"
    l = {
        0x258
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/miui/calendar/view/MonthPanelContainer;


# direct methods
.method constructor <init>(Lcom/miui/calendar/view/MonthPanelContainer;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/calendar/view/MonthPanelContainer;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcom/miui/calendar/view/MonthPanelContainer$reloadMonthEvents$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/calendar/view/MonthPanelContainer$reloadMonthEvents$1;->this$0:Lcom/miui/calendar/view/MonthPanelContainer;

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

    new-instance p1, Lcom/miui/calendar/view/MonthPanelContainer$reloadMonthEvents$1;

    iget-object v0, p0, Lcom/miui/calendar/view/MonthPanelContainer$reloadMonthEvents$1;->this$0:Lcom/miui/calendar/view/MonthPanelContainer;

    invoke-direct {p1, v0, p2}, Lcom/miui/calendar/view/MonthPanelContainer$reloadMonthEvents$1;-><init>(Lcom/miui/calendar/view/MonthPanelContainer;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/k0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcom/miui/calendar/view/MonthPanelContainer$reloadMonthEvents$1;->invoke(Lkotlinx/coroutines/k0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/miui/calendar/view/MonthPanelContainer$reloadMonthEvents$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcom/miui/calendar/view/MonthPanelContainer$reloadMonthEvents$1;

    sget-object p2, Lkotlin/u;->a:Lkotlin/u;

    invoke-virtual {p1, p2}, Lcom/miui/calendar/view/MonthPanelContainer$reloadMonthEvents$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/miui/calendar/view/MonthPanelContainer$reloadMonthEvents$1;->label:I

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
    iget-object v0, p0, Lcom/miui/calendar/view/MonthPanelContainer$reloadMonthEvents$1;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lcom/miui/calendar/view/MonthPanelContainer;

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/j;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    invoke-static {p1}, Lkotlin/j;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p1}, Lkotlinx/coroutines/l0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/k0;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const/4 v4, 0x0

    .line 40
    const/4 v5, 0x0

    .line 41
    new-instance v6, Lcom/miui/calendar/view/MonthPanelContainer$reloadMonthEvents$1$eventsDeffer$1;

    .line 42
    .line 43
    iget-object p1, p0, Lcom/miui/calendar/view/MonthPanelContainer$reloadMonthEvents$1;->this$0:Lcom/miui/calendar/view/MonthPanelContainer;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-direct {v6, p1, v1}, Lcom/miui/calendar/view/MonthPanelContainer$reloadMonthEvents$1$eventsDeffer$1;-><init>(Lcom/miui/calendar/view/MonthPanelContainer;Lkotlin/coroutines/c;)V

    .line 47
    .line 48
    .line 49
    const/4 v7, 0x3

    .line 50
    const/4 v8, 0x0

    .line 51
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/h;->b(Lkotlinx/coroutines/k0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lw7/p;ILjava/lang/Object;)Lkotlinx/coroutines/p0;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object v1, p0, Lcom/miui/calendar/view/MonthPanelContainer$reloadMonthEvents$1;->this$0:Lcom/miui/calendar/view/MonthPanelContainer;

    .line 56
    .line 57
    iput-object v1, p0, Lcom/miui/calendar/view/MonthPanelContainer$reloadMonthEvents$1;->L$0:Ljava/lang/Object;

    .line 58
    .line 59
    iput v2, p0, Lcom/miui/calendar/view/MonthPanelContainer$reloadMonthEvents$1;->label:I

    .line 60
    .line 61
    invoke-interface {p1, p0}, Lkotlinx/coroutines/p0;->E(Lkotlin/coroutines/c;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-ne p1, v0, :cond_2

    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_2
    move-object v0, v1

    .line 69
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 70
    .line 71
    invoke-static {v0, p1}, Lcom/miui/calendar/view/MonthPanelContainer;->j(Lcom/miui/calendar/view/MonthPanelContainer;Ljava/util/List;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/miui/calendar/view/MonthPanelContainer$reloadMonthEvents$1;->this$0:Lcom/miui/calendar/view/MonthPanelContainer;

    .line 75
    .line 76
    invoke-static {p1}, Lcom/miui/calendar/view/MonthPanelContainer;->i(Lcom/miui/calendar/view/MonthPanelContainer;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/miui/calendar/view/MonthPanelContainer$reloadMonthEvents$1;->this$0:Lcom/miui/calendar/view/MonthPanelContainer;

    .line 80
    .line 81
    invoke-static {p1}, Lcom/miui/calendar/view/MonthPanelContainer;->g(Lcom/miui/calendar/view/MonthPanelContainer;)Lcom/android/calendar/homepage/j1;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-eqz p1, :cond_3

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/android/calendar/homepage/j1;->K()V

    .line 88
    .line 89
    .line 90
    :cond_3
    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    .line 91
    .line 92
    return-object p1
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

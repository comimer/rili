.class final Lcom/android/calendar/event/v2/BirthdayEventInfoFragment$initData$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BirthdayEventInfoFragment.kt"

# interfaces
.implements Lw7/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/v2/BirthdayEventInfoFragment;->T(Lcom/android/calendar/event/v2/BirthdayEventInfoFragment;Landroid/view/View;)V
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
    c = "com.android.calendar.event.v2.BirthdayEventInfoFragment$initData$3$1"
    f = "BirthdayEventInfoFragment.kt"
    l = {
        0xb5
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/android/calendar/event/v2/BirthdayEventInfoFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/v2/BirthdayEventInfoFragment;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/event/v2/BirthdayEventInfoFragment;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcom/android/calendar/event/v2/BirthdayEventInfoFragment$initData$3$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/calendar/event/v2/BirthdayEventInfoFragment$initData$3$1;->this$0:Lcom/android/calendar/event/v2/BirthdayEventInfoFragment;

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

    new-instance p1, Lcom/android/calendar/event/v2/BirthdayEventInfoFragment$initData$3$1;

    iget-object v0, p0, Lcom/android/calendar/event/v2/BirthdayEventInfoFragment$initData$3$1;->this$0:Lcom/android/calendar/event/v2/BirthdayEventInfoFragment;

    invoke-direct {p1, v0, p2}, Lcom/android/calendar/event/v2/BirthdayEventInfoFragment$initData$3$1;-><init>(Lcom/android/calendar/event/v2/BirthdayEventInfoFragment;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/k0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/v2/BirthdayEventInfoFragment$initData$3$1;->invoke(Lkotlinx/coroutines/k0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/v2/BirthdayEventInfoFragment$initData$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcom/android/calendar/event/v2/BirthdayEventInfoFragment$initData$3$1;

    sget-object p2, Lkotlin/u;->a:Lkotlin/u;

    invoke-virtual {p1, p2}, Lcom/android/calendar/event/v2/BirthdayEventInfoFragment$initData$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/android/calendar/event/v2/BirthdayEventInfoFragment$initData$3$1;->label:I

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
    iget-object p1, p0, Lcom/android/calendar/event/v2/BirthdayEventInfoFragment$initData$3$1;->this$0:Lcom/android/calendar/event/v2/BirthdayEventInfoFragment;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/android/calendar/event/v2/BirthdayEventInfoFragment;->O(Lcom/android/calendar/event/v2/BirthdayEventInfoFragment;)Lcom/android/calendar/common/event/schema/BirthdayEvent;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 v1, 0x0

    .line 34
    if-nez p1, :cond_2

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    iget-object v3, p0, Lcom/android/calendar/event/v2/BirthdayEventInfoFragment$initData$3$1;->this$0:Lcom/android/calendar/event/v2/BirthdayEventInfoFragment;

    .line 38
    .line 39
    invoke-static {v3}, Lcom/android/calendar/event/v2/BirthdayEventInfoFragment;->O(Lcom/android/calendar/event/v2/BirthdayEventInfoFragment;)Lcom/android/calendar/common/event/schema/BirthdayEvent;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    if-eqz v3, :cond_3

    .line 44
    .line 45
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/Event;->isNeedAlarm()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    goto :goto_0

    .line 54
    :cond_3
    move-object v3, v1

    .line 55
    :goto_0
    invoke-static {v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    xor-int/2addr v3, v2

    .line 63
    invoke-virtual {p1, v3}, Lcom/android/calendar/common/event/schema/Event;->setNeedAlarm(Z)V

    .line 64
    .line 65
    .line 66
    :goto_1
    iget-object p1, p0, Lcom/android/calendar/event/v2/BirthdayEventInfoFragment$initData$3$1;->this$0:Lcom/android/calendar/event/v2/BirthdayEventInfoFragment;

    .line 67
    .line 68
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget-object v3, p0, Lcom/android/calendar/event/v2/BirthdayEventInfoFragment$initData$3$1;->this$0:Lcom/android/calendar/event/v2/BirthdayEventInfoFragment;

    .line 73
    .line 74
    invoke-static {v3}, Lcom/android/calendar/event/v2/BirthdayEventInfoFragment;->O(Lcom/android/calendar/event/v2/BirthdayEventInfoFragment;)Lcom/android/calendar/common/event/schema/BirthdayEvent;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-static {p1, v3}, Lcom/android/calendar/event/i;->h(Landroid/content/Context;Lcom/android/calendar/common/event/schema/Event;)V

    .line 79
    .line 80
    .line 81
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    new-instance v3, Lcom/android/calendar/event/v2/BirthdayEventInfoFragment$initData$3$1$1;

    .line 86
    .line 87
    iget-object v4, p0, Lcom/android/calendar/event/v2/BirthdayEventInfoFragment$initData$3$1;->this$0:Lcom/android/calendar/event/v2/BirthdayEventInfoFragment;

    .line 88
    .line 89
    invoke-direct {v3, v4, v1}, Lcom/android/calendar/event/v2/BirthdayEventInfoFragment$initData$3$1$1;-><init>(Lcom/android/calendar/event/v2/BirthdayEventInfoFragment;Lkotlin/coroutines/c;)V

    .line 90
    .line 91
    .line 92
    iput v2, p0, Lcom/android/calendar/event/v2/BirthdayEventInfoFragment$initData$3$1;->label:I

    .line 93
    .line 94
    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/h;->g(Lkotlin/coroutines/CoroutineContext;Lw7/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    if-ne p1, v0, :cond_4

    .line 99
    .line 100
    return-object v0

    .line 101
    :cond_4
    :goto_2
    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    .line 102
    .line 103
    return-object p1
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

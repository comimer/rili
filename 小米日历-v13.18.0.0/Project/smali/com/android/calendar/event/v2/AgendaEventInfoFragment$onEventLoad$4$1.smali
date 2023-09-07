.class final Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$4$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AgendaEventInfoFragment.kt"

# interfaces
.implements Lw7/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->W0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lcom/android/calendar/common/event/schema/AgendaEvent;)V
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
    c = "com.android.calendar.event.v2.AgendaEventInfoFragment$onEventLoad$4$1"
    f = "AgendaEventInfoFragment.kt"
    l = {
        0x1cf
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $event:Lcom/android/calendar/common/event/schema/AgendaEvent;

.field label:I

.field final synthetic this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lcom/android/calendar/common/event/schema/AgendaEvent;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/event/v2/AgendaEventInfoFragment;",
            "Lcom/android/calendar/common/event/schema/AgendaEvent;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$4$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$4$1;->this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    iput-object p2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$4$1;->$event:Lcom/android/calendar/common/event/schema/AgendaEvent;

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

    new-instance p1, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$4$1;

    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$4$1;->this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    iget-object v1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$4$1;->$event:Lcom/android/calendar/common/event/schema/AgendaEvent;

    invoke-direct {p1, v0, v1, p2}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$4$1;-><init>(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lcom/android/calendar/common/event/schema/AgendaEvent;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/k0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$4$1;->invoke(Lkotlinx/coroutines/k0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$4$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$4$1;

    sget-object p2, Lkotlin/u;->a:Lkotlin/u;

    invoke-virtual {p1, p2}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$4$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$4$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne v1, v3, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, Lkotlin/j;->b(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    invoke-static {p1}, Lkotlin/j;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1}, Lkotlinx/coroutines/l0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/k0;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v6, 0x0

    .line 38
    new-instance v7, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$4$1$stringDeffer$1;

    .line 39
    .line 40
    iget-object p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$4$1;->this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$4$1;->$event:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 43
    .line 44
    invoke-direct {v7, p1, v1, v2}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$4$1$stringDeffer$1;-><init>(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lcom/android/calendar/common/event/schema/AgendaEvent;Lkotlin/coroutines/c;)V

    .line 45
    .line 46
    .line 47
    const/4 v8, 0x3

    .line 48
    const/4 v9, 0x0

    .line 49
    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/h;->b(Lkotlinx/coroutines/k0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lw7/p;ILjava/lang/Object;)Lkotlinx/coroutines/p0;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput v3, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$4$1;->label:I

    .line 54
    .line 55
    invoke-interface {p1, p0}, Lkotlinx/coroutines/p0;->E(Lkotlin/coroutines/c;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-ne p1, v0, :cond_2

    .line 60
    .line 61
    return-object v0

    .line 62
    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/String;

    .line 63
    .line 64
    if-eqz p1, :cond_9

    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$4$1;->$event:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$4$1;->this$0:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getDescription()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-lt v3, v0, :cond_4

    .line 83
    .line 84
    invoke-static {v1}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->k0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)Landroid/widget/TextView;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    if-nez v0, :cond_3

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_3
    const/16 v2, 0x8

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_4
    invoke-static {v1}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->k0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)Landroid/widget/TextView;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    if-nez v0, :cond_5

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_5
    const/4 v3, 0x0

    .line 105
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 106
    .line 107
    .line 108
    :goto_1
    invoke-static {v1}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->k0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)Landroid/widget/TextView;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    if-eqz v0, :cond_6

    .line 113
    .line 114
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    :cond_6
    const-string v0, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    .line 119
    .line 120
    invoke-static {v2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 124
    .line 125
    invoke-virtual {v1}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->r()Lcom/android/calendar/event/EventInfoActivity;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    const/high16 v3, -0x3d900000    # -60.0f

    .line 130
    .line 131
    invoke-static {v0, v3}, Lcom/miui/calendar/util/x0;->O(Landroid/content/Context;F)F

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    float-to-int v0, v0

    .line 136
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 137
    .line 138
    invoke-static {v1}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->k0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)Landroid/widget/TextView;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    if-nez v0, :cond_7

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_7
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    .line 147
    .line 148
    :goto_2
    invoke-static {v1}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->j0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)Landroid/widget/TextView;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    if-nez v0, :cond_8

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_8
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    .line 157
    .line 158
    :cond_9
    :goto_3
    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    .line 159
    .line 160
    return-object p1
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method

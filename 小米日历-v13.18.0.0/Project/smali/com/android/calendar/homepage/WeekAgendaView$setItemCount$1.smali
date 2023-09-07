.class final Lcom/android/calendar/homepage/WeekAgendaView$setItemCount$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WeekAgendaView.kt"

# interfaces
.implements Lw7/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/homepage/WeekAgendaView;->setItemCount(I)V
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
    c = "com.android.calendar.homepage.WeekAgendaView$setItemCount$1"
    f = "WeekAgendaView.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $itemCount:I

.field label:I

.field final synthetic this$0:Lcom/android/calendar/homepage/WeekAgendaView;


# direct methods
.method constructor <init>(Lcom/android/calendar/homepage/WeekAgendaView;ILkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/homepage/WeekAgendaView;",
            "I",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcom/android/calendar/homepage/WeekAgendaView$setItemCount$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/calendar/homepage/WeekAgendaView$setItemCount$1;->this$0:Lcom/android/calendar/homepage/WeekAgendaView;

    iput p2, p0, Lcom/android/calendar/homepage/WeekAgendaView$setItemCount$1;->$itemCount:I

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

    new-instance p1, Lcom/android/calendar/homepage/WeekAgendaView$setItemCount$1;

    iget-object v0, p0, Lcom/android/calendar/homepage/WeekAgendaView$setItemCount$1;->this$0:Lcom/android/calendar/homepage/WeekAgendaView;

    iget v1, p0, Lcom/android/calendar/homepage/WeekAgendaView$setItemCount$1;->$itemCount:I

    invoke-direct {p1, v0, v1, p2}, Lcom/android/calendar/homepage/WeekAgendaView$setItemCount$1;-><init>(Lcom/android/calendar/homepage/WeekAgendaView;ILkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/k0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/homepage/WeekAgendaView$setItemCount$1;->invoke(Lkotlinx/coroutines/k0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/homepage/WeekAgendaView$setItemCount$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcom/android/calendar/homepage/WeekAgendaView$setItemCount$1;

    sget-object p2, Lkotlin/u;->a:Lkotlin/u;

    invoke-virtual {p1, p2}, Lcom/android/calendar/homepage/WeekAgendaView$setItemCount$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/android/calendar/homepage/WeekAgendaView$setItemCount$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/j;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/calendar/homepage/WeekAgendaView$setItemCount$1;->this$0:Lcom/android/calendar/homepage/WeekAgendaView;

    .line 12
    .line 13
    iget v0, p0, Lcom/android/calendar/homepage/WeekAgendaView$setItemCount$1;->$itemCount:I

    .line 14
    .line 15
    invoke-static {p1, v0}, Lcom/android/calendar/homepage/WeekAgendaView;->t(Lcom/android/calendar/homepage/WeekAgendaView;I)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/calendar/homepage/WeekAgendaView$setItemCount$1;->this$0:Lcom/android/calendar/homepage/WeekAgendaView;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/android/calendar/homepage/WeekAgendaView;->m(Lcom/android/calendar/homepage/WeekAgendaView;)Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget v1, p0, Lcom/android/calendar/homepage/WeekAgendaView$setItemCount$1;->$itemCount:I

    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/miui/calendar/util/x0;->Z(Landroid/content/Context;I)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-static {p1, v0}, Lcom/android/calendar/homepage/WeekAgendaView;->s(Lcom/android/calendar/homepage/WeekAgendaView;I)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/calendar/homepage/WeekAgendaView$setItemCount$1;->this$0:Lcom/android/calendar/homepage/WeekAgendaView;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/android/calendar/homepage/WeekAgendaView;->m(Lcom/android/calendar/homepage/WeekAgendaView;)Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget v1, p0, Lcom/android/calendar/homepage/WeekAgendaView$setItemCount$1;->$itemCount:I

    .line 46
    .line 47
    invoke-static {v0, v1}, Lcom/miui/calendar/util/x0;->Y(Landroid/content/Context;I)F

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    float-to-int v0, v0

    .line 52
    invoke-static {p1, v0}, Lcom/android/calendar/homepage/WeekAgendaView;->r(Lcom/android/calendar/homepage/WeekAgendaView;I)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/android/calendar/homepage/WeekAgendaView$setItemCount$1;->this$0:Lcom/android/calendar/homepage/WeekAgendaView;

    .line 56
    .line 57
    invoke-static {p1}, Lcom/android/calendar/homepage/WeekAgendaView;->m(Lcom/android/calendar/homepage/WeekAgendaView;)Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lcom/android/calendar/homepage/WeekAgendaView$setItemCount$1;->this$0:Lcom/android/calendar/homepage/WeekAgendaView;

    .line 65
    .line 66
    invoke-static {v1}, Lcom/android/calendar/homepage/WeekAgendaView;->o(Lcom/android/calendar/homepage/WeekAgendaView;)I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    invoke-static {v0, v1}, Lcom/miui/calendar/util/x0;->T(Landroid/content/Context;I)F

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    float-to-int v0, v0

    .line 75
    invoke-static {p1, v0}, Lcom/android/calendar/homepage/WeekAgendaView;->q(Lcom/android/calendar/homepage/WeekAgendaView;I)V

    .line 76
    .line 77
    .line 78
    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    .line 79
    .line 80
    return-object p1

    .line 81
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 82
    .line 83
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 84
    .line 85
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p1
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

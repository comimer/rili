.class final Lcom/android/calendar/event/EventInfoActivity$inflateOtherViews$job$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EventInfoActivity.kt"

# interfaces
.implements Lw7/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/EventInfoActivity;->W0()V
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
    c = "com.android.calendar.event.EventInfoActivity$inflateOtherViews$job$1"
    f = "EventInfoActivity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/android/calendar/event/EventInfoActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EventInfoActivity;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/event/EventInfoActivity;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcom/android/calendar/event/EventInfoActivity$inflateOtherViews$job$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/calendar/event/EventInfoActivity$inflateOtherViews$job$1;->this$0:Lcom/android/calendar/event/EventInfoActivity;

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

    new-instance p1, Lcom/android/calendar/event/EventInfoActivity$inflateOtherViews$job$1;

    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity$inflateOtherViews$job$1;->this$0:Lcom/android/calendar/event/EventInfoActivity;

    invoke-direct {p1, v0, p2}, Lcom/android/calendar/event/EventInfoActivity$inflateOtherViews$job$1;-><init>(Lcom/android/calendar/event/EventInfoActivity;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/k0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/EventInfoActivity$inflateOtherViews$job$1;->invoke(Lkotlinx/coroutines/k0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/EventInfoActivity$inflateOtherViews$job$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcom/android/calendar/event/EventInfoActivity$inflateOtherViews$job$1;

    sget-object p2, Lkotlin/u;->a:Lkotlin/u;

    invoke-virtual {p1, p2}, Lcom/android/calendar/event/EventInfoActivity$inflateOtherViews$job$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/android/calendar/event/EventInfoActivity$inflateOtherViews$job$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/j;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/calendar/event/EventInfoActivity$inflateOtherViews$job$1;->this$0:Lcom/android/calendar/event/EventInfoActivity;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/android/calendar/event/EventInfoActivity;->Q0()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    add-int/lit8 p1, p1, 0x4

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity$inflateOtherViews$job$1;->this$0:Lcom/android/calendar/event/EventInfoActivity;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoActivity;->Q0()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    add-int/lit8 v0, v0, -0x4

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    if-gez v0, :cond_0

    .line 29
    .line 30
    sub-int/2addr p1, v0

    .line 31
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity$inflateOtherViews$job$1;->this$0:Lcom/android/calendar/event/EventInfoActivity;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoActivity;->T0()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    add-int/lit8 v0, v0, -0x1

    .line 42
    .line 43
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    move v0, v1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/event/EventInfoActivity$inflateOtherViews$job$1;->this$0:Lcom/android/calendar/event/EventInfoActivity;

    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/android/calendar/event/EventInfoActivity;->T0()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    add-int/lit8 v2, v2, -0x1

    .line 60
    .line 61
    sub-int/2addr v2, p1

    .line 62
    if-gez v2, :cond_1

    .line 63
    .line 64
    add-int/2addr v0, v2

    .line 65
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    iget-object p1, p0, Lcom/android/calendar/event/EventInfoActivity$inflateOtherViews$job$1;->this$0:Lcom/android/calendar/event/EventInfoActivity;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/android/calendar/event/EventInfoActivity;->T0()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    add-int/lit8 p1, p1, -0x1

    .line 80
    .line 81
    :cond_1
    :goto_0
    if-gt v0, p1, :cond_2

    .line 82
    .line 83
    :goto_1
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoActivity$inflateOtherViews$job$1;->this$0:Lcom/android/calendar/event/EventInfoActivity;

    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/android/calendar/event/EventInfoActivity;->T0()Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    check-cast v2, Lcom/android/calendar/event/EventInfoActivity$EventInfo;

    .line 94
    .line 95
    invoke-static {v1, v2}, Lcom/android/calendar/event/EventInfoActivity;->t0(Lcom/android/calendar/event/EventInfoActivity;Lcom/android/calendar/event/EventInfoActivity$EventInfo;)V

    .line 96
    .line 97
    .line 98
    if-eq v0, p1, :cond_2

    .line 99
    .line 100
    add-int/lit8 v0, v0, 0x1

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    .line 104
    .line 105
    return-object p1

    .line 106
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 107
    .line 108
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 109
    .line 110
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw p1
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

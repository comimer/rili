.class final Lcom/android/calendar/homepage/productivity/ProductivityListLayout$reloadEvents$1$eventsDeffer$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ProductivityListLayout.kt"

# interfaces
.implements Lw7/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/homepage/productivity/ProductivityListLayout$reloadEvents$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ljava/util/List<",
        "+",
        "Lcom/android/calendar/common/event/schema/Event;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"
    }
    d2 = {
        "Lkotlinx/coroutines/k0;",
        "",
        "Lcom/android/calendar/common/event/schema/Event;",
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
    c = "com.android.calendar.homepage.productivity.ProductivityListLayout$reloadEvents$1$eventsDeffer$1"
    f = "ProductivityListLayout.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;


# direct methods
.method constructor <init>(Lcom/android/calendar/homepage/productivity/ProductivityListLayout;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/homepage/productivity/ProductivityListLayout;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcom/android/calendar/homepage/productivity/ProductivityListLayout$reloadEvents$1$eventsDeffer$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$reloadEvents$1$eventsDeffer$1;->this$0:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

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

    new-instance p1, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$reloadEvents$1$eventsDeffer$1;

    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$reloadEvents$1$eventsDeffer$1;->this$0:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    invoke-direct {p1, v0, p2}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$reloadEvents$1$eventsDeffer$1;-><init>(Lcom/android/calendar/homepage/productivity/ProductivityListLayout;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/k0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$reloadEvents$1$eventsDeffer$1;->invoke(Lkotlinx/coroutines/k0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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
            "Ljava/util/List<",
            "+",
            "Lcom/android/calendar/common/event/schema/Event;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$reloadEvents$1$eventsDeffer$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$reloadEvents$1$eventsDeffer$1;

    sget-object p2, Lkotlin/u;->a:Lkotlin/u;

    invoke-virtual {p1, p2}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$reloadEvents$1$eventsDeffer$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$reloadEvents$1$eventsDeffer$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/j;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Ls1/e;->a:Ls1/e;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$reloadEvents$1$eventsDeffer$1;->this$0:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v0, "context"

    .line 20
    .line 21
    invoke-static {v2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$reloadEvents$1$eventsDeffer$1;->this$0:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 25
    .line 26
    invoke-static {v1}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout;->H(Lcom/android/calendar/homepage/productivity/ProductivityListLayout;)Ljava/util/Calendar;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v1}, Lcom/miui/calendar/util/e0;->i(Ljava/util/Calendar;)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const/4 v4, 0x1

    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v6, 0x0

    .line 37
    const/16 v7, 0x18

    .line 38
    .line 39
    const/4 v8, 0x0

    .line 40
    move-object v1, p1

    .line 41
    invoke-static/range {v1 .. v8}, Lcom/android/calendar/event/c0;->b(Ls1/e;Landroid/content/Context;IIILjava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v2, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$reloadEvents$1$eventsDeffer$1;->this$0:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 46
    .line 47
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-static {v2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-static {p1, v2, v1}, Lcom/android/calendar/event/c0;->c(Ls1/e;Landroid/content/Context;Ljava/util/List;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$reloadEvents$1$eventsDeffer$1;->this$0:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p1, v1}, Ls1/e;->j(Landroid/content/Context;Ljava/util/List;)V

    .line 64
    .line 65
    .line 66
    return-object v1

    .line 67
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 68
    .line 69
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 70
    .line 71
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p1
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
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

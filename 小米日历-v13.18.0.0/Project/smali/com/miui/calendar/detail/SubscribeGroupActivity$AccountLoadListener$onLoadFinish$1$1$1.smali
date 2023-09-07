.class final Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SubscribeGroupActivity.kt"

# interfaces
.implements Lw7/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.miui.calendar.detail.SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1$1"
    f = "SubscribeGroupActivity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $header:Ljava/lang/String;

.field final synthetic $it:Lcom/miui/calendar/detail/SubscribeGroupActivity;

.field final synthetic $listener:Lcom/miui/calendar/detail/SubscribeGroupActivity$c;

.field final synthetic $paramsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $request:Lu1/a;

.field label:I


# direct methods
.method constructor <init>(Lcom/miui/calendar/detail/SubscribeGroupActivity;Lu1/a;Ljava/lang/String;Ljava/util/Map;Lcom/miui/calendar/detail/SubscribeGroupActivity$c;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/calendar/detail/SubscribeGroupActivity;",
            "Lu1/a;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/calendar/detail/SubscribeGroupActivity$c;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1$1;->$it:Lcom/miui/calendar/detail/SubscribeGroupActivity;

    iput-object p2, p0, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1$1;->$request:Lu1/a;

    iput-object p3, p0, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1$1;->$header:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1$1;->$paramsMap:Ljava/util/Map;

    iput-object p5, p0, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1$1;->$listener:Lcom/miui/calendar/detail/SubscribeGroupActivity$c;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 7
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

    new-instance p1, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1$1;

    iget-object v1, p0, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1$1;->$it:Lcom/miui/calendar/detail/SubscribeGroupActivity;

    iget-object v2, p0, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1$1;->$request:Lu1/a;

    iget-object v3, p0, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1$1;->$header:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1$1;->$paramsMap:Ljava/util/Map;

    iget-object v5, p0, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1$1;->$listener:Lcom/miui/calendar/detail/SubscribeGroupActivity$c;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1$1;-><init>(Lcom/miui/calendar/detail/SubscribeGroupActivity;Lu1/a;Ljava/lang/String;Ljava/util/Map;Lcom/miui/calendar/detail/SubscribeGroupActivity$c;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/k0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1$1;->invoke(Lkotlinx/coroutines/k0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1$1;

    sget-object p2, Lkotlin/u;->a:Lkotlin/u;

    invoke-virtual {p1, p2}, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/j;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "Cal:D:SubscribeGroupActivity"

    .line 12
    .line 13
    const-string v0, "start query card"

    .line 14
    .line 15
    invoke-static {p1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1$1;->$it:Lcom/miui/calendar/detail/SubscribeGroupActivity;

    .line 19
    .line 20
    const-string v0, "it"

    .line 21
    .line 22
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1$1;->$request:Lu1/a;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1$1;->$header:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v3, p0, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1$1;->$paramsMap:Ljava/util/Map;

    .line 30
    .line 31
    invoke-interface {v1, v2, v3}, Lu1/a;->C(Ljava/lang/String;Ljava/util/Map;)Ltc/a;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {p1, v1}, Lcom/miui/calendar/detail/SubscribeGroupActivity;->g0(Lcom/miui/calendar/detail/SubscribeGroupActivity;Ltc/a;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1$1;->$it:Lcom/miui/calendar/detail/SubscribeGroupActivity;

    .line 39
    .line 40
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lcom/miui/calendar/detail/SubscribeGroupActivity;->a0(Lcom/miui/calendar/detail/SubscribeGroupActivity;)Ltc/a;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    new-instance v0, Lu1/b;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1$1;->$listener:Lcom/miui/calendar/detail/SubscribeGroupActivity$c;

    .line 52
    .line 53
    invoke-direct {v0, v1}, Lu1/b;-><init>(Lu1/b$a;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {p1, v0}, Ltc/a;->q(Ltc/b;)V

    .line 57
    .line 58
    .line 59
    :cond_0
    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    .line 60
    .line 61
    return-object p1

    .line 62
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 63
    .line 64
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 65
    .line 66
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
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

.class final Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SubscribeGroupActivity.kt"

# interfaces
.implements Lw7/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener;->a(Lcom/miui/calendar/account/mi/MiAccountSchema;)V
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
    c = "com.miui.calendar.detail.SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1"
    f = "SubscribeGroupActivity.kt"
    l = {
        0xae
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $accountSchema:Lcom/miui/calendar/account/mi/MiAccountSchema;

.field final synthetic $it:Lcom/miui/calendar/detail/SubscribeGroupActivity;

.field label:I


# direct methods
.method constructor <init>(Lcom/miui/calendar/account/mi/MiAccountSchema;Lcom/miui/calendar/detail/SubscribeGroupActivity;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/calendar/account/mi/MiAccountSchema;",
            "Lcom/miui/calendar/detail/SubscribeGroupActivity;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1;->$accountSchema:Lcom/miui/calendar/account/mi/MiAccountSchema;

    iput-object p2, p0, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1;->$it:Lcom/miui/calendar/detail/SubscribeGroupActivity;

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

    new-instance p1, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1;

    iget-object v0, p0, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1;->$accountSchema:Lcom/miui/calendar/account/mi/MiAccountSchema;

    iget-object v1, p0, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1;->$it:Lcom/miui/calendar/detail/SubscribeGroupActivity;

    invoke-direct {p1, v0, v1, p2}, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1;-><init>(Lcom/miui/calendar/account/mi/MiAccountSchema;Lcom/miui/calendar/detail/SubscribeGroupActivity;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/k0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1;->invoke(Lkotlinx/coroutines/k0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1;

    sget-object p2, Lkotlin/u;->a:Lkotlin/u;

    invoke-virtual {p1, p2}, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1;->label:I

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
    goto/16 :goto_2

    .line 16
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
    iget-object p1, p0, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1;->$accountSchema:Lcom/miui/calendar/account/mi/MiAccountSchema;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    iget-object p1, p1, Lcom/miui/calendar/account/mi/MiAccountSchema;->authToken:Ljava/lang/String;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    move-object p1, v1

    .line 37
    :goto_0
    const-string v3, "it"

    .line 38
    .line 39
    if-eqz p1, :cond_3

    .line 40
    .line 41
    iget-object p1, p0, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1;->$it:Lcom/miui/calendar/detail/SubscribeGroupActivity;

    .line 42
    .line 43
    invoke-static {p1, v3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lcom/miui/calendar/detail/SubscribeGroupActivity;->c0(Lcom/miui/calendar/detail/SubscribeGroupActivity;)Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iget-object v4, p0, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1;->$accountSchema:Lcom/miui/calendar/account/mi/MiAccountSchema;

    .line 51
    .line 52
    iget-object v5, v4, Lcom/miui/calendar/account/mi/MiAccountSchema;->authToken:Ljava/lang/String;

    .line 53
    .line 54
    iget-object v4, v4, Lcom/miui/calendar/account/mi/MiAccountSchema;->userId:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {p1, v2, v5, v4}, Lu1/d;->b(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    iget-object p1, p0, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1;->$it:Lcom/miui/calendar/detail/SubscribeGroupActivity;

    .line 62
    .line 63
    invoke-static {p1, v3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, Lcom/miui/calendar/detail/SubscribeGroupActivity;->c0(Lcom/miui/calendar/detail/SubscribeGroupActivity;)Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    const/4 v5, 0x0

    .line 71
    const/4 v6, 0x0

    .line 72
    const/4 v7, 0x0

    .line 73
    const/16 v8, 0xe

    .line 74
    .line 75
    const/4 v9, 0x0

    .line 76
    invoke-static/range {v4 .. v9}, Lu1/d;->c(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    :goto_1
    move-object v7, p1

    .line 81
    iget-object p1, p0, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1;->$it:Lcom/miui/calendar/detail/SubscribeGroupActivity;

    .line 82
    .line 83
    invoke-static {p1, v3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-static {p1}, Lcom/miui/calendar/detail/SubscribeGroupActivity;->c0(Lcom/miui/calendar/detail/SubscribeGroupActivity;)Landroid/content/Context;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {p1, v1}, Lcom/miui/calendar/util/l0;->a(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/Map;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    invoke-static {v1, v2, v1}, Lu1/d;->f(Ljava/lang/String;ILjava/lang/Object;)Lu1/a;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    new-instance v9, Lcom/miui/calendar/detail/SubscribeGroupActivity$c;

    .line 99
    .line 100
    iget-object p1, p0, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1;->$it:Lcom/miui/calendar/detail/SubscribeGroupActivity;

    .line 101
    .line 102
    invoke-static {p1, v3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-direct {v9, p1}, Lcom/miui/calendar/detail/SubscribeGroupActivity$c;-><init>(Lcom/miui/calendar/detail/SubscribeGroupActivity;)V

    .line 106
    .line 107
    .line 108
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    new-instance v1, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1$1;

    .line 113
    .line 114
    iget-object v5, p0, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1;->$it:Lcom/miui/calendar/detail/SubscribeGroupActivity;

    .line 115
    .line 116
    const/4 v10, 0x0

    .line 117
    move-object v4, v1

    .line 118
    invoke-direct/range {v4 .. v10}, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1$1;-><init>(Lcom/miui/calendar/detail/SubscribeGroupActivity;Lu1/a;Ljava/lang/String;Ljava/util/Map;Lcom/miui/calendar/detail/SubscribeGroupActivity$c;Lkotlin/coroutines/c;)V

    .line 119
    .line 120
    .line 121
    iput v2, p0, Lcom/miui/calendar/detail/SubscribeGroupActivity$AccountLoadListener$onLoadFinish$1$1;->label:I

    .line 122
    .line 123
    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/h;->g(Lkotlin/coroutines/CoroutineContext;Lw7/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    if-ne p1, v0, :cond_4

    .line 128
    .line 129
    return-object v0

    .line 130
    :cond_4
    :goto_2
    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    .line 131
    .line 132
    return-object p1
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

.class final Lcom/android/calendar/selectcalendars/AccountManagerAdapter$checkImportType$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AccountManagerAdapter.kt"

# interfaces
.implements Lw7/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->D(Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;)V
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
    c = "com.android.calendar.selectcalendars.AccountManagerAdapter$checkImportType$2"
    f = "AccountManagerAdapter.kt"
    l = {
        0x2cb
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $account:Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;

.field label:I

.field final synthetic this$0:Lcom/android/calendar/selectcalendars/AccountManagerAdapter;


# direct methods
.method constructor <init>(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/selectcalendars/AccountManagerAdapter;",
            "Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcom/android/calendar/selectcalendars/AccountManagerAdapter$checkImportType$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$checkImportType$2;->this$0:Lcom/android/calendar/selectcalendars/AccountManagerAdapter;

    iput-object p2, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$checkImportType$2;->$account:Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;

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

    new-instance p1, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$checkImportType$2;

    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$checkImportType$2;->this$0:Lcom/android/calendar/selectcalendars/AccountManagerAdapter;

    iget-object v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$checkImportType$2;->$account:Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;

    invoke-direct {p1, v0, v1, p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$checkImportType$2;-><init>(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/k0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$checkImportType$2;->invoke(Lkotlinx/coroutines/k0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$checkImportType$2;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$checkImportType$2;

    sget-object p2, Lkotlin/u;->a:Lkotlin/u;

    invoke-virtual {p1, p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$checkImportType$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$checkImportType$2;->label:I

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
    goto :goto_0

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
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lkotlinx/coroutines/l0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/k0;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const/4 v4, 0x0

    .line 36
    const/4 v5, 0x0

    .line 37
    new-instance v6, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$checkImportType$2$serviceIdAwait$1;

    .line 38
    .line 39
    iget-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$checkImportType$2;->this$0:Lcom/android/calendar/selectcalendars/AccountManagerAdapter;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$checkImportType$2;->$account:Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;

    .line 42
    .line 43
    const/4 v7, 0x0

    .line 44
    invoke-direct {v6, p1, v1, v7}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$checkImportType$2$serviceIdAwait$1;-><init>(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;Lcom/android/calendar/selectcalendars/AccountManagerAdapter$a;Lkotlin/coroutines/c;)V

    .line 45
    .line 46
    .line 47
    const/4 v7, 0x3

    .line 48
    const/4 v8, 0x0

    .line 49
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/h;->b(Lkotlinx/coroutines/k0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lw7/p;ILjava/lang/Object;)Lkotlinx/coroutines/p0;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput v2, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$checkImportType$2;->label:I

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
    check-cast p1, Ljava/lang/Long;

    .line 63
    .line 64
    if-nez p1, :cond_3

    .line 65
    .line 66
    iget-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$checkImportType$2;->this$0:Lcom/android/calendar/selectcalendars/AccountManagerAdapter;

    .line 67
    .line 68
    invoke-static {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->k(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;)Landroid/app/Activity;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$checkImportType$2;->this$0:Lcom/android/calendar/selectcalendars/AccountManagerAdapter;

    .line 73
    .line 74
    invoke-static {v0}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->k(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;)Landroid/app/Activity;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const v1, 0x7f12003b

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const/4 v1, 0x0

    .line 86
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    sget-object v0, Lcom/android/calendar/syncer/g;->a:Lcom/android/calendar/syncer/g;

    .line 95
    .line 96
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$checkImportType$2;->this$0:Lcom/android/calendar/selectcalendars/AccountManagerAdapter;

    .line 97
    .line 98
    invoke-static {v1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->k(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;)Landroid/app/Activity;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 103
    .line 104
    .line 105
    move-result-wide v3

    .line 106
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/calendar/syncer/g;->e(Landroid/content/Context;J)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$checkImportType$2;->this$0:Lcom/android/calendar/selectcalendars/AccountManagerAdapter;

    .line 110
    .line 111
    invoke-static {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->k(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;)Landroid/app/Activity;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    new-instance v0, Landroid/content/Intent;

    .line 116
    .line 117
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$checkImportType$2;->this$0:Lcom/android/calendar/selectcalendars/AccountManagerAdapter;

    .line 118
    .line 119
    invoke-static {v1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->k(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;)Landroid/app/Activity;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    const-class v3, Lcom/android/calendar/syncer/CalDavService;

    .line 124
    .line 125
    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    .line 127
    .line 128
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$checkImportType$2;->this$0:Lcom/android/calendar/selectcalendars/AccountManagerAdapter;

    .line 129
    .line 130
    invoke-static {v1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->v(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;)Landroid/content/ServiceConnection;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 135
    .line 136
    .line 137
    :goto_1
    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    .line 138
    .line 139
    return-object p1
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

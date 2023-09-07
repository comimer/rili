.class final Lcom/android/calendar/selectcalendars/AccountManagerAdapter$onDavRefreshStatusChanged$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AccountManagerAdapter.kt"

# interfaces
.implements Lw7/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->n(JZ)V
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
    c = "com.android.calendar.selectcalendars.AccountManagerAdapter$onDavRefreshStatusChanged$1"
    f = "AccountManagerAdapter.kt"
    l = {
        0x8a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $id:J

.field label:I

.field final synthetic this$0:Lcom/android/calendar/selectcalendars/AccountManagerAdapter;


# direct methods
.method constructor <init>(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;JLkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/selectcalendars/AccountManagerAdapter;",
            "J",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcom/android/calendar/selectcalendars/AccountManagerAdapter$onDavRefreshStatusChanged$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$onDavRefreshStatusChanged$1;->this$0:Lcom/android/calendar/selectcalendars/AccountManagerAdapter;

    iput-wide p2, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$onDavRefreshStatusChanged$1;->$id:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;)V
    .locals 0

    invoke-static {p0}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$onDavRefreshStatusChanged$1;->invokeSuspend$lambda-0(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;)V

    return-void
.end method

.method private static final invokeSuspend$lambda-0(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->k(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;)Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->k(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;)Landroid/app/Activity;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const v1, 0x7f12065f

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 22
    .line 23
    .line 24
    return-void
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 3
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

    new-instance p1, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$onDavRefreshStatusChanged$1;

    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$onDavRefreshStatusChanged$1;->this$0:Lcom/android/calendar/selectcalendars/AccountManagerAdapter;

    iget-wide v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$onDavRefreshStatusChanged$1;->$id:J

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$onDavRefreshStatusChanged$1;-><init>(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;JLkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/k0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$onDavRefreshStatusChanged$1;->invoke(Lkotlinx/coroutines/k0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$onDavRefreshStatusChanged$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$onDavRefreshStatusChanged$1;

    sget-object p2, Lkotlin/u;->a:Lkotlin/u;

    invoke-virtual {p1, p2}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$onDavRefreshStatusChanged$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$onDavRefreshStatusChanged$1;->label:I

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
    new-instance v6, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$onDavRefreshStatusChanged$1$serviceAwait$1;

    .line 38
    .line 39
    iget-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$onDavRefreshStatusChanged$1;->this$0:Lcom/android/calendar/selectcalendars/AccountManagerAdapter;

    .line 40
    .line 41
    iget-wide v7, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$onDavRefreshStatusChanged$1;->$id:J

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-direct {v6, p1, v7, v8, v1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$onDavRefreshStatusChanged$1$serviceAwait$1;-><init>(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;JLkotlin/coroutines/c;)V

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
    iput v2, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$onDavRefreshStatusChanged$1;->label:I

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
    check-cast p1, Lcom/android/calendar/syncer/model/Service;

    .line 63
    .line 64
    if-nez p1, :cond_3

    .line 65
    .line 66
    iget-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$onDavRefreshStatusChanged$1;->this$0:Lcom/android/calendar/selectcalendars/AccountManagerAdapter;

    .line 67
    .line 68
    invoke-static {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->k(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;)Landroid/app/Activity;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$onDavRefreshStatusChanged$1;->this$0:Lcom/android/calendar/selectcalendars/AccountManagerAdapter;

    .line 73
    .line 74
    invoke-static {v0}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->k(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;)Landroid/app/Activity;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const v1, 0x7f12065e

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
    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    .line 94
    .line 95
    return-object p1

    .line 96
    :cond_3
    sget-object v0, Lcom/android/calendar/syncer/g;->a:Lcom/android/calendar/syncer/g;

    .line 97
    .line 98
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$onDavRefreshStatusChanged$1;->this$0:Lcom/android/calendar/selectcalendars/AccountManagerAdapter;

    .line 99
    .line 100
    invoke-static {v1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->k(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;)Landroid/app/Activity;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    new-instance v2, Landroid/accounts/Account;

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/android/calendar/syncer/model/Service;->getAccountName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    sget-object v3, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->ACCOUNT_TYPE_CALENDAR:Lcom/android/calendar/syncer/account/AccountHelper$AccountType;

    .line 111
    .line 112
    invoke-virtual {v3}, Lcom/android/calendar/syncer/account/AccountHelper$AccountType;->getAccountType()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-direct {v2, p1, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/syncer/g;->a(Landroid/content/Context;Landroid/accounts/Account;)Z

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$onDavRefreshStatusChanged$1;->this$0:Lcom/android/calendar/selectcalendars/AccountManagerAdapter;

    .line 123
    .line 124
    invoke-static {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->B(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$onDavRefreshStatusChanged$1;->this$0:Lcom/android/calendar/selectcalendars/AccountManagerAdapter;

    .line 128
    .line 129
    invoke-static {p1}, Lcom/android/calendar/selectcalendars/AccountManagerAdapter;->r(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;)Landroid/os/Handler;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountManagerAdapter$onDavRefreshStatusChanged$1;->this$0:Lcom/android/calendar/selectcalendars/AccountManagerAdapter;

    .line 134
    .line 135
    new-instance v1, Lcom/android/calendar/selectcalendars/g;

    .line 136
    .line 137
    invoke-direct {v1, v0}, Lcom/android/calendar/selectcalendars/g;-><init>(Lcom/android/calendar/selectcalendars/AccountManagerAdapter;)V

    .line 138
    .line 139
    .line 140
    const-wide/16 v2, 0x190

    .line 141
    .line 142
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 143
    .line 144
    .line 145
    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    .line 146
    .line 147
    return-object p1
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

.class final Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment$startWeatherTask$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TravelEventInfoFragment.kt"

# interfaces
.implements Lw7/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->G0(Ljava/lang/String;Ljava/lang/String;)V
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0000*\u00020\u0002H\u008a@"
    }
    d2 = {
        "Lcom/android/calendar/common/event/schema/TravelEvent;",
        "T",
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
    c = "com.android.calendar.event.v2.sms.TravelEventInfoFragment$startWeatherTask$1"
    f = "TravelEventInfoFragment.kt"
    l = {
        0x10e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $latitude:Ljava/lang/String;

.field final synthetic $longitude:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment$startWeatherTask$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment$startWeatherTask$1;->this$0:Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;

    iput-object p2, p0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment$startWeatherTask$1;->$latitude:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment$startWeatherTask$1;->$longitude:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
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

    new-instance p1, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment$startWeatherTask$1;

    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment$startWeatherTask$1;->this$0:Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;

    iget-object v1, p0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment$startWeatherTask$1;->$latitude:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment$startWeatherTask$1;->$longitude:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment$startWeatherTask$1;-><init>(Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/k0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment$startWeatherTask$1;->invoke(Lkotlinx/coroutines/k0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment$startWeatherTask$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment$startWeatherTask$1;

    sget-object p2, Lkotlin/u;->a:Lkotlin/u;

    invoke-virtual {p1, p2}, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment$startWeatherTask$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment$startWeatherTask$1;->label:I

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
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment$startWeatherTask$1;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;

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
    new-instance v6, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment$startWeatherTask$1$resultDeffer$1;

    .line 42
    .line 43
    iget-object p1, p0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment$startWeatherTask$1;->this$0:Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment$startWeatherTask$1;->$latitude:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v7, p0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment$startWeatherTask$1;->$longitude:Ljava/lang/String;

    .line 48
    .line 49
    const/4 v8, 0x0

    .line 50
    invoke-direct {v6, p1, v1, v7, v8}, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment$startWeatherTask$1$resultDeffer$1;-><init>(Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/c;)V

    .line 51
    .line 52
    .line 53
    const/4 v7, 0x3

    .line 54
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/h;->b(Lkotlinx/coroutines/k0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lw7/p;ILjava/lang/Object;)Lkotlinx/coroutines/p0;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iget-object v1, p0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment$startWeatherTask$1;->this$0:Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;

    .line 59
    .line 60
    iput-object v1, p0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment$startWeatherTask$1;->L$0:Ljava/lang/Object;

    .line 61
    .line 62
    iput v2, p0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment$startWeatherTask$1;->label:I

    .line 63
    .line 64
    invoke-interface {p1, p0}, Lkotlinx/coroutines/p0;->E(Lkotlin/coroutines/c;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-ne p1, v0, :cond_2

    .line 69
    .line 70
    return-object v0

    .line 71
    :cond_2
    move-object v0, v1

    .line 72
    :goto_0
    check-cast p1, Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->F0(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment$startWeatherTask$1;->this$0:Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;->B0()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-nez p1, :cond_3

    .line 88
    .line 89
    const-string p1, "travel_weather_response_ok"

    .line 90
    .line 91
    invoke-static {p1}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment$startWeatherTask$1;->this$0:Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->r0()V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    const-string p1, "travel_weather_response_error"

    .line 101
    .line 102
    invoke-static {p1}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :goto_1
    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    .line 106
    .line 107
    return-object p1
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

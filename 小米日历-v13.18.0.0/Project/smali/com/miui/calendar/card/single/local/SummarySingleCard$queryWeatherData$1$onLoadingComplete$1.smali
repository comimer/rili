.class final Lcom/miui/calendar/card/single/local/SummarySingleCard$queryWeatherData$1$onLoadingComplete$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SummarySingleCard.kt"

# interfaces
.implements Lw7/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/calendar/card/single/local/SummarySingleCard$queryWeatherData$1;->a(Lcom/miui/calendar/weather/WeatherInfo;)V
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
    c = "com.miui.calendar.card.single.local.SummarySingleCard$queryWeatherData$1$onLoadingComplete$1"
    f = "SummarySingleCard.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $listener:Lcom/miui/calendar/card/b$b;

.field final synthetic $weatherInfo:Lcom/miui/calendar/weather/WeatherInfo;

.field label:I

.field final synthetic this$0:Lcom/miui/calendar/card/single/local/SummarySingleCard;


# direct methods
.method constructor <init>(Lcom/miui/calendar/weather/WeatherInfo;Lcom/miui/calendar/card/single/local/SummarySingleCard;Lcom/miui/calendar/card/b$b;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/calendar/weather/WeatherInfo;",
            "Lcom/miui/calendar/card/single/local/SummarySingleCard;",
            "Lcom/miui/calendar/card/b$b;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcom/miui/calendar/card/single/local/SummarySingleCard$queryWeatherData$1$onLoadingComplete$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/calendar/card/single/local/SummarySingleCard$queryWeatherData$1$onLoadingComplete$1;->$weatherInfo:Lcom/miui/calendar/weather/WeatherInfo;

    iput-object p2, p0, Lcom/miui/calendar/card/single/local/SummarySingleCard$queryWeatherData$1$onLoadingComplete$1;->this$0:Lcom/miui/calendar/card/single/local/SummarySingleCard;

    iput-object p3, p0, Lcom/miui/calendar/card/single/local/SummarySingleCard$queryWeatherData$1$onLoadingComplete$1;->$listener:Lcom/miui/calendar/card/b$b;

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

    new-instance p1, Lcom/miui/calendar/card/single/local/SummarySingleCard$queryWeatherData$1$onLoadingComplete$1;

    iget-object v0, p0, Lcom/miui/calendar/card/single/local/SummarySingleCard$queryWeatherData$1$onLoadingComplete$1;->$weatherInfo:Lcom/miui/calendar/weather/WeatherInfo;

    iget-object v1, p0, Lcom/miui/calendar/card/single/local/SummarySingleCard$queryWeatherData$1$onLoadingComplete$1;->this$0:Lcom/miui/calendar/card/single/local/SummarySingleCard;

    iget-object v2, p0, Lcom/miui/calendar/card/single/local/SummarySingleCard$queryWeatherData$1$onLoadingComplete$1;->$listener:Lcom/miui/calendar/card/b$b;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/miui/calendar/card/single/local/SummarySingleCard$queryWeatherData$1$onLoadingComplete$1;-><init>(Lcom/miui/calendar/weather/WeatherInfo;Lcom/miui/calendar/card/single/local/SummarySingleCard;Lcom/miui/calendar/card/b$b;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/k0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcom/miui/calendar/card/single/local/SummarySingleCard$queryWeatherData$1$onLoadingComplete$1;->invoke(Lkotlinx/coroutines/k0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/miui/calendar/card/single/local/SummarySingleCard$queryWeatherData$1$onLoadingComplete$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcom/miui/calendar/card/single/local/SummarySingleCard$queryWeatherData$1$onLoadingComplete$1;

    sget-object p2, Lkotlin/u;->a:Lkotlin/u;

    invoke-virtual {p1, p2}, Lcom/miui/calendar/card/single/local/SummarySingleCard$queryWeatherData$1$onLoadingComplete$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    const-string v0, "Cal:D:SummarySingleCard"

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/miui/calendar/card/single/local/SummarySingleCard$queryWeatherData$1$onLoadingComplete$1;->label:I

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/j;->b(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-object p1, p0, Lcom/miui/calendar/card/single/local/SummarySingleCard$queryWeatherData$1$onLoadingComplete$1;->$weatherInfo:Lcom/miui/calendar/weather/WeatherInfo;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/miui/calendar/util/x;->c(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v1, p0, Lcom/miui/calendar/card/single/local/SummarySingleCard$queryWeatherData$1$onLoadingComplete$1;->this$0:Lcom/miui/calendar/card/single/local/SummarySingleCard;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/miui/calendar/card/single/local/SummarySingleCard;->B(Lcom/miui/calendar/card/single/local/SummarySingleCard;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    iget-object v1, p0, Lcom/miui/calendar/card/single/local/SummarySingleCard$queryWeatherData$1$onLoadingComplete$1;->this$0:Lcom/miui/calendar/card/single/local/SummarySingleCard;

    .line 32
    .line 33
    invoke-static {v1}, Lcom/miui/calendar/card/single/local/SummarySingleCard;->A(Lcom/miui/calendar/card/single/local/SummarySingleCard;)Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "weather_info"

    .line 38
    .line 39
    invoke-static {v1, v2, p1}, Lcom/miui/calendar/util/q;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/miui/calendar/card/single/local/SummarySingleCard$queryWeatherData$1$onLoadingComplete$1;->this$0:Lcom/miui/calendar/card/single/local/SummarySingleCard;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/miui/calendar/card/single/local/SummarySingleCard$queryWeatherData$1$onLoadingComplete$1;->$weatherInfo:Lcom/miui/calendar/weather/WeatherInfo;

    .line 45
    .line 46
    invoke-static {p1, v1}, Lcom/miui/calendar/card/single/local/SummarySingleCard;->D(Lcom/miui/calendar/card/single/local/SummarySingleCard;Lcom/miui/calendar/weather/WeatherInfo;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    const-string p1, "get weather done"

    .line 50
    .line 51
    invoke-static {v0, p1}, Lcom/miui/calendar/util/z;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception p1

    .line 56
    const-string v1, "queryData()"

    .line 57
    .line 58
    invoke-static {v0, v1, p1}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    iget-object p1, p0, Lcom/miui/calendar/card/single/local/SummarySingleCard$queryWeatherData$1$onLoadingComplete$1;->$listener:Lcom/miui/calendar/card/b$b;

    .line 62
    .line 63
    invoke-interface {p1}, Lcom/miui/calendar/card/b$b;->a()V

    .line 64
    .line 65
    .line 66
    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    .line 67
    .line 68
    return-object p1

    .line 69
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 70
    .line 71
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 72
    .line 73
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p1
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

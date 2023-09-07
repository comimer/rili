.class public final Lcom/miui/calendar/card/single/local/SummarySingleCard$queryWeatherData$1;
.super Ljava/lang/Object;
.source "SummarySingleCard.kt"

# interfaces
.implements Ly4/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/calendar/card/single/local/SummarySingleCard;->Q(Lcom/miui/calendar/card/b$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0006\u001a\u00020\u0004H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/miui/calendar/card/single/local/SummarySingleCard$queryWeatherData$1",
        "Ly4/b;",
        "Lcom/miui/calendar/weather/WeatherInfo;",
        "weatherInfo",
        "Lkotlin/u;",
        "a",
        "b",
        "app_chinaNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/calendar/card/single/local/SummarySingleCard;

.field final synthetic b:Lcom/miui/calendar/card/b$b;


# direct methods
.method constructor <init>(Lcom/miui/calendar/card/single/local/SummarySingleCard;Lcom/miui/calendar/card/b$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/card/single/local/SummarySingleCard$queryWeatherData$1;->a:Lcom/miui/calendar/card/single/local/SummarySingleCard;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/miui/calendar/card/single/local/SummarySingleCard$queryWeatherData$1;->b:Lcom/miui/calendar/card/b$b;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
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
.end method


# virtual methods
.method public a(Lcom/miui/calendar/weather/WeatherInfo;)V
    .locals 7

    .line 1
    const-string v0, "weatherInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lkotlinx/coroutines/l0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/k0;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v4, Lcom/miui/calendar/card/single/local/SummarySingleCard$queryWeatherData$1$onLoadingComplete$1;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/miui/calendar/card/single/local/SummarySingleCard$queryWeatherData$1;->a:Lcom/miui/calendar/card/single/local/SummarySingleCard;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/miui/calendar/card/single/local/SummarySingleCard$queryWeatherData$1;->b:Lcom/miui/calendar/card/b$b;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-direct {v4, p1, v0, v2, v3}, Lcom/miui/calendar/card/single/local/SummarySingleCard$queryWeatherData$1$onLoadingComplete$1;-><init>(Lcom/miui/calendar/weather/WeatherInfo;Lcom/miui/calendar/card/single/local/SummarySingleCard;Lcom/miui/calendar/card/b$b;Lkotlin/coroutines/c;)V

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v5, 0x3

    .line 26
    const/4 v6, 0x0

    .line 27
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/h;->d(Lkotlinx/coroutines/k0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lw7/p;ILjava/lang/Object;)Lkotlinx/coroutines/s1;

    .line 28
    .line 29
    .line 30
    return-void
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

.method public b()V
    .locals 2

    .line 1
    const-string v0, "Cal:D:SummarySingleCard"

    .line 2
    .line 3
    const-string v1, "queryData() weather info load failed!"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/miui/calendar/card/single/local/SummarySingleCard$queryWeatherData$1;->a:Lcom/miui/calendar/card/single/local/SummarySingleCard;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/miui/calendar/card/single/local/SummarySingleCard;->A(Lcom/miui/calendar/card/single/local/SummarySingleCard;)Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "weather_info"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/miui/calendar/util/q;->h(Landroid/content/Context;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/miui/calendar/card/single/local/SummarySingleCard$queryWeatherData$1;->a:Lcom/miui/calendar/card/single/local/SummarySingleCard;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-static {v0, v1}, Lcom/miui/calendar/card/single/local/SummarySingleCard;->D(Lcom/miui/calendar/card/single/local/SummarySingleCard;Lcom/miui/calendar/weather/WeatherInfo;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/miui/calendar/card/single/local/SummarySingleCard$queryWeatherData$1;->b:Lcom/miui/calendar/card/b$b;

    .line 26
    .line 27
    invoke-interface {v0}, Lcom/miui/calendar/card/b$b;->a()V

    .line 28
    .line 29
    .line 30
    return-void
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
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

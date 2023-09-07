.class Lcom/android/calendar/cards/SummaryPresenter$a;
.super Ljava/lang/Object;
.source "SummaryPresenter.java"

# interfaces
.implements Ly4/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/cards/SummaryPresenter;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/calendar/cards/SummaryPresenter;


# direct methods
.method constructor <init>(Lcom/android/calendar/cards/SummaryPresenter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/cards/SummaryPresenter$a;->a:Lcom/android/calendar/cards/SummaryPresenter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
    .line 7
    .line 8
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
.end method

.method public static synthetic c(Lcom/android/calendar/cards/SummaryPresenter$a;Lcom/miui/calendar/weather/WeatherInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/calendar/cards/SummaryPresenter$a;->d(Lcom/miui/calendar/weather/WeatherInfo;)V

    return-void
.end method

.method private synthetic d(Lcom/miui/calendar/weather/WeatherInfo;)V
    .locals 4

    .line 1
    const-string v0, "Cal:D:SummaryPresenter"

    .line 2
    .line 3
    :try_start_0
    invoke-static {p1}, Lcom/miui/calendar/util/x;->c(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/android/calendar/cards/SummaryPresenter$a;->a:Lcom/android/calendar/cards/SummaryPresenter;

    .line 8
    .line 9
    invoke-static {v2}, Lcom/android/calendar/cards/SummaryPresenter;->n(Lcom/android/calendar/cards/SummaryPresenter;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/calendar/cards/SummaryPresenter$a;->a:Lcom/android/calendar/cards/SummaryPresenter;

    .line 20
    .line 21
    iget-object v2, v2, Lcom/android/calendar/cards/SummaryPresenter;->f:Landroid/content/Context;

    .line 22
    .line 23
    const-string v3, "weather_info"

    .line 24
    .line 25
    invoke-static {v2, v3, v1}, Lcom/miui/calendar/util/q;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/calendar/cards/SummaryPresenter$a;->a:Lcom/android/calendar/cards/SummaryPresenter;

    .line 29
    .line 30
    invoke-static {v1, p1}, Lcom/android/calendar/cards/SummaryPresenter;->l(Lcom/android/calendar/cards/SummaryPresenter;Lcom/miui/calendar/weather/WeatherInfo;)Lcom/miui/calendar/weather/WeatherInfo;

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/android/calendar/cards/SummaryPresenter$a;->a:Lcom/android/calendar/cards/SummaryPresenter;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/android/calendar/cards/SummaryPresenter;->m(Lcom/android/calendar/cards/SummaryPresenter;)Lcom/android/calendar/cards/SummaryPresenter$b;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object v1, p0, Lcom/android/calendar/cards/SummaryPresenter$a;->a:Lcom/android/calendar/cards/SummaryPresenter;

    .line 40
    .line 41
    invoke-static {v1}, Lcom/android/calendar/cards/SummaryPresenter;->k(Lcom/android/calendar/cards/SummaryPresenter;)Lcom/miui/calendar/weather/WeatherInfo;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iput-object v1, p1, Lcom/android/calendar/cards/SummaryPresenter$b;->a:Lcom/miui/calendar/weather/WeatherInfo;

    .line 46
    .line 47
    iget-object p1, p0, Lcom/android/calendar/cards/SummaryPresenter$a;->a:Lcom/android/calendar/cards/SummaryPresenter;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/android/calendar/cards/SummaryPresenter;->o(Lcom/android/calendar/cards/SummaryPresenter;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    const-string p1, "get weather done"

    .line 53
    .line 54
    invoke-static {v0, p1}, Lcom/miui/calendar/util/z;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception p1

    .line 59
    const-string v1, "queryWeatherData()"

    .line 60
    .line 61
    invoke-static {v0, v1, p1}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    return-void
    .line 65
.end method


# virtual methods
.method public a(Lcom/miui/calendar/weather/WeatherInfo;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    new-instance v1, Lcom/android/calendar/cards/z1;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/android/calendar/cards/z1;-><init>(Lcom/android/calendar/cards/SummaryPresenter$a;Lcom/miui/calendar/weather/WeatherInfo;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 12
    .line 13
    .line 14
    return-void
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public b()V
    .locals 2

    .line 1
    const-string v0, "Cal:D:SummaryPresenter"

    .line 2
    .line 3
    const-string v1, "queryData() weather info load failed!"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/calendar/cards/SummaryPresenter$a;->a:Lcom/android/calendar/cards/SummaryPresenter;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/calendar/cards/SummaryPresenter;->f:Landroid/content/Context;

    .line 11
    .line 12
    const-string v1, "weather_info"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/miui/calendar/util/q;->h(Landroid/content/Context;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/calendar/cards/SummaryPresenter$a;->a:Lcom/android/calendar/cards/SummaryPresenter;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-static {v0, v1}, Lcom/android/calendar/cards/SummaryPresenter;->l(Lcom/android/calendar/cards/SummaryPresenter;Lcom/miui/calendar/weather/WeatherInfo;)Lcom/miui/calendar/weather/WeatherInfo;

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/calendar/cards/SummaryPresenter$a;->a:Lcom/android/calendar/cards/SummaryPresenter;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/android/calendar/cards/SummaryPresenter;->m(Lcom/android/calendar/cards/SummaryPresenter;)Lcom/android/calendar/cards/SummaryPresenter$b;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v1, v0, Lcom/android/calendar/cards/SummaryPresenter$b;->a:Lcom/miui/calendar/weather/WeatherInfo;

    .line 30
    .line 31
    return-void
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

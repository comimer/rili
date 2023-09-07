.class Lcom/android/calendar/widget/MonthWidgetProvider$b;
.super Ljava/util/TimerTask;
.source "MonthWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/widget/MonthWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/calendar/widget/MonthWidgetProvider;


# direct methods
.method private constructor <init>(Lcom/android/calendar/widget/MonthWidgetProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/widget/MonthWidgetProvider$b;->a:Lcom/android/calendar/widget/MonthWidgetProvider;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/widget/MonthWidgetProvider;Lcom/android/calendar/widget/MonthWidgetProvider$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/calendar/widget/MonthWidgetProvider$b;-><init>(Lcom/android/calendar/widget/MonthWidgetProvider;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/calendar/widget/MonthWidgetProvider;->f:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "Cal:D:MonthWidgetProvider"

    .line 10
    .line 11
    const-string v1, "GetWeatherTask(): first get weather info"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/calendar/widget/MonthWidgetProvider$b;->a:Lcom/android/calendar/widget/MonthWidgetProvider;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/android/calendar/widget/MonthWidgetProvider;->d(Lcom/android/calendar/widget/MonthWidgetProvider;)Landroid/appwidget/AppWidgetManager;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/android/calendar/widget/MonthWidgetProvider$b;->a:Lcom/android/calendar/widget/MonthWidgetProvider;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/android/calendar/widget/MonthWidgetProvider;->a(Lcom/android/calendar/widget/MonthWidgetProvider;)Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, Lcom/android/calendar/widget/MonthWidgetProvider;->f(Landroid/content/Context;)Landroid/content/ComponentName;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/calendar/widget/MonthWidgetProvider$b;->a:Lcom/android/calendar/widget/MonthWidgetProvider;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-static {v1, v2}, Lcom/android/calendar/widget/MonthWidgetProvider;->e(Lcom/android/calendar/widget/MonthWidgetProvider;Lcom/android/calendar/widget/MonthWidgetProvider$d;)Lcom/android/calendar/widget/MonthWidgetProvider$d;

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/android/calendar/widget/MonthWidgetProvider$b;->a:Lcom/android/calendar/widget/MonthWidgetProvider;

    .line 45
    .line 46
    invoke-static {v1}, Lcom/android/calendar/widget/MonthWidgetProvider;->a(Lcom/android/calendar/widget/MonthWidgetProvider;)Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    iget-object v4, p0, Lcom/android/calendar/widget/MonthWidgetProvider$b;->a:Lcom/android/calendar/widget/MonthWidgetProvider;

    .line 51
    .line 52
    invoke-static {v4}, Lcom/android/calendar/widget/MonthWidgetProvider;->d(Lcom/android/calendar/widget/MonthWidgetProvider;)Landroid/appwidget/AppWidgetManager;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-static {v1, v3, v4, v0, v2}, Lcom/android/calendar/widget/MonthWidgetProvider;->b(Lcom/android/calendar/widget/MonthWidgetProvider;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I[J)V

    .line 57
    .line 58
    .line 59
    :cond_0
    return-void
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

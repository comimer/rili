.class Lcom/android/calendar/widget/MonthWidgetProvider$d;
.super Landroid/os/AsyncTask;
.source "MonthWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/widget/MonthWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/widget/RemoteViews;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/widget/RemoteViews;

.field final synthetic b:Lcom/android/calendar/widget/MonthWidgetProvider;


# direct methods
.method private constructor <init>(Lcom/android/calendar/widget/MonthWidgetProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/widget/MonthWidgetProvider$d;->b:Lcom/android/calendar/widget/MonthWidgetProvider;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/widget/MonthWidgetProvider;Lcom/android/calendar/widget/MonthWidgetProvider$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/calendar/widget/MonthWidgetProvider$d;-><init>(Lcom/android/calendar/widget/MonthWidgetProvider;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Landroid/widget/RemoteViews;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object p1, p1, v0

    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/calendar/widget/MonthWidgetProvider$d;->a:Landroid/widget/RemoteViews;

    .line 5
    .line 6
    new-instance p1, Lcom/miui/calendar/util/r0;

    .line 7
    .line 8
    invoke-direct {p1}, Lcom/miui/calendar/util/r0;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/miui/calendar/util/r0;->M()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p1, v0}, Lcom/miui/calendar/util/r0;->P(Z)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    invoke-virtual {p1}, Lcom/miui/calendar/util/r0;->l()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    invoke-static {v0, v1, v2, v3}, Lcom/miui/calendar/util/r0;->n(JJ)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iget-object v0, p0, Lcom/android/calendar/widget/MonthWidgetProvider$d;->b:Lcom/android/calendar/widget/MonthWidgetProvider;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/android/calendar/widget/MonthWidgetProvider;->a(Lcom/android/calendar/widget/MonthWidgetProvider;)Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0, p1}, Ly4/c;->c(Landroid/content/Context;I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1
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

.method protected b(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/calendar/widget/MonthWidgetProvider;->f:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sput-object p1, Lcom/android/calendar/widget/MonthWidgetProvider;->f:Ljava/lang/String;

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/calendar/widget/MonthWidgetProvider$d;->b:Lcom/android/calendar/widget/MonthWidgetProvider;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/android/calendar/widget/MonthWidgetProvider;->a(Lcom/android/calendar/widget/MonthWidgetProvider;)Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object v0, p0, Lcom/android/calendar/widget/MonthWidgetProvider$d;->b:Lcom/android/calendar/widget/MonthWidgetProvider;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/android/calendar/widget/MonthWidgetProvider;->a(Lcom/android/calendar/widget/MonthWidgetProvider;)Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/android/calendar/widget/MonthWidgetProvider;->f(Landroid/content/Context;)Landroid/content/ComponentName;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p1, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/android/calendar/widget/MonthWidgetProvider$d;->b:Lcom/android/calendar/widget/MonthWidgetProvider;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/android/calendar/widget/MonthWidgetProvider;->a(Lcom/android/calendar/widget/MonthWidgetProvider;)Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-static {v1, v2, p1, v0, v3}, Lcom/android/calendar/widget/MonthWidgetProvider;->b(Lcom/android/calendar/widget/MonthWidgetProvider;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I[J)V

    .line 44
    .line 45
    .line 46
    return-void
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

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Landroid/widget/RemoteViews;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/calendar/widget/MonthWidgetProvider$d;->a([Landroid/widget/RemoteViews;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
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

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/calendar/widget/MonthWidgetProvider$d;->b(Ljava/lang/String;)V

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

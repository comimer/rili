.class public Lcom/android/calendar/widget/MonthWidgetSettings;
.super Lcom/android/calendar/common/b;
.source "MonthWidgetSettings.java"


# instance fields
.field private b:Lmiuix/appcompat/app/l;

.field private c:I

.field private d:Landroid/content/DialogInterface$OnClickListener;

.field private e:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/common/b;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/calendar/widget/MonthWidgetSettings;->c:I

    .line 6
    .line 7
    new-instance v0, Lcom/android/calendar/widget/MonthWidgetSettings$a;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/android/calendar/widget/MonthWidgetSettings$a;-><init>(Lcom/android/calendar/widget/MonthWidgetSettings;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/calendar/widget/MonthWidgetSettings;->d:Landroid/content/DialogInterface$OnClickListener;

    .line 13
    .line 14
    new-instance v0, Lcom/android/calendar/widget/MonthWidgetSettings$b;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/android/calendar/widget/MonthWidgetSettings$b;-><init>(Lcom/android/calendar/widget/MonthWidgetSettings;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/calendar/widget/MonthWidgetSettings;->e:Landroid/content/DialogInterface$OnDismissListener;

    .line 20
    .line 21
    return-void
    .line 22
.end method

.method static synthetic Y(Lcom/android/calendar/widget/MonthWidgetSettings;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/widget/MonthWidgetSettings;->c:I

    .line 2
    .line 3
    return p0
    .line 4
    .line 5
    .line 6
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

.method static synthetic Z(Lcom/android/calendar/widget/MonthWidgetSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/widget/MonthWidgetSettings;->a0()V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
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

.method private a0()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {p0}, Lcom/android/calendar/widget/MonthWidgetProvider;->f(Landroid/content/Context;)Landroid/content/ComponentName;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x0

    .line 24
    const-string v3, "appWidgetId"

    .line 25
    .line 26
    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    new-instance v2, Landroid/content/Intent;

    .line 31
    .line 32
    const-class v4, Lcom/android/calendar/widget/MonthWidgetProvider;

    .line 33
    .line 34
    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    const-string v0, "android.appwidget.action.APPWIDGET_UPDATE"

    .line 41
    .line 42
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    const-string v0, "appWidgetIds"

    .line 46
    .line 47
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 51
    .line 52
    .line 53
    const/4 v0, -0x1

    .line 54
    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/calendar/widget/MonthWidgetSettings;->b:Lmiuix/appcompat/app/l;

    .line 58
    .line 59
    if-eqz v0, :cond_0

    .line 60
    .line 61
    invoke-virtual {v0}, Lmiuix/appcompat/app/l;->dismiss()V

    .line 62
    .line 63
    .line 64
    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/android/calendar/widget/MonthWidgetSettings;->b:Lmiuix/appcompat/app/l;

    .line 66
    .line 67
    :cond_0
    return-void
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method private b0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/calendar/widget/MonthWidgetSettings;->b:Lmiuix/appcompat/app/l;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lmiuix/appcompat/app/l$b;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lmiuix/appcompat/app/l$b;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    const v1, 0x7f1206e6

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/l$b;->F(I)Lmiuix/appcompat/app/l$b;

    .line 14
    .line 15
    .line 16
    const v1, 0x7f03005d

    .line 17
    .line 18
    .line 19
    const/4 v2, -0x1

    .line 20
    iget-object v3, p0, Lcom/android/calendar/widget/MonthWidgetSettings;->d:Landroid/content/DialogInterface$OnClickListener;

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/appcompat/app/l$b;->B(IILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/l$b;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lmiuix/appcompat/app/l$b;->a()Lmiuix/appcompat/app/l;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/android/calendar/widget/MonthWidgetSettings;->b:Lmiuix/appcompat/app/l;

    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/widget/MonthWidgetSettings;->b:Lmiuix/appcompat/app/l;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/calendar/widget/MonthWidgetSettings;->e:Landroid/content/DialogInterface$OnDismissListener;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/calendar/widget/MonthWidgetSettings;->b:Lmiuix/appcompat/app/l;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 41
    .line 42
    .line 43
    return-void
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


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/calendar/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "appWidgetId"

    .line 9
    .line 10
    const/4 v1, -0x1

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iput p1, p0, Lcom/android/calendar/widget/MonthWidgetSettings;->c:I

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/android/calendar/widget/MonthWidgetSettings;->b0()V

    .line 18
    .line 19
    .line 20
    return-void
    .line 21
    .line 22
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/d;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/calendar/widget/MonthWidgetSettings;->b:Lmiuix/appcompat/app/l;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/calendar/widget/MonthWidgetSettings;->b:Lmiuix/appcompat/app/l;

    .line 15
    .line 16
    invoke-virtual {v0}, Lmiuix/appcompat/app/l;->dismiss()V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/android/calendar/widget/MonthWidgetSettings;->b:Lmiuix/appcompat/app/l;

    .line 21
    .line 22
    :cond_1
    return-void
.end method

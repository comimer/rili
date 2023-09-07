.class public Lcom/android/calendar/settings/CalendarActionbarSettingsActivity;
.super Lcom/android/calendar/common/b;
.source "CalendarActionbarSettingsActivity.java"


# instance fields
.field private b:Lcom/android/calendar/settings/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/common/b;-><init>()V

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

.method static synthetic Y(Lcom/android/calendar/settings/CalendarActionbarSettingsActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/calendar/settings/CalendarActionbarSettingsActivity;->b0(Z)V

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

.method static synthetic Z(Lcom/android/calendar/settings/CalendarActionbarSettingsActivity;)Lcom/android/calendar/settings/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/settings/CalendarActionbarSettingsActivity;->b:Lcom/android/calendar/settings/b;

    .line 2
    .line 3
    return-object p0
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

.method static synthetic a0(Lcom/android/calendar/settings/CalendarActionbarSettingsActivity;Lcom/android/calendar/settings/b;)Lcom/android/calendar/settings/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/settings/CalendarActionbarSettingsActivity;->b:Lcom/android/calendar/settings/b;

    .line 2
    .line 3
    return-object p1
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

.method private b0(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/miui/calendar/util/z0;->q(Landroid/content/Context;Z)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    new-instance p1, Lcom/android/calendar/settings/CalendarActionbarSettingsActivity$a;

    .line 8
    .line 9
    invoke-direct {p1, p0}, Lcom/android/calendar/settings/CalendarActionbarSettingsActivity$a;-><init>(Lcom/android/calendar/settings/CalendarActionbarSettingsActivity;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0, p1}, Lcom/miui/calendar/util/z0;->D(Landroid/content/Context;Lcom/miui/calendar/util/z0$h;)Lmiuix/appcompat/app/l;

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/d;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 5
    .line 6
    .line 7
    move-result-object p3

    .line 8
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    new-instance v0, Lcom/android/calendar/settings/CalendarActionbarSettingsActivity$b;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/android/calendar/settings/CalendarActionbarSettingsActivity$b;-><init>(Lcom/android/calendar/settings/CalendarActionbarSettingsActivity;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p3, p1, p2, v0}, Lcom/miui/calendar/util/z0;->r(Landroid/content/Context;IILcom/miui/calendar/util/z0$h;)Z

    .line 18
    .line 19
    .line 20
    return-void
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
    .line 76
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
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/calendar/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/miui/calendar/util/z0;->l(Landroid/app/Activity;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-static {}, Lcom/miui/calendar/util/z0;->m()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    invoke-static {p0}, Lcom/miui/calendar/util/z0;->i(Landroid/content/Context;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    invoke-static {p0}, Lcom/miui/calendar/util/z0;->B(Landroid/app/Activity;)Z

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance p1, Lcom/android/calendar/settings/b;

    .line 27
    .line 28
    invoke-direct {p1}, Lcom/android/calendar/settings/b;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/android/calendar/settings/CalendarActionbarSettingsActivity;->b:Lcom/android/calendar/settings/b;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const v0, 0x1020002

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/android/calendar/settings/CalendarActionbarSettingsActivity;->b:Lcom/android/calendar/settings/b;

    .line 45
    .line 46
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/s;->q(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroidx/fragment/app/s;->h()I

    .line 51
    .line 52
    .line 53
    return-void
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

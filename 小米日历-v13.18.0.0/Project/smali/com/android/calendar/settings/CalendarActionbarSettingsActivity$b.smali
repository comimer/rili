.class Lcom/android/calendar/settings/CalendarActionbarSettingsActivity$b;
.super Ljava/lang/Object;
.source "CalendarActionbarSettingsActivity.java"

# interfaces
.implements Lcom/miui/calendar/util/z0$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/settings/CalendarActionbarSettingsActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/calendar/settings/CalendarActionbarSettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/settings/CalendarActionbarSettingsActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/settings/CalendarActionbarSettingsActivity$b;->a:Lcom/android/calendar/settings/CalendarActionbarSettingsActivity;

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


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/calendar/settings/CalendarActionbarSettingsActivity$b;->a:Lcom/android/calendar/settings/CalendarActionbarSettingsActivity;

    .line 2
    .line 3
    new-instance v1, Lcom/android/calendar/settings/b;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/android/calendar/settings/b;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/android/calendar/settings/CalendarActionbarSettingsActivity;->a0(Lcom/android/calendar/settings/CalendarActionbarSettingsActivity;Lcom/android/calendar/settings/b;)Lcom/android/calendar/settings/b;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/calendar/settings/CalendarActionbarSettingsActivity$b;->a:Lcom/android/calendar/settings/CalendarActionbarSettingsActivity;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/android/calendar/settings/CalendarActionbarSettingsActivity$b;->a:Lcom/android/calendar/settings/CalendarActionbarSettingsActivity;

    .line 22
    .line 23
    invoke-static {v1}, Lcom/android/calendar/settings/CalendarActionbarSettingsActivity;->Z(Lcom/android/calendar/settings/CalendarActionbarSettingsActivity;)Lcom/android/calendar/settings/b;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const v2, 0x1020002

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/s;->q(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroidx/fragment/app/s;->h()I

    .line 35
    .line 36
    .line 37
    return-void
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

.method public b(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/calendar/settings/CalendarActionbarSettingsActivity$b;->a:Lcom/android/calendar/settings/CalendarActionbarSettingsActivity;

    .line 4
    .line 5
    invoke-virtual {p1}, Lmiuix/appcompat/app/m;->finish()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/android/calendar/settings/CalendarActionbarSettingsActivity$b;->a:Lcom/android/calendar/settings/CalendarActionbarSettingsActivity;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-static {p1, v0}, Lcom/android/calendar/settings/CalendarActionbarSettingsActivity;->Y(Lcom/android/calendar/settings/CalendarActionbarSettingsActivity;Z)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

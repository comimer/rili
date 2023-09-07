.class public Lcom/android/calendar/settings/ReminderModeActivity$a;
.super Lmiuix/preference/j;
.source "ReminderModeActivity.java"

# interfaces
.implements Landroidx/preference/Preference$c;
.implements Landroidx/preference/Preference$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/settings/ReminderModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field D:Lcom/android/calendar/preferences/MiuiDefaultRingtonePreference;

.field E:Landroid/net/Uri;

.field F:Landroidx/preference/PreferenceCategory;

.field G:Lmiuix/preference/DropDownPreference;

.field H:Lcom/android/calendar/preferences/MiuiDefaultRingtonePreference;

.field I:Landroid/net/Uri;

.field y:Landroidx/preference/CheckBoxPreference;

.field z:Lmiuix/preference/DropDownPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmiuix/preference/j;-><init>()V

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

.method private J()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->y:Landroidx/preference/CheckBoxPreference;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-direct {p0, v0}, Lcom/android/calendar/settings/ReminderModeActivity$a;->N(Z)V

    .line 8
    .line 9
    .line 10
    return-void
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

.method public static K()Lcom/android/calendar/settings/ReminderModeActivity$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/calendar/settings/ReminderModeActivity$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/calendar/settings/ReminderModeActivity$a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
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

.method private L()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
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

.method private M()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->D:Lcom/android/calendar/preferences/MiuiDefaultRingtonePreference;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->E:Landroid/net/Uri;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static {v1, v2, v3}, Landroid/media/ExtraRingtone;->getRingtoneTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->H0(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->H:Lcom/android/calendar/preferences/MiuiDefaultRingtonePreference;

    .line 22
    .line 23
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v2, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->I:Landroid/net/Uri;

    .line 32
    .line 33
    invoke-static {v1, v2, v3}, Landroid/media/ExtraRingtone;->getRingtoneTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->H0(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    return-void
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

.method private N(Z)V
    .locals 2

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->z:Lmiuix/preference/DropDownPreference;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->v0(Z)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->D:Lcom/android/calendar/preferences/MiuiDefaultRingtonePreference;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->v0(Z)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->F:Landroidx/preference/PreferenceCategory;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->v0(Z)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->E:Landroid/net/Uri;

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lcom/android/calendar/settings/ReminderModeActivity;->Z(Landroid/content/Context;)Landroid/net/Uri;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->E:Landroid/net/Uri;

    .line 36
    .line 37
    :cond_0
    iget-object p1, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->I:Landroid/net/Uri;

    .line 38
    .line 39
    if-nez p1, :cond_2

    .line 40
    .line 41
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1}, Lcom/android/calendar/settings/ReminderModeActivity;->Y(Landroid/content/Context;)Landroid/net/Uri;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->I:Landroid/net/Uri;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iget-object p1, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->z:Lmiuix/preference/DropDownPreference;

    .line 57
    .line 58
    const/4 v0, 0x1

    .line 59
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->v0(Z)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->D:Lcom/android/calendar/preferences/MiuiDefaultRingtonePreference;

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->v0(Z)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->D:Lcom/android/calendar/preferences/MiuiDefaultRingtonePreference;

    .line 68
    .line 69
    const/16 v1, 0x1000

    .line 70
    .line 71
    invoke-virtual {p1, v1}, Lcom/android/calendar/preferences/RingtonePreferenceX;->U0(I)V

    .line 72
    .line 73
    .line 74
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {p1}, Lcom/android/calendar/settings/ReminderModeActivity;->Z(Landroid/content/Context;)Landroid/net/Uri;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iput-object p1, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->E:Landroid/net/Uri;

    .line 87
    .line 88
    iget-object p1, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->F:Landroidx/preference/PreferenceCategory;

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->v0(Z)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->H:Lcom/android/calendar/preferences/MiuiDefaultRingtonePreference;

    .line 94
    .line 95
    const/4 v0, 0x4

    .line 96
    invoke-virtual {p1, v0}, Lcom/android/calendar/preferences/RingtonePreferenceX;->U0(I)V

    .line 97
    .line 98
    .line 99
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-static {p1}, Lcom/android/calendar/settings/ReminderModeActivity;->Y(Landroid/content/Context;)Landroid/net/Uri;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    iput-object p1, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->I:Landroid/net/Uri;

    .line 112
    .line 113
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/calendar/settings/ReminderModeActivity$a;->M()V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->D:Lcom/android/calendar/preferences/MiuiDefaultRingtonePreference;

    .line 117
    .line 118
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->D0(Landroidx/preference/Preference$c;)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->H:Lcom/android/calendar/preferences/MiuiDefaultRingtonePreference;

    .line 122
    .line 123
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->D0(Landroidx/preference/Preference$c;)V

    .line 124
    .line 125
    .line 126
    return-void
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


# virtual methods
.method public c(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->y:Landroidx/preference/CheckBoxPreference;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne p1, v0, :cond_1

    .line 6
    .line 7
    check-cast p2, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-static {p2}, Lo1/i;->a(Landroid/content/Context;)Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-nez p2, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance p2, Lcom/android/calendar/settings/ReminderModeActivity$a$a;

    .line 34
    .line 35
    invoke-direct {p2, p0}, Lcom/android/calendar/settings/ReminderModeActivity$a$a;-><init>(Lcom/android/calendar/settings/ReminderModeActivity$a;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p1, p2}, Lo1/i;->k(Landroid/content/Context;Lo1/i$d;)V

    .line 39
    .line 40
    .line 41
    return v1

    .line 42
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/calendar/settings/ReminderModeActivity$a;->N(Z)V

    .line 43
    .line 44
    .line 45
    return v2

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->z:Lmiuix/preference/DropDownPreference;

    .line 47
    .line 48
    if-ne p1, v0, :cond_2

    .line 49
    .line 50
    check-cast p2, Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0, p2}, Lmiuix/preference/DropDownPreference;->e1(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return v2

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->D:Lcom/android/calendar/preferences/MiuiDefaultRingtonePreference;

    .line 57
    .line 58
    if-ne p1, v0, :cond_4

    .line 59
    .line 60
    instance-of p1, p2, Ljava/lang/String;

    .line 61
    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    check-cast p2, Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->E:Landroid/net/Uri;

    .line 71
    .line 72
    :cond_3
    invoke-direct {p0}, Lcom/android/calendar/settings/ReminderModeActivity$a;->M()V

    .line 73
    .line 74
    .line 75
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iget-object p2, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->E:Landroid/net/Uri;

    .line 84
    .line 85
    invoke-static {p1, p2}, Lcom/android/calendar/settings/ReminderModeActivity;->b0(Landroid/content/Context;Landroid/net/Uri;)V

    .line 86
    .line 87
    .line 88
    return v2

    .line 89
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->H:Lcom/android/calendar/preferences/MiuiDefaultRingtonePreference;

    .line 90
    .line 91
    if-ne p1, v0, :cond_6

    .line 92
    .line 93
    instance-of p1, p2, Ljava/lang/String;

    .line 94
    .line 95
    if-eqz p1, :cond_5

    .line 96
    .line 97
    check-cast p2, Ljava/lang/String;

    .line 98
    .line 99
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    iput-object p1, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->I:Landroid/net/Uri;

    .line 104
    .line 105
    :cond_5
    invoke-direct {p0}, Lcom/android/calendar/settings/ReminderModeActivity$a;->M()V

    .line 106
    .line 107
    .line 108
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    iget-object p2, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->I:Landroid/net/Uri;

    .line 117
    .line 118
    invoke-static {p1, p2}, Lcom/android/calendar/settings/ReminderModeActivity;->a0(Landroid/content/Context;Landroid/net/Uri;)V

    .line 119
    .line 120
    .line 121
    return v2

    .line 122
    :cond_6
    return v1
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

.method public d(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public h(Landroidx/preference/Preference;)Z
    .locals 2

    .line 1
    const-string v0, "Cal:D:ReminderMOdePreferenceFragment"

    .line 2
    .line 3
    const-string v1, "onPreferenceTreeClick()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->D:Lcom/android/calendar/preferences/MiuiDefaultRingtonePreference;

    .line 9
    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->H:Lcom/android/calendar/preferences/MiuiDefaultRingtonePreference;

    .line 13
    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 20
    return p1
    .line 21
    .line 22
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/preference/j;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f150013

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/preference/g;->i(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/preference/g;->m()Landroidx/preference/PreferenceScreen;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "preferences_alerts"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->T0(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroidx/preference/CheckBoxPreference;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->y:Landroidx/preference/CheckBoxPreference;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->D0(Landroidx/preference/Preference$c;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    const-string v0, "preferences_alerts_vibrateWhen"

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->T0(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lmiuix/preference/DropDownPreference;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->z:Lmiuix/preference/DropDownPreference;

    .line 38
    .line 39
    const-string v0, "preferences_notification_ringtone"

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->T0(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/android/calendar/preferences/MiuiDefaultRingtonePreference;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->D:Lcom/android/calendar/preferences/MiuiDefaultRingtonePreference;

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->E0(Landroidx/preference/Preference$d;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->D:Lcom/android/calendar/preferences/MiuiDefaultRingtonePreference;

    .line 61
    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Lcom/android/calendar/preferences/MiuiDefaultRingtonePreference;->Z0(Landroid/app/Activity;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->D:Lcom/android/calendar/preferences/MiuiDefaultRingtonePreference;

    .line 70
    .line 71
    const/4 v1, 0x1

    .line 72
    invoke-virtual {v0, v1}, Lcom/android/calendar/preferences/MiuiDefaultRingtonePreference;->b1(I)V

    .line 73
    .line 74
    .line 75
    :cond_1
    const-string v0, "preferences_alarms_category"

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->T0(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Landroidx/preference/PreferenceCategory;

    .line 82
    .line 83
    iput-object v0, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->F:Landroidx/preference/PreferenceCategory;

    .line 84
    .line 85
    const-string v0, "preferences_alarm_alerts_vibrateWhen"

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->T0(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Lmiuix/preference/DropDownPreference;

    .line 92
    .line 93
    iput-object v0, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->G:Lmiuix/preference/DropDownPreference;

    .line 94
    .line 95
    const-string v0, "preferences_alarm_alerts_ringtone"

    .line 96
    .line 97
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->T0(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Lcom/android/calendar/preferences/MiuiDefaultRingtonePreference;

    .line 102
    .line 103
    iput-object p1, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->H:Lcom/android/calendar/preferences/MiuiDefaultRingtonePreference;

    .line 104
    .line 105
    if-eqz p1, :cond_2

    .line 106
    .line 107
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->E0(Landroidx/preference/Preference$d;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    if-eqz p1, :cond_2

    .line 115
    .line 116
    iget-object p1, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->H:Lcom/android/calendar/preferences/MiuiDefaultRingtonePreference;

    .line 117
    .line 118
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {p1, v0}, Lcom/android/calendar/preferences/MiuiDefaultRingtonePreference;->Z0(Landroid/app/Activity;)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->H:Lcom/android/calendar/preferences/MiuiDefaultRingtonePreference;

    .line 126
    .line 127
    invoke-virtual {p1, p0}, Lcom/android/calendar/preferences/MiuiDefaultRingtonePreference;->a1(Lmiuix/preference/j;)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->H:Lcom/android/calendar/preferences/MiuiDefaultRingtonePreference;

    .line 131
    .line 132
    const/4 v0, 0x2

    .line 133
    invoke-virtual {p1, v0}, Lcom/android/calendar/preferences/MiuiDefaultRingtonePreference;->b1(I)V

    .line 134
    .line 135
    .line 136
    :cond_2
    invoke-direct {p0}, Lcom/android/calendar/settings/ReminderModeActivity$a;->J()V

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->y:Landroidx/preference/CheckBoxPreference;

    .line 140
    .line 141
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->D0(Landroidx/preference/Preference$c;)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->F:Landroidx/preference/PreferenceCategory;

    .line 145
    .line 146
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->D0(Landroidx/preference/Preference$c;)V

    .line 147
    .line 148
    .line 149
    return-void
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

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    .line 3
    .line 4
    const-string p2, "audio"

    .line 5
    .line 6
    const/4 p3, 0x1

    .line 7
    if-ne p1, p3, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p2}, Lcom/miui/calendar/util/z0;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    invoke-static {p1, p3}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->H:Lcom/android/calendar/preferences/MiuiDefaultRingtonePreference;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/android/calendar/preferences/MiuiDefaultRingtonePreference;->Y()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-static {p2}, Lcom/miui/calendar/util/z0;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const p2, 0x7f1204de

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    const p3, 0x7f1204cd

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    invoke-static {p1, p2, p3}, Lcom/miui/calendar/util/z0;->x(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    :goto_0
    return-void
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

.method public onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/android/calendar/settings/ReminderModeActivity$a;->L()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/android/calendar/settings/ReminderModeActivity;->Z(Landroid/content/Context;)Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->E:Landroid/net/Uri;

    .line 20
    .line 21
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/android/calendar/settings/ReminderModeActivity;->Y(Landroid/content/Context;)Landroid/net/Uri;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->I:Landroid/net/Uri;

    .line 34
    .line 35
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->D:Lcom/android/calendar/preferences/MiuiDefaultRingtonePreference;

    .line 44
    .line 45
    invoke-virtual {v1}, Landroidx/preference/Preference;->u()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object v2, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->E:Landroid/net/Uri;

    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    if-eqz v2, :cond_0

    .line 53
    .line 54
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    move-object v2, v3

    .line 60
    :goto_0
    invoke-static {v0, v1, v2}, Lb2/a;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->H:Lcom/android/calendar/preferences/MiuiDefaultRingtonePreference;

    .line 72
    .line 73
    invoke-virtual {v1}, Landroidx/preference/Preference;->u()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    iget-object v2, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->I:Landroid/net/Uri;

    .line 78
    .line 79
    if-eqz v2, :cond_1

    .line 80
    .line 81
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    :cond_1
    invoke-static {v0, v1, v3}, Lb2/a;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-direct {p0}, Lcom/android/calendar/settings/ReminderModeActivity$a;->M()V

    .line 89
    .line 90
    .line 91
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-static {v0}, Lo1/i;->a(Landroid/content/Context;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-nez v0, :cond_2

    .line 104
    .line 105
    iget-object v0, p0, Lcom/android/calendar/settings/ReminderModeActivity$a;->y:Landroidx/preference/CheckBoxPreference;

    .line 106
    .line 107
    const/4 v1, 0x0

    .line 108
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 109
    .line 110
    .line 111
    :cond_2
    return-void
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
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
.end method

.method public q(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

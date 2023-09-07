.class public Lcom/android/calendar/settings/g;
.super Lmiuix/preference/j;
.source "PrivacyPermissionPreferenceFragment.java"

# interfaces
.implements Landroidx/preference/Preference$d;


# instance fields
.field D:Landroidx/preference/Preference;

.field E:Landroidx/preference/Preference;

.field y:Landroidx/preference/Preference;

.field z:Landroidx/preference/Preference;


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
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/preference/g;->m()Landroidx/preference/PreferenceScreen;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "key_user_agreement"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->T0(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iput-object v1, p0, Lcom/android/calendar/settings/g;->y:Landroidx/preference/Preference;

    .line 12
    .line 13
    const-string v1, "key_privacy_policy"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->T0(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-object v1, p0, Lcom/android/calendar/settings/g;->z:Landroidx/preference/Preference;

    .line 20
    .line 21
    const-string v1, "key_data_sharing_instruction"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->T0(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iput-object v1, p0, Lcom/android/calendar/settings/g;->D:Landroidx/preference/Preference;

    .line 28
    .line 29
    const-string v1, "key_permission_description"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->T0(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/android/calendar/settings/g;->E:Landroidx/preference/Preference;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/calendar/settings/g;->y:Landroidx/preference/Preference;

    .line 38
    .line 39
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->E0(Landroidx/preference/Preference$d;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/calendar/settings/g;->z:Landroidx/preference/Preference;

    .line 43
    .line 44
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->E0(Landroidx/preference/Preference$d;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/calendar/settings/g;->D:Landroidx/preference/Preference;

    .line 48
    .line 49
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->E0(Landroidx/preference/Preference$d;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/calendar/settings/g;->E:Landroidx/preference/Preference;

    .line 53
    .line 54
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->E0(Landroidx/preference/Preference$d;)V

    .line 55
    .line 56
    .line 57
    return-void
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
.method public d(Landroidx/preference/Preference;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/calendar/settings/g;->y:Landroidx/preference/Preference;

    .line 2
    .line 3
    const-string v1, "android.intent.action.VIEW"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    new-instance p1, Landroid/content/Intent;

    .line 9
    .line 10
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/miui/calendar/util/z0;->g()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 25
    .line 26
    .line 27
    return v2

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/settings/g;->z:Landroidx/preference/Preference;

    .line 29
    .line 30
    if-ne p1, v0, :cond_1

    .line 31
    .line 32
    new-instance p1, Landroid/content/Intent;

    .line 33
    .line 34
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lcom/miui/calendar/util/z0;->f()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 49
    .line 50
    .line 51
    return v2

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/settings/g;->D:Landroidx/preference/Preference;

    .line 53
    .line 54
    if-ne p1, v0, :cond_2

    .line 55
    .line 56
    new-instance p1, Landroid/content/Intent;

    .line 57
    .line 58
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {}, Lcom/miui/calendar/util/z0;->d()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 73
    .line 74
    .line 75
    return v2

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/settings/g;->E:Landroidx/preference/Preference;

    .line 77
    .line 78
    if-ne p1, v0, :cond_3

    .line 79
    .line 80
    new-instance p1, Landroid/content/Intent;

    .line 81
    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const-class v1, Lcom/android/calendar/settings/PermissionDescriptionActivity;

    .line 87
    .line 88
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 92
    .line 93
    .line 94
    return v2

    .line 95
    :cond_3
    const/4 p1, 0x0

    .line 96
    return p1
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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmiuix/preference/j;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f150012

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/preference/g;->i(I)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/android/calendar/settings/g;->J()V

    .line 11
    .line 12
    .line 13
    return-void
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

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/preference/g;->m()Landroidx/preference/PreferenceScreen;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Lcom/miui/calendar/util/y;->i(Landroid/content/Context;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/calendar/settings/g;->y:Landroidx/preference/Preference;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->a1(Landroidx/preference/Preference;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
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
.end method

.method public q(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

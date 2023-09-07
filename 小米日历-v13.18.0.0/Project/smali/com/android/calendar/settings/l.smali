.class public Lcom/android/calendar/settings/l;
.super Lmiuix/preference/j;
.source "TimeZonePreferenceFragment.java"

# interfaces
.implements Landroidx/preference/Preference$c;


# instance fields
.field private D:[[Ljava/lang/CharSequence;

.field private E:Ljava/lang/String;

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


# virtual methods
.method public c(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/settings/l;->y:Landroidx/preference/CheckBoxPreference;

    .line 2
    .line 3
    if-ne p1, v0, :cond_1

    .line 4
    .line 5
    check-cast p2, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/calendar/settings/l;->z:Lmiuix/preference/DropDownPreference;

    .line 14
    .line 15
    invoke-virtual {p1}, Lmiuix/preference/DropDownPreference;->a1()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string p1, "auto"

    .line 21
    .line 22
    :goto_0
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-static {p2, p1}, Lcom/android/calendar/common/Utils;->d1(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    return p1

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/settings/l;->z:Lmiuix/preference/DropDownPreference;

    .line 36
    .line 37
    if-ne p1, v0, :cond_2

    .line 38
    .line 39
    check-cast p2, Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, p2}, Lmiuix/preference/DropDownPreference;->e1(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1, p2}, Lcom/android/calendar/common/Utils;->d1(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    const/4 p1, 0x0

    .line 56
    return p1
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
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lmiuix/preference/j;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f150020

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
    const-string v0, "preferences_home_tz_enabled"

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
    iput-object v0, p0, Lcom/android/calendar/settings/l;->y:Landroidx/preference/CheckBoxPreference;

    .line 23
    .line 24
    const-string v0, "preferences_home_tz"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->T0(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lmiuix/preference/DropDownPreference;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/android/calendar/settings/l;->z:Lmiuix/preference/DropDownPreference;

    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/calendar/settings/l;->y:Landroidx/preference/CheckBoxPreference;

    .line 35
    .line 36
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->D0(Landroidx/preference/Preference$c;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/android/calendar/settings/l;->z:Lmiuix/preference/DropDownPreference;

    .line 40
    .line 41
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->D0(Landroidx/preference/Preference$c;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/android/calendar/settings/l;->z:Lmiuix/preference/DropDownPreference;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/calendar/settings/l;->y:Landroidx/preference/CheckBoxPreference;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->L0(Z)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/android/calendar/settings/l;->z:Lmiuix/preference/DropDownPreference;

    .line 56
    .line 57
    invoke-virtual {p1}, Lmiuix/preference/DropDownPreference;->a1()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object v0, p0, Lcom/android/calendar/settings/l;->D:[[Ljava/lang/CharSequence;

    .line 62
    .line 63
    if-eqz v0, :cond_0

    .line 64
    .line 65
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/android/calendar/settings/l;->E:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_1

    .line 80
    .line 81
    :cond_0
    new-instance v0, Lcom/android/calendar/common/l;

    .line 82
    .line 83
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 92
    .line 93
    .line 94
    move-result-wide v2

    .line 95
    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/calendar/common/l;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/android/calendar/common/l;->a()[[Ljava/lang/CharSequence;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iput-object p1, p0, Lcom/android/calendar/settings/l;->D:[[Ljava/lang/CharSequence;

    .line 103
    .line 104
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    iput-object p1, p0, Lcom/android/calendar/settings/l;->E:Ljava/lang/String;

    .line 113
    .line 114
    :cond_1
    iget-object p1, p0, Lcom/android/calendar/settings/l;->z:Lmiuix/preference/DropDownPreference;

    .line 115
    .line 116
    iget-object v0, p0, Lcom/android/calendar/settings/l;->D:[[Ljava/lang/CharSequence;

    .line 117
    .line 118
    const/4 v1, 0x0

    .line 119
    aget-object v0, v0, v1

    .line 120
    .line 121
    invoke-virtual {p1, v0}, Lmiuix/preference/DropDownPreference;->d1([Ljava/lang/CharSequence;)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lcom/android/calendar/settings/l;->z:Lmiuix/preference/DropDownPreference;

    .line 125
    .line 126
    iget-object v0, p0, Lcom/android/calendar/settings/l;->D:[[Ljava/lang/CharSequence;

    .line 127
    .line 128
    const/4 v1, 0x1

    .line 129
    aget-object v0, v0, v1

    .line 130
    .line 131
    invoke-virtual {p1, v0}, Lmiuix/preference/DropDownPreference;->c1([Ljava/lang/CharSequence;)V

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Lcom/android/calendar/settings/l;->z:Lmiuix/preference/DropDownPreference;

    .line 135
    .line 136
    invoke-virtual {p1}, Lmiuix/preference/DropDownPreference;->a1()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    if-nez p1, :cond_2

    .line 141
    .line 142
    iget-object p1, p0, Lcom/android/calendar/settings/l;->z:Lmiuix/preference/DropDownPreference;

    .line 143
    .line 144
    invoke-static {}, Lcom/miui/calendar/util/r0;->j()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {p1, v0}, Lmiuix/preference/DropDownPreference;->e1(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    :cond_2
    return-void
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

.method public q(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

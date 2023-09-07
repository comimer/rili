.class public Lcom/android/calendar/settings/c;
.super Lmiuix/preference/j;
.source "FeatureSettingsPreferenceFragment.java"

# interfaces
.implements Landroidx/preference/Preference$c;


# instance fields
.field D:Landroidx/preference/CheckBoxPreference;

.field E:Landroidx/preference/CheckBoxPreference;

.field F:Landroidx/preference/CheckBoxPreference;

.field G:Landroidx/preference/CheckBoxPreference;

.field y:Landroidx/preference/CheckBoxPreference;

.field z:Landroidx/preference/CheckBoxPreference;


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
    const-string v1, "key_import_todo"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->T0(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Landroidx/preference/CheckBoxPreference;

    .line 12
    .line 13
    iput-object v1, p0, Lcom/android/calendar/settings/c;->y:Landroidx/preference/CheckBoxPreference;

    .line 14
    .line 15
    const-string v1, "key_chinese_almanac_pref"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->T0(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/preference/CheckBoxPreference;

    .line 22
    .line 23
    iput-object v1, p0, Lcom/android/calendar/settings/c;->z:Landroidx/preference/CheckBoxPreference;

    .line 24
    .line 25
    const-string v1, "key_holiday_display"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->T0(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroidx/preference/CheckBoxPreference;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/android/calendar/settings/c;->D:Landroidx/preference/CheckBoxPreference;

    .line 34
    .line 35
    const-string v1, "key_weather_display"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->T0(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Landroidx/preference/CheckBoxPreference;

    .line 42
    .line 43
    iput-object v1, p0, Lcom/android/calendar/settings/c;->E:Landroidx/preference/CheckBoxPreference;

    .line 44
    .line 45
    const-string v1, "key_subscription_display"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->T0(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Landroidx/preference/CheckBoxPreference;

    .line 52
    .line 53
    iput-object v1, p0, Lcom/android/calendar/settings/c;->F:Landroidx/preference/CheckBoxPreference;

    .line 54
    .line 55
    const-string v1, "key_ai_time_parse"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->T0(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Landroidx/preference/CheckBoxPreference;

    .line 62
    .line 63
    iput-object v0, p0, Lcom/android/calendar/settings/c;->G:Landroidx/preference/CheckBoxPreference;

    .line 64
    .line 65
    iget-object v0, p0, Lcom/android/calendar/settings/c;->y:Landroidx/preference/CheckBoxPreference;

    .line 66
    .line 67
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->D0(Landroidx/preference/Preference$c;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/calendar/settings/c;->z:Landroidx/preference/CheckBoxPreference;

    .line 71
    .line 72
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->D0(Landroidx/preference/Preference$c;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/android/calendar/settings/c;->D:Landroidx/preference/CheckBoxPreference;

    .line 76
    .line 77
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->D0(Landroidx/preference/Preference$c;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/android/calendar/settings/c;->E:Landroidx/preference/CheckBoxPreference;

    .line 81
    .line 82
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->D0(Landroidx/preference/Preference$c;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/android/calendar/settings/c;->F:Landroidx/preference/CheckBoxPreference;

    .line 86
    .line 87
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->D0(Landroidx/preference/Preference$c;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/android/calendar/settings/c;->G:Landroidx/preference/CheckBoxPreference;

    .line 91
    .line 92
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->D0(Landroidx/preference/Preference$c;)V

    .line 93
    .line 94
    .line 95
    return-void
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

.method private K()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/preference/g;->m()Landroidx/preference/PreferenceScreen;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Lcom/miui/calendar/util/y;->i(Landroid/content/Context;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/calendar/settings/c;->E:Landroidx/preference/CheckBoxPreference;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->a1(Landroidx/preference/Preference;)Z

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/calendar/settings/c;->F:Landroidx/preference/CheckBoxPreference;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->a1(Landroidx/preference/Preference;)Z

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/calendar/settings/c;->G:Landroidx/preference/CheckBoxPreference;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->a1(Landroidx/preference/Preference;)Z

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v1}, Lo4/b;->d(Landroid/content/Context;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/calendar/settings/c;->y:Landroidx/preference/CheckBoxPreference;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->a1(Landroidx/preference/Preference;)Z

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v1}, Lcom/miui/calendar/util/y;->p(Landroid/content/Context;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_2

    .line 66
    .line 67
    iget-object v1, p0, Lcom/android/calendar/settings/c;->z:Landroidx/preference/CheckBoxPreference;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->a1(Landroidx/preference/Preference;)Z

    .line 70
    .line 71
    .line 72
    :cond_2
    invoke-static {}, Lcom/miui/calendar/util/y;->b()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_3

    .line 77
    .line 78
    invoke-static {}, Lcom/miui/calendar/util/DeviceUtils;->M()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_4

    .line 83
    .line 84
    :cond_3
    iget-object v1, p0, Lcom/android/calendar/settings/c;->F:Landroidx/preference/CheckBoxPreference;

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->a1(Landroidx/preference/Preference;)Z

    .line 87
    .line 88
    .line 89
    :cond_4
    invoke-static {}, Lcom/miui/calendar/util/DeviceUtils;->M()Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_5

    .line 94
    .line 95
    iget-object v1, p0, Lcom/android/calendar/settings/c;->D:Landroidx/preference/CheckBoxPreference;

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->a1(Landroidx/preference/Preference;)Z

    .line 98
    .line 99
    .line 100
    :cond_5
    return-void
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


# virtual methods
.method public c(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 1
    check-cast p2, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    iget-object v0, p0, Lcom/android/calendar/settings/c;->y:Landroidx/preference/CheckBoxPreference;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v0, "importTodo"

    .line 22
    .line 23
    invoke-static {p1, v2, v0, p2}, Lcom/android/calendar/settings/i;->c(Landroid/content/Context;Lcom/miui/calendar/job/StatJobService$b;Ljava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    return v1

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/settings/c;->D:Landroidx/preference/CheckBoxPreference;

    .line 28
    .line 29
    if-ne p1, v0, :cond_1

    .line 30
    .line 31
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string v0, "festival"

    .line 40
    .line 41
    invoke-static {p1, v2, v0, p2}, Lcom/android/calendar/settings/i;->c(Landroid/content/Context;Lcom/miui/calendar/job/StatJobService$b;Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    return v1

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/settings/c;->z:Landroidx/preference/CheckBoxPreference;

    .line 46
    .line 47
    if-ne p1, v0, :cond_2

    .line 48
    .line 49
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string v0, "almanac"

    .line 58
    .line 59
    invoke-static {p1, v2, v0, p2}, Lcom/android/calendar/settings/i;->c(Landroid/content/Context;Lcom/miui/calendar/job/StatJobService$b;Ljava/lang/String;Z)V

    .line 60
    .line 61
    .line 62
    return v1

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/settings/c;->E:Landroidx/preference/CheckBoxPreference;

    .line 64
    .line 65
    if-ne p1, v0, :cond_3

    .line 66
    .line 67
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const-string v0, "huangliWeather"

    .line 76
    .line 77
    invoke-static {p1, v2, v0, p2}, Lcom/android/calendar/settings/i;->c(Landroid/content/Context;Lcom/miui/calendar/job/StatJobService$b;Ljava/lang/String;Z)V

    .line 78
    .line 79
    .line 80
    return v1

    .line 81
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/settings/c;->F:Landroidx/preference/CheckBoxPreference;

    .line 82
    .line 83
    if-ne p1, v0, :cond_4

    .line 84
    .line 85
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const-string v0, "subscription"

    .line 94
    .line 95
    invoke-static {p1, v2, v0, p2}, Lcom/android/calendar/settings/i;->c(Landroid/content/Context;Lcom/miui/calendar/job/StatJobService$b;Ljava/lang/String;Z)V

    .line 96
    .line 97
    .line 98
    return v1

    .line 99
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/settings/c;->G:Landroidx/preference/CheckBoxPreference;

    .line 100
    .line 101
    if-ne p1, v0, :cond_5

    .line 102
    .line 103
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    const-string v0, "timeParse"

    .line 112
    .line 113
    invoke-static {p1, v2, v0, p2}, Lcom/android/calendar/settings/i;->c(Landroid/content/Context;Lcom/miui/calendar/job/StatJobService$b;Ljava/lang/String;Z)V

    .line 114
    .line 115
    .line 116
    return v1

    .line 117
    :cond_5
    const/4 p1, 0x0

    .line 118
    return p1
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
    const p1, 0x7f150010

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/preference/g;->i(I)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/android/calendar/settings/c;->J()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/android/calendar/settings/c;->K()V

    .line 14
    .line 15
    .line 16
    return-void
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

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

.method public q(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

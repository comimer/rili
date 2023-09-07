.class public Lcom/android/calendar/settings/PopupAlertSettingActivity$a;
.super Lmiuix/preference/j;
.source "PopupAlertSettingActivity.java"

# interfaces
.implements Landroidx/preference/Preference$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/settings/PopupAlertSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final F:[Ljava/lang/String;


# instance fields
.field private D:Landroid/app/Activity;

.field private E:Landroid/content/Context;

.field private y:[Lmiuix/preference/RadioButtonPreference;

.field private z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "popup_alert_none"

    .line 2
    .line 3
    const-string v1, "popup_alert_all"

    .line 4
    .line 5
    const-string v2, "popup_alert_smart"

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/android/calendar/settings/PopupAlertSettingActivity$a;->F:[Ljava/lang/String;

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
.method public d(Landroidx/preference/Preference;)Z
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onPreferenceClick:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/preference/Preference;->u()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "Cal:D:PopupAlertSettingActivity"

    .line 23
    .line 24
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/preference/Preference;->u()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object v0, p0, Lcom/android/calendar/settings/PopupAlertSettingActivity$a;->y:[Lmiuix/preference/RadioButtonPreference;

    .line 32
    .line 33
    array-length v0, v0

    .line 34
    const/4 v1, 0x0

    .line 35
    move v2, v1

    .line 36
    :goto_0
    const/4 v3, 0x1

    .line 37
    if-ge v2, v0, :cond_1

    .line 38
    .line 39
    iget-object v4, p0, Lcom/android/calendar/settings/PopupAlertSettingActivity$a;->y:[Lmiuix/preference/RadioButtonPreference;

    .line 40
    .line 41
    aget-object v4, v4, v2

    .line 42
    .line 43
    invoke-virtual {v4}, Landroidx/preference/Preference;->u()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_0

    .line 52
    .line 53
    iget-object v4, p0, Lcom/android/calendar/settings/PopupAlertSettingActivity$a;->E:Landroid/content/Context;

    .line 54
    .line 55
    iget-object v5, p0, Lcom/android/calendar/settings/PopupAlertSettingActivity$a;->z:[Ljava/lang/String;

    .line 56
    .line 57
    aget-object v5, v5, v2

    .line 58
    .line 59
    const-string v6, "preferences_popup_alert"

    .line 60
    .line 61
    invoke-static {v4, v6, v5}, Lb2/a;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v4, p0, Lcom/android/calendar/settings/PopupAlertSettingActivity$a;->y:[Lmiuix/preference/RadioButtonPreference;

    .line 65
    .line 66
    aget-object v4, v4, v2

    .line 67
    .line 68
    invoke-virtual {v4, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_0
    iget-object v3, p0, Lcom/android/calendar/settings/PopupAlertSettingActivity$a;->y:[Lmiuix/preference/RadioButtonPreference;

    .line 73
    .line 74
    aget-object v3, v3, v2

    .line 75
    .line 76
    invoke-virtual {v3, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 77
    .line 78
    .line 79
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    return v3
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

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 3
    iput-object p1, p0, Lcom/android/calendar/settings/PopupAlertSettingActivity$a;->D:Landroid/app/Activity;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/calendar/settings/PopupAlertSettingActivity$a;->E:Landroid/content/Context;

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmiuix/preference/j;->onCreate(Landroid/os/Bundle;)V

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

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x102002c

    .line 6
    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/settings/PopupAlertSettingActivity$a;->D:Landroid/app/Activity;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method public q(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    .line 1
    const p1, 0x7f15000b

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroidx/preference/g;->i(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const p2, 0x7f03003a

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    const v0, 0x7f03003d

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    iput-object p2, p0, Lcom/android/calendar/settings/PopupAlertSettingActivity$a;->z:[Ljava/lang/String;

    .line 30
    .line 31
    iget-object p2, p0, Lcom/android/calendar/settings/PopupAlertSettingActivity$a;->E:Landroid/content/Context;

    .line 32
    .line 33
    const-string v0, "preferences_popup_alert"

    .line 34
    .line 35
    const-string v1, ""

    .line 36
    .line 37
    invoke-static {p2, v0, v1}, Lb2/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    const/4 v0, 0x3

    .line 42
    new-array v0, v0, [Lmiuix/preference/RadioButtonPreference;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/calendar/settings/PopupAlertSettingActivity$a;->y:[Lmiuix/preference/RadioButtonPreference;

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/settings/PopupAlertSettingActivity$a;->y:[Lmiuix/preference/RadioButtonPreference;

    .line 48
    .line 49
    array-length v2, v1

    .line 50
    if-ge v0, v2, :cond_1

    .line 51
    .line 52
    sget-object v2, Lcom/android/calendar/settings/PopupAlertSettingActivity$a;->F:[Ljava/lang/String;

    .line 53
    .line 54
    aget-object v2, v2, v0

    .line 55
    .line 56
    invoke-virtual {p0, v2}, Landroidx/preference/g;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Lmiuix/preference/RadioButtonPreference;

    .line 61
    .line 62
    aput-object v2, v1, v0

    .line 63
    .line 64
    iget-object v1, p0, Lcom/android/calendar/settings/PopupAlertSettingActivity$a;->y:[Lmiuix/preference/RadioButtonPreference;

    .line 65
    .line 66
    aget-object v1, v1, v0

    .line 67
    .line 68
    if-eqz v1, :cond_0

    .line 69
    .line 70
    aget-object v2, p1, v0

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->K0(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lcom/android/calendar/settings/PopupAlertSettingActivity$a;->y:[Lmiuix/preference/RadioButtonPreference;

    .line 76
    .line 77
    aget-object v1, v1, v0

    .line 78
    .line 79
    iget-object v2, p0, Lcom/android/calendar/settings/PopupAlertSettingActivity$a;->z:[Ljava/lang/String;

    .line 80
    .line 81
    aget-object v2, v2, v0

    .line 82
    .line 83
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lcom/android/calendar/settings/PopupAlertSettingActivity$a;->y:[Lmiuix/preference/RadioButtonPreference;

    .line 91
    .line 92
    aget-object v1, v1, v0

    .line 93
    .line 94
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->E0(Landroidx/preference/Preference$d;)V

    .line 95
    .line 96
    .line 97
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    const/4 p1, 0x2

    .line 101
    aget-object p1, v1, p1

    .line 102
    .line 103
    const p2, 0x7f1204bf

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->G0(I)V

    .line 107
    .line 108
    .line 109
    return-void
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

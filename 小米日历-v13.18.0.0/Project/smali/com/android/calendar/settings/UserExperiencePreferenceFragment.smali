.class public Lcom/android/calendar/settings/UserExperiencePreferenceFragment;
.super Lmiuix/preference/j;
.source "UserExperiencePreferenceFragment.java"

# interfaces
.implements Landroidx/preference/Preference$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/settings/UserExperiencePreferenceFragment$ContentPromotionConfig;
    }
.end annotation


# instance fields
.field private D:Landroid/content/Context;

.field private E:Lcom/android/calendar/settings/UserExperiencePreferenceFragment$ContentPromotionConfig;

.field private y:Landroidx/preference/PreferenceGroup;

.field private z:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lmiuix/preference/j;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/calendar/settings/UserExperiencePreferenceFragment$ContentPromotionConfig;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/calendar/settings/UserExperiencePreferenceFragment$ContentPromotionConfig;-><init>(Lcom/android/calendar/settings/UserExperiencePreferenceFragment;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/calendar/settings/UserExperiencePreferenceFragment;->E:Lcom/android/calendar/settings/UserExperiencePreferenceFragment$ContentPromotionConfig;

    .line 10
    .line 11
    return-void
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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/calendar/settings/UserExperiencePreferenceFragment;->E:Lcom/android/calendar/settings/UserExperiencePreferenceFragment$ContentPromotionConfig;

    .line 2
    .line 3
    iget v0, v0, Lcom/android/calendar/settings/UserExperiencePreferenceFragment$ContentPromotionConfig;->show:I

    .line 4
    .line 5
    const-string v1, "key_content_promotion"

    .line 6
    .line 7
    if-lez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/calendar/settings/UserExperiencePreferenceFragment;->y:Landroidx/preference/PreferenceGroup;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->T0(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/calendar/settings/UserExperiencePreferenceFragment;->y:Landroidx/preference/PreferenceGroup;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/calendar/settings/UserExperiencePreferenceFragment;->z:Landroidx/preference/Preference;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->S0(Landroidx/preference/Preference;)Z

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/calendar/settings/UserExperiencePreferenceFragment;->E:Lcom/android/calendar/settings/UserExperiencePreferenceFragment$ContentPromotionConfig;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/android/calendar/settings/UserExperiencePreferenceFragment$ContentPromotionConfig;->title:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/calendar/settings/UserExperiencePreferenceFragment;->z:Landroidx/preference/Preference;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/calendar/settings/UserExperiencePreferenceFragment;->E:Lcom/android/calendar/settings/UserExperiencePreferenceFragment$ContentPromotionConfig;

    .line 37
    .line 38
    iget-object v1, v1, Lcom/android/calendar/settings/UserExperiencePreferenceFragment$ContentPromotionConfig;->title:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->K0(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/settings/UserExperiencePreferenceFragment;->z:Landroidx/preference/Preference;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/android/calendar/settings/UserExperiencePreferenceFragment;->D:Landroid/content/Context;

    .line 47
    .line 48
    const v2, 0x7f120543

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->K0(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/settings/UserExperiencePreferenceFragment;->E:Lcom/android/calendar/settings/UserExperiencePreferenceFragment$ContentPromotionConfig;

    .line 60
    .line 61
    iget v0, v0, Lcom/android/calendar/settings/UserExperiencePreferenceFragment$ContentPromotionConfig;->show:I

    .line 62
    .line 63
    if-gtz v0, :cond_2

    .line 64
    .line 65
    iget-object v0, p0, Lcom/android/calendar/settings/UserExperiencePreferenceFragment;->y:Landroidx/preference/PreferenceGroup;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->T0(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    iget-object v0, p0, Lcom/android/calendar/settings/UserExperiencePreferenceFragment;->y:Landroidx/preference/PreferenceGroup;

    .line 74
    .line 75
    iget-object v1, p0, Lcom/android/calendar/settings/UserExperiencePreferenceFragment;->z:Landroidx/preference/Preference;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->a1(Landroidx/preference/Preference;)Z

    .line 78
    .line 79
    .line 80
    :cond_2
    :goto_0
    return-void
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
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lmiuix/preference/j;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/android/calendar/settings/UserExperiencePreferenceFragment;->D:Landroid/content/Context;

    .line 9
    .line 10
    const p1, 0x7f150021

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/preference/g;->i(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroidx/preference/g;->i(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/preference/g;->m()Landroidx/preference/PreferenceScreen;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "category_user_experience"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->T0(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroidx/preference/PreferenceGroup;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/calendar/settings/UserExperiencePreferenceFragment;->y:Landroidx/preference/PreferenceGroup;

    .line 32
    .line 33
    const-string v0, "key_content_promotion"

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->T0(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/android/calendar/settings/UserExperiencePreferenceFragment;->z:Landroidx/preference/Preference;

    .line 40
    .line 41
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->D0(Landroidx/preference/Preference$c;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lcom/android/calendar/settings/UserExperiencePreferenceFragment;->J()V

    .line 45
    .line 46
    .line 47
    return-void
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

.method public q(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.class public Lcom/miui/calendar/repeats/RepeatActivity$a;
.super Lmiuix/preference/j;
.source "RepeatActivity.java"

# interfaces
.implements Landroidx/preference/Preference$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/calendar/repeats/RepeatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static K:Ljava/lang/String; = "Cal:D:RepeatPreferenceFragment"


# instance fields
.field private D:I

.field private E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private G:[Lmiuix/preference/RadioButtonPreference;

.field private H:[Ljava/lang/String;

.field private I:Lcom/miui/calendar/repeats/RepeatSchema;

.field private J:Landroid/os/Bundle;

.field private y:Lcom/miui/calendar/util/r0;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lmiuix/preference/j;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/miui/calendar/repeats/RepeatActivity$a;->E:Ljava/util/List;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/miui/calendar/repeats/RepeatActivity$a;->F:Ljava/util/List;

    .line 18
    .line 19
    invoke-static {}, Lpc/c;->c()Lpc/c;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p0}, Lpc/c;->o(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
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
.end method

.method static synthetic J()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/calendar/repeats/RepeatActivity$a;->K:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
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

.method private K()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/miui/calendar/repeats/RepeatActivity$a;->z:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/preference/g;->m()Landroidx/preference/PreferenceScreen;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "repeat_workday"

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroidx/preference/g;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->a1(Landroidx/preference/Preference;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/miui/calendar/repeats/RepeatActivity$a;->E:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    new-array v1, v0, [Lmiuix/preference/RadioButtonPreference;

    .line 25
    .line 26
    iput-object v1, p0, Lcom/miui/calendar/repeats/RepeatActivity$a;->G:[Lmiuix/preference/RadioButtonPreference;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    move v2, v1

    .line 30
    :goto_0
    if-ge v2, v0, :cond_3

    .line 31
    .line 32
    iget-object v3, p0, Lcom/miui/calendar/repeats/RepeatActivity$a;->G:[Lmiuix/preference/RadioButtonPreference;

    .line 33
    .line 34
    iget-object v4, p0, Lcom/miui/calendar/repeats/RepeatActivity$a;->H:[Ljava/lang/String;

    .line 35
    .line 36
    aget-object v4, v4, v2

    .line 37
    .line 38
    invoke-virtual {p0, v4}, Landroidx/preference/g;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Lmiuix/preference/RadioButtonPreference;

    .line 43
    .line 44
    aput-object v4, v3, v2

    .line 45
    .line 46
    iget-object v3, p0, Lcom/miui/calendar/repeats/RepeatActivity$a;->G:[Lmiuix/preference/RadioButtonPreference;

    .line 47
    .line 48
    aget-object v3, v3, v2

    .line 49
    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->E0(Landroidx/preference/Preference$d;)V

    .line 53
    .line 54
    .line 55
    iget-object v3, p0, Lcom/miui/calendar/repeats/RepeatActivity$a;->G:[Lmiuix/preference/RadioButtonPreference;

    .line 56
    .line 57
    aget-object v3, v3, v2

    .line 58
    .line 59
    iget-object v4, p0, Lcom/miui/calendar/repeats/RepeatActivity$a;->E:Ljava/util/List;

    .line 60
    .line 61
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Ljava/lang/CharSequence;

    .line 66
    .line 67
    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->K0(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    iget-object v3, p0, Lcom/miui/calendar/repeats/RepeatActivity$a;->G:[Lmiuix/preference/RadioButtonPreference;

    .line 71
    .line 72
    aget-object v3, v3, v2

    .line 73
    .line 74
    iget v4, p0, Lcom/miui/calendar/repeats/RepeatActivity$a;->D:I

    .line 75
    .line 76
    if-ne v4, v2, :cond_1

    .line 77
    .line 78
    const/4 v4, 0x1

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    move v4, v1

    .line 81
    :goto_1
    invoke-virtual {v3, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 82
    .line 83
    .line 84
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    return-void
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

.method public static L()Lcom/miui/calendar/repeats/RepeatActivity$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/miui/calendar/repeats/RepeatActivity$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/miui/calendar/repeats/RepeatActivity$a;-><init>()V

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

.method private M()V
    .locals 4

    .line 1
    new-instance v0, Lcom/miui/calendar/util/r0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/miui/calendar/util/r0;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/miui/calendar/repeats/RepeatActivity$a;->y:Lcom/miui/calendar/util/r0;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/miui/calendar/repeats/RepeatActivity$a;->J:Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    const-string v3, "extra_event_time"

    .line 15
    .line 16
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    iget-object v2, p0, Lcom/miui/calendar/repeats/RepeatActivity$a;->J:Landroid/os/Bundle;

    .line 21
    .line 22
    const-string v3, "extra_repeat_time_zone"

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_0

    .line 33
    .line 34
    iget-object v3, p0, Lcom/miui/calendar/repeats/RepeatActivity$a;->y:Lcom/miui/calendar/util/r0;

    .line 35
    .line 36
    invoke-virtual {v3, v2}, Lcom/miui/calendar/util/r0;->L(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object v2, p0, Lcom/miui/calendar/repeats/RepeatActivity$a;->y:Lcom/miui/calendar/util/r0;

    .line 40
    .line 41
    invoke-virtual {v2, v0, v1}, Lcom/miui/calendar/util/r0;->D(J)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/miui/calendar/repeats/RepeatActivity$a;->y:Lcom/miui/calendar/util/r0;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/miui/calendar/repeats/b;->i(Lcom/miui/calendar/util/r0;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iput-boolean v0, p0, Lcom/miui/calendar/repeats/RepeatActivity$a;->z:Z

    .line 51
    .line 52
    iget-object v0, p0, Lcom/miui/calendar/repeats/RepeatActivity$a;->J:Landroid/os/Bundle;

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    const-string v2, "extra_repeat_selection"

    .line 56
    .line 57
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    iput v0, p0, Lcom/miui/calendar/repeats/RepeatActivity$a;->D:I

    .line 62
    .line 63
    iget-boolean v0, p0, Lcom/miui/calendar/repeats/RepeatActivity$a;->z:Z

    .line 64
    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    invoke-static {}, Lcom/miui/calendar/repeats/RepeatActivity;->Y()[Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    invoke-static {}, Lcom/miui/calendar/repeats/RepeatActivity;->Z()[Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    :goto_0
    iput-object v0, p0, Lcom/miui/calendar/repeats/RepeatActivity$a;->H:[Ljava/lang/String;

    .line 77
    .line 78
    iget-object v0, p0, Lcom/miui/calendar/repeats/RepeatActivity$a;->J:Landroid/os/Bundle;

    .line 79
    .line 80
    const-string v1, "extra_custom_repeat_json"

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    sget-object v1, Lcom/miui/calendar/repeats/RepeatActivity$a;->K:Ljava/lang/String;

    .line 87
    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v3, "parseIntent(): customRepeatJson:"

    .line 94
    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-static {v1, v2}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-nez v1, :cond_2

    .line 113
    .line 114
    invoke-static {v0}, Lcom/miui/calendar/repeats/RepeatSchema;->fromJsonString(Ljava/lang/String;)Lcom/miui/calendar/repeats/RepeatSchema;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    iput-object v0, p0, Lcom/miui/calendar/repeats/RepeatActivity$a;->I:Lcom/miui/calendar/repeats/RepeatSchema;

    .line 119
    .line 120
    :cond_2
    return-void
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

.method private N()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/repeats/RepeatActivity$a;->G:[Lmiuix/preference/RadioButtonPreference;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/miui/calendar/repeats/RepeatActivity$a;->H:[Ljava/lang/String;

    .line 4
    .line 5
    array-length v1, v1

    .line 6
    add-int/lit8 v1, v1, -0x1

    .line 7
    .line 8
    aget-object v0, v0, v1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/miui/calendar/repeats/RepeatActivity$a;->I:Lcom/miui/calendar/repeats/RepeatSchema;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/miui/calendar/repeats/RepeatActivity$a;->I:Lcom/miui/calendar/repeats/RepeatSchema;

    .line 19
    .line 20
    iget-object v3, p0, Lcom/miui/calendar/repeats/RepeatActivity$a;->y:Lcom/miui/calendar/util/r0;

    .line 21
    .line 22
    invoke-static {v1, v2, v3}, Lcom/miui/calendar/repeats/b;->c(Landroid/content/Context;Lcom/miui/calendar/repeats/RepeatSchema;Lcom/miui/calendar/util/r0;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->H0(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->H0(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
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


# virtual methods
.method public d(Landroidx/preference/Preference;)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/miui/calendar/repeats/RepeatActivity$a;->K:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onPreferenceClick:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/preference/Preference;->u()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/preference/Preference;->u()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object v0, p0, Lcom/miui/calendar/repeats/RepeatActivity$a;->E:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v1, 0x0

    .line 38
    move v2, v1

    .line 39
    :goto_0
    const/4 v3, 0x1

    .line 40
    if-ge v2, v0, :cond_1

    .line 41
    .line 42
    iget-object v4, p0, Lcom/miui/calendar/repeats/RepeatActivity$a;->G:[Lmiuix/preference/RadioButtonPreference;

    .line 43
    .line 44
    aget-object v4, v4, v2

    .line 45
    .line 46
    invoke-virtual {v4}, Landroidx/preference/Preference;->u()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_0

    .line 55
    .line 56
    iput v2, p0, Lcom/miui/calendar/repeats/RepeatActivity$a;->D:I

    .line 57
    .line 58
    iget-object v4, p0, Lcom/miui/calendar/repeats/RepeatActivity$a;->G:[Lmiuix/preference/RadioButtonPreference;

    .line 59
    .line 60
    aget-object v4, v4, v2

    .line 61
    .line 62
    invoke-virtual {v4, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_0
    iget-object v3, p0, Lcom/miui/calendar/repeats/RepeatActivity$a;->G:[Lmiuix/preference/RadioButtonPreference;

    .line 67
    .line 68
    aget-object v3, v3, v2

    .line 69
    .line 70
    invoke-virtual {v3, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 71
    .line 72
    .line 73
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    const-string v0, "repeat_custom"

    .line 77
    .line 78
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_2

    .line 83
    .line 84
    new-instance p1, Landroid/content/Intent;

    .line 85
    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const-class v1, Lcom/miui/calendar/repeats/CustomRepeatActivity;

    .line 91
    .line 92
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/miui/calendar/repeats/RepeatActivity$a;->y:Lcom/miui/calendar/util/r0;

    .line 96
    .line 97
    invoke-virtual {v0, v3}, Lcom/miui/calendar/util/r0;->P(Z)J

    .line 98
    .line 99
    .line 100
    move-result-wide v0

    .line 101
    const-string v2, "extra_event_time"

    .line 102
    .line 103
    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/miui/calendar/repeats/RepeatActivity$a;->I:Lcom/miui/calendar/repeats/RepeatSchema;

    .line 107
    .line 108
    invoke-static {v0}, Lcom/miui/calendar/repeats/RepeatSchema;->toJsonString(Lcom/miui/calendar/repeats/RepeatSchema;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    const-string v1, "extra_custom_repeat_json"

    .line 113
    .line 114
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 118
    .line 119
    .line 120
    :cond_2
    return v3
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

.method public onDestroy()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/miui/calendar/repeats/RepeatActivity$a;->D:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/miui/calendar/repeats/RepeatActivity$a;->I:Lcom/miui/calendar/repeats/RepeatSchema;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/util/g$v;->i(ILcom/miui/calendar/repeats/RepeatSchema;)Lcom/miui/calendar/util/g$j;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/miui/calendar/util/g;->c(Lcom/miui/calendar/util/g$j;)V

    .line 10
    .line 11
    .line 12
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lpc/c;->c()Lpc/c;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p0}, Lpc/c;->q(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onEventMainThread(Lcom/miui/calendar/util/g$n0;)V
    .locals 1
    .annotation runtime Lpc/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    sget-object v0, Lcom/miui/calendar/repeats/RepeatActivity$a;->K:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/miui/calendar/util/g;->b(Lcom/miui/calendar/util/g$j;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Lcom/miui/calendar/util/g$n0;->a:Lcom/miui/calendar/repeats/RepeatSchema;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/miui/calendar/repeats/RepeatActivity$a;->I:Lcom/miui/calendar/repeats/RepeatSchema;

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/miui/calendar/repeats/RepeatActivity$a;->N()V

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

.method public q(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    .line 1
    const p1, 0x7f150018

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2}, Landroidx/preference/g;->y(ILjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/miui/calendar/repeats/RepeatActivity$a;->J:Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/miui/calendar/repeats/RepeatActivity$a;->M()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-object p2, p1

    .line 24
    check-cast p2, Landroid/content/Context;

    .line 25
    .line 26
    iget-object p2, p0, Lcom/miui/calendar/repeats/RepeatActivity$a;->y:Lcom/miui/calendar/util/r0;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/miui/calendar/repeats/RepeatActivity$a;->E:Ljava/util/List;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/miui/calendar/repeats/RepeatActivity$a;->F:Ljava/util/List;

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    invoke-static {p1, p2, v0, v1, v2}, Lcom/miui/calendar/repeats/b;->m(Landroid/content/Context;Lcom/miui/calendar/util/r0;Ljava/util/List;Ljava/util/List;Z)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/miui/calendar/repeats/RepeatActivity$a;->K()V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/miui/calendar/repeats/RepeatActivity$a;->N()V

    .line 40
    .line 41
    .line 42
    return-void
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

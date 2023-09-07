.class public Lcom/android/calendar/event/NewEditReminderActivity$a;
.super Lmiuix/preference/j;
.source "NewEditReminderActivity.java"

# interfaces
.implements Landroidx/preference/Preference$d;
.implements Landroidx/preference/Preference$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/NewEditReminderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static O:Ljava/lang/String; = "Cal:D:EditReminderPreferenceFragment"


# instance fields
.field private D:Landroidx/preference/CheckBoxPreference;

.field private E:Landroidx/preference/Preference;

.field private F:Lh4/g;

.field private G:Lh4/a;

.field private H:I

.field private I:I

.field private J:Z

.field private K:Z

.field private L:I

.field private M:J

.field private N:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/calendar/common/event/schema/Reminder;",
            ">;"
        }
    .end annotation
.end field

.field private y:Landroidx/preference/PreferenceGroup;

.field private z:Landroidx/preference/PreferenceGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lmiuix/preference/j;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->N:Ljava/util/ArrayList;

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

.method static synthetic J()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/calendar/event/NewEditReminderActivity$a;->O:Ljava/lang/String;

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

.method static synthetic K(Lcom/android/calendar/event/NewEditReminderActivity$a;)Lh4/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->F:Lh4/g;

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

.method static synthetic L(Lcom/android/calendar/event/NewEditReminderActivity$a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->I:I

    .line 2
    .line 3
    return p1
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

.method static synthetic M(Lcom/android/calendar/event/NewEditReminderActivity$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->H:I

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

.method static synthetic N(Lcom/android/calendar/event/NewEditReminderActivity$a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->H:I

    .line 2
    .line 3
    return p1
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

.method static synthetic O(Lcom/android/calendar/event/NewEditReminderActivity$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/event/NewEditReminderActivity$a;->Z()V

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

.method static synthetic P(Lcom/android/calendar/event/NewEditReminderActivity$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/event/NewEditReminderActivity$a;->b0()V

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

.method static synthetic Q(Lcom/android/calendar/event/NewEditReminderActivity$a;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/calendar/event/NewEditReminderActivity$a;->R(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
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

.method private R(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->N:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/calendar/common/event/schema/Reminder;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Reminder;->getMinutes()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget v2, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->H:I

    .line 24
    .line 25
    sub-int v2, p1, v2

    .line 26
    .line 27
    if-ne v1, v2, :cond_0

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    return p1

    .line 31
    :cond_1
    invoke-direct {p0}, Lcom/android/calendar/event/NewEditReminderActivity$a;->W()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-direct {p0}, Lcom/android/calendar/event/NewEditReminderActivity$a;->S()V

    .line 38
    .line 39
    .line 40
    :cond_2
    iget v0, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->H:I

    .line 41
    .line 42
    sub-int/2addr p1, v0

    .line 43
    const/4 v0, 0x1

    .line 44
    invoke-static {p1, v0}, Lcom/android/calendar/common/event/schema/Reminder;->valueOf(II)Lcom/android/calendar/common/event/schema/Reminder;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1, v0}, Lcom/android/calendar/common/event/schema/Reminder;->setSelected(Z)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->N:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    new-instance p1, Lmiuix/preference/RadioButtonPreference;

    .line 57
    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    check-cast v1, Landroid/content/Context;

    .line 66
    .line 67
    invoke-direct {p1, v1}, Lmiuix/preference/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 68
    .line 69
    .line 70
    const v1, 0x7f0d0160

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->B0(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->D0(Landroidx/preference/Preference$c;)V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->N:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    sub-int/2addr v1, v0

    .line 86
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->A0(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->N:Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->F0(I)V

    .line 100
    .line 101
    .line 102
    iget-object v1, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->y:Landroidx/preference/PreferenceGroup;

    .line 103
    .line 104
    invoke-virtual {v1, p1}, Landroidx/preference/PreferenceGroup;->S0(Landroidx/preference/Preference;)Z

    .line 105
    .line 106
    .line 107
    invoke-direct {p0}, Lcom/android/calendar/event/NewEditReminderActivity$a;->b0()V

    .line 108
    .line 109
    .line 110
    return v0
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

.method private S()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->N:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/calendar/common/event/schema/Reminder;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v1, v2}, Lcom/android/calendar/common/event/schema/Reminder;->setSelected(Z)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
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
.end method

.method private T()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->N:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/android/calendar/common/event/schema/Reminder;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/Reminder;->getSelected()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return v1
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

.method private U()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_b

    .line 6
    .line 7
    const-string v1, "extra_max_reminders"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iput v1, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->L:I

    .line 15
    .line 16
    const-string v1, "extra_allday"

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iput-boolean v1, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->J:Z

    .line 23
    .line 24
    const-wide/16 v3, -0x1

    .line 25
    .line 26
    const-string v1, "extra_event_id"

    .line 27
    .line 28
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    iput-wide v3, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->M:J

    .line 33
    .line 34
    const-string v1, "extra_reminders"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    sget-object v3, Lcom/android/calendar/event/NewEditReminderActivity$a;->O:Ljava/lang/String;

    .line 41
    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v5, "init(): reminders:"

    .line 48
    .line 49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v5, ", all day:"

    .line 56
    .line 57
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-boolean v5, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->J:Z

    .line 61
    .line 62
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v5, ", max reminders:"

    .line 66
    .line 67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget v5, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->L:I

    .line 71
    .line 72
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-static {v3, v4}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-boolean v3, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->J:Z

    .line 83
    .line 84
    if-nez v3, :cond_0

    .line 85
    .line 86
    invoke-virtual {p0}, Landroidx/preference/g;->m()Landroidx/preference/PreferenceScreen;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iget-object v3, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->z:Landroidx/preference/PreferenceGroup;

    .line 91
    .line 92
    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->a1(Landroidx/preference/Preference;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_0
    const-string v3, "extra_allday_reminder_minute"

    .line 97
    .line 98
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-eqz v4, :cond_1

    .line 103
    .line 104
    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    iput v0, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->H:I

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_1
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    const/16 v3, 0x1e0

    .line 116
    .line 117
    const-string v4, "preferences_default_allday_reminder_minute"

    .line 118
    .line 119
    invoke-static {v0, v4, v3}, Lb2/a;->a(Landroid/content/Context;Ljava/lang/String;I)I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    iput v0, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->H:I

    .line 124
    .line 125
    :goto_0
    iget v0, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->H:I

    .line 126
    .line 127
    iput v0, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->I:I

    .line 128
    .line 129
    iget-object v0, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->E:Landroidx/preference/Preference;

    .line 130
    .line 131
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    iget v4, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->H:I

    .line 136
    .line 137
    invoke-static {v3, v4}, Lcom/miui/calendar/util/s0;->n(Landroid/content/Context;I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->H0(Ljava/lang/CharSequence;)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->E:Landroidx/preference/Preference;

    .line 145
    .line 146
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->E0(Landroidx/preference/Preference$d;)V

    .line 147
    .line 148
    .line 149
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    iget-boolean v3, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->J:Z

    .line 154
    .line 155
    if-eqz v3, :cond_2

    .line 156
    .line 157
    const v3, 0x7f030009

    .line 158
    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_2
    const v3, 0x7f030043

    .line 162
    .line 163
    .line 164
    :goto_2
    invoke-static {v0, v3}, Lcom/android/calendar/common/Utils;->P0(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    move v3, v2

    .line 169
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    const/4 v5, 0x1

    .line 174
    if-ge v3, v4, :cond_3

    .line 175
    .line 176
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    check-cast v4, Ljava/lang/Integer;

    .line 181
    .line 182
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    iget v6, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->H:I

    .line 187
    .line 188
    sub-int/2addr v4, v6

    .line 189
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    invoke-virtual {v0, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    check-cast v4, Ljava/lang/Integer;

    .line 201
    .line 202
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    invoke-static {v4, v5}, Lcom/android/calendar/common/event/schema/Reminder;->valueOf(II)Lcom/android/calendar/common/event/schema/Reminder;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    invoke-virtual {v4, v2}, Lcom/android/calendar/common/event/schema/Reminder;->setSelected(Z)V

    .line 211
    .line 212
    .line 213
    iget-object v5, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->N:Ljava/util/ArrayList;

    .line 214
    .line 215
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    add-int/lit8 v3, v3, 0x1

    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_3
    if-eqz v1, :cond_8

    .line 222
    .line 223
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 224
    .line 225
    .line 226
    move-result v3

    .line 227
    if-eqz v3, :cond_4

    .line 228
    .line 229
    goto :goto_6

    .line 230
    :cond_4
    iget-object v3, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->D:Landroidx/preference/CheckBoxPreference;

    .line 231
    .line 232
    invoke-virtual {v3, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 233
    .line 234
    .line 235
    iput-boolean v2, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->K:Z

    .line 236
    .line 237
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    sub-int/2addr v3, v5

    .line 242
    :goto_4
    if-ltz v3, :cond_9

    .line 243
    .line 244
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v4

    .line 248
    check-cast v4, Ljava/lang/Integer;

    .line 249
    .line 250
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 251
    .line 252
    .line 253
    move-result v4

    .line 254
    sget-object v6, Lcom/android/calendar/event/NewEditReminderActivity$a;->O:Ljava/lang/String;

    .line 255
    .line 256
    new-instance v7, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .line 260
    .line 261
    const-string v8, "minute: "

    .line 262
    .line 263
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    const-string v8, ", reminderMinutes:"

    .line 270
    .line 271
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v7

    .line 281
    invoke-static {v6, v7}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 285
    .line 286
    .line 287
    move-result-object v6

    .line 288
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v6

    .line 292
    if-eqz v6, :cond_6

    .line 293
    .line 294
    iget-object v6, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->N:Ljava/util/ArrayList;

    .line 295
    .line 296
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 297
    .line 298
    .line 299
    move-result-object v6

    .line 300
    :cond_5
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 301
    .line 302
    .line 303
    move-result v7

    .line 304
    if-eqz v7, :cond_7

    .line 305
    .line 306
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v7

    .line 310
    check-cast v7, Lcom/android/calendar/common/event/schema/Reminder;

    .line 311
    .line 312
    invoke-virtual {v7}, Lcom/android/calendar/common/event/schema/Reminder;->getMinutes()I

    .line 313
    .line 314
    .line 315
    move-result v8

    .line 316
    if-ne v8, v4, :cond_5

    .line 317
    .line 318
    invoke-virtual {v7, v5}, Lcom/android/calendar/common/event/schema/Reminder;->setSelected(Z)V

    .line 319
    .line 320
    .line 321
    goto :goto_5

    .line 322
    :cond_6
    invoke-static {v4, v5}, Lcom/android/calendar/common/event/schema/Reminder;->valueOf(II)Lcom/android/calendar/common/event/schema/Reminder;

    .line 323
    .line 324
    .line 325
    move-result-object v4

    .line 326
    invoke-virtual {v4, v5}, Lcom/android/calendar/common/event/schema/Reminder;->setSelected(Z)V

    .line 327
    .line 328
    .line 329
    iget-object v6, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->N:Ljava/util/ArrayList;

    .line 330
    .line 331
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    :cond_7
    add-int/lit8 v3, v3, -0x1

    .line 335
    .line 336
    goto :goto_4

    .line 337
    :cond_8
    :goto_6
    iget-object v0, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->D:Landroidx/preference/CheckBoxPreference;

    .line 338
    .line 339
    invoke-virtual {v0, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 340
    .line 341
    .line 342
    iput-boolean v5, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->K:Z

    .line 343
    .line 344
    :cond_9
    :goto_7
    iget-object v0, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->N:Ljava/util/ArrayList;

    .line 345
    .line 346
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    if-ge v2, v0, :cond_a

    .line 351
    .line 352
    new-instance v0, Lmiuix/preference/RadioButtonPreference;

    .line 353
    .line 354
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    check-cast v1, Landroid/content/Context;

    .line 362
    .line 363
    invoke-direct {v0, v1}, Lmiuix/preference/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 364
    .line 365
    .line 366
    const v1, 0x7f0d0160

    .line 367
    .line 368
    .line 369
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->B0(I)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->D0(Landroidx/preference/Preference$c;)V

    .line 373
    .line 374
    .line 375
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->A0(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    add-int/lit8 v2, v2, 0x1

    .line 383
    .line 384
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->F0(I)V

    .line 385
    .line 386
    .line 387
    iget-object v1, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->y:Landroidx/preference/PreferenceGroup;

    .line 388
    .line 389
    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->S0(Landroidx/preference/Preference;)Z

    .line 390
    .line 391
    .line 392
    goto :goto_7

    .line 393
    :cond_a
    new-instance v0, Landroidx/preference/Preference;

    .line 394
    .line 395
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    check-cast v1, Landroid/content/Context;

    .line 403
    .line 404
    invoke-direct {v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 405
    .line 406
    .line 407
    const-string v1, "preference_custom_reminder_time"

    .line 408
    .line 409
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->A0(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    const v1, 0x7f0d01fa

    .line 413
    .line 414
    .line 415
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->B0(I)V

    .line 416
    .line 417
    .line 418
    const v1, 0x7f1201dd

    .line 419
    .line 420
    .line 421
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->J0(I)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->E0(Landroidx/preference/Preference$d;)V

    .line 425
    .line 426
    .line 427
    const v1, 0x7ffffffe

    .line 428
    .line 429
    .line 430
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->F0(I)V

    .line 431
    .line 432
    .line 433
    iget-object v1, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->y:Landroidx/preference/PreferenceGroup;

    .line 434
    .line 435
    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->S0(Landroidx/preference/Preference;)Z

    .line 436
    .line 437
    .line 438
    :cond_b
    return-void
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
.end method

.method public static V()Lcom/android/calendar/event/NewEditReminderActivity$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/calendar/event/NewEditReminderActivity$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/calendar/event/NewEditReminderActivity$a;-><init>()V

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

.method private W()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->L:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    return v1
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

.method private X()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->F:Lh4/g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/app/l;->dismiss()V

    .line 6
    .line 7
    .line 8
    :cond_0
    new-instance v0, Lh4/g;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    check-cast v1, Landroid/content/Context;

    .line 18
    .line 19
    new-instance v2, Lcom/android/calendar/event/NewEditReminderActivity$a$a;

    .line 20
    .line 21
    invoke-direct {v2, p0}, Lcom/android/calendar/event/NewEditReminderActivity$a$a;-><init>(Lcom/android/calendar/event/NewEditReminderActivity$a;)V

    .line 22
    .line 23
    .line 24
    iget v3, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->H:I

    .line 25
    .line 26
    invoke-direct {v0, v1, v2, v3}, Lh4/g;-><init>(Landroid/content/Context;Lh4/g$c;I)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->F:Lh4/g;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const v2, 0x7f1204a2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lh4/g;->setTitle(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->F:Lh4/g;

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/l;->setCanceledOnTouchOutside(Z)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->F:Lh4/g;

    .line 52
    .line 53
    invoke-virtual {v0}, Lh4/g;->show()V

    .line 54
    .line 55
    .line 56
    return-void
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

.method private Y()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/calendar/event/NewEditReminderActivity$a;->G:Lh4/a;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Lmiuix/appcompat/app/l;->dismiss()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-boolean v1, v0, Lcom/android/calendar/event/NewEditReminderActivity$a;->J:Z

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x3

    .line 14
    const/4 v4, 0x1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    new-array v7, v4, [Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    aput-object v1, v7, v2

    .line 24
    .line 25
    new-instance v1, Lh4/a;

    .line 26
    .line 27
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    new-instance v8, Lcom/android/calendar/event/NewEditReminderActivity$a$b;

    .line 32
    .line 33
    invoke-direct {v8, v0}, Lcom/android/calendar/event/NewEditReminderActivity$a$b;-><init>(Lcom/android/calendar/event/NewEditReminderActivity$a;)V

    .line 34
    .line 35
    .line 36
    const/4 v9, 0x3

    .line 37
    const/16 v10, 0xa

    .line 38
    .line 39
    move-object v5, v1

    .line 40
    invoke-direct/range {v5 .. v10}, Lh4/a;-><init>(Landroid/content/Context;[Ljava/lang/Integer;Lh4/a$e;II)V

    .line 41
    .line 42
    .line 43
    iput-object v1, v0, Lcom/android/calendar/event/NewEditReminderActivity$a;->G:Lh4/a;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    new-array v13, v3, [Ljava/lang/Integer;

    .line 47
    .line 48
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    aput-object v1, v13, v2

    .line 53
    .line 54
    const/4 v1, 0x2

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    aput-object v2, v13, v4

    .line 60
    .line 61
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    aput-object v2, v13, v1

    .line 66
    .line 67
    new-instance v1, Lh4/a;

    .line 68
    .line 69
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object v12

    .line 73
    new-instance v14, Lcom/android/calendar/event/NewEditReminderActivity$a$c;

    .line 74
    .line 75
    invoke-direct {v14, v0}, Lcom/android/calendar/event/NewEditReminderActivity$a$c;-><init>(Lcom/android/calendar/event/NewEditReminderActivity$a;)V

    .line 76
    .line 77
    .line 78
    const/4 v15, 0x2

    .line 79
    const/16 v16, 0x3

    .line 80
    .line 81
    move-object v11, v1

    .line 82
    invoke-direct/range {v11 .. v16}, Lh4/a;-><init>(Landroid/content/Context;[Ljava/lang/Integer;Lh4/a$e;II)V

    .line 83
    .line 84
    .line 85
    iput-object v1, v0, Lcom/android/calendar/event/NewEditReminderActivity$a;->G:Lh4/a;

    .line 86
    .line 87
    :goto_0
    iget-object v1, v0, Lcom/android/calendar/event/NewEditReminderActivity$a;->G:Lh4/a;

    .line 88
    .line 89
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    const v3, 0x7f1204a2

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v1, v2}, Lh4/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 101
    .line 102
    .line 103
    iget-object v1, v0, Lcom/android/calendar/event/NewEditReminderActivity$a;->G:Lh4/a;

    .line 104
    .line 105
    invoke-virtual {v1, v4}, Lmiuix/appcompat/app/l;->setCanceledOnTouchOutside(Z)V

    .line 106
    .line 107
    .line 108
    iget-object v1, v0, Lcom/android/calendar/event/NewEditReminderActivity$a;->G:Lh4/a;

    .line 109
    .line 110
    invoke-virtual {v1}, Lh4/a;->show()V

    .line 111
    .line 112
    .line 113
    return-void
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

.method private Z()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->N:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->N:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/android/calendar/common/event/schema/Reminder;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Reminder;->getMinutes()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    iget v3, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->I:I

    .line 23
    .line 24
    add-int/2addr v2, v3

    .line 25
    rem-int/lit16 v2, v2, 0x5a0

    .line 26
    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Reminder;->getMinutes()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    iget v3, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->I:I

    .line 34
    .line 35
    add-int/2addr v2, v3

    .line 36
    iget v3, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->H:I

    .line 37
    .line 38
    sub-int/2addr v2, v3

    .line 39
    invoke-virtual {v1, v2}, Lcom/android/calendar/common/event/schema/Reminder;->setMinutes(I)V

    .line 40
    .line 41
    .line 42
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return-void
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

.method private a0(IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/event/NewEditReminderActivity$a;->W()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/android/calendar/event/NewEditReminderActivity$a;->S()V

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->N:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/android/calendar/common/event/schema/Reminder;

    .line 17
    .line 18
    const/4 p2, 0x1

    .line 19
    invoke-virtual {p1, p2}, Lcom/android/calendar/common/event/schema/Reminder;->setSelected(Z)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->N:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/android/calendar/common/event/schema/Reminder;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Lcom/android/calendar/common/event/schema/Reminder;->setSelected(Z)V

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
.end method

.method private b0()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->K:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->N:Ljava/util/ArrayList;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_2

    .line 16
    .line 17
    move v0, v1

    .line 18
    :goto_0
    iget-object v3, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->N:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-ge v0, v3, :cond_1

    .line 25
    .line 26
    iget-object v3, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->N:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    iget-object v3, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->N:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lcom/android/calendar/common/event/schema/Reminder;

    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/Reminder;->getSelected()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_0

    .line 47
    .line 48
    move v0, v2

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    move v0, v1

    .line 54
    :goto_1
    if-nez v0, :cond_2

    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->N:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Lcom/android/calendar/common/event/schema/Reminder;

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Lcom/android/calendar/common/event/schema/Reminder;->setSelected(Z)V

    .line 65
    .line 66
    .line 67
    :cond_2
    move v0, v1

    .line 68
    :goto_2
    iget-object v3, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->y:Landroidx/preference/PreferenceGroup;

    .line 69
    .line 70
    invoke-virtual {v3}, Landroidx/preference/PreferenceGroup;->X0()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-ge v0, v3, :cond_7

    .line 75
    .line 76
    iget-object v3, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->y:Landroidx/preference/PreferenceGroup;

    .line 77
    .line 78
    invoke-virtual {v3, v0}, Landroidx/preference/PreferenceGroup;->W0(I)Landroidx/preference/Preference;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    instance-of v4, v3, Lmiuix/preference/RadioButtonPreference;

    .line 83
    .line 84
    if-eqz v4, :cond_5

    .line 85
    .line 86
    check-cast v3, Lmiuix/preference/RadioButtonPreference;

    .line 87
    .line 88
    iget-boolean v4, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->K:Z

    .line 89
    .line 90
    if-eqz v4, :cond_3

    .line 91
    .line 92
    move v4, v1

    .line 93
    goto :goto_3

    .line 94
    :cond_3
    iget-object v4, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->N:Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    check-cast v4, Lcom/android/calendar/common/event/schema/Reminder;

    .line 101
    .line 102
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/Reminder;->getSelected()Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    :goto_3
    invoke-virtual {v3, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 107
    .line 108
    .line 109
    iget-boolean v4, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->K:Z

    .line 110
    .line 111
    xor-int/2addr v4, v2

    .line 112
    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->v0(Z)V

    .line 113
    .line 114
    .line 115
    invoke-direct {p0}, Lcom/android/calendar/event/NewEditReminderActivity$a;->W()Z

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    if-nez v4, :cond_4

    .line 120
    .line 121
    invoke-direct {p0}, Lcom/android/calendar/event/NewEditReminderActivity$a;->T()I

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    iget v5, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->L:I

    .line 126
    .line 127
    if-lt v4, v5, :cond_4

    .line 128
    .line 129
    invoke-virtual {v3}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    if-nez v4, :cond_4

    .line 134
    .line 135
    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->v0(Z)V

    .line 136
    .line 137
    .line 138
    :cond_4
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    iget-object v5, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->N:Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    check-cast v5, Lcom/android/calendar/common/event/schema/Reminder;

    .line 149
    .line 150
    invoke-virtual {v5}, Lcom/android/calendar/common/event/schema/Reminder;->getMinutes()I

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    iget-boolean v6, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->J:Z

    .line 155
    .line 156
    invoke-static {v4, v5, v6}, Lcom/android/calendar/event/f0;->a(Landroid/content/Context;IZ)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->K0(Ljava/lang/CharSequence;)V

    .line 161
    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_5
    iget-boolean v4, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->K:Z

    .line 165
    .line 166
    xor-int/2addr v4, v2

    .line 167
    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->v0(Z)V

    .line 168
    .line 169
    .line 170
    invoke-direct {p0}, Lcom/android/calendar/event/NewEditReminderActivity$a;->W()Z

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    if-nez v4, :cond_6

    .line 175
    .line 176
    invoke-direct {p0}, Lcom/android/calendar/event/NewEditReminderActivity$a;->T()I

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    iget v5, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->L:I

    .line 181
    .line 182
    if-lt v4, v5, :cond_6

    .line 183
    .line 184
    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->v0(Z)V

    .line 185
    .line 186
    .line 187
    :cond_6
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_7
    iget-object v0, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->y:Landroidx/preference/PreferenceGroup;

    .line 191
    .line 192
    iget-boolean v3, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->K:Z

    .line 193
    .line 194
    xor-int/2addr v3, v2

    .line 195
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->L0(Z)V

    .line 196
    .line 197
    .line 198
    iget-boolean v0, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->J:Z

    .line 199
    .line 200
    if-eqz v0, :cond_8

    .line 201
    .line 202
    iget-object v0, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->z:Landroidx/preference/PreferenceGroup;

    .line 203
    .line 204
    iget-boolean v3, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->K:Z

    .line 205
    .line 206
    xor-int/2addr v3, v2

    .line 207
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->L0(Z)V

    .line 208
    .line 209
    .line 210
    iget-object v0, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->E:Landroidx/preference/Preference;

    .line 211
    .line 212
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    iget v4, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->H:I

    .line 217
    .line 218
    invoke-static {v3, v4}, Lcom/miui/calendar/util/s0;->n(Landroid/content/Context;I)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->H0(Ljava/lang/CharSequence;)V

    .line 223
    .line 224
    .line 225
    :cond_8
    invoke-direct {p0}, Lcom/android/calendar/event/NewEditReminderActivity$a;->W()Z

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    if-nez v0, :cond_9

    .line 230
    .line 231
    invoke-direct {p0}, Lcom/android/calendar/event/NewEditReminderActivity$a;->T()I

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    iget v3, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->L:I

    .line 236
    .line 237
    if-lt v0, v3, :cond_9

    .line 238
    .line 239
    iget-boolean v0, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->K:Z

    .line 240
    .line 241
    if-nez v0, :cond_9

    .line 242
    .line 243
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    const v3, 0x7f10003b

    .line 248
    .line 249
    .line 250
    iget v4, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->L:I

    .line 251
    .line 252
    new-array v2, v2, [Ljava/lang/Object;

    .line 253
    .line 254
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 255
    .line 256
    .line 257
    move-result-object v5

    .line 258
    aput-object v5, v2, v1

    .line 259
    .line 260
    invoke-static {v0, v3, v4, v2}, Lcom/miui/calendar/util/t0;->i(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    :cond_9
    return-void
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
.end method


# virtual methods
.method public c(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroidx/preference/Preference;->u()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/calendar/event/NewEditReminderActivity$a;->O:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v3, "onPreferenceChange(): key:"

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v1, v2}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    check-cast p2, Ljava/lang/Boolean;

    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/event/NewEditReminderActivity$a;->a0(IZ)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lcom/android/calendar/event/NewEditReminderActivity$a;->b0()V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->D:Landroidx/preference/CheckBoxPreference;

    .line 51
    .line 52
    if-ne p1, v0, :cond_1

    .line 53
    .line 54
    check-cast p2, Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    iput-boolean p1, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->K:Z

    .line 61
    .line 62
    invoke-direct {p0}, Lcom/android/calendar/event/NewEditReminderActivity$a;->b0()V

    .line 63
    .line 64
    .line 65
    const/4 p1, 0x1

    .line 66
    return p1

    .line 67
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 68
    return p1
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

.method public d(Landroidx/preference/Preference;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/preference/Preference;->u()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Lcom/android/calendar/event/NewEditReminderActivity$a;->O:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "onPreferenceClick(): key:"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    const-string v0, "preference_allday_reminder_time"

    .line 28
    .line 29
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v1, 0x1

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    invoke-direct {p0}, Lcom/android/calendar/event/NewEditReminderActivity$a;->X()V

    .line 37
    .line 38
    .line 39
    return v1

    .line 40
    :cond_0
    const-string v0, "preference_custom_reminder_time"

    .line 41
    .line 42
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    invoke-direct {p0}, Lcom/android/calendar/event/NewEditReminderActivity$a;->Y()V

    .line 49
    .line 50
    .line 51
    return v1

    .line 52
    :cond_1
    const/4 p1, 0x0

    .line 53
    return p1
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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lmiuix/preference/j;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f15000f

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
    const-string v0, "preference_no_reminder"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->T0(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroidx/preference/CheckBoxPreference;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->D:Landroidx/preference/CheckBoxPreference;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->D0(Landroidx/preference/Preference$c;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    const-string p1, "category_select_reminders"

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroidx/preference/g;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroidx/preference/PreferenceGroup;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->y:Landroidx/preference/PreferenceGroup;

    .line 38
    .line 39
    const-string p1, "category_allday_reminder_time"

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroidx/preference/g;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Landroidx/preference/PreferenceGroup;

    .line 46
    .line 47
    iput-object p1, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->z:Landroidx/preference/PreferenceGroup;

    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/preference/g;->m()Landroidx/preference/PreferenceScreen;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const-string v0, "preference_allday_reminder_time"

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->T0(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iput-object p1, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->E:Landroidx/preference/Preference;

    .line 60
    .line 61
    invoke-direct {p0}, Lcom/android/calendar/event/NewEditReminderActivity$a;->U()V

    .line 62
    .line 63
    .line 64
    invoke-direct {p0}, Lcom/android/calendar/event/NewEditReminderActivity$a;->b0()V

    .line 65
    .line 66
    .line 67
    return-void
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

.method public onPause()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->K:Z

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->N:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/android/calendar/common/event/schema/Reminder;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/Reminder;->getSelected()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-wide v1, p0, Lcom/android/calendar/event/NewEditReminderActivity$a;->M:J

    .line 39
    .line 40
    invoke-static {v1, v2, v0}, Lcom/miui/calendar/util/g$v;->d(JLjava/util/ArrayList;)Lcom/miui/calendar/util/g$j;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Lcom/miui/calendar/util/g;->c(Lcom/miui/calendar/util/g$j;)V

    .line 45
    .line 46
    .line 47
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 48
    .line 49
    .line 50
    return-void
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

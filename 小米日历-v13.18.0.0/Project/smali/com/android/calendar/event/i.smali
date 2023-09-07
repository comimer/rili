.class public Lcom/android/calendar/event/i;
.super Ljava/lang/Object;
.source "EditEventAlarmHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/i$c;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Lcom/android/calendar/common/event/schema/Event;

.field private d:Lcom/android/calendar/common/event/schema/Event;

.field private e:Z

.field private f:Lmiuix/appcompat/app/l;

.field private g:Lcom/android/calendar/event/i$c;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/calendar/common/event/schema/Event;Lcom/android/calendar/common/event/schema/Event;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/calendar/event/i;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/calendar/event/i;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/calendar/event/i;->d:Lcom/android/calendar/common/event/schema/Event;

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/EventEx;->getSyncId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/android/calendar/event/i;->b:Ljava/lang/String;

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

.method static synthetic a(Lcom/android/calendar/event/i;)Lcom/android/calendar/event/i$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/i;->g:Lcom/android/calendar/event/i$c;

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

.method static synthetic b(Lcom/android/calendar/event/i;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/i;->a:Landroid/content/Context;

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

.method static synthetic c(Lcom/android/calendar/event/i;)Lcom/android/calendar/common/event/schema/Event;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/i;->c:Lcom/android/calendar/common/event/schema/Event;

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

.method static synthetic d(Lcom/android/calendar/event/i;)Lcom/android/calendar/common/event/schema/Event;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/i;->d:Lcom/android/calendar/common/event/schema/Event;

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

.method static synthetic e(Lcom/android/calendar/event/i;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/calendar/event/i;->e:Z

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

.method public static g(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/calendar/common/Utils;->W0(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
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
.end method

.method public static h(Landroid/content/Context;Lcom/android/calendar/common/event/schema/Event;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEpName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->toJson()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p0, v0, v1, v2, p1}, Lcom/android/calendar/common/Utils;->W0(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
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


# virtual methods
.method public f(ZLcom/android/calendar/event/i$c;)V
    .locals 6

    .line 1
    iput-boolean p1, p0, Lcom/android/calendar/event/i;->e:Z

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/calendar/event/i;->g:Lcom/android/calendar/event/i$c;

    .line 4
    .line 5
    iget-object p2, p0, Lcom/android/calendar/event/i;->f:Lmiuix/appcompat/app/l;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Lmiuix/appcompat/app/l;->dismiss()V

    .line 10
    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    iput-object p2, p0, Lcom/android/calendar/event/i;->f:Lmiuix/appcompat/app/l;

    .line 14
    .line 15
    :cond_0
    iget-boolean p2, p0, Lcom/android/calendar/event/i;->e:Z

    .line 16
    .line 17
    if-eqz p2, :cond_1

    .line 18
    .line 19
    const p2, 0x7f030036

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const p2, 0x7f03001a

    .line 24
    .line 25
    .line 26
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/event/i;->a:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 43
    .line 44
    .line 45
    const p2, 0x7f030021

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .line 56
    .line 57
    array-length v2, p2

    .line 58
    const/4 v3, 0x0

    .line 59
    move v4, v3

    .line 60
    :goto_1
    if-ge v4, v2, :cond_2

    .line 61
    .line 62
    aget v5, p2, v4

    .line 63
    .line 64
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    add-int/lit8 v4, v4, 0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    iget-object p2, p0, Lcom/android/calendar/event/i;->b:Ljava/lang/String;

    .line 75
    .line 76
    if-nez p2, :cond_3

    .line 77
    .line 78
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    iget-object p2, p0, Lcom/android/calendar/event/i;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 85
    .line 86
    invoke-virtual {p2}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {p2}, Lcom/android/calendar/common/event/schema/EventEx;->isOrganizer()Z

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    if-nez p2, :cond_3

    .line 95
    .line 96
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    :cond_3
    :try_start_0
    new-array p2, v3, [Ljava/lang/CharSequence;

    .line 103
    .line 104
    invoke-interface {v1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    check-cast p2, [Ljava/lang/CharSequence;

    .line 109
    .line 110
    iget-boolean v1, p0, Lcom/android/calendar/event/i;->e:Z

    .line 111
    .line 112
    if-eqz v1, :cond_4

    .line 113
    .line 114
    const v1, 0x7f120500

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_4
    const v1, 0x7f1204ff

    .line 119
    .line 120
    .line 121
    :goto_2
    new-instance v2, Lmiuix/appcompat/app/l$b;

    .line 122
    .line 123
    iget-object v3, p0, Lcom/android/calendar/event/i;->a:Landroid/content/Context;

    .line 124
    .line 125
    invoke-direct {v2, v3}, Lmiuix/appcompat/app/l$b;-><init>(Landroid/content/Context;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2, v1}, Lmiuix/appcompat/app/l$b;->F(I)Lmiuix/appcompat/app/l$b;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    new-instance v2, Lcom/android/calendar/event/i$a;

    .line 133
    .line 134
    invoke-direct {v2, p0, v0, p1}, Lcom/android/calendar/event/i$a;-><init>(Lcom/android/calendar/event/i;Ljava/util/List;Z)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, p2, v2}, Lmiuix/appcompat/app/l$b;->l([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/l$b;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p1}, Lmiuix/appcompat/app/l$b;->J()Lmiuix/appcompat/app/l;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    iput-object p1, p0, Lcom/android/calendar/event/i;->f:Lmiuix/appcompat/app/l;

    .line 146
    .line 147
    new-instance p2, Lcom/android/calendar/event/i$b;

    .line 148
    .line 149
    invoke-direct {p2, p0}, Lcom/android/calendar/event/i$b;-><init>(Lcom/android/calendar/event/i;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .line 154
    .line 155
    goto :goto_3

    .line 156
    :catch_0
    move-exception p1

    .line 157
    const-string p2, "Cal:D:EditEventAlarmHelper"

    .line 158
    .line 159
    const-string v0, "editAlarm()"

    .line 160
    .line 161
    invoke-static {p2, v0, p1}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    .line 163
    .line 164
    :goto_3
    return-void
    .line 165
    .line 166
    .line 167
.end method

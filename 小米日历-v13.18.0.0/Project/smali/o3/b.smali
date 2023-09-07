.class public Lo3/b;
.super Lo3/d;
.source "AnniversaryAlertFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo3/d<",
        "Lcom/miui/calendar/alerts/entities/AnniversaryAlert;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lo3/d;-><init>(Landroid/content/Context;)V

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

.method private d(Lcom/android/calendar/common/event/schema/AnniversaryEvent;J)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1, p2, p3}, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->calNextAnniversaryTime(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    cmp-long v0, v0, p2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lo3/d;->a()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {v0, p1, p2, p3, v1}, Lp1/b;->d(Landroid/content/Context;Lcom/android/calendar/common/event/schema/AnniversaryEvent;JZ)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->isReminderBefore3Day()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1, p2, p3}, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->calNextAnniversaryBefore3DayTime(J)J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    cmp-long v0, v0, p2

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Lo3/d;->a()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v1, 0x1

    .line 38
    invoke-static {v0, p1, p2, p3, v1}, Lp1/b;->d(Landroid/content/Context;Lcom/android/calendar/common/event/schema/AnniversaryEvent;JZ)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-string p1, ""

    .line 44
    .line 45
    :goto_0
    return-object p1
    .line 46
    .line 47
.end method

.method private e(Lcom/android/calendar/common/event/schema/AnniversaryEvent;J)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->calNextAnniversaryTime(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    cmp-long v1, v1, p2

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    return v2

    .line 15
    :cond_1
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->isReminderBefore3Day()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p1, p2, p3}, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->calNextAnniversaryBefore3DayTime(J)J

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    cmp-long p1, v3, p2

    .line 26
    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    move v0, v2

    .line 30
    :cond_2
    return v0
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

.method private f(Lcom/android/calendar/common/event/schema/AnniversaryEvent;J)Lcom/miui/calendar/alerts/entities/AnniversaryAlert;
    .locals 3

    .line 1
    new-instance v0, Lcom/miui/calendar/alerts/entities/AnniversaryAlert;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/miui/calendar/alerts/entities/AnniversaryAlert;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lo3/b;->d(Lcom/android/calendar/common/event/schema/AnniversaryEvent;J)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {v0, p2}, Lcom/miui/calendar/alerts/entities/BaseAlert;->setEventTitle(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getEventTitle()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Lo3/d;->a()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    const p3, 0x7f1203c4

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {v0, p2}, Lcom/miui/calendar/alerts/entities/BaseAlert;->setEventTitle(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/calendar/alerts/entities/BaseAlert;->setEvent(Lcom/android/calendar/common/event/schema/Event;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->getTimeMillis()J

    .line 48
    .line 49
    .line 50
    move-result-wide p2

    .line 51
    invoke-virtual {v0, p2, p3}, Lcom/miui/calendar/alerts/entities/BaseAlert;->setAlertAt(J)V

    .line 52
    .line 53
    .line 54
    const/4 p2, 0x1

    .line 55
    invoke-virtual {v0, p2}, Lcom/miui/calendar/alerts/entities/BaseAlert;->setAllDay(Z)V

    .line 56
    .line 57
    .line 58
    const/4 p3, 0x0

    .line 59
    invoke-virtual {v0, p3}, Lcom/miui/calendar/alerts/entities/BaseAlert;->setEventState(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->getTimeMillis()J

    .line 63
    .line 64
    .line 65
    move-result-wide v1

    .line 66
    invoke-virtual {v0, v1, v2}, Lcom/miui/calendar/alerts/entities/BaseAlert;->setBeginAt(J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->getTimeMillis()J

    .line 70
    .line 71
    .line 72
    move-result-wide v1

    .line 73
    invoke-virtual {v0, v1, v2}, Lcom/miui/calendar/alerts/entities/BaseAlert;->setEndAt(J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lo3/d;->a()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object p3

    .line 80
    invoke-virtual {p1, p3}, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->getNotifyText(Landroid/content/Context;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {v0, p1}, Lcom/miui/calendar/alerts/entities/BaseAlert;->setEventDescription(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, p2}, Lcom/miui/calendar/alerts/entities/BaseAlert;->setHasAlarm(Z)V

    .line 88
    .line 89
    .line 90
    return-object v0
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


# virtual methods
.method public b(JJ)Lcom/miui/calendar/alerts/entities/AnniversaryAlert;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo3/d;->a()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1, p2}, Ls1/a;->c(Landroid/content/Context;J)Lcom/android/calendar/common/event/schema/AnniversaryEvent;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, p1, p3, p4}, Lo3/b;->e(Lcom/android/calendar/common/event/schema/AnniversaryEvent;J)Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    invoke-direct {p0, p1, p3, p4}, Lo3/b;->f(Lcom/android/calendar/common/event/schema/AnniversaryEvent;J)Lcom/miui/calendar/alerts/entities/AnniversaryAlert;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return-object p1
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

.method public varargs c([Ljava/lang/Long;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/calendar/alerts/entities/AnniversaryAlert;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lo3/d;->a()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Ls1/a;->d(Landroid/content/Context;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/android/calendar/common/event/schema/AnniversaryEvent;

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    aget-object v4, p1, v3

    .line 32
    .line 33
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 34
    .line 35
    .line 36
    move-result-wide v4

    .line 37
    invoke-direct {p0, v2, v4, v5}, Lo3/b;->e(Lcom/android/calendar/common/event/schema/AnniversaryEvent;J)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_0

    .line 42
    .line 43
    aget-object v3, p1, v3

    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 46
    .line 47
    .line 48
    move-result-wide v3

    .line 49
    invoke-direct {p0, v2, v3, v4}, Lo3/b;->f(Lcom/android/calendar/common/event/schema/AnniversaryEvent;J)Lcom/miui/calendar/alerts/entities/AnniversaryAlert;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    return-object v0
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
.end method

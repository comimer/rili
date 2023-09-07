.class public Lcom/miui/calendar/shift/ShiftSchema;
.super Ljava/lang/Object;
.source "ShiftSchema.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final DEFAULT_INTERVAL:I = 0x4

.field public static final MAX_INTERVAL:I = 0x3c

.field public static final MIN_INTERVAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Cal:D:ShiftSchema"


# instance fields
.field public interval:I

.field public isRemind:Z

.field public reminders:[Lcom/miui/calendar/shift/ShiftReminderSchema;

.field public startTimeMillis:J

.field public version:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    iput v0, p0, Lcom/miui/calendar/shift/ShiftSchema;->interval:I

    .line 6
    .line 7
    return-void
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

.method private getReminderTimeMillis(JI)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/shift/ShiftSchema;->reminders:[Lcom/miui/calendar/shift/ShiftReminderSchema;

    aget-object p3, v0, p3

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/calendar/shift/ShiftSchema;->getReminderTimeMillis(JLcom/miui/calendar/shift/ShiftReminderSchema;)J

    move-result-wide p1

    return-wide p1
.end method

.method private getReminderTimeMillis(JLcom/miui/calendar/shift/ShiftReminderSchema;)J
    .locals 4

    .line 2
    invoke-static {p1, p2}, Lcom/miui/calendar/util/e0;->j(J)J

    move-result-wide p1

    iget p3, p3, Lcom/miui/calendar/shift/ShiftReminderSchema;->reminderMinutes:I

    int-to-long v0, p3

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    add-long/2addr p1, v0

    return-wide p1
.end method


# virtual methods
.method public getNextNotifyMillis(J)J
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/shift/ShiftSchema;->reminders:[Lcom/miui/calendar/shift/ShiftReminderSchema;

    .line 2
    .line 3
    const-wide/16 v1, -0x1

    .line 4
    .line 5
    const-string v3, "Cal:D:ShiftSchema"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p1, "getNextNotifyMillis() INVALID reminders"

    .line 10
    .line 11
    invoke-static {v3, p1}, Lcom/miui/calendar/util/z;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-wide v1

    .line 15
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/calendar/shift/ShiftSchema;->isStartShift(J)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const-wide/32 v4, 0x5265c00

    .line 20
    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    :goto_0
    iget-object p1, p0, Lcom/miui/calendar/shift/ShiftSchema;->reminders:[Lcom/miui/calendar/shift/ShiftReminderSchema;

    .line 26
    .line 27
    array-length p2, p1

    .line 28
    if-ge v6, p2, :cond_4

    .line 29
    .line 30
    aget-object p1, p1, v6

    .line 31
    .line 32
    iget p1, p1, Lcom/miui/calendar/shift/ShiftReminderSchema;->type:I

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string p2, "getNextNotifyMillis() i="

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {v3, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-wide p1, p0, Lcom/miui/calendar/shift/ShiftSchema;->startTimeMillis:J

    .line 57
    .line 58
    int-to-long v0, v6

    .line 59
    mul-long/2addr v0, v4

    .line 60
    add-long/2addr p1, v0

    .line 61
    invoke-direct {p0, p1, p2, v6}, Lcom/miui/calendar/shift/ShiftSchema;->getReminderTimeMillis(JI)J

    .line 62
    .line 63
    .line 64
    move-result-wide p1

    .line 65
    return-wide p1

    .line 66
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/miui/calendar/shift/ShiftSchema;->getReminderIndex(J)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    new-instance v7, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v8, "getNextNotifyMillis() reminderIndex="

    .line 79
    .line 80
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    invoke-static {v3, v7}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :goto_1
    iget-object v7, p0, Lcom/miui/calendar/shift/ShiftSchema;->reminders:[Lcom/miui/calendar/shift/ShiftReminderSchema;

    .line 94
    .line 95
    array-length v8, v7

    .line 96
    mul-int/lit8 v8, v8, 0x2

    .line 97
    .line 98
    if-ge v6, v8, :cond_4

    .line 99
    .line 100
    add-int v8, v6, v0

    .line 101
    .line 102
    array-length v9, v7

    .line 103
    rem-int/2addr v8, v9

    .line 104
    aget-object v7, v7, v8

    .line 105
    .line 106
    iget v7, v7, Lcom/miui/calendar/shift/ShiftReminderSchema;->type:I

    .line 107
    .line 108
    if-eqz v7, :cond_3

    .line 109
    .line 110
    int-to-long v9, v6

    .line 111
    mul-long/2addr v9, v4

    .line 112
    add-long/2addr v9, p1

    .line 113
    invoke-direct {p0, v9, v10, v8}, Lcom/miui/calendar/shift/ShiftSchema;->getReminderTimeMillis(JI)J

    .line 114
    .line 115
    .line 116
    move-result-wide v7

    .line 117
    new-instance v9, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string v10, "getNextNotifyMillis() nextTimeMillis="

    .line 123
    .line 124
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v9

    .line 134
    invoke-static {v3, v9}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    cmp-long v9, v7, p1

    .line 138
    .line 139
    if-lez v9, :cond_3

    .line 140
    .line 141
    return-wide v7

    .line 142
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_4
    return-wide v1
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

.method public getReminderIndex(J)I
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-wide v1, p0, Lcom/miui/calendar/shift/ShiftSchema;->startTimeMillis:J

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/miui/calendar/util/e0;->i(Ljava/util/Calendar;)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-static {v0}, Lcom/miui/calendar/util/e0;->i(Ljava/util/Calendar;)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    sub-int/2addr p1, p2

    .line 26
    iget p2, p0, Lcom/miui/calendar/shift/ShiftSchema;->interval:I

    .line 27
    .line 28
    rem-int/2addr p1, p2

    .line 29
    return p1
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
.end method

.method public getShiftReminder(J)Lcom/miui/calendar/shift/ShiftReminderSchema;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/miui/calendar/shift/ShiftSchema;->getReminderIndex(J)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object p2, p0, Lcom/miui/calendar/shift/ShiftSchema;->reminders:[Lcom/miui/calendar/shift/ShiftReminderSchema;

    .line 6
    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    if-ltz p1, :cond_1

    .line 10
    .line 11
    array-length v0, p2

    .line 12
    if-lt p1, v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    aget-object p1, p2, p1

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_1
    :goto_0
    const-string p1, "Cal:D:ShiftSchema"

    .line 19
    .line 20
    const-string p2, "getShiftReminder() INVALID data"

    .line 21
    .line 22
    invoke-static {p1, p2}, Lcom/miui/calendar/util/z;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance p1, Lcom/miui/calendar/shift/ShiftReminderSchema;

    .line 26
    .line 27
    invoke-direct {p1}, Lcom/miui/calendar/shift/ShiftReminderSchema;-><init>()V

    .line 28
    .line 29
    .line 30
    return-object p1
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
.end method

.method public getShiftReminderMinutes(J)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/miui/calendar/shift/ShiftSchema;->getShiftReminder(J)Lcom/miui/calendar/shift/ShiftReminderSchema;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget p1, p1, Lcom/miui/calendar/shift/ShiftReminderSchema;->reminderMinutes:I

    .line 6
    .line 7
    return p1
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

.method public getShiftType(J)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/miui/calendar/shift/ShiftSchema;->getShiftReminder(J)Lcom/miui/calendar/shift/ShiftReminderSchema;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget p1, p1, Lcom/miui/calendar/shift/ShiftReminderSchema;->type:I

    .line 6
    .line 7
    return p1
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

.method public getTodayReminderTimeMillis()J
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/miui/calendar/shift/ShiftSchema;->getShiftReminder(J)Lcom/miui/calendar/shift/ShiftReminderSchema;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, v0, Lcom/miui/calendar/shift/ShiftReminderSchema;->type:I

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-direct {p0, v1, v2, v0}, Lcom/miui/calendar/shift/ShiftSchema;->getReminderTimeMillis(JLcom/miui/calendar/shift/ShiftReminderSchema;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    return-wide v0

    .line 22
    :cond_0
    const-wide/16 v0, -0x1

    .line 23
    .line 24
    return-wide v0
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

.method public isStartShift(J)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/miui/calendar/shift/ShiftSchema;->startTimeMillis:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1, p2}, Lcom/miui/calendar/util/s0;->t(JJ)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Lcom/miui/calendar/shift/ShiftSchema;->startTimeMillis:J

    .line 10
    .line 11
    cmp-long p1, v0, p1

    .line 12
    .line 13
    if-lez p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    :cond_0
    const/4 p1, 0x1

    .line 18
    return p1
    .line 19
    .line 20
    .line 21
    .line 22
.end method

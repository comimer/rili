.class public Lcom/android/calendar/common/event/schema/AnniversaryEvent;
.super Lcom/android/calendar/common/event/schema/Event;
.source "AnniversaryEvent.java"


# static fields
.field private static final JSON_KEY_CONTENT:Ljava/lang/String; = "content"

.field public static final JSON_KEY_DATE_TYPE:Ljava/lang/String; = "dateType"

.field private static final JSON_KEY_REMINDER_BEFORE_3_DAY:Ljava/lang/String; = "reminderBefore3Day"

.field public static final JSON_KEY_TIME_MILLIS:Ljava/lang/String; = "timeMillis"

.field private static final TAG:Ljava/lang/String; = "Cal:D:AnniversaryEvent"


# instance fields
.field protected mContent:Ljava/lang/String;

.field protected mDateType:I

.field protected mNeedFillEpData:Z

.field protected mReminderBefore3Day:Z

.field protected mTimeMillis:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/common/event/schema/Event;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->mDateType:I

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


# virtual methods
.method public calAnniversary(Ljava/util/Calendar;)I
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->mDateType:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x1

    .line 6
    if-ne v0, v3, :cond_1

    .line 7
    .line 8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-wide v4, p0, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->mTimeMillis:J

    .line 13
    .line 14
    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-static {v4, v5, v0}, Lcom/miui/calendar/util/a0;->d(III)[I

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-static {v4, v5, p1}, Lcom/miui/calendar/util/a0;->d(III)[I

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    aget v1, v0, v3

    .line 50
    .line 51
    aget v4, p1, v3

    .line 52
    .line 53
    if-ne v1, v4, :cond_2

    .line 54
    .line 55
    aget v1, v0, v2

    .line 56
    .line 57
    aget v2, p1, v2

    .line 58
    .line 59
    if-ne v1, v2, :cond_2

    .line 60
    .line 61
    const/4 v1, 0x3

    .line 62
    aget v2, v0, v1

    .line 63
    .line 64
    aget v1, p1, v1

    .line 65
    .line 66
    const/4 v4, 0x0

    .line 67
    if-ne v2, v1, :cond_0

    .line 68
    .line 69
    aget p1, p1, v4

    .line 70
    .line 71
    aget v0, v0, v4

    .line 72
    .line 73
    :goto_0
    sub-int/2addr p1, v0

    .line 74
    return p1

    .line 75
    :cond_0
    if-ne v2, v3, :cond_2

    .line 76
    .line 77
    if-nez v1, :cond_2

    .line 78
    .line 79
    aget v1, p1, v4

    .line 80
    .line 81
    invoke-static {v1}, Lcom/miui/calendar/util/a0;->v(I)I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    aget v2, p1, v3

    .line 86
    .line 87
    if-eq v1, v2, :cond_2

    .line 88
    .line 89
    aget p1, p1, v4

    .line 90
    .line 91
    aget v0, v0, v4

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget-wide v4, p0, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->mTimeMillis:J

    .line 99
    .line 100
    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-ne v4, v2, :cond_2

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-ne v2, v1, :cond_2

    .line 122
    .line 123
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    goto :goto_0

    .line 132
    :cond_2
    const/4 p1, -0x1

    .line 133
    return p1
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

.method public calDays(Ljava/util/Calendar;)I
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-wide v1, p0, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->mTimeMillis:J

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lt1/d;->b(Ljava/util/Calendar;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-static {v0}, Lt1/d;->b(Ljava/util/Calendar;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    sub-int/2addr p1, v0

    .line 19
    add-int/lit8 p1, p1, 0x1

    .line 20
    .line 21
    return p1
    .line 22
.end method

.method public calNextAnniversaryBefore3DayTime(J)J
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->calNextAnniversaryTime(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    const-wide/32 v0, 0xf731400

    .line 6
    .line 7
    .line 8
    sub-long/2addr p1, v0

    .line 9
    return-wide p1
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

.method public calNextAnniversaryTime(J)J
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->mDateType:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_2

    .line 5
    .line 6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-wide v2, p0, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->mTimeMillis:J

    .line 11
    .line 12
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x2

    .line 20
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    const/4 v5, 0x5

    .line 25
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    invoke-static {v2, v4, v5}, Lcom/miui/calendar/util/a0;->d(III)[I

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const/4 v4, 0x0

    .line 34
    aget v5, v2, v4

    .line 35
    .line 36
    :cond_0
    add-int/2addr v5, v1

    .line 37
    aget v6, v2, v1

    .line 38
    .line 39
    const/4 v7, 0x3

    .line 40
    aget v7, v2, v7

    .line 41
    .line 42
    if-ne v7, v1, :cond_1

    .line 43
    .line 44
    invoke-static {v5}, Lcom/miui/calendar/util/a0;->v(I)I

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    aget v8, v2, v1

    .line 49
    .line 50
    if-ne v7, v8, :cond_1

    .line 51
    .line 52
    add-int/lit8 v6, v6, 0xc

    .line 53
    .line 54
    :cond_1
    aget v7, v2, v3

    .line 55
    .line 56
    invoke-static {v5, v6, v7}, Lcom/miui/calendar/util/a0;->w(III)[I

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    aget v7, v6, v4

    .line 61
    .line 62
    aget v8, v6, v1

    .line 63
    .line 64
    sub-int/2addr v8, v1

    .line 65
    aget v6, v6, v3

    .line 66
    .line 67
    invoke-virtual {v0, v7, v8, v6}, Ljava/util/Calendar;->set(III)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 71
    .line 72
    .line 73
    move-result-wide v6

    .line 74
    cmp-long v6, v6, p1

    .line 75
    .line 76
    if-ltz v6, :cond_0

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 79
    .line 80
    .line 81
    move-result-wide p1

    .line 82
    return-wide p1

    .line 83
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iget-wide v2, p0, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->mTimeMillis:J

    .line 88
    .line 89
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1, v1}, Ljava/util/Calendar;->add(II)V

    .line 93
    .line 94
    .line 95
    :goto_0
    invoke-static {v0}, Lt1/d;->b(Ljava/util/Calendar;)I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    invoke-static {p1, p2}, Lt1/d;->a(J)I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-ge v2, v3, :cond_3

    .line 104
    .line 105
    invoke-virtual {v0, v1, v1}, Ljava/util/Calendar;->add(II)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_3
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 110
    .line 111
    .line 112
    move-result-wide p1

    .line 113
    return-wide p1
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

.method public fillEpInfoFromJSONObject(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/calendar/common/event/schema/Event;->fillEpInfoFromJSONObject(Lorg/json/JSONObject;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "content"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->mContent:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "timeMillis"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    iput-wide v0, p0, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->mTimeMillis:J

    .line 19
    .line 20
    const-string v0, "reminderBefore3Day"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput-boolean v0, p0, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->mReminderBefore3Day:Z

    .line 27
    .line 28
    const-string v0, "dateType"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iput p1, p0, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->mDateType:I

    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->mNeedFillEpData:Z

    .line 38
    .line 39
    return-void
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

.method fillJSONObject(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/android/calendar/common/event/schema/Event;->fillJSONObject(Lorg/json/JSONObject;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->mContent:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "content"

    .line 7
    .line 8
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    .line 10
    .line 11
    iget-wide v0, p0, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->mTimeMillis:J

    .line 12
    .line 13
    const-string v2, "timeMillis"

    .line 14
    .line 15
    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 16
    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->mReminderBefore3Day:Z

    .line 19
    .line 20
    const-string v1, "reminderBefore3Day"

    .line 21
    .line 22
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 23
    .line 24
    .line 25
    iget v0, p0, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->mDateType:I

    .line 26
    .line 27
    const-string v1, "dateType"

    .line 28
    .line 29
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    return-void
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

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->mContent:Ljava/lang/String;

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

.method public getDateString(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    .line 1
    iget v0, p0, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->mDateType:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-wide v2, p0, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->mTimeMillis:J

    .line 11
    .line 12
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x2

    .line 20
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x5

    .line 25
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-static {v1, v2, v0}, Lcom/miui/calendar/util/a0;->d(III)[I

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-static {v4, v1, v2, v0}, Lcom/miui/calendar/util/a0;->z(Landroid/content/res/Resources;III)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    aget v2, v3, v2

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    sget v2, Lcom/android/calendar/common/r;->J0:I

    .line 53
    .line 54
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    iget-wide v0, p0, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->mTimeMillis:J

    .line 70
    .line 71
    const/4 v2, 0x4

    .line 72
    invoke-static {p1, v0, v1, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    :goto_0
    return-object p1
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

.method public getDateType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->mDateType:I

    .line 2
    .line 3
    return v0
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

.method public getEpName()Ljava/lang/String;
    .locals 1

    const-string v0, "key_anniversary_info"

    return-object v0
.end method

.method public getNotifyText(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->getDateString(Landroid/content/Context;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
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

.method public getTimeMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->mTimeMillis:J

    .line 2
    .line 3
    return-wide v0
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

.method public isReminderBefore3Day()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->mReminderBefore3Day:Z

    .line 2
    .line 3
    return v0
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

.method public needFillEpData()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->mNeedFillEpData:Z

    .line 2
    .line 3
    return v0
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

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->mContent:Ljava/lang/String;

    .line 2
    .line 3
    return-void
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

.method public setDateType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->mDateType:I

    .line 2
    .line 3
    return-void
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

.method public setNeedFillEpData(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->mNeedFillEpData:Z

    .line 2
    .line 3
    return-void
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

.method public setReminderBefore3Day(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->mReminderBefore3Day:Z

    .line 2
    .line 3
    return-void
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

.method public setTimeMillis(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->mTimeMillis:J

    .line 2
    .line 3
    return-void
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

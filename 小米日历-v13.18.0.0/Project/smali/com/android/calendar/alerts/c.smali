.class public Lcom/android/calendar/alerts/c;
.super Landroid/os/AsyncTask;
.source "AlertTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/miui/calendar/alerts/entities/BaseAlert;

.field private c:I


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/calendar/alerts/c;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
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

.method static a(Landroid/content/Context;Lcom/miui/calendar/alerts/entities/BaseAlert;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Lcom/android/calendar/alerts/c;

    .line 4
    .line 5
    const-string v1, "com.android.calendar.CANCEL_REMINDER_LATER"

    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/android/calendar/alerts/c;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lcom/android/calendar/alerts/c;->b:Lcom/miui/calendar/alerts/entities/BaseAlert;

    .line 11
    .line 12
    sget-object p1, Lcom/miui/calendar/util/e;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    new-array v1, v1, [Landroid/content/Context;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    aput-object p0, v1, v2

    .line 23
    .line 24
    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
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

.method private b(Landroid/content/Context;Lcom/miui/calendar/alerts/entities/BaseAlert;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getAlertId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    return p1

    .line 10
    :cond_0
    invoke-virtual {p2, p1}, Lcom/miui/calendar/alerts/entities/BaseAlert;->hasChanged(Landroid/content/Context;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    xor-int/lit8 p1, p1, 0x1

    .line 15
    .line 16
    return p1
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

.method private d(Landroid/content/Context;)V
    .locals 4

    .line 1
    const-string v0, "Cal:D:AlertTask"

    .line 2
    .line 3
    const-string v1, "generateAlerts()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/util/LinkedList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lo3/a;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Lo3/a;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    new-array v3, v2, [Ljava/lang/Void;

    .line 20
    .line 21
    invoke-virtual {v1, v3}, Lo3/c;->d([Ljava/lang/Void;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v3, Lo3/e;

    .line 26
    .line 27
    invoke-direct {v3, p1}, Lo3/e;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    new-array v2, v2, [Ljava/lang/Void;

    .line 31
    .line 32
    invoke-virtual {v3, v2}, Lo3/c;->d([Ljava/lang/Void;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Lm3/b;->e(Landroid/content/Context;)Lm3/b;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Lcom/miui/calendar/alerts/entities/BaseAlert;

    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/miui/calendar/alerts/entities/BaseAlert;->hasAlarm()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-nez v3, :cond_0

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {v2}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getRemindType()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    invoke-virtual {v2, p1, v3}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getAdapter(Landroid/content/Context;I)Ln3/c;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v1, v3}, Lm3/b;->i(Ln3/c;)V

    .line 78
    .line 79
    .line 80
    invoke-direct {p0, v2}, Lcom/android/calendar/alerts/c;->f(Lcom/miui/calendar/alerts/entities/BaseAlert;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    return-void
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

.method static e(Landroid/content/Context;Lcom/miui/calendar/alerts/entities/BaseAlert;I)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Lcom/android/calendar/alerts/c;

    .line 4
    .line 5
    const-string v1, "com.android.calendar.ALERT_REMINDER_LATER"

    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/android/calendar/alerts/c;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lcom/android/calendar/alerts/c;->b:Lcom/miui/calendar/alerts/entities/BaseAlert;

    .line 11
    .line 12
    iput p2, v0, Lcom/android/calendar/alerts/c;->c:I

    .line 13
    .line 14
    sget-object p1, Lcom/miui/calendar/util/e;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 15
    .line 16
    const/4 p2, 0x1

    .line 17
    new-array p2, p2, [Landroid/content/Context;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    aput-object p0, p2, v1

    .line 25
    .line 26
    invoke-virtual {v0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
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

.method private f(Lcom/miui/calendar/alerts/entities/BaseAlert;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getEventType()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "type"

    .line 15
    .line 16
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/16 v2, 0xb

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/16 v4, 0x3c

    .line 30
    .line 31
    mul-int/2addr v3, v4

    .line 32
    const/16 v5, 0xc

    .line 33
    .line 34
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    add-int/2addr v3, v6

    .line 39
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const-string v6, "minute"

    .line 44
    .line 45
    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {p1}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getAlertAt()J

    .line 53
    .line 54
    .line 55
    move-result-wide v6

    .line 56
    invoke-virtual {v3, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    sub-int/2addr v6, v2

    .line 68
    mul-int/2addr v6, v4

    .line 69
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    sub-int/2addr v1, v2

    .line 78
    add-int/2addr v6, v1

    .line 79
    const/4 v1, 0x1

    .line 80
    if-ge v6, v1, :cond_0

    .line 81
    .line 82
    const-string v1, "0 - 1min"

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    const/4 v1, 0x5

    .line 86
    if-ge v6, v1, :cond_1

    .line 87
    .line 88
    const-string v1, "1 - 5min"

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    const/16 v1, 0xa

    .line 92
    .line 93
    if-ge v6, v1, :cond_2

    .line 94
    .line 95
    const-string v1, "5 - 10min"

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    const/16 v1, 0x1e

    .line 99
    .line 100
    if-ge v6, v1, :cond_3

    .line 101
    .line 102
    const-string v1, "10 - 30min"

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_3
    if-ge v6, v4, :cond_4

    .line 106
    .line 107
    const-string v1, "30min - 1h"

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_4
    const-string v1, "1h - "

    .line 111
    .line 112
    :goto_0
    const-string v2, "delay_minute"

    .line 113
    .line 114
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getAccountType()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-nez v1, :cond_5

    .line 126
    .line 127
    invoke-virtual {p1}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getAccountType()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    const-string v1, "account_type"

    .line 132
    .line 133
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    :cond_5
    const-string p1, "event_alert"

    .line 137
    .line 138
    invoke-static {p1, v0}, Lcom/miui/calendar/util/g0;->e(Ljava/lang/String;Ljava/util/Map;)V

    .line 139
    .line 140
    .line 141
    return-void
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

.method static g(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/calendar/alerts/c;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/android/calendar/alerts/c;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/miui/calendar/util/e;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    new-array v1, v1, [Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/4 v2, 0x0

    .line 16
    aput-object p0, v1, v2

    .line 17
    .line 18
    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 19
    .line 20
    .line 21
    return-void
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


# virtual methods
.method protected varargs c([Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object p1, p1, v0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/calendar/alerts/c;->a:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "com.android.calendar.ALERT_REMINDER_LATER"

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const-string v1, "ACTION_TYPE_REMINDER_LATER: alert item changed"

    .line 13
    .line 14
    const-string v2, "Cal:D:AlertTask"

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/calendar/alerts/c;->b:Lcom/miui/calendar/alerts/entities/BaseAlert;

    .line 19
    .line 20
    if-eqz v0, :cond_5

    .line 21
    .line 22
    invoke-direct {p0, p1, v0}, Lcom/android/calendar/alerts/c;->b(Landroid/content/Context;Lcom/miui/calendar/alerts/entities/BaseAlert;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-static {v2, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/alerts/c;->b:Lcom/miui/calendar/alerts/entities/BaseAlert;

    .line 35
    .line 36
    iget v1, p0, Lcom/android/calendar/alerts/c;->c:I

    .line 37
    .line 38
    invoke-virtual {v0, p1, v1}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getAdapter(Landroid/content/Context;I)Ln3/c;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ln3/c;->m()Lm3/a;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {p1}, Lm3/b;->e(Landroid/content/Context;)Lm3/b;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1, v0}, Lm3/b;->h(Lm3/a;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/alerts/c;->a:Ljava/lang/String;

    .line 55
    .line 56
    const-string v3, "com.android.calendar.CANCEL_REMINDER_LATER"

    .line 57
    .line 58
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/calendar/alerts/c;->b:Lcom/miui/calendar/alerts/entities/BaseAlert;

    .line 65
    .line 66
    if-eqz v0, :cond_5

    .line 67
    .line 68
    invoke-direct {p0, p1, v0}, Lcom/android/calendar/alerts/c;->b(Landroid/content/Context;Lcom/miui/calendar/alerts/entities/BaseAlert;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    invoke-static {v2, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 78
    .line 79
    return-object p1

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/alerts/c;->b:Lcom/miui/calendar/alerts/entities/BaseAlert;

    .line 81
    .line 82
    const/4 v1, 0x3

    .line 83
    invoke-virtual {v0, p1, v1}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getAdapter(Landroid/content/Context;I)Ln3/c;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Ln3/c;->m()Lm3/a;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {p1}, Lm3/b;->e(Landroid/content/Context;)Lm3/b;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p1, v0}, Lm3/b;->h(Lm3/a;)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_3
    invoke-static {p1}, Lcom/android/calendar/settings/j;->m(Landroid/content/Context;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-nez v0, :cond_4

    .line 104
    .line 105
    const-string p1, "updateAlerts(): alert setting is OFF"

    .line 106
    .line 107
    invoke-static {v2, p1}, Lcom/miui/calendar/util/z;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 111
    .line 112
    return-object p1

    .line 113
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/calendar/alerts/c;->d(Landroid/content/Context;)V

    .line 114
    .line 115
    .line 116
    :cond_5
    :goto_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 117
    .line 118
    return-object p1
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

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/calendar/alerts/c;->c([Landroid/content/Context;)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
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

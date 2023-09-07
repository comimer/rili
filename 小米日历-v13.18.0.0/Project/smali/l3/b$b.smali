.class Ll3/b$b;
.super Landroid/os/AsyncTask;
.source "CalendarAlarmUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ll3/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ll3/b$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    const-string v0, "Cal:D:CalendarAlarmUtils"

    .line 2
    .line 3
    const-string v1, "rescheduleAlarm()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-string v1, "alarm"

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    move-object v3, v1

    .line 23
    check-cast v3, Landroid/app/AlarmManager;

    .line 24
    .line 25
    new-instance v1, Landroid/content/Intent;

    .line 26
    .line 27
    const-class v4, Lcom/miui/calendar/alarm/CalendarAlarmReceiver;

    .line 28
    .line 29
    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    .line 31
    .line 32
    const-string v4, "com.miui.action.CALENDARALARM"

    .line 33
    .line 34
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    const/high16 v5, 0xc000000

    .line 39
    .line 40
    invoke-static {v2, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    invoke-virtual {v3, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Ll3/c;->a()[Ll3/a;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 52
    .line 53
    .line 54
    move-result-wide v7

    .line 55
    array-length v9, v6

    .line 56
    const-wide/16 v10, -0x1

    .line 57
    .line 58
    move v14, v4

    .line 59
    move-wide v12, v10

    .line 60
    :goto_0
    if-ge v14, v9, :cond_2

    .line 61
    .line 62
    aget-object v15, v6, v14

    .line 63
    .line 64
    invoke-interface {v15, v2, v7, v8}, Ll3/a;->b(Landroid/content/Context;J)J

    .line 65
    .line 66
    .line 67
    move-result-wide v15

    .line 68
    cmp-long v17, v15, v7

    .line 69
    .line 70
    if-lez v17, :cond_1

    .line 71
    .line 72
    cmp-long v17, v12, v10

    .line 73
    .line 74
    if-eqz v17, :cond_0

    .line 75
    .line 76
    cmp-long v17, v15, v12

    .line 77
    .line 78
    if-gez v17, :cond_1

    .line 79
    .line 80
    :cond_0
    move-wide v12, v15

    .line 81
    :cond_1
    add-int/lit8 v14, v14, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    cmp-long v6, v12, v10

    .line 85
    .line 86
    if-eqz v6, :cond_3

    .line 87
    .line 88
    new-instance v6, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v7, "rescheduleAlarm(): reminder:"

    .line 94
    .line 95
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-static {v12, v13}, Lcom/android/calendar/common/Utils;->T(J)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    invoke-static {v0, v6}, Lcom/miui/calendar/util/z;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const-string v0, "reminder_millis"

    .line 113
    .line 114
    invoke-virtual {v1, v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 115
    .line 116
    .line 117
    invoke-static {v2, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    const/4 v4, 0x1

    .line 122
    move-wide v5, v12

    .line 123
    invoke-static/range {v2 .. v7}, Lo1/c;->a(Landroid/content/Context;Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_3
    const-string v1, "rescheduleAlarm(): no upcoming reminder"

    .line 128
    .line 129
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :goto_1
    const/4 v0, 0x0

    .line 133
    return-object v0
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

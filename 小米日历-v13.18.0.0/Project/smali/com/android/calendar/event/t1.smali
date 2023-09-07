.class public Lcom/android/calendar/event/t1;
.super Landroid/os/AsyncTask;
.source "QueryEventIDAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/t1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private a:J

.field private b:Lcom/android/calendar/event/t1$a;


# direct methods
.method public constructor <init>(JLcom/android/calendar/event/t1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/calendar/event/t1;->a:J

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/calendar/event/t1;->b:Lcom/android/calendar/event/t1$a;

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
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 10

    .line 1
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/miui/calendar/util/p0;->d(Landroid/content/Context;)Lcom/miui/calendar/util/p0;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget-object v0, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/miui/calendar/util/p0;->u(Landroid/net/Uri;)Lcom/miui/calendar/util/p0;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "event_id"

    .line 16
    .line 17
    const-string v1, "value"

    .line 18
    .line 19
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Lcom/miui/calendar/util/p0;->r([Ljava/lang/String;)Lcom/miui/calendar/util/p0;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/4 v0, 0x2

    .line 28
    new-array v1, v0, [Ljava/lang/Class;

    .line 29
    .line 30
    const-class v2, Ljava/lang/Integer;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    aput-object v2, v1, v3

    .line 34
    .line 35
    const-class v2, Ljava/lang/String;

    .line 36
    .line 37
    const/4 v4, 0x1

    .line 38
    aput-object v2, v1, v4

    .line 39
    .line 40
    invoke-virtual {p1, v1}, Lcom/miui/calendar/util/p0;->t([Ljava/lang/Class;)Lcom/miui/calendar/util/p0;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string v1, "(name=? ) AND (value like ?)"

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Lcom/miui/calendar/util/p0;->s(Ljava/lang/String;)Lcom/miui/calendar/util/p0;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    new-array v0, v0, [Ljava/lang/String;

    .line 51
    .line 52
    const-string v1, "travel_info"

    .line 53
    .line 54
    aput-object v1, v0, v3

    .line 55
    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v2, "%"

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-wide v5, p0, Lcom/android/calendar/event/t1;->a:J

    .line 67
    .line 68
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    aput-object v1, v0, v4

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Lcom/miui/calendar/util/p0;->o([Ljava/lang/String;)Lcom/miui/calendar/util/p0;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lcom/miui/calendar/util/p0;->i()Lcom/miui/calendar/util/p0$b;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1}, Lcom/miui/calendar/util/p0$b;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_1

    .line 97
    .line 98
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Lcom/miui/calendar/util/p0$c;

    .line 103
    .line 104
    invoke-virtual {v0, v3}, Lcom/miui/calendar/util/p0$c;->e(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    int-to-long v1, v1

    .line 113
    invoke-virtual {v0, v4}, Lcom/miui/calendar/util/p0$c;->c(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    .line 118
    .line 119
    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-wide v6, p0, Lcom/android/calendar/event/t1;->a:J

    .line 123
    .line 124
    const-string v0, "sms_millis"

    .line 125
    .line 126
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 127
    .line 128
    .line 129
    move-result-wide v8

    .line 130
    cmp-long v0, v6, v8

    .line 131
    .line 132
    if-nez v0, :cond_0

    .line 133
    .line 134
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 135
    .line 136
    .line 137
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    return-object p1

    .line 139
    :catch_0
    move-exception v0

    .line 140
    const-string v1, "Cal:D:SmsIDToEventIDAsyncTask"

    .line 141
    .line 142
    const-string v2, "find event id error"

    .line 143
    .line 144
    invoke-static {v1, v2, v0}, Lcom/miui/calendar/util/z;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_1
    const/4 p1, 0x0

    .line 149
    return-object p1
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

.method protected b(Ljava/lang/Long;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/calendar/event/t1;->b:Lcom/android/calendar/event/t1$a;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    invoke-interface {v0, v1, v2}, Lcom/android/calendar/event/t1$a;->b(J)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/android/calendar/event/t1;->b:Lcom/android/calendar/event/t1$a;

    .line 17
    .line 18
    invoke-interface {p1}, Lcom/android/calendar/event/t1$a;->a()V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
    .line 22
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/t1;->a([Ljava/lang/Void;)Ljava/lang/Long;

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

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Long;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/t1;->b(Ljava/lang/Long;)V

    .line 4
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

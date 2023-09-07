.class public abstract Lcom/miui/calendar/job/a;
.super Landroid/app/job/JobService;
.source "BaseJobService.java"


# instance fields
.field private a:Ld4/a;


# direct methods
.method public constructor <init>(Ld4/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/miui/calendar/job/a;->a:Ld4/a;

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

.method private b(Landroid/app/job/JobParameters;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/job/a;->a:Ld4/a;

    .line 2
    .line 3
    iget-object v0, v0, Ld4/a;->f:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->isOverrideDeadlineExpired()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v1, "strvalue"

    .line 26
    .line 27
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object v1, p0, Lcom/miui/calendar/job/a;->a:Ld4/a;

    .line 35
    .line 36
    iget-object v1, v1, Ld4/a;->g:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {p0, v1}, Ld4/b;->a(Landroid/content/Context;Ljava/lang/String;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v1

    .line 42
    const-wide/16 v3, -0x1

    .line 43
    .line 44
    cmp-long v3, v1, v3

    .line 45
    .line 46
    if-nez v3, :cond_1

    .line 47
    .line 48
    const/4 v1, -0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 51
    .line 52
    .line 53
    move-result-wide v3

    .line 54
    sub-long/2addr v3, v1

    .line 55
    const-wide/32 v1, 0x36ee80

    .line 56
    .line 57
    .line 58
    div-long/2addr v3, v1

    .line 59
    long-to-int v1, v3

    .line 60
    :goto_0
    iget-object v2, p0, Lcom/miui/calendar/job/a;->a:Ld4/a;

    .line 61
    .line 62
    iget-object v2, v2, Ld4/a;->h:Ljava/lang/String;

    .line 63
    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v4, "startJobTask(): start job after "

    .line 70
    .line 71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v4, " hour(s)(-1 for the first time)"

    .line 78
    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-static {v2, v3}, Lcom/miui/calendar/util/z;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 90
    .line 91
    .line 92
    move-result-wide v2

    .line 93
    iget-object p1, p0, Lcom/miui/calendar/job/a;->a:Ld4/a;

    .line 94
    .line 95
    iget-object p1, p1, Ld4/a;->g:Ljava/lang/String;

    .line 96
    .line 97
    invoke-static {p0, v2, v3, p1}, Ld4/b;->f(Landroid/content/Context;JLjava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    const-string v1, "interval"

    .line 105
    .line 106
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    const/16 v1, 0xb

    .line 114
    .line 115
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    const-string v1, "hour_of_day"

    .line 124
    .line 125
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    new-instance p1, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    const-string v1, "job_execute_v2_"

    .line 134
    .line 135
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget-object v1, p0, Lcom/miui/calendar/job/a;->a:Ld4/a;

    .line 139
    .line 140
    iget-object v1, v1, Ld4/a;->f:Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-static {p1, v0}, Lcom/miui/calendar/util/g0;->e(Ljava/lang/String;Ljava/util/Map;)V

    .line 150
    .line 151
    .line 152
    return-void
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
.method protected a(Landroid/app/job/JobParameters;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/job/a;->a:Ld4/a;

    .line 2
    .line 3
    iget-object v0, v0, Ld4/a;->h:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "finishJob()"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p1, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/miui/calendar/job/a;->a:Ld4/a;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-static {p0, p1, v0}, Ld4/b;->g(Landroid/content/Context;Ld4/a;Z)V

    .line 18
    .line 19
    .line 20
    return-void
    .line 21
    .line 22
.end method

.method abstract c(Landroid/content/Context;Landroid/app/job/JobParameters;)V
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/job/a;->a:Ld4/a;

    .line 2
    .line 3
    iget-object v0, v0, Ld4/a;->h:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "onStartJob(): isOverrideDeadlineExpired:"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->isOverrideDeadlineExpired()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, p1}, Lcom/miui/calendar/job/a;->b(Landroid/app/job/JobParameters;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0, v0, p1}, Lcom/miui/calendar/job/a;->c(Landroid/content/Context;Landroid/app/job/JobParameters;)V

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    return p1
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

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/miui/calendar/job/a;->a:Ld4/a;

    .line 2
    .line 3
    iget-object p1, p1, Ld4/a;->h:Ljava/lang/String;

    .line 4
    .line 5
    const-string v0, "onStopJob()"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/miui/calendar/util/z;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/miui/calendar/job/a;->a:Ld4/a;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-static {p0, p1, v0}, Ld4/b;->g(Landroid/content/Context;Ld4/a;Z)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    return p1
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

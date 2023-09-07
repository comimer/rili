.class public Lcom/miui/calendar/job/RemoteJobService;
.super Lcom/miui/calendar/job/a;
.source "RemoteJobService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/calendar/job/RemoteJobService$g;,
        Lcom/miui/calendar/job/RemoteJobService$h;
    }
.end annotation


# instance fields
.field private b:I

.field private c:I

.field private d:Ltc/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltc/a<",
            "Lokhttp3/b0;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ltc/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltc/a<",
            "Lokhttp3/b0;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ltc/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltc/a<",
            "Lokhttp3/b0;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ltc/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltc/a<",
            "Lokhttp3/b0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/miui/calendar/job/RemoteJobService;->h()Ld4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/miui/calendar/job/a;-><init>(Ld4/a;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/miui/calendar/job/RemoteJobService;->b:I

    .line 10
    .line 11
    iput v0, p0, Lcom/miui/calendar/job/RemoteJobService;->c:I

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

.method static synthetic d(Lcom/miui/calendar/job/RemoteJobService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/calendar/job/RemoteJobService;->b:I

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

.method static synthetic e(Lcom/miui/calendar/job/RemoteJobService;I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/miui/calendar/job/RemoteJobService;->b:I

    .line 2
    .line 3
    or-int/2addr p1, v0

    .line 4
    iput p1, p0, Lcom/miui/calendar/job/RemoteJobService;->b:I

    .line 5
    .line 6
    return p1
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

.method static synthetic f(Lcom/miui/calendar/job/RemoteJobService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/calendar/job/RemoteJobService;->c:I

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

.method static synthetic g(Lcom/miui/calendar/job/RemoteJobService;I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/miui/calendar/job/RemoteJobService;->c:I

    .line 2
    .line 3
    or-int/2addr p1, v0

    .line 4
    iput p1, p0, Lcom/miui/calendar/job/RemoteJobService;->c:I

    .line 5
    .line 6
    return p1
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

.method public static h()Ld4/a;
    .locals 3

    .line 1
    new-instance v0, Ld4/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ld4/a;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/miui/calendar/job/RemoteJobService;

    .line 7
    .line 8
    iput-object v1, v0, Ld4/a;->a:Ljava/lang/Class;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    iput v1, v0, Ld4/a;->b:I

    .line 12
    .line 13
    const-wide/32 v1, 0xa4cb800

    .line 14
    .line 15
    .line 16
    iput-wide v1, v0, Ld4/a;->c:J

    .line 17
    .line 18
    const-wide/32 v1, 0xf731400

    .line 19
    .line 20
    .line 21
    iput-wide v1, v0, Ld4/a;->d:J

    .line 22
    .line 23
    const-wide/32 v1, 0x1499700

    .line 24
    .line 25
    .line 26
    iput-wide v1, v0, Ld4/a;->e:J

    .line 27
    .line 28
    const-string v1, "remote"

    .line 29
    .line 30
    iput-object v1, v0, Ld4/a;->f:Ljava/lang/String;

    .line 31
    .line 32
    const-string v1, "last_remote_job_millis"

    .line 33
    .line 34
    iput-object v1, v0, Ld4/a;->g:Ljava/lang/String;

    .line 35
    .line 36
    const-string v1, "Cal:D:RemoteJobService"

    .line 37
    .line 38
    iput-object v1, v0, Ld4/a;->h:Ljava/lang/String;

    .line 39
    .line 40
    return-object v0
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

.method public static i(Landroid/content/Context;Lcom/miui/calendar/job/RemoteJobService$g;)Ltc/a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/miui/calendar/job/RemoteJobService$g;",
            ")",
            "Ltc/a<",
            "Lokhttp3/b0;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "Cal:D:RemoteJobService"

    .line 2
    .line 3
    const-string v1, "queryThirdPartyJob()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lu1/d;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    new-instance v4, Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {v2, v3}, Lcom/miui/calendar/util/e0;->h(J)J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    const-wide/16 v5, 0x3e8

    .line 30
    .line 31
    div-long/2addr v2, v5

    .line 32
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const-string v3, "time"

    .line 37
    .line 38
    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    invoke-static {p0, v4}, Lcom/miui/calendar/util/l0;->a(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/Map;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {}, Lu1/d;->d()Lu1/a;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    new-instance v5, Lcom/miui/calendar/job/RemoteJobService$h;

    .line 50
    .line 51
    invoke-direct {v5, p0, p1}, Lcom/miui/calendar/job/RemoteJobService$h;-><init>(Landroid/content/Context;Lcom/miui/calendar/job/RemoteJobService$g;)V

    .line 52
    .line 53
    .line 54
    new-instance p0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string p1, "start query white list, params:"

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-static {v0, p0}, Lcom/miui/calendar/util/z;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-interface {v3, v1, v2}, Lu1/a;->l(Ljava/lang/String;Ljava/util/Map;)Ltc/a;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    new-instance p1, Lu1/b;

    .line 79
    .line 80
    invoke-direct {p1, v5}, Lu1/b;-><init>(Lu1/b$a;)V

    .line 81
    .line 82
    .line 83
    invoke-interface {p0, p1}, Ltc/a;->q(Ltc/b;)V

    .line 84
    .line 85
    .line 86
    return-object p0
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


# virtual methods
.method c(Landroid/content/Context;Landroid/app/job/JobParameters;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/miui/calendar/util/y;->i(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/miui/calendar/util/z0;->n(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lcom/miui/calendar/job/RemoteJobService$a;

    .line 14
    .line 15
    invoke-direct {v0, p0, p2}, Lcom/miui/calendar/job/RemoteJobService$a;-><init>(Lcom/miui/calendar/job/RemoteJobService;Landroid/app/job/JobParameters;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0}, Lz3/j;->k(Landroid/content/Context;Lcom/miui/calendar/job/RemoteJobService$g;)Ltc/a;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/miui/calendar/job/RemoteJobService;->d:Ltc/a;

    .line 23
    .line 24
    new-instance v0, Lcom/miui/calendar/job/RemoteJobService$b;

    .line 25
    .line 26
    invoke-direct {v0, p0, p2}, Lcom/miui/calendar/job/RemoteJobService$b;-><init>(Lcom/miui/calendar/job/RemoteJobService;Landroid/app/job/JobParameters;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v0}, Lz3/j;->l(Landroid/content/Context;Lcom/miui/calendar/job/RemoteJobService$g;)Ltc/a;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/miui/calendar/job/RemoteJobService;->e:Ltc/a;

    .line 34
    .line 35
    new-instance v0, Lcom/miui/calendar/job/RemoteJobService$c;

    .line 36
    .line 37
    invoke-direct {v0, p0, p2}, Lcom/miui/calendar/job/RemoteJobService$c;-><init>(Lcom/miui/calendar/job/RemoteJobService;Landroid/app/job/JobParameters;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v0}, Lcom/miui/calendar/job/RemoteJobService;->i(Landroid/content/Context;Lcom/miui/calendar/job/RemoteJobService$g;)Ltc/a;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/miui/calendar/job/RemoteJobService;->g:Ltc/a;

    .line 45
    .line 46
    new-instance v0, Lcom/miui/calendar/job/RemoteJobService$d;

    .line 47
    .line 48
    invoke-direct {v0, p0, p2}, Lcom/miui/calendar/job/RemoteJobService$d;-><init>(Lcom/miui/calendar/job/RemoteJobService;Landroid/app/job/JobParameters;)V

    .line 49
    .line 50
    .line 51
    invoke-static {p1, v0}, Lcom/miui/calendar/util/GuideUtils;->f(Landroid/content/Context;Lcom/miui/calendar/job/RemoteJobService$g;)Ltc/a;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Lcom/miui/calendar/job/RemoteJobService;->f:Ltc/a;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-static {p1}, Lcom/miui/calendar/util/z0;->n(Landroid/content/Context;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    new-instance v0, Lcom/miui/calendar/job/RemoteJobService$e;

    .line 65
    .line 66
    invoke-direct {v0, p0, p2}, Lcom/miui/calendar/job/RemoteJobService$e;-><init>(Lcom/miui/calendar/job/RemoteJobService;Landroid/app/job/JobParameters;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p1, v0}, Lz3/j;->k(Landroid/content/Context;Lcom/miui/calendar/job/RemoteJobService$g;)Ltc/a;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iput-object v0, p0, Lcom/miui/calendar/job/RemoteJobService;->d:Ltc/a;

    .line 74
    .line 75
    new-instance v0, Lcom/miui/calendar/job/RemoteJobService$f;

    .line 76
    .line 77
    invoke-direct {v0, p0, p2}, Lcom/miui/calendar/job/RemoteJobService$f;-><init>(Lcom/miui/calendar/job/RemoteJobService;Landroid/app/job/JobParameters;)V

    .line 78
    .line 79
    .line 80
    invoke-static {p1, v0}, Lz3/j;->l(Landroid/content/Context;Lcom/miui/calendar/job/RemoteJobService$g;)Ltc/a;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iput-object p1, p0, Lcom/miui/calendar/job/RemoteJobService;->e:Ltc/a;

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {p0, p2}, Lcom/miui/calendar/job/a;->a(Landroid/app/job/JobParameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catch_0
    move-exception p1

    .line 92
    const-string v0, "Cal:D:RemoteJobService"

    .line 93
    .line 94
    const-string v1, "startJob"

    .line 95
    .line 96
    invoke-static {v0, v1, p1}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, p2}, Lcom/miui/calendar/job/a;->a(Landroid/app/job/JobParameters;)V

    .line 100
    .line 101
    .line 102
    :goto_0
    return-void
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

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/job/RemoteJobService;->d:Ltc/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "Cal:D:RemoteJobService"

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v0, "stop query holiday"

    .line 9
    .line 10
    invoke-static {v2, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/miui/calendar/job/RemoteJobService;->d:Ltc/a;

    .line 14
    .line 15
    invoke-interface {v0}, Ltc/a;->cancel()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/miui/calendar/job/RemoteJobService;->d:Ltc/a;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/miui/calendar/job/RemoteJobService;->e:Ltc/a;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const-string v0, "stop query reminder"

    .line 25
    .line 26
    invoke-static {v2, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/miui/calendar/job/RemoteJobService;->e:Ltc/a;

    .line 30
    .line 31
    invoke-interface {v0}, Ltc/a;->cancel()V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/miui/calendar/job/RemoteJobService;->e:Ltc/a;

    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lcom/miui/calendar/job/RemoteJobService;->g:Ltc/a;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    const-string v0, "stop query third party config"

    .line 41
    .line 42
    invoke-static {v2, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/miui/calendar/job/RemoteJobService;->g:Ltc/a;

    .line 46
    .line 47
    invoke-interface {v0}, Ltc/a;->cancel()V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Lcom/miui/calendar/job/RemoteJobService;->g:Ltc/a;

    .line 51
    .line 52
    :cond_2
    iget-object v0, p0, Lcom/miui/calendar/job/RemoteJobService;->f:Ltc/a;

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    const-string v0, "stop query guide setting"

    .line 57
    .line 58
    invoke-static {v2, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/miui/calendar/job/RemoteJobService;->f:Ltc/a;

    .line 62
    .line 63
    invoke-interface {v0}, Ltc/a;->cancel()V

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, Lcom/miui/calendar/job/RemoteJobService;->f:Ltc/a;

    .line 67
    .line 68
    :cond_3
    invoke-super {p0, p1}, Lcom/miui/calendar/job/a;->onStopJob(Landroid/app/job/JobParameters;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    return p1
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

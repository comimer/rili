.class public Lcom/miui/calendar/job/LimitJobService;
.super Lcom/miui/calendar/job/a;
.source "LimitJobService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/miui/calendar/job/LimitJobService;->d()Ld4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/miui/calendar/job/a;-><init>(Ld4/a;)V

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
.end method

.method public static d()Ld4/a;
    .locals 3

    .line 1
    new-instance v0, Ld4/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ld4/a;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/miui/calendar/job/LimitJobService;

    .line 7
    .line 8
    iput-object v1, v0, Ld4/a;->a:Ljava/lang/Class;

    .line 9
    .line 10
    const/4 v1, 0x2

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
    const-string v1, "limit"

    .line 29
    .line 30
    iput-object v1, v0, Ld4/a;->f:Ljava/lang/String;

    .line 31
    .line 32
    const-string v1, "last_limit_job_millis"

    .line 33
    .line 34
    iput-object v1, v0, Ld4/a;->g:Ljava/lang/String;

    .line 35
    .line 36
    const-string v1, "Cal:D:LimitJobService"

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


# virtual methods
.method protected c(Landroid/content/Context;Landroid/app/job/JobParameters;)V
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
    new-instance v0, Lcom/miui/calendar/job/LimitJobService$a;

    .line 14
    .line 15
    invoke-direct {v0, p0, p2}, Lcom/miui/calendar/job/LimitJobService$a;-><init>(Lcom/miui/calendar/job/LimitJobService;Landroid/app/job/JobParameters;)V

    .line 16
    .line 17
    .line 18
    const-string v1, "job_scheduler"

    .line 19
    .line 20
    invoke-static {p1, v0, v1}, Lcom/miui/calendar/limit/a;->n(Landroid/content/Context;Lcom/miui/calendar/limit/a$a;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0, p2}, Lcom/miui/calendar/job/a;->a(Landroid/app/job/JobParameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p1

    .line 29
    const-string v0, "Cal:D:LimitJobService"

    .line 30
    .line 31
    const-string v1, "startJob"

    .line 32
    .line 33
    invoke-static {v0, v1, p1}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p2}, Lcom/miui/calendar/job/a;->a(Landroid/app/job/JobParameters;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/miui/calendar/limit/a;->m(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Lcom/miui/calendar/job/a;->onStopJob(Landroid/app/job/JobParameters;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    return p1
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

.class public Lcom/miui/calendar/job/DaysOffJobService;
.super Lcom/miui/calendar/job/a;
.source "DaysOffJobService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/miui/calendar/job/DaysOffJobService;->d()Ld4/a;

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
    const-class v1, Lcom/miui/calendar/job/DaysOffJobService;

    .line 7
    .line 8
    iput-object v1, v0, Ld4/a;->a:Ljava/lang/Class;

    .line 9
    .line 10
    const/16 v1, 0xd

    .line 11
    .line 12
    iput v1, v0, Ld4/a;->b:I

    .line 13
    .line 14
    const-wide/32 v1, 0x19bfcc00

    .line 15
    .line 16
    .line 17
    iput-wide v1, v0, Ld4/a;->c:J

    .line 18
    .line 19
    const-wide/32 v1, 0x240c8400

    .line 20
    .line 21
    .line 22
    iput-wide v1, v0, Ld4/a;->d:J

    .line 23
    .line 24
    const-wide/32 v1, 0x1499700

    .line 25
    .line 26
    .line 27
    iput-wide v1, v0, Ld4/a;->e:J

    .line 28
    .line 29
    const-string v1, "daysoff"

    .line 30
    .line 31
    iput-object v1, v0, Ld4/a;->f:Ljava/lang/String;

    .line 32
    .line 33
    const-string v1, "last_daysoff_job_millis"

    .line 34
    .line 35
    iput-object v1, v0, Ld4/a;->g:Ljava/lang/String;

    .line 36
    .line 37
    const-string v1, "Cal:D:DaysOffJobService"

    .line 38
    .line 39
    iput-object v1, v0, Ld4/a;->h:Ljava/lang/String;

    .line 40
    .line 41
    return-object v0
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
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/miui/calendar/util/z0;->n(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/miui/calendar/util/DaysOffUtils;->g(Landroid/content/Context;)Lcom/miui/calendar/util/DaysOffUtils;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "job"

    .line 12
    .line 13
    new-instance v2, Lcom/miui/calendar/job/DaysOffJobService$a;

    .line 14
    .line 15
    invoke-direct {v2, p0, p2}, Lcom/miui/calendar/job/DaysOffJobService$a;-><init>(Lcom/miui/calendar/job/DaysOffJobService;Landroid/app/job/JobParameters;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1, v1, v2}, Lcom/miui/calendar/util/DaysOffUtils;->c(Landroid/content/Context;Ljava/lang/String;Lcom/miui/calendar/util/DaysOffUtils$a;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0, p2}, Lcom/miui/calendar/job/a;->a(Landroid/app/job/JobParameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p1

    .line 27
    const-string v0, "Cal:D:DaysOffJobService"

    .line 28
    .line 29
    const-string v1, "startJob"

    .line 30
    .line 31
    invoke-static {v0, v1, p1}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p2}, Lcom/miui/calendar/job/a;->a(Landroid/app/job/JobParameters;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
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

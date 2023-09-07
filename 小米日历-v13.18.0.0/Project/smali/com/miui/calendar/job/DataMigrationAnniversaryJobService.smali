.class public Lcom/miui/calendar/job/DataMigrationAnniversaryJobService;
.super Lcom/miui/calendar/job/a;
.source "DataMigrationAnniversaryJobService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/miui/calendar/job/DataMigrationAnniversaryJobService;->d()Ld4/a;

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
    const-class v1, Lcom/miui/calendar/job/DataMigrationAnniversaryJobService;

    .line 7
    .line 8
    iput-object v1, v0, Ld4/a;->a:Ljava/lang/Class;

    .line 9
    .line 10
    const/16 v1, 0x64

    .line 11
    .line 12
    iput v1, v0, Ld4/a;->b:I

    .line 13
    .line 14
    const-wide/16 v1, 0x0

    .line 15
    .line 16
    iput-wide v1, v0, Ld4/a;->c:J

    .line 17
    .line 18
    iput-wide v1, v0, Ld4/a;->d:J

    .line 19
    .line 20
    const-string v1, "Cal:D:DataMigrationAnniversaryJobService"

    .line 21
    .line 22
    iput-object v1, v0, Ld4/a;->h:Ljava/lang/String;

    .line 23
    .line 24
    return-object v0
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


# virtual methods
.method protected a(Landroid/app/job/JobParameters;)V
    .locals 2

    .line 1
    const-string v0, "Cal:D:DataMigrationAnniversaryJobService"

    .line 2
    .line 3
    const-string v1, "finishJob()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 10
    .line 11
    .line 12
    return-void
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

.method c(Landroid/content/Context;Landroid/app/job/JobParameters;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/miui/calendar/job/DataMigrationAnniversaryJobService$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/miui/calendar/job/DataMigrationAnniversaryJobService$a;-><init>(Lcom/miui/calendar/job/DataMigrationAnniversaryJobService;Landroid/content/Context;Landroid/app/job/JobParameters;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 7
    .line 8
    .line 9
    return-void
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

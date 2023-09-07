.class public Lcom/miui/calendar/util/e;
.super Ljava/lang/Object;
.source "BackgroundUtils.java"


# static fields
.field public static final a:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput v0, Lcom/miui/calendar/util/e;->b:I

    .line 10
    .line 11
    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 12
    .line 13
    add-int/lit8 v1, v0, -0x1

    .line 14
    .line 15
    const/4 v2, 0x4

    .line 16
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x2

    .line 21
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    mul-int/2addr v0, v2

    .line 26
    const/4 v11, 0x1

    .line 27
    add-int/2addr v0, v11

    .line 28
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 29
    .line 30
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 31
    .line 32
    const/16 v1, 0x80

    .line 33
    .line 34
    invoke-direct {v7, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 35
    .line 36
    .line 37
    new-instance v8, Lcom/miui/calendar/util/e$a;

    .line 38
    .line 39
    invoke-direct {v8}, Lcom/miui/calendar/util/e$a;-><init>()V

    .line 40
    .line 41
    .line 42
    new-instance v9, Lcom/miui/calendar/util/e$b;

    .line 43
    .line 44
    invoke-direct {v9}, Lcom/miui/calendar/util/e$b;-><init>()V

    .line 45
    .line 46
    .line 47
    const-wide/16 v4, 0x1e

    .line 48
    .line 49
    move-object v1, v10

    .line 50
    move v2, v3

    .line 51
    move v3, v0

    .line 52
    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 53
    .line 54
    .line 55
    sput-object v10, Lcom/miui/calendar/util/e;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 56
    .line 57
    invoke-virtual {v10, v11}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 58
    .line 59
    .line 60
    return-void
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

.method public static a(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    sget-object v0, Lcom/miui/calendar/util/e;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    const-string v0, "Cal:D:BackgroundUtils"

    .line 12
    .line 13
    const-string v1, "doInBackground"

    .line 14
    .line 15
    invoke-static {v0, v1, p0}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
    .line 19
    .line 20
    .line 21
    .line 22
.end method

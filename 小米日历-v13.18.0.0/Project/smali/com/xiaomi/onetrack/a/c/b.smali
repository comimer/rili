.class public Lcom/xiaomi/onetrack/a/c/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/a/c/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "AdMonitorUploadTimer"

.field private static final b:I = 0xa

.field private static volatile c:Lcom/xiaomi/onetrack/a/c/b;


# instance fields
.field private d:Lcom/xiaomi/onetrack/a/c/b$a;

.field private e:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/xiaomi/onetrack/a/c/c;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/a/c/c;-><init>(Lcom/xiaomi/onetrack/a/c/b;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/xiaomi/onetrack/a/c/b;->e:Landroid/content/BroadcastReceiver;

    .line 10
    .line 11
    new-instance v0, Landroid/os/HandlerThread;

    .line 12
    .line 13
    const-string v1, "onetrack_ad_monitor_uploader"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lcom/xiaomi/onetrack/a/c/b$a;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-direct {v1, v0}, Lcom/xiaomi/onetrack/a/c/b$a;-><init>(Landroid/os/Looper;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/xiaomi/onetrack/a/c/b;->d:Lcom/xiaomi/onetrack/a/c/b$a;

    .line 31
    .line 32
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-direct {p0, v0}, Lcom/xiaomi/onetrack/a/c/b;->a(Landroid/content/Context;)V

    .line 37
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

.method static synthetic a(Lcom/xiaomi/onetrack/a/c/b;)Lcom/xiaomi/onetrack/a/c/b$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/onetrack/a/c/b;->d:Lcom/xiaomi/onetrack/a/c/b$a;

    return-object p0
.end method

.method public static a()Lcom/xiaomi/onetrack/a/c/b;
    .locals 2

    .line 2
    sget-object v0, Lcom/xiaomi/onetrack/a/c/b;->c:Lcom/xiaomi/onetrack/a/c/b;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/xiaomi/onetrack/a/c/b;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/xiaomi/onetrack/a/c/b;->c:Lcom/xiaomi/onetrack/a/c/b;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/xiaomi/onetrack/a/c/b;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/a/c/b;-><init>()V

    sput-object v1, Lcom/xiaomi/onetrack/a/c/b;->c:Lcom/xiaomi/onetrack/a/c/b;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaomi/onetrack/a/c/b;->c:Lcom/xiaomi/onetrack/a/c/b;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 8
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/xiaomi/onetrack/a/c/b;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerNetReceiver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AdMonitorUploadTimer"

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/c/b;->d:Lcom/xiaomi/onetrack/a/c/b$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/a/c/b$a;->a(I)V

    .line 5
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

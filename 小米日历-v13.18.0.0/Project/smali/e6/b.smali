.class public Le6/b;
.super Ljava/lang/Object;
.source "Debugger.java"


# static fields
.field private static volatile d:Le6/b; = null

.field public static e:Z = false


# instance fields
.field private a:Landroid/content/Context;

.field private volatile b:Z

.field private c:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Le6/b;->b:Z

    .line 6
    .line 7
    new-instance v0, Le6/b$a;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Le6/b$a;-><init>(Le6/b;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Le6/b;->c:Landroid/content/BroadcastReceiver;

    .line 13
    .line 14
    invoke-static {p1}, Lf6/b;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Le6/b;->a:Landroid/content/Context;

    .line 19
    .line 20
    return-void
    .line 21
    .line 22
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Le6/b;
    .locals 2

    .line 1
    const-class v0, Le6/b;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Le6/b;->d:Le6/b;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Le6/b;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Le6/b;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Le6/b;->d:Le6/b;

    .line 14
    .line 15
    :cond_0
    sget-object p0, Le6/b;->d:Le6/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-object p0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0

    .line 21
    throw p0
    .line 22
.end method


# virtual methods
.method public b()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Le6/b;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Le6/b;->b:Z

    .line 8
    .line 9
    new-instance v0, Landroid/content/IntentFilter;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "com.xiaomi.analytics.intent.DEBUG_ON"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v1, "com.xiaomi.analytics.intent.DEBUG_OFF"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v1, "com.xiaomi.analytics.intent.STAGING_ON"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v1, "com.xiaomi.analytics.intent.STAGING_OFF"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Le6/b;->a:Landroid/content/Context;

    .line 35
    .line 36
    iget-object v2, p0, Le6/b;->c:Landroid/content/BroadcastReceiver;

    .line 37
    .line 38
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    return-void
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

.class Lcom/xiaomi/onetrack/util/oaid/helpers/LenovoDeviceIDHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/util/oaid/helpers/e;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/util/oaid/helpers/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/LenovoDeviceIDHelper$1;->a:Lcom/xiaomi/onetrack/util/oaid/helpers/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/LenovoDeviceIDHelper$1;->a:Lcom/xiaomi/onetrack/util/oaid/helpers/e;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/xiaomi/onetrack/util/oaid/helpers/e;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 4
    .line 5
    const-wide/16 v0, 0x1

    .line 6
    .line 7
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    .line 9
    invoke-virtual {p1, p2, v0, v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
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

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

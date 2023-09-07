.class public Lcom/xiaomi/phonenum/utils/ServiceBindWaiter;
.super Ljava/lang/Object;
.source "ServiceBindWaiter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindTimeoutException;,
        Lcom/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindFailedException;,
        Lcom/xiaomi/phonenum/utils/ServiceBindWaiter$b;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Landroid/content/Intent;)Lcom/xiaomi/phonenum/utils/ServiceBindWaiter$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindTimeoutException;,
            Lcom/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindFailedException;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x1388

    .line 2
    .line 3
    invoke-static {p0, p1, v0, v1}, Lcom/xiaomi/phonenum/utils/ServiceBindWaiter;->b(Landroid/content/Context;Landroid/content/Intent;J)Lcom/xiaomi/phonenum/utils/ServiceBindWaiter$b;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
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

.method public static b(Landroid/content/Context;Landroid/content/Intent;J)Lcom/xiaomi/phonenum/utils/ServiceBindWaiter$b;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindFailedException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindTimeoutException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-array v2, v1, [Landroid/os/IBinder;

    .line 8
    .line 9
    new-instance v3, Lcom/xiaomi/phonenum/utils/ServiceBindWaiter$a;

    .line 10
    .line 11
    invoke-direct {v3, v2, v0}, Lcom/xiaomi/phonenum/utils/ServiceBindWaiter$a;-><init>([Landroid/os/IBinder;Ljava/util/concurrent/CountDownLatch;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 21
    .line 22
    invoke-virtual {v0, p2, p3, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    new-instance p0, Lcom/xiaomi/phonenum/utils/ServiceBindWaiter$b;

    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    aget-object p1, v2, p1

    .line 32
    .line 33
    invoke-direct {p0, v3, p1}, Lcom/xiaomi/phonenum/utils/ServiceBindWaiter$b;-><init>(Landroid/content/ServiceConnection;Landroid/os/IBinder;)V

    .line 34
    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_0
    new-instance p0, Lcom/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindTimeoutException;

    .line 38
    .line 39
    invoke-direct {p0}, Lcom/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindTimeoutException;-><init>()V

    .line 40
    .line 41
    .line 42
    throw p0

    .line 43
    :cond_1
    new-instance p0, Lcom/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindFailedException;

    .line 44
    .line 45
    new-instance p2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string p3, "can not bind to service intent="

    .line 51
    .line 52
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {p0, p1}, Lcom/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindFailedException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p0
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
.end method

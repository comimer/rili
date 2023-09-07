.class Lcom/xiaomi/passport/h$b$a;
.super Ljava/lang/Object;
.source "SecurityDeviceSignManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/h$b;->b(Lcom/xiaomi/passport/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/passport/e;

.field final synthetic b:Lcom/xiaomi/passport/h$b;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/h$b;Lcom/xiaomi/passport/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/passport/h$b$a;->b:Lcom/xiaomi/passport/h$b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/xiaomi/passport/h$b$a;->a:Lcom/xiaomi/passport/e;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/passport/h$b$a;->a:Lcom/xiaomi/passport/e;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/xiaomi/passport/h$b$a;->b:Lcom/xiaomi/passport/h$b;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/xiaomi/passport/h$d;->b:Lcom/xiaomi/passport/d;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/xiaomi/passport/h$b;->c:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v3, p0, Lcom/xiaomi/passport/h$b$a;->b:Lcom/xiaomi/passport/h$b;

    .line 14
    .line 15
    iget-object v4, v3, Lcom/xiaomi/passport/h$b;->d:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v3, v3, Lcom/xiaomi/passport/h$b;->e:Landroid/os/Bundle;

    .line 18
    .line 19
    invoke-interface {v0, v2, v1, v4, v3}, Lcom/xiaomi/passport/e;->u(Lcom/xiaomi/passport/d;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    iget-object v1, p0, Lcom/xiaomi/passport/h$b$a;->b:Lcom/xiaomi/passport/h$b;

    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/xiaomi/passport/h$b;->e(Lcom/xiaomi/passport/h$b;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/xiaomi/passport/h$b$a;->b:Lcom/xiaomi/passport/h$b;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/xiaomi/passport/h$d;->d()V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
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

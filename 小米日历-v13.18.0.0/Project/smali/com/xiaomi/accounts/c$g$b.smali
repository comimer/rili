.class Lcom/xiaomi/accounts/c$g$b;
.super Lcom/xiaomi/accounts/h$a;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accounts/c$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/accounts/c$g;


# direct methods
.method private constructor <init>(Lcom/xiaomi/accounts/c$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/accounts/c$g$b;->a:Lcom/xiaomi/accounts/c$g;

    invoke-direct {p0}, Lcom/xiaomi/accounts/h$a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/accounts/c$g;Lcom/xiaomi/accounts/d;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/xiaomi/accounts/c$g$b;-><init>(Lcom/xiaomi/accounts/c$g;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "intent"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/Intent;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/xiaomi/accounts/c$g$b;->a:Lcom/xiaomi/accounts/c$g;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/xiaomi/accounts/c$g;->d:Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/xiaomi/accounts/c$g$b;->a:Lcom/xiaomi/accounts/c$g;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/xiaomi/accounts/c$g;->d:Ljava/lang/ref/WeakReference;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Landroid/app/Activity;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string v0, "retry"

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    :try_start_0
    iget-object p1, p0, Lcom/xiaomi/accounts/c$g$b;->a:Lcom/xiaomi/accounts/c$g;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/xiaomi/accounts/c$g;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/accounts/c$g$b;->a:Lcom/xiaomi/accounts/c$g;

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Lcom/xiaomi/accounts/c$g;->f(Landroid/os/Bundle;)V

    .line 52
    .line 53
    .line 54
    :catch_0
    :goto_0
    return-void
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
.end method

.method public b(ILjava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/xiaomi/accounts/c$g$b;->a:Lcom/xiaomi/accounts/c$g;

    .line 5
    .line 6
    const/4 p2, 0x1

    .line 7
    invoke-virtual {p1, p2}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/accounts/c$g$b;->a:Lcom/xiaomi/accounts/c$g;

    .line 12
    .line 13
    iget-object v1, v0, Lcom/xiaomi/accounts/c$g;->e:Lcom/xiaomi/accounts/c;

    .line 14
    .line 15
    invoke-static {v1, p1, p2}, Lcom/xiaomi/accounts/c;->f(Lcom/xiaomi/accounts/c;ILjava/lang/String;)Ljava/lang/Exception;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {v0, p1}, Lcom/xiaomi/accounts/c$g;->a(Lcom/xiaomi/accounts/c$g;Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    return-void
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

.method public e()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

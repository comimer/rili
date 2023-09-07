.class public Lcom/xiaomi/accounts/c$h$b;
.super Lcom/xiaomi/accounts/h$a;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accounts/c$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/accounts/c$h;


# direct methods
.method protected constructor <init>(Lcom/xiaomi/accounts/c$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/accounts/c$h$b;->a:Lcom/xiaomi/accounts/c$h;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/xiaomi/accounts/h$a;-><init>()V

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
.method public a(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/accounts/c$h$b;->a:Lcom/xiaomi/accounts/c$h;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/xiaomi/accounts/c$h;->c(Landroid/os/Bundle;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/accounts/c$h$b;->a:Lcom/xiaomi/accounts/c$h;

    .line 11
    .line 12
    invoke-static {v0, p1}, Lcom/xiaomi/accounts/c$h;->a(Lcom/xiaomi/accounts/c$h;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catch_0
    const/4 p1, 0x5

    .line 17
    const-string v0, "no result in response"

    .line 18
    .line 19
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/accounts/c$h$b;->b(ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public b(ILjava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/xiaomi/accounts/c$h$b;->a:Lcom/xiaomi/accounts/c$h;

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
    iget-object v0, p0, Lcom/xiaomi/accounts/c$h$b;->a:Lcom/xiaomi/accounts/c$h;

    .line 12
    .line 13
    iget-object v1, v0, Lcom/xiaomi/accounts/c$h;->c:Lcom/xiaomi/accounts/c;

    .line 14
    .line 15
    invoke-static {v1, p1, p2}, Lcom/xiaomi/accounts/c;->f(Lcom/xiaomi/accounts/c;ILjava/lang/String;)Ljava/lang/Exception;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {v0, p1}, Lcom/xiaomi/accounts/c$h;->b(Lcom/xiaomi/accounts/c$h;Ljava/lang/Throwable;)V

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

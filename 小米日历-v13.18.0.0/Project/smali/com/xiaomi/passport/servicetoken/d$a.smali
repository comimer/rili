.class Lcom/xiaomi/passport/servicetoken/d$a;
.super Lcom/xiaomi/passport/servicetoken/a$a;
.source "ServiceTokenUIErrorHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/servicetoken/d;->b(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;Landroid/app/Activity;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

.field final synthetic b:Lcom/xiaomi/passport/servicetoken/b;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;Lcom/xiaomi/passport/servicetoken/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/d$a;->a:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/xiaomi/passport/servicetoken/d$a;->b:Lcom/xiaomi/passport/servicetoken/b;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/xiaomi/passport/servicetoken/a$a;-><init>()V

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
.method public a(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/d$a;->a:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->sid:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->create(Landroid/os/Bundle;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/d$a;->b:Lcom/xiaomi/passport/servicetoken/b;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ly5/a;->e(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public b(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const/4 p2, 0x4

    .line 2
    if-ne p1, p2, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/xiaomi/passport/servicetoken/d$a;->b:Lcom/xiaomi/passport/servicetoken/b;

    .line 5
    .line 6
    new-instance p2, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$b;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/d$a;->a:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->sid:Ljava/lang/String;

    .line 11
    .line 12
    invoke-direct {p2, v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$b;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->ERROR_CANCELLED:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    .line 16
    .line 17
    invoke-virtual {p2, v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$b;->q(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$b;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$b;->o()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p1, p2}, Ly5/a;->e(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/passport/servicetoken/d$a;->b:Lcom/xiaomi/passport/servicetoken/b;

    .line 30
    .line 31
    iget-object p2, p0, Lcom/xiaomi/passport/servicetoken/d$a;->a:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Ly5/a;->e(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/d$a;->b:Lcom/xiaomi/passport/servicetoken/b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/d$a;->a:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ly5/a;->e(Ljava/lang/Object;)V

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

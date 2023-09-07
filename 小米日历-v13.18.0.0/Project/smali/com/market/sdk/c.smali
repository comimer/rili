.class public Lcom/market/sdk/c;
.super Li3/b;
.source "FloatService.java"

# interfaces
.implements Li6/a;


# instance fields
.field private l:Li6/a;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Li3/b;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
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

.method static synthetic w0(Lcom/market/sdk/c;)Li6/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/market/sdk/c;->l:Li6/a;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
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

.method public static x0(Landroid/content/Context;Ljava/lang/String;)Li6/a;
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/market/sdk/g;->f:Ljava/lang/String;

    .line 8
    .line 9
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v1, Landroid/content/ComponentName;

    .line 15
    .line 16
    const-string v2, "com.xiaomi.market.data.AppDownloadService"

    .line 17
    .line 18
    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    const-string p1, "com.xiaomi.market.service.AppDownloadService"

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    new-instance p1, Lcom/market/sdk/c;

    .line 30
    .line 31
    invoke-direct {p1, p0, v0}, Lcom/market/sdk/c;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 32
    .line 33
    .line 34
    return-object p1
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
.method public Q(Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/market/sdk/c$d;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/market/sdk/c$d;-><init>(Lcom/market/sdk/c;Landroid/net/Uri;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "downloadByUri"

    .line 7
    .line 8
    invoke-virtual {p0, v0, p1}, Li3/b;->u0(Li3/b$b;Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    return-void
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

.method public W(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Lj3/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lj3/a;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/market/sdk/c$c;

    .line 7
    .line 8
    invoke-direct {v1, p0, v0, p1, p2}, Lcom/market/sdk/c$c;-><init>(Lcom/market/sdk/c;Lj3/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "resume"

    .line 12
    .line 13
    invoke-virtual {p0, v1, p1}, Li3/b;->u0(Li3/b$b;Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Li3/b;->v0()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isDone()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lj3/a;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p1, 0x0

    .line 37
    :goto_0
    return p1
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

.method public a0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Lj3/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lj3/a;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/market/sdk/c$a;

    .line 7
    .line 8
    invoke-direct {v1, p0, v0, p1, p2}, Lcom/market/sdk/c$a;-><init>(Lcom/market/sdk/c;Lj3/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "cancel"

    .line 12
    .line 13
    invoke-virtual {p0, v1, p1}, Li3/b;->u0(Li3/b$b;Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Li3/b;->v0()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isDone()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lj3/a;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p1, 0x0

    .line 37
    :goto_0
    return p1
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

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e0(Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/market/sdk/c$f;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/market/sdk/c$f;-><init>(Lcom/market/sdk/c;Landroid/net/Uri;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "resumeByUri"

    .line 7
    .line 8
    invoke-virtual {p0, v0, p1}, Li3/b;->u0(Li3/b$b;Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    return-void
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

.method public i(Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/market/sdk/c$e;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/market/sdk/c$e;-><init>(Lcom/market/sdk/c;Landroid/net/Uri;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "pauseByUri"

    .line 7
    .line 8
    invoke-virtual {p0, v0, p1}, Li3/b;->u0(Li3/b$b;Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    return-void
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

.method public l(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Lj3/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lj3/a;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/market/sdk/c$b;

    .line 7
    .line 8
    invoke-direct {v1, p0, v0, p1, p2}, Lcom/market/sdk/c$b;-><init>(Lcom/market/sdk/c;Lj3/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "pause"

    .line 12
    .line 13
    invoke-virtual {p0, v1, p1}, Li3/b;->u0(Li3/b$b;Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Li3/b;->v0()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isDone()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lj3/a;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p1, 0x0

    .line 37
    :goto_0
    return p1
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

.method public s0(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-static {p1}, Li6/a$a;->n0(Landroid/os/IBinder;)Li6/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/market/sdk/c;->l:Li6/a;

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

.method public t0()V
    .locals 0

    return-void
.end method

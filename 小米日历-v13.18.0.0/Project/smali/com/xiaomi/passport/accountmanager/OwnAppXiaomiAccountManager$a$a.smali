.class Lcom/xiaomi/passport/accountmanager/OwnAppXiaomiAccountManager$a$a;
.super Ljava/lang/Object;
.source "OwnAppXiaomiAccountManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/accountmanager/OwnAppXiaomiAccountManager$a;->a()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/passport/accountmanager/OwnAppXiaomiAccountManager$a;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/accountmanager/OwnAppXiaomiAccountManager$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/passport/accountmanager/OwnAppXiaomiAccountManager$a$a;->a:Lcom/xiaomi/passport/accountmanager/OwnAppXiaomiAccountManager$a;

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
    .locals 2

    .line 1
    const-string p1, "OwnAppXiaomiAccountManager"

    .line 2
    .line 3
    const-string v0, "bind success tryAddAccount"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/xiaomi/accountsdk/utils/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-static {p2}, Lm5/a$a;->n0(Landroid/os/IBinder;)Lm5/a;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/OwnAppXiaomiAccountManager$a$a;->a:Lcom/xiaomi/passport/accountmanager/OwnAppXiaomiAccountManager$a;

    .line 13
    .line 14
    iget-object v1, v0, Lcom/xiaomi/passport/accountmanager/OwnAppXiaomiAccountManager$a;->a:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/xiaomi/passport/accountmanager/OwnAppXiaomiAccountManager$a;->b:Lcom/xiaomi/passport/accountmanager/OwnAppXiaomiAccountManager;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/xiaomi/passport/accountmanager/a;->a:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {p2, v1, v0}, Lm5/a;->M(Lcom/xiaomi/accountsdk/account/data/AccountInfo;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p2

    .line 29
    const-string v0, "tryAddAccount failed"

    .line 30
    .line 31
    invoke-static {p1, v0, p2}, Lcom/xiaomi/accountsdk/utils/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    iget-object p1, p0, Lcom/xiaomi/passport/accountmanager/OwnAppXiaomiAccountManager$a$a;->a:Lcom/xiaomi/passport/accountmanager/OwnAppXiaomiAccountManager$a;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/xiaomi/passport/accountmanager/OwnAppXiaomiAccountManager$a;->b:Lcom/xiaomi/passport/accountmanager/OwnAppXiaomiAccountManager;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/xiaomi/passport/accountmanager/a;->a:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 41
    .line 42
    .line 43
    return-void
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

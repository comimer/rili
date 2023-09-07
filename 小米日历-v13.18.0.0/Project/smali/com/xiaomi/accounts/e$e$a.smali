.class Lcom/xiaomi/accounts/e$e$a;
.super Ljava/lang/Object;
.source "AccountManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/accounts/e$e;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/accounts/e$e;


# direct methods
.method constructor <init>(Lcom/xiaomi/accounts/e$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/accounts/e$e$a;->a:Lcom/xiaomi/accounts/e$e;

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
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/accounts/e$e$a;->a:Lcom/xiaomi/accounts/e$e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/xiaomi/accounts/e$e;->u0()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    iget-object v0, p0, Lcom/xiaomi/accounts/e$e$a;->a:Lcom/xiaomi/accounts/e$e;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const-string v2, "remote exception"

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accounts/e$e;->b(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

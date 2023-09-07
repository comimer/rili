.class Lcom/xiaomi/accounts/c$i$a;
.super Ljava/lang/Object;
.source "AccountManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/accounts/c$i;->done()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/accounts/c$i;


# direct methods
.method constructor <init>(Lcom/xiaomi/accounts/c$i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/accounts/c$i$a;->a:Lcom/xiaomi/accounts/c$i;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/accounts/c$i$a;->a:Lcom/xiaomi/accounts/c$i;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/xiaomi/accounts/c$i;->d:Landroid/accounts/AccountManagerCallback;

    .line 4
    .line 5
    invoke-interface {v1, v0}, Landroid/accounts/AccountManagerCallback;->run(Landroid/accounts/AccountManagerFuture;)V

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

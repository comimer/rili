.class Lcom/xiaomi/passport/accountmanager/f$c;
.super Lcom/xiaomi/passport/servicetoken/c$a;
.source "VisibleSystemXiaomiAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/accountmanager/f;->x(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Lcom/xiaomi/passport/servicetoken/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaomi/passport/accountmanager/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/accountmanager/f;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/passport/accountmanager/f$c;->b:Lcom/xiaomi/passport/accountmanager/f;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/xiaomi/passport/accountmanager/f$c;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/xiaomi/passport/servicetoken/c$a;-><init>()V

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
.method protected a()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .locals 3

    .line 1
    new-instance v0, Lcom/xiaomi/passport/servicetoken/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/xiaomi/passport/servicetoken/b;-><init>(Ly5/a$c;)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lcom/xiaomi/passport/accountmanager/f$c$a;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/xiaomi/passport/accountmanager/f$c;->b:Lcom/xiaomi/passport/accountmanager/f;

    .line 10
    .line 11
    iget-object v2, v2, Lcom/xiaomi/passport/accountmanager/e;->e:Landroid/content/Context;

    .line 12
    .line 13
    invoke-direct {v1, p0, v2, v0}, Lcom/xiaomi/passport/accountmanager/f$c$a;-><init>(Lcom/xiaomi/passport/accountmanager/f$c;Landroid/content/Context;Ly5/a;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ly5/b;->b()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/b;->h()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string v1, "bind service failed"

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0
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

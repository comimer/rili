.class Lcom/xiaomi/passport/accountmanager/e$c;
.super Lcom/xiaomi/passport/servicetoken/c$a;
.source "OwnSystemXiaomiAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/accountmanager/e;->f(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

.field final synthetic b:Lcom/xiaomi/passport/accountmanager/e;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/accountmanager/e;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/passport/accountmanager/e$c;->b:Lcom/xiaomi/passport/accountmanager/e;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/xiaomi/passport/accountmanager/e$c;->a:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

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
    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/e$c;->a:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->toAuthToken()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/xiaomi/passport/accountmanager/e$c;->b:Lcom/xiaomi/passport/accountmanager/e;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/xiaomi/passport/accountmanager/e;->d:Landroid/accounts/AccountManager;

    .line 14
    .line 15
    const-string v2, "com.xiaomi"

    .line 16
    .line 17
    invoke-virtual {v1, v2, v0}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$b;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/xiaomi/passport/accountmanager/e$c;->a:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->sid:Ljava/lang/String;

    .line 25
    .line 26
    invoke-direct {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$b;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$b;->o()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
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

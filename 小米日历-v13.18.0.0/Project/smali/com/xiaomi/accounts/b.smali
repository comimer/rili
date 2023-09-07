.class public Lcom/xiaomi/accounts/b;
.super Ljava/lang/Object;
.source "AccountAuthenticatorCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accounts/b$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private c:Lcom/xiaomi/accounts/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/accounts/b$a<",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/xiaomi/accounts/b;->a:Landroid/content/Context;

    .line 5
    .line 6
    const-string p1, "com.xiaomi.accounts.AccountAuthenticator"

    .line 7
    .line 8
    iput-object p1, p0, Lcom/xiaomi/accounts/b;->b:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/xiaomi/accounts/b;->a()V

    .line 11
    .line 12
    .line 13
    return-void
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

.method private c(Landroid/content/pm/ResolveInfo;)Lcom/xiaomi/accounts/b$a;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            ")",
            "Lcom/xiaomi/accounts/b$a<",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 4
    .line 5
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 8
    .line 9
    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/accounts/b;->a:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object p1, p0, Lcom/xiaomi/accounts/b;->a:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v1, "com.xiaomi.passport.accountmanager.MiAuthenticatorService"

    .line 25
    .line 26
    :goto_0
    move-object v2, v0

    .line 27
    new-instance v7, Landroid/content/ComponentName;

    .line 28
    .line 29
    invoke-direct {v7, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget v8, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 33
    .line 34
    new-instance v9, Landroid/accounts/AuthenticatorDescription;

    .line 35
    .line 36
    iget v3, p1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 37
    .line 38
    iget v5, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 39
    .line 40
    const/4 v6, -0x1

    .line 41
    const-string v1, "com.xiaomi"

    .line 42
    .line 43
    move-object v0, v9

    .line 44
    move v4, v5

    .line 45
    invoke-direct/range {v0 .. v6}, Landroid/accounts/AuthenticatorDescription;-><init>(Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 46
    .line 47
    .line 48
    new-instance p1, Lcom/xiaomi/accounts/b$a;

    .line 49
    .line 50
    invoke-direct {p1, v9, v7, v8}, Lcom/xiaomi/accounts/b$a;-><init>(Ljava/lang/Object;Landroid/content/ComponentName;I)V

    .line 51
    .line 52
    .line 53
    return-object p1
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
.end method


# virtual methods
.method a()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/xiaomi/accounts/b;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/xiaomi/accounts/b;->a:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/xiaomi/accounts/b;->a:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {p0, v0}, Lcom/xiaomi/accounts/b;->c(Landroid/content/pm/ResolveInfo;)Lcom/xiaomi/accounts/b$a;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/xiaomi/accounts/b;->c:Lcom/xiaomi/accounts/b$a;

    .line 33
    .line 34
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

.method public b(Landroid/accounts/AuthenticatorDescription;)Lcom/xiaomi/accounts/b$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AuthenticatorDescription;",
            ")",
            "Lcom/xiaomi/accounts/b$a<",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 4
    .line 5
    const-string v0, "com.xiaomi"

    .line 6
    .line 7
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/accounts/b;->c:Lcom/xiaomi/accounts/b$a;

    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_1
    :goto_0
    const-string p1, "Account"

    .line 18
    .line 19
    const-string v0, "no xiaomi account type"

    .line 20
    .line 21
    invoke-static {p1, v0}, Lcom/xiaomi/accountsdk/utils/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    return-object p1
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
.end method

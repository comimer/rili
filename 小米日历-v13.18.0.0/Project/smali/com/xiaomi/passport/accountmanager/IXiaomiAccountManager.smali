.class public interface abstract Lcom/xiaomi/passport/accountmanager/IXiaomiAccountManager;
.super Ljava/lang/Object;
.source "IXiaomiAccountManager.java"

# interfaces
.implements Lcom/xiaomi/passport/accountmanager/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/accountmanager/IXiaomiAccountManager$UpdateType;
    }
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Parcelable;)Landroid/content/Intent;
.end method

.method public abstract b(Landroid/accounts/Account;)Ljava/lang/String;
.end method

.method public abstract c(Lcom/xiaomi/passport/accountmanager/h;Landroid/os/Handler;)Lcom/xiaomi/passport/accountmanager/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/passport/accountmanager/h<",
            "Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/xiaomi/passport/accountmanager/i<",
            "Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d(Landroid/accounts/Account;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
.end method

.method public abstract f(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/b;
.end method

.method public abstract i(Landroid/os/Parcelable;Landroid/os/Bundle;)V
.end method

.method public abstract j(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
.end method

.method public abstract l()Landroid/accounts/Account;
.end method

.method public abstract n(Landroid/os/Bundle;Landroid/os/Parcelable;)Landroid/content/Intent;
.end method

.method public abstract q(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)Z
.end method

.method public abstract r(Landroid/accounts/Account;Lcom/xiaomi/passport/accountmanager/IXiaomiAccountManager$UpdateType;)V
.end method

.method public abstract s(Landroid/accounts/Account;Ljava/lang/String;)Z
.end method

.method public abstract t(Landroid/accounts/Account;Ljava/lang/String;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)V
.end method

.method public abstract v(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Parcelable;)Landroid/content/Intent;
.end method

.method public abstract x(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Lcom/xiaomi/passport/servicetoken/b;
.end method

.method public abstract y(Lcom/xiaomi/passport/accountmanager/h;Landroid/os/Handler;)Lcom/xiaomi/passport/accountmanager/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/passport/accountmanager/h<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/xiaomi/passport/accountmanager/i<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end method

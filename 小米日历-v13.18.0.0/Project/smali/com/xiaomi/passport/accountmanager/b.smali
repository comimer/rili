.class public interface abstract Lcom/xiaomi/passport/accountmanager/b;
.super Ljava/lang/Object;
.source "IAccountManager.java"


# virtual methods
.method public abstract e(Landroid/accounts/Account;)V
.end method

.method public abstract g(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/os/Bundle;",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract h(Landroid/accounts/Account;Ljava/lang/String;)V
.end method

.method public abstract k(Landroid/accounts/Account;Ljava/lang/String;I)Z
.end method

.method public abstract m(Landroid/accounts/Account;Ljava/lang/String;)I
.end method

.method public abstract o(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract p(Landroid/accounts/Account;)Ljava/lang/String;
.end method

.method public abstract u(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract w(Lcom/xiaomi/accountsdk/account/data/AccountInfo;Landroid/os/Bundle;)Z
.end method

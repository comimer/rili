.class public interface abstract Lm5/a;
.super Ljava/lang/Object;
.source "IAccountExchangeService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm5/a$b;,
        Lm5/a$a;
    }
.end annotation


# virtual methods
.method public abstract M(Lcom/xiaomi/accountsdk/account/data/AccountInfo;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract R(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.class public Lcom/xiaomi/accountsdk/account/exception/InvalidPhoneOrTicketException;
.super Ljava/lang/Exception;
.source "InvalidPhoneOrTicketException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "wrong ticket or unactivated phone"

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

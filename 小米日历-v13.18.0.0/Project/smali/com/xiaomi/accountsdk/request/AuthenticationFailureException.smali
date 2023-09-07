.class public Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;
.super Lcom/xiaomi/accountsdk/account/exception/HttpException;
.source "AuthenticationFailureException.java"


# static fields
.field private static final serialVersionUID:J = 0x1ad516af1ad6e348L


# instance fields
.field private caDisableSecondsHeader:Ljava/lang/String;

.field private wwwAuthenticateHeader:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/accountsdk/account/exception/HttpException;-><init>(ILjava/lang/String;)V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;->wwwAuthenticateHeader:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;->caDisableSecondsHeader:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/xiaomi/accountsdk/account/exception/HttpException;-><init>(ILjava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;->wwwAuthenticateHeader:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;->caDisableSecondsHeader:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCaDisableSecondsHeader()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;->caDisableSecondsHeader:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
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

.method public getWwwAuthenticateHeader()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;->wwwAuthenticateHeader:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
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

.method public setCaDisableSecondsHeader(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;->caDisableSecondsHeader:Ljava/lang/String;

    .line 2
    .line 3
    return-void
    .line 4
    .line 5
    .line 6
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

.method public setWwwAuthenticateHeader(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;->wwwAuthenticateHeader:Ljava/lang/String;

    .line 2
    .line 3
    return-void
    .line 4
    .line 5
    .line 6
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

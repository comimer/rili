.class public Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;
.super Ljava/lang/Exception;
.source "NeedNotificationException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final loginContent:La6/k$h;

.field private final notificationUrl:Ljava/lang/String;

.field private final userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;-><init>(Ljava/lang/String;Ljava/lang/String;La6/k$h;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;La6/k$h;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;->userId:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;->notificationUrl:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;->loginContent:La6/k$h;

    return-void
.end method


# virtual methods
.method public getLoginContent()La6/k$h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;->loginContent:La6/k$h;

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

.method public getNotificationUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;->notificationUrl:Ljava/lang/String;

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

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;->userId:Ljava/lang/String;

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

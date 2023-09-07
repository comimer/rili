.class public Lcom/sun/mail/iap/ProtocolException;
.super Ljava/lang/Exception;
.source "ProtocolException.java"


# static fields
.field private static final serialVersionUID:J = -0x3c839c61c5f679bfL


# instance fields
.field protected transient response:Lcom/sun/mail/iap/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sun/mail/iap/ProtocolException;->response:Lcom/sun/mail/iap/c;

    return-void
.end method

.method public constructor <init>(Lcom/sun/mail/iap/c;)V
    .locals 1

    .line 7
    invoke-virtual {p1}, Lcom/sun/mail/iap/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 8
    iput-object p1, p0, Lcom/sun/mail/iap/ProtocolException;->response:Lcom/sun/mail/iap/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/sun/mail/iap/ProtocolException;->response:Lcom/sun/mail/iap/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/sun/mail/iap/ProtocolException;->response:Lcom/sun/mail/iap/c;

    return-void
.end method


# virtual methods
.method public getResponse()Lcom/sun/mail/iap/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sun/mail/iap/ProtocolException;->response:Lcom/sun/mail/iap/c;

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

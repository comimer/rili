.class public Lcom/sun/mail/iap/ConnectionException;
.super Lcom/sun/mail/iap/ProtocolException;
.source "ConnectionException.java"


# static fields
.field private static final serialVersionUID:J = 0x4fcb2db4e6c2e197L


# instance fields
.field private transient p:Lcom/sun/mail/iap/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sun/mail/iap/ProtocolException;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/mail/iap/b;Lcom/sun/mail/iap/c;)V
    .locals 0

    .line 3
    invoke-direct {p0, p2}, Lcom/sun/mail/iap/ProtocolException;-><init>(Lcom/sun/mail/iap/c;)V

    .line 4
    iput-object p1, p0, Lcom/sun/mail/iap/ConnectionException;->p:Lcom/sun/mail/iap/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getProtocol()Lcom/sun/mail/iap/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sun/mail/iap/ConnectionException;->p:Lcom/sun/mail/iap/b;

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

.class Lorg/conscrypt/ConscryptFileDescriptorSocket;
.super Lorg/conscrypt/OpenSSLSocketImpl;
.source "ConscryptFileDescriptorSocket.java"

# interfaces
.implements Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;
.implements Lorg/conscrypt/SSLParametersImpl$AliasChooser;
.implements Lorg/conscrypt/SSLParametersImpl$PSKCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;,
        Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;
    }
.end annotation


# static fields
.field private static final DBG_STATE:Z = false


# instance fields
.field private final activeSession:Lorg/conscrypt/ActiveSession;

.field private channelIdPrivateKey:Lorg/conscrypt/OpenSSLKey;

.field private closedSession:Lorg/conscrypt/SessionSnapshot;

.field private final externalSession:Ljavax/net/ssl/SSLSession;

.field private final guard:Ljava/lang/Object;

.field private handshakeTimeoutMilliseconds:I

.field private is:Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;

.field private os:Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;

.field private final ssl:Lorg/conscrypt/NativeSsl;

.field private final sslParameters:Lorg/conscrypt/SSLParametersImpl;

.field private state:I

.field private writeTimeoutMilliseconds:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    const/4 p1, 0x0

    .line 32
    iput p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 33
    invoke-static {}, Lorg/conscrypt/Platform;->closeGuardGet()Ldalvik/system/CloseGuard;

    move-result-object p2

    iput-object p2, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    .line 34
    new-instance p2, Lorg/conscrypt/ExternalSession;

    new-instance p3, Lorg/conscrypt/ConscryptFileDescriptorSocket$1;

    invoke-direct {p3, p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket$1;-><init>(Lorg/conscrypt/ConscryptFileDescriptorSocket;)V

    invoke-direct {p2, p3}, Lorg/conscrypt/ExternalSession;-><init>(Lorg/conscrypt/ExternalSession$Provider;)V

    .line 35
    invoke-static {p2}, Lorg/conscrypt/Platform;->wrapSSLSession(Lorg/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;

    move-result-object p2

    iput-object p2, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->externalSession:Ljavax/net/ssl/SSLSession;

    .line 36
    iput p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I

    const/4 p1, -0x1

    .line 37
    iput p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    .line 38
    iput-object p5, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 39
    invoke-static {p5, p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->newSsl(Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/ConscryptFileDescriptorSocket;)Lorg/conscrypt/NativeSsl;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 40
    new-instance p2, Lorg/conscrypt/ActiveSession;

    invoke-virtual {p5}, Lorg/conscrypt/SSLParametersImpl;->getSessionContext()Lorg/conscrypt/AbstractSessionContext;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lorg/conscrypt/ActiveSession;-><init>(Lorg/conscrypt/NativeSsl;Lorg/conscrypt/AbstractSessionContext;)V

    iput-object p2, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lorg/conscrypt/ActiveSession;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILorg/conscrypt/SSLParametersImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 13
    invoke-static {}, Lorg/conscrypt/Platform;->closeGuardGet()Ldalvik/system/CloseGuard;

    move-result-object p2

    iput-object p2, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    .line 14
    new-instance p2, Lorg/conscrypt/ExternalSession;

    new-instance v0, Lorg/conscrypt/ConscryptFileDescriptorSocket$1;

    invoke-direct {v0, p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket$1;-><init>(Lorg/conscrypt/ConscryptFileDescriptorSocket;)V

    invoke-direct {p2, v0}, Lorg/conscrypt/ExternalSession;-><init>(Lorg/conscrypt/ExternalSession$Provider;)V

    .line 15
    invoke-static {p2}, Lorg/conscrypt/Platform;->wrapSSLSession(Lorg/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;

    move-result-object p2

    iput-object p2, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->externalSession:Ljavax/net/ssl/SSLSession;

    .line 16
    iput p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I

    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    .line 18
    iput-object p3, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 19
    invoke-static {p3, p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->newSsl(Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/ConscryptFileDescriptorSocket;)Lorg/conscrypt/NativeSsl;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 20
    new-instance p2, Lorg/conscrypt/ActiveSession;

    invoke-virtual {p3}, Lorg/conscrypt/SSLParametersImpl;->getSessionContext()Lorg/conscrypt/AbstractSessionContext;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lorg/conscrypt/ActiveSession;-><init>(Lorg/conscrypt/NativeSsl;Lorg/conscrypt/AbstractSessionContext;)V

    iput-object p2, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lorg/conscrypt/ActiveSession;

    return-void
.end method

.method constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    const/4 p1, 0x0

    .line 42
    iput p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 43
    invoke-static {}, Lorg/conscrypt/Platform;->closeGuardGet()Ldalvik/system/CloseGuard;

    move-result-object p2

    iput-object p2, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    .line 44
    new-instance p2, Lorg/conscrypt/ExternalSession;

    new-instance p3, Lorg/conscrypt/ConscryptFileDescriptorSocket$1;

    invoke-direct {p3, p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket$1;-><init>(Lorg/conscrypt/ConscryptFileDescriptorSocket;)V

    invoke-direct {p2, p3}, Lorg/conscrypt/ExternalSession;-><init>(Lorg/conscrypt/ExternalSession$Provider;)V

    .line 45
    invoke-static {p2}, Lorg/conscrypt/Platform;->wrapSSLSession(Lorg/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;

    move-result-object p2

    iput-object p2, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->externalSession:Ljavax/net/ssl/SSLSession;

    .line 46
    iput p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I

    const/4 p1, -0x1

    .line 47
    iput p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    .line 48
    iput-object p5, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 49
    invoke-static {p5, p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->newSsl(Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/ConscryptFileDescriptorSocket;)Lorg/conscrypt/NativeSsl;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 50
    new-instance p2, Lorg/conscrypt/ActiveSession;

    invoke-virtual {p5}, Lorg/conscrypt/SSLParametersImpl;->getSessionContext()Lorg/conscrypt/AbstractSessionContext;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lorg/conscrypt/ActiveSession;-><init>(Lorg/conscrypt/NativeSsl;Lorg/conscrypt/AbstractSessionContext;)V

    iput-object p2, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lorg/conscrypt/ActiveSession;

    return-void
.end method

.method constructor <init>(Ljava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/net/InetAddress;I)V

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 23
    invoke-static {}, Lorg/conscrypt/Platform;->closeGuardGet()Ldalvik/system/CloseGuard;

    move-result-object p2

    iput-object p2, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    .line 24
    new-instance p2, Lorg/conscrypt/ExternalSession;

    new-instance v0, Lorg/conscrypt/ConscryptFileDescriptorSocket$1;

    invoke-direct {v0, p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket$1;-><init>(Lorg/conscrypt/ConscryptFileDescriptorSocket;)V

    invoke-direct {p2, v0}, Lorg/conscrypt/ExternalSession;-><init>(Lorg/conscrypt/ExternalSession$Provider;)V

    .line 25
    invoke-static {p2}, Lorg/conscrypt/Platform;->wrapSSLSession(Lorg/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;

    move-result-object p2

    iput-object p2, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->externalSession:Ljavax/net/ssl/SSLSession;

    .line 26
    iput p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I

    const/4 p1, -0x1

    .line 27
    iput p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    .line 28
    iput-object p3, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 29
    invoke-static {p3, p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->newSsl(Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/ConscryptFileDescriptorSocket;)Lorg/conscrypt/NativeSsl;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 30
    new-instance p2, Lorg/conscrypt/ActiveSession;

    invoke-virtual {p3}, Lorg/conscrypt/SSLParametersImpl;->getSessionContext()Lorg/conscrypt/AbstractSessionContext;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lorg/conscrypt/ActiveSession;-><init>(Lorg/conscrypt/NativeSsl;Lorg/conscrypt/AbstractSessionContext;)V

    iput-object p2, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lorg/conscrypt/ActiveSession;

    return-void
.end method

.method constructor <init>(Ljava/net/Socket;Ljava/lang/String;IZLorg/conscrypt/SSLParametersImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/net/Socket;Ljava/lang/String;IZ)V

    const/4 p1, 0x0

    .line 52
    iput p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 53
    invoke-static {}, Lorg/conscrypt/Platform;->closeGuardGet()Ldalvik/system/CloseGuard;

    move-result-object p2

    iput-object p2, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    .line 54
    new-instance p2, Lorg/conscrypt/ExternalSession;

    new-instance p3, Lorg/conscrypt/ConscryptFileDescriptorSocket$1;

    invoke-direct {p3, p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket$1;-><init>(Lorg/conscrypt/ConscryptFileDescriptorSocket;)V

    invoke-direct {p2, p3}, Lorg/conscrypt/ExternalSession;-><init>(Lorg/conscrypt/ExternalSession$Provider;)V

    .line 55
    invoke-static {p2}, Lorg/conscrypt/Platform;->wrapSSLSession(Lorg/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;

    move-result-object p2

    iput-object p2, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->externalSession:Ljavax/net/ssl/SSLSession;

    .line 56
    iput p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I

    const/4 p1, -0x1

    .line 57
    iput p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    .line 58
    iput-object p5, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 59
    invoke-static {p5, p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->newSsl(Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/ConscryptFileDescriptorSocket;)Lorg/conscrypt/NativeSsl;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 60
    new-instance p2, Lorg/conscrypt/ActiveSession;

    invoke-virtual {p5}, Lorg/conscrypt/SSLParametersImpl;->getSessionContext()Lorg/conscrypt/AbstractSessionContext;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lorg/conscrypt/ActiveSession;-><init>(Lorg/conscrypt/NativeSsl;Lorg/conscrypt/AbstractSessionContext;)V

    iput-object p2, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lorg/conscrypt/ActiveSession;

    return-void
.end method

.method constructor <init>(Lorg/conscrypt/SSLParametersImpl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLSocketImpl;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 3
    invoke-static {}, Lorg/conscrypt/Platform;->closeGuardGet()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    .line 4
    new-instance v1, Lorg/conscrypt/ExternalSession;

    new-instance v2, Lorg/conscrypt/ConscryptFileDescriptorSocket$1;

    invoke-direct {v2, p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket$1;-><init>(Lorg/conscrypt/ConscryptFileDescriptorSocket;)V

    invoke-direct {v1, v2}, Lorg/conscrypt/ExternalSession;-><init>(Lorg/conscrypt/ExternalSession$Provider;)V

    .line 5
    invoke-static {v1}, Lorg/conscrypt/Platform;->wrapSSLSession(Lorg/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;

    move-result-object v1

    iput-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->externalSession:Ljavax/net/ssl/SSLSession;

    .line 6
    iput v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    .line 8
    iput-object p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 9
    invoke-static {p1, p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->newSsl(Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/ConscryptFileDescriptorSocket;)Lorg/conscrypt/NativeSsl;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 10
    new-instance v1, Lorg/conscrypt/ActiveSession;

    invoke-virtual {p1}, Lorg/conscrypt/SSLParametersImpl;->getSessionContext()Lorg/conscrypt/AbstractSessionContext;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lorg/conscrypt/ActiveSession;-><init>(Lorg/conscrypt/NativeSsl;Lorg/conscrypt/AbstractSessionContext;)V

    iput-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lorg/conscrypt/ActiveSession;

    return-void
.end method

.method static synthetic access$000(Lorg/conscrypt/ConscryptFileDescriptorSocket;)Lorg/conscrypt/ConscryptSession;
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->provideSession()Lorg/conscrypt/ConscryptSession;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
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
.end method

.method static synthetic access$100(Lorg/conscrypt/ConscryptFileDescriptorSocket;)Lorg/conscrypt/NativeSsl;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 2
    .line 3
    return-object p0
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
.end method

.method static synthetic access$200(Lorg/conscrypt/ConscryptFileDescriptorSocket;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 2
    .line 3
    return p0
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
.end method

.method static synthetic access$300(Lorg/conscrypt/ConscryptFileDescriptorSocket;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I

    .line 2
    .line 3
    return p0
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
.end method

.method static synthetic access$400(Lorg/conscrypt/ConscryptFileDescriptorSocket;)Lorg/conscrypt/ConscryptSession;
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->provideHandshakeSession()Lorg/conscrypt/ConscryptSession;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
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
.end method

.method private assertReadableOrWriteableState()V
    .locals 3

    .line 1
    iget v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "Invalid state: "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v2, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    throw v0

    .line 35
    :cond_1
    :goto_0
    return-void
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
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
.end method

.method private clientSessionContext()Lorg/conscrypt/ClientSessionContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getClientSessionContext()Lorg/conscrypt/ClientSessionContext;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method private closeUnderlyingSocket()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lorg/conscrypt/OpenSSLSocketImpl;->close()V

    .line 2
    .line 3
    .line 4
    return-void
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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method private free()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/conscrypt/NativeSsl;->isClosed()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/conscrypt/NativeSsl;->close()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-static {v0}, Lorg/conscrypt/Platform;->closeGuardClose(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method private static newSsl(Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/ConscryptFileDescriptorSocket;)Lorg/conscrypt/NativeSsl;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p1, p1}, Lorg/conscrypt/NativeSsl;->newInstance(Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;Lorg/conscrypt/SSLParametersImpl$AliasChooser;Lorg/conscrypt/SSLParametersImpl$PSKCallbacks;)Lorg/conscrypt/NativeSsl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
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
.end method

.method private provideAfterHandshakeSession()Lorg/conscrypt/ConscryptSession;
    .locals 2

    .line 1
    iget v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    invoke-static {}, Lorg/conscrypt/SSLNullSession;->getNullSession()Lorg/conscrypt/ConscryptSession;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-direct {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->provideSession()Lorg/conscrypt/ConscryptSession;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    return-object v0
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
.end method

.method private provideHandshakeSession()Lorg/conscrypt/ConscryptSession;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    if-lt v1, v2, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x5

    .line 10
    if-ge v1, v2, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lorg/conscrypt/ActiveSession;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {}, Lorg/conscrypt/SSLNullSession;->getNullSession()Lorg/conscrypt/ConscryptSession;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :goto_0
    monitor-exit v0

    .line 20
    return-object v1

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method private provideSession()Lorg/conscrypt/ConscryptSession;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 5
    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    if-ne v1, v2, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->closedSession:Lorg/conscrypt/SessionSnapshot;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {}, Lorg/conscrypt/SSLNullSession;->getNullSession()Lorg/conscrypt/ConscryptSession;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    return-object v1

    .line 21
    :cond_1
    const/4 v2, 0x5

    .line 22
    const/4 v3, 0x1

    .line 23
    if-lt v1, v2, :cond_2

    .line 24
    .line 25
    move v1, v3

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    const/4 v1, 0x0

    .line 28
    :goto_1
    if-nez v1, :cond_3

    .line 29
    .line 30
    :try_start_1
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLSocketImpl;->isConnected()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    invoke-direct {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->waitForHandshake()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_3
    move v3, v1

    .line 41
    :goto_2
    move v1, v3

    .line 42
    :catch_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    invoke-static {}, Lorg/conscrypt/SSLNullSession;->getNullSession()Lorg/conscrypt/ConscryptSession;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0

    .line 50
    :cond_4
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lorg/conscrypt/ActiveSession;

    .line 51
    .line 52
    return-object v0

    .line 53
    :catchall_0
    move-exception v1

    .line 54
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 55
    throw v1
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
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
.end method

.method private sessionContext()Lorg/conscrypt/AbstractSessionContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getSessionContext()Lorg/conscrypt/AbstractSessionContext;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method private shutdownAndFreeSslNative()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lorg/conscrypt/Platform;->blockGuardOnNetwork()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 5
    .line 6
    iget-object v1, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    .line 7
    .line 8
    invoke-static {v1}, Lorg/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lorg/conscrypt/NativeSsl;->shutdown(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    invoke-direct {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->free()V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->closeUnderlyingSocket()V

    .line 21
    .line 22
    .line 23
    throw v0

    .line 24
    :catch_0
    :goto_0
    invoke-direct {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->free()V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->closeUnderlyingSocket()V

    .line 28
    .line 29
    .line 30
    return-void
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
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
.end method

.method private transitionTo(I)V
    .locals 3

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 7
    .line 8
    invoke-virtual {v1}, Lorg/conscrypt/NativeSsl;->isClosed()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    iget v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    if-lt v1, v2, :cond_1

    .line 18
    .line 19
    if-ge v1, v0, :cond_1

    .line 20
    .line 21
    new-instance v0, Lorg/conscrypt/SessionSnapshot;

    .line 22
    .line 23
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lorg/conscrypt/ActiveSession;

    .line 24
    .line 25
    invoke-direct {v0, v1}, Lorg/conscrypt/SessionSnapshot;-><init>(Lorg/conscrypt/ConscryptSession;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->closedSession:Lorg/conscrypt/SessionSnapshot;

    .line 29
    .line 30
    :cond_1
    :goto_0
    iput p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 31
    .line 32
    return-void
    .line 33
.end method

.method private waitForHandshake()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->startHandshake()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :goto_0
    :try_start_0
    iget v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    const/4 v2, 0x5

    .line 10
    const/16 v3, 0x8

    .line 11
    .line 12
    if-eq v1, v2, :cond_0

    .line 13
    .line 14
    const/4 v2, 0x4

    .line 15
    if-eq v1, v2, :cond_0

    .line 16
    .line 17
    if-eq v1, v3, :cond_0

    .line 18
    .line 19
    :try_start_1
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v1

    .line 26
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 31
    .line 32
    .line 33
    new-instance v2, Ljava/io/IOException;

    .line 34
    .line 35
    const-string v3, "Interrupted waiting for handshake"

    .line 36
    .line 37
    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    throw v2

    .line 41
    :cond_0
    if-eq v1, v3, :cond_1

    .line 42
    .line 43
    monitor-exit v0

    .line 44
    return-void

    .line 45
    :cond_1
    new-instance v1, Ljava/net/SocketException;

    .line 46
    .line 47
    const-string v2, "Socket is closed"

    .line 48
    .line 49
    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v1

    .line 53
    :catchall_0
    move-exception v1

    .line 54
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    throw v1
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
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
.end method


# virtual methods
.method public final chooseClientAlias(Ljavax/net/ssl/X509KeyManager;[Ljavax/security/auth/x500/X500Principal;[Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-interface {p1, p3, p2, p0}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
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
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
.end method

.method public final chooseClientPSKIdentity(Lorg/conscrypt/PSKKeyManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-interface {p1, p2, p0}, Lorg/conscrypt/PSKKeyManager;->chooseClientKeyIdentity(Ljava/lang/String;Ljava/net/Socket;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
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
.end method

.method public final chooseServerAlias(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, p2, v0, p0}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
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
.end method

.method public final chooseServerPSKIdentityHint(Lorg/conscrypt/PSKKeyManager;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lorg/conscrypt/PSKKeyManager;->chooseServerKeyIdentityHint(Ljava/net/Socket;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
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
.end method

.method public final clientCertificateRequested([B[I[[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lorg/conscrypt/NativeSsl;->chooseClientCertificate([B[I[[B)V

    .line 4
    .line 5
    .line 6
    return-void
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
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
.end method

.method public final clientPSKKeyRequested(Ljava/lang/String;[B[B)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lorg/conscrypt/NativeSsl;->clientPSKKeyRequested(Ljava/lang/String;[B[B)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
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
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
.end method

.method public final close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    monitor-enter v0

    .line 7
    :try_start_0
    iget v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 8
    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    if-ne v1, v2, :cond_1

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :cond_1
    invoke-direct {p0, v2}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 16
    .line 17
    .line 18
    if-nez v1, :cond_2

    .line 19
    .line 20
    invoke-direct {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->free()V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->closeUnderlyingSocket()V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 29
    .line 30
    .line 31
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :cond_2
    const/4 v2, 0x5

    .line 34
    if-eq v1, v2, :cond_3

    .line 35
    .line 36
    const/4 v2, 0x4

    .line 37
    if-eq v1, v2, :cond_3

    .line 38
    .line 39
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 40
    .line 41
    invoke-virtual {v1}, Lorg/conscrypt/NativeSsl;->interrupt()V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 47
    .line 48
    .line 49
    monitor-exit v0

    .line 50
    return-void

    .line 51
    :cond_3
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->is:Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;

    .line 57
    .line 58
    iget-object v2, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->os:Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;

    .line 59
    .line 60
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    if-nez v1, :cond_4

    .line 62
    .line 63
    if-eqz v2, :cond_5

    .line 64
    .line 65
    :cond_4
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 66
    .line 67
    invoke-virtual {v0}, Lorg/conscrypt/NativeSsl;->interrupt()V

    .line 68
    .line 69
    .line 70
    :cond_5
    if-eqz v1, :cond_6

    .line 71
    .line 72
    invoke-virtual {v1}, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->awaitPendingOps()V

    .line 73
    .line 74
    .line 75
    :cond_6
    if-eqz v2, :cond_7

    .line 76
    .line 77
    invoke-virtual {v2}, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->awaitPendingOps()V

    .line 78
    .line 79
    .line 80
    :cond_7
    invoke-direct {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->shutdownAndFreeSslNative()V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :catchall_0
    move-exception v1

    .line 85
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    throw v1
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
.end method

.method exportKeyingMaterial(Ljava/lang/String;[BI)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 5
    .line 6
    const/4 v2, 0x3

    .line 7
    if-lt v1, v2, :cond_1

    .line 8
    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 16
    .line 17
    invoke-virtual {v0, p1, p2, p3}, Lorg/conscrypt/NativeSsl;->exportKeyingMaterial(Ljava/lang/String;[BI)[B

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 23
    :try_start_1
    monitor-exit v0

    .line 24
    return-object p1

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw p1
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
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
.end method

.method protected final finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lorg/conscrypt/Platform;->closeGuardWarnIfOpen(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    :try_start_1
    invoke-direct {p0, v1}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 16
    .line 17
    .line 18
    monitor-exit v0

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 23
    :cond_1
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catchall_1
    move-exception v0

    .line 28
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 29
    .line 30
    .line 31
    throw v0
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
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
.end method

.method final getActiveSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lorg/conscrypt/ActiveSession;

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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public final getApplicationProtocol()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->provideAfterHandshakeSession()Lorg/conscrypt/ConscryptSession;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lorg/conscrypt/ConscryptSession;->getApplicationProtocol()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
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
.end method

.method final getApplicationProtocols()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getApplicationProtocols()[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public final getChannelId()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->getUseClientMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 11
    .line 12
    const/4 v2, 0x5

    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 17
    .line 18
    invoke-virtual {v0}, Lorg/conscrypt/NativeSsl;->getTlsChannelId()[B

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0

    .line 23
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v2, "Channel ID is only available after handshake completes"

    .line 26
    .line 27
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v1

    .line 31
    :catchall_0
    move-exception v1

    .line 32
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    throw v1

    .line 34
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    const-string v1, "Client mode"

    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0
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
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
.end method

.method public final getEnableSessionCreation()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getEnableSessionCreation()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public final getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public final getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public final getHandshakeApplicationProtocol()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    if-lt v1, v2, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x5

    .line 10
    if-ge v1, v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->getApplicationProtocol()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :goto_0
    monitor-exit v0

    .line 19
    return-object v1

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw v1
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public final getHandshakeSession()Ljavax/net/ssl/SSLSession;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    if-lt v1, v2, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x5

    .line 10
    if-ge v1, v2, :cond_0

    .line 11
    .line 12
    new-instance v1, Lorg/conscrypt/ExternalSession;

    .line 13
    .line 14
    new-instance v2, Lorg/conscrypt/ConscryptFileDescriptorSocket$2;

    .line 15
    .line 16
    invoke-direct {v2, p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket$2;-><init>(Lorg/conscrypt/ConscryptFileDescriptorSocket;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Lorg/conscrypt/ExternalSession;-><init>(Lorg/conscrypt/ExternalSession$Provider;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Lorg/conscrypt/Platform;->wrapSSLSession(Lorg/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    monitor-exit v0

    .line 27
    return-object v1

    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 29
    monitor-exit v0

    .line 30
    return-object v1

    .line 31
    :catchall_0
    move-exception v1

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw v1
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
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptSocket;->checkOpen()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 8
    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    if-eq v1, v2, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->is:Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    new-instance v1, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;-><init>(Lorg/conscrypt/ConscryptFileDescriptorSocket;)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->is:Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;

    .line 23
    .line 24
    :cond_0
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->is:Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;

    .line 25
    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-direct {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->waitForHandshake()V

    .line 28
    .line 29
    .line 30
    return-object v1

    .line 31
    :cond_1
    :try_start_1
    new-instance v1, Ljava/net/SocketException;

    .line 32
    .line 33
    const-string v2, "Socket is closed."

    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v1

    .line 39
    :catchall_0
    move-exception v1

    .line 40
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    throw v1
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
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
.end method

.method public final getNeedClientAuth()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getNeedClientAuth()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptSocket;->checkOpen()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 8
    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    if-eq v1, v2, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->os:Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    new-instance v1, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;-><init>(Lorg/conscrypt/ConscryptFileDescriptorSocket;)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->os:Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;

    .line 23
    .line 24
    :cond_0
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->os:Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;

    .line 25
    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-direct {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->waitForHandshake()V

    .line 28
    .line 29
    .line 30
    return-object v1

    .line 31
    :cond_1
    :try_start_1
    new-instance v1, Ljava/net/SocketException;

    .line 32
    .line 33
    const-string v2, "Socket is closed."

    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v1

    .line 39
    :catchall_0
    move-exception v1

    .line 40
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    throw v1
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
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
.end method

.method public final getPSKKey(Lorg/conscrypt/PSKKeyManager;Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 0

    .line 1
    invoke-interface {p1, p2, p3, p0}, Lorg/conscrypt/PSKKeyManager;->getKey(Ljava/lang/String;Ljava/lang/String;Ljava/net/Socket;)Ljavax/crypto/SecretKey;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
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
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
.end method

.method public final getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 2

    .line 1
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 6
    .line 7
    invoke-static {v0, v1, p0}, Lorg/conscrypt/Platform;->getSSLParameters(Ljavax/net/ssl/SSLParameters;Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/AbstractConscryptSocket;)V

    .line 8
    .line 9
    .line 10
    return-object v0
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
.end method

.method public final getSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->externalSession:Ljavax/net/ssl/SSLSession;

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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public final getSoWriteTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I

    .line 2
    .line 3
    return v0
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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public final getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lorg/conscrypt/NativeCrypto;->getSupportedCipherSuites()[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public final getSupportedProtocols()[Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lorg/conscrypt/NativeCrypto;->getSupportedProtocols()[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method getTlsUnique()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/conscrypt/NativeSsl;->getTlsUnique()[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public final getUseClientMode()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public final getWantClientAuth()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getWantClientAuth()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public final onNewSessionEstablished(J)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p1, p2}, Lorg/conscrypt/NativeCrypto;->SSL_SESSION_up_ref(J)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/conscrypt/NativeRef$SSL_SESSION;

    .line 5
    .line 6
    invoke-direct {v0, p1, p2}, Lorg/conscrypt/NativeRef$SSL_SESSION;-><init>(J)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lorg/conscrypt/ActiveSession;

    .line 10
    .line 11
    invoke-static {v0, p1}, Lorg/conscrypt/NativeSslSession;->newInstance(Lorg/conscrypt/NativeRef$SSL_SESSION;Lorg/conscrypt/ConscryptSession;)Lorg/conscrypt/NativeSslSession;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sessionContext()Lorg/conscrypt/AbstractSessionContext;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p2, p1}, Lorg/conscrypt/AbstractSessionContext;->cacheSession(Lorg/conscrypt/NativeSslSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    :catch_0
    return-void
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
.end method

.method public final onSSLStateChange(II)V
    .locals 1

    .line 1
    const/16 p2, 0x20

    .line 2
    .line 3
    if-eq p1, p2, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 7
    .line 8
    monitor-enter p1

    .line 9
    :try_start_0
    iget p2, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 10
    .line 11
    const/16 v0, 0x8

    .line 12
    .line 13
    if-ne p2, v0, :cond_1

    .line 14
    .line 15
    monitor-exit p1

    .line 16
    return-void

    .line 17
    :cond_1
    const/4 p2, 0x5

    .line 18
    invoke-direct {p0, p2}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 19
    .line 20
    .line 21
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptSocket;->notifyHandshakeCompletedListeners()V

    .line 23
    .line 24
    .line 25
    iget-object p2, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 26
    .line 27
    monitor-enter p2

    .line 28
    :try_start_1
    iget-object p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 31
    .line 32
    .line 33
    monitor-exit p2

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw p1

    .line 38
    :catchall_1
    move-exception p2

    .line 39
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 40
    throw p2
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
.end method

.method public selectApplicationProtocol([B)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getApplicationProtocolSelector()Lorg/conscrypt/ApplicationProtocolSelectorAdapter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x3

    .line 10
    return p1

    .line 11
    :cond_0
    invoke-virtual {v0, p1}, Lorg/conscrypt/ApplicationProtocolSelectorAdapter;->selectApplicationProtocol([B)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
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
.end method

.method public final serverCertificateRequested()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 5
    .line 6
    invoke-virtual {v1}, Lorg/conscrypt/NativeSsl;->configureServerCertificate()V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw v1
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
.end method

.method public final serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lorg/conscrypt/NativeSsl;->serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[B)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
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
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
.end method

.method public final serverSessionRequested([B)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final setApplicationProtocolSelector(Lorg/conscrypt/ApplicationProtocolSelector;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Lorg/conscrypt/ApplicationProtocolSelectorAdapter;

    invoke-direct {v0, p0, p1}, Lorg/conscrypt/ApplicationProtocolSelectorAdapter;-><init>(Ljavax/net/ssl/SSLSocket;Lorg/conscrypt/ApplicationProtocolSelector;)V

    move-object p1, v0

    .line 2
    :goto_0
    invoke-virtual {p0, p1}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->setApplicationProtocolSelector(Lorg/conscrypt/ApplicationProtocolSelectorAdapter;)V

    return-void
.end method

.method final setApplicationProtocolSelector(Lorg/conscrypt/ApplicationProtocolSelectorAdapter;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/conscrypt/SSLParametersImpl;->setApplicationProtocolSelector(Lorg/conscrypt/ApplicationProtocolSelectorAdapter;)V

    return-void
.end method

.method final setApplicationProtocols([Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/conscrypt/SSLParametersImpl;->setApplicationProtocols([Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
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
.end method

.method public final setChannelIdEnabled(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->getUseClientMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 16
    .line 17
    iput-boolean p1, v0, Lorg/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v1, "Could not enable/disable Channel ID after the initial handshake has begun."

    .line 23
    .line 24
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw p1

    .line 31
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    const-string v0, "Client mode"

    .line 34
    .line 35
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1
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
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
.end method

.method public final setChannelIdPrivateKey(Ljava/security/PrivateKey;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->getUseClientMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 11
    .line 12
    if-nez v1, :cond_3

    .line 13
    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    const/4 v0, 0x0

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput-boolean v1, p1, Lorg/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    .line 22
    .line 23
    iput-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->channelIdPrivateKey:Lorg/conscrypt/OpenSSLKey;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    iput-boolean v2, v1, Lorg/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    .line 30
    .line 31
    :try_start_1
    instance-of v1, p1, Ljava/security/interfaces/ECKey;

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    move-object v0, p1

    .line 36
    check-cast v0, Ljava/security/interfaces/ECKey;

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :cond_1
    if-nez v0, :cond_2

    .line 43
    .line 44
    const-string v0, "prime256v1"

    .line 45
    .line 46
    invoke-static {v0}, Lorg/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lorg/conscrypt/OpenSSLECGroupContext;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLECGroupContext;->getECParameterSpec()Ljava/security/spec/ECParameterSpec;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :cond_2
    invoke-static {p1, v0}, Lorg/conscrypt/OpenSSLKey;->fromECPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/spec/ECParameterSpec;)Lorg/conscrypt/OpenSSLKey;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->channelIdPrivateKey:Lorg/conscrypt/OpenSSLKey;
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0

    .line 59
    .line 60
    :catch_0
    :goto_0
    return-void

    .line 61
    :cond_3
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    const-string v1, "Could not change Channel ID private key after the initial handshake has begun."

    .line 64
    .line 65
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p1

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    throw p1

    .line 72
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 73
    .line 74
    const-string v0, "Server mode"

    .line 75
    .line 76
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
.end method

.method public final setEnableSessionCreation(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/conscrypt/SSLParametersImpl;->setEnableSessionCreation(Z)V

    .line 4
    .line 5
    .line 6
    return-void
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
.end method

.method public final setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/conscrypt/SSLParametersImpl;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
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
.end method

.method public final setEnabledProtocols([Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/conscrypt/SSLParametersImpl;->setEnabledProtocols([Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
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
.end method

.method public final setHandshakeTimeout(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1
    iput p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

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
.end method

.method public final setHostname(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-virtual {v0, v1}, Lorg/conscrypt/SSLParametersImpl;->setUseSni(Z)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1}, Lorg/conscrypt/OpenSSLSocketImpl;->setHostname(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
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
.end method

.method public final setNeedClientAuth(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/conscrypt/SSLParametersImpl;->setNeedClientAuth(Z)V

    .line 4
    .line 5
    .line 6
    return-void
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
.end method

.method public final setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 5
    .line 6
    invoke-static {p1, v0, p0}, Lorg/conscrypt/Platform;->setSSLParameters(Ljavax/net/ssl/SSLParameters;Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/AbstractConscryptSocket;)V

    .line 7
    .line 8
    .line 9
    return-void
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
.end method

.method public final setSoWriteTimeout(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1
    iput p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I

    .line 2
    .line 3
    int-to-long v0, p1

    .line 4
    invoke-static {p0, v0, v1}, Lorg/conscrypt/Platform;->setSocketWriteTimeout(Ljava/net/Socket;J)V

    .line 5
    .line 6
    .line 7
    return-void
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
.end method

.method public final setUseClientMode(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lorg/conscrypt/SSLParametersImpl;->setUseClientMode(Z)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string v1, "Could not change the mode after the initial handshake has begun."

    .line 18
    .line 19
    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw p1
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method public final setUseSessionTickets(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/conscrypt/SSLParametersImpl;->setUseSessionTickets(Z)V

    .line 4
    .line 5
    .line 6
    return-void
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
.end method

.method public final setWantClientAuth(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/conscrypt/SSLParametersImpl;->setWantClientAuth(Z)V

    .line 4
    .line 5
    .line 6
    return-void
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
.end method

.method public final startHandshake()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptSocket;->checkOpen()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 8
    .line 9
    if-nez v1, :cond_c

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    invoke-direct {p0, v1}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 13
    .line 14
    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    .line 16
    const/4 v0, 0x1

    .line 17
    const/16 v2, 0x8

    .line 18
    .line 19
    :try_start_1
    iget-object v3, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->guard:Ljava/lang/Object;

    .line 20
    .line 21
    const-string v4, "close"

    .line 22
    .line 23
    invoke-static {v3, v4}, Lorg/conscrypt/Platform;->closeGuardOpen(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v3, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 27
    .line 28
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLSocketImpl;->getHostname()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    iget-object v5, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->channelIdPrivateKey:Lorg/conscrypt/OpenSSLKey;

    .line 33
    .line 34
    invoke-virtual {v3, v4, v5}, Lorg/conscrypt/NativeSsl;->initialize(Ljava/lang/String;Lorg/conscrypt/OpenSSLKey;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->getUseClientMode()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    invoke-direct {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->clientSessionContext()Lorg/conscrypt/ClientSessionContext;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLSocketImpl;->getHostnameOrIP()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getPort()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    iget-object v6, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 56
    .line 57
    invoke-virtual {v3, v4, v5, v6}, Lorg/conscrypt/ClientSessionContext;->getCachedSession(Ljava/lang/String;ILorg/conscrypt/SSLParametersImpl;)Lorg/conscrypt/NativeSslSession;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    if-eqz v3, :cond_0

    .line 62
    .line 63
    iget-object v4, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 64
    .line 65
    invoke-virtual {v3, v4}, Lorg/conscrypt/NativeSslSession;->offerToResume(Lorg/conscrypt/NativeSsl;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getSoTimeout()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->getSoWriteTimeout()I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    iget v5, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    .line 77
    .line 78
    if-ltz v5, :cond_1

    .line 79
    .line 80
    invoke-virtual {p0, v5}, Lorg/conscrypt/AbstractConscryptSocket;->setSoTimeout(I)V

    .line 81
    .line 82
    .line 83
    iget v5, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    .line 84
    .line 85
    invoke-virtual {p0, v5}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->setSoWriteTimeout(I)V

    .line 86
    .line 87
    .line 88
    :cond_1
    iget-object v5, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 89
    .line 90
    monitor-enter v5
    :try_end_1
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 91
    :try_start_2
    iget v6, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 92
    .line 93
    if-ne v6, v2, :cond_2

    .line 94
    .line 95
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 96
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 97
    .line 98
    monitor-enter v1

    .line 99
    :try_start_3
    invoke-direct {p0, v2}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 105
    .line 106
    .line 107
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 108
    :try_start_4
    invoke-direct {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->shutdownAndFreeSslNative()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 109
    .line 110
    .line 111
    :catch_0
    return-void

    .line 112
    :catchall_0
    move-exception v0

    .line 113
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 114
    throw v0

    .line 115
    :cond_2
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    .line 116
    const/4 v5, 0x0

    .line 117
    :try_start_7
    iget-object v6, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 118
    .line 119
    iget-object v7, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    .line 120
    .line 121
    invoke-static {v7}, Lorg/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getSoTimeout()I

    .line 126
    .line 127
    .line 128
    move-result v8

    .line 129
    invoke-virtual {v6, v7, v8}, Lorg/conscrypt/NativeSsl;->doHandshake(Ljava/io/FileDescriptor;I)V

    .line 130
    .line 131
    .line 132
    iget-object v6, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lorg/conscrypt/ActiveSession;

    .line 133
    .line 134
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLSocketImpl;->getHostnameOrIP()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getPort()I

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    invoke-virtual {v6, v7, v8}, Lorg/conscrypt/ActiveSession;->onPeerCertificateAvailable(Ljava/lang/String;I)V
    :try_end_7
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljavax/net/ssl/SSLException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    .line 143
    .line 144
    .line 145
    :try_start_8
    iget-object v6, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 146
    .line 147
    monitor-enter v6
    :try_end_8
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 148
    :try_start_9
    iget v7, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 149
    .line 150
    if-ne v7, v2, :cond_3

    .line 151
    .line 152
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 153
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 154
    .line 155
    monitor-enter v1

    .line 156
    :try_start_a
    invoke-direct {p0, v2}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 157
    .line 158
    .line 159
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 162
    .line 163
    .line 164
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 165
    :try_start_b
    invoke-direct {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->shutdownAndFreeSslNative()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    .line 166
    .line 167
    .line 168
    :catch_1
    return-void

    .line 169
    :catchall_1
    move-exception v0

    .line 170
    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 171
    throw v0

    .line 172
    :cond_3
    :try_start_d
    monitor-exit v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 173
    :try_start_e
    iget v6, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->handshakeTimeoutMilliseconds:I

    .line 174
    .line 175
    if-ltz v6, :cond_4

    .line 176
    .line 177
    invoke-virtual {p0, v3}, Lorg/conscrypt/AbstractConscryptSocket;->setSoTimeout(I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, v4}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->setSoWriteTimeout(I)V

    .line 181
    .line 182
    .line 183
    :cond_4
    iget-object v3, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 184
    .line 185
    monitor-enter v3
    :try_end_e
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 186
    :try_start_f
    iget v4, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 187
    .line 188
    if-ne v4, v2, :cond_5

    .line 189
    .line 190
    goto :goto_0

    .line 191
    :cond_5
    move v0, v5

    .line 192
    :goto_0
    if-ne v4, v1, :cond_6

    .line 193
    .line 194
    const/4 v1, 0x4

    .line 195
    invoke-direct {p0, v1}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 196
    .line 197
    .line 198
    goto :goto_1

    .line 199
    :cond_6
    const/4 v1, 0x5

    .line 200
    invoke-direct {p0, v1}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 201
    .line 202
    .line 203
    :goto_1
    if-nez v0, :cond_7

    .line 204
    .line 205
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 206
    .line 207
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 208
    .line 209
    .line 210
    :cond_7
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 211
    if-eqz v0, :cond_8

    .line 212
    .line 213
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 214
    .line 215
    monitor-enter v0

    .line 216
    :try_start_10
    invoke-direct {p0, v2}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 217
    .line 218
    .line 219
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 220
    .line 221
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 222
    .line 223
    .line 224
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 225
    :try_start_11
    invoke-direct {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->shutdownAndFreeSslNative()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_2

    .line 226
    .line 227
    .line 228
    goto :goto_2

    .line 229
    :catchall_2
    move-exception v1

    .line 230
    :try_start_12
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 231
    throw v1

    .line 232
    :catch_2
    :cond_8
    :goto_2
    return-void

    .line 233
    :catchall_3
    move-exception v1

    .line 234
    :try_start_13
    monitor-exit v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 235
    :try_start_14
    throw v1
    :try_end_14
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_14 .. :try_end_14} :catch_6
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 236
    :catchall_4
    move-exception v1

    .line 237
    :try_start_15
    monitor-exit v6
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 238
    :try_start_16
    throw v1

    .line 239
    :catch_3
    move-exception v1

    .line 240
    iget-object v3, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 241
    .line 242
    monitor-enter v3
    :try_end_16
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_16 .. :try_end_16} :catch_6
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    .line 243
    :try_start_17
    iget v4, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->state:I

    .line 244
    .line 245
    if-ne v4, v2, :cond_9

    .line 246
    .line 247
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    .line 248
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 249
    .line 250
    monitor-enter v1

    .line 251
    :try_start_18
    invoke-direct {p0, v2}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 252
    .line 253
    .line 254
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 255
    .line 256
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 257
    .line 258
    .line 259
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    .line 260
    :try_start_19
    invoke-direct {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->shutdownAndFreeSslNative()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_4

    .line 261
    .line 262
    .line 263
    :catch_4
    return-void

    .line 264
    :catchall_5
    move-exception v0

    .line 265
    :try_start_1a
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    .line 266
    throw v0

    .line 267
    :cond_9
    :try_start_1b
    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    .line 268
    :try_start_1c
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    const-string v4, "unexpected CCS"

    .line 273
    .line 274
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 275
    .line 276
    .line 277
    move-result v3

    .line 278
    if-eqz v3, :cond_a

    .line 279
    .line 280
    const-string v3, "ssl_unexpected_ccs: host=%s"

    .line 281
    .line 282
    new-array v4, v0, [Ljava/lang/Object;

    .line 283
    .line 284
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLSocketImpl;->getHostnameOrIP()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v6

    .line 288
    aput-object v6, v4, v5

    .line 289
    .line 290
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    invoke-static {v3}, Lorg/conscrypt/Platform;->logEvent(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    :cond_a
    throw v1
    :try_end_1c
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_1c .. :try_end_1c} :catch_6
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    .line 298
    :catchall_6
    move-exception v1

    .line 299
    :try_start_1d
    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    .line 300
    :try_start_1e
    throw v1

    .line 301
    :catch_5
    move-exception v1

    .line 302
    new-instance v3, Ljavax/net/ssl/SSLHandshakeException;

    .line 303
    .line 304
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v4

    .line 308
    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 312
    .line 313
    .line 314
    throw v3
    :try_end_1e
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_1e .. :try_end_1e} :catch_6
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    .line 315
    :catchall_7
    move-exception v1

    .line 316
    :try_start_1f
    monitor-exit v5
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7

    .line 317
    :try_start_20
    throw v1
    :try_end_20
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_20 .. :try_end_20} :catch_6
    .catchall {:try_start_20 .. :try_end_20} :catchall_8

    .line 318
    :catchall_8
    move-exception v1

    .line 319
    goto :goto_3

    .line 320
    :catch_6
    move-exception v1

    .line 321
    :try_start_21
    new-instance v3, Ljavax/net/ssl/SSLHandshakeException;

    .line 322
    .line 323
    const-string v4, "Handshake failed"

    .line 324
    .line 325
    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    check-cast v1, Ljavax/net/ssl/SSLHandshakeException;

    .line 333
    .line 334
    throw v1
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_8

    .line 335
    :goto_3
    if-eqz v0, :cond_b

    .line 336
    .line 337
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 338
    .line 339
    monitor-enter v0

    .line 340
    :try_start_22
    invoke-direct {p0, v2}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->transitionTo(I)V

    .line 341
    .line 342
    .line 343
    iget-object v2, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lorg/conscrypt/NativeSsl;

    .line 344
    .line 345
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 346
    .line 347
    .line 348
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_9

    .line 349
    :try_start_23
    invoke-direct {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->shutdownAndFreeSslNative()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_7

    .line 350
    .line 351
    .line 352
    goto :goto_4

    .line 353
    :catchall_9
    move-exception v1

    .line 354
    :try_start_24
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_9

    .line 355
    throw v1

    .line 356
    :catch_7
    :cond_b
    :goto_4
    throw v1

    .line 357
    :cond_c
    :try_start_25
    monitor-exit v0

    .line 358
    return-void

    .line 359
    :catchall_a
    move-exception v1

    .line 360
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_a

    .line 361
    throw v1
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
.end method

.method public final verifyCertificateChain([[BLjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    :try_start_0
    array-length v0, p1

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-static {p1}, Lorg/conscrypt/SSLUtils;->decodeX509CertificateChain([[B)[Ljava/security/cert/X509Certificate;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 11
    .line 12
    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket;->activeSession:Lorg/conscrypt/ActiveSession;

    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLSocketImpl;->getHostnameOrIP()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getPort()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {v1, v2, v3, p1}, Lorg/conscrypt/ActiveSession;->onPeerCertificatesReceived(Ljava/lang/String;I[Ljava/security/cert/X509Certificate;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->getUseClientMode()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-static {v0, p1, p2, p0}, Lorg/conscrypt/Platform;->checkServerTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lorg/conscrypt/AbstractConscryptSocket;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 p2, 0x0

    .line 42
    aget-object p2, p1, p2

    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-static {v0, p1, p2, p0}, Lorg/conscrypt/Platform;->checkClientTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lorg/conscrypt/AbstractConscryptSocket;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void

    .line 56
    :cond_1
    new-instance p1, Ljava/security/cert/CertificateException;

    .line 57
    .line 58
    const-string p2, "No X.509 TrustManager"

    .line 59
    .line 60
    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    :cond_2
    new-instance p1, Ljava/security/cert/CertificateException;

    .line 65
    .line 66
    const-string p2, "Peer sent no certificate"

    .line 67
    .line 68
    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :catch_0
    move-exception p1

    .line 73
    new-instance p2, Ljava/security/cert/CertificateException;

    .line 74
    .line 75
    invoke-direct {p2, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    throw p2

    .line 79
    :catch_1
    move-exception p1

    .line 80
    throw p1
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
.end method

.class final Lorg/conscrypt/OpenSSLSocketFactoryImpl;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "OpenSSLSocketFactoryImpl.java"


# static fields
.field private static useEngineSocketByDefault:Z


# instance fields
.field private final instantiationException:Ljava/io/IOException;

.field private final sslParameters:Lorg/conscrypt/SSLParametersImpl;

.field private useEngineSocket:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lorg/conscrypt/SSLUtils;->USE_ENGINE_SOCKET_BY_DEFAULT:Z

    .line 2
    .line 3
    sput-boolean v0, Lorg/conscrypt/OpenSSLSocketFactoryImpl;->useEngineSocketByDefault:Z

    .line 4
    .line 5
    return-void
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

.method constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 2
    sget-boolean v0, Lorg/conscrypt/OpenSSLSocketFactoryImpl;->useEngineSocketByDefault:Z

    iput-boolean v0, p0, Lorg/conscrypt/OpenSSLSocketFactoryImpl;->useEngineSocket:Z

    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-static {}, Lorg/conscrypt/SSLParametersImpl;->getDefault()Lorg/conscrypt/SSLParametersImpl;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Delayed instantiation exception:"

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    :goto_0
    iput-object v0, p0, Lorg/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 6
    iput-object v2, p0, Lorg/conscrypt/OpenSSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    return-void
.end method

.method constructor <init>(Lorg/conscrypt/SSLParametersImpl;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 8
    sget-boolean v0, Lorg/conscrypt/OpenSSLSocketFactoryImpl;->useEngineSocketByDefault:Z

    iput-boolean v0, p0, Lorg/conscrypt/OpenSSLSocketFactoryImpl;->useEngineSocket:Z

    .line 9
    iput-object p1, p0, Lorg/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lorg/conscrypt/OpenSSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    return-void
.end method

.method private hasFileDescriptor(Ljava/net/Socket;)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p1}, Lorg/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    return p1

    .line 6
    :catch_0
    const/4 p1, 0x0

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
.end method

.method static setUseEngineSocketByDefault(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lorg/conscrypt/OpenSSLSocketFactoryImpl;->useEngineSocketByDefault:Z

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


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/conscrypt/OpenSSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    if-nez v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lorg/conscrypt/OpenSSLSocketFactoryImpl;->useEngineSocket:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/conscrypt/SSLParametersImpl;

    invoke-static {v0}, Lorg/conscrypt/Platform;->createEngineSocket(Lorg/conscrypt/SSLParametersImpl;)Lorg/conscrypt/ConscryptEngineSocket;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/conscrypt/SSLParametersImpl;

    invoke-static {v0}, Lorg/conscrypt/Platform;->createFileDescriptorSocket(Lorg/conscrypt/SSLParametersImpl;)Lorg/conscrypt/ConscryptFileDescriptorSocket;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    throw v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 6
    iget-boolean v0, p0, Lorg/conscrypt/OpenSSLSocketFactoryImpl;->useEngineSocket:Z

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lorg/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 8
    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/conscrypt/SSLParametersImpl;

    .line 9
    invoke-static {p1, p2, v0}, Lorg/conscrypt/Platform;->createEngineSocket(Ljava/lang/String;ILorg/conscrypt/SSLParametersImpl;)Lorg/conscrypt/ConscryptEngineSocket;

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    iget-object v0, p0, Lorg/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 11
    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/conscrypt/SSLParametersImpl;

    .line 12
    invoke-static {p1, p2, v0}, Lorg/conscrypt/Platform;->createFileDescriptorSocket(Ljava/lang/String;ILorg/conscrypt/SSLParametersImpl;)Lorg/conscrypt/ConscryptFileDescriptorSocket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 13
    iget-boolean v0, p0, Lorg/conscrypt/OpenSSLSocketFactoryImpl;->useEngineSocket:Z

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lorg/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 15
    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/conscrypt/SSLParametersImpl;

    .line 16
    invoke-static {p1, p2, p3, p4, v0}, Lorg/conscrypt/Platform;->createEngineSocket(Ljava/lang/String;ILjava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)Lorg/conscrypt/ConscryptEngineSocket;

    move-result-object p1

    return-object p1

    .line 17
    :cond_0
    iget-object v0, p0, Lorg/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 18
    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/conscrypt/SSLParametersImpl;

    .line 19
    invoke-static {p1, p2, p3, p4, v0}, Lorg/conscrypt/Platform;->createFileDescriptorSocket(Ljava/lang/String;ILjava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)Lorg/conscrypt/ConscryptFileDescriptorSocket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    iget-boolean v0, p0, Lorg/conscrypt/OpenSSLSocketFactoryImpl;->useEngineSocket:Z

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lorg/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 22
    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/conscrypt/SSLParametersImpl;

    .line 23
    invoke-static {p1, p2, v0}, Lorg/conscrypt/Platform;->createEngineSocket(Ljava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)Lorg/conscrypt/ConscryptEngineSocket;

    move-result-object p1

    return-object p1

    .line 24
    :cond_0
    iget-object v0, p0, Lorg/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 25
    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/conscrypt/SSLParametersImpl;

    .line 26
    invoke-static {p1, p2, v0}, Lorg/conscrypt/Platform;->createFileDescriptorSocket(Ljava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)Lorg/conscrypt/ConscryptFileDescriptorSocket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    iget-boolean v0, p0, Lorg/conscrypt/OpenSSLSocketFactoryImpl;->useEngineSocket:Z

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lorg/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 29
    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/conscrypt/SSLParametersImpl;

    .line 30
    invoke-static {p1, p2, p3, p4, v0}, Lorg/conscrypt/Platform;->createEngineSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)Lorg/conscrypt/ConscryptEngineSocket;

    move-result-object p1

    return-object p1

    .line 31
    :cond_0
    iget-object v0, p0, Lorg/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 32
    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/conscrypt/SSLParametersImpl;

    .line 33
    invoke-static {p1, p2, p3, p4, v0}, Lorg/conscrypt/Platform;->createFileDescriptorSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)Lorg/conscrypt/ConscryptFileDescriptorSocket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "socket"

    .line 34
    invoke-static {p1, v0}, Lorg/conscrypt/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    invoke-virtual {p1}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    iget-boolean v0, p0, Lorg/conscrypt/OpenSSLSocketFactoryImpl;->useEngineSocket:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/conscrypt/OpenSSLSocketFactoryImpl;->hasFileDescriptor(Ljava/net/Socket;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lorg/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 38
    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/conscrypt/SSLParametersImpl;

    .line 39
    invoke-static {p1, p2, p3, p4, v0}, Lorg/conscrypt/Platform;->createFileDescriptorSocket(Ljava/net/Socket;Ljava/lang/String;IZLorg/conscrypt/SSLParametersImpl;)Lorg/conscrypt/ConscryptFileDescriptorSocket;

    move-result-object p1

    return-object p1

    .line 40
    :cond_0
    iget-object v0, p0, Lorg/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 41
    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/conscrypt/SSLParametersImpl;

    .line 42
    invoke-static {p1, p2, p3, p4, v0}, Lorg/conscrypt/Platform;->createEngineSocket(Ljava/net/Socket;Ljava/lang/String;IZLorg/conscrypt/SSLParametersImpl;)Lorg/conscrypt/ConscryptEngineSocket;

    move-result-object p1

    return-object p1

    .line 43
    :cond_1
    new-instance p1, Ljava/net/SocketException;

    const-string p2, "Socket is not connected."

    invoke-direct {p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

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

.method public getSupportedCipherSuites()[Ljava/lang/String;
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

.method setUseEngineSocket(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/conscrypt/OpenSSLSocketFactoryImpl;->useEngineSocket:Z

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

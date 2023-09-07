.class public Lorg/xbill/DNS/spi/DNSJavaNameServiceDescriptor;
.super Ljava/lang/Object;
.source "DNSJavaNameServiceDescriptor.java"

# interfaces
.implements Lsun/net/spi/nameservice/NameServiceDescriptor;


# static fields
.field static synthetic class$sun$net$spi$nameservice$NameService:Ljava/lang/Class;

.field private static nameService:Lsun/net/spi/nameservice/NameService;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Lorg/xbill/DNS/spi/DNSJavaNameServiceDescriptor;->class$sun$net$spi$nameservice$NameService:Ljava/lang/Class;

    .line 2
    .line 3
    const-string v1, "sun.net.spi.nameservice.NameService"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {v1}, Lorg/xbill/DNS/spi/DNSJavaNameServiceDescriptor;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/xbill/DNS/spi/DNSJavaNameServiceDescriptor;->class$sun$net$spi$nameservice$NameService:Ljava/lang/Class;

    .line 12
    .line 13
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_1
    const/4 v2, 0x1

    .line 28
    new-array v2, v2, [Ljava/lang/Class;

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    sget-object v4, Lorg/xbill/DNS/spi/DNSJavaNameServiceDescriptor;->class$sun$net$spi$nameservice$NameService:Ljava/lang/Class;

    .line 32
    .line 33
    if-nez v4, :cond_2

    .line 34
    .line 35
    invoke-static {v1}, Lorg/xbill/DNS/spi/DNSJavaNameServiceDescriptor;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    sput-object v4, Lorg/xbill/DNS/spi/DNSJavaNameServiceDescriptor;->class$sun$net$spi$nameservice$NameService:Ljava/lang/Class;

    .line 40
    .line 41
    :cond_2
    aput-object v4, v2, v3

    .line 42
    .line 43
    new-instance v1, Lorg/xbill/DNS/spi/DNSJavaNameService;

    .line 44
    .line 45
    invoke-direct {v1}, Lorg/xbill/DNS/spi/DNSJavaNameService;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v2, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lsun/net/spi/nameservice/NameService;

    .line 53
    .line 54
    sput-object v0, Lorg/xbill/DNS/spi/DNSJavaNameServiceDescriptor;->nameService:Lsun/net/spi/nameservice/NameService;

    .line 55
    .line 56
    return-void
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

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    new-instance v0, Ljava/lang/NoClassDefFoundError;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    throw p0
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
.method public createNameService()Lsun/net/spi/nameservice/NameService;
    .locals 1

    .line 1
    sget-object v0, Lorg/xbill/DNS/spi/DNSJavaNameServiceDescriptor;->nameService:Lsun/net/spi/nameservice/NameService;

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

.method public getProviderName()Ljava/lang/String;
    .locals 1

    const-string v0, "dnsjava"

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "dns"

    return-object v0
.end method

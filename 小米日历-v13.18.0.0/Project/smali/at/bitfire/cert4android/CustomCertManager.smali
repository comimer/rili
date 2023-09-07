.class public final Lat/bitfire/cert4android/CustomCertManager;
.super Ljava/lang/Object;
.source "CustomCertManager.kt"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/bitfire/cert4android/CustomCertManager$Companion;,
        Lat/bitfire/cert4android/CustomCertManager$CustomHostnameVerifier;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 72\u00020\u00012\u00020\u0002:\u000278B/\u0008\u0007\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u001c\u0012\u0008\u0008\u0002\u00104\u001a\u00020\u001c\u0012\u0008\u0008\u0002\u0010!\u001a\u00020\u001c\u00a2\u0006\u0004\u00085\u00106J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J)\u0010\n\u001a\u00020\u00032\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ%\u0010\u000c\u001a\u00020\u00032\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u000bJ\u0017\u0010\u0010\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0006H\u0000\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0015\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0014\u0010\u0016\u001a\u00060\u0015R\u00020\u00002\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013R\u0017\u0010\u0018\u001a\u00020\u00178\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\u0017\u0010\u001d\u001a\u00020\u001c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 R\"\u0010!\u001a\u00020\u001c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008!\u0010\u001e\u001a\u0004\u0008\"\u0010 \"\u0004\u0008#\u0010$R$\u0010&\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\u0018\u0010-\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u0016\u00100\u001a\u00020/8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u00101R\u0016\u00102\u001a\u0004\u0018\u00010\u00018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00082\u00103\u00a8\u00069"
    }
    d2 = {
        "Lat/bitfire/cert4android/CustomCertManager;",
        "Ljavax/net/ssl/X509TrustManager;",
        "Ljava/io/Closeable;",
        "Lkotlin/u;",
        "close",
        "",
        "Ljava/security/cert/X509Certificate;",
        "chain",
        "",
        "authType",
        "checkClientTrusted",
        "([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V",
        "checkServerTrusted",
        "cert",
        "checkCustomTrusted$cert4android_release",
        "(Ljava/security/cert/X509Certificate;)V",
        "checkCustomTrusted",
        "getAcceptedIssuers",
        "()[Ljava/security/cert/X509Certificate;",
        "Ljavax/net/ssl/HostnameVerifier;",
        "defaultVerifier",
        "Lat/bitfire/cert4android/CustomCertManager$CustomHostnameVerifier;",
        "hostnameVerifier",
        "Landroid/content/Context;",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "",
        "interactive",
        "Z",
        "getInteractive",
        "()Z",
        "appInForeground",
        "getAppInForeground",
        "setAppInForeground",
        "(Z)V",
        "Lat/bitfire/cert4android/ICustomCertService;",
        "service",
        "Lat/bitfire/cert4android/ICustomCertService;",
        "getService",
        "()Lat/bitfire/cert4android/ICustomCertService;",
        "setService",
        "(Lat/bitfire/cert4android/ICustomCertService;)V",
        "Landroid/content/ServiceConnection;",
        "serviceConn",
        "Landroid/content/ServiceConnection;",
        "Ljava/lang/Object;",
        "serviceLock",
        "Ljava/lang/Object;",
        "systemTrustManager",
        "Ljavax/net/ssl/X509TrustManager;",
        "trustSystemCerts",
        "<init>",
        "(Landroid/content/Context;ZZZ)V",
        "Companion",
        "CustomHostnameVerifier",
        "cert4android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lat/bitfire/cert4android/CustomCertManager$Companion;

.field private static SERVICE_TIMEOUT:J


# instance fields
.field private volatile appInForeground:Z

.field private final context:Landroid/content/Context;

.field private final interactive:Z

.field private service:Lat/bitfire/cert4android/ICustomCertService;

.field private serviceConn:Landroid/content/ServiceConnection;

.field private serviceLock:Ljava/lang/Object;

.field private final systemTrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lat/bitfire/cert4android/CustomCertManager$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lat/bitfire/cert4android/CustomCertManager$Companion;-><init>(Lkotlin/jvm/internal/o;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lat/bitfire/cert4android/CustomCertManager;->Companion:Lat/bitfire/cert4android/CustomCertManager$Companion;

    .line 8
    .line 9
    const-wide/32 v0, 0x2bf20

    .line 10
    .line 11
    .line 12
    sput-wide v0, Lat/bitfire/cert4android/CustomCertManager;->SERVICE_TIMEOUT:J

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
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lat/bitfire/cert4android/CustomCertManager;-><init>(Landroid/content/Context;ZZZILkotlin/jvm/internal/o;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v7}, Lat/bitfire/cert4android/CustomCertManager;-><init>(Landroid/content/Context;ZZZILkotlin/jvm/internal/o;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lat/bitfire/cert4android/CustomCertManager;-><init>(Landroid/content/Context;ZZZILkotlin/jvm/internal/o;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZZ)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lat/bitfire/cert4android/CustomCertManager;->context:Landroid/content/Context;

    .line 3
    iput-boolean p2, p0, Lat/bitfire/cert4android/CustomCertManager;->interactive:Z

    .line 4
    iput-boolean p4, p0, Lat/bitfire/cert4android/CustomCertManager;->appInForeground:Z

    .line 5
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lat/bitfire/cert4android/CustomCertManager;->serviceLock:Ljava/lang/Object;

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    .line 6
    sget-object p3, Lat/bitfire/cert4android/CertUtils;->INSTANCE:Lat/bitfire/cert4android/CertUtils;

    invoke-virtual {p3, p2}, Lat/bitfire/cert4android/CertUtils;->getTrustManager(Ljava/security/KeyStore;)Ljavax/net/ssl/X509TrustManager;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lat/bitfire/cert4android/CustomCertManager;->systemTrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 7
    new-instance p2, Lat/bitfire/cert4android/CustomCertManager$newServiceConn$1;

    invoke-direct {p2, p0}, Lat/bitfire/cert4android/CustomCertManager$newServiceConn$1;-><init>(Lat/bitfire/cert4android/CustomCertManager;)V

    .line 8
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-static {p3, p4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    const/4 p4, 0x1

    xor-int/2addr p3, p4

    if-eqz p3, :cond_3

    .line 9
    sget-object p3, Lat/bitfire/cert4android/Constants;->INSTANCE:Lat/bitfire/cert4android/Constants;

    invoke-virtual {p3}, Lat/bitfire/cert4android/Constants;->getLog()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Binding to service"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 10
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lat/bitfire/cert4android/CustomCertService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0, p2, p4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    iput-object p2, p0, Lat/bitfire/cert4android/CustomCertManager;->serviceConn:Landroid/content/ServiceConnection;

    .line 12
    invoke-virtual {p3}, Lat/bitfire/cert4android/Constants;->getLog()Ljava/util/logging/Logger;

    move-result-object p1

    const-string p2, "Waiting for service to be bound"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lat/bitfire/cert4android/CustomCertManager;->serviceLock:Ljava/lang/Object;

    monitor-enter p1

    .line 14
    :catch_0
    :goto_0
    :try_start_0
    iget-object p2, p0, Lat/bitfire/cert4android/CustomCertManager;->service:Lat/bitfire/cert4android/ICustomCertService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    .line 15
    :try_start_1
    iget-object p2, p0, Lat/bitfire/cert4android/CustomCertManager;->serviceLock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 16
    :cond_1
    :try_start_2
    sget-object p2, Lkotlin/u;->a:Lkotlin/u;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2

    .line 18
    :cond_2
    invoke-virtual {p3}, Lat/bitfire/cert4android/Constants;->getLog()Ljava/util/logging/Logger;

    move-result-object p1

    const-string p2, "Couldn\'t bind CustomCertService to context"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_3
    const-string p1, "must not be run on main thread"

    .line 19
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public synthetic constructor <init>(Landroid/content/Context;ZZZILkotlin/jvm/internal/o;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x1

    if-eqz p6, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 20
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lat/bitfire/cert4android/CustomCertManager;-><init>(Landroid/content/Context;ZZZ)V

    return-void
.end method

.method public static final synthetic access$getSERVICE_TIMEOUT$cp()J
    .locals 2

    .line 1
    sget-wide v0, Lat/bitfire/cert4android/CustomCertManager;->SERVICE_TIMEOUT:J

    .line 2
    .line 3
    return-wide v0
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

.method public static final synthetic access$getServiceLock$p(Lat/bitfire/cert4android/CustomCertManager;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lat/bitfire/cert4android/CustomCertManager;->serviceLock:Ljava/lang/Object;

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
.end method

.method public static final synthetic access$setSERVICE_TIMEOUT$cp(J)V
    .locals 0

    .line 1
    sput-wide p0, Lat/bitfire/cert4android/CustomCertManager;->SERVICE_TIMEOUT:J

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


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/security/cert/CertificateException;

    .line 2
    .line 3
    const-string p2, "cert4android doesn\'t validate client certificates"

    .line 4
    .line 5
    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
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
.end method

.method public final checkCustomTrusted$cert4android_release(Ljava/security/cert/X509Certificate;)V
    .locals 6

    .line 1
    const-string v0, "cert"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lat/bitfire/cert4android/CustomCertManager;->service:Lat/bitfire/cert4android/ICustomCertService;

    .line 7
    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    new-instance v1, Ljava/lang/Object;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 16
    .line 17
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v3, Lat/bitfire/cert4android/CustomCertManager$checkCustomTrusted$callback$1;

    .line 21
    .line 22
    invoke-direct {v3, v1, v2}, Lat/bitfire/cert4android/CustomCertManager$checkCustomTrusted$callback$1;-><init>(Ljava/lang/Object;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-boolean v4, p0, Lat/bitfire/cert4android/CustomCertManager;->interactive:Z

    .line 30
    .line 31
    iget-boolean v5, p0, Lat/bitfire/cert4android/CustomCertManager;->appInForeground:Z

    .line 32
    .line 33
    invoke-interface {v0, p1, v4, v5, v3}, Lat/bitfire/cert4android/ICustomCertService;->checkTrusted([BZZLat/bitfire/cert4android/IOnCertificateDecision;)V

    .line 34
    .line 35
    .line 36
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 37
    :try_start_1
    iget-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 38
    .line 39
    if-nez p1, :cond_0

    .line 40
    .line 41
    sget-object p1, Lat/bitfire/cert4android/Constants;->INSTANCE:Lat/bitfire/cert4android/Constants;

    .line 42
    .line 43
    invoke-virtual {p1}, Lat/bitfire/cert4android/Constants;->getLog()Ljava/util/logging/Logger;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string v4, "Waiting for reply from service"

    .line 48
    .line 49
    invoke-virtual {p1, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    .line 51
    .line 52
    :try_start_2
    sget-wide v4, Lat/bitfire/cert4android/CustomCertManager;->SERVICE_TIMEOUT:J

    .line 53
    .line 54
    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    .line 56
    .line 57
    :catch_0
    :cond_0
    :try_start_3
    sget-object p1, Lkotlin/u;->a:Lkotlin/u;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 58
    .line 59
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 60
    iget-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p1, Ljava/lang/Boolean;

    .line 63
    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 67
    .line 68
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_2

    .line 73
    .line 74
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 75
    .line 76
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-nez p1, :cond_1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    new-instance p1, Ljava/security/cert/CertificateException;

    .line 84
    .line 85
    const-string v0, "Certificate not accepted by CustomCertService"

    .line 86
    .line 87
    invoke-direct {p1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p1

    .line 91
    :cond_2
    :goto_0
    return-void

    .line 92
    :cond_3
    invoke-interface {v0, v3}, Lat/bitfire/cert4android/ICustomCertService;->abortCheck(Lat/bitfire/cert4android/IOnCertificateDecision;)V

    .line 93
    .line 94
    .line 95
    new-instance p1, Ljava/security/cert/CertificateException;

    .line 96
    .line 97
    const-string v0, "Timeout when waiting for certificate trustworthiness decision"

    .line 98
    .line 99
    invoke-direct {p1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p1

    .line 103
    :catchall_0
    move-exception p1

    .line 104
    :try_start_5
    monitor-exit v1

    .line 105
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 106
    :catch_1
    move-exception p1

    .line 107
    new-instance v0, Ljava/security/cert/CertificateException;

    .line 108
    .line 109
    const-string v1, "Couldn\'t check certificate"

    .line 110
    .line 111
    invoke-direct {v0, v1, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    .line 113
    .line 114
    throw v0

    .line 115
    :cond_4
    new-instance p1, Ljava/security/cert/CertificateException;

    .line 116
    .line 117
    const-string v0, "Not bound to CustomCertService"

    .line 118
    .line 119
    invoke-direct {p1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p1
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
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1
    const-string v0, "chain"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "authType"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lat/bitfire/cert4android/CustomCertManager;->systemTrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    :try_start_0
    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    const/4 p2, 0x1

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    sget-object p2, Lat/bitfire/cert4android/Constants;->INSTANCE:Lat/bitfire/cert4android/Constants;

    .line 22
    .line 23
    invoke-virtual {p2}, Lat/bitfire/cert4android/Constants;->getLog()Ljava/util/logging/Logger;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    const-string v0, "Certificate not trusted by system"

    .line 28
    .line 29
    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    move p2, v1

    .line 33
    :goto_0
    if-nez p2, :cond_1

    .line 34
    .line 35
    aget-object p1, p1, v1

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lat/bitfire/cert4android/CustomCertManager;->checkCustomTrusted$cert4android_release(Ljava/security/cert/X509Certificate;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method public close()V
    .locals 4

    .line 1
    iget-object v0, p0, Lat/bitfire/cert4android/CustomCertManager;->serviceConn:Landroid/content/ServiceConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lat/bitfire/cert4android/CustomCertManager;->context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lat/bitfire/cert4android/CustomCertManager;->serviceConn:Landroid/content/ServiceConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    sget-object v1, Lat/bitfire/cert4android/Constants;->INSTANCE:Lat/bitfire/cert4android/Constants;

    .line 16
    .line 17
    invoke-virtual {v1}, Lat/bitfire/cert4android/Constants;->getLog()Ljava/util/logging/Logger;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 22
    .line 23
    const-string v3, "Couldn\'t unbind CustomCertService"

    .line 24
    .line 25
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    :goto_0
    return-void
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
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public final getAppInForeground()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lat/bitfire/cert4android/CustomCertManager;->appInForeground:Z

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
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/cert4android/CustomCertManager;->context:Landroid/content/Context;

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

.method public final getInteractive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lat/bitfire/cert4android/CustomCertManager;->interactive:Z

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
.end method

.method public final getService()Lat/bitfire/cert4android/ICustomCertService;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/cert4android/CustomCertManager;->service:Lat/bitfire/cert4android/ICustomCertService;

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

.method public final hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lat/bitfire/cert4android/CustomCertManager$CustomHostnameVerifier;
    .locals 1

    .line 1
    new-instance v0, Lat/bitfire/cert4android/CustomCertManager$CustomHostnameVerifier;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lat/bitfire/cert4android/CustomCertManager$CustomHostnameVerifier;-><init>(Lat/bitfire/cert4android/CustomCertManager;Ljavax/net/ssl/HostnameVerifier;)V

    .line 4
    .line 5
    .line 6
    return-object v0
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

.method public final setAppInForeground(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lat/bitfire/cert4android/CustomCertManager;->appInForeground:Z

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

.method public final setService(Lat/bitfire/cert4android/ICustomCertService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lat/bitfire/cert4android/CustomCertManager;->service:Lat/bitfire/cert4android/ICustomCertService;

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

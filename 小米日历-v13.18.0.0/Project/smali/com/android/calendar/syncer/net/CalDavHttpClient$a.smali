.class public final Lcom/android/calendar/syncer/net/CalDavHttpClient$a;
.super Ljava/lang/Object;
.source "CalDavHttpClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/syncer/net/CalDavHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/syncer/net/CalDavHttpClient$a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001a\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u0018\u0010\t\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0008\u001a\u00020\u0007J\u0006\u0010\u000b\u001a\u00020\nR\u0019\u0010\u0010\u001a\u0004\u0018\u00010\u000c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u0012R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0019\u001a\u00020\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010\u0018\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/android/calendar/syncer/net/CalDavHttpClient$a;",
        "",
        "",
        "foreground",
        "d",
        "",
        "host",
        "Lcom/android/calendar/syncer/model/Credentials;",
        "credentials",
        "a",
        "Lcom/android/calendar/syncer/net/CalDavHttpClient;",
        "b",
        "Landroid/content/Context;",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "context",
        "Lat/bitfire/cert4android/CustomCertManager;",
        "Lat/bitfire/cert4android/CustomCertManager;",
        "certManager",
        "c",
        "Ljava/lang/String;",
        "certificateAlias",
        "Lokhttp3/x$a;",
        "Lokhttp3/x$a;",
        "orig",
        "Ld2/a;",
        "accountSettings",
        "<init>",
        "(Landroid/content/Context;Ld2/a;)V",
        "syncer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lat/bitfire/cert4android/CustomCertManager;

.field private c:Ljava/lang/String;

.field private final d:Lokhttp3/x$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ld2/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/calendar/syncer/net/CalDavHttpClient$a;->a:Landroid/content/Context;

    .line 3
    sget-object p1, Lcom/android/calendar/syncer/net/CalDavHttpClient;->c:Lcom/android/calendar/syncer/net/CalDavHttpClient$b;

    invoke-virtual {p1}, Lcom/android/calendar/syncer/net/CalDavHttpClient$b;->a()Lokhttp3/x;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/x;->C()Lokhttp3/x$a;

    move-result-object p1

    iput-object p1, p0, Lcom/android/calendar/syncer/net/CalDavHttpClient$a;->d:Lokhttp3/x$a;

    .line 4
    new-instance v0, Lcom/android/calendar/syncer/e;

    invoke-direct {v0}, Lcom/android/calendar/syncer/e;-><init>()V

    invoke-virtual {p1, v0}, Lokhttp3/x$a;->g(Lokhttp3/m;)Lokhttp3/x$a;

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p2}, Ld2/a;->a()Lcom/android/calendar/syncer/model/Credentials;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/syncer/net/CalDavHttpClient$a;->a(Ljava/lang/String;Lcom/android/calendar/syncer/model/Credentials;)Lcom/android/calendar/syncer/net/CalDavHttpClient$a;

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ld2/a;ILkotlin/jvm/internal/o;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/syncer/net/CalDavHttpClient$a;-><init>(Landroid/content/Context;Ld2/a;)V

    return-void
.end method

.method private static final c()Ljavax/net/ssl/X509TrustManager;
    .locals 2

    .line 1
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "factory.trustManagers"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/collections/j;->x([Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "null cannot be cast to non-null type javax.net.ssl.X509TrustManager"

    .line 27
    .line 28
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    .line 32
    .line 33
    return-object v0
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


# virtual methods
.method public final a(Ljava/lang/String;Lcom/android/calendar/syncer/model/Credentials;)Lcom/android/calendar/syncer/net/CalDavHttpClient$a;
    .locals 2

    .line 1
    const-string v0, "credentials"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/android/calendar/syncer/model/Credentials;->getType()Lcom/android/calendar/syncer/model/Credentials$Type;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lcom/android/calendar/syncer/net/CalDavHttpClient$a$a;->a:[I

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    aget v0, v1, v0

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    if-eq v0, v1, :cond_1

    .line 20
    .line 21
    const/4 p1, 0x2

    .line 22
    if-eq v0, p1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p2}, Lcom/android/calendar/syncer/model/Credentials;->getCertificateAlias()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/android/calendar/syncer/net/CalDavHttpClient$a;->c:Ljava/lang/String;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lat/bitfire/dav4jvm/BasicDigestAuthHandler;

    .line 33
    .line 34
    sget-object v1, Lat/bitfire/dav4jvm/UrlUtils;->INSTANCE:Lat/bitfire/dav4jvm/UrlUtils;

    .line 35
    .line 36
    invoke-virtual {v1, p1}, Lat/bitfire/dav4jvm/UrlUtils;->hostToDomain(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p2}, Lcom/android/calendar/syncer/model/Credentials;->getUserName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/android/calendar/syncer/model/Credentials;->getPassword()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-static {p2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, p1, v1, p2}, Lat/bitfire/dav4jvm/BasicDigestAuthHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/android/calendar/syncer/net/CalDavHttpClient$a;->d:Lokhttp3/x$a;

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Lokhttp3/x$a;->b(Lokhttp3/u;)Lokhttp3/x$a;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1, v0}, Lokhttp3/x$a;->c(Lokhttp3/b;)Lokhttp3/x$a;

    .line 64
    .line 65
    .line 66
    :goto_0
    return-object p0
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
.end method

.method public final b()Lcom/android/calendar/syncer/net/CalDavHttpClient;
    .locals 9

    .line 1
    const-string v0, "CalSync:D:CalDavHttpClient"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/calendar/syncer/net/CalDavHttpClient$a;->b:Lat/bitfire/cert4android/CustomCertManager;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcom/android/calendar/syncer/net/CalDavHttpClient$a;->c()Ljavax/net/ssl/X509TrustManager;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :goto_0
    iget-object v2, p0, Lcom/android/calendar/syncer/net/CalDavHttpClient$a;->b:Lat/bitfire/cert4android/CustomCertManager;

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    sget-object v3, Lbc/d;->a:Lbc/d;

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Lat/bitfire/cert4android/CustomCertManager;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lat/bitfire/cert4android/CustomCertManager$CustomHostnameVerifier;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    sget-object v2, Lbc/d;->a:Lbc/d;

    .line 26
    .line 27
    :goto_1
    iget-object v3, p0, Lcom/android/calendar/syncer/net/CalDavHttpClient$a;->c:Ljava/lang/String;

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    if-eqz v3, :cond_5

    .line 31
    .line 32
    :try_start_0
    iget-object v5, p0, Lcom/android/calendar/syncer/net/CalDavHttpClient$a;->a:Landroid/content/Context;

    .line 33
    .line 34
    if-eqz v5, :cond_4

    .line 35
    .line 36
    invoke-static {v5, v3}, Landroid/security/KeyChain;->getCertificateChain(Landroid/content/Context;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    if-nez v6, :cond_2

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_2
    const-string v7, "KeyChain.getCertificateC\u2026ext, alias) ?: return@let"

    .line 44
    .line 45
    invoke-static {v6, v7}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v5, v3}, Landroid/security/KeyChain;->getPrivateKey(Landroid/content/Context;Ljava/lang/String;)Ljava/security/PrivateKey;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    if-nez v5, :cond_3

    .line 53
    .line 54
    :goto_2
    goto :goto_4

    .line 55
    :cond_3
    const-string v7, "KeyChain.getPrivateKey(c\u2026ext, alias) ?: return@let"

    .line 56
    .line 57
    invoke-static {v5, v7}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    new-instance v7, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v8, "Using provider certificate "

    .line 66
    .line 67
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v8, " for authentication (chain length: "

    .line 74
    .line 75
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    array-length v8, v6

    .line 79
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const/16 v8, 0x29

    .line 83
    .line 84
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    const-string v7, "AndroidKeyStore"

    .line 95
    .line 96
    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    invoke-virtual {v7, v4}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 101
    .line 102
    .line 103
    new-instance v7, Lcom/android/calendar/syncer/net/CalDavHttpClient$a$b;

    .line 104
    .line 105
    invoke-direct {v7, v3, v6, v5}, Lcom/android/calendar/syncer/net/CalDavHttpClient$a$b;-><init>(Ljava/lang/String;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 106
    .line 107
    .line 108
    :try_start_1
    iget-object v3, p0, Lcom/android/calendar/syncer/net/CalDavHttpClient$a;->d:Lokhttp3/x$a;

    .line 109
    .line 110
    sget-object v5, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 111
    .line 112
    invoke-static {v5}, Lkotlin/collections/t;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-virtual {v3, v5}, Lokhttp3/x$a;->N(Ljava/util/List;)Lokhttp3/x$a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 117
    .line 118
    .line 119
    goto :goto_5

    .line 120
    :catch_0
    move-exception v3

    .line 121
    goto :goto_3

    .line 122
    :cond_4
    :try_start_2
    const-string v3, "Required value was null."

    .line 123
    .line 124
    new-instance v5, Ljava/lang/IllegalArgumentException;

    .line 125
    .line 126
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-direct {v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 134
    :catch_1
    move-exception v3

    .line 135
    move-object v7, v4

    .line 136
    :goto_3
    const-string v5, "Couldn\'t set up provider certificate authentication"

    .line 137
    .line 138
    invoke-static {v0, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    .line 140
    .line 141
    goto :goto_5

    .line 142
    :cond_5
    :goto_4
    move-object v7, v4

    .line 143
    :goto_5
    const-string v0, "TLS"

    .line 144
    .line 145
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    const/4 v3, 0x0

    .line 150
    const/4 v5, 0x1

    .line 151
    if-eqz v7, :cond_6

    .line 152
    .line 153
    new-array v6, v5, [Ljavax/net/ssl/KeyManager;

    .line 154
    .line 155
    aput-object v7, v6, v3

    .line 156
    .line 157
    goto :goto_6

    .line 158
    :cond_6
    move-object v6, v4

    .line 159
    :goto_6
    new-array v5, v5, [Ljavax/net/ssl/X509TrustManager;

    .line 160
    .line 161
    aput-object v1, v5, v3

    .line 162
    .line 163
    check-cast v5, [Ljavax/net/ssl/TrustManager;

    .line 164
    .line 165
    invoke-virtual {v0, v6, v5, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 166
    .line 167
    .line 168
    iget-object v3, p0, Lcom/android/calendar/syncer/net/CalDavHttpClient$a;->d:Lokhttp3/x$a;

    .line 169
    .line 170
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    const-string v5, "sslContext.socketFactory"

    .line 175
    .line 176
    invoke-static {v0, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3, v0, v1}, Lokhttp3/x$a;->P(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/x$a;

    .line 180
    .line 181
    .line 182
    iget-object v0, p0, Lcom/android/calendar/syncer/net/CalDavHttpClient$a;->d:Lokhttp3/x$a;

    .line 183
    .line 184
    invoke-virtual {v0, v2}, Lokhttp3/x$a;->M(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/x$a;

    .line 185
    .line 186
    .line 187
    new-instance v0, Lcom/android/calendar/syncer/net/CalDavHttpClient;

    .line 188
    .line 189
    iget-object v1, p0, Lcom/android/calendar/syncer/net/CalDavHttpClient$a;->d:Lokhttp3/x$a;

    .line 190
    .line 191
    invoke-virtual {v1}, Lokhttp3/x$a;->d()Lokhttp3/x;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    iget-object v2, p0, Lcom/android/calendar/syncer/net/CalDavHttpClient$a;->b:Lat/bitfire/cert4android/CustomCertManager;

    .line 196
    .line 197
    invoke-direct {v0, v1, v2, v4}, Lcom/android/calendar/syncer/net/CalDavHttpClient;-><init>(Lokhttp3/x;Lat/bitfire/cert4android/CustomCertManager;Lkotlin/jvm/internal/o;)V

    .line 198
    .line 199
    .line 200
    return-object v0
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
.end method

.method public final d(Z)Lcom/android/calendar/syncer/net/CalDavHttpClient$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/syncer/net/CalDavHttpClient$a;->b:Lat/bitfire/cert4android/CustomCertManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lat/bitfire/cert4android/CustomCertManager;->setAppInForeground(Z)V

    .line 7
    .line 8
    .line 9
    :goto_0
    return-object p0
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

.class public final Lat/bitfire/cert4android/CustomCertManager$CustomHostnameVerifier;
.super Ljava/lang/Object;
.source "CustomCertManager.kt"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/bitfire/cert4android/CustomCertManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CustomHostnameVerifier"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lat/bitfire/cert4android/CustomCertManager$CustomHostnameVerifier;",
        "Ljavax/net/ssl/HostnameVerifier;",
        "defaultVerifier",
        "(Lat/bitfire/cert4android/CustomCertManager;Ljavax/net/ssl/HostnameVerifier;)V",
        "verify",
        "",
        "host",
        "",
        "sslSession",
        "Ljavax/net/ssl/SSLSession;",
        "cert4android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final defaultVerifier:Ljavax/net/ssl/HostnameVerifier;

.field final synthetic this$0:Lat/bitfire/cert4android/CustomCertManager;


# direct methods
.method public constructor <init>(Lat/bitfire/cert4android/CustomCertManager;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/HostnameVerifier;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lat/bitfire/cert4android/CustomCertManager$CustomHostnameVerifier;->this$0:Lat/bitfire/cert4android/CustomCertManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lat/bitfire/cert4android/CustomCertManager$CustomHostnameVerifier;->defaultVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 7
    .line 8
    return-void
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


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 4

    .line 1
    const-string v0, "host"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "sslSession"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lat/bitfire/cert4android/Constants;->INSTANCE:Lat/bitfire/cert4android/Constants;

    .line 12
    .line 13
    invoke-virtual {v0}, Lat/bitfire/cert4android/Constants;->getLog()Ljava/util/logging/Logger;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v3, "Verifying certificate for "

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lat/bitfire/cert4android/CustomCertManager$CustomHostnameVerifier;->defaultVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    const/4 v3, 0x1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    invoke-interface {v1, p1, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-ne p1, v3, :cond_0

    .line 48
    .line 49
    move p1, v3

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    move p1, v2

    .line 52
    :goto_0
    if-eqz p1, :cond_1

    .line 53
    .line 54
    return v3

    .line 55
    :cond_1
    :try_start_0
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const-string p2, "cert"

    .line 60
    .line 61
    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    array-length p2, p1

    .line 65
    if-nez p2, :cond_2

    .line 66
    .line 67
    move p2, v3

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    move p2, v2

    .line 70
    :goto_1
    xor-int/2addr p2, v3

    .line 71
    if-eqz p2, :cond_3

    .line 72
    .line 73
    aget-object p1, p1, v2

    .line 74
    .line 75
    instance-of p2, p1, Ljava/security/cert/X509Certificate;

    .line 76
    .line 77
    if-eqz p2, :cond_3

    .line 78
    .line 79
    iget-object p2, p0, Lat/bitfire/cert4android/CustomCertManager$CustomHostnameVerifier;->this$0:Lat/bitfire/cert4android/CustomCertManager;

    .line 80
    .line 81
    const-string v1, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    .line 82
    .line 83
    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 87
    .line 88
    invoke-virtual {p2, p1}, Lat/bitfire/cert4android/CustomCertManager;->checkCustomTrusted$cert4android_release(Ljava/security/cert/X509Certificate;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Lat/bitfire/cert4android/Constants;->getLog()Ljava/util/logging/Logger;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const-string p2, "Certificate is in custom trust store, accepting"

    .line 96
    .line 97
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 98
    .line 99
    .line 100
    return v3

    .line 101
    :catch_0
    move-exception p1

    .line 102
    sget-object p2, Lat/bitfire/cert4android/Constants;->INSTANCE:Lat/bitfire/cert4android/Constants;

    .line 103
    .line 104
    invoke-virtual {p2}, Lat/bitfire/cert4android/Constants;->getLog()Ljava/util/logging/Logger;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 109
    .line 110
    const-string v1, "Couldn\'t get certificate for host name verification"

    .line 111
    .line 112
    invoke-virtual {p2, v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    .line 114
    .line 115
    :catch_1
    :cond_3
    return v2
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

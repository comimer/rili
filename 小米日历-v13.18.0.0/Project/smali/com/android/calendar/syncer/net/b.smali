.class public final Lcom/android/calendar/syncer/net/b;
.super Ljava/lang/Object;
.source "OneWayHttpClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/syncer/net/b$a;,
        Lcom/android/calendar/syncer/net/b$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00142\u00020\u0001:\u0002\u0003\u0008B\u0011\u0008\u0002\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004R\u001c\u0010\n\u001a\n \u0007*\u0004\u0018\u00010\u00060\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0017\u0010\u000f\u001a\u00020\u000b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000c\u0010\u000e\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/android/calendar/syncer/net/b;",
        "",
        "Lat/bitfire/cert4android/CustomCertManager;",
        "a",
        "Lat/bitfire/cert4android/CustomCertManager;",
        "certManager",
        "Ljavax/net/ssl/SSLContext;",
        "kotlin.jvm.PlatformType",
        "b",
        "Ljavax/net/ssl/SSLContext;",
        "sslContext",
        "Lokhttp3/x;",
        "c",
        "Lokhttp3/x;",
        "()Lokhttp3/x;",
        "okHttpClient",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "d",
        "syncer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final d:Lcom/android/calendar/syncer/net/b$a;

.field private static e:Lcom/android/calendar/syncer/net/b;


# instance fields
.field private final a:Lat/bitfire/cert4android/CustomCertManager;

.field private final b:Ljavax/net/ssl/SSLContext;

.field private final c:Lokhttp3/x;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/calendar/syncer/net/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/calendar/syncer/net/b$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcom/android/calendar/syncer/net/b;->d:Lcom/android/calendar/syncer/net/b$a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v7, Lat/bitfire/cert4android/CustomCertManager;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    const/16 v5, 0xe

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    move-object v0, v7

    .line 13
    move-object v1, p1

    .line 14
    invoke-direct/range {v0 .. v6}, Lat/bitfire/cert4android/CustomCertManager;-><init>(Landroid/content/Context;ZZZILkotlin/jvm/internal/o;)V

    .line 15
    .line 16
    .line 17
    iput-object v7, p0, Lcom/android/calendar/syncer/net/b;->a:Lat/bitfire/cert4android/CustomCertManager;

    .line 18
    .line 19
    const-string p1, "TLS"

    .line 20
    .line 21
    invoke-static {p1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/android/calendar/syncer/net/b;->b:Ljavax/net/ssl/SSLContext;

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    new-array v0, v0, [Lat/bitfire/cert4android/CustomCertManager;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    aput-object v7, v0, v1

    .line 32
    .line 33
    check-cast v0, [Ljavax/net/ssl/TrustManager;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-virtual {p1, v2, v0, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Lokhttp3/x$a;

    .line 40
    .line 41
    invoke-direct {v0}, Lokhttp3/x$a;-><init>()V

    .line 42
    .line 43
    .line 44
    new-instance v2, Lcom/android/calendar/syncer/net/b$b;

    .line 45
    .line 46
    invoke-direct {v2}, Lcom/android/calendar/syncer/net/b$b;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2}, Lokhttp3/x$a;->b(Lokhttp3/u;)Lokhttp3/x$a;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0, v1}, Lokhttp3/x$a;->h(Z)Lokhttp3/x$a;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 58
    .line 59
    const-wide/16 v2, 0x5

    .line 60
    .line 61
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/x$a;->e(JLjava/util/concurrent/TimeUnit;)Lokhttp3/x$a;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-wide/16 v2, 0x3c

    .line 66
    .line 67
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/x$a;->O(JLjava/util/concurrent/TimeUnit;)Lokhttp3/x$a;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const-string v1, "sslContext.socketFactory"

    .line 76
    .line 77
    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p1, v7}, Lokhttp3/x$a;->P(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/x$a;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    sget-object v0, Lbc/d;->a:Lbc/d;

    .line 85
    .line 86
    invoke-virtual {v7, v0}, Lat/bitfire/cert4android/CustomCertManager;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lat/bitfire/cert4android/CustomCertManager$CustomHostnameVerifier;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {p1, v0}, Lokhttp3/x$a;->M(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/x$a;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Lokhttp3/x$a;->d()Lokhttp3/x;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iput-object p1, p0, Lcom/android/calendar/syncer/net/b;->c:Lokhttp3/x;

    .line 99
    .line 100
    return-void
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

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/calendar/syncer/net/b;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic a()Lcom/android/calendar/syncer/net/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/calendar/syncer/net/b;->e:Lcom/android/calendar/syncer/net/b;

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

.method public static final synthetic b(Lcom/android/calendar/syncer/net/b;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/android/calendar/syncer/net/b;->e:Lcom/android/calendar/syncer/net/b;

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
.method public final c()Lokhttp3/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/syncer/net/b;->c:Lokhttp3/x;

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

.class public final Lcom/android/calendar/syncer/net/CalDavHttpClient;
.super Ljava/lang/Object;
.source "CalDavHttpClient.kt"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/syncer/net/CalDavHttpClient$b;,
        Lcom/android/calendar/syncer/net/CalDavHttpClient$a;,
        Lcom/android/calendar/syncer/net/CalDavHttpClient$c;,
        Lcom/android/calendar/syncer/net/CalDavHttpClient$TimeoutInterceptor;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \u00102\u00020\u0001:\u0004\u0005\u000b\u0011\u0010B\u001b\u0008\u0002\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016R\u0017\u0010\t\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\r\u001a\u0004\u0018\u00010\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/android/calendar/syncer/net/CalDavHttpClient;",
        "Ljava/lang/AutoCloseable;",
        "Lkotlin/u;",
        "close",
        "Lokhttp3/x;",
        "a",
        "Lokhttp3/x;",
        "d",
        "()Lokhttp3/x;",
        "okHttpClient",
        "Lat/bitfire/cert4android/CustomCertManager;",
        "b",
        "Lat/bitfire/cert4android/CustomCertManager;",
        "certManager",
        "<init>",
        "(Lokhttp3/x;Lat/bitfire/cert4android/CustomCertManager;)V",
        "c",
        "TimeoutInterceptor",
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
.field public static final c:Lcom/android/calendar/syncer/net/CalDavHttpClient$b;

.field private static final d:Lokhttp3/x;


# instance fields
.field private final a:Lokhttp3/x;

.field private final b:Lat/bitfire/cert4android/CustomCertManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/calendar/syncer/net/CalDavHttpClient$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/calendar/syncer/net/CalDavHttpClient$b;-><init>(Lkotlin/jvm/internal/o;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/calendar/syncer/net/CalDavHttpClient;->c:Lcom/android/calendar/syncer/net/CalDavHttpClient$b;

    .line 8
    .line 9
    new-instance v0, Lokhttp3/x$a;

    .line 10
    .line 11
    invoke-direct {v0}, Lokhttp3/x$a;-><init>()V

    .line 12
    .line 13
    .line 14
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 15
    .line 16
    const-wide/16 v2, 0x5

    .line 17
    .line 18
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/x$a;->e(JLjava/util/concurrent/TimeUnit;)Lokhttp3/x$a;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-wide/16 v2, 0x14

    .line 23
    .line 24
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/x$a;->Q(JLjava/util/concurrent/TimeUnit;)Lokhttp3/x$a;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-wide/16 v2, 0x3c

    .line 29
    .line 30
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/x$a;->O(JLjava/util/concurrent/TimeUnit;)Lokhttp3/x$a;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x2

    .line 35
    new-array v1, v1, [Lokhttp3/k;

    .line 36
    .line 37
    sget-object v2, Lokhttp3/k;->j:Lokhttp3/k;

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    aput-object v2, v1, v3

    .line 41
    .line 42
    sget-object v2, Lokhttp3/k;->i:Lokhttp3/k;

    .line 43
    .line 44
    const/4 v4, 0x1

    .line 45
    aput-object v2, v1, v4

    .line 46
    .line 47
    invoke-static {v1}, Lkotlin/collections/t;->m([Ljava/lang/Object;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lokhttp3/x$a;->f(Ljava/util/List;)Lokhttp3/x$a;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0, v3}, Lokhttp3/x$a;->h(Z)Lokhttp3/x$a;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sget-object v1, Lcom/android/calendar/syncer/net/CalDavHttpClient$c;->d:Lcom/android/calendar/syncer/net/CalDavHttpClient$c;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lokhttp3/x$a;->b(Lokhttp3/u;)Lokhttp3/x$a;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sget-object v1, Lcom/android/calendar/syncer/net/CalDavHttpClient$TimeoutInterceptor;->d:Lcom/android/calendar/syncer/net/CalDavHttpClient$TimeoutInterceptor;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lokhttp3/x$a;->a(Lokhttp3/u;)Lokhttp3/x$a;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lokhttp3/x$a;->d()Lokhttp3/x;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sput-object v0, Lcom/android/calendar/syncer/net/CalDavHttpClient;->d:Lokhttp3/x;

    .line 76
    .line 77
    return-void
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
.end method

.method private constructor <init>(Lokhttp3/x;Lat/bitfire/cert4android/CustomCertManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/calendar/syncer/net/CalDavHttpClient;->a:Lokhttp3/x;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/calendar/syncer/net/CalDavHttpClient;->b:Lat/bitfire/cert4android/CustomCertManager;

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

.method public synthetic constructor <init>(Lokhttp3/x;Lat/bitfire/cert4android/CustomCertManager;Lkotlin/jvm/internal/o;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/calendar/syncer/net/CalDavHttpClient;-><init>(Lokhttp3/x;Lat/bitfire/cert4android/CustomCertManager;)V

    return-void
.end method

.method public static final synthetic c()Lokhttp3/x;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/calendar/syncer/net/CalDavHttpClient;->d:Lokhttp3/x;

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


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/syncer/net/CalDavHttpClient;->a:Lokhttp3/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokhttp3/x;->g()Lokhttp3/c;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/calendar/syncer/net/CalDavHttpClient;->b:Lat/bitfire/cert4android/CustomCertManager;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lat/bitfire/cert4android/CustomCertManager;->close()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
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

.method public final d()Lokhttp3/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/syncer/net/CalDavHttpClient;->a:Lokhttp3/x;

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

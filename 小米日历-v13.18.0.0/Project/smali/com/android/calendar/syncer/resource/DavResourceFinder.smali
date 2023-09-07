.class public final Lcom/android/calendar/syncer/resource/DavResourceFinder;
.super Ljava/lang/Object;
.source "DavResourceFinder.kt"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/syncer/resource/DavResourceFinder$a;,
        Lcom/android/calendar/syncer/resource/DavResourceFinder$Service;,
        Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration;,
        Lcom/android/calendar/syncer/resource/DavResourceFinder$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 \u00102\u00020\u0001:\u0003\u001f56B\u0017\u0012\u0006\u0010#\u001a\u00020\u001e\u0012\u0006\u0010\'\u001a\u00020$\u00a2\u0006\u0004\u00083\u00104J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J \u0010\n\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0004H\u0002J\u0018\u0010\r\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u0004H\u0002J\u001a\u0010\u0010\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0014\u0010\u0013\u001a\u00020\t2\n\u0010\u0010\u001a\u00060\u0011j\u0002`\u0012H\u0002J\u0008\u0010\u0014\u001a\u00020\tH\u0016J\u0006\u0010\u0016\u001a\u00020\u0015J\u0014\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00182\u0006\u0010\u0017\u001a\u00020\u0006J\u0016\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002J\u001a\u0010\u001d\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u001a\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002R\u0017\u0010#\u001a\u00020\u001e8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"R\u0014\u0010\'\u001a\u00020$8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R$\u0010/\u001a\u0004\u0018\u00010(8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R\u0014\u00102\u001a\u0002008\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u00101\u00a8\u00067"
    }
    d2 = {
        "Lcom/android/calendar/syncer/resource/DavResourceFinder;",
        "Ljava/lang/AutoCloseable;",
        "Lcom/android/calendar/syncer/resource/DavResourceFinder$Service;",
        "service",
        "Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$a;",
        "j",
        "Lokhttp3/t;",
        "baseURL",
        "config",
        "Lkotlin/u;",
        "d",
        "Lat/bitfire/dav4jvm/Response;",
        "dav",
        "E",
        "",
        "domain",
        "e",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "s",
        "close",
        "Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration;",
        "m",
        "principal",
        "",
        "z",
        "url",
        "",
        "x",
        "q",
        "Landroid/content/Context;",
        "a",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "context",
        "Lcom/android/calendar/syncer/model/LoginModel;",
        "b",
        "Lcom/android/calendar/syncer/model/LoginModel;",
        "loginModel",
        "Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$Reason;",
        "c",
        "Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$Reason;",
        "getReason",
        "()Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$Reason;",
        "setReason",
        "(Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$Reason;)V",
        "reason",
        "Lcom/android/calendar/syncer/net/CalDavHttpClient;",
        "Lcom/android/calendar/syncer/net/CalDavHttpClient;",
        "httpClient",
        "<init>",
        "(Landroid/content/Context;Lcom/android/calendar/syncer/model/LoginModel;)V",
        "Configuration",
        "Service",
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
.field public static final e:Lcom/android/calendar/syncer/resource/DavResourceFinder$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/android/calendar/syncer/model/LoginModel;

.field private c:Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$Reason;

.field private final d:Lcom/android/calendar/syncer/net/CalDavHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/calendar/syncer/resource/DavResourceFinder$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/calendar/syncer/resource/DavResourceFinder$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcom/android/calendar/syncer/resource/DavResourceFinder;->e:Lcom/android/calendar/syncer/resource/DavResourceFinder$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/syncer/model/LoginModel;)V
    .locals 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "loginModel"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/calendar/syncer/resource/DavResourceFinder;->a:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/android/calendar/syncer/resource/DavResourceFinder;->b:Lcom/android/calendar/syncer/model/LoginModel;

    .line 17
    .line 18
    new-instance v0, Lcom/android/calendar/syncer/net/CalDavHttpClient$a;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    const/4 v2, 0x2

    .line 22
    invoke-direct {v0, p1, v1, v2, v1}, Lcom/android/calendar/syncer/net/CalDavHttpClient$a;-><init>(Landroid/content/Context;Ld2/a;ILkotlin/jvm/internal/o;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/android/calendar/syncer/model/LoginModel;->getCredentials()Lcom/android/calendar/syncer/model/Credentials;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1, p1}, Lcom/android/calendar/syncer/net/CalDavHttpClient$a;->a(Ljava/lang/String;Lcom/android/calendar/syncer/model/Credentials;)Lcom/android/calendar/syncer/net/CalDavHttpClient$a;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const/4 p2, 0x1

    .line 37
    invoke-virtual {p1, p2}, Lcom/android/calendar/syncer/net/CalDavHttpClient$a;->d(Z)Lcom/android/calendar/syncer/net/CalDavHttpClient$a;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lcom/android/calendar/syncer/net/CalDavHttpClient$a;->b()Lcom/android/calendar/syncer/net/CalDavHttpClient;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lcom/android/calendar/syncer/resource/DavResourceFinder;->d:Lcom/android/calendar/syncer/net/CalDavHttpClient;

    .line 46
    .line 47
    return-void
.end method

.method private final E(Lat/bitfire/dav4jvm/Response;Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$a;)V
    .locals 7

    .line 1
    const-class v0, Lat/bitfire/dav4jvm/property/CurrentUserPrincipal;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lat/bitfire/dav4jvm/Response;->get(Ljava/lang/Class;)Lat/bitfire/dav4jvm/Property;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lat/bitfire/dav4jvm/property/CurrentUserPrincipal;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lat/bitfire/dav4jvm/property/CurrentUserPrincipal;->getHref()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lat/bitfire/dav4jvm/Response;->getRequestedUrl()Lokhttp3/t;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1, v0}, Lokhttp3/t;->r(Ljava/lang/String;)Lokhttp3/t;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    const-class v1, Lat/bitfire/dav4jvm/property/ResourceType;

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Lat/bitfire/dav4jvm/Response;->get(Ljava/lang/Class;)Lat/bitfire/dav4jvm/Property;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lat/bitfire/dav4jvm/property/ResourceType;

    .line 34
    .line 35
    const-string v2, "CalSync:D:DavResourceFinder"

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    invoke-virtual {v1}, Lat/bitfire/dav4jvm/property/ResourceType;->getTypes()Ljava/util/Set;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    sget-object v4, Lat/bitfire/dav4jvm/property/ResourceType;->Companion:Lat/bitfire/dav4jvm/property/ResourceType$Companion;

    .line 44
    .line 45
    invoke-virtual {v4}, Lat/bitfire/dav4jvm/property/ResourceType$Companion;->getCALENDAR()Lat/bitfire/dav4jvm/Property$Name;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    sget-object v3, Lcom/android/calendar/syncer/model/Collection;->Companion:Lcom/android/calendar/syncer/model/Collection$Companion;

    .line 56
    .line 57
    invoke-virtual {v3, p1}, Lcom/android/calendar/syncer/model/Collection$Companion;->fromDavResponse(Lat/bitfire/dav4jvm/Response;)Lcom/android/calendar/syncer/model/Collection;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-static {v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    new-instance v5, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v6, "Found calendar at "

    .line 70
    .line 71
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Lcom/android/calendar/syncer/model/Collection;->getUrl()Lokhttp3/t;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2}, Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$a;->a()Ljava/util/Map;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-virtual {v3}, Lcom/android/calendar/syncer/model/Collection;->getUrl()Lokhttp3/t;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    :cond_1
    invoke-virtual {v1}, Lat/bitfire/dav4jvm/property/ResourceType;->getTypes()Ljava/util/Set;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v4}, Lat/bitfire/dav4jvm/property/ResourceType$Companion;->getPRINCIPAL()Lat/bitfire/dav4jvm/Property$Name;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_2

    .line 112
    .line 113
    invoke-virtual {p1}, Lat/bitfire/dav4jvm/Response;->getHref()Lokhttp3/t;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    :cond_2
    const-class v1, Lat/bitfire/dav4jvm/property/CalendarHomeSet;

    .line 118
    .line 119
    invoke-virtual {p1, v1}, Lat/bitfire/dav4jvm/Response;->get(Ljava/lang/Class;)Lat/bitfire/dav4jvm/Property;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    check-cast v1, Lat/bitfire/dav4jvm/property/CalendarHomeSet;

    .line 124
    .line 125
    if-eqz v1, :cond_4

    .line 126
    .line 127
    invoke-virtual {v1}, Lat/bitfire/dav4jvm/property/HrefListProperty;->getHrefs()Ljava/util/LinkedList;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    if-eqz v3, :cond_4

    .line 140
    .line 141
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    check-cast v3, Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {p1}, Lat/bitfire/dav4jvm/Response;->getRequestedUrl()Lokhttp3/t;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    const-string v5, "href"

    .line 152
    .line 153
    invoke-static {v3, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4, v3}, Lokhttp3/t;->r(Ljava/lang/String;)Lokhttp3/t;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    if-eqz v3, :cond_3

    .line 161
    .line 162
    sget-object v4, Lat/bitfire/dav4jvm/UrlUtils;->INSTANCE:Lat/bitfire/dav4jvm/UrlUtils;

    .line 163
    .line 164
    invoke-virtual {v4, v3}, Lat/bitfire/dav4jvm/UrlUtils;->withTrailingSlash(Lokhttp3/t;)Lokhttp3/t;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    new-instance v4, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    const-string v5, "Found calendar book home-set at "

    .line 174
    .line 175
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2}, Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$a;->c()Ljava/util/Set;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_4
    if-eqz v0, :cond_5

    .line 197
    .line 198
    sget-object p1, Lcom/android/calendar/syncer/resource/DavResourceFinder$Service;->CALDAV:Lcom/android/calendar/syncer/resource/DavResourceFinder$Service;

    .line 199
    .line 200
    invoke-virtual {p0, v0, p1}, Lcom/android/calendar/syncer/resource/DavResourceFinder;->x(Lokhttp3/t;Lcom/android/calendar/syncer/resource/DavResourceFinder$Service;)Z

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    if-eqz p1, :cond_5

    .line 205
    .line 206
    invoke-virtual {p2, v0}, Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$a;->e(Lokhttp3/t;)V

    .line 207
    .line 208
    .line 209
    :cond_5
    return-void
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
.end method

.method public static final synthetic c(Lcom/android/calendar/syncer/resource/DavResourceFinder;Lat/bitfire/dav4jvm/Response;Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/syncer/resource/DavResourceFinder;->E(Lat/bitfire/dav4jvm/Response;Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$a;)V

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
.end method

.method private final d(Lokhttp3/t;Lcom/android/calendar/syncer/resource/DavResourceFinder$Service;Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$a;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Checking user-given URL: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "CalSync:D:DavResourceFinder"

    .line 19
    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    new-instance v0, Lat/bitfire/dav4jvm/DavResource;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/calendar/syncer/resource/DavResourceFinder;->d:Lcom/android/calendar/syncer/net/CalDavHttpClient;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/android/calendar/syncer/net/CalDavHttpClient;->d()Lokhttp3/x;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v6, 0x4

    .line 33
    const/4 v7, 0x0

    .line 34
    move-object v2, v0

    .line 35
    move-object v4, p1

    .line 36
    invoke-direct/range {v2 .. v7}, Lat/bitfire/dav4jvm/DavResource;-><init>(Lokhttp3/x;Lokhttp3/t;Ljava/util/logging/Logger;ILkotlin/jvm/internal/o;)V

    .line 37
    .line 38
    .line 39
    :try_start_0
    sget-object p1, Lcom/android/calendar/syncer/resource/DavResourceFinder$b;->a:[I

    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    aget p1, p1, p2

    .line 46
    .line 47
    const/4 p2, 0x1

    .line 48
    if-ne p1, p2, :cond_0

    .line 49
    .line 50
    const/16 p1, 0x9

    .line 51
    .line 52
    new-array p1, p1, [Lat/bitfire/dav4jvm/Property$Name;

    .line 53
    .line 54
    sget-object v2, Lat/bitfire/dav4jvm/property/ResourceType;->NAME:Lat/bitfire/dav4jvm/Property$Name;

    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    aput-object v2, p1, v3

    .line 58
    .line 59
    sget-object v2, Lat/bitfire/dav4jvm/property/DisplayName;->NAME:Lat/bitfire/dav4jvm/Property$Name;

    .line 60
    .line 61
    aput-object v2, p1, p2

    .line 62
    .line 63
    const/4 p2, 0x2

    .line 64
    sget-object v2, Lat/bitfire/dav4jvm/property/CalendarColor;->NAME:Lat/bitfire/dav4jvm/Property$Name;

    .line 65
    .line 66
    aput-object v2, p1, p2

    .line 67
    .line 68
    const/4 p2, 0x3

    .line 69
    sget-object v2, Lat/bitfire/dav4jvm/property/CalendarDescription;->NAME:Lat/bitfire/dav4jvm/Property$Name;

    .line 70
    .line 71
    aput-object v2, p1, p2

    .line 72
    .line 73
    const/4 p2, 0x4

    .line 74
    sget-object v2, Lat/bitfire/dav4jvm/property/CalendarTimezone;->NAME:Lat/bitfire/dav4jvm/Property$Name;

    .line 75
    .line 76
    aput-object v2, p1, p2

    .line 77
    .line 78
    const/4 p2, 0x5

    .line 79
    sget-object v2, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->NAME:Lat/bitfire/dav4jvm/Property$Name;

    .line 80
    .line 81
    aput-object v2, p1, p2

    .line 82
    .line 83
    const/4 p2, 0x6

    .line 84
    sget-object v2, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;->NAME:Lat/bitfire/dav4jvm/Property$Name;

    .line 85
    .line 86
    aput-object v2, p1, p2

    .line 87
    .line 88
    const/4 p2, 0x7

    .line 89
    sget-object v2, Lat/bitfire/dav4jvm/property/CalendarHomeSet;->NAME:Lat/bitfire/dav4jvm/Property$Name;

    .line 90
    .line 91
    aput-object v2, p1, p2

    .line 92
    .line 93
    const/16 p2, 0x8

    .line 94
    .line 95
    sget-object v2, Lat/bitfire/dav4jvm/property/CurrentUserPrincipal;->NAME:Lat/bitfire/dav4jvm/Property$Name;

    .line 96
    .line 97
    aput-object v2, p1, p2

    .line 98
    .line 99
    new-instance p2, Lcom/android/calendar/syncer/resource/DavResourceFinder$checkUserGivenURL$1;

    .line 100
    .line 101
    invoke-direct {p2, p0, p3}, Lcom/android/calendar/syncer/resource/DavResourceFinder$checkUserGivenURL$1;-><init>(Lcom/android/calendar/syncer/resource/DavResourceFinder;Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$a;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v3, p1, p2}, Lat/bitfire/dav4jvm/DavResource;->propfind(I[Lat/bitfire/dav4jvm/Property$Name;Lw7/p;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :catch_0
    move-exception p1

    .line 109
    const-string p2, "PROPFIND/OPTIONS on user-given URL failed"

    .line 110
    .line 111
    invoke-static {v1, p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    .line 113
    .line 114
    instance-of p2, p1, Lat/bitfire/dav4jvm/exception/UnauthorizedException;

    .line 115
    .line 116
    if-nez p2, :cond_1

    .line 117
    .line 118
    instance-of p2, p1, Ljava/net/SocketTimeoutException;

    .line 119
    .line 120
    if-nez p2, :cond_1

    .line 121
    .line 122
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    throw p1
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
.end method

.method private final e(Ljava/lang/String;Lcom/android/calendar/syncer/resource/DavResourceFinder$Service;)Lokhttp3/t;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lat/bitfire/dav4jvm/exception/HttpException;,
            Lat/bitfire/dav4jvm/exception/DavException;
        }
    .end annotation

    .line 1
    const-string v0, "https"

    .line 2
    .line 3
    new-instance v1, Ljava/util/LinkedList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const/16 v3, 0x5f

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/android/calendar/syncer/resource/DavResourceFinder$Service;->getWellKnownName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v3, "s._tcp."

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v4, "Looking up SRV records for "

    .line 43
    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    const-string v4, "CalSync:D:DavResourceFinder"

    .line 55
    .line 56
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    new-instance v3, Lorg/xbill/DNS/Lookup;

    .line 60
    .line 61
    const/16 v5, 0x21

    .line 62
    .line 63
    invoke-direct {v3, v2, v5}, Lorg/xbill/DNS/Lookup;-><init>(Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    sget-object v5, Lcom/android/calendar/syncer/c;->a:Lcom/android/calendar/syncer/c;

    .line 67
    .line 68
    iget-object v6, p0, Lcom/android/calendar/syncer/resource/DavResourceFinder;->a:Landroid/content/Context;

    .line 69
    .line 70
    invoke-virtual {v5, v6, v3}, Lcom/android/calendar/syncer/c;->b(Landroid/content/Context;Lorg/xbill/DNS/Lookup;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Lorg/xbill/DNS/Lookup;->run()[Lorg/xbill/DNS/Record;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    if-nez v3, :cond_0

    .line 78
    .line 79
    const/4 v3, 0x0

    .line 80
    new-array v3, v3, [Lorg/xbill/DNS/Record;

    .line 81
    .line 82
    :cond_0
    check-cast v3, [Lorg/xbill/DNS/Record;

    .line 83
    .line 84
    invoke-virtual {v5, v3}, Lcom/android/calendar/syncer/c;->c([Lorg/xbill/DNS/Record;)Lorg/xbill/DNS/SRVRecord;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    const/16 v6, 0x3a

    .line 89
    .line 90
    const/16 v7, 0x1bb

    .line 91
    .line 92
    if-eqz v3, :cond_1

    .line 93
    .line 94
    invoke-virtual {v3}, Lorg/xbill/DNS/SRVRecord;->getTarget()Lorg/xbill/DNS/Name;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    const/4 v7, 0x1

    .line 99
    invoke-virtual {p1, v7}, Lorg/xbill/DNS/Name;->toString(Z)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    const-string v7, "srv.target.toString(true)"

    .line 104
    .line 105
    invoke-static {p1, v7}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3}, Lorg/xbill/DNS/SRVRecord;->getPort()I

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    const-string v8, "Found "

    .line 118
    .line 119
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v8, " service at https://"

    .line 126
    .line 127
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string v8, "Didn\'t find "

    .line 153
    .line 154
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v8, " service, trying at https://"

    .line 161
    .line 162
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    :goto_0
    new-instance v3, Lorg/xbill/DNS/Lookup;

    .line 182
    .line 183
    const/16 v6, 0x10

    .line 184
    .line 185
    invoke-direct {v3, v2, v6}, Lorg/xbill/DNS/Lookup;-><init>(Ljava/lang/String;I)V

    .line 186
    .line 187
    .line 188
    iget-object v2, p0, Lcom/android/calendar/syncer/resource/DavResourceFinder;->a:Landroid/content/Context;

    .line 189
    .line 190
    invoke-virtual {v5, v2, v3}, Lcom/android/calendar/syncer/c;->b(Landroid/content/Context;Lorg/xbill/DNS/Lookup;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3}, Lorg/xbill/DNS/Lookup;->run()[Lorg/xbill/DNS/Record;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-virtual {v5, v2}, Lcom/android/calendar/syncer/c;->a([Lorg/xbill/DNS/Record;)Ljava/util/List;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 202
    .line 203
    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .line 208
    .line 209
    const-string v3, "/.well-known/"

    .line 210
    .line 211
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {p2}, Lcom/android/calendar/syncer/resource/DavResourceFinder$Service;->getWellKnownName()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    const-string v2, "/"

    .line 229
    .line 230
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 238
    .line 239
    .line 240
    move-result v2

    .line 241
    if-eqz v2, :cond_3

    .line 242
    .line 243
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    check-cast v2, Ljava/lang/String;

    .line 248
    .line 249
    :try_start_0
    new-instance v3, Lokhttp3/t$a;

    .line 250
    .line 251
    invoke-direct {v3}, Lokhttp3/t$a;-><init>()V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v3, v0}, Lokhttp3/t$a;->u(Ljava/lang/String;)Lokhttp3/t$a;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    invoke-virtual {v3, p1}, Lokhttp3/t$a;->j(Ljava/lang/String;)Lokhttp3/t$a;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    invoke-virtual {v3, v7}, Lokhttp3/t$a;->p(I)Lokhttp3/t$a;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    const-string v5, "path"

    .line 267
    .line 268
    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v3, v2}, Lokhttp3/t$a;->f(Ljava/lang/String;)Lokhttp3/t$a;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    invoke-virtual {v2}, Lokhttp3/t$a;->d()Lokhttp3/t;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    new-instance v3, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .line 283
    .line 284
    const-string v5, "Trying to determine principal from initial context path="

    .line 285
    .line 286
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .line 298
    .line 299
    invoke-virtual {p0, v2, p2}, Lcom/android/calendar/syncer/resource/DavResourceFinder;->q(Lokhttp3/t;Lcom/android/calendar/syncer/resource/DavResourceFinder$Service;)Lokhttp3/t;

    .line 300
    .line 301
    .line 302
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    if-eqz v2, :cond_2

    .line 304
    .line 305
    return-object v2

    .line 306
    :catch_0
    move-exception p1

    .line 307
    const-string p2, "No resource found"

    .line 308
    .line 309
    invoke-static {v4, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    .line 311
    .line 312
    throw p1

    .line 313
    :cond_3
    const/4 p1, 0x0

    .line 314
    return-object p1
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
.end method

.method private final j(Lcom/android/calendar/syncer/resource/DavResourceFinder$Service;)Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$a;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    iget-object v0, v1, Lcom/android/calendar/syncer/resource/DavResourceFinder;->b:Lcom/android/calendar/syncer/model/LoginModel;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/calendar/syncer/model/LoginModel;->getBaseURI()Ljava/net/URI;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    new-instance v10, Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$a;

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v7, 0x0

    .line 20
    const/16 v8, 0xf

    .line 21
    .line 22
    const/4 v9, 0x0

    .line 23
    move-object v3, v10

    .line 24
    invoke-direct/range {v3 .. v9}, Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$a;-><init>(Lokhttp3/t;Ljava/util/Set;Ljava/util/Map;Ljava/util/List;ILkotlin/jvm/internal/o;)V

    .line 25
    .line 26
    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v4, "Finding initial "

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/android/calendar/syncer/resource/DavResourceFinder$Service;->getWellKnownName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v4, " service configuration"

    .line 45
    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const-string v4, "CalSync:D:DavResourceFinder"

    .line 54
    .line 55
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    const-string v5, "http"

    .line 63
    .line 64
    const/4 v6, 0x1

    .line 65
    invoke-static {v3, v5, v6}, Lkotlin/text/k;->p(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    const-string v5, "https"

    .line 70
    .line 71
    if-nez v3, :cond_1

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-static {v3, v5, v6}, Lkotlin/text/k;->p(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_0

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {v0}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const-string v3, "mailbox"

    .line 89
    .line 90
    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const/4 v13, 0x0

    .line 94
    const/4 v14, 0x0

    .line 95
    const/4 v15, 0x6

    .line 96
    const/16 v16, 0x0

    .line 97
    .line 98
    const-string v12, "@"

    .line 99
    .line 100
    move-object v11, v0

    .line 101
    invoke-static/range {v11 .. v16}, Lkotlin/text/k;->a0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    const/4 v5, -0x1

    .line 106
    if-eq v3, v5, :cond_4

    .line 107
    .line 108
    add-int/2addr v3, v6

    .line 109
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const-string v3, "this as java.lang.String).substring(startIndex)"

    .line 114
    .line 115
    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_1
    :goto_0
    sget-object v3, Lokhttp3/t;->l:Lokhttp3/t$b;

    .line 120
    .line 121
    invoke-virtual {v3, v0}, Lokhttp3/t$b;->e(Ljava/net/URI;)Lokhttp3/t;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    if-eqz v0, :cond_4

    .line 126
    .line 127
    invoke-virtual {v0}, Lokhttp3/t;->s()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-static {v3, v5, v6}, Lkotlin/text/k;->p(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    if-eqz v3, :cond_2

    .line 136
    .line 137
    invoke-virtual {v0}, Lokhttp3/t;->h()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    goto :goto_1

    .line 142
    :cond_2
    move-object v3, v7

    .line 143
    :goto_1
    invoke-direct {v1, v0, v2, v10}, Lcom/android/calendar/syncer/resource/DavResourceFinder;->d(Lokhttp3/t;Lcom/android/calendar/syncer/resource/DavResourceFinder$Service;Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$a;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v10}, Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$a;->d()Lokhttp3/t;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    if-nez v5, :cond_3

    .line 151
    .line 152
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    const-string v8, "/.well-known/"

    .line 158
    .line 159
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual/range {p1 .. p1}, Lcom/android/calendar/syncer/resource/DavResourceFinder$Service;->getWellKnownName()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v8

    .line 166
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    invoke-virtual {v0, v5}, Lokhttp3/t;->r(Ljava/lang/String;)Lokhttp3/t;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v0, v2}, Lcom/android/calendar/syncer/resource/DavResourceFinder;->q(Lokhttp3/t;Lcom/android/calendar/syncer/resource/DavResourceFinder$Service;)Lokhttp3/t;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {v10, v0}, Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$a;->e(Lokhttp3/t;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .line 186
    .line 187
    goto :goto_2

    .line 188
    :catch_0
    move-exception v0

    .line 189
    const-string v5, "Well-known URL detection failed"

    .line 190
    .line 191
    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    .line 193
    .line 194
    :cond_3
    :goto_2
    move-object v0, v3

    .line 195
    goto :goto_3

    .line 196
    :cond_4
    move-object v0, v7

    .line 197
    :goto_3
    invoke-virtual {v10}, Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$a;->d()Lokhttp3/t;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    if-nez v3, :cond_5

    .line 202
    .line 203
    if-eqz v0, :cond_5

    .line 204
    .line 205
    const-string v3, "No principal found at user-given URL, trying to discover"

    .line 206
    .line 207
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    :try_start_1
    invoke-direct {v1, v0, v2}, Lcom/android/calendar/syncer/resource/DavResourceFinder;->e(Ljava/lang/String;Lcom/android/calendar/syncer/resource/DavResourceFinder$Service;)Lokhttp3/t;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {v10, v0}, Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$a;->e(Lokhttp3/t;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 215
    .line 216
    .line 217
    goto :goto_4

    .line 218
    :catch_1
    move-exception v0

    .line 219
    new-instance v3, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string v2, " service discovery failed"

    .line 228
    .line 229
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    invoke-static {v4, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    .line 238
    .line 239
    throw v0

    .line 240
    :cond_5
    :goto_4
    sget-object v0, Lcom/android/calendar/syncer/resource/DavResourceFinder$Service;->CALDAV:Lcom/android/calendar/syncer/resource/DavResourceFinder$Service;

    .line 241
    .line 242
    if-ne v2, v0, :cond_6

    .line 243
    .line 244
    invoke-virtual {v10}, Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$a;->d()Lokhttp3/t;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    if-eqz v0, :cond_6

    .line 249
    .line 250
    invoke-virtual {v10}, Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$a;->b()Ljava/util/List;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-virtual {v1, v0}, Lcom/android/calendar/syncer/resource/DavResourceFinder;->z(Lokhttp3/t;)Ljava/util/List;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 259
    .line 260
    .line 261
    :cond_6
    invoke-virtual {v10}, Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$a;->d()Lokhttp3/t;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    if-nez v0, :cond_8

    .line 266
    .line 267
    invoke-virtual {v10}, Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$a;->c()Ljava/util/Set;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    xor-int/2addr v0, v6

    .line 276
    if-nez v0, :cond_8

    .line 277
    .line 278
    invoke-virtual {v10}, Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$a;->a()Ljava/util/Map;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    xor-int/2addr v0, v6

    .line 287
    if-eqz v0, :cond_7

    .line 288
    .line 289
    goto :goto_5

    .line 290
    :cond_7
    const/4 v6, 0x0

    .line 291
    :cond_8
    :goto_5
    if-eqz v6, :cond_9

    .line 292
    .line 293
    goto :goto_6

    .line 294
    :cond_9
    move-object v10, v7

    .line 295
    :goto_6
    return-object v10
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
.end method

.method private final s(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lat/bitfire/dav4jvm/exception/UnauthorizedException;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$Reason;->REASON_401:Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$Reason;

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    move v0, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    instance-of v0, p1, Lat/bitfire/dav4jvm/exception/HttpException;

    .line 16
    .line 17
    :goto_0
    if-eqz v0, :cond_2

    .line 18
    .line 19
    sget-object p1, Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$Reason;->REASON_CONNECT_FAILED:Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$Reason;

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_2
    instance-of v0, p1, Lat/bitfire/dav4jvm/exception/NotFoundException;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_3
    instance-of v1, p1, Lat/bitfire/dav4jvm/exception/DavException;

    .line 28
    .line 29
    :goto_1
    if-eqz v1, :cond_4

    .line 30
    .line 31
    sget-object p1, Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$Reason;->REASON_RESOURCE_NOT_FOUND:Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$Reason;

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_4
    sget-object p1, Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$Reason;->REASON_OTHER_EXCEPTION:Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$Reason;

    .line 35
    .line 36
    :goto_2
    iput-object p1, p0, Lcom/android/calendar/syncer/resource/DavResourceFinder;->c:Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$Reason;

    .line 37
    .line 38
    return-void
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
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/syncer/resource/DavResourceFinder;->d:Lcom/android/calendar/syncer/net/CalDavHttpClient;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/calendar/syncer/net/CalDavHttpClient;->close()V

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
.end method

.method public final m()Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lcom/android/calendar/syncer/resource/DavResourceFinder$Service;->CALDAV:Lcom/android/calendar/syncer/resource/DavResourceFinder$Service;

    .line 3
    .line 4
    invoke-direct {p0, v1}, Lcom/android/calendar/syncer/resource/DavResourceFinder;->j(Lcom/android/calendar/syncer/resource/DavResourceFinder$Service;)Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$a;

    .line 5
    .line 6
    .line 7
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v1

    .line 10
    :try_start_1
    const-string v2, "CalSync:D:DavResourceFinder"

    .line 11
    .line 12
    const-string v3, "CalDAV service detection failed"

    .line 13
    .line 14
    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v1}, Lcom/android/calendar/syncer/resource/DavResourceFinder;->s(Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 18
    .line 19
    .line 20
    :catch_1
    :goto_0
    new-instance v1, Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/calendar/syncer/resource/DavResourceFinder;->c:Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$Reason;

    .line 23
    .line 24
    invoke-direct {v1, v0, v2}, Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration;-><init>(Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$a;Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$Reason;)V

    .line 25
    .line 26
    .line 27
    return-object v1
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
.end method

.method public final q(Lokhttp3/t;Lcom/android/calendar/syncer/resource/DavResourceFinder$Service;)Lokhttp3/t;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lat/bitfire/dav4jvm/exception/HttpException;,
            Lat/bitfire/dav4jvm/exception/DavException;
        }
    .end annotation

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 7
    .line 8
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v7, Lat/bitfire/dav4jvm/DavResource;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/calendar/syncer/resource/DavResourceFinder;->d:Lcom/android/calendar/syncer/net/CalDavHttpClient;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/android/calendar/syncer/net/CalDavHttpClient;->d()Lokhttp3/x;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x4

    .line 21
    const/4 v6, 0x0

    .line 22
    move-object v1, v7

    .line 23
    move-object v3, p1

    .line 24
    invoke-direct/range {v1 .. v6}, Lat/bitfire/dav4jvm/DavResource;-><init>(Lokhttp3/x;Lokhttp3/t;Ljava/util/logging/Logger;ILkotlin/jvm/internal/o;)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    new-array p1, p1, [Lat/bitfire/dav4jvm/Property$Name;

    .line 29
    .line 30
    sget-object v1, Lat/bitfire/dav4jvm/property/CurrentUserPrincipal;->NAME:Lat/bitfire/dav4jvm/Property$Name;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    aput-object v1, p1, v2

    .line 34
    .line 35
    new-instance v1, Lcom/android/calendar/syncer/resource/DavResourceFinder$getCurrentUserPrincipal$1;

    .line 36
    .line 37
    invoke-direct {v1, p2, p0, v0}, Lcom/android/calendar/syncer/resource/DavResourceFinder$getCurrentUserPrincipal$1;-><init>(Lcom/android/calendar/syncer/resource/DavResourceFinder$Service;Lcom/android/calendar/syncer/resource/DavResourceFinder;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v7, v2, p1, v1}, Lat/bitfire/dav4jvm/DavResource;->propfind(I[Lat/bitfire/dav4jvm/Property$Name;Lw7/p;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, Lokhttp3/t;

    .line 46
    .line 47
    return-object p1
.end method

.method public final x(Lokhttp3/t;Lcom/android/calendar/syncer/resource/DavResourceFinder$Service;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "service"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 12
    .line 13
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    new-instance v7, Lat/bitfire/dav4jvm/DavResource;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/calendar/syncer/resource/DavResourceFinder;->d:Lcom/android/calendar/syncer/net/CalDavHttpClient;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/android/calendar/syncer/net/CalDavHttpClient;->d()Lokhttp3/x;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/4 v4, 0x0

    .line 25
    const/4 v5, 0x4

    .line 26
    const/4 v6, 0x0

    .line 27
    move-object v1, v7

    .line 28
    move-object v3, p1

    .line 29
    invoke-direct/range {v1 .. v6}, Lat/bitfire/dav4jvm/DavResource;-><init>(Lokhttp3/x;Lokhttp3/t;Ljava/util/logging/Logger;ILkotlin/jvm/internal/o;)V

    .line 30
    .line 31
    .line 32
    new-instance v1, Lcom/android/calendar/syncer/resource/DavResourceFinder$providesService$1;

    .line 33
    .line 34
    invoke-direct {v1, p2, v0}, Lcom/android/calendar/syncer/resource/DavResourceFinder$providesService$1;-><init>(Lcom/android/calendar/syncer/resource/DavResourceFinder$Service;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v7, v1}, Lat/bitfire/dav4jvm/DavResource;->options(Lw7/p;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p2

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v2, "Couldn\'t detect services on "

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const-string v1, "CalSync:D:DavResourceFinder"

    .line 60
    .line 61
    invoke-static {v1, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    .line 63
    .line 64
    instance-of p1, p2, Lat/bitfire/dav4jvm/exception/HttpException;

    .line 65
    .line 66
    if-nez p1, :cond_1

    .line 67
    .line 68
    instance-of p1, p2, Lat/bitfire/dav4jvm/exception/DavException;

    .line 69
    .line 70
    if-eqz p1, :cond_0

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    throw p2

    .line 74
    :cond_1
    :goto_0
    iget-boolean p1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 75
    .line 76
    return p1
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

.method public final z(Lokhttp3/t;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/t;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "principal"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 7
    .line 8
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/util/LinkedList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 17
    .line 18
    :try_start_0
    new-instance v1, Lat/bitfire/dav4jvm/DavResource;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/calendar/syncer/resource/DavResourceFinder;->d:Lcom/android/calendar/syncer/net/CalDavHttpClient;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/android/calendar/syncer/net/CalDavHttpClient;->d()Lokhttp3/x;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const/4 v5, 0x0

    .line 27
    const/4 v6, 0x4

    .line 28
    const/4 v7, 0x0

    .line 29
    move-object v2, v1

    .line 30
    move-object v4, p1

    .line 31
    invoke-direct/range {v2 .. v7}, Lat/bitfire/dav4jvm/DavResource;-><init>(Lokhttp3/x;Lokhttp3/t;Ljava/util/logging/Logger;ILkotlin/jvm/internal/o;)V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    new-array p1, p1, [Lat/bitfire/dav4jvm/Property$Name;

    .line 36
    .line 37
    sget-object v2, Lat/bitfire/dav4jvm/property/CalendarUserAddressSet;->NAME:Lat/bitfire/dav4jvm/Property$Name;

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    aput-object v2, p1, v3

    .line 41
    .line 42
    new-instance v2, Lcom/android/calendar/syncer/resource/DavResourceFinder$queryEmailAddress$1;

    .line 43
    .line 44
    invoke-direct {v2, v0}, Lcom/android/calendar/syncer/resource/DavResourceFinder$queryEmailAddress$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v3, p1, v2}, Lat/bitfire/dav4jvm/DavResource;->propfind(I[Lat/bitfire/dav4jvm/Property$Name;Lw7/p;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception p1

    .line 52
    const-string v1, "CalSync:D:DavResourceFinder"

    .line 53
    .line 54
    const-string v2, "Couldn\'t query user email address"

    .line 55
    .line 56
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    .line 58
    .line 59
    :goto_0
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p1, Ljava/util/List;

    .line 62
    .line 63
    return-object p1
    .line 64
    .line 65
.end method

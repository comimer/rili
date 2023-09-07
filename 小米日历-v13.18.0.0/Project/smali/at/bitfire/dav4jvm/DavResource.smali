.class public Lat/bitfire/dav4jvm/DavResource;
.super Ljava/lang/Object;
.source "DavResource.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/bitfire/dav4jvm/DavResource$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0016\u0018\u0000 E2\u00020\u0001:\u0001EB#\u0008\u0007\u0012\u0006\u0010:\u001a\u000209\u0012\u0006\u00105\u001a\u00020\u0011\u0012\u0008\u0008\u0002\u0010?\u001a\u00020>\u00a2\u0006\u0004\u0008C\u0010DJ$\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002J\u0010\u0010\n\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0008\u0010\u000b\u001a\u00020\u0004H\u0016J\u0006\u0010\u000c\u001a\u00020\u0004J&\u0010\u0010\u001a\u00020\u00082\u001e\u0010\u000f\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00080\rJ*\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00132\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00080\u0015J*\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00132\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00080\u0015J$\u0010\u0019\u001a\u00020\u00082\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00042\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00080\u0015J\"\u0010\u001b\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u00042\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00080\u0015JD\u0010!\u001a\u00020\u00082\u0006\u0010\u001d\u001a\u00020\u001c2\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010 \u001a\u00020\u00132\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00080\u0015J2\u0010\"\u001a\u00020\u00082\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00042\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00080\u0015JG\u0010*\u001a\u00020\u00082\u0006\u0010#\u001a\u00020\u00022\u0012\u0010&\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020%0$\"\u00020%2\u001c\u0010\u000f\u001a\u0018\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020\u00080\rj\u0002`)\u00a2\u0006\u0004\u0008*\u0010+J\u0010\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0004J\u0016\u0010.\u001a\u00020\u00062\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u00060,H\u0004J4\u00101\u001a\u0008\u0012\u0004\u0012\u0002000/2\u0006\u0010\u0007\u001a\u00020\u00062\u001c\u0010\u000f\u001a\u0018\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020\u00080\rj\u0002`)H\u0004J4\u00101\u001a\u0008\u0012\u0004\u0012\u0002000/2\u0006\u00103\u001a\u0002022\u001c\u0010\u000f\u001a\u0018\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020\u00080\rj\u0002`)H\u0004R$\u00105\u001a\u00020\u00112\u0006\u00104\u001a\u00020\u00118\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u00085\u00106\u001a\u0004\u00087\u00108R\u0017\u0010:\u001a\u0002098\u0006\u00a2\u0006\u000c\n\u0004\u0008:\u0010;\u001a\u0004\u0008<\u0010=R\u0017\u0010?\u001a\u00020>8\u0006\u00a2\u0006\u000c\n\u0004\u0008?\u0010@\u001a\u0004\u0008A\u0010B\u00a8\u0006F"
    }
    d2 = {
        "Lat/bitfire/dav4jvm/DavResource;",
        "",
        "",
        "code",
        "",
        "message",
        "Lokhttp3/a0;",
        "response",
        "Lkotlin/u;",
        "checkStatus",
        "assertMultiStatus",
        "toString",
        "fileName",
        "Lkotlin/Function2;",
        "",
        "callback",
        "options",
        "Lokhttp3/t;",
        "destination",
        "",
        "forceOverride",
        "Lkotlin/Function1;",
        "move",
        "copy",
        "xmlBody",
        "mkCol",
        "accept",
        "get",
        "Lokhttp3/z;",
        "body",
        "ifETag",
        "ifScheduleTag",
        "ifNoneMatch",
        "put",
        "delete",
        "depth",
        "",
        "Lat/bitfire/dav4jvm/Property$Name;",
        "reqProp",
        "Lat/bitfire/dav4jvm/Response;",
        "Lat/bitfire/dav4jvm/Response$HrefRelation;",
        "Lat/bitfire/dav4jvm/DavResponseCallback;",
        "propfind",
        "(I[Lat/bitfire/dav4jvm/Property$Name;Lw7/p;)V",
        "Lkotlin/Function0;",
        "sendRequest",
        "followRedirects",
        "",
        "Lat/bitfire/dav4jvm/Property;",
        "processMultiStatus",
        "Ljava/io/Reader;",
        "reader",
        "<set-?>",
        "location",
        "Lokhttp3/t;",
        "getLocation",
        "()Lokhttp3/t;",
        "Lokhttp3/x;",
        "httpClient",
        "Lokhttp3/x;",
        "getHttpClient",
        "()Lokhttp3/x;",
        "Ljava/util/logging/Logger;",
        "log",
        "Ljava/util/logging/Logger;",
        "getLog",
        "()Ljava/util/logging/Logger;",
        "<init>",
        "(Lokhttp3/x;Lokhttp3/t;Ljava/util/logging/Logger;)V",
        "Companion",
        "build"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lat/bitfire/dav4jvm/DavResource$Companion;

.field private static final HREF:Lat/bitfire/dav4jvm/Property$Name;

.field public static final MAX_REDIRECTS:I = 0x5

.field private static final MIME_XML:Lokhttp3/v;

.field private static final PROP:Lat/bitfire/dav4jvm/Property$Name;

.field private static final PROPFIND:Lat/bitfire/dav4jvm/Property$Name;


# instance fields
.field private final httpClient:Lokhttp3/x;

.field private location:Lokhttp3/t;

.field private final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lat/bitfire/dav4jvm/DavResource$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lat/bitfire/dav4jvm/DavResource$Companion;-><init>(Lkotlin/jvm/internal/o;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lat/bitfire/dav4jvm/DavResource;->Companion:Lat/bitfire/dav4jvm/DavResource$Companion;

    .line 8
    .line 9
    sget-object v0, Lokhttp3/v;->g:Lokhttp3/v$a;

    .line 10
    .line 11
    const-string v1, "application/xml; charset=utf-8"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lokhttp3/v$a;->a(Ljava/lang/String;)Lokhttp3/v;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lat/bitfire/dav4jvm/DavResource;->MIME_XML:Lokhttp3/v;

    .line 18
    .line 19
    new-instance v0, Lat/bitfire/dav4jvm/Property$Name;

    .line 20
    .line 21
    const-string v1, "DAV:"

    .line 22
    .line 23
    const-string v2, "propfind"

    .line 24
    .line 25
    invoke-direct {v0, v1, v2}, Lat/bitfire/dav4jvm/Property$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sput-object v0, Lat/bitfire/dav4jvm/DavResource;->PROPFIND:Lat/bitfire/dav4jvm/Property$Name;

    .line 29
    .line 30
    new-instance v0, Lat/bitfire/dav4jvm/Property$Name;

    .line 31
    .line 32
    const-string v2, "prop"

    .line 33
    .line 34
    invoke-direct {v0, v1, v2}, Lat/bitfire/dav4jvm/Property$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sput-object v0, Lat/bitfire/dav4jvm/DavResource;->PROP:Lat/bitfire/dav4jvm/Property$Name;

    .line 38
    .line 39
    new-instance v0, Lat/bitfire/dav4jvm/Property$Name;

    .line 40
    .line 41
    const-string v2, "href"

    .line 42
    .line 43
    invoke-direct {v0, v1, v2}, Lat/bitfire/dav4jvm/Property$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    sput-object v0, Lat/bitfire/dav4jvm/DavResource;->HREF:Lat/bitfire/dav4jvm/Property$Name;

    .line 47
    .line 48
    return-void
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

.method public constructor <init>(Lokhttp3/x;Lokhttp3/t;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lat/bitfire/dav4jvm/DavResource;-><init>(Lokhttp3/x;Lokhttp3/t;Ljava/util/logging/Logger;ILkotlin/jvm/internal/o;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/x;Lokhttp3/t;Ljava/util/logging/Logger;)V
    .locals 1

    const-string v0, "httpClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "log"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lat/bitfire/dav4jvm/DavResource;->httpClient:Lokhttp3/x;

    iput-object p3, p0, Lat/bitfire/dav4jvm/DavResource;->log:Ljava/util/logging/Logger;

    .line 2
    invoke-virtual {p1}, Lokhttp3/x;->v()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 3
    iput-object p2, p0, Lat/bitfire/dav4jvm/DavResource;->location:Lokhttp3/t;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "httpClient must not follow redirects automatically"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lokhttp3/x;Lokhttp3/t;Ljava/util/logging/Logger;ILkotlin/jvm/internal/o;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 5
    sget-object p3, Lat/bitfire/dav4jvm/Dav4jvm;->INSTANCE:Lat/bitfire/dav4jvm/Dav4jvm;

    invoke-virtual {p3}, Lat/bitfire/dav4jvm/Dav4jvm;->getLog()Ljava/util/logging/Logger;

    move-result-object p3

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lat/bitfire/dav4jvm/DavResource;-><init>(Lokhttp3/x;Lokhttp3/t;Ljava/util/logging/Logger;)V

    return-void
.end method

.method public static final synthetic access$getHREF$cp()Lat/bitfire/dav4jvm/Property$Name;
    .locals 1

    .line 1
    sget-object v0, Lat/bitfire/dav4jvm/DavResource;->HREF:Lat/bitfire/dav4jvm/Property$Name;

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

.method public static final synthetic access$getLocation$p(Lat/bitfire/dav4jvm/DavResource;)Lokhttp3/t;
    .locals 0

    .line 1
    iget-object p0, p0, Lat/bitfire/dav4jvm/DavResource;->location:Lokhttp3/t;

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

.method public static final synthetic access$getMIME_XML$cp()Lokhttp3/v;
    .locals 1

    .line 1
    sget-object v0, Lat/bitfire/dav4jvm/DavResource;->MIME_XML:Lokhttp3/v;

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

.method public static final synthetic access$getPROP$cp()Lat/bitfire/dav4jvm/Property$Name;
    .locals 1

    .line 1
    sget-object v0, Lat/bitfire/dav4jvm/DavResource;->PROP:Lat/bitfire/dav4jvm/Property$Name;

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

.method public static final synthetic access$getPROPFIND$cp()Lat/bitfire/dav4jvm/Property$Name;
    .locals 1

    .line 1
    sget-object v0, Lat/bitfire/dav4jvm/DavResource;->PROPFIND:Lat/bitfire/dav4jvm/Property$Name;

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

.method public static final synthetic access$setLocation$p(Lat/bitfire/dav4jvm/DavResource;Lokhttp3/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lat/bitfire/dav4jvm/DavResource;->location:Lokhttp3/t;

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

.method private final assertMultiStatus(Lokhttp3/a0;)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Lokhttp3/a0;->m()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xcf

    .line 6
    .line 7
    if-ne v0, v1, :cond_4

    .line 8
    .line 9
    invoke-virtual {p1}, Lokhttp3/a0;->c()Lokhttp3/b0;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    invoke-virtual {p1}, Lokhttp3/a0;->c()Lokhttp3/b0;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p1}, Lokhttp3/b0;->q()Lokhttp3/v;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    invoke-virtual {p1}, Lokhttp3/v;->h()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "application"

    .line 32
    .line 33
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    xor-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    invoke-virtual {p1}, Lokhttp3/v;->h()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "text"

    .line 46
    .line 47
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    xor-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    if-nez v0, :cond_1

    .line 54
    .line 55
    :cond_0
    invoke-virtual {p1}, Lokhttp3/v;->g()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const-string v0, "xml"

    .line 60
    .line 61
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    xor-int/lit8 p1, p1, 0x1

    .line 66
    .line 67
    if-nez p1, :cond_1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    new-instance p1, Lat/bitfire/dav4jvm/exception/DavException;

    .line 71
    .line 72
    const/4 v2, 0x0

    .line 73
    const/4 v3, 0x0

    .line 74
    const/4 v4, 0x6

    .line 75
    const/4 v5, 0x0

    .line 76
    const-string v1, "Received non-XML 207 Multi-Status"

    .line 77
    .line 78
    move-object v0, p1

    .line 79
    invoke-direct/range {v0 .. v5}, Lat/bitfire/dav4jvm/exception/DavException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lokhttp3/a0;ILkotlin/jvm/internal/o;)V

    .line 80
    .line 81
    .line 82
    throw p1

    .line 83
    :cond_2
    iget-object p1, p0, Lat/bitfire/dav4jvm/DavResource;->log:Ljava/util/logging/Logger;

    .line 84
    .line 85
    const-string v0, "Received 207 Multi-Status without Content-Type, assuming XML"

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :goto_0
    return-void

    .line 91
    :cond_3
    new-instance p1, Lat/bitfire/dav4jvm/exception/DavException;

    .line 92
    .line 93
    const/4 v3, 0x0

    .line 94
    const/4 v4, 0x0

    .line 95
    const/4 v5, 0x6

    .line 96
    const/4 v6, 0x0

    .line 97
    const-string v2, "Received 207 Multi-Status without body"

    .line 98
    .line 99
    move-object v1, p1

    .line 100
    invoke-direct/range {v1 .. v6}, Lat/bitfire/dav4jvm/exception/DavException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lokhttp3/a0;ILkotlin/jvm/internal/o;)V

    .line 101
    .line 102
    .line 103
    throw p1

    .line 104
    :cond_4
    new-instance v0, Lat/bitfire/dav4jvm/exception/DavException;

    .line 105
    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string v2, "Expected 207 Multi-Status, got "

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Lokhttp3/a0;->m()I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const/16 v2, 0x20

    .line 124
    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Lokhttp3/a0;->W()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    const/4 v9, 0x0

    .line 140
    const/4 v10, 0x0

    .line 141
    const/4 v11, 0x6

    .line 142
    const/4 v12, 0x0

    .line 143
    move-object v7, v0

    .line 144
    invoke-direct/range {v7 .. v12}, Lat/bitfire/dav4jvm/exception/DavException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lokhttp3/a0;ILkotlin/jvm/internal/o;)V

    .line 145
    .line 146
    .line 147
    throw v0
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

.method private final checkStatus(ILjava/lang/String;Lokhttp3/a0;)V
    .locals 2

    .line 2
    div-int/lit8 v0, p1, 0x64

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x191

    if-eq p1, v0, :cond_c

    const/16 v0, 0x199

    if-eq p1, v0, :cond_a

    const/16 v0, 0x19c

    if-eq p1, v0, :cond_8

    const/16 v0, 0x1f7

    if-eq p1, v0, :cond_6

    const/16 v0, 0x193

    if-eq p1, v0, :cond_4

    const/16 v0, 0x194

    if-eq p1, v0, :cond_2

    if-eqz p3, :cond_1

    .line 3
    new-instance p1, Lat/bitfire/dav4jvm/exception/HttpException;

    invoke-direct {p1, p3}, Lat/bitfire/dav4jvm/exception/HttpException;-><init>(Lokhttp3/a0;)V

    goto :goto_0

    :cond_1
    new-instance p3, Lat/bitfire/dav4jvm/exception/HttpException;

    invoke-direct {p3, p1, p2}, Lat/bitfire/dav4jvm/exception/HttpException;-><init>(ILjava/lang/String;)V

    move-object p1, p3

    goto :goto_0

    .line 4
    :cond_2
    new-instance p1, Lat/bitfire/dav4jvm/exception/NotFoundException;

    if-eqz p3, :cond_3

    invoke-direct {p1, p3}, Lat/bitfire/dav4jvm/exception/NotFoundException;-><init>(Lokhttp3/a0;)V

    goto :goto_0

    :cond_3
    invoke-direct {p1, p2}, Lat/bitfire/dav4jvm/exception/NotFoundException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_4
    new-instance p1, Lat/bitfire/dav4jvm/exception/ForbiddenException;

    if-eqz p3, :cond_5

    invoke-direct {p1, p3}, Lat/bitfire/dav4jvm/exception/ForbiddenException;-><init>(Lokhttp3/a0;)V

    goto :goto_0

    :cond_5
    invoke-direct {p1, p2}, Lat/bitfire/dav4jvm/exception/ForbiddenException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_6
    new-instance p1, Lat/bitfire/dav4jvm/exception/ServiceUnavailableException;

    if-eqz p3, :cond_7

    invoke-direct {p1, p3}, Lat/bitfire/dav4jvm/exception/ServiceUnavailableException;-><init>(Lokhttp3/a0;)V

    goto :goto_0

    :cond_7
    invoke-direct {p1, p2}, Lat/bitfire/dav4jvm/exception/ServiceUnavailableException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_8
    new-instance p1, Lat/bitfire/dav4jvm/exception/PreconditionFailedException;

    if-eqz p3, :cond_9

    invoke-direct {p1, p3}, Lat/bitfire/dav4jvm/exception/PreconditionFailedException;-><init>(Lokhttp3/a0;)V

    goto :goto_0

    :cond_9
    invoke-direct {p1, p2}, Lat/bitfire/dav4jvm/exception/PreconditionFailedException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_a
    new-instance p1, Lat/bitfire/dav4jvm/exception/ConflictException;

    if-eqz p3, :cond_b

    invoke-direct {p1, p3}, Lat/bitfire/dav4jvm/exception/ConflictException;-><init>(Lokhttp3/a0;)V

    goto :goto_0

    :cond_b
    invoke-direct {p1, p2}, Lat/bitfire/dav4jvm/exception/ConflictException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_c
    new-instance p1, Lat/bitfire/dav4jvm/exception/UnauthorizedException;

    if-eqz p3, :cond_d

    invoke-direct {p1, p3}, Lat/bitfire/dav4jvm/exception/UnauthorizedException;-><init>(Lokhttp3/a0;)V

    goto :goto_0

    :cond_d
    invoke-direct {p1, p2}, Lat/bitfire/dav4jvm/exception/UnauthorizedException;-><init>(Ljava/lang/String;)V

    .line 10
    :goto_0
    throw p1
.end method

.method public static synthetic delete$default(Lat/bitfire/dav4jvm/DavResource;Ljava/lang/String;Ljava/lang/String;Lw7/l;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lat/bitfire/dav4jvm/exception/HttpException;
        }
    .end annotation

    .line 1
    if-nez p5, :cond_2

    .line 2
    .line 3
    and-int/lit8 p5, p4, 0x1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p5, :cond_0

    .line 7
    .line 8
    move-object p1, v0

    .line 9
    :cond_0
    and-int/lit8 p4, p4, 0x2

    .line 10
    .line 11
    if-eqz p4, :cond_1

    .line 12
    .line 13
    move-object p2, v0

    .line 14
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lat/bitfire/dav4jvm/DavResource;->delete(Ljava/lang/String;Ljava/lang/String;Lw7/l;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 19
    .line 20
    const-string p1, "Super calls with default arguments not supported in this target, function: delete"

    .line 21
    .line 22
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0
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
.end method

.method public static synthetic put$default(Lat/bitfire/dav4jvm/DavResource;Lokhttp3/z;Ljava/lang/String;Ljava/lang/String;ZLw7/l;ILjava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lat/bitfire/dav4jvm/exception/HttpException;
        }
    .end annotation

    .line 1
    if-nez p7, :cond_3

    .line 2
    .line 3
    and-int/lit8 p7, p6, 0x2

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p7, :cond_0

    .line 7
    .line 8
    move-object v3, v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object v3, p2

    .line 11
    :goto_0
    and-int/lit8 p2, p6, 0x4

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    move-object v4, v0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move-object v4, p3

    .line 18
    :goto_1
    and-int/lit8 p2, p6, 0x8

    .line 19
    .line 20
    if-eqz p2, :cond_2

    .line 21
    .line 22
    const/4 p4, 0x0

    .line 23
    :cond_2
    move v5, p4

    .line 24
    move-object v1, p0

    .line 25
    move-object v2, p1

    .line 26
    move-object v6, p5

    .line 27
    invoke-virtual/range {v1 .. v6}, Lat/bitfire/dav4jvm/DavResource;->put(Lokhttp3/z;Ljava/lang/String;Ljava/lang/String;ZLw7/l;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 32
    .line 33
    const-string p1, "Super calls with default arguments not supported in this target, function: put"

    .line 34
    .line 35
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p0
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
.end method


# virtual methods
.method protected final checkStatus(Lokhttp3/a0;)V
    .locals 2

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lokhttp3/a0;->m()I

    move-result v0

    invoke-virtual {p1}, Lokhttp3/a0;->W()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lat/bitfire/dav4jvm/DavResource;->checkStatus(ILjava/lang/String;Lokhttp3/a0;)V

    return-void
.end method

.method public final copy(Lokhttp3/t;ZLw7/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/t;",
            "Z",
            "Lw7/l<",
            "-",
            "Lokhttp3/a0;",
            "Lkotlin/u;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lat/bitfire/dav4jvm/exception/HttpException;,
            Lat/bitfire/dav4jvm/exception/DavException;
        }
    .end annotation

    .line 1
    const-string v0, "destination"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lokhttp3/y$a;

    .line 12
    .line 13
    invoke-direct {v0}, Lokhttp3/y$a;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "COPY"

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v1, v2}, Lokhttp3/y$a;->h(Ljava/lang/String;Lokhttp3/z;)Lokhttp3/y$a;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "Content-Length"

    .line 24
    .line 25
    const-string v3, "0"

    .line 26
    .line 27
    invoke-virtual {v0, v1, v3}, Lokhttp3/y$a;->f(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/y$a;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1}, Lokhttp3/t;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v1, "Destination"

    .line 36
    .line 37
    invoke-virtual {v0, v1, p1}, Lokhttp3/y$a;->f(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/y$a;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p2, :cond_0

    .line 42
    .line 43
    const-string p2, "Overwrite"

    .line 44
    .line 45
    const-string v0, "F"

    .line 46
    .line 47
    invoke-virtual {p1, p2, v0}, Lokhttp3/y$a;->f(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/y$a;

    .line 48
    .line 49
    .line 50
    :cond_0
    new-instance p2, Lat/bitfire/dav4jvm/DavResource$copy$1;

    .line 51
    .line 52
    invoke-direct {p2, p0, p1}, Lat/bitfire/dav4jvm/DavResource$copy$1;-><init>(Lat/bitfire/dav4jvm/DavResource;Lokhttp3/y$a;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p2}, Lat/bitfire/dav4jvm/DavResource;->followRedirects(Lw7/a;)Lokhttp3/a0;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    :try_start_0
    invoke-virtual {p0, p1}, Lat/bitfire/dav4jvm/DavResource;->checkStatus(Lokhttp3/a0;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lokhttp3/a0;->m()I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    const/16 v0, 0xcf

    .line 67
    .line 68
    if-eq p2, v0, :cond_1

    .line 69
    .line 70
    invoke-interface {p3, p1}, Lw7/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    sget-object p2, Lkotlin/u;->a:Lkotlin/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    invoke-static {p1, v2}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_1
    :try_start_1
    new-instance p2, Lat/bitfire/dav4jvm/exception/HttpException;

    .line 80
    .line 81
    invoke-direct {p2, p1}, Lat/bitfire/dav4jvm/exception/HttpException;-><init>(Lokhttp3/a0;)V

    .line 82
    .line 83
    .line 84
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :catchall_0
    move-exception p2

    .line 86
    :try_start_2
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 87
    :catchall_1
    move-exception p3

    .line 88
    invoke-static {p1, p2}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    throw p3
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

.method public final delete(Ljava/lang/String;Ljava/lang/String;Lw7/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lw7/l<",
            "-",
            "Lokhttp3/a0;",
            "Lkotlin/u;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lat/bitfire/dav4jvm/exception/HttpException;
        }
    .end annotation

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lat/bitfire/dav4jvm/DavResource$delete$1;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1, p2}, Lat/bitfire/dav4jvm/DavResource$delete$1;-><init>(Lat/bitfire/dav4jvm/DavResource;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lat/bitfire/dav4jvm/DavResource;->followRedirects(Lw7/a;)Lokhttp3/a0;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :try_start_0
    invoke-virtual {p0, p1}, Lat/bitfire/dav4jvm/DavResource;->checkStatus(Lokhttp3/a0;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lokhttp3/a0;->m()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    const/16 v0, 0xcf

    .line 23
    .line 24
    if-eq p2, v0, :cond_0

    .line 25
    .line 26
    invoke-interface {p3, p1}, Lw7/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    sget-object p2, Lkotlin/u;->a:Lkotlin/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    const/4 p2, 0x0

    .line 32
    invoke-static {p1, p2}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    :try_start_1
    new-instance p2, Lat/bitfire/dav4jvm/exception/HttpException;

    .line 37
    .line 38
    invoke-direct {p2, p1}, Lat/bitfire/dav4jvm/exception/HttpException;-><init>(Lokhttp3/a0;)V

    .line 39
    .line 40
    .line 41
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :catchall_0
    move-exception p2

    .line 43
    :try_start_2
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 44
    :catchall_1
    move-exception p3

    .line 45
    invoke-static {p1, p2}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    throw p3
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

.method public final fileName()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lat/bitfire/dav4jvm/HttpUtils;->INSTANCE:Lat/bitfire/dav4jvm/HttpUtils;

    .line 2
    .line 3
    iget-object v1, p0, Lat/bitfire/dav4jvm/DavResource;->location:Lokhttp3/t;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lat/bitfire/dav4jvm/HttpUtils;->fileName(Lokhttp3/t;)Ljava/lang/String;

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
.end method

.method protected final followRedirects(Lw7/a;)Lokhttp3/a0;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw7/a<",
            "Lokhttp3/a0;",
            ">;)",
            "Lokhttp3/a0;"
        }
    .end annotation

    .line 1
    const-string v0, "sendRequest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    move-object v2, v1

    .line 9
    :goto_0
    const-string v3, "response"

    .line 10
    .line 11
    const/4 v4, 0x5

    .line 12
    if-gt v0, v4, :cond_3

    .line 13
    .line 14
    invoke-interface {p1}, Lw7/a;->invoke()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lokhttp3/a0;

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {v2}, Lokhttp3/a0;->V()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_3

    .line 30
    .line 31
    :try_start_0
    const-string v3, "Location"

    .line 32
    .line 33
    const/4 v4, 0x2

    .line 34
    invoke-static {v2, v3, v1, v4, v1}, Lokhttp3/a0;->z(Lokhttp3/a0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    iget-object v4, p0, Lat/bitfire/dav4jvm/DavResource;->location:Lokhttp3/t;

    .line 41
    .line 42
    invoke-virtual {v4, v3}, Lokhttp3/t;->r(Ljava/lang/String;)Lokhttp3/t;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move-object v3, v1

    .line 48
    :goto_1
    if-eqz v3, :cond_2

    .line 49
    .line 50
    iget-object v4, p0, Lat/bitfire/dav4jvm/DavResource;->log:Ljava/util/logging/Logger;

    .line 51
    .line 52
    new-instance v5, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v6, "Redirected, new location = "

    .line 58
    .line 59
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iput-object v3, p0, Lat/bitfire/dav4jvm/DavResource;->location:Lokhttp3/t;

    .line 73
    .line 74
    sget-object v3, Lkotlin/u;->a:Lkotlin/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    invoke-static {v2, v1}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    add-int/lit8 v0, v0, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    :try_start_1
    new-instance p1, Lat/bitfire/dav4jvm/exception/DavException;

    .line 83
    .line 84
    const-string v4, "Redirected without new Location"

    .line 85
    .line 86
    const/4 v5, 0x0

    .line 87
    const/4 v6, 0x0

    .line 88
    const/4 v7, 0x6

    .line 89
    const/4 v8, 0x0

    .line 90
    move-object v3, p1

    .line 91
    invoke-direct/range {v3 .. v8}, Lat/bitfire/dav4jvm/exception/DavException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lokhttp3/a0;ILkotlin/jvm/internal/o;)V

    .line 92
    .line 93
    .line 94
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    :catchall_0
    move-exception p1

    .line 96
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 97
    :catchall_1
    move-exception v0

    .line 98
    invoke-static {v2, p1}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    throw v0

    .line 102
    :cond_3
    if-nez v2, :cond_4

    .line 103
    .line 104
    invoke-static {v3}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_4
    return-object v2
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

.method public final get(Ljava/lang/String;Lw7/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lw7/l<",
            "-",
            "Lokhttp3/a0;",
            "Lkotlin/u;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lat/bitfire/dav4jvm/exception/HttpException;
        }
    .end annotation

    .line 1
    const-string v0, "accept"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lat/bitfire/dav4jvm/DavResource$get$1;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Lat/bitfire/dav4jvm/DavResource$get$1;-><init>(Lat/bitfire/dav4jvm/DavResource;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lat/bitfire/dav4jvm/DavResource;->followRedirects(Lw7/a;)Lokhttp3/a0;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :try_start_0
    invoke-virtual {p0, p1}, Lat/bitfire/dav4jvm/DavResource;->checkStatus(Lokhttp3/a0;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p2, p1}, Lw7/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    sget-object p2, Lkotlin/u;->a:Lkotlin/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    const/4 p2, 0x0

    .line 29
    invoke-static {p1, p2}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p2

    .line 34
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 35
    :catchall_1
    move-exception v0

    .line 36
    invoke-static {p1, p2}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    throw v0
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method public final getHttpClient()Lokhttp3/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/dav4jvm/DavResource;->httpClient:Lokhttp3/x;

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

.method public final getLocation()Lokhttp3/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/dav4jvm/DavResource;->location:Lokhttp3/t;

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

.method public final getLog()Ljava/util/logging/Logger;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/dav4jvm/DavResource;->log:Ljava/util/logging/Logger;

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

.method public final mkCol(Ljava/lang/String;Lw7/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lw7/l<",
            "-",
            "Lokhttp3/a0;",
            "Lkotlin/u;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lat/bitfire/dav4jvm/exception/HttpException;
        }
    .end annotation

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    sget-object v1, Lokhttp3/z;->a:Lokhttp3/z$a;

    .line 10
    .line 11
    sget-object v2, Lat/bitfire/dav4jvm/DavResource;->MIME_XML:Lokhttp3/v;

    .line 12
    .line 13
    invoke-virtual {v1, p1, v2}, Lokhttp3/z$a;->a(Ljava/lang/String;Lokhttp3/v;)Lokhttp3/z;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object p1, v0

    .line 19
    :goto_0
    new-instance v1, Lat/bitfire/dav4jvm/DavResource$mkCol$1;

    .line 20
    .line 21
    invoke-direct {v1, p0, p1}, Lat/bitfire/dav4jvm/DavResource$mkCol$1;-><init>(Lat/bitfire/dav4jvm/DavResource;Lokhttp3/z;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lat/bitfire/dav4jvm/DavResource;->followRedirects(Lw7/a;)Lokhttp3/a0;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :try_start_0
    invoke-virtual {p0, p1}, Lat/bitfire/dav4jvm/DavResource;->checkStatus(Lokhttp3/a0;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p2, p1}, Lw7/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    sget-object p2, Lkotlin/u;->a:Lkotlin/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    invoke-static {p1, v0}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p2

    .line 41
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 42
    :catchall_1
    move-exception v0

    .line 43
    invoke-static {p1, p2}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    throw v0
    .line 47
.end method

.method public final move(Lokhttp3/t;ZLw7/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/t;",
            "Z",
            "Lw7/l<",
            "-",
            "Lokhttp3/a0;",
            "Lkotlin/u;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lat/bitfire/dav4jvm/exception/HttpException;,
            Lat/bitfire/dav4jvm/exception/DavException;
        }
    .end annotation

    .line 1
    const-string v0, "destination"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lokhttp3/y$a;

    .line 12
    .line 13
    invoke-direct {v0}, Lokhttp3/y$a;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "MOVE"

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v1, v2}, Lokhttp3/y$a;->h(Ljava/lang/String;Lokhttp3/z;)Lokhttp3/y$a;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "Content-Length"

    .line 24
    .line 25
    const-string v3, "0"

    .line 26
    .line 27
    invoke-virtual {v0, v1, v3}, Lokhttp3/y$a;->f(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/y$a;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1}, Lokhttp3/t;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v3, "Destination"

    .line 36
    .line 37
    invoke-virtual {v0, v3, v1}, Lokhttp3/y$a;->f(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/y$a;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz p2, :cond_0

    .line 42
    .line 43
    const-string p2, "Overwrite"

    .line 44
    .line 45
    const-string v1, "F"

    .line 46
    .line 47
    invoke-virtual {v0, p2, v1}, Lokhttp3/y$a;->f(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/y$a;

    .line 48
    .line 49
    .line 50
    :cond_0
    new-instance p2, Lat/bitfire/dav4jvm/DavResource$move$1;

    .line 51
    .line 52
    invoke-direct {p2, p0, v0}, Lat/bitfire/dav4jvm/DavResource$move$1;-><init>(Lat/bitfire/dav4jvm/DavResource;Lokhttp3/y$a;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p2}, Lat/bitfire/dav4jvm/DavResource;->followRedirects(Lw7/a;)Lokhttp3/a0;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    :try_start_0
    invoke-virtual {p0, p2}, Lat/bitfire/dav4jvm/DavResource;->checkStatus(Lokhttp3/a0;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Lokhttp3/a0;->m()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    const/16 v1, 0xcf

    .line 67
    .line 68
    if-eq v0, v1, :cond_3

    .line 69
    .line 70
    iget-object v0, p0, Lat/bitfire/dav4jvm/DavResource;->location:Lokhttp3/t;

    .line 71
    .line 72
    const-string v1, "Location"

    .line 73
    .line 74
    const/4 v3, 0x2

    .line 75
    invoke-static {p2, v1, v2, v3, v2}, Lokhttp3/a0;->z(Lokhttp3/a0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    if-eqz v1, :cond_1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {p1}, Lokhttp3/t;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    :goto_0
    invoke-virtual {v0, v1}, Lokhttp3/t;->r(Ljava/lang/String;)Lokhttp3/t;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-eqz p1, :cond_2

    .line 91
    .line 92
    iput-object p1, p0, Lat/bitfire/dav4jvm/DavResource;->location:Lokhttp3/t;

    .line 93
    .line 94
    :cond_2
    invoke-interface {p3, p2}, Lw7/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    sget-object p1, Lkotlin/u;->a:Lkotlin/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .line 99
    invoke-static {p2, v2}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_3
    :try_start_1
    new-instance p1, Lat/bitfire/dav4jvm/exception/HttpException;

    .line 104
    .line 105
    invoke-direct {p1, p2}, Lat/bitfire/dav4jvm/exception/HttpException;-><init>(Lokhttp3/a0;)V

    .line 106
    .line 107
    .line 108
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :catchall_0
    move-exception p1

    .line 110
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 111
    :catchall_1
    move-exception p3

    .line 112
    invoke-static {p2, p1}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 113
    .line 114
    .line 115
    throw p3
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

.method public final options(Lw7/p;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw7/p<",
            "-",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;-",
            "Lokhttp3/a0;",
            "Lkotlin/u;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lat/bitfire/dav4jvm/exception/HttpException;
        }
    .end annotation

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lat/bitfire/dav4jvm/DavResource;->httpClient:Lokhttp3/x;

    .line 7
    .line 8
    new-instance v1, Lokhttp3/y$a;

    .line 9
    .line 10
    invoke-direct {v1}, Lokhttp3/y$a;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "OPTIONS"

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-virtual {v1, v2, v3}, Lokhttp3/y$a;->h(Ljava/lang/String;Lokhttp3/z;)Lokhttp3/y$a;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "Content-Length"

    .line 21
    .line 22
    const-string v4, "0"

    .line 23
    .line 24
    invoke-virtual {v1, v2, v4}, Lokhttp3/y$a;->f(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/y$a;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v2, p0, Lat/bitfire/dav4jvm/DavResource;->location:Lokhttp3/t;

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lokhttp3/y$a;->m(Lokhttp3/t;)Lokhttp3/y$a;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lokhttp3/y$a;->b()Lokhttp3/y;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lokhttp3/x;->a(Lokhttp3/y;)Lokhttp3/e;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0}, Lokhttp3/e;->s()Lokhttp3/a0;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :try_start_0
    invoke-virtual {p0, v0}, Lat/bitfire/dav4jvm/DavResource;->checkStatus(Lokhttp3/a0;)V

    .line 47
    .line 48
    .line 49
    sget-object v1, Lat/bitfire/dav4jvm/HttpUtils;->INSTANCE:Lat/bitfire/dav4jvm/HttpUtils;

    .line 50
    .line 51
    const-string v2, "DAV"

    .line 52
    .line 53
    invoke-virtual {v1, v0, v2}, Lat/bitfire/dav4jvm/HttpUtils;->listHeader(Lokhttp3/a0;Ljava/lang/String;)[Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    new-instance v2, Ljava/util/ArrayList;

    .line 58
    .line 59
    array-length v4, v1

    .line 60
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    .line 62
    .line 63
    array-length v4, v1

    .line 64
    const/4 v5, 0x0

    .line 65
    :goto_0
    if-ge v5, v4, :cond_1

    .line 66
    .line 67
    aget-object v6, v1, v5

    .line 68
    .line 69
    if-eqz v6, :cond_0

    .line 70
    .line 71
    invoke-static {v6}, Lkotlin/text/k;->L0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    add-int/lit8 v5, v5, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    .line 86
    .line 87
    const-string v1, "null cannot be cast to non-null type kotlin.CharSequence"

    .line 88
    .line 89
    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p1

    .line 93
    :cond_1
    invoke-static {v2}, Lkotlin/collections/t;->I0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-interface {p1, v1, v0}, Lw7/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    sget-object p1, Lkotlin/u;->a:Lkotlin/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .line 102
    invoke-static {v0, v3}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :catchall_0
    move-exception p1

    .line 107
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 108
    :catchall_1
    move-exception v1

    .line 109
    invoke-static {v0, p1}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 110
    .line 111
    .line 112
    throw v1
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

.method protected final processMultiStatus(Ljava/io/Reader;Lw7/p;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "Lw7/p<",
            "-",
            "Lat/bitfire/dav4jvm/Response;",
            "-",
            "Lat/bitfire/dav4jvm/Response$HrefRelation;",
            "Lkotlin/u;",
            ">;)",
            "Ljava/util/List<",
            "Lat/bitfire/dav4jvm/Property;",
            ">;"
        }
    .end annotation

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    sget-object v1, Lat/bitfire/dav4jvm/XmlUtils;->INSTANCE:Lat/bitfire/dav4jvm/XmlUtils;

    invoke-virtual {v1}, Lat/bitfire/dav4jvm/XmlUtils;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 8
    new-instance v2, Lat/bitfire/dav4jvm/DavResource$processMultiStatus$2;

    invoke-direct {v2, p0, v1, p2, v0}, Lat/bitfire/dav4jvm/DavResource$processMultiStatus$2;-><init>(Lat/bitfire/dav4jvm/DavResource;Lorg/xmlpull/v1/XmlPullParser;Lw7/p;Ljava/util/List;)V

    .line 9
    :try_start_0
    invoke-interface {v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 10
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1

    :goto_0
    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 11
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result p1

    if-ne p1, p2, :cond_0

    .line 12
    sget-object p1, Lat/bitfire/dav4jvm/XmlUtils;->INSTANCE:Lat/bitfire/dav4jvm/XmlUtils;

    invoke-virtual {p1, v1}, Lat/bitfire/dav4jvm/XmlUtils;->propertyName(Lorg/xmlpull/v1/XmlPullParser;)Lat/bitfire/dav4jvm/Property$Name;

    move-result-object p1

    sget-object p2, Lat/bitfire/dav4jvm/Response;->Companion:Lat/bitfire/dav4jvm/Response$Companion;

    invoke-virtual {p2}, Lat/bitfire/dav4jvm/Response$Companion;->getMULTISTATUS()Lat/bitfire/dav4jvm/Property$Name;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {v2}, Lat/bitfire/dav4jvm/DavResource$processMultiStatus$2;->invoke()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 14
    :cond_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    goto :goto_0

    .line 15
    :cond_1
    new-instance p1, Lat/bitfire/dav4jvm/exception/DavException;

    const-string v1, "Multi-Status response didn\'t contain multistatus XML element"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lat/bitfire/dav4jvm/exception/DavException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lokhttp3/a0;ILkotlin/jvm/internal/o;)V

    throw p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    move-object v2, p1

    .line 16
    new-instance p1, Lat/bitfire/dav4jvm/exception/DavException;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "Couldn\'t parse multistatus XML element"

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lat/bitfire/dav4jvm/exception/DavException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lokhttp3/a0;ILkotlin/jvm/internal/o;)V

    throw p1

    :catch_1
    move-exception p1

    move-object v2, p1

    .line 17
    new-instance p1, Lat/bitfire/dav4jvm/exception/DavException;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "Incomplete multistatus XML element"

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lat/bitfire/dav4jvm/exception/DavException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lokhttp3/a0;ILkotlin/jvm/internal/o;)V

    throw p1
.end method

.method protected final processMultiStatus(Lokhttp3/a0;Lw7/p;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/a0;",
            "Lw7/p<",
            "-",
            "Lat/bitfire/dav4jvm/Response;",
            "-",
            "Lat/bitfire/dav4jvm/Response$HrefRelation;",
            "Lkotlin/u;",
            ">;)",
            "Ljava/util/List<",
            "Lat/bitfire/dav4jvm/Property;",
            ">;"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lat/bitfire/dav4jvm/DavResource;->checkStatus(Lokhttp3/a0;)V

    .line 2
    invoke-direct {p0, p1}, Lat/bitfire/dav4jvm/DavResource;->assertMultiStatus(Lokhttp3/a0;)V

    .line 3
    invoke-virtual {p1}, Lokhttp3/a0;->c()Lokhttp3/b0;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/b0;->e()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lat/bitfire/dav4jvm/DavResource;->processMultiStatus(Ljava/io/Reader;Lw7/p;)Ljava/util/List;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, v0}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p2

    :catchall_0
    move-exception p2

    .line 5
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, p2}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final propfind(I[Lat/bitfire/dav4jvm/Property$Name;Lw7/p;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lat/bitfire/dav4jvm/Property$Name;",
            "Lw7/p<",
            "-",
            "Lat/bitfire/dav4jvm/Response;",
            "-",
            "Lat/bitfire/dav4jvm/Response$HrefRelation;",
            "Lkotlin/u;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lat/bitfire/dav4jvm/exception/HttpException;,
            Lat/bitfire/dav4jvm/exception/DavException;
        }
    .end annotation

    .line 1
    const-string v0, "reqProp"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lat/bitfire/dav4jvm/XmlUtils;->INSTANCE:Lat/bitfire/dav4jvm/XmlUtils;

    .line 12
    .line 13
    invoke-virtual {v0}, Lat/bitfire/dav4jvm/XmlUtils;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Ljava/io/StringWriter;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 23
    .line 24
    .line 25
    const-string v3, ""

    .line 26
    .line 27
    const-string v4, "DAV:"

    .line 28
    .line 29
    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v3, "CAL"

    .line 33
    .line 34
    const-string v4, "urn:ietf:params:xml:ns:caldav"

    .line 35
    .line 36
    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v3, "CARD"

    .line 40
    .line 41
    const-string v4, "urn:ietf:params:xml:ns:carddav"

    .line 42
    .line 43
    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v3, "UTF-8"

    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 50
    .line 51
    .line 52
    sget-object v3, Lat/bitfire/dav4jvm/DavResource;->PROPFIND:Lat/bitfire/dav4jvm/Property$Name;

    .line 53
    .line 54
    new-instance v5, Lat/bitfire/dav4jvm/DavResource$propfind$1;

    .line 55
    .line 56
    invoke-direct {v5, p2}, Lat/bitfire/dav4jvm/DavResource$propfind$1;-><init>([Lat/bitfire/dav4jvm/Property$Name;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1, v3, v5}, Lat/bitfire/dav4jvm/XmlUtils;->insertTag(Lorg/xmlpull/v1/XmlSerializer;Lat/bitfire/dav4jvm/Property$Name;Lw7/l;)V

    .line 60
    .line 61
    .line 62
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 63
    .line 64
    .line 65
    new-instance p2, Lat/bitfire/dav4jvm/DavResource$propfind$2;

    .line 66
    .line 67
    invoke-direct {p2, p0, v2, p1}, Lat/bitfire/dav4jvm/DavResource$propfind$2;-><init>(Lat/bitfire/dav4jvm/DavResource;Ljava/io/StringWriter;I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p2}, Lat/bitfire/dav4jvm/DavResource;->followRedirects(Lw7/a;)Lokhttp3/a0;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lat/bitfire/dav4jvm/DavResource;->processMultiStatus(Lokhttp3/a0;Lw7/p;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    invoke-static {p1, v4}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :catchall_0
    move-exception p2

    .line 82
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 83
    :catchall_1
    move-exception p3

    .line 84
    invoke-static {p1, p2}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    throw p3
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

.method public final put(Lokhttp3/z;Ljava/lang/String;Ljava/lang/String;ZLw7/l;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/z;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lw7/l<",
            "-",
            "Lokhttp3/a0;",
            "Lkotlin/u;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lat/bitfire/dav4jvm/exception/HttpException;
        }
    .end annotation

    .line 1
    const-string v0, "body"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p5, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lat/bitfire/dav4jvm/DavResource$put$1;

    .line 12
    .line 13
    move-object v1, v0

    .line 14
    move-object v2, p0

    .line 15
    move-object v3, p1

    .line 16
    move-object v4, p2

    .line 17
    move-object v5, p3

    .line 18
    move v6, p4

    .line 19
    invoke-direct/range {v1 .. v6}, Lat/bitfire/dav4jvm/DavResource$put$1;-><init>(Lat/bitfire/dav4jvm/DavResource;Lokhttp3/z;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lat/bitfire/dav4jvm/DavResource;->followRedirects(Lw7/a;)Lokhttp3/a0;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :try_start_0
    invoke-virtual {p0, p1}, Lat/bitfire/dav4jvm/DavResource;->checkStatus(Lokhttp3/a0;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p5, p1}, Lw7/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    sget-object p2, Lkotlin/u;->a:Lkotlin/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    const/4 p2, 0x0

    .line 35
    invoke-static {p1, p2}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p2

    .line 40
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    :catchall_1
    move-exception p3

    .line 42
    invoke-static {p1, p2}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    throw p3
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
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/dav4jvm/DavResource;->location:Lokhttp3/t;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokhttp3/t;->toString()Ljava/lang/String;

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
.end method

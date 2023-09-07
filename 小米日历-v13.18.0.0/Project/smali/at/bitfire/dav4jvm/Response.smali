.class public final Lat/bitfire/dav4jvm/Response;
.super Ljava/lang/Object;
.source "Response.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/bitfire/dav4jvm/Response$HrefRelation;,
        Lat/bitfire/dav4jvm/Response$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\u0018\u0008\u0086\u0008\u0018\u0000 52\u00020\u0001:\u000256BM\u0012\u0006\u0010\u0017\u001a\u00020\u000c\u0012\u0006\u0010\u0018\u001a\u00020\u000c\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u000f\u0012\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011\u0012\u0010\u0008\u0002\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0011\u0012\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u00083\u00104J*\u0010\u0006\u001a\u0004\u0018\u00018\u0000\"\u0008\u0008\u0000\u0010\u0003*\u00020\u00022\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004H\u0086\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\t\u001a\u00020\u0008J\u0006\u0010\u000b\u001a\u00020\nJ\t\u0010\r\u001a\u00020\u000cH\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u000cH\u00c6\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u00c6\u0003J\u000f\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011H\u00c6\u0003J\u0011\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0011H\u00c6\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003JW\u0010\u001d\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u000c2\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u000f2\u000e\u0008\u0002\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u0010\u0008\u0002\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u00112\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u000cH\u00c6\u0001J\t\u0010\u001e\u001a\u00020\nH\u00d6\u0001J\t\u0010 \u001a\u00020\u001fH\u00d6\u0001J\u0013\u0010\"\u001a\u00020\u00082\u0008\u0010!\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R!\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00118FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010&R\u0017\u0010\u0017\u001a\u00020\u000c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010(\u001a\u0004\u0008)\u0010*R\u0017\u0010\u0018\u001a\u00020\u000c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010(\u001a\u0004\u0008+\u0010*R\u001d\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010,\u001a\u0004\u0008-\u0010&R\u001f\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010,\u001a\u0004\u0008.\u0010&R\u0019\u0010\u001c\u001a\u0004\u0018\u00010\u000c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010(\u001a\u0004\u0008/\u0010*R\u0019\u0010\u0019\u001a\u0004\u0018\u00010\u000f8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u00100\u001a\u0004\u00081\u00102\u00a8\u00067"
    }
    d2 = {
        "Lat/bitfire/dav4jvm/Response;",
        "",
        "Lat/bitfire/dav4jvm/Property;",
        "T",
        "Ljava/lang/Class;",
        "clazz",
        "get",
        "(Ljava/lang/Class;)Lat/bitfire/dav4jvm/Property;",
        "",
        "isSuccess",
        "",
        "hrefName",
        "Lokhttp3/t;",
        "component1",
        "component2",
        "Lvb/k;",
        "component3",
        "",
        "Lat/bitfire/dav4jvm/PropStat;",
        "component4",
        "Lat/bitfire/dav4jvm/Error;",
        "component5",
        "component6",
        "requestedUrl",
        "href",
        "status",
        "propstat",
        "error",
        "newLocation",
        "copy",
        "toString",
        "",
        "hashCode",
        "other",
        "equals",
        "properties$delegate",
        "Lkotlin/f;",
        "getProperties",
        "()Ljava/util/List;",
        "properties",
        "Lokhttp3/t;",
        "getRequestedUrl",
        "()Lokhttp3/t;",
        "getHref",
        "Ljava/util/List;",
        "getPropstat",
        "getError",
        "getNewLocation",
        "Lvb/k;",
        "getStatus",
        "()Lvb/k;",
        "<init>",
        "(Lokhttp3/t;Lokhttp3/t;Lvb/k;Ljava/util/List;Ljava/util/List;Lokhttp3/t;)V",
        "Companion",
        "HrefRelation",
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
.field public static final Companion:Lat/bitfire/dav4jvm/Response$Companion;

.field private static final LOCATION:Lat/bitfire/dav4jvm/Property$Name;

.field private static final MULTISTATUS:Lat/bitfire/dav4jvm/Property$Name;

.field private static final RESPONSE:Lat/bitfire/dav4jvm/Property$Name;

.field private static final STATUS:Lat/bitfire/dav4jvm/Property$Name;


# instance fields
.field private final error:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lat/bitfire/dav4jvm/Error;",
            ">;"
        }
    .end annotation
.end field

.field private final href:Lokhttp3/t;

.field private final newLocation:Lokhttp3/t;

.field private final properties$delegate:Lkotlin/f;

.field private final propstat:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lat/bitfire/dav4jvm/PropStat;",
            ">;"
        }
    .end annotation
.end field

.field private final requestedUrl:Lokhttp3/t;

.field private final status:Lvb/k;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lat/bitfire/dav4jvm/Response$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lat/bitfire/dav4jvm/Response$Companion;-><init>(Lkotlin/jvm/internal/o;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lat/bitfire/dav4jvm/Response;->Companion:Lat/bitfire/dav4jvm/Response$Companion;

    .line 8
    .line 9
    new-instance v0, Lat/bitfire/dav4jvm/Property$Name;

    .line 10
    .line 11
    const-string v1, "DAV:"

    .line 12
    .line 13
    const-string v2, "response"

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Lat/bitfire/dav4jvm/Property$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lat/bitfire/dav4jvm/Response;->RESPONSE:Lat/bitfire/dav4jvm/Property$Name;

    .line 19
    .line 20
    new-instance v0, Lat/bitfire/dav4jvm/Property$Name;

    .line 21
    .line 22
    const-string v2, "multistatus"

    .line 23
    .line 24
    invoke-direct {v0, v1, v2}, Lat/bitfire/dav4jvm/Property$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lat/bitfire/dav4jvm/Response;->MULTISTATUS:Lat/bitfire/dav4jvm/Property$Name;

    .line 28
    .line 29
    new-instance v0, Lat/bitfire/dav4jvm/Property$Name;

    .line 30
    .line 31
    const-string v2, "status"

    .line 32
    .line 33
    invoke-direct {v0, v1, v2}, Lat/bitfire/dav4jvm/Property$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lat/bitfire/dav4jvm/Response;->STATUS:Lat/bitfire/dav4jvm/Property$Name;

    .line 37
    .line 38
    new-instance v0, Lat/bitfire/dav4jvm/Property$Name;

    .line 39
    .line 40
    const-string v2, "location"

    .line 41
    .line 42
    invoke-direct {v0, v1, v2}, Lat/bitfire/dav4jvm/Property$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lat/bitfire/dav4jvm/Response;->LOCATION:Lat/bitfire/dav4jvm/Property$Name;

    .line 46
    .line 47
    return-void
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

.method public constructor <init>(Lokhttp3/t;Lokhttp3/t;Lvb/k;Ljava/util/List;Ljava/util/List;Lokhttp3/t;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/t;",
            "Lokhttp3/t;",
            "Lvb/k;",
            "Ljava/util/List<",
            "Lat/bitfire/dav4jvm/PropStat;",
            ">;",
            "Ljava/util/List<",
            "Lat/bitfire/dav4jvm/Error;",
            ">;",
            "Lokhttp3/t;",
            ")V"
        }
    .end annotation

    const-string v0, "requestedUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "href"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "propstat"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lat/bitfire/dav4jvm/Response;->requestedUrl:Lokhttp3/t;

    iput-object p2, p0, Lat/bitfire/dav4jvm/Response;->href:Lokhttp3/t;

    iput-object p3, p0, Lat/bitfire/dav4jvm/Response;->status:Lvb/k;

    iput-object p4, p0, Lat/bitfire/dav4jvm/Response;->propstat:Ljava/util/List;

    iput-object p5, p0, Lat/bitfire/dav4jvm/Response;->error:Ljava/util/List;

    iput-object p6, p0, Lat/bitfire/dav4jvm/Response;->newLocation:Lokhttp3/t;

    .line 2
    new-instance p1, Lat/bitfire/dav4jvm/Response$properties$2;

    invoke-direct {p1, p0}, Lat/bitfire/dav4jvm/Response$properties$2;-><init>(Lat/bitfire/dav4jvm/Response;)V

    invoke-static {p1}, Lkotlin/g;->b(Lw7/a;)Lkotlin/f;

    move-result-object p1

    iput-object p1, p0, Lat/bitfire/dav4jvm/Response;->properties$delegate:Lkotlin/f;

    return-void
.end method

.method public synthetic constructor <init>(Lokhttp3/t;Lokhttp3/t;Lvb/k;Ljava/util/List;Ljava/util/List;Lokhttp3/t;ILkotlin/jvm/internal/o;)V
    .locals 9

    and-int/lit8 v0, p7, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object v7, p5

    :goto_0
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_1

    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object v8, p6

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 3
    invoke-direct/range {v2 .. v8}, Lat/bitfire/dav4jvm/Response;-><init>(Lokhttp3/t;Lokhttp3/t;Lvb/k;Ljava/util/List;Ljava/util/List;Lokhttp3/t;)V

    return-void
.end method

.method public static final synthetic access$getLOCATION$cp()Lat/bitfire/dav4jvm/Property$Name;
    .locals 1

    .line 1
    sget-object v0, Lat/bitfire/dav4jvm/Response;->LOCATION:Lat/bitfire/dav4jvm/Property$Name;

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

.method public static final synthetic access$getMULTISTATUS$cp()Lat/bitfire/dav4jvm/Property$Name;
    .locals 1

    .line 1
    sget-object v0, Lat/bitfire/dav4jvm/Response;->MULTISTATUS:Lat/bitfire/dav4jvm/Property$Name;

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

.method public static final synthetic access$getRESPONSE$cp()Lat/bitfire/dav4jvm/Property$Name;
    .locals 1

    .line 1
    sget-object v0, Lat/bitfire/dav4jvm/Response;->RESPONSE:Lat/bitfire/dav4jvm/Property$Name;

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

.method public static final synthetic access$getSTATUS$cp()Lat/bitfire/dav4jvm/Property$Name;
    .locals 1

    .line 1
    sget-object v0, Lat/bitfire/dav4jvm/Response;->STATUS:Lat/bitfire/dav4jvm/Property$Name;

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

.method public static synthetic copy$default(Lat/bitfire/dav4jvm/Response;Lokhttp3/t;Lokhttp3/t;Lvb/k;Ljava/util/List;Ljava/util/List;Lokhttp3/t;ILjava/lang/Object;)Lat/bitfire/dav4jvm/Response;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lat/bitfire/dav4jvm/Response;->requestedUrl:Lokhttp3/t;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lat/bitfire/dav4jvm/Response;->href:Lokhttp3/t;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lat/bitfire/dav4jvm/Response;->status:Lvb/k;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lat/bitfire/dav4jvm/Response;->propstat:Ljava/util/List;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lat/bitfire/dav4jvm/Response;->error:Ljava/util/List;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lat/bitfire/dav4jvm/Response;->newLocation:Lokhttp3/t;

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lat/bitfire/dav4jvm/Response;->copy(Lokhttp3/t;Lokhttp3/t;Lvb/k;Ljava/util/List;Ljava/util/List;Lokhttp3/t;)Lat/bitfire/dav4jvm/Response;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lokhttp3/t;
    .locals 1

    iget-object v0, p0, Lat/bitfire/dav4jvm/Response;->requestedUrl:Lokhttp3/t;

    return-object v0
.end method

.method public final component2()Lokhttp3/t;
    .locals 1

    iget-object v0, p0, Lat/bitfire/dav4jvm/Response;->href:Lokhttp3/t;

    return-object v0
.end method

.method public final component3()Lvb/k;
    .locals 1

    iget-object v0, p0, Lat/bitfire/dav4jvm/Response;->status:Lvb/k;

    return-object v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lat/bitfire/dav4jvm/PropStat;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lat/bitfire/dav4jvm/Response;->propstat:Ljava/util/List;

    return-object v0
.end method

.method public final component5()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lat/bitfire/dav4jvm/Error;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lat/bitfire/dav4jvm/Response;->error:Ljava/util/List;

    return-object v0
.end method

.method public final component6()Lokhttp3/t;
    .locals 1

    iget-object v0, p0, Lat/bitfire/dav4jvm/Response;->newLocation:Lokhttp3/t;

    return-object v0
.end method

.method public final copy(Lokhttp3/t;Lokhttp3/t;Lvb/k;Ljava/util/List;Ljava/util/List;Lokhttp3/t;)Lat/bitfire/dav4jvm/Response;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/t;",
            "Lokhttp3/t;",
            "Lvb/k;",
            "Ljava/util/List<",
            "Lat/bitfire/dav4jvm/PropStat;",
            ">;",
            "Ljava/util/List<",
            "Lat/bitfire/dav4jvm/Error;",
            ">;",
            "Lokhttp3/t;",
            ")",
            "Lat/bitfire/dav4jvm/Response;"
        }
    .end annotation

    const-string v0, "requestedUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "href"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "propstat"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lat/bitfire/dav4jvm/Response;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lat/bitfire/dav4jvm/Response;-><init>(Lokhttp3/t;Lokhttp3/t;Lvb/k;Ljava/util/List;Ljava/util/List;Lokhttp3/t;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lat/bitfire/dav4jvm/Response;

    if-eqz v0, :cond_0

    check-cast p1, Lat/bitfire/dav4jvm/Response;

    iget-object v0, p0, Lat/bitfire/dav4jvm/Response;->requestedUrl:Lokhttp3/t;

    iget-object v1, p1, Lat/bitfire/dav4jvm/Response;->requestedUrl:Lokhttp3/t;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lat/bitfire/dav4jvm/Response;->href:Lokhttp3/t;

    iget-object v1, p1, Lat/bitfire/dav4jvm/Response;->href:Lokhttp3/t;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lat/bitfire/dav4jvm/Response;->status:Lvb/k;

    iget-object v1, p1, Lat/bitfire/dav4jvm/Response;->status:Lvb/k;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lat/bitfire/dav4jvm/Response;->propstat:Ljava/util/List;

    iget-object v1, p1, Lat/bitfire/dav4jvm/Response;->propstat:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lat/bitfire/dav4jvm/Response;->error:Ljava/util/List;

    iget-object v1, p1, Lat/bitfire/dav4jvm/Response;->error:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lat/bitfire/dav4jvm/Response;->newLocation:Lokhttp3/t;

    iget-object p1, p1, Lat/bitfire/dav4jvm/Response;->newLocation:Lokhttp3/t;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final get(Ljava/lang/Class;)Lat/bitfire/dav4jvm/Property;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lat/bitfire/dav4jvm/Property;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    const-string v0, "clazz"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lat/bitfire/dav4jvm/Response;->getProperties()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0, p1}, Lkotlin/collections/t;->N(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Lkotlin/collections/t;->a0(Ljava/util/List;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lat/bitfire/dav4jvm/Property;

    .line 19
    .line 20
    return-object p1
    .line 21
    .line 22
.end method

.method public final getError()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lat/bitfire/dav4jvm/Error;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lat/bitfire/dav4jvm/Response;->error:Ljava/util/List;

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

.method public final getHref()Lokhttp3/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/dav4jvm/Response;->href:Lokhttp3/t;

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

.method public final getNewLocation()Lokhttp3/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/dav4jvm/Response;->newLocation:Lokhttp3/t;

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

.method public final getProperties()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lat/bitfire/dav4jvm/Property;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lat/bitfire/dav4jvm/Response;->properties$delegate:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getPropstat()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lat/bitfire/dav4jvm/PropStat;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lat/bitfire/dav4jvm/Response;->propstat:Ljava/util/List;

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

.method public final getRequestedUrl()Lokhttp3/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/dav4jvm/Response;->requestedUrl:Lokhttp3/t;

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

.method public final getStatus()Lvb/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/dav4jvm/Response;->status:Lvb/k;

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

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lat/bitfire/dav4jvm/Response;->requestedUrl:Lokhttp3/t;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lat/bitfire/dav4jvm/Response;->href:Lokhttp3/t;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lat/bitfire/dav4jvm/Response;->status:Lvb/k;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lat/bitfire/dav4jvm/Response;->propstat:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lat/bitfire/dav4jvm/Response;->error:Ljava/util/List;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lat/bitfire/dav4jvm/Response;->newLocation:Lokhttp3/t;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    return v0
.end method

.method public final hrefName()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lat/bitfire/dav4jvm/HttpUtils;->INSTANCE:Lat/bitfire/dav4jvm/HttpUtils;

    .line 2
    .line 3
    iget-object v1, p0, Lat/bitfire/dav4jvm/Response;->href:Lokhttp3/t;

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

.method public final isSuccess()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lat/bitfire/dav4jvm/Response;->status:Lvb/k;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget v0, v0, Lvb/k;->b:I

    .line 6
    .line 7
    div-int/lit8 v0, v0, 0x64

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 16
    :goto_1
    return v0
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response(requestedUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lat/bitfire/dav4jvm/Response;->requestedUrl:Lokhttp3/t;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", href="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lat/bitfire/dav4jvm/Response;->href:Lokhttp3/t;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lat/bitfire/dav4jvm/Response;->status:Lvb/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", propstat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lat/bitfire/dav4jvm/Response;->propstat:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lat/bitfire/dav4jvm/Response;->error:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", newLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lat/bitfire/dav4jvm/Response;->newLocation:Lokhttp3/t;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

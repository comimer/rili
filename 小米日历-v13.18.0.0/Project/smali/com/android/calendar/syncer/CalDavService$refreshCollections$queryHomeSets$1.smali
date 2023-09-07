.class final Lcom/android/calendar/syncer/CalDavService$refreshCollections$queryHomeSets$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CalDavService.kt"

# interfaces
.implements Lw7/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/syncer/CalDavService;->h(Lcom/android/calendar/syncer/model/Service;Ljava/util/Map;Lokhttp3/x;Lokhttp3/t;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lw7/p<",
        "Lat/bitfire/dav4jvm/Response;",
        "Lat/bitfire/dav4jvm/Response$HrefRelation;",
        "Lkotlin/u;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "Lat/bitfire/dav4jvm/Response;",
        "response",
        "Lat/bitfire/dav4jvm/Response$HrefRelation;",
        "<anonymous parameter 1>",
        "Lkotlin/u;",
        "invoke",
        "(Lat/bitfire/dav4jvm/Response;Lat/bitfire/dav4jvm/Response$HrefRelation;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $dav:Lat/bitfire/dav4jvm/DavResource;

.field final synthetic $homeSets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lokhttp3/t;",
            "Lcom/android/calendar/syncer/model/HomeSet;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $recurse:Z

.field final synthetic $related:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lokhttp3/t;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $service:Lcom/android/calendar/syncer/model/Service;


# direct methods
.method constructor <init>(ZLat/bitfire/dav4jvm/DavResource;Ljava/util/Map;Lcom/android/calendar/syncer/model/Service;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lat/bitfire/dav4jvm/DavResource;",
            "Ljava/util/Map<",
            "Lokhttp3/t;",
            "Lcom/android/calendar/syncer/model/HomeSet;",
            ">;",
            "Lcom/android/calendar/syncer/model/Service;",
            "Ljava/util/Set<",
            "Lokhttp3/t;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/calendar/syncer/CalDavService$refreshCollections$queryHomeSets$1;->$recurse:Z

    iput-object p2, p0, Lcom/android/calendar/syncer/CalDavService$refreshCollections$queryHomeSets$1;->$dav:Lat/bitfire/dav4jvm/DavResource;

    iput-object p3, p0, Lcom/android/calendar/syncer/CalDavService$refreshCollections$queryHomeSets$1;->$homeSets:Ljava/util/Map;

    iput-object p4, p0, Lcom/android/calendar/syncer/CalDavService$refreshCollections$queryHomeSets$1;->$service:Lcom/android/calendar/syncer/model/Service;

    iput-object p5, p0, Lcom/android/calendar/syncer/CalDavService$refreshCollections$queryHomeSets$1;->$related:Ljava/util/Set;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lat/bitfire/dav4jvm/Response;

    check-cast p2, Lat/bitfire/dav4jvm/Response$HrefRelation;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/syncer/CalDavService$refreshCollections$queryHomeSets$1;->invoke(Lat/bitfire/dav4jvm/Response;Lat/bitfire/dav4jvm/Response$HrefRelation;)V

    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    return-object p1
.end method

.method public final invoke(Lat/bitfire/dav4jvm/Response;Lat/bitfire/dav4jvm/Response$HrefRelation;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "response"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "<anonymous parameter 1>"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    const-class v2, Lat/bitfire/dav4jvm/property/CalendarHomeSet;

    invoke-virtual {v1, v2}, Lat/bitfire/dav4jvm/Response;->get(Ljava/lang/Class;)Lat/bitfire/dav4jvm/Property;

    move-result-object v2

    check-cast v2, Lat/bitfire/dav4jvm/property/CalendarHomeSet;

    if-eqz v2, :cond_1

    iget-object v3, v0, Lcom/android/calendar/syncer/CalDavService$refreshCollections$queryHomeSets$1;->$dav:Lat/bitfire/dav4jvm/DavResource;

    iget-object v4, v0, Lcom/android/calendar/syncer/CalDavService$refreshCollections$queryHomeSets$1;->$homeSets:Ljava/util/Map;

    iget-object v5, v0, Lcom/android/calendar/syncer/CalDavService$refreshCollections$queryHomeSets$1;->$service:Lcom/android/calendar/syncer/model/Service;

    .line 3
    invoke-virtual {v2}, Lat/bitfire/dav4jvm/property/HrefListProperty;->getHrefs()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 4
    invoke-virtual {v3}, Lat/bitfire/dav4jvm/DavResource;->getLocation()Lokhttp3/t;

    move-result-object v7

    const-string v8, "href"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Lokhttp3/t;->r(Ljava/lang/String;)Lokhttp3/t;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 5
    sget-object v7, Lat/bitfire/dav4jvm/UrlUtils;->INSTANCE:Lat/bitfire/dav4jvm/UrlUtils;

    invoke-virtual {v7, v6}, Lat/bitfire/dav4jvm/UrlUtils;->withTrailingSlash(Lokhttp3/t;)Lokhttp3/t;

    move-result-object v6

    .line 6
    new-instance v7, Lcom/android/calendar/syncer/model/HomeSet;

    const-wide/16 v9, 0x0

    invoke-virtual {v5}, Lcom/android/calendar/syncer/model/Service;->getId()J

    move-result-wide v11

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x18

    const/16 v17, 0x0

    move-object v8, v7

    move-object v13, v6

    invoke-direct/range {v8 .. v17}, Lcom/android/calendar/syncer/model/HomeSet;-><init>(JJLokhttp3/t;ZLjava/lang/String;ILkotlin/jvm/internal/o;)V

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_1
    iget-boolean v2, v0, Lcom/android/calendar/syncer/CalDavService$refreshCollections$queryHomeSets$1;->$recurse:Z

    if-eqz v2, :cond_2

    .line 8
    iget-object v2, v0, Lcom/android/calendar/syncer/CalDavService$refreshCollections$queryHomeSets$1;->$related:Ljava/util/Set;

    iget-object v3, v0, Lcom/android/calendar/syncer/CalDavService$refreshCollections$queryHomeSets$1;->$dav:Lat/bitfire/dav4jvm/DavResource;

    invoke-virtual {v3}, Lat/bitfire/dav4jvm/DavResource;->getLocation()Lokhttp3/t;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/calendar/syncer/CalDavService;->d(Ljava/util/Set;Lokhttp3/t;Lat/bitfire/dav4jvm/Response;)V

    :cond_2
    return-void
.end method

.class final Lcom/android/calendar/syncer/CalDavService$refreshCollections$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CalDavService.kt"

# interfaces
.implements Lw7/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/syncer/CalDavService;->g(J)V
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
        "relation",
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
.field final synthetic $collections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lokhttp3/t;",
            "Lcom/android/calendar/syncer/model/Collection;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $homeSet:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Lokhttp3/t;",
            "Lcom/android/calendar/syncer/model/HomeSet;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $service:Lcom/android/calendar/syncer/model/Service;

.field final synthetic $serviceId:J


# direct methods
.method constructor <init>(Ljava/util/Map$Entry;JLcom/android/calendar/syncer/model/Service;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Lokhttp3/t;",
            "Lcom/android/calendar/syncer/model/HomeSet;",
            ">;J",
            "Lcom/android/calendar/syncer/model/Service;",
            "Ljava/util/Map<",
            "Lokhttp3/t;",
            "Lcom/android/calendar/syncer/model/Collection;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/calendar/syncer/CalDavService$refreshCollections$1$2;->$homeSet:Ljava/util/Map$Entry;

    iput-wide p2, p0, Lcom/android/calendar/syncer/CalDavService$refreshCollections$1$2;->$serviceId:J

    iput-object p4, p0, Lcom/android/calendar/syncer/CalDavService$refreshCollections$1$2;->$service:Lcom/android/calendar/syncer/model/Service;

    iput-object p5, p0, Lcom/android/calendar/syncer/CalDavService$refreshCollections$1$2;->$collections:Ljava/util/Map;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/syncer/CalDavService$refreshCollections$1$2;->invoke(Lat/bitfire/dav4jvm/Response;Lat/bitfire/dav4jvm/Response$HrefRelation;)V

    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    return-object p1
.end method

.method public final invoke(Lat/bitfire/dav4jvm/Response;Lat/bitfire/dav4jvm/Response$HrefRelation;)V
    .locals 4

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "relation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lat/bitfire/dav4jvm/Response;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v0, Lat/bitfire/dav4jvm/Response$HrefRelation;->SELF:Lat/bitfire/dav4jvm/Response$HrefRelation;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_3

    .line 4
    iget-object p2, p0, Lcom/android/calendar/syncer/CalDavService$refreshCollections$1$2;->$homeSet:Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/calendar/syncer/model/HomeSet;

    const-class v0, Lat/bitfire/dav4jvm/property/DisplayName;

    invoke-virtual {p1, v0}, Lat/bitfire/dav4jvm/Response;->get(Ljava/lang/Class;)Lat/bitfire/dav4jvm/Property;

    move-result-object v0

    check-cast v0, Lat/bitfire/dav4jvm/property/DisplayName;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lat/bitfire/dav4jvm/property/DisplayName;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Lcom/android/calendar/syncer/model/HomeSet;->setDisplayName(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/android/calendar/syncer/CalDavService$refreshCollections$1$2;->$homeSet:Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/calendar/syncer/model/HomeSet;

    const-class v0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;

    invoke-virtual {p1, v0}, Lat/bitfire/dav4jvm/Response;->get(Ljava/lang/Class;)Lat/bitfire/dav4jvm/Property;

    move-result-object v0

    check-cast v0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->getMayBind()Z

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p2, v0}, Lcom/android/calendar/syncer/model/HomeSet;->setPrivBind(Z)V

    .line 6
    :cond_3
    sget-object p2, Lcom/android/calendar/syncer/model/Collection;->Companion:Lcom/android/calendar/syncer/model/Collection$Companion;

    invoke-virtual {p2, p1}, Lcom/android/calendar/syncer/model/Collection$Companion;->fromDavResponse(Lat/bitfire/dav4jvm/Response;)Lcom/android/calendar/syncer/model/Collection;

    move-result-object p2

    if-nez p2, :cond_4

    return-void

    .line 7
    :cond_4
    iget-wide v2, p0, Lcom/android/calendar/syncer/CalDavService$refreshCollections$1$2;->$serviceId:J

    invoke-virtual {p2, v2, v3}, Lcom/android/calendar/syncer/model/Collection;->setServiceId(J)V

    .line 8
    invoke-virtual {p2, v1}, Lcom/android/calendar/syncer/model/Collection;->setConfirmed(Z)V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found collection:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CalSync:D:CalDavService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v0, p0, Lcom/android/calendar/syncer/CalDavService$refreshCollections$1$2;->$service:Lcom/android/calendar/syncer/model/Service;

    invoke-virtual {v0}, Lcom/android/calendar/syncer/model/Service;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "caldav"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "CALENDAR"

    const-string v1, "WEBCAL"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/calendar/syncer/model/Collection;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/j;->u([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    iget-object v0, p0, Lcom/android/calendar/syncer/CalDavService$refreshCollections$1$2;->$collections:Ljava/util/Map;

    invoke-virtual {p1}, Lat/bitfire/dav4jvm/Response;->getHref()Lokhttp3/t;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

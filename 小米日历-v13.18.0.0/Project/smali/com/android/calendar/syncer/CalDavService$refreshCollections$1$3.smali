.class final Lcom/android/calendar/syncer/CalDavService$refreshCollections$1$3;
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
.field final synthetic $itCollections:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lokhttp3/t;",
            "Lcom/android/calendar/syncer/model/Collection;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $service:Lcom/android/calendar/syncer/model/Service;


# direct methods
.method constructor <init>(Lcom/android/calendar/syncer/model/Service;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/syncer/model/Service;",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/util/Map$Entry<",
            "Lokhttp3/t;",
            "Lcom/android/calendar/syncer/model/Collection;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/calendar/syncer/CalDavService$refreshCollections$1$3;->$service:Lcom/android/calendar/syncer/model/Service;

    iput-object p2, p0, Lcom/android/calendar/syncer/CalDavService$refreshCollections$1$3;->$itCollections:Ljava/util/Iterator;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/syncer/CalDavService$refreshCollections$1$3;->invoke(Lat/bitfire/dav4jvm/Response;Lat/bitfire/dav4jvm/Response$HrefRelation;)V

    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    return-object p1
.end method

.method public final invoke(Lat/bitfire/dav4jvm/Response;Lat/bitfire/dav4jvm/Response$HrefRelation;)V
    .locals 2

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lat/bitfire/dav4jvm/Response;->isSuccess()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object p2, Lcom/android/calendar/syncer/model/Collection;->Companion:Lcom/android/calendar/syncer/model/Collection$Companion;

    invoke-virtual {p2, p1}, Lcom/android/calendar/syncer/model/Collection$Companion;->fromDavResponse(Lat/bitfire/dav4jvm/Response;)Lcom/android/calendar/syncer/model/Collection;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p2, 0x1

    .line 4
    invoke-virtual {p1, p2}, Lcom/android/calendar/syncer/model/Collection;->setConfirmed(Z)V

    .line 5
    iget-object p2, p0, Lcom/android/calendar/syncer/CalDavService$refreshCollections$1$3;->$service:Lcom/android/calendar/syncer/model/Service;

    invoke-virtual {p2}, Lcom/android/calendar/syncer/model/Service;->getType()Ljava/lang/String;

    move-result-object p2

    const-string v0, "caldav"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "WEBCAL"

    if-eqz p2, :cond_2

    const-string p2, "CALENDAR"

    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/calendar/syncer/model/Collection;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lkotlin/collections/j;->u([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/android/calendar/syncer/model/Collection;->getType()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/android/calendar/syncer/model/Collection;->getSource()Lokhttp3/t;

    move-result-object p1

    if-nez p1, :cond_4

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/android/calendar/syncer/CalDavService$refreshCollections$1$3;->$itCollections:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    :cond_4
    return-void
.end method

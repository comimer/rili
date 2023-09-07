.class final Lcom/android/calendar/syncer/resource/DavResourceFinder$getCurrentUserPrincipal$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DavResourceFinder.kt"

# interfaces
.implements Lw7/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/syncer/resource/DavResourceFinder;->q(Lokhttp3/t;Lcom/android/calendar/syncer/resource/DavResourceFinder$Service;)Lokhttp3/t;
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
.field final synthetic $principal:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lokhttp3/t;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $service:Lcom/android/calendar/syncer/resource/DavResourceFinder$Service;

.field final synthetic this$0:Lcom/android/calendar/syncer/resource/DavResourceFinder;


# direct methods
.method constructor <init>(Lcom/android/calendar/syncer/resource/DavResourceFinder$Service;Lcom/android/calendar/syncer/resource/DavResourceFinder;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/syncer/resource/DavResourceFinder$Service;",
            "Lcom/android/calendar/syncer/resource/DavResourceFinder;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lokhttp3/t;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/calendar/syncer/resource/DavResourceFinder$getCurrentUserPrincipal$1;->$service:Lcom/android/calendar/syncer/resource/DavResourceFinder$Service;

    iput-object p2, p0, Lcom/android/calendar/syncer/resource/DavResourceFinder$getCurrentUserPrincipal$1;->this$0:Lcom/android/calendar/syncer/resource/DavResourceFinder;

    iput-object p3, p0, Lcom/android/calendar/syncer/resource/DavResourceFinder$getCurrentUserPrincipal$1;->$principal:Lkotlin/jvm/internal/Ref$ObjectRef;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/syncer/resource/DavResourceFinder$getCurrentUserPrincipal$1;->invoke(Lat/bitfire/dav4jvm/Response;Lat/bitfire/dav4jvm/Response$HrefRelation;)V

    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    return-object p1
.end method

.method public final invoke(Lat/bitfire/dav4jvm/Response;Lat/bitfire/dav4jvm/Response$HrefRelation;)V
    .locals 4

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    const-class p2, Lat/bitfire/dav4jvm/property/CurrentUserPrincipal;

    invoke-virtual {p1, p2}, Lat/bitfire/dav4jvm/Response;->get(Ljava/lang/Class;)Lat/bitfire/dav4jvm/Property;

    move-result-object p2

    check-cast p2, Lat/bitfire/dav4jvm/property/CurrentUserPrincipal;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lat/bitfire/dav4jvm/property/CurrentUserPrincipal;->getHref()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/calendar/syncer/resource/DavResourceFinder$getCurrentUserPrincipal$1;->$service:Lcom/android/calendar/syncer/resource/DavResourceFinder$Service;

    iget-object v1, p0, Lcom/android/calendar/syncer/resource/DavResourceFinder$getCurrentUserPrincipal$1;->this$0:Lcom/android/calendar/syncer/resource/DavResourceFinder;

    iget-object v2, p0, Lcom/android/calendar/syncer/resource/DavResourceFinder$getCurrentUserPrincipal$1;->$principal:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 3
    invoke-virtual {p1}, Lat/bitfire/dav4jvm/Response;->getRequestedUrl()Lokhttp3/t;

    move-result-object p1

    invoke-virtual {p1, p2}, Lokhttp3/t;->r(Ljava/lang/String;)Lokhttp3/t;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found current-user-principal: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v3, "CalSync:D:DavResourceFinder"

    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v1, p1, v0}, Lcom/android/calendar/syncer/resource/DavResourceFinder;->x(Lokhttp3/t;Lcom/android/calendar/syncer/resource/DavResourceFinder$Service;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t provide required "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " service"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :cond_0
    iput-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

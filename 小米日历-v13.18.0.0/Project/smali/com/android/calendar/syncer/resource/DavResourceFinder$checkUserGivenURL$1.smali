.class final Lcom/android/calendar/syncer/resource/DavResourceFinder$checkUserGivenURL$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DavResourceFinder.kt"

# interfaces
.implements Lw7/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/syncer/resource/DavResourceFinder;->d(Lokhttp3/t;Lcom/android/calendar/syncer/resource/DavResourceFinder$Service;Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$a;)V
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
.field final synthetic $config:Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$a;

.field final synthetic this$0:Lcom/android/calendar/syncer/resource/DavResourceFinder;


# direct methods
.method constructor <init>(Lcom/android/calendar/syncer/resource/DavResourceFinder;Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$a;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/syncer/resource/DavResourceFinder$checkUserGivenURL$1;->this$0:Lcom/android/calendar/syncer/resource/DavResourceFinder;

    iput-object p2, p0, Lcom/android/calendar/syncer/resource/DavResourceFinder$checkUserGivenURL$1;->$config:Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$a;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/syncer/resource/DavResourceFinder$checkUserGivenURL$1;->invoke(Lat/bitfire/dav4jvm/Response;Lat/bitfire/dav4jvm/Response$HrefRelation;)V

    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    return-object p1
.end method

.method public final invoke(Lat/bitfire/dav4jvm/Response;Lat/bitfire/dav4jvm/Response$HrefRelation;)V
    .locals 1

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/android/calendar/syncer/resource/DavResourceFinder$checkUserGivenURL$1;->this$0:Lcom/android/calendar/syncer/resource/DavResourceFinder;

    iget-object v0, p0, Lcom/android/calendar/syncer/resource/DavResourceFinder$checkUserGivenURL$1;->$config:Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$a;

    invoke-static {p2, p1, v0}, Lcom/android/calendar/syncer/resource/DavResourceFinder;->c(Lcom/android/calendar/syncer/resource/DavResourceFinder;Lat/bitfire/dav4jvm/Response;Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$a;)V

    return-void
.end method

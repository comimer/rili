.class final Lat/bitfire/dav4jvm/DavResource$copy$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DavResource.kt"

# interfaces
.implements Lw7/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/bitfire/dav4jvm/DavResource;->copy(Lokhttp3/t;ZLw7/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lw7/a<",
        "Lokhttp3/a0;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lokhttp3/a0;",
        "invoke",
        "()Lokhttp3/a0;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $requestBuilder:Lokhttp3/y$a;

.field final synthetic this$0:Lat/bitfire/dav4jvm/DavResource;


# direct methods
.method constructor <init>(Lat/bitfire/dav4jvm/DavResource;Lokhttp3/y$a;)V
    .locals 0

    iput-object p1, p0, Lat/bitfire/dav4jvm/DavResource$copy$1;->this$0:Lat/bitfire/dav4jvm/DavResource;

    iput-object p2, p0, Lat/bitfire/dav4jvm/DavResource$copy$1;->$requestBuilder:Lokhttp3/y$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lat/bitfire/dav4jvm/DavResource$copy$1;->invoke()Lokhttp3/a0;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lokhttp3/a0;
    .locals 2

    .line 2
    iget-object v0, p0, Lat/bitfire/dav4jvm/DavResource$copy$1;->$requestBuilder:Lokhttp3/y$a;

    iget-object v1, p0, Lat/bitfire/dav4jvm/DavResource$copy$1;->this$0:Lat/bitfire/dav4jvm/DavResource;

    invoke-virtual {v1}, Lat/bitfire/dav4jvm/DavResource;->getLocation()Lokhttp3/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/y$a;->m(Lokhttp3/t;)Lokhttp3/y$a;

    .line 3
    iget-object v0, p0, Lat/bitfire/dav4jvm/DavResource$copy$1;->this$0:Lat/bitfire/dav4jvm/DavResource;

    invoke-virtual {v0}, Lat/bitfire/dav4jvm/DavResource;->getHttpClient()Lokhttp3/x;

    move-result-object v0

    iget-object v1, p0, Lat/bitfire/dav4jvm/DavResource$copy$1;->$requestBuilder:Lokhttp3/y$a;

    .line 4
    invoke-virtual {v1}, Lokhttp3/y$a;->b()Lokhttp3/y;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lokhttp3/x;->a(Lokhttp3/y;)Lokhttp3/e;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Lokhttp3/e;->s()Lokhttp3/a0;

    move-result-object v0

    return-object v0
.end method

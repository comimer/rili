.class final Lat/bitfire/dav4jvm/Response$properties$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Response.kt"

# interfaces
.implements Lw7/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/bitfire/dav4jvm/Response;-><init>(Lokhttp3/t;Lokhttp3/t;Lvb/k;Ljava/util/List;Ljava/util/List;Lokhttp3/t;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lw7/a<",
        "Ljava/util/List<",
        "+",
        "Lat/bitfire/dav4jvm/Property;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lat/bitfire/dav4jvm/Property;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic this$0:Lat/bitfire/dav4jvm/Response;


# direct methods
.method constructor <init>(Lat/bitfire/dav4jvm/Response;)V
    .locals 0

    iput-object p1, p0, Lat/bitfire/dav4jvm/Response$properties$2;->this$0:Lat/bitfire/dav4jvm/Response;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lat/bitfire/dav4jvm/Response$properties$2;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lat/bitfire/dav4jvm/Property;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lat/bitfire/dav4jvm/Response$properties$2;->this$0:Lat/bitfire/dav4jvm/Response;

    invoke-virtual {v0}, Lat/bitfire/dav4jvm/Response;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lat/bitfire/dav4jvm/Response$properties$2;->this$0:Lat/bitfire/dav4jvm/Response;

    invoke-virtual {v0}, Lat/bitfire/dav4jvm/Response;->getPropstat()Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lat/bitfire/dav4jvm/PropStat;

    .line 6
    invoke-virtual {v3}, Lat/bitfire/dav4jvm/PropStat;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/t;->u(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 9
    check-cast v2, Lat/bitfire/dav4jvm/PropStat;

    .line 10
    invoke-virtual {v2}, Lat/bitfire/dav4jvm/PropStat;->getProperties()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lkotlin/collections/t;->w(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 11
    :cond_3
    invoke-static {}, Lkotlin/collections/t;->j()Ljava/util/List;

    move-result-object v0

    :goto_2
    return-object v0
.end method

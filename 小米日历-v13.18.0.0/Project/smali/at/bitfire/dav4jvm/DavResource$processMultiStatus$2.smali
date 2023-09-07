.class final Lat/bitfire/dav4jvm/DavResource$processMultiStatus$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DavResource.kt"

# interfaces
.implements Lw7/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/bitfire/dav4jvm/DavResource;->processMultiStatus(Ljava/io/Reader;Lw7/p;)Ljava/util/List;
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
        "parseMultiStatus",
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
.field final synthetic $callback:Lw7/p;

.field final synthetic $parser:Lorg/xmlpull/v1/XmlPullParser;

.field final synthetic $responseProperties:Ljava/util/List;

.field final synthetic this$0:Lat/bitfire/dav4jvm/DavResource;


# direct methods
.method constructor <init>(Lat/bitfire/dav4jvm/DavResource;Lorg/xmlpull/v1/XmlPullParser;Lw7/p;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lat/bitfire/dav4jvm/DavResource$processMultiStatus$2;->this$0:Lat/bitfire/dav4jvm/DavResource;

    iput-object p2, p0, Lat/bitfire/dav4jvm/DavResource$processMultiStatus$2;->$parser:Lorg/xmlpull/v1/XmlPullParser;

    iput-object p3, p0, Lat/bitfire/dav4jvm/DavResource$processMultiStatus$2;->$callback:Lw7/p;

    iput-object p4, p0, Lat/bitfire/dav4jvm/DavResource$processMultiStatus$2;->$responseProperties:Ljava/util/List;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lat/bitfire/dav4jvm/DavResource$processMultiStatus$2;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lat/bitfire/dav4jvm/Property;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lat/bitfire/dav4jvm/DavResource$processMultiStatus$2;->$parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 3
    iget-object v1, p0, Lat/bitfire/dav4jvm/DavResource$processMultiStatus$2;->$parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    :goto_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 4
    iget-object v2, p0, Lat/bitfire/dav4jvm/DavResource$processMultiStatus$2;->$parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-eq v2, v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v0, p0, Lat/bitfire/dav4jvm/DavResource$processMultiStatus$2;->$responseProperties:Ljava/util/List;

    return-object v0

    :cond_1
    :goto_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 6
    iget-object v1, p0, Lat/bitfire/dav4jvm/DavResource$processMultiStatus$2;->$parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    if-ne v1, v2, :cond_3

    .line 7
    sget-object v1, Lat/bitfire/dav4jvm/XmlUtils;->INSTANCE:Lat/bitfire/dav4jvm/XmlUtils;

    iget-object v2, p0, Lat/bitfire/dav4jvm/DavResource$processMultiStatus$2;->$parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {v1, v2}, Lat/bitfire/dav4jvm/XmlUtils;->propertyName(Lorg/xmlpull/v1/XmlPullParser;)Lat/bitfire/dav4jvm/Property$Name;

    move-result-object v2

    .line 8
    sget-object v3, Lat/bitfire/dav4jvm/Response;->Companion:Lat/bitfire/dav4jvm/Response$Companion;

    invoke-virtual {v3}, Lat/bitfire/dav4jvm/Response$Companion;->getRESPONSE()Lat/bitfire/dav4jvm/Property$Name;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 9
    iget-object v1, p0, Lat/bitfire/dav4jvm/DavResource$processMultiStatus$2;->$parser:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v2, p0, Lat/bitfire/dav4jvm/DavResource$processMultiStatus$2;->this$0:Lat/bitfire/dav4jvm/DavResource;

    invoke-virtual {v2}, Lat/bitfire/dav4jvm/DavResource;->getLocation()Lokhttp3/t;

    move-result-object v2

    iget-object v4, p0, Lat/bitfire/dav4jvm/DavResource$processMultiStatus$2;->$callback:Lw7/p;

    invoke-virtual {v3, v1, v2, v4}, Lat/bitfire/dav4jvm/Response$Companion;->parse(Lorg/xmlpull/v1/XmlPullParser;Lokhttp3/t;Lw7/p;)V

    goto :goto_2

    .line 10
    :cond_2
    sget-object v3, Lat/bitfire/dav4jvm/property/SyncToken;->NAME:Lat/bitfire/dav4jvm/Property$Name;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11
    iget-object v2, p0, Lat/bitfire/dav4jvm/DavResource$processMultiStatus$2;->$parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {v1, v2}, Lat/bitfire/dav4jvm/XmlUtils;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 12
    iget-object v2, p0, Lat/bitfire/dav4jvm/DavResource$processMultiStatus$2;->$responseProperties:Ljava/util/List;

    new-instance v3, Lat/bitfire/dav4jvm/property/SyncToken;

    invoke-direct {v3, v1}, Lat/bitfire/dav4jvm/property/SyncToken;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_3
    :goto_2
    iget-object v1, p0, Lat/bitfire/dav4jvm/DavResource$processMultiStatus$2;->$parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0
.end method

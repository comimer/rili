.class final Lat/bitfire/dav4jvm/property/SupportedAddressData$Factory$create$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SupportedAddressData.kt"

# interfaces
.implements Lw7/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/bitfire/dav4jvm/property/SupportedAddressData$Factory;->create(Lorg/xmlpull/v1/XmlPullParser;)Lat/bitfire/dav4jvm/property/SupportedAddressData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lw7/a<",
        "Lkotlin/u;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lkotlin/u;",
        "invoke",
        "()V",
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
.field final synthetic $parser:Lorg/xmlpull/v1/XmlPullParser;

.field final synthetic $supported:Lat/bitfire/dav4jvm/property/SupportedAddressData;


# direct methods
.method constructor <init>(Lorg/xmlpull/v1/XmlPullParser;Lat/bitfire/dav4jvm/property/SupportedAddressData;)V
    .locals 0

    iput-object p1, p0, Lat/bitfire/dav4jvm/property/SupportedAddressData$Factory$create$1;->$parser:Lorg/xmlpull/v1/XmlPullParser;

    iput-object p2, p0, Lat/bitfire/dav4jvm/property/SupportedAddressData$Factory$create$1;->$supported:Lat/bitfire/dav4jvm/property/SupportedAddressData;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lat/bitfire/dav4jvm/property/SupportedAddressData$Factory$create$1;->invoke()V

    sget-object v0, Lkotlin/u;->a:Lkotlin/u;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    iget-object v0, p0, Lat/bitfire/dav4jvm/property/SupportedAddressData$Factory$create$1;->$parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v1, 0x0

    const-string v2, "content-type"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v2, p0, Lat/bitfire/dav4jvm/property/SupportedAddressData$Factory$create$1;->$parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v3, "version"

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; version="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_0
    sget-object v1, Lokhttp3/v;->g:Lokhttp3/v$a;

    invoke-virtual {v1, v0}, Lokhttp3/v$a;->b(Ljava/lang/String;)Lokhttp3/v;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lat/bitfire/dav4jvm/property/SupportedAddressData$Factory$create$1;->$supported:Lat/bitfire/dav4jvm/property/SupportedAddressData;

    invoke-virtual {v1}, Lat/bitfire/dav4jvm/property/SupportedAddressData;->getTypes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

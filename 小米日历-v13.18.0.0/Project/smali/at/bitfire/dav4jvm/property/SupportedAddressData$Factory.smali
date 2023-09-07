.class public final Lat/bitfire/dav4jvm/property/SupportedAddressData$Factory;
.super Ljava/lang/Object;
.source "SupportedAddressData.kt"

# interfaces
.implements Lat/bitfire/dav4jvm/PropertyFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/bitfire/dav4jvm/property/SupportedAddressData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lat/bitfire/dav4jvm/property/SupportedAddressData$Factory;",
        "Lat/bitfire/dav4jvm/PropertyFactory;",
        "()V",
        "create",
        "Lat/bitfire/dav4jvm/property/SupportedAddressData;",
        "parser",
        "Lorg/xmlpull/v1/XmlPullParser;",
        "getName",
        "Lat/bitfire/dav4jvm/Property$Name;",
        "build"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create(Lorg/xmlpull/v1/XmlPullParser;)Lat/bitfire/dav4jvm/Property;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lat/bitfire/dav4jvm/property/SupportedAddressData$Factory;->create(Lorg/xmlpull/v1/XmlPullParser;)Lat/bitfire/dav4jvm/property/SupportedAddressData;

    move-result-object p1

    return-object p1
.end method

.method public create(Lorg/xmlpull/v1/XmlPullParser;)Lat/bitfire/dav4jvm/property/SupportedAddressData;
    .locals 4

    const-string v0, "parser"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lat/bitfire/dav4jvm/property/SupportedAddressData;

    invoke-direct {v0}, Lat/bitfire/dav4jvm/property/SupportedAddressData;-><init>()V

    .line 3
    :try_start_0
    sget-object v1, Lat/bitfire/dav4jvm/XmlUtils;->INSTANCE:Lat/bitfire/dav4jvm/XmlUtils;

    sget-object v2, Lat/bitfire/dav4jvm/property/SupportedAddressData;->Companion:Lat/bitfire/dav4jvm/property/SupportedAddressData$Companion;

    invoke-virtual {v2}, Lat/bitfire/dav4jvm/property/SupportedAddressData$Companion;->getADDRESS_DATA_TYPE()Lat/bitfire/dav4jvm/Property$Name;

    move-result-object v2

    new-instance v3, Lat/bitfire/dav4jvm/property/SupportedAddressData$Factory$create$1;

    invoke-direct {v3, p1, v0}, Lat/bitfire/dav4jvm/property/SupportedAddressData$Factory$create$1;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lat/bitfire/dav4jvm/property/SupportedAddressData;)V

    invoke-virtual {v1, p1, v2, v3}, Lat/bitfire/dav4jvm/XmlUtils;->processTag(Lorg/xmlpull/v1/XmlPullParser;Lat/bitfire/dav4jvm/Property$Name;Lw7/a;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 4
    sget-object v0, Lat/bitfire/dav4jvm/Dav4jvm;->INSTANCE:Lat/bitfire/dav4jvm/Dav4jvm;

    invoke-virtual {v0}, Lat/bitfire/dav4jvm/Dav4jvm;->getLog()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Couldn\'t parse <resourcetype>"

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getName()Lat/bitfire/dav4jvm/Property$Name;
    .locals 1

    .line 1
    sget-object v0, Lat/bitfire/dav4jvm/property/SupportedAddressData;->NAME:Lat/bitfire/dav4jvm/Property$Name;

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

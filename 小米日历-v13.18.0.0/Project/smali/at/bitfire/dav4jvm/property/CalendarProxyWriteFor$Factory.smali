.class public final Lat/bitfire/dav4jvm/property/CalendarProxyWriteFor$Factory;
.super Lat/bitfire/dav4jvm/property/HrefListProperty$Factory;
.source "CalendarProxyWriteFor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/bitfire/dav4jvm/property/CalendarProxyWriteFor;
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
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lat/bitfire/dav4jvm/property/CalendarProxyWriteFor$Factory;",
        "Lat/bitfire/dav4jvm/property/HrefListProperty$Factory;",
        "()V",
        "create",
        "Lat/bitfire/dav4jvm/property/HrefListProperty;",
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

    .line 1
    invoke-direct {p0}, Lat/bitfire/dav4jvm/property/HrefListProperty$Factory;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
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


# virtual methods
.method public bridge synthetic create(Lorg/xmlpull/v1/XmlPullParser;)Lat/bitfire/dav4jvm/Property;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lat/bitfire/dav4jvm/property/CalendarProxyWriteFor$Factory;->create(Lorg/xmlpull/v1/XmlPullParser;)Lat/bitfire/dav4jvm/property/HrefListProperty;

    move-result-object p1

    return-object p1
.end method

.method public create(Lorg/xmlpull/v1/XmlPullParser;)Lat/bitfire/dav4jvm/property/HrefListProperty;
    .locals 1

    const-string v0, "parser"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lat/bitfire/dav4jvm/property/CalendarProxyWriteFor;

    invoke-direct {v0}, Lat/bitfire/dav4jvm/property/CalendarProxyWriteFor;-><init>()V

    invoke-virtual {p0, p1, v0}, Lat/bitfire/dav4jvm/property/HrefListProperty$Factory;->create(Lorg/xmlpull/v1/XmlPullParser;Lat/bitfire/dav4jvm/property/HrefListProperty;)Lat/bitfire/dav4jvm/property/HrefListProperty;

    move-result-object p1

    return-object p1
.end method

.method public getName()Lat/bitfire/dav4jvm/Property$Name;
    .locals 1

    .line 1
    sget-object v0, Lat/bitfire/dav4jvm/property/CalendarProxyWriteFor;->NAME:Lat/bitfire/dav4jvm/Property$Name;

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

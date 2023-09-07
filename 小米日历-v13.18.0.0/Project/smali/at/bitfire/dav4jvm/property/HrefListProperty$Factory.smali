.class public abstract Lat/bitfire/dav4jvm/property/HrefListProperty$Factory;
.super Ljava/lang/Object;
.source "HrefListProperty.kt"

# interfaces
.implements Lat/bitfire/dav4jvm/PropertyFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/bitfire/dav4jvm/property/HrefListProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Factory"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0004\u00a8\u0006\u0008"
    }
    d2 = {
        "Lat/bitfire/dav4jvm/property/HrefListProperty$Factory;",
        "Lat/bitfire/dav4jvm/PropertyFactory;",
        "()V",
        "create",
        "Lat/bitfire/dav4jvm/property/HrefListProperty;",
        "parser",
        "Lorg/xmlpull/v1/XmlPullParser;",
        "list",
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
.method public final create(Lorg/xmlpull/v1/XmlPullParser;Lat/bitfire/dav4jvm/property/HrefListProperty;)Lat/bitfire/dav4jvm/property/HrefListProperty;
    .locals 3

    .line 1
    const-string v0, "parser"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "list"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lat/bitfire/dav4jvm/XmlUtils;->INSTANCE:Lat/bitfire/dav4jvm/XmlUtils;

    .line 12
    .line 13
    sget-object v1, Lat/bitfire/dav4jvm/DavResource;->Companion:Lat/bitfire/dav4jvm/DavResource$Companion;

    .line 14
    .line 15
    invoke-virtual {v1}, Lat/bitfire/dav4jvm/DavResource$Companion;->getHREF()Lat/bitfire/dav4jvm/Property$Name;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p2}, Lat/bitfire/dav4jvm/property/HrefListProperty;->getHrefs()Ljava/util/LinkedList;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0, p1, v1, v2}, Lat/bitfire/dav4jvm/XmlUtils;->readTextPropertyList(Lorg/xmlpull/v1/XmlPullParser;Lat/bitfire/dav4jvm/Property$Name;Ljava/util/Collection;)V

    .line 24
    .line 25
    .line 26
    return-object p2
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

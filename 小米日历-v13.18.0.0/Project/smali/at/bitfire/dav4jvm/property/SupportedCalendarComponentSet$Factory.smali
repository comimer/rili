.class public final Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet$Factory;
.super Ljava/lang/Object;
.source "SupportedCalendarComponentSet.kt"

# interfaces
.implements Lat/bitfire/dav4jvm/PropertyFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;
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
        "Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet$Factory;",
        "Lat/bitfire/dav4jvm/PropertyFactory;",
        "()V",
        "create",
        "Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;",
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
    invoke-virtual {p0, p1}, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet$Factory;->create(Lorg/xmlpull/v1/XmlPullParser;)Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;

    move-result-object p1

    return-object p1
.end method

.method public create(Lorg/xmlpull/v1/XmlPullParser;)Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;
    .locals 6

    const-string v0, "parser"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;-><init>(ZZZ)V

    .line 3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    :goto_0
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-eq v3, v1, :cond_0

    goto :goto_1

    :cond_0
    return-object v0

    :cond_1
    :goto_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    .line 6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    if-ne v2, v3, :cond_8

    .line 7
    sget-object v2, Lat/bitfire/dav4jvm/XmlUtils;->INSTANCE:Lat/bitfire/dav4jvm/XmlUtils;

    invoke-virtual {v2, p1}, Lat/bitfire/dav4jvm/XmlUtils;->propertyName(Lorg/xmlpull/v1/XmlPullParser;)Lat/bitfire/dav4jvm/Property$Name;

    move-result-object v2

    .line 8
    sget-object v3, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;->Companion:Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet$Companion;

    invoke-virtual {v3}, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet$Companion;->getALLCOMP()Lat/bitfire/dav4jvm/Property$Name;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 9
    invoke-virtual {v0, v5}, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;->setSupportsEvents(Z)V

    .line 10
    invoke-virtual {v0, v5}, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;->setSupportsTasks(Z)V

    .line 11
    invoke-virtual {v0, v5}, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;->setSupportsJournal(Z)V

    goto :goto_2

    .line 12
    :cond_2
    invoke-virtual {v3}, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet$Companion;->getCOMP()Lat/bitfire/dav4jvm/Property$Name;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    const-string v3, "name"

    .line 13
    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "(this as java.lang.String).toUpperCase()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x694ac01c

    if-eq v3, v4, :cond_7

    const v4, -0x442ab1ff

    if-eq v3, v4, :cond_6

    const v4, 0x4e3459c

    if-eq v3, v4, :cond_5

    goto :goto_2

    :cond_5
    const-string v3, "VTODO"

    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0, v5}, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;->setSupportsTasks(Z)V

    goto :goto_2

    :cond_6
    const-string v3, "VJOURNAL"

    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0, v5}, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;->setSupportsJournal(Z)V

    goto :goto_2

    :cond_7
    const-string v3, "VEVENT"

    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0, v5}, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;->setSupportsEvents(Z)V

    .line 17
    :cond_8
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto/16 :goto_0
.end method

.method public getName()Lat/bitfire/dav4jvm/Property$Name;
    .locals 1

    .line 1
    sget-object v0, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;->NAME:Lat/bitfire/dav4jvm/Property$Name;

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

.class final Lat/bitfire/dav4jvm/property/SupportedReportSet$Factory$create$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SupportedReportSet.kt"

# interfaces
.implements Lw7/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/bitfire/dav4jvm/property/SupportedReportSet$Factory$create$1;->invoke()V
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
.field final synthetic this$0:Lat/bitfire/dav4jvm/property/SupportedReportSet$Factory$create$1;


# direct methods
.method constructor <init>(Lat/bitfire/dav4jvm/property/SupportedReportSet$Factory$create$1;)V
    .locals 0

    iput-object p1, p0, Lat/bitfire/dav4jvm/property/SupportedReportSet$Factory$create$1$1;->this$0:Lat/bitfire/dav4jvm/property/SupportedReportSet$Factory$create$1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lat/bitfire/dav4jvm/property/SupportedReportSet$Factory$create$1$1;->invoke()V

    sget-object v0, Lkotlin/u;->a:Lkotlin/u;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    iget-object v0, p0, Lat/bitfire/dav4jvm/property/SupportedReportSet$Factory$create$1$1;->this$0:Lat/bitfire/dav4jvm/property/SupportedReportSet$Factory$create$1;

    iget-object v0, v0, Lat/bitfire/dav4jvm/property/SupportedReportSet$Factory$create$1;->$parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 3
    iget-object v0, p0, Lat/bitfire/dav4jvm/property/SupportedReportSet$Factory$create$1$1;->this$0:Lat/bitfire/dav4jvm/property/SupportedReportSet$Factory$create$1;

    iget-object v0, v0, Lat/bitfire/dav4jvm/property/SupportedReportSet$Factory$create$1;->$parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lat/bitfire/dav4jvm/property/SupportedReportSet$Factory$create$1$1;->this$0:Lat/bitfire/dav4jvm/property/SupportedReportSet$Factory$create$1;

    iget-object v0, v0, Lat/bitfire/dav4jvm/property/SupportedReportSet$Factory$create$1;->$supported:Lat/bitfire/dav4jvm/property/SupportedReportSet;

    invoke-virtual {v0}, Lat/bitfire/dav4jvm/property/SupportedReportSet;->getReports()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lat/bitfire/dav4jvm/property/SupportedReportSet$Factory$create$1$1;->this$0:Lat/bitfire/dav4jvm/property/SupportedReportSet$Factory$create$1;

    iget-object v1, v1, Lat/bitfire/dav4jvm/property/SupportedReportSet$Factory$create$1;->$parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lat/bitfire/dav4jvm/property/SupportedReportSet$Factory$create$1$1;->this$0:Lat/bitfire/dav4jvm/property/SupportedReportSet$Factory$create$1;

    iget-object v0, v0, Lat/bitfire/dav4jvm/property/SupportedReportSet$Factory$create$1;->$parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lat/bitfire/dav4jvm/property/SupportedReportSet$Factory$create$1$1;->this$0:Lat/bitfire/dav4jvm/property/SupportedReportSet$Factory$create$1;

    iget-object v0, v0, Lat/bitfire/dav4jvm/property/SupportedReportSet$Factory$create$1;->$supported:Lat/bitfire/dav4jvm/property/SupportedReportSet;

    invoke-virtual {v0}, Lat/bitfire/dav4jvm/property/SupportedReportSet;->getReports()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lat/bitfire/dav4jvm/property/SupportedReportSet$Factory$create$1$1;->this$0:Lat/bitfire/dav4jvm/property/SupportedReportSet$Factory$create$1;

    iget-object v2, v2, Lat/bitfire/dav4jvm/property/SupportedReportSet$Factory$create$1;->$parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lat/bitfire/dav4jvm/property/SupportedReportSet$Factory$create$1$1;->this$0:Lat/bitfire/dav4jvm/property/SupportedReportSet$Factory$create$1;

    iget-object v2, v2, Lat/bitfire/dav4jvm/property/SupportedReportSet$Factory$create$1;->$parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

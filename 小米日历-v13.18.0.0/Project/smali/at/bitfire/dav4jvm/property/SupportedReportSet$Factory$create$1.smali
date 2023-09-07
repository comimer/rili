.class final Lat/bitfire/dav4jvm/property/SupportedReportSet$Factory$create$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SupportedReportSet.kt"

# interfaces
.implements Lw7/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/bitfire/dav4jvm/property/SupportedReportSet$Factory;->create(Lorg/xmlpull/v1/XmlPullParser;)Lat/bitfire/dav4jvm/property/SupportedReportSet;
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

.field final synthetic $supported:Lat/bitfire/dav4jvm/property/SupportedReportSet;


# direct methods
.method constructor <init>(Lorg/xmlpull/v1/XmlPullParser;Lat/bitfire/dav4jvm/property/SupportedReportSet;)V
    .locals 0

    iput-object p1, p0, Lat/bitfire/dav4jvm/property/SupportedReportSet$Factory$create$1;->$parser:Lorg/xmlpull/v1/XmlPullParser;

    iput-object p2, p0, Lat/bitfire/dav4jvm/property/SupportedReportSet$Factory$create$1;->$supported:Lat/bitfire/dav4jvm/property/SupportedReportSet;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lat/bitfire/dav4jvm/property/SupportedReportSet$Factory$create$1;->invoke()V

    sget-object v0, Lkotlin/u;->a:Lkotlin/u;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    sget-object v0, Lat/bitfire/dav4jvm/XmlUtils;->INSTANCE:Lat/bitfire/dav4jvm/XmlUtils;

    iget-object v1, p0, Lat/bitfire/dav4jvm/property/SupportedReportSet$Factory$create$1;->$parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v2, Lat/bitfire/dav4jvm/property/SupportedReportSet;->Companion:Lat/bitfire/dav4jvm/property/SupportedReportSet$Companion;

    invoke-virtual {v2}, Lat/bitfire/dav4jvm/property/SupportedReportSet$Companion;->getREPORT()Lat/bitfire/dav4jvm/Property$Name;

    move-result-object v2

    new-instance v3, Lat/bitfire/dav4jvm/property/SupportedReportSet$Factory$create$1$1;

    invoke-direct {v3, p0}, Lat/bitfire/dav4jvm/property/SupportedReportSet$Factory$create$1$1;-><init>(Lat/bitfire/dav4jvm/property/SupportedReportSet$Factory$create$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lat/bitfire/dav4jvm/XmlUtils;->processTag(Lorg/xmlpull/v1/XmlPullParser;Lat/bitfire/dav4jvm/Property$Name;Lw7/a;)V

    return-void
.end method

.class final Lat/bitfire/dav4jvm/DavCollection$reportChanges$1$3;
.super Lkotlin/jvm/internal/Lambda;
.source "DavCollection.kt"

# interfaces
.implements Lw7/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/bitfire/dav4jvm/DavCollection$reportChanges$1;->invoke(Lorg/xmlpull/v1/XmlSerializer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lw7/l<",
        "Lorg/xmlpull/v1/XmlSerializer;",
        "Lkotlin/u;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lorg/xmlpull/v1/XmlSerializer;",
        "Lkotlin/u;",
        "invoke",
        "(Lorg/xmlpull/v1/XmlSerializer;)V",
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
.field final synthetic this$0:Lat/bitfire/dav4jvm/DavCollection$reportChanges$1;


# direct methods
.method constructor <init>(Lat/bitfire/dav4jvm/DavCollection$reportChanges$1;)V
    .locals 0

    iput-object p1, p0, Lat/bitfire/dav4jvm/DavCollection$reportChanges$1$3;->this$0:Lat/bitfire/dav4jvm/DavCollection$reportChanges$1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p0, p1}, Lat/bitfire/dav4jvm/DavCollection$reportChanges$1$3;->invoke(Lorg/xmlpull/v1/XmlSerializer;)V

    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    return-object p1
.end method

.method public final invoke(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lat/bitfire/dav4jvm/XmlUtils;->INSTANCE:Lat/bitfire/dav4jvm/XmlUtils;

    sget-object v1, Lat/bitfire/dav4jvm/DavCollection;->Companion:Lat/bitfire/dav4jvm/DavCollection$Companion;

    invoke-virtual {v1}, Lat/bitfire/dav4jvm/DavCollection$Companion;->getNRESULTS()Lat/bitfire/dav4jvm/Property$Name;

    move-result-object v1

    new-instance v2, Lat/bitfire/dav4jvm/DavCollection$reportChanges$1$3$1;

    invoke-direct {v2, p0}, Lat/bitfire/dav4jvm/DavCollection$reportChanges$1$3$1;-><init>(Lat/bitfire/dav4jvm/DavCollection$reportChanges$1$3;)V

    invoke-virtual {v0, p1, v1, v2}, Lat/bitfire/dav4jvm/XmlUtils;->insertTag(Lorg/xmlpull/v1/XmlSerializer;Lat/bitfire/dav4jvm/Property$Name;Lw7/l;)V

    return-void
.end method

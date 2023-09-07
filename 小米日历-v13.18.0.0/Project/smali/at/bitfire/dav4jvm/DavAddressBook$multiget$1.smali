.class final Lat/bitfire/dav4jvm/DavAddressBook$multiget$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DavAddressBook.kt"

# interfaces
.implements Lw7/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/bitfire/dav4jvm/DavAddressBook;->multiget(Ljava/util/List;ZLw7/p;)Ljava/util/List;
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
.field final synthetic $urls:Ljava/util/List;

.field final synthetic $vCard4:Z


# direct methods
.method constructor <init>(ZLjava/util/List;)V
    .locals 0

    iput-boolean p1, p0, Lat/bitfire/dav4jvm/DavAddressBook$multiget$1;->$vCard4:Z

    iput-object p2, p0, Lat/bitfire/dav4jvm/DavAddressBook$multiget$1;->$urls:Ljava/util/List;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p0, p1}, Lat/bitfire/dav4jvm/DavAddressBook$multiget$1;->invoke(Lorg/xmlpull/v1/XmlSerializer;)V

    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    return-object p1
.end method

.method public final invoke(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lat/bitfire/dav4jvm/XmlUtils;->INSTANCE:Lat/bitfire/dav4jvm/XmlUtils;

    sget-object v1, Lat/bitfire/dav4jvm/DavResource;->Companion:Lat/bitfire/dav4jvm/DavResource$Companion;

    invoke-virtual {v1}, Lat/bitfire/dav4jvm/DavResource$Companion;->getPROP()Lat/bitfire/dav4jvm/Property$Name;

    move-result-object v1

    new-instance v2, Lat/bitfire/dav4jvm/DavAddressBook$multiget$1$1;

    invoke-direct {v2, p0}, Lat/bitfire/dav4jvm/DavAddressBook$multiget$1$1;-><init>(Lat/bitfire/dav4jvm/DavAddressBook$multiget$1;)V

    invoke-virtual {v0, p1, v1, v2}, Lat/bitfire/dav4jvm/XmlUtils;->insertTag(Lorg/xmlpull/v1/XmlSerializer;Lat/bitfire/dav4jvm/Property$Name;Lw7/l;)V

    .line 3
    iget-object v0, p0, Lat/bitfire/dav4jvm/DavAddressBook$multiget$1;->$urls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/t;

    .line 4
    sget-object v2, Lat/bitfire/dav4jvm/XmlUtils;->INSTANCE:Lat/bitfire/dav4jvm/XmlUtils;

    sget-object v3, Lat/bitfire/dav4jvm/DavResource;->Companion:Lat/bitfire/dav4jvm/DavResource$Companion;

    invoke-virtual {v3}, Lat/bitfire/dav4jvm/DavResource$Companion;->getHREF()Lat/bitfire/dav4jvm/Property$Name;

    move-result-object v3

    new-instance v4, Lat/bitfire/dav4jvm/DavAddressBook$multiget$1$2;

    invoke-direct {v4, v1}, Lat/bitfire/dav4jvm/DavAddressBook$multiget$1$2;-><init>(Lokhttp3/t;)V

    invoke-virtual {v2, p1, v3, v4}, Lat/bitfire/dav4jvm/XmlUtils;->insertTag(Lorg/xmlpull/v1/XmlSerializer;Lat/bitfire/dav4jvm/Property$Name;Lw7/l;)V

    goto :goto_0

    :cond_0
    return-void
.end method

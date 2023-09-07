.class final Lat/bitfire/dav4jvm/property/CurrentUserPrincipal$Factory$create$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CurrentUserPrincipal.kt"

# interfaces
.implements Lw7/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/bitfire/dav4jvm/property/CurrentUserPrincipal$Factory;->create(Lorg/xmlpull/v1/XmlPullParser;)Lat/bitfire/dav4jvm/property/CurrentUserPrincipal;
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
.field final synthetic $href:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $parser:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    iput-object p1, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrincipal$Factory$create$1;->$href:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrincipal$Factory$create$1;->$parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lat/bitfire/dav4jvm/property/CurrentUserPrincipal$Factory$create$1;->invoke()V

    sget-object v0, Lkotlin/u;->a:Lkotlin/u;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    iget-object v0, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrincipal$Factory$create$1;->$href:Lkotlin/jvm/internal/Ref$ObjectRef;

    sget-object v1, Lat/bitfire/dav4jvm/XmlUtils;->INSTANCE:Lat/bitfire/dav4jvm/XmlUtils;

    iget-object v2, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrincipal$Factory$create$1;->$parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {v1, v2}, Lat/bitfire/dav4jvm/XmlUtils;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method

.class final Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet$Factory$create$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CurrentUserPrivilegeSet.kt"

# interfaces
.implements Lw7/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet$Factory;->create(Lorg/xmlpull/v1/XmlPullParser;)Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;
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

.field final synthetic $privs:Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;


# direct methods
.method constructor <init>(Lorg/xmlpull/v1/XmlPullParser;Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;)V
    .locals 0

    iput-object p1, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet$Factory$create$1;->$parser:Lorg/xmlpull/v1/XmlPullParser;

    iput-object p2, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet$Factory$create$1;->$privs:Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet$Factory$create$1;->invoke()V

    sget-object v0, Lkotlin/u;->a:Lkotlin/u;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 2
    iget-object v0, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet$Factory$create$1;->$parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 3
    iget-object v1, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet$Factory$create$1;->$parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    :goto_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 4
    iget-object v2, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet$Factory$create$1;->$parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-eq v2, v0, :cond_0

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    :goto_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    .line 5
    iget-object v1, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet$Factory$create$1;->$parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    if-ne v1, v2, :cond_8

    .line 6
    sget-object v1, Lat/bitfire/dav4jvm/XmlUtils;->INSTANCE:Lat/bitfire/dav4jvm/XmlUtils;

    iget-object v2, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet$Factory$create$1;->$parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {v1, v2}, Lat/bitfire/dav4jvm/XmlUtils;->propertyName(Lorg/xmlpull/v1/XmlPullParser;)Lat/bitfire/dav4jvm/Property$Name;

    move-result-object v1

    .line 7
    sget-object v2, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->Companion:Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet$Companion;

    invoke-virtual {v2}, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet$Companion;->getREAD()Lat/bitfire/dav4jvm/Property$Name;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 8
    iget-object v1, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet$Factory$create$1;->$privs:Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;

    invoke-virtual {v1, v4}, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->setMayRead(Z)V

    goto/16 :goto_2

    .line 9
    :cond_2
    invoke-virtual {v2}, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet$Companion;->getWRITE()Lat/bitfire/dav4jvm/Property$Name;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 10
    iget-object v1, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet$Factory$create$1;->$privs:Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;

    invoke-virtual {v1, v4}, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->setMayBind(Z)V

    .line 11
    iget-object v1, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet$Factory$create$1;->$privs:Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;

    invoke-virtual {v1, v4}, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->setMayUnbind(Z)V

    .line 12
    iget-object v1, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet$Factory$create$1;->$privs:Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;

    invoke-virtual {v1, v4}, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->setMayWriteProperties(Z)V

    .line 13
    iget-object v1, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet$Factory$create$1;->$privs:Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;

    invoke-virtual {v1, v4}, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->setMayWriteContent(Z)V

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual {v2}, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet$Companion;->getWRITE_PROPERTIES()Lat/bitfire/dav4jvm/Property$Name;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 15
    iget-object v1, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet$Factory$create$1;->$privs:Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;

    invoke-virtual {v1, v4}, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->setMayWriteProperties(Z)V

    goto :goto_2

    .line 16
    :cond_4
    invoke-virtual {v2}, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet$Companion;->getWRITE_CONTENT()Lat/bitfire/dav4jvm/Property$Name;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 17
    iget-object v1, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet$Factory$create$1;->$privs:Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;

    invoke-virtual {v1, v4}, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->setMayWriteContent(Z)V

    goto :goto_2

    .line 18
    :cond_5
    invoke-virtual {v2}, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet$Companion;->getBIND()Lat/bitfire/dav4jvm/Property$Name;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 19
    iget-object v1, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet$Factory$create$1;->$privs:Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;

    invoke-virtual {v1, v4}, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->setMayBind(Z)V

    goto :goto_2

    .line 20
    :cond_6
    invoke-virtual {v2}, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet$Companion;->getUNBIND()Lat/bitfire/dav4jvm/Property$Name;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 21
    iget-object v1, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet$Factory$create$1;->$privs:Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;

    invoke-virtual {v1, v4}, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->setMayUnbind(Z)V

    goto :goto_2

    .line 22
    :cond_7
    invoke-virtual {v2}, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet$Companion;->getALL()Lat/bitfire/dav4jvm/Property$Name;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 23
    iget-object v1, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet$Factory$create$1;->$privs:Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;

    invoke-virtual {v1, v4}, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->setMayRead(Z)V

    .line 24
    iget-object v1, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet$Factory$create$1;->$privs:Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;

    invoke-virtual {v1, v4}, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->setMayBind(Z)V

    .line 25
    iget-object v1, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet$Factory$create$1;->$privs:Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;

    invoke-virtual {v1, v4}, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->setMayUnbind(Z)V

    .line 26
    iget-object v1, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet$Factory$create$1;->$privs:Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;

    invoke-virtual {v1, v4}, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->setMayWriteProperties(Z)V

    .line 27
    iget-object v1, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet$Factory$create$1;->$privs:Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;

    invoke-virtual {v1, v4}, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->setMayWriteContent(Z)V

    .line 28
    :cond_8
    :goto_2
    iget-object v1, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet$Factory$create$1;->$parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto/16 :goto_0
.end method

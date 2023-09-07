.class final Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DavCalendar.kt"

# interfaces
.implements Lw7/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/bitfire/dav4jvm/DavCalendar;->calendarQuery(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lw7/p;)Ljava/util/List;
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
.field final synthetic $component:Ljava/lang/String;

.field final synthetic $end:Ljava/util/Date;

.field final synthetic $start:Ljava/util/Date;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1;->$component:Ljava/lang/String;

    iput-object p2, p0, Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1;->$start:Ljava/util/Date;

    iput-object p3, p0, Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1;->$end:Ljava/util/Date;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p0, p1}, Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1;->invoke(Lorg/xmlpull/v1/XmlSerializer;)V

    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    return-object p1
.end method

.method public final invoke(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lat/bitfire/dav4jvm/XmlUtils;->INSTANCE:Lat/bitfire/dav4jvm/XmlUtils;

    sget-object v1, Lat/bitfire/dav4jvm/DavResource;->Companion:Lat/bitfire/dav4jvm/DavResource$Companion;

    invoke-virtual {v1}, Lat/bitfire/dav4jvm/DavResource$Companion;->getPROP()Lat/bitfire/dav4jvm/Property$Name;

    move-result-object v1

    sget-object v2, Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1$1;->INSTANCE:Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1$1;

    invoke-virtual {v0, p1, v1, v2}, Lat/bitfire/dav4jvm/XmlUtils;->insertTag(Lorg/xmlpull/v1/XmlSerializer;Lat/bitfire/dav4jvm/Property$Name;Lw7/l;)V

    .line 3
    sget-object v1, Lat/bitfire/dav4jvm/DavCalendar;->Companion:Lat/bitfire/dav4jvm/DavCalendar$Companion;

    invoke-virtual {v1}, Lat/bitfire/dav4jvm/DavCalendar$Companion;->getFILTER()Lat/bitfire/dav4jvm/Property$Name;

    move-result-object v1

    new-instance v2, Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1$2;

    invoke-direct {v2, p0}, Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1$2;-><init>(Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1;)V

    invoke-virtual {v0, p1, v1, v2}, Lat/bitfire/dav4jvm/XmlUtils;->insertTag(Lorg/xmlpull/v1/XmlSerializer;Lat/bitfire/dav4jvm/Property$Name;Lw7/l;)V

    return-void
.end method

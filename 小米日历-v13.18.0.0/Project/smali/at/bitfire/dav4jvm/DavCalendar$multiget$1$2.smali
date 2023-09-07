.class final Lat/bitfire/dav4jvm/DavCalendar$multiget$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DavCalendar.kt"

# interfaces
.implements Lw7/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/bitfire/dav4jvm/DavCalendar$multiget$1;->invoke(Lorg/xmlpull/v1/XmlSerializer;)V
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
.field final synthetic $url:Lokhttp3/t;

.field final synthetic this$0:Lat/bitfire/dav4jvm/DavCalendar$multiget$1;


# direct methods
.method constructor <init>(Lat/bitfire/dav4jvm/DavCalendar$multiget$1;Lokhttp3/t;)V
    .locals 0

    iput-object p1, p0, Lat/bitfire/dav4jvm/DavCalendar$multiget$1$2;->this$0:Lat/bitfire/dav4jvm/DavCalendar$multiget$1;

    iput-object p2, p0, Lat/bitfire/dav4jvm/DavCalendar$multiget$1$2;->$url:Lokhttp3/t;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p0, p1}, Lat/bitfire/dav4jvm/DavCalendar$multiget$1$2;->invoke(Lorg/xmlpull/v1/XmlSerializer;)V

    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    return-object p1
.end method

.method public final invoke(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 1

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lat/bitfire/dav4jvm/DavCalendar$multiget$1$2;->this$0:Lat/bitfire/dav4jvm/DavCalendar$multiget$1;

    iget-object p1, p1, Lat/bitfire/dav4jvm/DavCalendar$multiget$1;->$serializer:Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lat/bitfire/dav4jvm/DavCalendar$multiget$1$2;->$url:Lokhttp3/t;

    invoke-virtual {v0}, Lokhttp3/t;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

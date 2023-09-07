.class final Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DavCalendar.kt"

# interfaces
.implements Lw7/a;


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
        "Lw7/a<",
        "Lokhttp3/a0;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lokhttp3/a0;",
        "invoke",
        "()Lokhttp3/a0;",
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
.field final synthetic $writer:Ljava/io/StringWriter;

.field final synthetic this$0:Lat/bitfire/dav4jvm/DavCalendar;


# direct methods
.method constructor <init>(Lat/bitfire/dav4jvm/DavCalendar;Ljava/io/StringWriter;)V
    .locals 0

    iput-object p1, p0, Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$2;->this$0:Lat/bitfire/dav4jvm/DavCalendar;

    iput-object p2, p0, Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$2;->$writer:Ljava/io/StringWriter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$2;->invoke()Lokhttp3/a0;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lokhttp3/a0;
    .locals 5

    .line 2
    iget-object v0, p0, Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$2;->this$0:Lat/bitfire/dav4jvm/DavCalendar;

    invoke-virtual {v0}, Lat/bitfire/dav4jvm/DavResource;->getHttpClient()Lokhttp3/x;

    move-result-object v0

    new-instance v1, Lokhttp3/y$a;

    invoke-direct {v1}, Lokhttp3/y$a;-><init>()V

    .line 3
    iget-object v2, p0, Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$2;->this$0:Lat/bitfire/dav4jvm/DavCalendar;

    invoke-virtual {v2}, Lat/bitfire/dav4jvm/DavResource;->getLocation()Lokhttp3/t;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/y$a;->m(Lokhttp3/t;)Lokhttp3/y$a;

    move-result-object v1

    .line 4
    sget-object v2, Lokhttp3/z;->a:Lokhttp3/z$a;

    iget-object v3, p0, Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$2;->$writer:Ljava/io/StringWriter;

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "writer.toString()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lat/bitfire/dav4jvm/DavResource;->Companion:Lat/bitfire/dav4jvm/DavResource$Companion;

    invoke-virtual {v4}, Lat/bitfire/dav4jvm/DavResource$Companion;->getMIME_XML()Lokhttp3/v;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lokhttp3/z$a;->a(Ljava/lang/String;Lokhttp3/v;)Lokhttp3/z;

    move-result-object v2

    const-string v3, "REPORT"

    invoke-virtual {v1, v3, v2}, Lokhttp3/y$a;->h(Ljava/lang/String;Lokhttp3/z;)Lokhttp3/y$a;

    move-result-object v1

    const-string v2, "Depth"

    const-string v3, "1"

    .line 5
    invoke-virtual {v1, v2, v3}, Lokhttp3/y$a;->f(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/y$a;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lokhttp3/y$a;->b()Lokhttp3/y;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lokhttp3/x;->a(Lokhttp3/y;)Lokhttp3/e;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Lokhttp3/e;->s()Lokhttp3/a0;

    move-result-object v0

    return-object v0
.end method

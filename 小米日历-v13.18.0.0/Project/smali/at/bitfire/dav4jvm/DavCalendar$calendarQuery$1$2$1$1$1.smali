.class final Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1$2$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DavCalendar.kt"

# interfaces
.implements Lw7/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1$2$1$1;->invoke(Lorg/xmlpull/v1/XmlSerializer;)V
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
.field final synthetic this$0:Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1$2$1$1;


# direct methods
.method constructor <init>(Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1$2$1$1;)V
    .locals 0

    iput-object p1, p0, Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1$2$1$1$1;->this$0:Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1$2$1$1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p0, p1}, Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1$2$1$1$1;->invoke(Lorg/xmlpull/v1/XmlSerializer;)V

    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    return-object p1
.end method

.method public final invoke(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1$2$1$1$1;->this$0:Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1$2$1$1;

    iget-object v0, v0, Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1$2$1$1;->this$0:Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1$2$1;

    iget-object v0, v0, Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1$2$1;->this$0:Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1$2;

    iget-object v0, v0, Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1$2;->this$0:Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1;

    iget-object v0, v0, Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1;->$start:Ljava/util/Date;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lat/bitfire/dav4jvm/DavCalendar;->access$getTimeFormatUTC$cp()Ljava/text/SimpleDateFormat;

    move-result-object v0

    iget-object v2, p0, Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1$2$1$1$1;->this$0:Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1$2$1$1;

    iget-object v2, v2, Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1$2$1$1;->this$0:Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1$2$1;

    iget-object v2, v2, Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1$2$1;->this$0:Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1$2;

    iget-object v2, v2, Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1$2;->this$0:Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1;

    iget-object v2, v2, Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1;->$start:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "start"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4
    :cond_0
    iget-object v0, p0, Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1$2$1$1$1;->this$0:Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1$2$1$1;

    iget-object v0, v0, Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1$2$1$1;->this$0:Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1$2$1;

    iget-object v0, v0, Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1$2$1;->this$0:Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1$2;

    iget-object v0, v0, Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1$2;->this$0:Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1;

    iget-object v0, v0, Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1;->$end:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lat/bitfire/dav4jvm/DavCalendar;->access$getTimeFormatUTC$cp()Ljava/text/SimpleDateFormat;

    move-result-object v0

    iget-object v2, p0, Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1$2$1$1$1;->this$0:Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1$2$1$1;

    iget-object v2, v2, Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1$2$1$1;->this$0:Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1$2$1;

    iget-object v2, v2, Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1$2$1;->this$0:Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1$2;

    iget-object v2, v2, Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1$2;->this$0:Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1;

    iget-object v2, v2, Lat/bitfire/dav4jvm/DavCalendar$calendarQuery$1;->$end:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "end"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    return-void
.end method

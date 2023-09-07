.class final Lat/bitfire/dav4jvm/DavCalendar$multiget$1$1;
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


# static fields
.field public static final INSTANCE:Lat/bitfire/dav4jvm/DavCalendar$multiget$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lat/bitfire/dav4jvm/DavCalendar$multiget$1$1;

    invoke-direct {v0}, Lat/bitfire/dav4jvm/DavCalendar$multiget$1$1;-><init>()V

    sput-object v0, Lat/bitfire/dav4jvm/DavCalendar$multiget$1$1;->INSTANCE:Lat/bitfire/dav4jvm/DavCalendar$multiget$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p0, p1}, Lat/bitfire/dav4jvm/DavCalendar$multiget$1$1;->invoke(Lorg/xmlpull/v1/XmlSerializer;)V

    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    return-object p1
.end method

.method public final invoke(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 7

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lat/bitfire/dav4jvm/XmlUtils;->INSTANCE:Lat/bitfire/dav4jvm/XmlUtils;

    sget-object v3, Lat/bitfire/dav4jvm/property/GetContentType;->NAME:Lat/bitfire/dav4jvm/Property$Name;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lat/bitfire/dav4jvm/XmlUtils;->insertTag$default(Lat/bitfire/dav4jvm/XmlUtils;Lorg/xmlpull/v1/XmlSerializer;Lat/bitfire/dav4jvm/Property$Name;Lw7/l;ILjava/lang/Object;)V

    .line 3
    sget-object v3, Lat/bitfire/dav4jvm/property/GetETag;->NAME:Lat/bitfire/dav4jvm/Property$Name;

    invoke-static/range {v1 .. v6}, Lat/bitfire/dav4jvm/XmlUtils;->insertTag$default(Lat/bitfire/dav4jvm/XmlUtils;Lorg/xmlpull/v1/XmlSerializer;Lat/bitfire/dav4jvm/Property$Name;Lw7/l;ILjava/lang/Object;)V

    .line 4
    sget-object v3, Lat/bitfire/dav4jvm/property/ScheduleTag;->NAME:Lat/bitfire/dav4jvm/Property$Name;

    invoke-static/range {v1 .. v6}, Lat/bitfire/dav4jvm/XmlUtils;->insertTag$default(Lat/bitfire/dav4jvm/XmlUtils;Lorg/xmlpull/v1/XmlSerializer;Lat/bitfire/dav4jvm/Property$Name;Lw7/l;ILjava/lang/Object;)V

    .line 5
    sget-object v3, Lat/bitfire/dav4jvm/property/CalendarData;->NAME:Lat/bitfire/dav4jvm/Property$Name;

    invoke-static/range {v1 .. v6}, Lat/bitfire/dav4jvm/XmlUtils;->insertTag$default(Lat/bitfire/dav4jvm/XmlUtils;Lorg/xmlpull/v1/XmlSerializer;Lat/bitfire/dav4jvm/Property$Name;Lw7/l;ILjava/lang/Object;)V

    return-void
.end method

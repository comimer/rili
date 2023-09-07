.class public Lat/bitfire/ical4android/ICalendar;
.super Ljava/lang/Object;
.source "ICalendar.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/bitfire/ical4android/ICalendar$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\n\u0008\u0016\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0007\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0008\u0010\u0003\u001a\u00020\u0002H\u0004J\u0008\u0010\u0005\u001a\u00020\u0004H\u0016R$\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR$\u0010\r\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0016"
    }
    d2 = {
        "Lat/bitfire/ical4android/ICalendar;",
        "",
        "Lkotlin/u;",
        "generateUID",
        "",
        "toString",
        "uid",
        "Ljava/lang/String;",
        "getUid",
        "()Ljava/lang/String;",
        "setUid",
        "(Ljava/lang/String;)V",
        "",
        "sequence",
        "Ljava/lang/Integer;",
        "getSequence",
        "()Ljava/lang/Integer;",
        "setSequence",
        "(Ljava/lang/Integer;)V",
        "<init>",
        "()V",
        "Companion",
        "ical4android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final CALENDAR_NAME:Ljava/lang/String; = "X-WR-CALNAME"

.field public static final Companion:Lat/bitfire/ical4android/ICalendar$Companion;

.field private static prodId:Lnet/fortuna/ical4j/model/property/ProdId;


# instance fields
.field private sequence:Ljava/lang/Integer;

.field private uid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lnet/fortuna/ical4j/data/CalendarParserImpl;

    .line 2
    .line 3
    new-instance v1, Lat/bitfire/ical4android/ICalendar$Companion;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v2}, Lat/bitfire/ical4android/ICalendar$Companion;-><init>(Lkotlin/jvm/internal/o;)V

    .line 7
    .line 8
    .line 9
    sput-object v1, Lat/bitfire/ical4android/ICalendar;->Companion:Lat/bitfire/ical4android/ICalendar$Companion;

    .line 10
    .line 11
    invoke-static {v0}, Lrc/c;->i(Ljava/lang/Class;)Lrc/b;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 25
    .line 26
    .line 27
    const-class v0, Lnet/fortuna/ical4j/model/Recur;

    .line 28
    .line 29
    invoke-static {v0}, Lrc/c;->i(Ljava/lang/Class;)Lrc/b;

    .line 30
    .line 31
    .line 32
    const-class v0, Lnet/fortuna/ical4j/model/Recur;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 43
    .line 44
    .line 45
    const-class v0, Lnet/fortuna/ical4j/data/FoldingWriter;

    .line 46
    .line 47
    invoke-static {v0}, Lrc/c;->i(Ljava/lang/Class;)Lrc/b;

    .line 48
    .line 49
    .line 50
    const-class v0, Lnet/fortuna/ical4j/data/FoldingWriter;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 61
    .line 62
    .line 63
    new-instance v0, Lnet/fortuna/ical4j/model/property/ProdId;

    .line 64
    .line 65
    const-string v1, "+//IDN bitfire.at//ical4android"

    .line 66
    .line 67
    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/property/ProdId;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    sput-object v0, Lat/bitfire/ical4android/ICalendar;->prodId:Lnet/fortuna/ical4j/model/property/ProdId;

    .line 71
    .line 72
    return-void
    .line 73
    .line 74
    .line 75
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getProdId$cp()Lnet/fortuna/ical4j/model/property/ProdId;
    .locals 1

    .line 1
    sget-object v0, Lat/bitfire/ical4android/ICalendar;->prodId:Lnet/fortuna/ical4j/model/property/ProdId;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public static final synthetic access$setProdId$cp(Lnet/fortuna/ical4j/model/property/ProdId;)V
    .locals 0

    .line 1
    sput-object p0, Lat/bitfire/ical4android/ICalendar;->prodId:Lnet/fortuna/ical4j/model/property/ProdId;

    .line 2
    .line 3
    return-void
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method


# virtual methods
.method protected final generateUID()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lat/bitfire/ical4android/ICalendar;->uid:Ljava/lang/String;

    .line 10
    .line 11
    return-void
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final getSequence()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/ICalendar;->sequence:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/ICalendar;->uid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final setSequence(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lat/bitfire/ical4android/ICalendar;->sequence:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final setUid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lat/bitfire/ical4android/ICalendar;->uid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lat/bitfire/ical4android/MiscUtils;->INSTANCE:Lat/bitfire/ical4android/MiscUtils;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lat/bitfire/ical4android/MiscUtils;->reflectionToString(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.class public final Lat/bitfire/dav4jvm/property/CalendarColor;
.super Ljava/lang/Object;
.source "CalendarColor.kt"

# interfaces
.implements Lat/bitfire/dav4jvm/Property;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/bitfire/dav4jvm/property/CalendarColor$Factory;,
        Lat/bitfire/dav4jvm/property/CalendarColor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 \u00102\u00020\u0001:\u0002\u0010\u0011B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u00d6\u0003J\t\u0010\r\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u000e\u001a\u00020\u000fH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0012"
    }
    d2 = {
        "Lat/bitfire/dav4jvm/property/CalendarColor;",
        "Lat/bitfire/dav4jvm/Property;",
        "color",
        "",
        "(I)V",
        "getColor",
        "()I",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "Companion",
        "Factory",
        "build"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lat/bitfire/dav4jvm/property/CalendarColor$Companion;

.field public static final NAME:Lat/bitfire/dav4jvm/Property$Name;

.field private static final PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final color:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lat/bitfire/dav4jvm/property/CalendarColor$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lat/bitfire/dav4jvm/property/CalendarColor$Companion;-><init>(Lkotlin/jvm/internal/o;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lat/bitfire/dav4jvm/property/CalendarColor;->Companion:Lat/bitfire/dav4jvm/property/CalendarColor$Companion;

    .line 8
    .line 9
    new-instance v0, Lat/bitfire/dav4jvm/Property$Name;

    .line 10
    .line 11
    const-string v1, "http://apple.com/ns/ical/"

    .line 12
    .line 13
    const-string v2, "calendar-color"

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Lat/bitfire/dav4jvm/Property$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lat/bitfire/dav4jvm/property/CalendarColor;->NAME:Lat/bitfire/dav4jvm/Property$Name;

    .line 19
    .line 20
    const-string v0, "#?(\\p{XDigit}{6})(\\p{XDigit}{2})?"

    .line 21
    .line 22
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 29
    .line 30
    .line 31
    :cond_0
    sput-object v0, Lat/bitfire/dav4jvm/property/CalendarColor;->PATTERN:Ljava/util/regex/Pattern;

    .line 32
    .line 33
    return-void
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lat/bitfire/dav4jvm/property/CalendarColor;->color:I

    .line 5
    .line 6
    return-void
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

.method public static final synthetic access$getPATTERN$cp()Ljava/util/regex/Pattern;
    .locals 1

    .line 1
    sget-object v0, Lat/bitfire/dav4jvm/property/CalendarColor;->PATTERN:Ljava/util/regex/Pattern;

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

.method public static synthetic copy$default(Lat/bitfire/dav4jvm/property/CalendarColor;IILjava/lang/Object;)Lat/bitfire/dav4jvm/property/CalendarColor;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Lat/bitfire/dav4jvm/property/CalendarColor;->color:I

    :cond_0
    invoke-virtual {p0, p1}, Lat/bitfire/dav4jvm/property/CalendarColor;->copy(I)Lat/bitfire/dav4jvm/property/CalendarColor;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lat/bitfire/dav4jvm/property/CalendarColor;->color:I

    return v0
.end method

.method public final copy(I)Lat/bitfire/dav4jvm/property/CalendarColor;
    .locals 1

    new-instance v0, Lat/bitfire/dav4jvm/property/CalendarColor;

    invoke-direct {v0, p1}, Lat/bitfire/dav4jvm/property/CalendarColor;-><init>(I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lat/bitfire/dav4jvm/property/CalendarColor;

    if-eqz v0, :cond_0

    check-cast p1, Lat/bitfire/dav4jvm/property/CalendarColor;

    iget v0, p0, Lat/bitfire/dav4jvm/property/CalendarColor;->color:I

    iget p1, p1, Lat/bitfire/dav4jvm/property/CalendarColor;->color:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getColor()I
    .locals 1

    .line 1
    iget v0, p0, Lat/bitfire/dav4jvm/property/CalendarColor;->color:I

    .line 2
    .line 3
    return v0
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

.method public hashCode()I
    .locals 1

    iget v0, p0, Lat/bitfire/dav4jvm/property/CalendarColor;->color:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CalendarColor(color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lat/bitfire/dav4jvm/property/CalendarColor;->color:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

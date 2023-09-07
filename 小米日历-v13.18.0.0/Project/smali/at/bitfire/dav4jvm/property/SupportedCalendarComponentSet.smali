.class public final Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;
.super Ljava/lang/Object;
.source "SupportedCalendarComponentSet.kt"

# interfaces
.implements Lat/bitfire/dav4jvm/Property;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet$Factory;,
        Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 \u001a2\u00020\u0001:\u0002\u001a\u001bB\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\'\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00032\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0008\"\u0004\u0008\u000c\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0008\"\u0004\u0008\u000e\u0010\n\u00a8\u0006\u001c"
    }
    d2 = {
        "Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;",
        "Lat/bitfire/dav4jvm/Property;",
        "supportsEvents",
        "",
        "supportsTasks",
        "supportsJournal",
        "(ZZZ)V",
        "getSupportsEvents",
        "()Z",
        "setSupportsEvents",
        "(Z)V",
        "getSupportsJournal",
        "setSupportsJournal",
        "getSupportsTasks",
        "setSupportsTasks",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
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
.field private static final ALLCOMP:Lat/bitfire/dav4jvm/Property$Name;

.field private static final COMP:Lat/bitfire/dav4jvm/Property$Name;

.field public static final Companion:Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet$Companion;

.field public static final NAME:Lat/bitfire/dav4jvm/Property$Name;


# instance fields
.field private supportsEvents:Z

.field private supportsJournal:Z

.field private supportsTasks:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet$Companion;-><init>(Lkotlin/jvm/internal/o;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;->Companion:Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet$Companion;

    .line 8
    .line 9
    new-instance v0, Lat/bitfire/dav4jvm/Property$Name;

    .line 10
    .line 11
    const-string v1, "urn:ietf:params:xml:ns:caldav"

    .line 12
    .line 13
    const-string v2, "supported-calendar-component-set"

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Lat/bitfire/dav4jvm/Property$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;->NAME:Lat/bitfire/dav4jvm/Property$Name;

    .line 19
    .line 20
    new-instance v0, Lat/bitfire/dav4jvm/Property$Name;

    .line 21
    .line 22
    const-string v2, "allcomp"

    .line 23
    .line 24
    invoke-direct {v0, v1, v2}, Lat/bitfire/dav4jvm/Property$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;->ALLCOMP:Lat/bitfire/dav4jvm/Property$Name;

    .line 28
    .line 29
    new-instance v0, Lat/bitfire/dav4jvm/Property$Name;

    .line 30
    .line 31
    const-string v2, "comp"

    .line 32
    .line 33
    invoke-direct {v0, v1, v2}, Lat/bitfire/dav4jvm/Property$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;->COMP:Lat/bitfire/dav4jvm/Property$Name;

    .line 37
    .line 38
    return-void
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

.method public constructor <init>(ZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;->supportsEvents:Z

    .line 5
    .line 6
    iput-boolean p2, p0, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;->supportsTasks:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;->supportsJournal:Z

    .line 9
    .line 10
    return-void
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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
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
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
.end method

.method public static final synthetic access$getALLCOMP$cp()Lat/bitfire/dav4jvm/Property$Name;
    .locals 1

    .line 1
    sget-object v0, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;->ALLCOMP:Lat/bitfire/dav4jvm/Property$Name;

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

.method public static final synthetic access$getCOMP$cp()Lat/bitfire/dav4jvm/Property$Name;
    .locals 1

    .line 1
    sget-object v0, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;->COMP:Lat/bitfire/dav4jvm/Property$Name;

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

.method public static synthetic copy$default(Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;ZZZILjava/lang/Object;)Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-boolean p1, p0, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;->supportsEvents:Z

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-boolean p2, p0, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;->supportsTasks:Z

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;->supportsJournal:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;->copy(ZZZ)Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;->supportsEvents:Z

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;->supportsTasks:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;->supportsJournal:Z

    return v0
.end method

.method public final copy(ZZZ)Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;
    .locals 1

    new-instance v0, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;

    invoke-direct {v0, p1, p2, p3}, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;-><init>(ZZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;

    if-eqz v0, :cond_0

    check-cast p1, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;

    iget-boolean v0, p0, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;->supportsEvents:Z

    iget-boolean v1, p1, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;->supportsEvents:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;->supportsTasks:Z

    iget-boolean v1, p1, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;->supportsTasks:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;->supportsJournal:Z

    iget-boolean p1, p1, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;->supportsJournal:Z

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

.method public final getSupportsEvents()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;->supportsEvents:Z

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

.method public final getSupportsJournal()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;->supportsJournal:Z

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

.method public final getSupportsTasks()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;->supportsTasks:Z

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
    .locals 3

    iget-boolean v0, p0, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;->supportsEvents:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;->supportsTasks:Z

    if-eqz v2, :cond_1

    move v2, v1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;->supportsJournal:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final setSupportsEvents(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;->supportsEvents:Z

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

.method public final setSupportsJournal(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;->supportsJournal:Z

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

.method public final setSupportsTasks(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;->supportsTasks:Z

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
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SupportedCalendarComponentSet(supportsEvents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;->supportsEvents:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", supportsTasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;->supportsTasks:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", supportsJournal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;->supportsJournal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

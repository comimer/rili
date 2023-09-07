.class public final Lat/bitfire/dav4jvm/property/AddMember;
.super Ljava/lang/Object;
.source "AddMember.kt"

# interfaces
.implements Lat/bitfire/dav4jvm/Property;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/bitfire/dav4jvm/property/AddMember$Factory;,
        Lat/bitfire/dav4jvm/property/AddMember$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u0000 \u00102\u00020\u0001:\u0002\u0010\u0011B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0015\u0010\u0008\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u00d6\u0003J\t\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\t\u0010\u000f\u001a\u00020\u0003H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0012"
    }
    d2 = {
        "Lat/bitfire/dav4jvm/property/AddMember;",
        "Lat/bitfire/dav4jvm/Property;",
        "href",
        "",
        "(Ljava/lang/String;)V",
        "getHref",
        "()Ljava/lang/String;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
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
.field public static final Companion:Lat/bitfire/dav4jvm/property/AddMember$Companion;

.field public static final NAME:Lat/bitfire/dav4jvm/Property$Name;


# instance fields
.field private final href:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lat/bitfire/dav4jvm/property/AddMember$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lat/bitfire/dav4jvm/property/AddMember$Companion;-><init>(Lkotlin/jvm/internal/o;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lat/bitfire/dav4jvm/property/AddMember;->Companion:Lat/bitfire/dav4jvm/property/AddMember$Companion;

    .line 8
    .line 9
    new-instance v0, Lat/bitfire/dav4jvm/Property$Name;

    .line 10
    .line 11
    const-string v1, "DAV:"

    .line 12
    .line 13
    const-string v2, "add-member"

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Lat/bitfire/dav4jvm/Property$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lat/bitfire/dav4jvm/property/AddMember;->NAME:Lat/bitfire/dav4jvm/Property$Name;

    .line 19
    .line 20
    return-void
    .line 21
    .line 22
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lat/bitfire/dav4jvm/property/AddMember;->href:Ljava/lang/String;

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

.method public static synthetic copy$default(Lat/bitfire/dav4jvm/property/AddMember;Ljava/lang/String;ILjava/lang/Object;)Lat/bitfire/dav4jvm/property/AddMember;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lat/bitfire/dav4jvm/property/AddMember;->href:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1}, Lat/bitfire/dav4jvm/property/AddMember;->copy(Ljava/lang/String;)Lat/bitfire/dav4jvm/property/AddMember;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lat/bitfire/dav4jvm/property/AddMember;->href:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;)Lat/bitfire/dav4jvm/property/AddMember;
    .locals 1

    new-instance v0, Lat/bitfire/dav4jvm/property/AddMember;

    invoke-direct {v0, p1}, Lat/bitfire/dav4jvm/property/AddMember;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lat/bitfire/dav4jvm/property/AddMember;

    if-eqz v0, :cond_0

    check-cast p1, Lat/bitfire/dav4jvm/property/AddMember;

    iget-object v0, p0, Lat/bitfire/dav4jvm/property/AddMember;->href:Ljava/lang/String;

    iget-object p1, p1, Lat/bitfire/dav4jvm/property/AddMember;->href:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getHref()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/dav4jvm/property/AddMember;->href:Ljava/lang/String;

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

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lat/bitfire/dav4jvm/property/AddMember;->href:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AddMember(href="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lat/bitfire/dav4jvm/property/AddMember;->href:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Lat/bitfire/dav4jvm/Error;
.super Ljava/lang/Object;
.source "Error.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/bitfire/dav4jvm/Error$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u0000 \r2\u00020\u0001:\u0001\rB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0013\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0096\u0002J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000e"
    }
    d2 = {
        "Lat/bitfire/dav4jvm/Error;",
        "Ljava/io/Serializable;",
        "name",
        "Lat/bitfire/dav4jvm/Property$Name;",
        "(Lat/bitfire/dav4jvm/Property$Name;)V",
        "getName",
        "()Lat/bitfire/dav4jvm/Property$Name;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "Companion",
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
.field public static final Companion:Lat/bitfire/dav4jvm/Error$Companion;

.field private static final NAME:Lat/bitfire/dav4jvm/Property$Name;

.field private static final NEED_PRIVILEGES:Lat/bitfire/dav4jvm/Error;

.field private static final VALID_SYNC_TOKEN:Lat/bitfire/dav4jvm/Error;


# instance fields
.field private final name:Lat/bitfire/dav4jvm/Property$Name;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lat/bitfire/dav4jvm/Error$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lat/bitfire/dav4jvm/Error$Companion;-><init>(Lkotlin/jvm/internal/o;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lat/bitfire/dav4jvm/Error;->Companion:Lat/bitfire/dav4jvm/Error$Companion;

    .line 8
    .line 9
    new-instance v0, Lat/bitfire/dav4jvm/Property$Name;

    .line 10
    .line 11
    const-string v1, "DAV:"

    .line 12
    .line 13
    const-string v2, "error"

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Lat/bitfire/dav4jvm/Property$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lat/bitfire/dav4jvm/Error;->NAME:Lat/bitfire/dav4jvm/Property$Name;

    .line 19
    .line 20
    new-instance v0, Lat/bitfire/dav4jvm/Error;

    .line 21
    .line 22
    new-instance v2, Lat/bitfire/dav4jvm/Property$Name;

    .line 23
    .line 24
    const-string v3, "need-privileges"

    .line 25
    .line 26
    invoke-direct {v2, v1, v3}, Lat/bitfire/dav4jvm/Property$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v2}, Lat/bitfire/dav4jvm/Error;-><init>(Lat/bitfire/dav4jvm/Property$Name;)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lat/bitfire/dav4jvm/Error;->NEED_PRIVILEGES:Lat/bitfire/dav4jvm/Error;

    .line 33
    .line 34
    new-instance v0, Lat/bitfire/dav4jvm/Error;

    .line 35
    .line 36
    new-instance v2, Lat/bitfire/dav4jvm/Property$Name;

    .line 37
    .line 38
    const-string v3, "valid-sync-token"

    .line 39
    .line 40
    invoke-direct {v2, v1, v3}, Lat/bitfire/dav4jvm/Property$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v2}, Lat/bitfire/dav4jvm/Error;-><init>(Lat/bitfire/dav4jvm/Property$Name;)V

    .line 44
    .line 45
    .line 46
    sput-object v0, Lat/bitfire/dav4jvm/Error;->VALID_SYNC_TOKEN:Lat/bitfire/dav4jvm/Error;

    .line 47
    .line 48
    return-void
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

.method public constructor <init>(Lat/bitfire/dav4jvm/Property$Name;)V
    .locals 1

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lat/bitfire/dav4jvm/Error;->name:Lat/bitfire/dav4jvm/Property$Name;

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

.method public static final synthetic access$getNAME$cp()Lat/bitfire/dav4jvm/Property$Name;
    .locals 1

    .line 1
    sget-object v0, Lat/bitfire/dav4jvm/Error;->NAME:Lat/bitfire/dav4jvm/Property$Name;

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

.method public static final synthetic access$getNEED_PRIVILEGES$cp()Lat/bitfire/dav4jvm/Error;
    .locals 1

    .line 1
    sget-object v0, Lat/bitfire/dav4jvm/Error;->NEED_PRIVILEGES:Lat/bitfire/dav4jvm/Error;

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

.method public static final synthetic access$getVALID_SYNC_TOKEN$cp()Lat/bitfire/dav4jvm/Error;
    .locals 1

    .line 1
    sget-object v0, Lat/bitfire/dav4jvm/Error;->VALID_SYNC_TOKEN:Lat/bitfire/dav4jvm/Error;

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


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lat/bitfire/dav4jvm/Error;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lat/bitfire/dav4jvm/Error;

    .line 6
    .line 7
    iget-object p1, p1, Lat/bitfire/dav4jvm/Error;->name:Lat/bitfire/dav4jvm/Property$Name;

    .line 8
    .line 9
    iget-object v0, p0, Lat/bitfire/dav4jvm/Error;->name:Lat/bitfire/dav4jvm/Property$Name;

    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
    .line 21
    .line 22
.end method

.method public final getName()Lat/bitfire/dav4jvm/Property$Name;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/dav4jvm/Error;->name:Lat/bitfire/dav4jvm/Property$Name;

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

    .line 1
    iget-object v0, p0, Lat/bitfire/dav4jvm/Error;->name:Lat/bitfire/dav4jvm/Property$Name;

    .line 2
    .line 3
    invoke-virtual {v0}, Lat/bitfire/dav4jvm/Property$Name;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
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

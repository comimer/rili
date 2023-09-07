.class public final Lat/bitfire/dav4jvm/PropStat;
.super Ljava/lang/Object;
.source "PropStat.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/bitfire/dav4jvm/PropStat$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000e\u0008\u0086\u0008\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB/\u0012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u000c\u001a\u00020\u0007\u0012\u0010\u0008\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0006\u0010\u0003\u001a\u00020\u0002J\u000f\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u00c6\u0003J\t\u0010\u0008\u001a\u00020\u0007H\u00c6\u0003J\u0011\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0004H\u00c6\u0003J5\u0010\u000e\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00072\u0010\u0008\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0004H\u00c6\u0001J\t\u0010\u0010\u001a\u00020\u000fH\u00d6\u0001J\t\u0010\u0012\u001a\u00020\u0011H\u00d6\u0001J\u0013\u0010\u0014\u001a\u00020\u00022\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\u001d\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u001f\u0010\r\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u0015\u001a\u0004\u0008\u0018\u0010\u0017R\u0017\u0010\u000c\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001f"
    }
    d2 = {
        "Lat/bitfire/dav4jvm/PropStat;",
        "",
        "",
        "isSuccess",
        "",
        "Lat/bitfire/dav4jvm/Property;",
        "component1",
        "Lvb/k;",
        "component2",
        "Lat/bitfire/dav4jvm/Error;",
        "component3",
        "properties",
        "status",
        "error",
        "copy",
        "",
        "toString",
        "",
        "hashCode",
        "other",
        "equals",
        "Ljava/util/List;",
        "getProperties",
        "()Ljava/util/List;",
        "getError",
        "Lvb/k;",
        "getStatus",
        "()Lvb/k;",
        "<init>",
        "(Ljava/util/List;Lvb/k;Ljava/util/List;)V",
        "Companion",
        "build"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field private static final ASSUMING_OK:Lvb/k;

.field public static final Companion:Lat/bitfire/dav4jvm/PropStat$Companion;

.field private static final INVALID_STATUS:Lvb/k;

.field public static final NAME:Lat/bitfire/dav4jvm/Property$Name;


# instance fields
.field private final error:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lat/bitfire/dav4jvm/Error;",
            ">;"
        }
    .end annotation
.end field

.field private final properties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lat/bitfire/dav4jvm/Property;",
            ">;"
        }
    .end annotation
.end field

.field private final status:Lvb/k;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lat/bitfire/dav4jvm/PropStat$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lat/bitfire/dav4jvm/PropStat$Companion;-><init>(Lkotlin/jvm/internal/o;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lat/bitfire/dav4jvm/PropStat;->Companion:Lat/bitfire/dav4jvm/PropStat$Companion;

    .line 8
    .line 9
    new-instance v0, Lat/bitfire/dav4jvm/Property$Name;

    .line 10
    .line 11
    const-string v1, "DAV:"

    .line 12
    .line 13
    const-string v2, "propstat"

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Lat/bitfire/dav4jvm/Property$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lat/bitfire/dav4jvm/PropStat;->NAME:Lat/bitfire/dav4jvm/Property$Name;

    .line 19
    .line 20
    new-instance v0, Lvb/k;

    .line 21
    .line 22
    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 23
    .line 24
    const/16 v2, 0xc8

    .line 25
    .line 26
    const-string v3, "Assuming OK"

    .line 27
    .line 28
    invoke-direct {v0, v1, v2, v3}, Lvb/k;-><init>(Lokhttp3/Protocol;ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lat/bitfire/dav4jvm/PropStat;->ASSUMING_OK:Lvb/k;

    .line 32
    .line 33
    new-instance v0, Lvb/k;

    .line 34
    .line 35
    const/16 v2, 0x1f4

    .line 36
    .line 37
    const-string v3, "Invalid status line"

    .line 38
    .line 39
    invoke-direct {v0, v1, v2, v3}, Lvb/k;-><init>(Lokhttp3/Protocol;ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sput-object v0, Lat/bitfire/dav4jvm/PropStat;->INVALID_STATUS:Lvb/k;

    .line 43
    .line 44
    return-void
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

.method public constructor <init>(Ljava/util/List;Lvb/k;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lat/bitfire/dav4jvm/Property;",
            ">;",
            "Lvb/k;",
            "Ljava/util/List<",
            "Lat/bitfire/dav4jvm/Error;",
            ">;)V"
        }
    .end annotation

    const-string v0, "properties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lat/bitfire/dav4jvm/PropStat;->properties:Ljava/util/List;

    iput-object p2, p0, Lat/bitfire/dav4jvm/PropStat;->status:Lvb/k;

    iput-object p3, p0, Lat/bitfire/dav4jvm/PropStat;->error:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lvb/k;Ljava/util/List;ILkotlin/jvm/internal/o;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lat/bitfire/dav4jvm/PropStat;-><init>(Ljava/util/List;Lvb/k;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$getASSUMING_OK$cp()Lvb/k;
    .locals 1

    .line 1
    sget-object v0, Lat/bitfire/dav4jvm/PropStat;->ASSUMING_OK:Lvb/k;

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

.method public static final synthetic access$getINVALID_STATUS$cp()Lvb/k;
    .locals 1

    .line 1
    sget-object v0, Lat/bitfire/dav4jvm/PropStat;->INVALID_STATUS:Lvb/k;

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

.method public static synthetic copy$default(Lat/bitfire/dav4jvm/PropStat;Ljava/util/List;Lvb/k;Ljava/util/List;ILjava/lang/Object;)Lat/bitfire/dav4jvm/PropStat;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lat/bitfire/dav4jvm/PropStat;->properties:Ljava/util/List;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lat/bitfire/dav4jvm/PropStat;->status:Lvb/k;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lat/bitfire/dav4jvm/PropStat;->error:Ljava/util/List;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lat/bitfire/dav4jvm/PropStat;->copy(Ljava/util/List;Lvb/k;Ljava/util/List;)Lat/bitfire/dav4jvm/PropStat;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lat/bitfire/dav4jvm/Property;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lat/bitfire/dav4jvm/PropStat;->properties:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Lvb/k;
    .locals 1

    iget-object v0, p0, Lat/bitfire/dav4jvm/PropStat;->status:Lvb/k;

    return-object v0
.end method

.method public final component3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lat/bitfire/dav4jvm/Error;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lat/bitfire/dav4jvm/PropStat;->error:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/util/List;Lvb/k;Ljava/util/List;)Lat/bitfire/dav4jvm/PropStat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lat/bitfire/dav4jvm/Property;",
            ">;",
            "Lvb/k;",
            "Ljava/util/List<",
            "Lat/bitfire/dav4jvm/Error;",
            ">;)",
            "Lat/bitfire/dav4jvm/PropStat;"
        }
    .end annotation

    const-string v0, "properties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lat/bitfire/dav4jvm/PropStat;

    invoke-direct {v0, p1, p2, p3}, Lat/bitfire/dav4jvm/PropStat;-><init>(Ljava/util/List;Lvb/k;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lat/bitfire/dav4jvm/PropStat;

    if-eqz v0, :cond_0

    check-cast p1, Lat/bitfire/dav4jvm/PropStat;

    iget-object v0, p0, Lat/bitfire/dav4jvm/PropStat;->properties:Ljava/util/List;

    iget-object v1, p1, Lat/bitfire/dav4jvm/PropStat;->properties:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lat/bitfire/dav4jvm/PropStat;->status:Lvb/k;

    iget-object v1, p1, Lat/bitfire/dav4jvm/PropStat;->status:Lvb/k;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lat/bitfire/dav4jvm/PropStat;->error:Ljava/util/List;

    iget-object p1, p1, Lat/bitfire/dav4jvm/PropStat;->error:Ljava/util/List;

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

.method public final getError()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lat/bitfire/dav4jvm/Error;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lat/bitfire/dav4jvm/PropStat;->error:Ljava/util/List;

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

.method public final getProperties()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lat/bitfire/dav4jvm/Property;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lat/bitfire/dav4jvm/PropStat;->properties:Ljava/util/List;

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

.method public final getStatus()Lvb/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/dav4jvm/PropStat;->status:Lvb/k;

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
    .locals 3

    iget-object v0, p0, Lat/bitfire/dav4jvm/PropStat;->properties:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lat/bitfire/dav4jvm/PropStat;->status:Lvb/k;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lat/bitfire/dav4jvm/PropStat;->error:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final isSuccess()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lat/bitfire/dav4jvm/PropStat;->status:Lvb/k;

    .line 2
    .line 3
    iget v0, v0, Lvb/k;->b:I

    .line 4
    .line 5
    div-int/lit8 v0, v0, 0x64

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0
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

    const-string v1, "PropStat(properties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lat/bitfire/dav4jvm/PropStat;->properties:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lat/bitfire/dav4jvm/PropStat;->status:Lvb/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lat/bitfire/dav4jvm/PropStat;->error:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

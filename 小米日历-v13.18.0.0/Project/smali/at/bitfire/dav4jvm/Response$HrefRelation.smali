.class public final enum Lat/bitfire/dav4jvm/Response$HrefRelation;
.super Ljava/lang/Enum;
.source "Response.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/bitfire/dav4jvm/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HrefRelation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lat/bitfire/dav4jvm/Response$HrefRelation;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lat/bitfire/dav4jvm/Response$HrefRelation;",
        "",
        "(Ljava/lang/String;I)V",
        "SELF",
        "MEMBER",
        "OTHER",
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
.field private static final synthetic $VALUES:[Lat/bitfire/dav4jvm/Response$HrefRelation;

.field public static final enum MEMBER:Lat/bitfire/dav4jvm/Response$HrefRelation;

.field public static final enum OTHER:Lat/bitfire/dav4jvm/Response$HrefRelation;

.field public static final enum SELF:Lat/bitfire/dav4jvm/Response$HrefRelation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lat/bitfire/dav4jvm/Response$HrefRelation;

    new-instance v1, Lat/bitfire/dav4jvm/Response$HrefRelation;

    const-string v2, "SELF"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lat/bitfire/dav4jvm/Response$HrefRelation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lat/bitfire/dav4jvm/Response$HrefRelation;->SELF:Lat/bitfire/dav4jvm/Response$HrefRelation;

    aput-object v1, v0, v3

    new-instance v1, Lat/bitfire/dav4jvm/Response$HrefRelation;

    const-string v2, "MEMBER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lat/bitfire/dav4jvm/Response$HrefRelation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lat/bitfire/dav4jvm/Response$HrefRelation;->MEMBER:Lat/bitfire/dav4jvm/Response$HrefRelation;

    aput-object v1, v0, v3

    new-instance v1, Lat/bitfire/dav4jvm/Response$HrefRelation;

    const-string v2, "OTHER"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lat/bitfire/dav4jvm/Response$HrefRelation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lat/bitfire/dav4jvm/Response$HrefRelation;->OTHER:Lat/bitfire/dav4jvm/Response$HrefRelation;

    aput-object v1, v0, v3

    sput-object v0, Lat/bitfire/dav4jvm/Response$HrefRelation;->$VALUES:[Lat/bitfire/dav4jvm/Response$HrefRelation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
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
.end method

.method public static valueOf(Ljava/lang/String;)Lat/bitfire/dav4jvm/Response$HrefRelation;
    .locals 1

    const-class v0, Lat/bitfire/dav4jvm/Response$HrefRelation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lat/bitfire/dav4jvm/Response$HrefRelation;

    return-object p0
.end method

.method public static values()[Lat/bitfire/dav4jvm/Response$HrefRelation;
    .locals 1

    sget-object v0, Lat/bitfire/dav4jvm/Response$HrefRelation;->$VALUES:[Lat/bitfire/dav4jvm/Response$HrefRelation;

    invoke-virtual {v0}, [Lat/bitfire/dav4jvm/Response$HrefRelation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lat/bitfire/dav4jvm/Response$HrefRelation;

    return-object v0
.end method

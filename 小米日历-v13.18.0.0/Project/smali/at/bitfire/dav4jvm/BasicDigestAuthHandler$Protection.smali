.class final enum Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Protection;
.super Ljava/lang/Enum;
.source "BasicDigestAuthHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/bitfire/dav4jvm/BasicDigestAuthHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Protection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Protection$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Protection;",
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0082\u0001\u0018\u0000 \t2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\tB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Protection;",
        "",
        "qop",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getQop",
        "()Ljava/lang/String;",
        "Auth",
        "AuthInt",
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
.field private static final synthetic $VALUES:[Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Protection;

.field public static final enum Auth:Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Protection;

.field public static final enum AuthInt:Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Protection;

.field public static final Companion:Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Protection$Companion;


# instance fields
.field private final qop:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Protection;

    .line 3
    .line 4
    new-instance v1, Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Protection;

    .line 5
    .line 6
    const-string v2, "Auth"

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const-string v4, "auth"

    .line 10
    .line 11
    invoke-direct {v1, v2, v3, v4}, Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Protection;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sput-object v1, Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Protection;->Auth:Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Protection;

    .line 15
    .line 16
    aput-object v1, v0, v3

    .line 17
    .line 18
    new-instance v1, Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Protection;

    .line 19
    .line 20
    const-string v2, "AuthInt"

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    const-string v4, "auth-int"

    .line 24
    .line 25
    invoke-direct {v1, v2, v3, v4}, Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Protection;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sput-object v1, Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Protection;->AuthInt:Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Protection;

    .line 29
    .line 30
    aput-object v1, v0, v3

    .line 31
    .line 32
    sput-object v0, Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Protection;->$VALUES:[Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Protection;

    .line 33
    .line 34
    new-instance v0, Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Protection$Companion;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-direct {v0, v1}, Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Protection$Companion;-><init>(Lkotlin/jvm/internal/o;)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Protection;->Companion:Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Protection$Companion;

    .line 41
    .line 42
    return-void
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

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Protection;->qop:Ljava/lang/String;

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

.method public static valueOf(Ljava/lang/String;)Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Protection;
    .locals 1

    const-class v0, Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Protection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Protection;

    return-object p0
.end method

.method public static values()[Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Protection;
    .locals 1

    sget-object v0, Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Protection;->$VALUES:[Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Protection;

    invoke-virtual {v0}, [Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Protection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Protection;

    return-object v0
.end method


# virtual methods
.method public final getQop()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Protection;->qop:Ljava/lang/String;

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

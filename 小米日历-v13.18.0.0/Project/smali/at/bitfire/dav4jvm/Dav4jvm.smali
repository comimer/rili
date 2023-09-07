.class public final Lat/bitfire/dav4jvm/Dav4jvm;
.super Ljava/lang/Object;
.source "Dav4jvm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lat/bitfire/dav4jvm/Dav4jvm;",
        "",
        "()V",
        "log",
        "Ljava/util/logging/Logger;",
        "getLog",
        "()Ljava/util/logging/Logger;",
        "setLog",
        "(Ljava/util/logging/Logger;)V",
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
.field public static final INSTANCE:Lat/bitfire/dav4jvm/Dav4jvm;

.field private static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lat/bitfire/dav4jvm/Dav4jvm;

    .line 2
    .line 3
    invoke-direct {v0}, Lat/bitfire/dav4jvm/Dav4jvm;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lat/bitfire/dav4jvm/Dav4jvm;->INSTANCE:Lat/bitfire/dav4jvm/Dav4jvm;

    .line 7
    .line 8
    const-string v0, "dav4jvm"

    .line 9
    .line 10
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 17
    .line 18
    .line 19
    :cond_0
    sput-object v0, Lat/bitfire/dav4jvm/Dav4jvm;->log:Ljava/util/logging/Logger;

    .line 20
    .line 21
    return-void
    .line 22
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLog()Ljava/util/logging/Logger;
    .locals 1

    .line 1
    sget-object v0, Lat/bitfire/dav4jvm/Dav4jvm;->log:Ljava/util/logging/Logger;

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

.method public final setLog(Ljava/util/logging/Logger;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lat/bitfire/dav4jvm/Dav4jvm;->log:Ljava/util/logging/Logger;

    .line 7
    .line 8
    return-void
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

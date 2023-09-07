.class public final synthetic Lat/bitfire/dav4jvm/BasicDigestAuthHandler$WhenMappings;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    invoke-static {}, Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Algorithm;->values()[Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Algorithm;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lat/bitfire/dav4jvm/BasicDigestAuthHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Algorithm;->MD5:Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Algorithm;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Algorithm;->MD5_SESSION:Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Algorithm;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    invoke-static {}, Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Protection;->values()[Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Protection;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lat/bitfire/dav4jvm/BasicDigestAuthHandler$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Protection;->Auth:Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Protection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Protection;->AuthInt:Lat/bitfire/dav4jvm/BasicDigestAuthHandler$Protection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    return-void
.end method

.class public final enum Lcom/market/sdk/MarketType;
.super Ljava/lang/Enum;
.source "MarketType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/market/sdk/MarketType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/market/sdk/MarketType;

.field public static final enum DISCOVER:Lcom/market/sdk/MarketType;

.field public static final enum MARKET_PAD:Lcom/market/sdk/MarketType;

.field public static final enum MARKET_PHONE:Lcom/market/sdk/MarketType;

.field public static final enum MIPICKS:Lcom/market/sdk/MarketType;


# instance fields
.field private mIsEnabled:Ljava/lang/Boolean;

.field private final mPackageName:Ljava/lang/String;

.field private mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/market/sdk/MarketType;

    .line 2
    .line 3
    const-string v1, "MARKET_PHONE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "com.xiaomi.market"

    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcom/market/sdk/MarketType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/market/sdk/MarketType;->MARKET_PHONE:Lcom/market/sdk/MarketType;

    .line 12
    .line 13
    new-instance v1, Lcom/market/sdk/MarketType;

    .line 14
    .line 15
    const-string v4, "MARKET_PAD"

    .line 16
    .line 17
    const/4 v5, 0x1

    .line 18
    invoke-direct {v1, v4, v5, v3}, Lcom/market/sdk/MarketType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lcom/market/sdk/MarketType;->MARKET_PAD:Lcom/market/sdk/MarketType;

    .line 22
    .line 23
    new-instance v3, Lcom/market/sdk/MarketType;

    .line 24
    .line 25
    const-string v4, "MIPICKS"

    .line 26
    .line 27
    const/4 v6, 0x2

    .line 28
    const-string v7, "com.xiaomi.mipicks"

    .line 29
    .line 30
    invoke-direct {v3, v4, v6, v7}, Lcom/market/sdk/MarketType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sput-object v3, Lcom/market/sdk/MarketType;->MIPICKS:Lcom/market/sdk/MarketType;

    .line 34
    .line 35
    new-instance v4, Lcom/market/sdk/MarketType;

    .line 36
    .line 37
    const-string v7, "DISCOVER"

    .line 38
    .line 39
    const/4 v8, 0x3

    .line 40
    const-string v9, "com.xiaomi.discover"

    .line 41
    .line 42
    invoke-direct {v4, v7, v8, v9}, Lcom/market/sdk/MarketType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sput-object v4, Lcom/market/sdk/MarketType;->DISCOVER:Lcom/market/sdk/MarketType;

    .line 46
    .line 47
    const/4 v7, 0x4

    .line 48
    new-array v7, v7, [Lcom/market/sdk/MarketType;

    .line 49
    .line 50
    aput-object v0, v7, v2

    .line 51
    .line 52
    aput-object v1, v7, v5

    .line 53
    .line 54
    aput-object v3, v7, v6

    .line 55
    .line 56
    aput-object v4, v7, v8

    .line 57
    .line 58
    sput-object v7, Lcom/market/sdk/MarketType;->$VALUES:[Lcom/market/sdk/MarketType;

    .line 59
    .line 60
    return-void
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
    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/market/sdk/MarketType;->mVersionCode:I

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/market/sdk/MarketType;->mIsEnabled:Ljava/lang/Boolean;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/market/sdk/MarketType;->mPackageName:Ljava/lang/String;

    .line 11
    .line 12
    return-void
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

.method public static valueOf(Ljava/lang/String;)Lcom/market/sdk/MarketType;
    .locals 1

    .line 1
    const-class v0, Lcom/market/sdk/MarketType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/market/sdk/MarketType;

    .line 8
    .line 9
    return-object p0
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

.method public static values()[Lcom/market/sdk/MarketType;
    .locals 1

    .line 1
    sget-object v0, Lcom/market/sdk/MarketType;->$VALUES:[Lcom/market/sdk/MarketType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/market/sdk/MarketType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/market/sdk/MarketType;

    .line 8
    .line 9
    return-object v0
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
.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/market/sdk/MarketType;->mPackageName:Ljava/lang/String;

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

.method public getVersionCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/market/sdk/MarketType;->mVersionCode:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-static {}, Lcom/market/sdk/utils/a;->a()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/market/sdk/MarketType;->mPackageName:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 22
    .line 23
    iput v0, p0, Lcom/market/sdk/MarketType;->mVersionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    const/4 v0, -0x2

    .line 27
    iput v0, p0, Lcom/market/sdk/MarketType;->mVersionCode:I

    .line 28
    .line 29
    :cond_0
    :goto_0
    iget v0, p0, Lcom/market/sdk/MarketType;->mVersionCode:I

    .line 30
    .line 31
    return v0
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
.end method

.method public isEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/market/sdk/MarketType;->mIsEnabled:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/market/sdk/MarketType;->mPackageName:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/market/sdk/utils/c;->a(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/market/sdk/MarketType;->mIsEnabled:Ljava/lang/Boolean;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/market/sdk/MarketType;->mIsEnabled:Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0
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
.end method

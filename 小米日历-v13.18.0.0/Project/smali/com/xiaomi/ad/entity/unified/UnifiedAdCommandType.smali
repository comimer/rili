.class public final enum Lcom/xiaomi/ad/entity/unified/UnifiedAdCommandType;
.super Ljava/lang/Enum;
.source "UnifiedAdCommandType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/ad/entity/unified/UnifiedAdCommandType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/ad/entity/unified/UnifiedAdCommandType;

.field public static final enum SET_RECOMMAND_AD_SWITCH_STATE:Lcom/xiaomi/ad/entity/unified/UnifiedAdCommandType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/xiaomi/ad/entity/unified/UnifiedAdCommandType;

    .line 2
    .line 3
    const-string v1, "SET_RECOMMAND_AD_SWITCH_STATE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/xiaomi/ad/entity/unified/UnifiedAdCommandType;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/xiaomi/ad/entity/unified/UnifiedAdCommandType;->SET_RECOMMAND_AD_SWITCH_STATE:Lcom/xiaomi/ad/entity/unified/UnifiedAdCommandType;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    new-array v1, v1, [Lcom/xiaomi/ad/entity/unified/UnifiedAdCommandType;

    .line 13
    .line 14
    aput-object v0, v1, v2

    .line 15
    .line 16
    sput-object v1, Lcom/xiaomi/ad/entity/unified/UnifiedAdCommandType;->$VALUES:[Lcom/xiaomi/ad/entity/unified/UnifiedAdCommandType;

    .line 17
    .line 18
    return-void
    .line 19
    .line 20
    .line 21
    .line 22
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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/ad/entity/unified/UnifiedAdCommandType;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/ad/entity/unified/UnifiedAdCommandType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/xiaomi/ad/entity/unified/UnifiedAdCommandType;

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

.method public static values()[Lcom/xiaomi/ad/entity/unified/UnifiedAdCommandType;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/ad/entity/unified/UnifiedAdCommandType;->$VALUES:[Lcom/xiaomi/ad/entity/unified/UnifiedAdCommandType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/xiaomi/ad/entity/unified/UnifiedAdCommandType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/xiaomi/ad/entity/unified/UnifiedAdCommandType;

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

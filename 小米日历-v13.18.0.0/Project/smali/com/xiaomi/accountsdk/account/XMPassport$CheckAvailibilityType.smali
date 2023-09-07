.class final enum Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;
.super Ljava/lang/Enum;
.source "XMPassport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/XMPassport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CheckAvailibilityType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;

.field public static final enum EMAIL:Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;

.field public static final enum PHONE:Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;

    .line 2
    .line 3
    const-string v1, "EMAIL"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;->EMAIL:Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;

    .line 10
    .line 11
    new-instance v1, Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;

    .line 12
    .line 13
    const-string v3, "PHONE"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;->PHONE:Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;

    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    new-array v3, v3, [Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;

    .line 23
    .line 24
    aput-object v0, v3, v2

    .line 25
    .line 26
    aput-object v1, v3, v4

    .line 27
    .line 28
    sput-object v3, Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;->$VALUES:[Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;

    .line 29
    .line 30
    return-void
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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;

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

.method public static values()[Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;->$VALUES:[Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/xiaomi/accountsdk/account/XMPassport$CheckAvailibilityType;

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

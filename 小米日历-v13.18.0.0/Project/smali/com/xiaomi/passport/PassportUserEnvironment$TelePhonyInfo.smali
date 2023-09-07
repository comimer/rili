.class public final enum Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;
.super Ljava/lang/Enum;
.source "PassportUserEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/PassportUserEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TelePhonyInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

.field public static final enum DEVICE_ID_LIST:Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

.field public static final enum OPERATOR:Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

.field public static final enum SERIAL_NUMBER:Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

.field public static final enum SUBSCRIBE_ID:Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;


# instance fields
.field methodToGetValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    .line 2
    .line 3
    const-string v1, "SUBSCRIBE_ID"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "getSubscriberIdForSlot"

    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;->SUBSCRIBE_ID:Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    .line 12
    .line 13
    new-instance v1, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    .line 14
    .line 15
    const-string v3, "SERIAL_NUMBER"

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    const-string v5, "getSimSerialNumberForSlot"

    .line 19
    .line 20
    invoke-direct {v1, v3, v4, v5}, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;->SERIAL_NUMBER:Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    .line 24
    .line 25
    new-instance v3, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    .line 26
    .line 27
    const-string v5, "OPERATOR"

    .line 28
    .line 29
    const/4 v6, 0x2

    .line 30
    const-string v7, "getSimOperatorForSlot"

    .line 31
    .line 32
    invoke-direct {v3, v5, v6, v7}, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v3, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;->OPERATOR:Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    .line 36
    .line 37
    new-instance v5, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    .line 38
    .line 39
    const-string v7, "DEVICE_ID_LIST"

    .line 40
    .line 41
    const/4 v8, 0x3

    .line 42
    const-string v9, "getDeviceIdList"

    .line 43
    .line 44
    invoke-direct {v5, v7, v8, v9}, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v5, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;->DEVICE_ID_LIST:Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    .line 48
    .line 49
    const/4 v7, 0x4

    .line 50
    new-array v7, v7, [Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    .line 51
    .line 52
    aput-object v0, v7, v2

    .line 53
    .line 54
    aput-object v1, v7, v4

    .line 55
    .line 56
    aput-object v3, v7, v6

    .line 57
    .line 58
    aput-object v5, v7, v8

    .line 59
    .line 60
    sput-object v7, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;->$VALUES:[Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    .line 61
    .line 62
    return-void
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
    iput-object p3, p0, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;->methodToGetValue:Ljava/lang/String;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

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

.method public static values()[Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;->$VALUES:[Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

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

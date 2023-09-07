.class public final enum Lcom/xiaomi/accountsdk/account/data/BindingType;
.super Ljava/lang/Enum;
.source "BindingType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/accountsdk/account/data/BindingType;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/accountsdk/account/data/BindingType;

.field public static final enum ADD_PHONE:Lcom/xiaomi/accountsdk/account/data/BindingType;

.field public static final enum ADD_SAFE_EMAIL:Lcom/xiaomi/accountsdk/account/data/BindingType;

.field public static final enum DELETE_PHONE:Lcom/xiaomi/accountsdk/account/data/BindingType;

.field public static final enum REPLACE_PHONE:Lcom/xiaomi/accountsdk/account/data/BindingType;

.field public static final enum REPLACE_SAFE_EMAIL:Lcom/xiaomi/accountsdk/account/data/BindingType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/BindingType;

    .line 2
    .line 3
    const-string v1, "ADD_SAFE_EMAIL"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/xiaomi/accountsdk/account/data/BindingType;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/xiaomi/accountsdk/account/data/BindingType;->ADD_SAFE_EMAIL:Lcom/xiaomi/accountsdk/account/data/BindingType;

    .line 10
    .line 11
    new-instance v1, Lcom/xiaomi/accountsdk/account/data/BindingType;

    .line 12
    .line 13
    const-string v3, "REPLACE_SAFE_EMAIL"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcom/xiaomi/accountsdk/account/data/BindingType;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/xiaomi/accountsdk/account/data/BindingType;->REPLACE_SAFE_EMAIL:Lcom/xiaomi/accountsdk/account/data/BindingType;

    .line 20
    .line 21
    new-instance v3, Lcom/xiaomi/accountsdk/account/data/BindingType;

    .line 22
    .line 23
    const-string v5, "ADD_PHONE"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lcom/xiaomi/accountsdk/account/data/BindingType;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lcom/xiaomi/accountsdk/account/data/BindingType;->ADD_PHONE:Lcom/xiaomi/accountsdk/account/data/BindingType;

    .line 30
    .line 31
    new-instance v5, Lcom/xiaomi/accountsdk/account/data/BindingType;

    .line 32
    .line 33
    const-string v7, "REPLACE_PHONE"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Lcom/xiaomi/accountsdk/account/data/BindingType;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lcom/xiaomi/accountsdk/account/data/BindingType;->REPLACE_PHONE:Lcom/xiaomi/accountsdk/account/data/BindingType;

    .line 40
    .line 41
    new-instance v7, Lcom/xiaomi/accountsdk/account/data/BindingType;

    .line 42
    .line 43
    const-string v9, "DELETE_PHONE"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10}, Lcom/xiaomi/accountsdk/account/data/BindingType;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v7, Lcom/xiaomi/accountsdk/account/data/BindingType;->DELETE_PHONE:Lcom/xiaomi/accountsdk/account/data/BindingType;

    .line 50
    .line 51
    const/4 v9, 0x5

    .line 52
    new-array v9, v9, [Lcom/xiaomi/accountsdk/account/data/BindingType;

    .line 53
    .line 54
    aput-object v0, v9, v2

    .line 55
    .line 56
    aput-object v1, v9, v4

    .line 57
    .line 58
    aput-object v3, v9, v6

    .line 59
    .line 60
    aput-object v5, v9, v8

    .line 61
    .line 62
    aput-object v7, v9, v10

    .line 63
    .line 64
    sput-object v9, Lcom/xiaomi/accountsdk/account/data/BindingType;->$VALUES:[Lcom/xiaomi/accountsdk/account/data/BindingType;

    .line 65
    .line 66
    return-void
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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/BindingType;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/accountsdk/account/data/BindingType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/xiaomi/accountsdk/account/data/BindingType;

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

.method public static values()[Lcom/xiaomi/accountsdk/account/data/BindingType;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/accountsdk/account/data/BindingType;->$VALUES:[Lcom/xiaomi/accountsdk/account/data/BindingType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/xiaomi/accountsdk/account/data/BindingType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/xiaomi/accountsdk/account/data/BindingType;

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
.method public isBindingEmail()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/accountsdk/account/data/BindingType;->ADD_SAFE_EMAIL:Lcom/xiaomi/accountsdk/account/data/BindingType;

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/xiaomi/accountsdk/account/data/BindingType;->REPLACE_SAFE_EMAIL:Lcom/xiaomi/accountsdk/account/data/BindingType;

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
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

.method public isBindingPhone()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/accountsdk/account/data/BindingType;->ADD_PHONE:Lcom/xiaomi/accountsdk/account/data/BindingType;

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/xiaomi/accountsdk/account/data/BindingType;->REPLACE_PHONE:Lcom/xiaomi/accountsdk/account/data/BindingType;

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lcom/xiaomi/accountsdk/account/data/BindingType;->DELETE_PHONE:Lcom/xiaomi/accountsdk/account/data/BindingType;

    .line 10
    .line 11
    if-ne p0, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

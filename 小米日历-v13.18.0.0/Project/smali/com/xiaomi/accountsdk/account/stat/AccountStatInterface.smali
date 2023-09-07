.class public abstract Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;
.super Ljava/lang/Object;
.source "AccountStatInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface$AccountStatType;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Landroid/content/Context;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "language"

    .line 15
    .line 16
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    const-string v0, "account_sdk_version"

    .line 20
    .line 21
    const-string v1, "5.3.0.release.8"

    .line 22
    .line 23
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    return-object p0
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
.end method

.method public static b()Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;->a:Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;->a:Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string v1, "please call init first!!!"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public static c(Landroid/content/Context;Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface$AccountStatType;Z)V
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface$a;->a:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p1, v0, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p1, v0, :cond_1

    .line 14
    .line 15
    const/4 p0, 0x3

    .line 16
    if-eq p1, p0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p0, Lw5/a;

    .line 20
    .line 21
    invoke-direct {p0}, Lw5/a;-><init>()V

    .line 22
    .line 23
    .line 24
    sput-object p0, Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;->a:Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    new-instance p1, Lw5/e;

    .line 28
    .line 29
    invoke-direct {p1, p0, p2}, Lw5/e;-><init>(Landroid/content/Context;Z)V

    .line 30
    .line 31
    .line 32
    sput-object p1, Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;->a:Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    new-instance p1, Lw5/d;

    .line 36
    .line 37
    invoke-direct {p1, p0, p2}, Lw5/d;-><init>(Landroid/content/Context;Z)V

    .line 38
    .line 39
    .line 40
    sput-object p1, Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;->a:Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;

    .line 41
    .line 42
    :goto_0
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


# virtual methods
.method public abstract d(Lw5/c;)V
.end method

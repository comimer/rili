.class public final Lcom/xiaomi/accountsdk/service/DeviceInfoResult$b;
.super Ljava/lang/Object;
.source "DeviceInfoResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/service/DeviceInfoResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/os/Bundle;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;->ERROR_NONE:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$b;->d:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$b;->a:Landroid/os/Bundle;

    .line 9
    .line 10
    return-void
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

.method static synthetic a(Lcom/xiaomi/accountsdk/service/DeviceInfoResult$b;)Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$b;->a:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object p0
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

.method static synthetic b(Lcom/xiaomi/accountsdk/service/DeviceInfoResult$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$b;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
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

.method static synthetic c(Lcom/xiaomi/accountsdk/service/DeviceInfoResult$b;)Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$b;->d:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    .line 2
    .line 3
    return-object p0
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

.method static synthetic d(Lcom/xiaomi/accountsdk/service/DeviceInfoResult$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$b;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
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


# virtual methods
.method public e()Lcom/xiaomi/accountsdk/service/DeviceInfoResult;
    .locals 2

    .line 1
    new-instance v0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;-><init>(Lcom/xiaomi/accountsdk/service/DeviceInfoResult$b;Lcom/xiaomi/accountsdk/service/DeviceInfoResult$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
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

.method public f(Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;)Lcom/xiaomi/accountsdk/service/DeviceInfoResult$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$b;->d:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    .line 2
    .line 3
    return-object p0
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

.method public g(Ljava/lang/String;)Lcom/xiaomi/accountsdk/service/DeviceInfoResult$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$b;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
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

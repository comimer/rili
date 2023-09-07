.class public Lcom/market/sdk/g;
.super Ljava/lang/Object;
.source "MarketManager.java"


# static fields
.field private static volatile e:Lcom/market/sdk/g;

.field public static final f:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/market/sdk/g;->d()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/market/sdk/g;->f:Ljava/lang/String;

    .line 6
    .line 7
    return-void
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

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.xiaomi.market.ui.AppDetailActivity"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/market/sdk/g;->b:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "com.xiaomi.market.data.MarketService"

    .line 9
    .line 10
    iput-object v0, p0, Lcom/market/sdk/g;->c:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "com.xiaomi.market.ui.UserAgreementActivity"

    .line 13
    .line 14
    iput-object v0, p0, Lcom/market/sdk/g;->d:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/market/sdk/g;->a:Landroid/content/Context;

    .line 21
    .line 22
    return-void
.end method

.method public static b()Lcom/market/sdk/g;
    .locals 3

    .line 1
    sget-object v0, Lcom/market/sdk/g;->e:Lcom/market/sdk/g;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/market/sdk/g;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/market/sdk/g;->e:Lcom/market/sdk/g;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/market/sdk/g;

    .line 13
    .line 14
    invoke-static {}, Lcom/market/sdk/utils/a;->a()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v1, v2}, Lcom/market/sdk/g;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lcom/market/sdk/g;->e:Lcom/market/sdk/g;

    .line 22
    .line 23
    :cond_0
    monitor-exit v0

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw v1

    .line 28
    :cond_1
    :goto_0
    sget-object v0, Lcom/market/sdk/g;->e:Lcom/market/sdk/g;

    .line 29
    .line 30
    return-object v0
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

.method public static d()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "com.xiaomi.market"

    .line 2
    .line 3
    :try_start_0
    sget-boolean v1, Loa/a;->a:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const-string v0, "com.xiaomi.discover"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    :catchall_0
    :cond_0
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
.method public a()Lcom/market/sdk/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/market/sdk/g;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/Application;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/market/sdk/b;->d(Landroid/app/Application;)Lcom/market/sdk/b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
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

.method public c(Lcom/market/sdk/MarketFeatures;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/market/sdk/MarketFeatures;->isSupported()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
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

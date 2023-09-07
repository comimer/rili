.class public Lcom/xiaomi/onetrack/util/oaid/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "a"

.field private static volatile b:Lcom/xiaomi/onetrack/util/oaid/a;


# instance fields
.field private volatile c:Z

.field private volatile d:Ljava/lang/String;

.field private final e:I

.field private volatile f:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/xiaomi/onetrack/util/oaid/a;->c:Z

    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    iput-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->d:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    iput v1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->e:I

    .line 13
    .line 14
    iput v0, p0, Lcom/xiaomi/onetrack/util/oaid/a;->f:I

    .line 15
    .line 16
    return-void
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public static a()Lcom/xiaomi/onetrack/util/oaid/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/util/oaid/a;->b:Lcom/xiaomi/onetrack/util/oaid/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/xiaomi/onetrack/util/oaid/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/xiaomi/onetrack/util/oaid/a;->b:Lcom/xiaomi/onetrack/util/oaid/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/xiaomi/onetrack/util/oaid/a;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/util/oaid/a;-><init>()V

    sput-object v1, Lcom/xiaomi/onetrack/util/oaid/a;->b:Lcom/xiaomi/onetrack/util/oaid/a;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaomi/onetrack/util/oaid/a;->b:Lcom/xiaomi/onetrack/util/oaid/a;

    return-object v0
.end method

.method private b()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/xiaomi/onetrack/util/oaid/a;->f:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    return v0
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
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/a;->d:Ljava/lang/String;

    monitor-enter v0

    .line 8
    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/util/w;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    sget-boolean p1, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-nez p1, :cond_0

    .line 10
    sget-object p1, Lcom/xiaomi/onetrack/util/oaid/a;->a:Ljava/lang/String;

    const-string v1, "getOaid() throw exception : Don\'t use it on the main thread"

    invoke-static {p1, v1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    .line 11
    monitor-exit v0

    return-object p1

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Don\'t use it on the main thread"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 14
    iget-object p1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->d:Ljava/lang/String;

    monitor-exit v0

    return-object p1

    .line 15
    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/oaid/a;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 16
    sget-object p1, Lcom/xiaomi/onetrack/util/oaid/a;->a:Ljava/lang/String;

    const-string v1, "isNotAllowedGetOaid"

    invoke-static {p1, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->d:Ljava/lang/String;

    monitor-exit v0

    return-object p1

    .line 18
    :cond_3
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 19
    invoke-static {p1}, Lcom/xiaomi/onetrack/util/n;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->d:Ljava/lang/String;

    .line 20
    iget p1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->f:I

    .line 21
    iget-object p1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->d:Ljava/lang/String;

    monitor-exit v0

    return-object p1

    .line 22
    :cond_4
    new-instance v1, Lcom/xiaomi/onetrack/util/oaid/helpers/g;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/util/oaid/helpers/g;-><init>()V

    invoke-virtual {v1, p1}, Lcom/xiaomi/onetrack/util/oaid/helpers/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, ""

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 24
    iput-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->d:Ljava/lang/String;

    .line 25
    iget p1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->f:I

    .line 26
    monitor-exit v0

    return-object v1

    .line 27
    :cond_5
    new-instance v1, Lcom/xiaomi/onetrack/util/oaid/helpers/b;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/util/oaid/helpers/b;-><init>()V

    invoke-virtual {v1, p1}, Lcom/xiaomi/onetrack/util/oaid/helpers/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string v1, ""

    .line 28
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 29
    iput-object p1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->d:Ljava/lang/String;

    .line 30
    iget v1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->f:I

    .line 31
    monitor-exit v0

    return-object p1

    .line 32
    :cond_6
    iget p1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->f:I

    .line 33
    iget-object p1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->d:Ljava/lang/String;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

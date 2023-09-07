.class public Li/a;
.super Li/d;
.source "ArchTaskExecutor.java"


# static fields
.field private static volatile c:Li/a;

.field private static final d:Ljava/util/concurrent/Executor;

.field private static final e:Ljava/util/concurrent/Executor;


# instance fields
.field private a:Li/d;

.field private b:Li/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li/a$a;

    .line 2
    .line 3
    invoke-direct {v0}, Li/a$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Li/a;->d:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    new-instance v0, Li/a$b;

    .line 9
    .line 10
    invoke-direct {v0}, Li/a$b;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Li/a;->e:Ljava/util/concurrent/Executor;

    .line 14
    .line 15
    return-void
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Li/d;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Li/c;

    .line 5
    .line 6
    invoke-direct {v0}, Li/c;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Li/a;->b:Li/d;

    .line 10
    .line 11
    iput-object v0, p0, Li/a;->a:Li/d;

    .line 12
    .line 13
    return-void
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

.method public static e()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    sget-object v0, Li/a;->e:Ljava/util/concurrent/Executor;

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

.method public static f()Li/a;
    .locals 2

    .line 1
    sget-object v0, Li/a;->c:Li/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Li/a;->c:Li/a;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const-class v0, Li/a;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Li/a;->c:Li/a;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    new-instance v1, Li/a;

    .line 16
    .line 17
    invoke-direct {v1}, Li/a;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v1, Li/a;->c:Li/a;

    .line 21
    .line 22
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    sget-object v0, Li/a;->c:Li/a;

    .line 24
    .line 25
    return-object v0

    .line 26
    :catchall_0
    move-exception v1

    .line 27
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw v1
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


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/a;->a:Li/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Li/d;->a(Ljava/lang/Runnable;)V

    .line 4
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
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/a;->a:Li/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Li/d;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
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

.method public d(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/a;->a:Li/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Li/d;->d(Ljava/lang/Runnable;)V

    .line 4
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
.end method

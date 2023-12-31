.class public Lcom/xiaomi/onetrack/CrashAnalysis;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;
    }
.end annotation


# static fields
.field public static final ANR_CRASH:Ljava/lang/String; = "anr"

.field public static final JAVA_CRASH:Ljava/lang/String; = "java"

.field public static final NATIVE_CRASH:Ljava/lang/String; = "native"

.field private static final a:Ljava/lang/String; = "CrashAnalysis"

.field private static final b:Ljava/lang/String; = "com.xiaomi.digest.DigestUtil"

.field private static final c:Ljava/lang/String; = "calcuateJavaDigest"

.field private static final d:Ljava/lang/String; = "/sdcard/tombstone"

.field private static final e:Ljava/lang/String; = "backtrace feature id:\n\t"

.field private static final f:Ljava/lang/String; = "error reason:\n\t"

.field private static final g:Ljava/lang/String; = "Crash time: \'"

.field private static final h:Ljava/lang/String; = ".xcrash"

.field private static final i:I = 0x240c8400

.field private static final j:I = 0x19000

.field private static final k:I = 0xa

.field private static final l:I = 0x14

.field private static final m:Ljava/lang/String; = "@[0-9a-fA-F]{1,10}"

.field private static final n:Ljava/lang/String; = "\\$[0-9a-fA-F]{1,10}@[0-9a-fA-F]{1,10}"

.field private static final o:Ljava/lang/String; = "0x[0-9a-fA-F]{1,10}"

.field private static final p:Ljava/lang/String; = "\\d+[B,KB,MB]*"

.field private static final q:Ljava/lang/String; = "((java:)|(length=)|(index=)|(Index:)|(Size:))\\d+"

.field private static final r:I = 0x14

.field private static final s:Z = false

.field private static final t:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final u:[Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;

.field private final v:Lcom/xiaomi/onetrack/api/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/xiaomi/onetrack/CrashAnalysis;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    return-void
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

.method private constructor <init>(Landroid/content/Context;Lcom/xiaomi/onetrack/api/h;)V
    .locals 9

    const-string v0, "CrashAnalysis"

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3
    :try_start_0
    const-class v4, Lxcrash/XCrash$InitParameters;

    new-array v5, v3, [Ljava/lang/Class;

    .line 4
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "setNativeDumpAllThreads"

    .line 5
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v4, v5, v6}, Lcom/xiaomi/onetrack/CrashAnalysis;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "setLogDir"

    .line 6
    invoke-static {}, Lcom/xiaomi/onetrack/CrashAnalysis;->a()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v4, v5, v7}, Lcom/xiaomi/onetrack/CrashAnalysis;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "setNativeDumpMap"

    .line 7
    invoke-direct {p0, v4, v5, v6}, Lcom/xiaomi/onetrack/CrashAnalysis;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "setNativeDumpFds"

    .line 8
    invoke-direct {p0, v4, v5, v6}, Lcom/xiaomi/onetrack/CrashAnalysis;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "setJavaDumpAllThreads"

    .line 9
    invoke-direct {p0, v4, v5, v6}, Lcom/xiaomi/onetrack/CrashAnalysis;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "setAnrRethrow"

    .line 10
    invoke-direct {p0, v4, v5, v6}, Lcom/xiaomi/onetrack/CrashAnalysis;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    const-class v5, Lxcrash/XCrash;

    sget v6, Lxcrash/XCrash;->l:I

    const-string v6, "init"

    new-array v7, v1, [Ljava/lang/Class;

    .line 12
    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x0

    new-array v7, v1, [Ljava/lang/Object;

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    aput-object p1, v7, v3

    aput-object v4, v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "XCrash init success"

    .line 14
    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XCrash init failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :goto_0
    iput-object p2, p0, Lcom/xiaomi/onetrack/CrashAnalysis;->v:Lcom/xiaomi/onetrack/api/h;

    const/4 p1, 0x3

    new-array p1, p1, [Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;

    .line 17
    new-instance p2, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;

    const-string v0, "java"

    invoke-direct {p2, p0, v0}, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;-><init>(Lcom/xiaomi/onetrack/CrashAnalysis;Ljava/lang/String;)V

    aput-object p2, p1, v3

    new-instance p2, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;

    const-string v0, "anr"

    invoke-direct {p2, p0, v0}, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;-><init>(Lcom/xiaomi/onetrack/CrashAnalysis;Ljava/lang/String;)V

    aput-object p2, p1, v2

    new-instance p2, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;

    const-string v0, "native"

    invoke-direct {p2, p0, v0}, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;-><init>(Lcom/xiaomi/onetrack/CrashAnalysis;Ljava/lang/String;)V

    aput-object p2, p1, v1

    iput-object p1, p0, Lcom/xiaomi/onetrack/CrashAnalysis;->u:[Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/xiaomi/onetrack/api/h;Lcom/xiaomi/onetrack/CrashAnalysis$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/CrashAnalysis;-><init>(Landroid/content/Context;Lcom/xiaomi/onetrack/api/h;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)J
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/xiaomi/onetrack/CrashAnalysis;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static a()Ljava/lang/String;
    .locals 1

    .line 13
    invoke-static {}, Lcom/xiaomi/onetrack/util/k;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/CrashAnalysis;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(J)V
    .locals 4

    .line 14
    invoke-static {}, Lcom/xiaomi/onetrack/util/ac;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    add-long/2addr v0, p1

    .line 15
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/aa;->d(J)V

    return-void
.end method

.method static a(Landroid/content/Context;)V
    .locals 8

    const-string v0, "CrashAnalysis"

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/onetrack/f/a;->a(Landroid/content/Context;)V

    .line 5
    const-class v1, Lxcrash/XCrash;

    sget v2, Lxcrash/XCrash;->l:I

    const-string v2, "initHooker"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    .line 6
    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    aput-object p0, v3, v6

    invoke-static {}, Lcom/xiaomi/onetrack/CrashAnalysis;->a()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v7

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "registerHook succeeded"

    .line 8
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerHook failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 11
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, p2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p3, v0, v4

    .line 12
    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/CrashAnalysis;)Z
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/xiaomi/onetrack/CrashAnalysis;->d()Z

    move-result p0

    return p0
.end method

.method private b()J
    .locals 12

    .line 8
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-wide/16 v3, 0xa

    const-string v5, "CrashAnalysis"

    if-nez v2, :cond_0

    const-string v0, "no ticket data found, return max count"

    .line 9
    invoke-static {v5, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v3

    .line 10
    :cond_0
    invoke-static {}, Lcom/xiaomi/onetrack/util/ac;->b()J

    move-result-wide v6

    const-wide/16 v8, 0x64

    .line 11
    div-long v10, v0, v8

    cmp-long v2, v10, v6

    if-eqz v2, :cond_1

    const-string v0, "no today\'s ticket, return max count"

    .line 12
    invoke-static {v5, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v3

    :cond_1
    mul-long/2addr v6, v8

    sub-long/2addr v0, v6

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "today\'s remain ticket is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method private static b(Ljava/lang/String;)J
    .locals 5

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "Crash time: \'"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    add-int/lit8 v0, v0, 0xd

    const-string v4, "\'\n"

    .line 5
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v3, :cond_0

    .line 6
    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/onetrack/util/b;->a(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v1, v0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCrashTimeStamp error: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CrashAnalysis"

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-wide v1
.end method

.method static synthetic b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/CrashAnalysis;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/xiaomi/onetrack/CrashAnalysis;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/xiaomi/onetrack/CrashAnalysis;->e()V

    return-void
.end method

.method static synthetic c(Lcom/xiaomi/onetrack/CrashAnalysis;)Lcom/xiaomi/onetrack/api/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/onetrack/CrashAnalysis;->v:Lcom/xiaomi/onetrack/api/h;

    return-object p0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "uncategoried"

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "anr"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    const-string p1, " tid=1 "

    .line 4
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v0, :cond_1

    const-string v2, "\n  at "

    .line 5
    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v0, :cond_1

    const/16 v2, 0xa

    add-int/lit8 v3, p1, 0x6

    .line 6
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-eq v2, v0, :cond_1

    add-int/lit8 p1, p1, 0x2

    .line 7
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p1, "error reason:\n\t"

    .line 8
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v0, :cond_1

    add-int/lit8 p1, p1, 0xf

    const-string v2, "\n\n"

    .line 9
    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v0, :cond_1

    .line 10
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v1, p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getErrorReasonString error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CrashAnalysis"

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-object v1
.end method

.method private c()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 12
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/xiaomi/onetrack/CrashAnalysis;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "CrashAnalysis"

    const-string v1, "this path does not denote a directory, or if an I/O error occurs."

    .line 13
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 14
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 15
    new-instance v1, Lcom/xiaomi/onetrack/CrashAnalysis$2;

    invoke-direct {v1, p0}, Lcom/xiaomi/onetrack/CrashAnalysis$2;-><init>(Lcom/xiaomi/onetrack/CrashAnalysis;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_2

    add-int/lit8 v2, v1, -0x14

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 17
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-static {v4}, Lcom/xiaomi/onetrack/util/k;->a(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 18
    :cond_1
    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static calculateJavaDigest(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    const-string v0, "\\t"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "\\n"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    array-length v2, p0

    .line 21
    const/16 v3, 0x14

    .line 22
    .line 23
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x0

    .line 28
    move v4, v3

    .line 29
    :goto_0
    if-ge v4, v2, :cond_0

    .line 30
    .line 31
    aget-object v5, p0, v4

    .line 32
    .line 33
    const-string v6, "((java:)|(length=)|(index=)|(Index:)|(Size:))\\d+"

    .line 34
    .line 35
    const-string v7, "$1XX"

    .line 36
    .line 37
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    const-string v6, "\\$[0-9a-fA-F]{1,10}@[0-9a-fA-F]{1,10}|@[0-9a-fA-F]{1,10}|0x[0-9a-fA-F]{1,10}"

    .line 42
    .line 43
    const-string v7, "XX"

    .line 44
    .line 45
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    const-string v6, "\\d+[B,KB,MB]*"

    .line 50
    .line 51
    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    aput-object v5, p0, v4

    .line 56
    .line 57
    add-int/lit8 v4, v4, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    :goto_1
    if-ge v3, v2, :cond_2

    .line 61
    .line 62
    aget-object v1, p0, v3

    .line 63
    .line 64
    const-string v4, "..."

    .line 65
    .line 66
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    aget-object v1, p0, v3

    .line 73
    .line 74
    const-string v4, "more"

    .line 75
    .line 76
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_1

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_1
    aget-object v1, p0, v3

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const/16 v1, 0xa

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    add-int/lit8 v3, v3, 0x1

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    return-object p0
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "anr"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "\n\n"

    const/4 v2, -0x1

    if-eqz p1, :cond_0

    :try_start_1
    const-string p1, " tid=1 "

    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v2, :cond_1

    .line 4
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 5
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {p0}, Lcom/xiaomi/onetrack/CrashAnalysis;->calculateJavaDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    move-object v1, p0

    goto :goto_1

    :cond_0
    const-string p1, "backtrace feature id:\n\t"

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v2, :cond_1

    add-int/lit8 p1, p1, 0x17

    .line 8
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 9
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "calculateFeatureId error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CrashAnalysis"

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-object v1
.end method

.method private d()Z
    .locals 24

    move-object/from16 v0, p0

    .line 11
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/onetrack/CrashAnalysis;->c()Ljava/util/List;

    move-result-object v1

    .line 12
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/onetrack/CrashAnalysis;->b()J

    move-result-wide v2

    if-eqz v1, :cond_9

    .line 13
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_9

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 15
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->b()J

    move-result-wide v7

    cmp-long v9, v7, v5

    const-wide/32 v10, 0x240c8400

    if-lez v9, :cond_0

    sub-long v7, v5, v10

    .line 16
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v12, 0x0

    move-wide v14, v12

    const/4 v9, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Ljava/io/File;

    .line 17
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v17

    sub-long v19, v5, v10

    cmp-long v16, v17, v19

    const-string v10, "CrashAnalysis"

    if-ltz v16, :cond_6

    cmp-long v11, v17, v5

    if-lez v11, :cond_1

    goto :goto_2

    :cond_1
    cmp-long v11, v17, v7

    if-gtz v11, :cond_3

    const-string v4, "found already reported crash file, ignore"

    .line 18
    invoke-static {v10, v4}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object/from16 v16, v1

    goto :goto_3

    :cond_3
    cmp-long v11, v2, v12

    if-lez v11, :cond_2

    .line 19
    iget-object v11, v0, Lcom/xiaomi/onetrack/CrashAnalysis;->u:[Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;

    array-length v12, v11

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_2

    move-object/from16 v16, v1

    aget-object v1, v11, v13

    .line 20
    invoke-virtual {v1, v4}, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;->a(Ljava/io/File;)Z

    move-result v1

    const/16 v21, 0x1

    if-eqz v1, :cond_5

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find crash file:"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v22, 0x1

    sub-long v2, v2, v22

    cmp-long v1, v14, v17

    if-gez v1, :cond_4

    move-wide/from16 v14, v17

    :cond_4
    move/from16 v9, v21

    :cond_5
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v16

    goto :goto_1

    :cond_6
    :goto_2
    move-object/from16 v16, v1

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "remove obsolete crash files: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {v4}, Lcom/xiaomi/onetrack/util/k;->a(Ljava/io/File;)V

    :goto_3
    move-object/from16 v1, v16

    const-wide/32 v10, 0x240c8400

    const-wide/16 v12, 0x0

    goto/16 :goto_0

    :cond_7
    move-wide v10, v12

    cmp-long v1, v14, v10

    if-lez v1, :cond_8

    .line 24
    invoke-static {v14, v15}, Lcom/xiaomi/onetrack/util/aa;->c(J)V

    :cond_8
    move v4, v9

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_a

    .line 25
    invoke-direct {v0, v2, v3}, Lcom/xiaomi/onetrack/CrashAnalysis;->a(J)V

    :cond_a
    return v4
.end method

.method private e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/CrashAnalysis;->u:[Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-virtual {v3}, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;->a()V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public static isSupport()Z
    .locals 1

    .line 1
    :try_start_0
    sget v0, Lxcrash/XCrash;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    return v0

    .line 5
    :catchall_0
    const/4 v0, 0x0

    .line 6
    return v0
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

.method public static start(Landroid/content/Context;Lcom/xiaomi/onetrack/api/h;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/CrashAnalysis;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/xiaomi/onetrack/CrashAnalysis$1;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Lcom/xiaomi/onetrack/CrashAnalysis$1;-><init>(Landroid/content/Context;Lcom/xiaomi/onetrack/api/h;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string p0, "CrashAnalysis"

    .line 21
    .line 22
    const-string p1, "run method has been invoked more than once"

    .line 23
    .line 24
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
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

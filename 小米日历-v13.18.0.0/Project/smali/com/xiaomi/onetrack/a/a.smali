.class public Lcom/xiaomi/onetrack/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/a/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "AdMonitorManager"

.field private static final b:I = 0x32000

.field private static final c:I = 0x64

.field private static final d:I = 0x4

.field private static final e:I = 0x12c

.field private static final f:Ljava/lang/String; = "_id ASC"

.field private static final g:I = 0x7

.field private static h:Lcom/xiaomi/onetrack/a/a;


# instance fields
.field private final i:Lcom/xiaomi/onetrack/a/a$a;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lcom/xiaomi/onetrack/a/a$a;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lcom/xiaomi/onetrack/a/a$a;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lcom/xiaomi/onetrack/a/a;->i:Lcom/xiaomi/onetrack/a/a$a;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/a/a;->c()V

    .line 16
    .line 17
    .line 18
    return-void
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/a/a;Lcom/xiaomi/onetrack/a/b/a;)J
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/a/a;->a(Lcom/xiaomi/onetrack/a/b/a;)J

    move-result-wide p0

    return-wide p0
.end method

.method private a(Lcom/xiaomi/onetrack/a/b/a;)J
    .locals 8

    .line 14
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/a;->i:Lcom/xiaomi/onetrack/a/a$a;

    monitor-enter v0

    const-wide/16 v1, -0x1

    .line 15
    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/a/b/a;->h()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "AdMonitorManager"

    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addAdMonitorToDatabase event is inValid, event:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/a/b/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/xiaomi/onetrack/util/p;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-wide v1

    .line 18
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/xiaomi/onetrack/a/a;->i:Lcom/xiaomi/onetrack/a/a$a;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 19
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "appid"

    .line 20
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/a/b/a;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "package"

    .line 21
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/a/b/a;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "event_name"

    .line 22
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/a/b/a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "timestamp"

    .line 23
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/a/b/a;->d()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "url"

    .line 24
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/a/b/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "monitor"

    const/4 v5, 0x0

    .line 25
    invoke-virtual {v3, p1, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    const-string p1, "AdMonitorManager"

    .line 26
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DB-Thread: AdMonitorManager.addAdMonitorToDatabase , row="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    sget-boolean p1, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz p1, :cond_1

    const-string p1, "AdMonitorManager"

    .line 28
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u6dfb\u52a0\u540e\uff0cad monitor url \u4e2d\u4e8b\u4ef6\u4e2a\u6570\u4e3a "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/a/a;->e()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    :cond_1
    :try_start_3
    monitor-exit v0

    return-wide v3

    :catchall_0
    move-exception p1

    const-string v3, "AdMonitorManager"

    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addAdMonitorToDatabase Throwable\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    monitor-exit v0

    return-wide v1

    :catchall_1
    move-exception p1

    .line 32
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method static synthetic a(Lcom/xiaomi/onetrack/a/a;)Lcom/xiaomi/onetrack/a/a$a;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/xiaomi/onetrack/a/a;->i:Lcom/xiaomi/onetrack/a/a$a;

    return-object p0
.end method

.method public static a()Lcom/xiaomi/onetrack/a/a;
    .locals 1

    .line 3
    sget-object v0, Lcom/xiaomi/onetrack/a/a;->h:Lcom/xiaomi/onetrack/a/a;

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/xiaomi/onetrack/a/a;->a(Landroid/content/Context;)V

    .line 6
    :cond_0
    sget-object v0, Lcom/xiaomi/onetrack/a/a;->h:Lcom/xiaomi/onetrack/a/a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 7
    sget-object p0, Lcom/xiaomi/onetrack/a/a;->h:Lcom/xiaomi/onetrack/a/a;

    if-nez p0, :cond_1

    .line 8
    const-class p0, Lcom/xiaomi/onetrack/a/a;

    monitor-enter p0

    .line 9
    :try_start_0
    sget-object v0, Lcom/xiaomi/onetrack/a/a;->h:Lcom/xiaomi/onetrack/a/a;

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lcom/xiaomi/onetrack/a/a;

    invoke-direct {v0}, Lcom/xiaomi/onetrack/a/a;-><init>()V

    sput-object v0, Lcom/xiaomi/onetrack/a/a;->h:Lcom/xiaomi/onetrack/a/a;

    .line 11
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private f()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/a;->i:Lcom/xiaomi/onetrack/a/a$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "monitor"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    const-string v0, "AdMonitorManager"

    .line 14
    .line 15
    const-string v1, "delete table monitor"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
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
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/a;->i:Lcom/xiaomi/onetrack/a/a$a;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 34
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 35
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/xiaomi/onetrack/a/a;->i:Lcom/xiaomi/onetrack/a/a$a;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 36
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 37
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    mul-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x10

    .line 38
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "_id"

    .line 39
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in ("

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v4, v3, :cond_1

    const-string v6, ","

    .line 42
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string p1, ")"

    .line 43
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "monitor"

    .line 44
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const-string v2, "AdMonitorManager"

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*** *** deleted ad monitor count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    sget-boolean v2, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v2, :cond_2

    const-string v2, "AdMonitorManager"

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after delete ad monitor record remains="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/a/a;->e()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    :cond_2
    :try_start_2
    monitor-exit v0

    return p1

    :catch_0
    move-exception p1

    const-string v2, "AdMonitorManager"

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    monitor-exit v0

    return v1

    .line 51
    :cond_3
    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 52
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public a(Lcom/xiaomi/onetrack/f/b;)V
    .locals 2

    .line 12
    :try_start_0
    new-instance v0, Lcom/xiaomi/onetrack/a/b;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/onetrack/a/b;-><init>(Lcom/xiaomi/onetrack/a/a;Lcom/xiaomi/onetrack/f/b;)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/a/a/a;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filterAdMonitor Throwable\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AdMonitorManager"

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(JJI)Z
    .locals 3

    const/4 v0, 0x1

    if-gtz p5, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ge p5, v1, :cond_2

    sub-int/2addr p5, v0

    .line 53
    invoke-static {p5}, Lcom/xiaomi/onetrack/b/n;->a(I)I

    move-result p5

    sub-long/2addr p1, p3

    .line 54
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    int-to-long p3, p5

    cmp-long p1, p1, p3

    if-ltz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public b()Lcom/xiaomi/onetrack/a/c/a;
    .locals 22

    move-object/from16 v7, p0

    .line 1
    iget-object v8, v7, Lcom/xiaomi/onetrack/a/a;->i:Lcom/xiaomi/onetrack/a/a$a;

    monitor-enter v8

    const/4 v12, 0x0

    const/16 v17, 0x0

    .line 2
    :try_start_0
    iget-object v0, v7, Lcom/xiaomi/onetrack/a/a;->i:Lcom/xiaomi/onetrack/a/a$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    const-string v10, "monitor"

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v16, "_id ASC"

    .line 3
    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteBlobTooBigException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, "_id"

    .line 4
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "appid"

    .line 5
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    const-string v1, "package"

    .line 6
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    const-string v1, "event_name"

    .line 7
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    const-string v1, "timestamp"

    .line 8
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v1, "url"

    .line 9
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v1, "send_count"

    .line 10
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 11
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const/16 v16, 0x0

    move/from16 v18, v16

    .line 13
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 15
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v1, p0

    move-wide v2, v14

    move-wide/from16 v19, v4

    move/from16 v21, v6

    .line 16
    invoke-virtual/range {v1 .. v6}, Lcom/xiaomi/onetrack/a/a;->a(JJI)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 18
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 19
    new-instance v3, Lcom/xiaomi/onetrack/a/b/a;

    invoke-direct {v3}, Lcom/xiaomi/onetrack/a/b/a;-><init>()V

    .line 20
    invoke-virtual {v3, v2}, Lcom/xiaomi/onetrack/a/b/a;->b(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v3, v1}, Lcom/xiaomi/onetrack/a/b/a;->a(I)V

    move-wide/from16 v1, v19

    .line 22
    invoke-virtual {v3, v1, v2}, Lcom/xiaomi/onetrack/a/b/a;->a(J)V

    move/from16 v1, v21

    .line 23
    invoke-virtual {v3, v1}, Lcom/xiaomi/onetrack/a/b/a;->b(I)V

    .line 24
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v18, 0x1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v18, v1

    goto :goto_0

    :cond_2
    move/from16 v1, v18

    .line 25
    :goto_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_4

    const-string v0, "AdMonitorManager"

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get ad monitor size :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "AdMonitorManager"

    const-string v3, "cursor isAfterLast"

    .line 28
    invoke-static {v0, v3}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move/from16 v2, v16

    .line 29
    :cond_4
    :goto_2
    new-instance v0, Lcom/xiaomi/onetrack/a/c/a;

    invoke-direct {v0, v1, v13, v2}, Lcom/xiaomi/onetrack/a/c/a;-><init>(ILjava/util/ArrayList;Z)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteBlobTooBigException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 30
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    move-object/from16 v9, v17

    :goto_3
    :try_start_3
    const-string v1, "AdMonitorManager"

    const-string v2, ""

    .line 31
    invoke-static {v1, v2, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v9, :cond_5

    .line 32
    :goto_4
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_6

    :catch_3
    move-exception v0

    move-object/from16 v9, v17

    :goto_5
    :try_start_5
    const-string v1, "AdMonitorManager"

    const-string v2, "blob too big ***"

    .line 33
    invoke-static {v1, v2, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/onetrack/a/a;->f()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v9, :cond_5

    goto :goto_4

    .line 35
    :cond_5
    :goto_6
    :try_start_6
    monitor-exit v8

    return-object v17

    :catchall_1
    move-exception v0

    move-object/from16 v17, v9

    :goto_7
    if-eqz v17, :cond_6

    .line 36
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 37
    :cond_6
    throw v0

    :catchall_2
    move-exception v0

    .line 38
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/a;->i:Lcom/xiaomi/onetrack/a/a$a;

    monitor-enter v0

    if-eqz p1, :cond_4

    .line 40
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-gtz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v1, 0x0

    .line 41
    :try_start_1
    iget-object v2, p0, Lcom/xiaomi/onetrack/a/a;->i:Lcom/xiaomi/onetrack/a/a$a;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 42
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 43
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "update %s set %s = %s + 1 where %s = %s"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "monitor"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "send_count"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "send_count"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 47
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    :try_start_3
    const-string v1, "AdMonitorManager"

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAdMonitorsRetryCount endTransaction error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_4

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    :try_start_4
    const-string v2, "AdMonitorManager"

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAdMonitorsRetryCount Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_3

    .line 50
    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 51
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    :catch_2
    move-exception p1

    :try_start_6
    const-string v1, "AdMonitorManager"

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAdMonitorsRetryCount endTransaction error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :goto_2
    if-eqz v1, :cond_2

    .line 53
    :try_start_7
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 54
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    :catch_3
    move-exception v1

    :try_start_8
    const-string v2, "AdMonitorManager"

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAdMonitorsRetryCount endTransaction error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_2
    :goto_3
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_9
    const-string v1, "AdMonitorManager"

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAdMonitorsRetryCount Throwable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_3
    :goto_4
    monitor-exit v0

    return-void

    .line 59
    :cond_4
    :goto_5
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p1

    .line 60
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw p1
.end method

.method public c()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xiaomi/onetrack/a/c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/a/c;-><init>(Lcom/xiaomi/onetrack/a/a;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/xiaomi/onetrack/a/a/a;->a(Ljava/lang/Runnable;)V

    .line 7
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

.method public d()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/a;->i:Lcom/xiaomi/onetrack/a/a$a;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/onetrack/a/a;->i:Lcom/xiaomi/onetrack/a/a$a;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v11, "send_count >= ? "

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    new-array v12, v3, [Ljava/lang/String;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const-wide/16 v4, 0x4

    .line 18
    .line 19
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    aput-object v4, v12, v3

    .line 24
    .line 25
    const-string v4, "monitor"

    .line 26
    .line 27
    const-string v3, "timestamp"

    .line 28
    .line 29
    filled-new-array {v3}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    const/4 v8, 0x0

    .line 34
    const/4 v9, 0x0

    .line 35
    const-string v10, "_id ASC"

    .line 36
    .line 37
    move-object v3, v2

    .line 38
    move-object v6, v11

    .line 39
    move-object v7, v12

    .line 40
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_0

    .line 49
    .line 50
    const-string v3, "monitor"

    .line 51
    .line 52
    invoke-virtual {v2, v3, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    const-string v3, "AdMonitorManager"

    .line 57
    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v5, "*** deleted obsolete ad monitor count="

    .line 64
    .line 65
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-static {v3, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :cond_0
    sget-boolean v2, Lcom/xiaomi/onetrack/util/p;->a:Z

    .line 79
    .line 80
    if-eqz v2, :cond_1

    .line 81
    .line 82
    const-string v2, "AdMonitorManager"

    .line 83
    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v4, "after delete obsolete ad monitor record remains="

    .line 90
    .line 91
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/a/a;->e()J

    .line 95
    .line 96
    .line 97
    move-result-wide v4

    .line 98
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-static {v2, v3}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .line 107
    .line 108
    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :catchall_0
    move-exception v2

    .line 113
    goto :goto_2

    .line 114
    :catch_0
    move-exception v2

    .line 115
    :try_start_2
    const-string v3, "AdMonitorManager"

    .line 116
    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string v5, "remove obsolete ad monitor failed with "

    .line 123
    .line 124
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-static {v3, v2}, Lcom/xiaomi/onetrack/util/p;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    .line 136
    .line 137
    if-eqz v1, :cond_2

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_2
    :goto_1
    :try_start_3
    monitor-exit v0

    .line 141
    return-void

    .line 142
    :goto_2
    if-eqz v1, :cond_3

    .line 143
    .line 144
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 145
    .line 146
    .line 147
    :cond_3
    throw v2

    .line 148
    :catchall_1
    move-exception v1

    .line 149
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 150
    throw v1
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
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
.end method

.method public e()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/a;->i:Lcom/xiaomi/onetrack/a/a$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "monitor"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
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

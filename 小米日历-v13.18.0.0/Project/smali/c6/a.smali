.class public Lc6/a;
.super Ljava/lang/Object;
.source "FileLock.java"


# instance fields
.field a:Ljava/io/FileOutputStream;

.field b:Ljava/nio/channels/FileLock;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lc6/a;->a:Ljava/io/FileOutputStream;

    .line 6
    .line 7
    iput-object v0, p0, Lc6/a;->b:Ljava/nio/channels/FileLock;

    .line 8
    .line 9
    iput-object p1, p0, Lc6/a;->c:Ljava/lang/String;

    .line 10
    .line 11
    return-void
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
.method public a()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lc6/a;->b()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    .line 6
    .line 7
    new-instance v2, Ljava/io/File;

    .line 8
    .line 9
    iget-object v3, p0, Lc6/a;->c:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lc6/a;->a:Ljava/io/FileOutputStream;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iput-object v1, p0, Lc6/a;->b:Ljava/nio/channels/FileLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    move v0, v3

    .line 33
    :cond_0
    return v0

    .line 34
    :catch_0
    move-exception v1

    .line 35
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    .line 37
    .line 38
    return v0
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

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc6/a;->b:Ljava/nio/channels/FileLock;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    iput-object v1, p0, Lc6/a;->b:Ljava/nio/channels/FileLock;

    .line 12
    .line 13
    throw v0

    .line 14
    :catch_0
    :goto_0
    iput-object v1, p0, Lc6/a;->b:Ljava/nio/channels/FileLock;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lc6/a;->a:Ljava/io/FileOutputStream;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-static {v0}, Ld6/c;->a(Ljava/io/Closeable;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lc6/a;->a:Ljava/io/FileOutputStream;

    .line 24
    .line 25
    :cond_1
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

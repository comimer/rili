.class public final Lxb/g$c;
.super Ljava/lang/Object;
.source "Http2Stream.kt"

# interfaces
.implements Lcc/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxb/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\r\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0019\u0008\u0000\u0012\u0006\u0010\"\u001a\u00020\u0002\u0012\u0006\u0010\u001f\u001a\u00020\u0018\u00a2\u0006\u0004\u0008#\u0010$J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\t\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0002H\u0016J\u001f\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u0002H\u0000\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0008\u0010\u000f\u001a\u00020\u000eH\u0016J\u0008\u0010\u0010\u001a\u00020\u0004H\u0016R$\u0010\u0012\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\"\u0010\u0019\u001a\u00020\u00188\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\"\u0010\u001f\u001a\u00020\u00188\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010\u001a\u001a\u0004\u0008 \u0010\u001c\"\u0004\u0008!\u0010\u001e\u00a8\u0006%"
    }
    d2 = {
        "Lxb/g$c;",
        "Lcc/a0;",
        "",
        "read",
        "Lkotlin/u;",
        "q",
        "Lcc/e;",
        "sink",
        "byteCount",
        "u",
        "Lcc/g;",
        "source",
        "e",
        "(Lcc/g;J)V",
        "Lcc/b0;",
        "b",
        "close",
        "Lokhttp3/s;",
        "trailers",
        "Lokhttp3/s;",
        "getTrailers",
        "()Lokhttp3/s;",
        "m",
        "(Lokhttp3/s;)V",
        "",
        "closed",
        "Z",
        "c",
        "()Z",
        "setClosed$okhttp",
        "(Z)V",
        "finished",
        "d",
        "j",
        "maxByteCount",
        "<init>",
        "(Lxb/g;JZ)V",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lcc/e;

.field private final b:Lcc/e;

.field private c:Lokhttp3/s;

.field private d:Z

.field private final e:J

.field private f:Z

.field final synthetic g:Lxb/g;


# direct methods
.method public constructor <init>(Lxb/g;JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lxb/g$c;->g:Lxb/g;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-wide p2, p0, Lxb/g$c;->e:J

    .line 7
    .line 8
    iput-boolean p4, p0, Lxb/g$c;->f:Z

    .line 9
    .line 10
    new-instance p1, Lcc/e;

    .line 11
    .line 12
    invoke-direct {p1}, Lcc/e;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lxb/g$c;->a:Lcc/e;

    .line 16
    .line 17
    new-instance p1, Lcc/e;

    .line 18
    .line 19
    invoke-direct {p1}, Lcc/e;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lxb/g$c;->b:Lcc/e;

    .line 23
    .line 24
    return-void
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
.end method

.method private final q(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lxb/g$c;->g:Lxb/g;

    .line 2
    .line 3
    sget-boolean v1, Lsb/b;->h:Z

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 15
    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v1, "Thread "

    .line 22
    .line 23
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "Thread.currentThread()"

    .line 31
    .line 32
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, " MUST NOT hold lock on "

    .line 43
    .line 44
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :cond_1
    :goto_0
    iget-object v0, p0, Lxb/g$c;->g:Lxb/g;

    .line 59
    .line 60
    invoke-virtual {v0}, Lxb/g;->g()Lxb/d;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0, p1, p2}, Lxb/d;->P0(J)V

    .line 65
    .line 66
    .line 67
    return-void
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
.end method


# virtual methods
.method public b()Lcc/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lxb/g$c;->g:Lxb/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lxb/g;->m()Lxb/g$d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lxb/g$c;->d:Z

    .line 2
    .line 3
    return v0
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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lxb/g$c;->g:Lxb/g;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lxb/g$c;->d:Z

    .line 6
    .line 7
    iget-object v1, p0, Lxb/g$c;->b:Lcc/e;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcc/e;->size()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    iget-object v3, p0, Lxb/g$c;->b:Lcc/e;

    .line 14
    .line 15
    invoke-virtual {v3}, Lcc/e;->d()V

    .line 16
    .line 17
    .line 18
    iget-object v3, p0, Lxb/g$c;->g:Lxb/g;

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 23
    .line 24
    .line 25
    sget-object v3, Lkotlin/u;->a:Lkotlin/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    monitor-exit v0

    .line 28
    const-wide/16 v3, 0x0

    .line 29
    .line 30
    cmp-long v0, v1, v3

    .line 31
    .line 32
    if-lez v0, :cond_0

    .line 33
    .line 34
    invoke-direct {p0, v1, v2}, Lxb/g$c;->q(J)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lxb/g$c;->g:Lxb/g;

    .line 38
    .line 39
    invoke-virtual {v0}, Lxb/g;->b()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    :try_start_1
    new-instance v1, Lkotlin/TypeCastException;

    .line 44
    .line 45
    const-string v2, "null cannot be cast to non-null type java.lang.Object"

    .line 46
    .line 47
    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :catchall_0
    move-exception v1

    .line 52
    monitor-exit v0

    .line 53
    throw v1
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
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lxb/g$c;->f:Z

    .line 2
    .line 3
    return v0
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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public final e(Lcc/g;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lxb/g$c;->g:Lxb/g;

    .line 7
    .line 8
    sget-boolean v1, Lsb/b;->h:Z

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 20
    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string p3, "Thread "

    .line 27
    .line 28
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    const-string v1, "Thread.currentThread()"

    .line 36
    .line 37
    invoke-static {p3, v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p3, " MUST NOT hold lock on "

    .line 48
    .line 49
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    .line 64
    .line 65
    cmp-long v2, p2, v0

    .line 66
    .line 67
    if-lez v2, :cond_a

    .line 68
    .line 69
    iget-object v2, p0, Lxb/g$c;->g:Lxb/g;

    .line 70
    .line 71
    monitor-enter v2

    .line 72
    :try_start_0
    iget-boolean v3, p0, Lxb/g$c;->f:Z

    .line 73
    .line 74
    iget-object v4, p0, Lxb/g$c;->b:Lcc/e;

    .line 75
    .line 76
    invoke-virtual {v4}, Lcc/e;->size()J

    .line 77
    .line 78
    .line 79
    move-result-wide v4

    .line 80
    add-long/2addr v4, p2

    .line 81
    iget-wide v6, p0, Lxb/g$c;->e:J

    .line 82
    .line 83
    cmp-long v4, v4, v6

    .line 84
    .line 85
    const/4 v5, 0x1

    .line 86
    const/4 v6, 0x0

    .line 87
    if-lez v4, :cond_2

    .line 88
    .line 89
    move v4, v5

    .line 90
    goto :goto_1

    .line 91
    :cond_2
    move v4, v6

    .line 92
    :goto_1
    sget-object v7, Lkotlin/u;->a:Lkotlin/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 93
    .line 94
    monitor-exit v2

    .line 95
    if-eqz v4, :cond_3

    .line 96
    .line 97
    invoke-interface {p1, p2, p3}, Lcc/g;->skip(J)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lxb/g$c;->g:Lxb/g;

    .line 101
    .line 102
    sget-object p2, Lokhttp3/internal/http2/ErrorCode;->FLOW_CONTROL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 103
    .line 104
    invoke-virtual {p1, p2}, Lxb/g;->f(Lokhttp3/internal/http2/ErrorCode;)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_3
    if-eqz v3, :cond_4

    .line 109
    .line 110
    invoke-interface {p1, p2, p3}, Lcc/g;->skip(J)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_4
    iget-object v2, p0, Lxb/g$c;->a:Lcc/e;

    .line 115
    .line 116
    invoke-interface {p1, v2, p2, p3}, Lcc/a0;->u(Lcc/e;J)J

    .line 117
    .line 118
    .line 119
    move-result-wide v2

    .line 120
    const-wide/16 v7, -0x1

    .line 121
    .line 122
    cmp-long v4, v2, v7

    .line 123
    .line 124
    if-eqz v4, :cond_9

    .line 125
    .line 126
    sub-long/2addr p2, v2

    .line 127
    iget-object v2, p0, Lxb/g$c;->g:Lxb/g;

    .line 128
    .line 129
    monitor-enter v2

    .line 130
    :try_start_1
    iget-boolean v3, p0, Lxb/g$c;->d:Z

    .line 131
    .line 132
    if-eqz v3, :cond_5

    .line 133
    .line 134
    iget-object v3, p0, Lxb/g$c;->a:Lcc/e;

    .line 135
    .line 136
    invoke-virtual {v3}, Lcc/e;->size()J

    .line 137
    .line 138
    .line 139
    move-result-wide v3

    .line 140
    iget-object v5, p0, Lxb/g$c;->a:Lcc/e;

    .line 141
    .line 142
    invoke-virtual {v5}, Lcc/e;->d()V

    .line 143
    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_5
    iget-object v3, p0, Lxb/g$c;->b:Lcc/e;

    .line 147
    .line 148
    invoke-virtual {v3}, Lcc/e;->size()J

    .line 149
    .line 150
    .line 151
    move-result-wide v3

    .line 152
    cmp-long v3, v3, v0

    .line 153
    .line 154
    if-nez v3, :cond_6

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_6
    move v5, v6

    .line 158
    :goto_2
    iget-object v3, p0, Lxb/g$c;->b:Lcc/e;

    .line 159
    .line 160
    iget-object v4, p0, Lxb/g$c;->a:Lcc/e;

    .line 161
    .line 162
    invoke-virtual {v3, v4}, Lcc/e;->z0(Lcc/a0;)J

    .line 163
    .line 164
    .line 165
    if-eqz v5, :cond_8

    .line 166
    .line 167
    iget-object v3, p0, Lxb/g$c;->g:Lxb/g;

    .line 168
    .line 169
    if-eqz v3, :cond_7

    .line 170
    .line 171
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 172
    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_7
    new-instance p1, Lkotlin/TypeCastException;

    .line 176
    .line 177
    const-string p2, "null cannot be cast to non-null type java.lang.Object"

    .line 178
    .line 179
    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    :cond_8
    :goto_3
    move-wide v3, v0

    .line 184
    :goto_4
    monitor-exit v2

    .line 185
    cmp-long v0, v3, v0

    .line 186
    .line 187
    if-lez v0, :cond_1

    .line 188
    .line 189
    invoke-direct {p0, v3, v4}, Lxb/g$c;->q(J)V

    .line 190
    .line 191
    .line 192
    goto/16 :goto_0

    .line 193
    .line 194
    :catchall_0
    move-exception p1

    .line 195
    monitor-exit v2

    .line 196
    throw p1

    .line 197
    :cond_9
    new-instance p1, Ljava/io/EOFException;

    .line 198
    .line 199
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 200
    .line 201
    .line 202
    throw p1

    .line 203
    :catchall_1
    move-exception p1

    .line 204
    monitor-exit v2

    .line 205
    throw p1

    .line 206
    :cond_a
    return-void
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
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
.end method

.method public final j(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lxb/g$c;->f:Z

    .line 2
    .line 3
    return-void
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
.end method

.method public final m(Lokhttp3/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxb/g$c;->c:Lokhttp3/s;

    .line 2
    .line 3
    return-void
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
.end method

.method public u(Lcc/e;J)J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-wide/from16 v2, p2

    .line 6
    .line 7
    const-string v4, "sink"

    .line 8
    .line 9
    invoke-static {v0, v4}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-wide/16 v4, 0x0

    .line 13
    .line 14
    cmp-long v6, v2, v4

    .line 15
    .line 16
    if-ltz v6, :cond_0

    .line 17
    .line 18
    const/4 v6, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v6, 0x0

    .line 21
    :goto_0
    if-eqz v6, :cond_b

    .line 22
    .line 23
    :goto_1
    const/4 v6, 0x0

    .line 24
    iget-object v9, v1, Lxb/g$c;->g:Lxb/g;

    .line 25
    .line 26
    monitor-enter v9

    .line 27
    :try_start_0
    iget-object v10, v1, Lxb/g$c;->g:Lxb/g;

    .line 28
    .line 29
    invoke-virtual {v10}, Lxb/g;->m()Lxb/g$d;

    .line 30
    .line 31
    .line 32
    move-result-object v10

    .line 33
    invoke-virtual {v10}, Lcc/d;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 34
    .line 35
    .line 36
    :try_start_1
    iget-object v10, v1, Lxb/g$c;->g:Lxb/g;

    .line 37
    .line 38
    invoke-virtual {v10}, Lxb/g;->h()Lokhttp3/internal/http2/ErrorCode;

    .line 39
    .line 40
    .line 41
    move-result-object v10

    .line 42
    if-eqz v10, :cond_3

    .line 43
    .line 44
    iget-object v6, v1, Lxb/g$c;->g:Lxb/g;

    .line 45
    .line 46
    invoke-virtual {v6}, Lxb/g;->i()Ljava/io/IOException;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    if-eqz v6, :cond_1

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_1
    new-instance v6, Lokhttp3/internal/http2/StreamResetException;

    .line 54
    .line 55
    iget-object v10, v1, Lxb/g$c;->g:Lxb/g;

    .line 56
    .line 57
    invoke-virtual {v10}, Lxb/g;->h()Lokhttp3/internal/http2/ErrorCode;

    .line 58
    .line 59
    .line 60
    move-result-object v10

    .line 61
    if-nez v10, :cond_2

    .line 62
    .line 63
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-direct {v6, v10}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    .line 67
    .line 68
    .line 69
    :cond_3
    :goto_2
    iget-boolean v10, v1, Lxb/g$c;->d:Z

    .line 70
    .line 71
    if-nez v10, :cond_a

    .line 72
    .line 73
    iget-object v10, v1, Lxb/g$c;->b:Lcc/e;

    .line 74
    .line 75
    invoke-virtual {v10}, Lcc/e;->size()J

    .line 76
    .line 77
    .line 78
    move-result-wide v10

    .line 79
    cmp-long v10, v10, v4

    .line 80
    .line 81
    const-wide/16 v11, -0x1

    .line 82
    .line 83
    if-lez v10, :cond_4

    .line 84
    .line 85
    iget-object v10, v1, Lxb/g$c;->b:Lcc/e;

    .line 86
    .line 87
    invoke-virtual {v10}, Lcc/e;->size()J

    .line 88
    .line 89
    .line 90
    move-result-wide v13

    .line 91
    invoke-static {v2, v3, v13, v14}, Ljava/lang/Math;->min(JJ)J

    .line 92
    .line 93
    .line 94
    move-result-wide v13

    .line 95
    invoke-virtual {v10, v0, v13, v14}, Lcc/e;->u(Lcc/e;J)J

    .line 96
    .line 97
    .line 98
    move-result-wide v13

    .line 99
    iget-object v10, v1, Lxb/g$c;->g:Lxb/g;

    .line 100
    .line 101
    invoke-virtual {v10}, Lxb/g;->l()J

    .line 102
    .line 103
    .line 104
    move-result-wide v15

    .line 105
    add-long v4, v15, v13

    .line 106
    .line 107
    invoke-virtual {v10, v4, v5}, Lxb/g;->A(J)V

    .line 108
    .line 109
    .line 110
    iget-object v4, v1, Lxb/g$c;->g:Lxb/g;

    .line 111
    .line 112
    invoke-virtual {v4}, Lxb/g;->l()J

    .line 113
    .line 114
    .line 115
    move-result-wide v4

    .line 116
    iget-object v10, v1, Lxb/g$c;->g:Lxb/g;

    .line 117
    .line 118
    invoke-virtual {v10}, Lxb/g;->k()J

    .line 119
    .line 120
    .line 121
    move-result-wide v15

    .line 122
    sub-long/2addr v4, v15

    .line 123
    if-nez v6, :cond_6

    .line 124
    .line 125
    iget-object v10, v1, Lxb/g$c;->g:Lxb/g;

    .line 126
    .line 127
    invoke-virtual {v10}, Lxb/g;->g()Lxb/d;

    .line 128
    .line 129
    .line 130
    move-result-object v10

    .line 131
    invoke-virtual {v10}, Lxb/d;->u0()Lxb/k;

    .line 132
    .line 133
    .line 134
    move-result-object v10

    .line 135
    invoke-virtual {v10}, Lxb/k;->c()I

    .line 136
    .line 137
    .line 138
    move-result v10

    .line 139
    div-int/lit8 v10, v10, 0x2

    .line 140
    .line 141
    int-to-long v7, v10

    .line 142
    cmp-long v7, v4, v7

    .line 143
    .line 144
    if-ltz v7, :cond_6

    .line 145
    .line 146
    iget-object v7, v1, Lxb/g$c;->g:Lxb/g;

    .line 147
    .line 148
    invoke-virtual {v7}, Lxb/g;->g()Lxb/d;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    iget-object v8, v1, Lxb/g$c;->g:Lxb/g;

    .line 153
    .line 154
    invoke-virtual {v8}, Lxb/g;->j()I

    .line 155
    .line 156
    .line 157
    move-result v8

    .line 158
    invoke-virtual {v7, v8, v4, v5}, Lxb/d;->V0(IJ)V

    .line 159
    .line 160
    .line 161
    iget-object v4, v1, Lxb/g$c;->g:Lxb/g;

    .line 162
    .line 163
    invoke-virtual {v4}, Lxb/g;->l()J

    .line 164
    .line 165
    .line 166
    move-result-wide v7

    .line 167
    invoke-virtual {v4, v7, v8}, Lxb/g;->z(J)V

    .line 168
    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_4
    iget-boolean v4, v1, Lxb/g$c;->f:Z

    .line 172
    .line 173
    if-nez v4, :cond_5

    .line 174
    .line 175
    if-nez v6, :cond_5

    .line 176
    .line 177
    iget-object v4, v1, Lxb/g$c;->g:Lxb/g;

    .line 178
    .line 179
    invoke-virtual {v4}, Lxb/g;->D()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    .line 181
    .line 182
    move-wide v13, v11

    .line 183
    const/4 v4, 0x1

    .line 184
    goto :goto_4

    .line 185
    :cond_5
    move-wide v13, v11

    .line 186
    :cond_6
    :goto_3
    const/4 v4, 0x0

    .line 187
    :goto_4
    :try_start_2
    iget-object v5, v1, Lxb/g$c;->g:Lxb/g;

    .line 188
    .line 189
    invoke-virtual {v5}, Lxb/g;->m()Lxb/g$d;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    invoke-virtual {v5}, Lxb/g$d;->y()V

    .line 194
    .line 195
    .line 196
    sget-object v5, Lkotlin/u;->a:Lkotlin/u;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 197
    .line 198
    monitor-exit v9

    .line 199
    if-eqz v4, :cond_7

    .line 200
    .line 201
    const-wide/16 v4, 0x0

    .line 202
    .line 203
    goto/16 :goto_1

    .line 204
    .line 205
    :cond_7
    cmp-long v0, v13, v11

    .line 206
    .line 207
    if-eqz v0, :cond_8

    .line 208
    .line 209
    invoke-direct {v1, v13, v14}, Lxb/g$c;->q(J)V

    .line 210
    .line 211
    .line 212
    return-wide v13

    .line 213
    :cond_8
    if-nez v6, :cond_9

    .line 214
    .line 215
    return-wide v11

    .line 216
    :cond_9
    throw v6

    .line 217
    :cond_a
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    .line 218
    .line 219
    const-string v2, "stream closed"

    .line 220
    .line 221
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 225
    :catchall_0
    move-exception v0

    .line 226
    :try_start_4
    iget-object v2, v1, Lxb/g$c;->g:Lxb/g;

    .line 227
    .line 228
    invoke-virtual {v2}, Lxb/g;->m()Lxb/g$d;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    invoke-virtual {v2}, Lxb/g$d;->y()V

    .line 233
    .line 234
    .line 235
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 236
    :catchall_1
    move-exception v0

    .line 237
    monitor-exit v9

    .line 238
    throw v0

    .line 239
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .line 243
    .line 244
    const-string v4, "byteCount < 0: "

    .line 245
    .line 246
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 257
    .line 258
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    throw v2
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
.end method

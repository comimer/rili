.class public final Lokhttp3/w;
.super Lokhttp3/z;
.source "MultipartBody.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/w$c;,
        Lokhttp3/w$a;,
        Lokhttp3/w$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0018\u0000 %2\u00020\u0001:\u0003\n\t\u000fB\'\u0008\u0000\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u0012\u0006\u0010\u0017\u001a\u00020\u0008\u0012\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0019\u00a2\u0006\u0004\u0008#\u0010$J\u001a\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\t\u001a\u00020\u0008H\u0016J\u0008\u0010\n\u001a\u00020\u0006H\u0016J\u0010\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\u000e\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\rR\u0016\u0010\u0011\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0017\u0010\u0017\u001a\u00020\u00088\u0007\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\r\u001a\u0004\u0008\u0017\u0010\u0018R\u001d\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00198\u0007\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001eR\u0011\u0010\"\u001a\u00020\u001f8G\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!\u00a8\u0006&"
    }
    d2 = {
        "Lokhttp3/w;",
        "Lokhttp3/z;",
        "Lcc/f;",
        "sink",
        "",
        "countBytes",
        "",
        "i",
        "Lokhttp3/v;",
        "b",
        "a",
        "Lkotlin/u;",
        "g",
        "Lokhttp3/v;",
        "contentType",
        "c",
        "J",
        "contentLength",
        "Lokio/ByteString;",
        "d",
        "Lokio/ByteString;",
        "boundaryByteString",
        "e",
        "type",
        "()Lokhttp3/v;",
        "",
        "Lokhttp3/w$c;",
        "f",
        "Ljava/util/List;",
        "parts",
        "()Ljava/util/List;",
        "",
        "h",
        "()Ljava/lang/String;",
        "boundary",
        "<init>",
        "(Lokio/ByteString;Lokhttp3/v;Ljava/util/List;)V",
        "o",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final g:Lokhttp3/v;

.field public static final h:Lokhttp3/v;

.field public static final i:Lokhttp3/v;

.field public static final j:Lokhttp3/v;

.field public static final k:Lokhttp3/v;

.field private static final l:[B

.field private static final m:[B

.field private static final n:[B

.field public static final o:Lokhttp3/w$b;


# instance fields
.field private final b:Lokhttp3/v;

.field private c:J

.field private final d:Lokio/ByteString;

.field private final e:Lokhttp3/v;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/w$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lokhttp3/w$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lokhttp3/w$b;-><init>(Lkotlin/jvm/internal/o;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lokhttp3/w;->o:Lokhttp3/w$b;

    .line 8
    .line 9
    sget-object v0, Lokhttp3/v;->g:Lokhttp3/v$a;

    .line 10
    .line 11
    const-string v1, "multipart/mixed"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lokhttp3/v$a;->a(Ljava/lang/String;)Lokhttp3/v;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sput-object v1, Lokhttp3/w;->g:Lokhttp3/v;

    .line 18
    .line 19
    const-string v1, "multipart/alternative"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lokhttp3/v$a;->a(Ljava/lang/String;)Lokhttp3/v;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    sput-object v1, Lokhttp3/w;->h:Lokhttp3/v;

    .line 26
    .line 27
    const-string v1, "multipart/digest"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lokhttp3/v$a;->a(Ljava/lang/String;)Lokhttp3/v;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    sput-object v1, Lokhttp3/w;->i:Lokhttp3/v;

    .line 34
    .line 35
    const-string v1, "multipart/parallel"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lokhttp3/v$a;->a(Ljava/lang/String;)Lokhttp3/v;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    sput-object v1, Lokhttp3/w;->j:Lokhttp3/v;

    .line 42
    .line 43
    const-string v1, "multipart/form-data"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lokhttp3/v$a;->a(Ljava/lang/String;)Lokhttp3/v;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sput-object v0, Lokhttp3/w;->k:Lokhttp3/v;

    .line 50
    .line 51
    const/4 v0, 0x2

    .line 52
    new-array v1, v0, [B

    .line 53
    .line 54
    const/16 v2, 0x3a

    .line 55
    .line 56
    int-to-byte v2, v2

    .line 57
    const/4 v3, 0x0

    .line 58
    aput-byte v2, v1, v3

    .line 59
    .line 60
    const/16 v2, 0x20

    .line 61
    .line 62
    int-to-byte v2, v2

    .line 63
    const/4 v4, 0x1

    .line 64
    aput-byte v2, v1, v4

    .line 65
    .line 66
    sput-object v1, Lokhttp3/w;->l:[B

    .line 67
    .line 68
    new-array v1, v0, [B

    .line 69
    .line 70
    const/16 v2, 0xd

    .line 71
    .line 72
    int-to-byte v2, v2

    .line 73
    aput-byte v2, v1, v3

    .line 74
    .line 75
    const/16 v2, 0xa

    .line 76
    .line 77
    int-to-byte v2, v2

    .line 78
    aput-byte v2, v1, v4

    .line 79
    .line 80
    sput-object v1, Lokhttp3/w;->m:[B

    .line 81
    .line 82
    new-array v0, v0, [B

    .line 83
    .line 84
    const/16 v1, 0x2d

    .line 85
    .line 86
    int-to-byte v1, v1

    .line 87
    aput-byte v1, v0, v3

    .line 88
    .line 89
    aput-byte v1, v0, v4

    .line 90
    .line 91
    sput-object v0, Lokhttp3/w;->n:[B

    .line 92
    .line 93
    return-void
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

.method public constructor <init>(Lokio/ByteString;Lokhttp3/v;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/ByteString;",
            "Lokhttp3/v;",
            "Ljava/util/List<",
            "Lokhttp3/w$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "boundaryByteString"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "type"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "parts"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lokhttp3/z;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lokhttp3/w;->d:Lokio/ByteString;

    .line 20
    .line 21
    iput-object p2, p0, Lokhttp3/w;->e:Lokhttp3/v;

    .line 22
    .line 23
    iput-object p3, p0, Lokhttp3/w;->f:Ljava/util/List;

    .line 24
    .line 25
    sget-object p1, Lokhttp3/v;->g:Lokhttp3/v$a;

    .line 26
    .line 27
    new-instance p3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p2, "; boundary="

    .line 36
    .line 37
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lokhttp3/w;->h()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p1, p2}, Lokhttp3/v$a;->a(Ljava/lang/String;)Lokhttp3/v;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Lokhttp3/w;->b:Lokhttp3/v;

    .line 56
    .line 57
    const-wide/16 p1, -0x1

    .line 58
    .line 59
    iput-wide p1, p0, Lokhttp3/w;->c:J

    .line 60
    .line 61
    return-void
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

.method private final i(Lcc/f;Z)J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    new-instance p1, Lcc/e;

    .line 4
    .line 5
    invoke-direct {p1}, Lcc/e;-><init>()V

    .line 6
    .line 7
    .line 8
    move-object v0, p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Lokhttp3/w;->f:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    const-wide/16 v3, 0x0

    .line 19
    .line 20
    move v5, v2

    .line 21
    :goto_1
    if-ge v5, v1, :cond_8

    .line 22
    .line 23
    iget-object v6, p0, Lokhttp3/w;->f:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    check-cast v6, Lokhttp3/w$c;

    .line 30
    .line 31
    invoke-virtual {v6}, Lokhttp3/w$c;->b()Lokhttp3/s;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    invoke-virtual {v6}, Lokhttp3/w$c;->a()Lokhttp3/z;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    if-nez p1, :cond_1

    .line 40
    .line 41
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 42
    .line 43
    .line 44
    :cond_1
    sget-object v8, Lokhttp3/w;->n:[B

    .line 45
    .line 46
    invoke-interface {p1, v8}, Lcc/f;->write([B)Lcc/f;

    .line 47
    .line 48
    .line 49
    iget-object v8, p0, Lokhttp3/w;->d:Lokio/ByteString;

    .line 50
    .line 51
    invoke-interface {p1, v8}, Lcc/f;->g0(Lokio/ByteString;)Lcc/f;

    .line 52
    .line 53
    .line 54
    sget-object v8, Lokhttp3/w;->m:[B

    .line 55
    .line 56
    invoke-interface {p1, v8}, Lcc/f;->write([B)Lcc/f;

    .line 57
    .line 58
    .line 59
    if-eqz v7, :cond_2

    .line 60
    .line 61
    invoke-virtual {v7}, Lokhttp3/s;->size()I

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    move v9, v2

    .line 66
    :goto_2
    if-ge v9, v8, :cond_2

    .line 67
    .line 68
    invoke-virtual {v7, v9}, Lokhttp3/s;->h(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v10

    .line 72
    invoke-interface {p1, v10}, Lcc/f;->J(Ljava/lang/String;)Lcc/f;

    .line 73
    .line 74
    .line 75
    move-result-object v10

    .line 76
    sget-object v11, Lokhttp3/w;->l:[B

    .line 77
    .line 78
    invoke-interface {v10, v11}, Lcc/f;->write([B)Lcc/f;

    .line 79
    .line 80
    .line 81
    move-result-object v10

    .line 82
    invoke-virtual {v7, v9}, Lokhttp3/s;->l(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v11

    .line 86
    invoke-interface {v10, v11}, Lcc/f;->J(Ljava/lang/String;)Lcc/f;

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    sget-object v11, Lokhttp3/w;->m:[B

    .line 91
    .line 92
    invoke-interface {v10, v11}, Lcc/f;->write([B)Lcc/f;

    .line 93
    .line 94
    .line 95
    add-int/lit8 v9, v9, 0x1

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_2
    invoke-virtual {v6}, Lokhttp3/z;->b()Lokhttp3/v;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    if-eqz v7, :cond_3

    .line 103
    .line 104
    const-string v8, "Content-Type: "

    .line 105
    .line 106
    invoke-interface {p1, v8}, Lcc/f;->J(Ljava/lang/String;)Lcc/f;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    invoke-virtual {v7}, Lokhttp3/v;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    invoke-interface {v8, v7}, Lcc/f;->J(Ljava/lang/String;)Lcc/f;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    sget-object v8, Lokhttp3/w;->m:[B

    .line 119
    .line 120
    invoke-interface {v7, v8}, Lcc/f;->write([B)Lcc/f;

    .line 121
    .line 122
    .line 123
    :cond_3
    invoke-virtual {v6}, Lokhttp3/z;->a()J

    .line 124
    .line 125
    .line 126
    move-result-wide v7

    .line 127
    const-wide/16 v9, -0x1

    .line 128
    .line 129
    cmp-long v11, v7, v9

    .line 130
    .line 131
    if-eqz v11, :cond_4

    .line 132
    .line 133
    const-string v9, "Content-Length: "

    .line 134
    .line 135
    invoke-interface {p1, v9}, Lcc/f;->J(Ljava/lang/String;)Lcc/f;

    .line 136
    .line 137
    .line 138
    move-result-object v9

    .line 139
    invoke-interface {v9, v7, v8}, Lcc/f;->k0(J)Lcc/f;

    .line 140
    .line 141
    .line 142
    move-result-object v9

    .line 143
    sget-object v10, Lokhttp3/w;->m:[B

    .line 144
    .line 145
    invoke-interface {v9, v10}, Lcc/f;->write([B)Lcc/f;

    .line 146
    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_4
    if-eqz p2, :cond_6

    .line 150
    .line 151
    if-nez v0, :cond_5

    .line 152
    .line 153
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 154
    .line 155
    .line 156
    :cond_5
    invoke-virtual {v0}, Lcc/e;->d()V

    .line 157
    .line 158
    .line 159
    return-wide v9

    .line 160
    :cond_6
    :goto_3
    sget-object v9, Lokhttp3/w;->m:[B

    .line 161
    .line 162
    invoke-interface {p1, v9}, Lcc/f;->write([B)Lcc/f;

    .line 163
    .line 164
    .line 165
    if-eqz p2, :cond_7

    .line 166
    .line 167
    add-long/2addr v3, v7

    .line 168
    goto :goto_4

    .line 169
    :cond_7
    invoke-virtual {v6, p1}, Lokhttp3/z;->g(Lcc/f;)V

    .line 170
    .line 171
    .line 172
    :goto_4
    invoke-interface {p1, v9}, Lcc/f;->write([B)Lcc/f;

    .line 173
    .line 174
    .line 175
    add-int/lit8 v5, v5, 0x1

    .line 176
    .line 177
    goto/16 :goto_1

    .line 178
    .line 179
    :cond_8
    if-nez p1, :cond_9

    .line 180
    .line 181
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 182
    .line 183
    .line 184
    :cond_9
    sget-object v1, Lokhttp3/w;->n:[B

    .line 185
    .line 186
    invoke-interface {p1, v1}, Lcc/f;->write([B)Lcc/f;

    .line 187
    .line 188
    .line 189
    iget-object v2, p0, Lokhttp3/w;->d:Lokio/ByteString;

    .line 190
    .line 191
    invoke-interface {p1, v2}, Lcc/f;->g0(Lokio/ByteString;)Lcc/f;

    .line 192
    .line 193
    .line 194
    invoke-interface {p1, v1}, Lcc/f;->write([B)Lcc/f;

    .line 195
    .line 196
    .line 197
    sget-object v1, Lokhttp3/w;->m:[B

    .line 198
    .line 199
    invoke-interface {p1, v1}, Lcc/f;->write([B)Lcc/f;

    .line 200
    .line 201
    .line 202
    if-eqz p2, :cond_b

    .line 203
    .line 204
    if-nez v0, :cond_a

    .line 205
    .line 206
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 207
    .line 208
    .line 209
    :cond_a
    invoke-virtual {v0}, Lcc/e;->size()J

    .line 210
    .line 211
    .line 212
    move-result-wide p1

    .line 213
    add-long/2addr v3, p1

    .line 214
    invoke-virtual {v0}, Lcc/e;->d()V

    .line 215
    .line 216
    .line 217
    :cond_b
    return-wide v3
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


# virtual methods
.method public a()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lokhttp3/w;->c:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {p0, v0, v1}, Lokhttp3/w;->i(Lcc/f;Z)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iput-wide v0, p0, Lokhttp3/w;->c:J

    .line 16
    .line 17
    :cond_0
    return-wide v0
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

.method public b()Lokhttp3/v;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/w;->b:Lokhttp3/v;

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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public g(Lcc/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, v0}, Lokhttp3/w;->i(Lcc/f;Z)J

    .line 8
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

.method public final h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/w;->d:Lokio/ByteString;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

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

.class public final Lxb/b$b;
.super Ljava/lang/Object;
.source "Hpack.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxb/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B%\u0008\u0007\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0008\u0010\n\u001a\u00020\u0002H\u0002J\u0014\u0010\r\u001a\u00020\u00022\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000bJ\u001e\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0004J\u000e\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012J\u000e\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0004\u00a8\u0006\u001d"
    }
    d2 = {
        "Lxb/b$b;",
        "",
        "Lkotlin/u;",
        "b",
        "",
        "bytesToRecover",
        "c",
        "Lxb/a;",
        "entry",
        "d",
        "a",
        "",
        "headerBlock",
        "g",
        "value",
        "prefixMask",
        "bits",
        "h",
        "Lokio/ByteString;",
        "data",
        "f",
        "headerTableSizeSetting",
        "e",
        "",
        "useCompression",
        "Lcc/e;",
        "out",
        "<init>",
        "(IZLcc/e;)V",
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
.field private a:I

.field private b:Z

.field public c:I

.field public d:[Lxb/a;

.field private e:I

.field public f:I

.field public g:I

.field public h:I

.field private final i:Z

.field private final j:Lcc/e;


# direct methods
.method public constructor <init>(IZLcc/e;)V
    .locals 1

    const-string v0, "out"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lxb/b$b;->h:I

    iput-boolean p2, p0, Lxb/b$b;->i:Z

    iput-object p3, p0, Lxb/b$b;->j:Lcc/e;

    const p2, 0x7fffffff

    .line 2
    iput p2, p0, Lxb/b$b;->a:I

    .line 3
    iput p1, p0, Lxb/b$b;->c:I

    const/16 p1, 0x8

    new-array p1, p1, [Lxb/a;

    .line 4
    iput-object p1, p0, Lxb/b$b;->d:[Lxb/a;

    .line 5
    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lxb/b$b;->e:I

    return-void
.end method

.method public synthetic constructor <init>(IZLcc/e;ILkotlin/jvm/internal/o;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/16 p1, 0x1000

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p2, 0x1

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lxb/b$b;-><init>(IZLcc/e;)V

    return-void
.end method

.method private final a()V
    .locals 2

    .line 1
    iget v0, p0, Lxb/b$b;->c:I

    .line 2
    .line 3
    iget v1, p0, Lxb/b$b;->g:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lxb/b$b;->b()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sub-int/2addr v1, v0

    .line 14
    invoke-direct {p0, v1}, Lxb/b$b;->c(I)I

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    return-void
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

.method private final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lxb/b$b;->d:[Lxb/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x6

    .line 7
    const/4 v5, 0x0

    .line 8
    invoke-static/range {v0 .. v5}, Lkotlin/collections/j;->l([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lxb/b$b;->d:[Lxb/a;

    .line 12
    .line 13
    array-length v0, v0

    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    iput v0, p0, Lxb/b$b;->e:I

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lxb/b$b;->f:I

    .line 20
    .line 21
    iput v0, p0, Lxb/b$b;->g:I

    .line 22
    .line 23
    return-void
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method private final c(I)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-lez p1, :cond_3

    .line 3
    .line 4
    iget-object v1, p0, Lxb/b$b;->d:[Lxb/a;

    .line 5
    .line 6
    array-length v1, v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    :goto_0
    iget v2, p0, Lxb/b$b;->e:I

    .line 10
    .line 11
    if-lt v1, v2, :cond_2

    .line 12
    .line 13
    if-lez p1, :cond_2

    .line 14
    .line 15
    iget-object v2, p0, Lxb/b$b;->d:[Lxb/a;

    .line 16
    .line 17
    aget-object v2, v2, v1

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget v2, v2, Lxb/a;->a:I

    .line 25
    .line 26
    sub-int/2addr p1, v2

    .line 27
    iget v2, p0, Lxb/b$b;->g:I

    .line 28
    .line 29
    iget-object v3, p0, Lxb/b$b;->d:[Lxb/a;

    .line 30
    .line 31
    aget-object v3, v3, v1

    .line 32
    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget v3, v3, Lxb/a;->a:I

    .line 39
    .line 40
    sub-int/2addr v2, v3

    .line 41
    iput v2, p0, Lxb/b$b;->g:I

    .line 42
    .line 43
    iget v2, p0, Lxb/b$b;->f:I

    .line 44
    .line 45
    add-int/lit8 v2, v2, -0x1

    .line 46
    .line 47
    iput v2, p0, Lxb/b$b;->f:I

    .line 48
    .line 49
    add-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    add-int/lit8 v1, v1, -0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    iget-object p1, p0, Lxb/b$b;->d:[Lxb/a;

    .line 55
    .line 56
    add-int/lit8 v1, v2, 0x1

    .line 57
    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    add-int/2addr v2, v0

    .line 61
    iget v3, p0, Lxb/b$b;->f:I

    .line 62
    .line 63
    invoke-static {p1, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lxb/b$b;->d:[Lxb/a;

    .line 67
    .line 68
    iget v1, p0, Lxb/b$b;->e:I

    .line 69
    .line 70
    add-int/lit8 v2, v1, 0x1

    .line 71
    .line 72
    add-int/lit8 v1, v1, 0x1

    .line 73
    .line 74
    add-int/2addr v1, v0

    .line 75
    const/4 v3, 0x0

    .line 76
    invoke-static {p1, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iget p1, p0, Lxb/b$b;->e:I

    .line 80
    .line 81
    add-int/2addr p1, v0

    .line 82
    iput p1, p0, Lxb/b$b;->e:I

    .line 83
    .line 84
    :cond_3
    return v0
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

.method private final d(Lxb/a;)V
    .locals 6

    .line 1
    iget v0, p1, Lxb/a;->a:I

    .line 2
    .line 3
    iget v1, p0, Lxb/b$b;->c:I

    .line 4
    .line 5
    if-le v0, v1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lxb/b$b;->b()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget v2, p0, Lxb/b$b;->g:I

    .line 12
    .line 13
    add-int/2addr v2, v0

    .line 14
    sub-int/2addr v2, v1

    .line 15
    invoke-direct {p0, v2}, Lxb/b$b;->c(I)I

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lxb/b$b;->f:I

    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    iget-object v2, p0, Lxb/b$b;->d:[Lxb/a;

    .line 23
    .line 24
    array-length v3, v2

    .line 25
    if-le v1, v3, :cond_1

    .line 26
    .line 27
    array-length v1, v2

    .line 28
    mul-int/lit8 v1, v1, 0x2

    .line 29
    .line 30
    new-array v1, v1, [Lxb/a;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    array-length v4, v2

    .line 34
    array-length v5, v2

    .line 35
    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lxb/b$b;->d:[Lxb/a;

    .line 39
    .line 40
    array-length v2, v2

    .line 41
    add-int/lit8 v2, v2, -0x1

    .line 42
    .line 43
    iput v2, p0, Lxb/b$b;->e:I

    .line 44
    .line 45
    iput-object v1, p0, Lxb/b$b;->d:[Lxb/a;

    .line 46
    .line 47
    :cond_1
    iget v1, p0, Lxb/b$b;->e:I

    .line 48
    .line 49
    add-int/lit8 v2, v1, -0x1

    .line 50
    .line 51
    iput v2, p0, Lxb/b$b;->e:I

    .line 52
    .line 53
    iget-object v2, p0, Lxb/b$b;->d:[Lxb/a;

    .line 54
    .line 55
    aput-object p1, v2, v1

    .line 56
    .line 57
    iget p1, p0, Lxb/b$b;->f:I

    .line 58
    .line 59
    add-int/lit8 p1, p1, 0x1

    .line 60
    .line 61
    iput p1, p0, Lxb/b$b;->f:I

    .line 62
    .line 63
    iget p1, p0, Lxb/b$b;->g:I

    .line 64
    .line 65
    add-int/2addr p1, v0

    .line 66
    iput p1, p0, Lxb/b$b;->g:I

    .line 67
    .line 68
    return-void
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
.method public final e(I)V
    .locals 1

    .line 1
    iput p1, p0, Lxb/b$b;->h:I

    .line 2
    .line 3
    const/16 v0, 0x4000

    .line 4
    .line 5
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget v0, p0, Lxb/b$b;->c:I

    .line 10
    .line 11
    if-ne v0, p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    if-ge p1, v0, :cond_1

    .line 15
    .line 16
    iget v0, p0, Lxb/b$b;->a:I

    .line 17
    .line 18
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p0, Lxb/b$b;->a:I

    .line 23
    .line 24
    :cond_1
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lxb/b$b;->b:Z

    .line 26
    .line 27
    iput p1, p0, Lxb/b$b;->c:I

    .line 28
    .line 29
    invoke-direct {p0}, Lxb/b$b;->a()V

    .line 30
    .line 31
    .line 32
    return-void
    .line 33
.end method

.method public final f(Lokio/ByteString;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lxb/b$b;->i:Z

    .line 7
    .line 8
    const/16 v1, 0x7f

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Lxb/i;->d:Lxb/i;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lxb/i;->d(Lokio/ByteString;)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-ge v2, v3, :cond_0

    .line 23
    .line 24
    new-instance v2, Lcc/e;

    .line 25
    .line 26
    invoke-direct {v2}, Lcc/e;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1, v2}, Lxb/i;->c(Lokio/ByteString;Lcc/f;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Lcc/e;->c0()Lokio/ByteString;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/16 v2, 0x80

    .line 41
    .line 42
    invoke-virtual {p0, v0, v1, v2}, Lxb/b$b;->h(III)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lxb/b$b;->j:Lcc/e;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lcc/e;->w0(Lokio/ByteString;)Lcc/e;

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const/4 v2, 0x0

    .line 56
    invoke-virtual {p0, v0, v1, v2}, Lxb/b$b;->h(III)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lxb/b$b;->j:Lcc/e;

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Lcc/e;->w0(Lokio/ByteString;)Lcc/e;

    .line 62
    .line 63
    .line 64
    :goto_0
    return-void
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
.end method

.method public final g(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lxb/a;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "headerBlock"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lxb/b$b;->b:Z

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget v0, p0, Lxb/b$b;->a:I

    .line 12
    .line 13
    iget v2, p0, Lxb/b$b;->c:I

    .line 14
    .line 15
    const/16 v3, 0x20

    .line 16
    .line 17
    const/16 v4, 0x1f

    .line 18
    .line 19
    if-ge v0, v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, v0, v4, v3}, Lxb/b$b;->h(III)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iput-boolean v1, p0, Lxb/b$b;->b:Z

    .line 25
    .line 26
    const v0, 0x7fffffff

    .line 27
    .line 28
    .line 29
    iput v0, p0, Lxb/b$b;->a:I

    .line 30
    .line 31
    iget v0, p0, Lxb/b$b;->c:I

    .line 32
    .line 33
    invoke-virtual {p0, v0, v4, v3}, Lxb/b$b;->h(III)V

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    move v2, v1

    .line 41
    :goto_0
    if-ge v2, v0, :cond_e

    .line 42
    .line 43
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Lxb/a;

    .line 48
    .line 49
    iget-object v4, v3, Lxb/a;->b:Lokio/ByteString;

    .line 50
    .line 51
    invoke-virtual {v4}, Lokio/ByteString;->toAsciiLowercase()Lokio/ByteString;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    iget-object v5, v3, Lxb/a;->c:Lokio/ByteString;

    .line 56
    .line 57
    sget-object v6, Lxb/b;->c:Lxb/b;

    .line 58
    .line 59
    invoke-virtual {v6}, Lxb/b;->b()Ljava/util/Map;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    check-cast v7, Ljava/lang/Integer;

    .line 68
    .line 69
    const/4 v8, -0x1

    .line 70
    if-eqz v7, :cond_5

    .line 71
    .line 72
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    add-int/lit8 v7, v7, 0x1

    .line 77
    .line 78
    const/4 v9, 0x7

    .line 79
    const/4 v10, 0x2

    .line 80
    if-le v10, v7, :cond_2

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    if-lt v9, v7, :cond_4

    .line 84
    .line 85
    invoke-virtual {v6}, Lxb/b;->c()[Lxb/a;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    add-int/lit8 v10, v7, -0x1

    .line 90
    .line 91
    aget-object v9, v9, v10

    .line 92
    .line 93
    iget-object v9, v9, Lxb/a;->c:Lokio/ByteString;

    .line 94
    .line 95
    invoke-static {v9, v5}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    if-eqz v9, :cond_3

    .line 100
    .line 101
    move v6, v7

    .line 102
    goto :goto_2

    .line 103
    :cond_3
    invoke-virtual {v6}, Lxb/b;->c()[Lxb/a;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    aget-object v6, v6, v7

    .line 108
    .line 109
    iget-object v6, v6, Lxb/a;->c:Lokio/ByteString;

    .line 110
    .line 111
    invoke-static {v6, v5}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-eqz v6, :cond_4

    .line 116
    .line 117
    add-int/lit8 v6, v7, 0x1

    .line 118
    .line 119
    move v12, v7

    .line 120
    move v7, v6

    .line 121
    move v6, v12

    .line 122
    goto :goto_2

    .line 123
    :cond_4
    :goto_1
    move v6, v7

    .line 124
    move v7, v8

    .line 125
    goto :goto_2

    .line 126
    :cond_5
    move v6, v8

    .line 127
    move v7, v6

    .line 128
    :goto_2
    if-ne v7, v8, :cond_a

    .line 129
    .line 130
    iget v9, p0, Lxb/b$b;->e:I

    .line 131
    .line 132
    add-int/lit8 v9, v9, 0x1

    .line 133
    .line 134
    iget-object v10, p0, Lxb/b$b;->d:[Lxb/a;

    .line 135
    .line 136
    array-length v10, v10

    .line 137
    :goto_3
    if-ge v9, v10, :cond_a

    .line 138
    .line 139
    iget-object v11, p0, Lxb/b$b;->d:[Lxb/a;

    .line 140
    .line 141
    aget-object v11, v11, v9

    .line 142
    .line 143
    if-nez v11, :cond_6

    .line 144
    .line 145
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 146
    .line 147
    .line 148
    :cond_6
    iget-object v11, v11, Lxb/a;->b:Lokio/ByteString;

    .line 149
    .line 150
    invoke-static {v11, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v11

    .line 154
    if-eqz v11, :cond_9

    .line 155
    .line 156
    iget-object v11, p0, Lxb/b$b;->d:[Lxb/a;

    .line 157
    .line 158
    aget-object v11, v11, v9

    .line 159
    .line 160
    if-nez v11, :cond_7

    .line 161
    .line 162
    invoke-static {}, Lkotlin/jvm/internal/r;->r()V

    .line 163
    .line 164
    .line 165
    :cond_7
    iget-object v11, v11, Lxb/a;->c:Lokio/ByteString;

    .line 166
    .line 167
    invoke-static {v11, v5}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v11

    .line 171
    if-eqz v11, :cond_8

    .line 172
    .line 173
    iget v7, p0, Lxb/b$b;->e:I

    .line 174
    .line 175
    sub-int/2addr v9, v7

    .line 176
    sget-object v7, Lxb/b;->c:Lxb/b;

    .line 177
    .line 178
    invoke-virtual {v7}, Lxb/b;->c()[Lxb/a;

    .line 179
    .line 180
    .line 181
    move-result-object v7

    .line 182
    array-length v7, v7

    .line 183
    add-int/2addr v7, v9

    .line 184
    goto :goto_4

    .line 185
    :cond_8
    if-ne v6, v8, :cond_9

    .line 186
    .line 187
    iget v6, p0, Lxb/b$b;->e:I

    .line 188
    .line 189
    sub-int v6, v9, v6

    .line 190
    .line 191
    sget-object v11, Lxb/b;->c:Lxb/b;

    .line 192
    .line 193
    invoke-virtual {v11}, Lxb/b;->c()[Lxb/a;

    .line 194
    .line 195
    .line 196
    move-result-object v11

    .line 197
    array-length v11, v11

    .line 198
    add-int/2addr v6, v11

    .line 199
    :cond_9
    add-int/lit8 v9, v9, 0x1

    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_a
    :goto_4
    if-eq v7, v8, :cond_b

    .line 203
    .line 204
    const/16 v3, 0x7f

    .line 205
    .line 206
    const/16 v4, 0x80

    .line 207
    .line 208
    invoke-virtual {p0, v7, v3, v4}, Lxb/b$b;->h(III)V

    .line 209
    .line 210
    .line 211
    goto :goto_5

    .line 212
    :cond_b
    const/16 v7, 0x40

    .line 213
    .line 214
    if-ne v6, v8, :cond_c

    .line 215
    .line 216
    iget-object v6, p0, Lxb/b$b;->j:Lcc/e;

    .line 217
    .line 218
    invoke-virtual {v6, v7}, Lcc/e;->A0(I)Lcc/e;

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0, v4}, Lxb/b$b;->f(Lokio/ByteString;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0, v5}, Lxb/b$b;->f(Lokio/ByteString;)V

    .line 225
    .line 226
    .line 227
    invoke-direct {p0, v3}, Lxb/b$b;->d(Lxb/a;)V

    .line 228
    .line 229
    .line 230
    goto :goto_5

    .line 231
    :cond_c
    sget-object v8, Lxb/a;->d:Lokio/ByteString;

    .line 232
    .line 233
    invoke-virtual {v4, v8}, Lokio/ByteString;->startsWith(Lokio/ByteString;)Z

    .line 234
    .line 235
    .line 236
    move-result v8

    .line 237
    if-eqz v8, :cond_d

    .line 238
    .line 239
    sget-object v8, Lxb/a;->i:Lokio/ByteString;

    .line 240
    .line 241
    invoke-static {v8, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    xor-int/lit8 v4, v4, 0x1

    .line 246
    .line 247
    if-eqz v4, :cond_d

    .line 248
    .line 249
    const/16 v3, 0xf

    .line 250
    .line 251
    invoke-virtual {p0, v6, v3, v1}, Lxb/b$b;->h(III)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p0, v5}, Lxb/b$b;->f(Lokio/ByteString;)V

    .line 255
    .line 256
    .line 257
    goto :goto_5

    .line 258
    :cond_d
    const/16 v4, 0x3f

    .line 259
    .line 260
    invoke-virtual {p0, v6, v4, v7}, Lxb/b$b;->h(III)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p0, v5}, Lxb/b$b;->f(Lokio/ByteString;)V

    .line 264
    .line 265
    .line 266
    invoke-direct {p0, v3}, Lxb/b$b;->d(Lxb/a;)V

    .line 267
    .line 268
    .line 269
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 270
    .line 271
    goto/16 :goto_0

    .line 272
    .line 273
    :cond_e
    return-void
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
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
.end method

.method public final h(III)V
    .locals 1

    .line 1
    if-ge p1, p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lxb/b$b;->j:Lcc/e;

    .line 4
    .line 5
    or-int/2addr p1, p3

    .line 6
    invoke-virtual {p2, p1}, Lcc/e;->A0(I)Lcc/e;

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lxb/b$b;->j:Lcc/e;

    .line 11
    .line 12
    or-int/2addr p3, p2

    .line 13
    invoke-virtual {v0, p3}, Lcc/e;->A0(I)Lcc/e;

    .line 14
    .line 15
    .line 16
    sub-int/2addr p1, p2

    .line 17
    :goto_0
    const/16 p2, 0x80

    .line 18
    .line 19
    if-lt p1, p2, :cond_1

    .line 20
    .line 21
    and-int/lit8 p3, p1, 0x7f

    .line 22
    .line 23
    iget-object v0, p0, Lxb/b$b;->j:Lcc/e;

    .line 24
    .line 25
    or-int/2addr p2, p3

    .line 26
    invoke-virtual {v0, p2}, Lcc/e;->A0(I)Lcc/e;

    .line 27
    .line 28
    .line 29
    ushr-int/lit8 p1, p1, 0x7

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object p2, p0, Lxb/b$b;->j:Lcc/e;

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Lcc/e;->A0(I)Lcc/e;

    .line 35
    .line 36
    .line 37
    return-void
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

.class public Lkotlinx/coroutines/channels/c;
.super Lkotlinx/coroutines/channels/AbstractChannel;
.source "ArrayChannel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/channels/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/channels/AbstractChannel<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0010\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0002B9\u0012\u0006\u0010%\u001a\u00020\u0003\u0012\u0006\u0010)\u001a\u00020&\u0012 \u0010E\u001a\u001c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\t\u0018\u00010Cj\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`D\u00a2\u0006\u0004\u0008F\u0010GJ\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00028\u0000H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u000c\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0008\u001a\u00028\u0000H\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0019\u0010\u0013\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0012\u001a\u00020\u0011H\u0014\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0011\u0010\u0015\u001a\u0004\u0018\u00010\u000eH\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u001d\u0010\u0019\u001a\u0004\u0018\u00010\u000e2\n\u0010\u0018\u001a\u0006\u0012\u0002\u0008\u00030\u0017H\u0014\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u001d\u0010\u001e\u001a\u00020\u001d2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001bH\u0014\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0017\u0010!\u001a\u00020\t2\u0006\u0010 \u001a\u00020\u001dH\u0014\u00a2\u0006\u0004\u0008!\u0010\"R\u0014\u0010%\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0014\u0010)\u001a\u00020&8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u0018\u0010-\u001a\u00060*j\u0002`+8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010,R\u001e\u00101\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0.8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\u0016\u00103\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u0010$R\u0014\u00106\u001a\u00020\u001d8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u00084\u00105R\u0014\u00108\u001a\u00020\u001d8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u00087\u00105R\u0014\u0010:\u001a\u00020\u001d8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u00089\u00105R\u0014\u0010<\u001a\u00020\u001d8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008;\u00105R\u0014\u0010>\u001a\u00020\u001d8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008=\u00105R\u0014\u0010B\u001a\u00020?8TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008@\u0010A\u00a8\u0006H"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/c;",
        "E",
        "Lkotlinx/coroutines/channels/AbstractChannel;",
        "",
        "currentSize",
        "Lkotlinx/coroutines/internal/e0;",
        "f0",
        "(I)Lkotlinx/coroutines/internal/e0;",
        "element",
        "Lkotlin/u;",
        "d0",
        "(ILjava/lang/Object;)V",
        "e0",
        "(I)V",
        "",
        "B",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "Lkotlinx/coroutines/channels/r;",
        "send",
        "f",
        "(Lkotlinx/coroutines/channels/r;)Ljava/lang/Object;",
        "X",
        "()Ljava/lang/Object;",
        "Lkotlinx/coroutines/selects/f;",
        "select",
        "Y",
        "(Lkotlinx/coroutines/selects/f;)Ljava/lang/Object;",
        "Lkotlinx/coroutines/channels/o;",
        "receive",
        "",
        "N",
        "(Lkotlinx/coroutines/channels/o;)Z",
        "wasClosed",
        "T",
        "(Z)V",
        "d",
        "I",
        "capacity",
        "Lkotlinx/coroutines/channels/BufferOverflow;",
        "e",
        "Lkotlinx/coroutines/channels/BufferOverflow;",
        "onBufferOverflow",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "Lkotlinx/coroutines/internal/ReentrantLock;",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "lock",
        "",
        "g",
        "[Ljava/lang/Object;",
        "buffer",
        "h",
        "head",
        "P",
        "()Z",
        "isBufferAlwaysEmpty",
        "Q",
        "isBufferEmpty",
        "x",
        "isBufferAlwaysFull",
        "z",
        "isBufferFull",
        "R",
        "isClosedForReceive",
        "",
        "j",
        "()Ljava/lang/String;",
        "bufferDebugString",
        "Lkotlin/Function1;",
        "Lkotlinx/coroutines/internal/OnUndeliveredElement;",
        "onUndeliveredElement",
        "<init>",
        "(ILkotlinx/coroutines/channels/BufferOverflow;Lw7/l;)V",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field private final d:I

.field private final e:Lkotlinx/coroutines/channels/BufferOverflow;

.field private final f:Ljava/util/concurrent/locks/ReentrantLock;

.field private g:[Ljava/lang/Object;

.field private h:I

.field private volatile synthetic size:I


# direct methods
.method public constructor <init>(ILkotlinx/coroutines/channels/BufferOverflow;Lw7/l;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlinx/coroutines/channels/BufferOverflow;",
            "Lw7/l<",
            "-TE;",
            "Lkotlin/u;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lkotlinx/coroutines/channels/AbstractChannel;-><init>(Lw7/l;)V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lkotlinx/coroutines/channels/c;->d:I

    .line 5
    .line 6
    iput-object p2, p0, Lkotlinx/coroutines/channels/c;->e:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    const/4 p3, 0x1

    .line 10
    if-lt p1, p3, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move p3, p2

    .line 14
    :goto_0
    if-eqz p3, :cond_1

    .line 15
    .line 16
    new-instance p3, Ljava/util/concurrent/locks/ReentrantLock;

    .line 17
    .line 18
    invoke-direct {p3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p3, p0, Lkotlinx/coroutines/channels/c;->f:Ljava/util/concurrent/locks/ReentrantLock;

    .line 22
    .line 23
    const/16 p3, 0x8

    .line 24
    .line 25
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    new-array p1, p1, [Ljava/lang/Object;

    .line 30
    .line 31
    sget-object v1, Lkotlinx/coroutines/channels/a;->a:Lkotlinx/coroutines/internal/e0;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    const/4 v3, 0x0

    .line 35
    const/4 v4, 0x6

    .line 36
    const/4 v5, 0x0

    .line 37
    move-object v0, p1

    .line 38
    invoke-static/range {v0 .. v5}, Lkotlin/collections/j;->l([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lkotlinx/coroutines/channels/c;->g:[Ljava/lang/Object;

    .line 42
    .line 43
    iput p2, p0, Lkotlinx/coroutines/channels/c;->size:I

    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string p3, "ArrayChannel capacity must be at least 1, but "

    .line 52
    .line 53
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string p1, " was specified"

    .line 60
    .line 61
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p2
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

.method private final d0(ILjava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lkotlinx/coroutines/channels/c;->d:I

    .line 2
    .line 3
    if-ge p1, v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/c;->e0(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->g:[Ljava/lang/Object;

    .line 9
    .line 10
    iget v1, p0, Lkotlinx/coroutines/channels/c;->h:I

    .line 11
    .line 12
    add-int/2addr v1, p1

    .line 13
    array-length p1, v0

    .line 14
    rem-int/2addr v1, p1

    .line 15
    aput-object p2, v0, v1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->g:[Ljava/lang/Object;

    .line 19
    .line 20
    iget v1, p0, Lkotlinx/coroutines/channels/c;->h:I

    .line 21
    .line 22
    array-length v2, v0

    .line 23
    rem-int v2, v1, v2

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    aput-object v3, v0, v2

    .line 27
    .line 28
    add-int/2addr p1, v1

    .line 29
    array-length v2, v0

    .line 30
    rem-int/2addr p1, v2

    .line 31
    aput-object p2, v0, p1

    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    array-length p1, v0

    .line 36
    rem-int/2addr v1, p1

    .line 37
    iput v1, p0, Lkotlinx/coroutines/channels/c;->h:I

    .line 38
    .line 39
    :goto_0
    return-void
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
.end method

.method private final e0(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->g:[Ljava/lang/Object;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-lt p1, v1, :cond_1

    .line 5
    .line 6
    array-length v0, v0

    .line 7
    mul-int/lit8 v0, v0, 0x2

    .line 8
    .line 9
    iget v1, p0, Lkotlinx/coroutines/channels/c;->d:I

    .line 10
    .line 11
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    new-array v1, v0, [Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    move v3, v2

    .line 19
    :goto_0
    if-ge v3, p1, :cond_0

    .line 20
    .line 21
    add-int/lit8 v4, v3, 0x1

    .line 22
    .line 23
    iget-object v5, p0, Lkotlinx/coroutines/channels/c;->g:[Ljava/lang/Object;

    .line 24
    .line 25
    iget v6, p0, Lkotlinx/coroutines/channels/c;->h:I

    .line 26
    .line 27
    add-int/2addr v6, v3

    .line 28
    array-length v7, v5

    .line 29
    rem-int/2addr v6, v7

    .line 30
    aget-object v5, v5, v6

    .line 31
    .line 32
    aput-object v5, v1, v3

    .line 33
    .line 34
    move v3, v4

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    sget-object v3, Lkotlinx/coroutines/channels/a;->a:Lkotlinx/coroutines/internal/e0;

    .line 37
    .line 38
    invoke-static {v1, v3, p1, v0}, Lkotlin/collections/j;->k([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lkotlinx/coroutines/channels/c;->g:[Ljava/lang/Object;

    .line 42
    .line 43
    iput v2, p0, Lkotlinx/coroutines/channels/c;->h:I

    .line 44
    .line 45
    :cond_1
    return-void
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
.end method

.method private final f0(I)Lkotlinx/coroutines/internal/e0;
    .locals 3

    .line 1
    iget v0, p0, Lkotlinx/coroutines/channels/c;->d:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    add-int/2addr p1, v2

    .line 8
    iput p1, p0, Lkotlinx/coroutines/channels/c;->size:I

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    iget-object p1, p0, Lkotlinx/coroutines/channels/c;->e:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 12
    .line 13
    sget-object v0, Lkotlinx/coroutines/channels/c$a;->a:[I

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    aget p1, v0, p1

    .line 20
    .line 21
    if-eq p1, v2, :cond_3

    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    if-eq p1, v0, :cond_2

    .line 25
    .line 26
    const/4 v0, 0x3

    .line 27
    if-ne p1, v0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 31
    .line 32
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :cond_2
    sget-object v1, Lkotlinx/coroutines/channels/a;->b:Lkotlinx/coroutines/internal/e0;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    sget-object v1, Lkotlinx/coroutines/channels/a;->c:Lkotlinx/coroutines/internal/e0;

    .line 40
    .line 41
    :goto_0
    return-object v1
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
.end method


# virtual methods
.method protected B(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->f:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget v1, p0, Lkotlinx/coroutines/channels/c;->size:I

    .line 7
    .line 8
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/b;->l()Lkotlinx/coroutines/channels/j;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-nez v2, :cond_5

    .line 13
    .line 14
    invoke-direct {p0, v1}, Lkotlinx/coroutines/channels/c;->f0(I)Lkotlinx/coroutines/internal/e0;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-nez v2, :cond_4

    .line 19
    .line 20
    if-nez v1, :cond_3

    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->F()Lkotlinx/coroutines/channels/p;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    instance-of v3, v2, Lkotlinx/coroutines/channels/j;

    .line 30
    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    iput v1, p0, Lkotlinx/coroutines/channels/c;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 36
    .line 37
    .line 38
    return-object v2

    .line 39
    :cond_2
    const/4 v3, 0x0

    .line 40
    :try_start_1
    invoke-interface {v2, p1, v3}, Lkotlinx/coroutines/channels/p;->x(Ljava/lang/Object;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$c;)Lkotlinx/coroutines/internal/e0;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    if-eqz v3, :cond_0

    .line 45
    .line 46
    iput v1, p0, Lkotlinx/coroutines/channels/c;->size:I

    .line 47
    .line 48
    sget-object v1, Lkotlin/u;->a:Lkotlin/u;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 51
    .line 52
    .line 53
    invoke-interface {v2, p1}, Lkotlinx/coroutines/channels/p;->q(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v2}, Lkotlinx/coroutines/channels/p;->g()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1

    .line 61
    :cond_3
    :goto_0
    :try_start_2
    invoke-direct {p0, v1, p1}, Lkotlinx/coroutines/channels/c;->d0(ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    sget-object p1, Lkotlinx/coroutines/channels/a;->b:Lkotlinx/coroutines/internal/e0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    .line 66
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 67
    .line 68
    .line 69
    return-object p1

    .line 70
    :cond_4
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 71
    .line 72
    .line 73
    return-object v2

    .line 74
    :cond_5
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 75
    .line 76
    .line 77
    return-object v2

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 80
    .line 81
    .line 82
    throw p1
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

.method protected N(Lkotlinx/coroutines/channels/o;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/o<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->f:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-super {p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel;->N(Lkotlinx/coroutines/channels/o;)Z

    .line 7
    .line 8
    .line 9
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 11
    .line 12
    .line 13
    return p1

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 16
    .line 17
    .line 18
    throw p1
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

.method protected final P()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final Q()Z
    .locals 1

    .line 1
    iget v0, p0, Lkotlinx/coroutines/channels/c;->size:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
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

.method public R()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->f:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-super {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->R()Z

    .line 7
    .line 8
    .line 9
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 11
    .line 12
    .line 13
    return v1

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 16
    .line 17
    .line 18
    throw v1
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

.method protected T(Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/b;->a:Lw7/l;

    .line 2
    .line 3
    iget-object v1, p0, Lkotlinx/coroutines/channels/c;->f:Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget v2, p0, Lkotlinx/coroutines/channels/c;->size:I

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    move v5, v3

    .line 13
    :goto_0
    if-ge v5, v2, :cond_1

    .line 14
    .line 15
    add-int/lit8 v5, v5, 0x1

    .line 16
    .line 17
    iget-object v6, p0, Lkotlinx/coroutines/channels/c;->g:[Ljava/lang/Object;

    .line 18
    .line 19
    iget v7, p0, Lkotlinx/coroutines/channels/c;->h:I

    .line 20
    .line 21
    aget-object v6, v6, v7

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    sget-object v7, Lkotlinx/coroutines/channels/a;->a:Lkotlinx/coroutines/internal/e0;

    .line 26
    .line 27
    if-eq v6, v7, :cond_0

    .line 28
    .line 29
    invoke-static {v0, v6, v4}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->c(Lw7/l;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    :cond_0
    iget-object v6, p0, Lkotlinx/coroutines/channels/c;->g:[Ljava/lang/Object;

    .line 34
    .line 35
    iget v7, p0, Lkotlinx/coroutines/channels/c;->h:I

    .line 36
    .line 37
    sget-object v8, Lkotlinx/coroutines/channels/a;->a:Lkotlinx/coroutines/internal/e0;

    .line 38
    .line 39
    aput-object v8, v6, v7

    .line 40
    .line 41
    add-int/lit8 v7, v7, 0x1

    .line 42
    .line 43
    array-length v6, v6

    .line 44
    rem-int/2addr v7, v6

    .line 45
    iput v7, p0, Lkotlinx/coroutines/channels/c;->h:I

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iput v3, p0, Lkotlinx/coroutines/channels/c;->size:I

    .line 49
    .line 50
    sget-object v0, Lkotlin/u;->a:Lkotlin/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 53
    .line 54
    .line 55
    invoke-super {p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel;->T(Z)V

    .line 56
    .line 57
    .line 58
    if-nez v4, :cond_2

    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    throw v4

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 64
    .line 65
    .line 66
    throw p1
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

.method protected X()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->f:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget v1, p0, Lkotlinx/coroutines/channels/c;->size:I

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/b;->l()Lkotlinx/coroutines/channels/j;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    sget-object v1, Lkotlinx/coroutines/channels/a;->d:Lkotlinx/coroutines/internal/e0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :cond_1
    :try_start_1
    iget-object v2, p0, Lkotlinx/coroutines/channels/c;->g:[Ljava/lang/Object;

    .line 23
    .line 24
    iget v3, p0, Lkotlinx/coroutines/channels/c;->h:I

    .line 25
    .line 26
    aget-object v4, v2, v3

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    aput-object v5, v2, v3

    .line 30
    .line 31
    add-int/lit8 v2, v1, -0x1

    .line 32
    .line 33
    iput v2, p0, Lkotlinx/coroutines/channels/c;->size:I

    .line 34
    .line 35
    sget-object v2, Lkotlinx/coroutines/channels/a;->d:Lkotlinx/coroutines/internal/e0;

    .line 36
    .line 37
    iget v3, p0, Lkotlinx/coroutines/channels/c;->d:I

    .line 38
    .line 39
    const/4 v6, 0x1

    .line 40
    const/4 v7, 0x0

    .line 41
    if-ne v1, v3, :cond_4

    .line 42
    .line 43
    move-object v3, v5

    .line 44
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/b;->G()Lkotlinx/coroutines/channels/r;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    if-nez v8, :cond_2

    .line 49
    .line 50
    move-object v5, v3

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    invoke-virtual {v8, v5}, Lkotlinx/coroutines/channels/r;->X(Lkotlinx/coroutines/internal/LockFreeLinkedListNode$c;)Lkotlinx/coroutines/internal/e0;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    if-eqz v3, :cond_3

    .line 57
    .line 58
    invoke-virtual {v8}, Lkotlinx/coroutines/channels/r;->V()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    move v7, v6

    .line 63
    move-object v5, v8

    .line 64
    goto :goto_1

    .line 65
    :cond_3
    invoke-virtual {v8}, Lkotlinx/coroutines/channels/r;->Y()V

    .line 66
    .line 67
    .line 68
    move-object v3, v8

    .line 69
    goto :goto_0

    .line 70
    :cond_4
    :goto_1
    sget-object v3, Lkotlinx/coroutines/channels/a;->d:Lkotlinx/coroutines/internal/e0;

    .line 71
    .line 72
    if-eq v2, v3, :cond_5

    .line 73
    .line 74
    instance-of v3, v2, Lkotlinx/coroutines/channels/j;

    .line 75
    .line 76
    if-nez v3, :cond_5

    .line 77
    .line 78
    iput v1, p0, Lkotlinx/coroutines/channels/c;->size:I

    .line 79
    .line 80
    iget-object v3, p0, Lkotlinx/coroutines/channels/c;->g:[Ljava/lang/Object;

    .line 81
    .line 82
    iget v8, p0, Lkotlinx/coroutines/channels/c;->h:I

    .line 83
    .line 84
    add-int/2addr v8, v1

    .line 85
    array-length v1, v3

    .line 86
    rem-int/2addr v8, v1

    .line 87
    aput-object v2, v3, v8

    .line 88
    .line 89
    :cond_5
    iget v1, p0, Lkotlinx/coroutines/channels/c;->h:I

    .line 90
    .line 91
    add-int/2addr v1, v6

    .line 92
    iget-object v2, p0, Lkotlinx/coroutines/channels/c;->g:[Ljava/lang/Object;

    .line 93
    .line 94
    array-length v2, v2

    .line 95
    rem-int/2addr v1, v2

    .line 96
    iput v1, p0, Lkotlinx/coroutines/channels/c;->h:I

    .line 97
    .line 98
    sget-object v1, Lkotlin/u;->a:Lkotlin/u;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    .line 100
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 101
    .line 102
    .line 103
    if-eqz v7, :cond_6

    .line 104
    .line 105
    invoke-static {v5}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5}, Lkotlinx/coroutines/channels/r;->U()V

    .line 109
    .line 110
    .line 111
    :cond_6
    return-object v4

    .line 112
    :catchall_0
    move-exception v1

    .line 113
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 114
    .line 115
    .line 116
    throw v1
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

.method protected Y(Lkotlinx/coroutines/selects/f;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/f<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->f:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget v1, p0, Lkotlinx/coroutines/channels/c;->size:I

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/b;->l()Lkotlinx/coroutines/channels/j;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    sget-object p1, Lkotlinx/coroutines/channels/a;->d:Lkotlinx/coroutines/internal/e0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_1
    :try_start_1
    iget-object v2, p0, Lkotlinx/coroutines/channels/c;->g:[Ljava/lang/Object;

    .line 23
    .line 24
    iget v3, p0, Lkotlinx/coroutines/channels/c;->h:I

    .line 25
    .line 26
    aget-object v4, v2, v3

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    aput-object v5, v2, v3

    .line 30
    .line 31
    add-int/lit8 v2, v1, -0x1

    .line 32
    .line 33
    iput v2, p0, Lkotlinx/coroutines/channels/c;->size:I

    .line 34
    .line 35
    sget-object v2, Lkotlinx/coroutines/channels/a;->d:Lkotlinx/coroutines/internal/e0;

    .line 36
    .line 37
    iget v3, p0, Lkotlinx/coroutines/channels/c;->d:I

    .line 38
    .line 39
    const/4 v6, 0x1

    .line 40
    if-ne v1, v3, :cond_7

    .line 41
    .line 42
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->L()Lkotlinx/coroutines/channels/AbstractChannel$g;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-interface {p1, v3}, Lkotlinx/coroutines/selects/f;->u(Lkotlinx/coroutines/internal/b;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    if-nez v7, :cond_2

    .line 51
    .line 52
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$d;->o()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-static {v5}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    move-object v2, v5

    .line 60
    check-cast v2, Lkotlinx/coroutines/channels/r;

    .line 61
    .line 62
    invoke-virtual {v2}, Lkotlinx/coroutines/channels/r;->V()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    move v3, v6

    .line 67
    goto :goto_2

    .line 68
    :cond_2
    sget-object v3, Lkotlinx/coroutines/channels/a;->d:Lkotlinx/coroutines/internal/e0;

    .line 69
    .line 70
    if-ne v7, v3, :cond_3

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    sget-object v3, Lkotlinx/coroutines/internal/c;->b:Ljava/lang/Object;

    .line 74
    .line 75
    if-ne v7, v3, :cond_4

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/selects/g;->d()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    if-ne v7, v2, :cond_5

    .line 83
    .line 84
    iput v1, p0, Lkotlinx/coroutines/channels/c;->size:I

    .line 85
    .line 86
    iget-object p1, p0, Lkotlinx/coroutines/channels/c;->g:[Ljava/lang/Object;

    .line 87
    .line 88
    iget v1, p0, Lkotlinx/coroutines/channels/c;->h:I

    .line 89
    .line 90
    aput-object v4, p1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    .line 92
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 93
    .line 94
    .line 95
    return-object v7

    .line 96
    :cond_5
    :try_start_2
    instance-of v2, v7, Lkotlinx/coroutines/channels/j;

    .line 97
    .line 98
    if-eqz v2, :cond_6

    .line 99
    .line 100
    move v3, v6

    .line 101
    move-object v2, v7

    .line 102
    move-object v5, v2

    .line 103
    goto :goto_2

    .line 104
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 105
    .line 106
    const-string v1, "performAtomicTrySelect(describeTryOffer) returned "

    .line 107
    .line 108
    invoke-static {v1, v7}, Lkotlin/jvm/internal/r;->o(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p1

    .line 120
    :cond_7
    :goto_1
    const/4 v3, 0x0

    .line 121
    :goto_2
    sget-object v7, Lkotlinx/coroutines/channels/a;->d:Lkotlinx/coroutines/internal/e0;

    .line 122
    .line 123
    if-eq v2, v7, :cond_8

    .line 124
    .line 125
    instance-of v7, v2, Lkotlinx/coroutines/channels/j;

    .line 126
    .line 127
    if-nez v7, :cond_8

    .line 128
    .line 129
    iput v1, p0, Lkotlinx/coroutines/channels/c;->size:I

    .line 130
    .line 131
    iget-object p1, p0, Lkotlinx/coroutines/channels/c;->g:[Ljava/lang/Object;

    .line 132
    .line 133
    iget v7, p0, Lkotlinx/coroutines/channels/c;->h:I

    .line 134
    .line 135
    add-int/2addr v7, v1

    .line 136
    array-length v1, p1

    .line 137
    rem-int/2addr v7, v1

    .line 138
    aput-object v2, p1, v7

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_8
    invoke-interface {p1}, Lkotlinx/coroutines/selects/f;->h()Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-nez p1, :cond_9

    .line 146
    .line 147
    iput v1, p0, Lkotlinx/coroutines/channels/c;->size:I

    .line 148
    .line 149
    iget-object p1, p0, Lkotlinx/coroutines/channels/c;->g:[Ljava/lang/Object;

    .line 150
    .line 151
    iget v1, p0, Lkotlinx/coroutines/channels/c;->h:I

    .line 152
    .line 153
    aput-object v4, p1, v1

    .line 154
    .line 155
    invoke-static {}, Lkotlinx/coroutines/selects/g;->d()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 160
    .line 161
    .line 162
    return-object p1

    .line 163
    :cond_9
    :goto_3
    :try_start_3
    iget p1, p0, Lkotlinx/coroutines/channels/c;->h:I

    .line 164
    .line 165
    add-int/2addr p1, v6

    .line 166
    iget-object v1, p0, Lkotlinx/coroutines/channels/c;->g:[Ljava/lang/Object;

    .line 167
    .line 168
    array-length v1, v1

    .line 169
    rem-int/2addr p1, v1

    .line 170
    iput p1, p0, Lkotlinx/coroutines/channels/c;->h:I

    .line 171
    .line 172
    sget-object p1, Lkotlin/u;->a:Lkotlin/u;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 173
    .line 174
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 175
    .line 176
    .line 177
    if-eqz v3, :cond_a

    .line 178
    .line 179
    invoke-static {v5}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    check-cast v5, Lkotlinx/coroutines/channels/r;

    .line 183
    .line 184
    invoke-virtual {v5}, Lkotlinx/coroutines/channels/r;->U()V

    .line 185
    .line 186
    .line 187
    :cond_a
    return-object v4

    .line 188
    :catchall_0
    move-exception p1

    .line 189
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 190
    .line 191
    .line 192
    throw p1
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

.method protected f(Lkotlinx/coroutines/channels/r;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->f:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-super {p0, p1}, Lkotlinx/coroutines/channels/b;->f(Lkotlinx/coroutines/channels/r;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 11
    .line 12
    .line 13
    return-object p1

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 16
    .line 17
    .line 18
    throw p1
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

.method protected j()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "(buffer:capacity="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lkotlinx/coroutines/channels/c;->d:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ",size="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lkotlinx/coroutines/channels/c;->size:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x29

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
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
.end method

.method protected final x()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final z()Z
    .locals 2

    .line 1
    iget v0, p0, Lkotlinx/coroutines/channels/c;->size:I

    .line 2
    .line 3
    iget v1, p0, Lkotlinx/coroutines/channels/c;->d:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->e:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 8
    .line 9
    sget-object v1, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
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

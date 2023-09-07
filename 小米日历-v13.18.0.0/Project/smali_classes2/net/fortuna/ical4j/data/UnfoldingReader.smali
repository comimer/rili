.class public Lnet/fortuna/ical4j/data/UnfoldingReader;
.super Ljava/io/PushbackReader;
.source "UnfoldingReader.java"


# static fields
.field private static final DEFAULT_FOLD_PATTERN_1:[C

.field private static final DEFAULT_FOLD_PATTERN_2:[C

.field private static final RELAXED_FOLD_PATTERN_1:[C

.field private static final RELAXED_FOLD_PATTERN_2:[C


# instance fields
.field private buffers:[[C

.field private linesUnfolded:I

.field private log:Lrc/b;

.field private maxPatternLength:I

.field private patterns:[[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v1, v0, [C

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v1, Lnet/fortuna/ical4j/data/UnfoldingReader;->DEFAULT_FOLD_PATTERN_1:[C

    .line 8
    .line 9
    new-array v0, v0, [C

    .line 10
    .line 11
    fill-array-data v0, :array_1

    .line 12
    .line 13
    .line 14
    sput-object v0, Lnet/fortuna/ical4j/data/UnfoldingReader;->DEFAULT_FOLD_PATTERN_2:[C

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    new-array v1, v0, [C

    .line 18
    .line 19
    fill-array-data v1, :array_2

    .line 20
    .line 21
    .line 22
    sput-object v1, Lnet/fortuna/ical4j/data/UnfoldingReader;->RELAXED_FOLD_PATTERN_1:[C

    .line 23
    .line 24
    new-array v0, v0, [C

    .line 25
    .line 26
    fill-array-data v0, :array_3

    .line 27
    .line 28
    .line 29
    sput-object v0, Lnet/fortuna/ical4j/data/UnfoldingReader;->RELAXED_FOLD_PATTERN_2:[C

    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :array_0
    .array-data 2
        0xds
        0xas
        0x20s
    .end array-data

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    nop

    .line 41
    :array_1
    .array-data 2
        0xds
        0xas
        0x9s
    .end array-data

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    nop

    .line 49
    :array_2
    .array-data 2
        0xas
        0x20s
    .end array-data

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    :array_3
    .array-data 2
        0xas
        0x9s
    .end array-data
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

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2

    .line 1
    sget-object v0, Lnet/fortuna/ical4j/data/UnfoldingReader;->DEFAULT_FOLD_PATTERN_1:[C

    array-length v0, v0

    const-string v1, "ical4j.unfolding.relaxed"

    .line 2
    invoke-static {v1}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lnet/fortuna/ical4j/data/UnfoldingReader;-><init>(Ljava/io/Reader;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .locals 1

    const-string v0, "ical4j.unfolding.relaxed"

    .line 4
    invoke-static {v0}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lnet/fortuna/ical4j/data/UnfoldingReader;-><init>(Ljava/io/Reader;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;IZ)V
    .locals 2

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/io/PushbackReader;-><init>(Ljava/io/Reader;I)V

    .line 7
    const-class p1, Lnet/fortuna/ical4j/data/UnfoldingReader;

    invoke-static {p1}, Lrc/c;->i(Ljava/lang/Class;)Lrc/b;

    move-result-object p1

    iput-object p1, p0, Lnet/fortuna/ical4j/data/UnfoldingReader;->log:Lrc/b;

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lnet/fortuna/ical4j/data/UnfoldingReader;->maxPatternLength:I

    const/4 p2, 0x2

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    const/4 p3, 0x4

    new-array p3, p3, [[C

    .line 9
    iput-object p3, p0, Lnet/fortuna/ical4j/data/UnfoldingReader;->patterns:[[C

    .line 10
    sget-object v1, Lnet/fortuna/ical4j/data/UnfoldingReader;->DEFAULT_FOLD_PATTERN_1:[C

    aput-object v1, p3, p1

    .line 11
    sget-object v1, Lnet/fortuna/ical4j/data/UnfoldingReader;->DEFAULT_FOLD_PATTERN_2:[C

    aput-object v1, p3, v0

    .line 12
    sget-object v0, Lnet/fortuna/ical4j/data/UnfoldingReader;->RELAXED_FOLD_PATTERN_1:[C

    aput-object v0, p3, p2

    const/4 p2, 0x3

    .line 13
    sget-object v0, Lnet/fortuna/ical4j/data/UnfoldingReader;->RELAXED_FOLD_PATTERN_2:[C

    aput-object v0, p3, p2

    goto :goto_0

    :cond_0
    new-array p2, p2, [[C

    .line 14
    iput-object p2, p0, Lnet/fortuna/ical4j/data/UnfoldingReader;->patterns:[[C

    .line 15
    sget-object p3, Lnet/fortuna/ical4j/data/UnfoldingReader;->DEFAULT_FOLD_PATTERN_1:[C

    aput-object p3, p2, p1

    .line 16
    sget-object p3, Lnet/fortuna/ical4j/data/UnfoldingReader;->DEFAULT_FOLD_PATTERN_2:[C

    aput-object p3, p2, v0

    .line 17
    :goto_0
    iget-object p2, p0, Lnet/fortuna/ical4j/data/UnfoldingReader;->patterns:[[C

    array-length p2, p2

    new-array p2, p2, [[C

    iput-object p2, p0, Lnet/fortuna/ical4j/data/UnfoldingReader;->buffers:[[C

    .line 18
    :goto_1
    iget-object p2, p0, Lnet/fortuna/ical4j/data/UnfoldingReader;->patterns:[[C

    array-length p3, p2

    if-ge p1, p3, :cond_1

    .line 19
    iget-object p3, p0, Lnet/fortuna/ical4j/data/UnfoldingReader;->buffers:[[C

    aget-object v0, p2, p1

    array-length v0, v0

    new-array v0, v0, [C

    aput-object v0, p3, p1

    .line 20
    iget p3, p0, Lnet/fortuna/ical4j/data/UnfoldingReader;->maxPatternLength:I

    aget-object p2, p2, p1

    array-length p2, p2

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lnet/fortuna/ical4j/data/UnfoldingReader;->maxPatternLength:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Z)V
    .locals 1

    .line 5
    sget-object v0, Lnet/fortuna/ical4j/data/UnfoldingReader;->DEFAULT_FOLD_PATTERN_1:[C

    array-length v0, v0

    invoke-direct {p0, p1, v0, p2}, Lnet/fortuna/ical4j/data/UnfoldingReader;-><init>(Ljava/io/Reader;IZ)V

    return-void
.end method

.method private unfold()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    iget-object v3, p0, Lnet/fortuna/ical4j/data/UnfoldingReader;->buffers:[[C

    .line 5
    .line 6
    array-length v3, v3

    .line 7
    if-ge v1, v3, :cond_6

    .line 8
    .line 9
    move v3, v0

    .line 10
    :goto_1
    iget-object v4, p0, Lnet/fortuna/ical4j/data/UnfoldingReader;->buffers:[[C

    .line 11
    .line 12
    aget-object v4, v4, v1

    .line 13
    .line 14
    array-length v5, v4

    .line 15
    if-ge v3, v5, :cond_2

    .line 16
    .line 17
    array-length v5, v4

    .line 18
    sub-int/2addr v5, v3

    .line 19
    invoke-super {p0, v4, v3, v5}, Ljava/io/PushbackReader;->read([CII)I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-gez v4, :cond_1

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_1
    add-int/2addr v3, v4

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    :goto_2
    const/4 v4, 0x1

    .line 29
    if-lez v3, :cond_5

    .line 30
    .line 31
    iget-object v5, p0, Lnet/fortuna/ical4j/data/UnfoldingReader;->patterns:[[C

    .line 32
    .line 33
    aget-object v5, v5, v1

    .line 34
    .line 35
    iget-object v6, p0, Lnet/fortuna/ical4j/data/UnfoldingReader;->buffers:[[C

    .line 36
    .line 37
    aget-object v6, v6, v1

    .line 38
    .line 39
    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([C[C)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-nez v5, :cond_3

    .line 44
    .line 45
    iget-object v4, p0, Lnet/fortuna/ical4j/data/UnfoldingReader;->buffers:[[C

    .line 46
    .line 47
    aget-object v4, v4, v1

    .line 48
    .line 49
    invoke-virtual {p0, v4, v0, v3}, Ljava/io/PushbackReader;->unread([CII)V

    .line 50
    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_3
    iget-object v2, p0, Lnet/fortuna/ical4j/data/UnfoldingReader;->log:Lrc/b;

    .line 54
    .line 55
    invoke-interface {v2}, Lrc/b;->isTraceEnabled()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_4

    .line 60
    .line 61
    iget-object v2, p0, Lnet/fortuna/ical4j/data/UnfoldingReader;->log:Lrc/b;

    .line 62
    .line 63
    const-string v3, "Unfolding..."

    .line 64
    .line 65
    invoke-interface {v2, v3}, Lrc/b;->trace(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_4
    iget v2, p0, Lnet/fortuna/ical4j/data/UnfoldingReader;->linesUnfolded:I

    .line 69
    .line 70
    add-int/2addr v2, v4

    .line 71
    iput v2, p0, Lnet/fortuna/ical4j/data/UnfoldingReader;->linesUnfolded:I

    .line 72
    .line 73
    move v2, v4

    .line 74
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_6
    if-nez v2, :cond_0

    .line 78
    .line 79
    return-void
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


# virtual methods
.method public final getLinesUnfolded()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/fortuna/ical4j/data/UnfoldingReader;->linesUnfolded:I

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

.method public final read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/io/PushbackReader;->read()I

    move-result v0

    .line 2
    iget-object v1, p0, Lnet/fortuna/ical4j/data/UnfoldingReader;->patterns:[[C

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 3
    aget-char v5, v5, v3

    if-ne v0, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v3, :cond_2

    return v0

    .line 4
    :cond_2
    invoke-virtual {p0, v0}, Ljava/io/PushbackReader;->unread(I)V

    .line 5
    invoke-direct {p0}, Lnet/fortuna/ical4j/data/UnfoldingReader;->unfold()V

    .line 6
    invoke-super {p0}, Ljava/io/PushbackReader;->read()I

    move-result v0

    return v0
.end method

.method public read([CII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-super {p0, p1, p2, p3}, Ljava/io/PushbackReader;->read([CII)I

    move-result p3

    .line 8
    iget-object v0, p0, Lnet/fortuna/ical4j/data/UnfoldingReader;->patterns:[[C

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    if-lez p3, :cond_0

    .line 9
    aget-char v5, p1, v2

    aget-char v6, v4, v2

    if-ne v5, v6, :cond_0

    const/4 v2, 0x1

    goto :goto_2

    :cond_0
    move v5, v2

    :goto_1
    if-ge v5, p3, :cond_2

    .line 10
    aget-char v6, p1, v5

    aget-char v7, v4, v2

    if-ne v6, v7, :cond_1

    sub-int/2addr p3, v5

    .line 11
    invoke-virtual {p0, p1, v5, p3}, Ljava/io/PushbackReader;->unread([CII)V

    return v5

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-nez v2, :cond_4

    return p3

    .line 12
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/PushbackReader;->unread([CII)V

    .line 13
    invoke-direct {p0}, Lnet/fortuna/ical4j/data/UnfoldingReader;->unfold()V

    .line 14
    iget p3, p0, Lnet/fortuna/ical4j/data/UnfoldingReader;->maxPatternLength:I

    invoke-super {p0, p1, p2, p3}, Ljava/io/PushbackReader;->read([CII)I

    move-result p1

    return p1
.end method

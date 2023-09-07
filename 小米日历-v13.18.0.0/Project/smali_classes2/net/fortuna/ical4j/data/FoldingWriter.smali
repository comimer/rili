.class public Lnet/fortuna/ical4j/data/FoldingWriter;
.super Ljava/io/FilterWriter;
.source "FoldingWriter.java"


# static fields
.field private static final FOLD_PATTERN:[C

.field public static final MAX_FOLD_LENGTH:I = 0x4b

.field public static final REDUCED_FOLD_LENGTH:I = 0x49


# instance fields
.field private final foldLength:I

.field private lineLength:I

.field private final log:Lrc/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [C

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lnet/fortuna/ical4j/data/FoldingWriter;->FOLD_PATTERN:[C

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 2
        0xds
        0xas
        0x20s
    .end array-data
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

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    const/16 v0, 0x49

    .line 4
    invoke-direct {p0, p1, v0}, Lnet/fortuna/ical4j/data/FoldingWriter;-><init>(Ljava/io/Writer;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterWriter;-><init>(Ljava/io/Writer;)V

    .line 2
    const-class p1, Lnet/fortuna/ical4j/data/FoldingWriter;

    invoke-static {p1}, Lrc/c;->i(Ljava/lang/Class;)Lrc/b;

    move-result-object p1

    iput-object p1, p0, Lnet/fortuna/ical4j/data/FoldingWriter;->log:Lrc/b;

    const/16 p1, 0x4b

    .line 3
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lnet/fortuna/ical4j/data/FoldingWriter;->foldLength:I

    return-void
.end method


# virtual methods
.method public final write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [C

    int-to-char p1, p1

    const/4 v2, 0x0

    aput-char p1, v1, v2

    .line 1
    invoke-virtual {p0, v1, v2, v0}, Lnet/fortuna/ical4j/data/FoldingWriter;->write([CII)V

    return-void
.end method

.method public final write(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lnet/fortuna/ical4j/data/FoldingWriter;->write([CII)V

    return-void
.end method

.method public final write([CII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/2addr p3, p2

    const/4 v0, 0x1

    sub-int/2addr p3, v0

    :goto_0
    if-gt p2, p3, :cond_4

    .line 2
    iget-object v1, p0, Lnet/fortuna/ical4j/data/FoldingWriter;->log:Lrc/b;

    invoke-interface {v1}, Lrc/b;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lnet/fortuna/ical4j/data/FoldingWriter;->log:Lrc/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "char ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-char v3, p1, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "], line length ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lnet/fortuna/ical4j/data/FoldingWriter;->lineLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lrc/b;->trace(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget v1, p0, Lnet/fortuna/ical4j/data/FoldingWriter;->lineLength:I

    iget v2, p0, Lnet/fortuna/ical4j/data/FoldingWriter;->foldLength:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    .line 5
    sget-object v1, Lnet/fortuna/ical4j/data/FoldingWriter;->FOLD_PATTERN:[C

    array-length v2, v1

    invoke-super {p0, v1, v3, v2}, Ljava/io/FilterWriter;->write([CII)V

    .line 6
    iput v0, p0, Lnet/fortuna/ical4j/data/FoldingWriter;->lineLength:I

    .line 7
    :cond_1
    aget-char v1, p1, p2

    invoke-super {p0, v1}, Ljava/io/FilterWriter;->write(I)V

    .line 8
    aget-char v1, p1, p2

    const/16 v2, 0xd

    if-eq v1, v2, :cond_3

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    iget v1, p0, Lnet/fortuna/ical4j/data/FoldingWriter;->lineLength:I

    add-int/2addr v1, v0

    iput v1, p0, Lnet/fortuna/ical4j/data/FoldingWriter;->lineLength:I

    goto :goto_2

    .line 10
    :cond_3
    :goto_1
    iput v3, p0, Lnet/fortuna/ical4j/data/FoldingWriter;->lineLength:I

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

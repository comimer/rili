.class public Lp7/a;
.super Ljava/io/ByteArrayInputStream;
.source "SharedByteArrayInputStream.java"

# interfaces
.implements Ljavax/mail/internet/i;


# instance fields
.field protected a:I


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lp7/a;->a:I

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 4
    iput p2, p0, Lp7/a;->a:I

    return-void
.end method


# virtual methods
.method public c(JJ)Ljava/io/InputStream;
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_1

    .line 6
    .line 7
    const-wide/16 v0, -0x1

    .line 8
    .line 9
    cmp-long v0, p3, v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget p3, p0, Ljava/io/ByteArrayInputStream;->count:I

    .line 14
    .line 15
    iget p4, p0, Lp7/a;->a:I

    .line 16
    .line 17
    sub-int/2addr p3, p4

    .line 18
    int-to-long p3, p3

    .line 19
    :cond_0
    new-instance v0, Lp7/a;

    .line 20
    .line 21
    iget-object v1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    .line 22
    .line 23
    iget v2, p0, Lp7/a;->a:I

    .line 24
    .line 25
    long-to-int v3, p1

    .line 26
    add-int/2addr v2, v3

    .line 27
    sub-long/2addr p3, p1

    .line 28
    long-to-int p1, p3

    .line 29
    invoke-direct {v0, v1, v2, p1}, Lp7/a;-><init>([BII)V

    .line 30
    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    const-string p2, "start < 0"

    .line 36
    .line 37
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method public getPosition()J
    .locals 2

    .line 1
    iget v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    .line 2
    .line 3
    iget v1, p0, Lp7/a;->a:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    int-to-long v0, v0

    .line 7
    return-wide v0
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

.class public Lcom/sun/mail/util/l;
.super Ljava/io/FilterOutputStream;
.source "QPEncoderStream.java"


# static fields
.field private static final e:[C


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [C

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/sun/mail/util/l;->e:[C

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
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
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/sun/mail/util/l;->a:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/sun/mail/util/l;->c:Z

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/sun/mail/util/l;->d:Z

    .line 10
    .line 11
    add-int/lit8 p2, p2, -0x1

    .line 12
    .line 13
    iput p2, p0, Lcom/sun/mail/util/l;->b:I

    .line 14
    .line 15
    return-void
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


# virtual methods
.method protected c(IZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    const/16 v1, 0xd

    .line 4
    .line 5
    const/16 v2, 0x3d

    .line 6
    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    iget p2, p0, Lcom/sun/mail/util/l;->a:I

    .line 10
    .line 11
    const/4 v3, 0x3

    .line 12
    add-int/2addr p2, v3

    .line 13
    iput p2, p0, Lcom/sun/mail/util/l;->a:I

    .line 14
    .line 15
    iget v4, p0, Lcom/sun/mail/util/l;->b:I

    .line 16
    .line 17
    if-le p2, v4, :cond_0

    .line 18
    .line 19
    iget-object p2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 20
    .line 21
    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write(I)V

    .line 22
    .line 23
    .line 24
    iget-object p2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 25
    .line 26
    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write(I)V

    .line 27
    .line 28
    .line 29
    iget-object p2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 30
    .line 31
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 32
    .line 33
    .line 34
    iput v3, p0, Lcom/sun/mail/util/l;->a:I

    .line 35
    .line 36
    :cond_0
    iget-object p2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 37
    .line 38
    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write(I)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 42
    .line 43
    sget-object v0, Lcom/sun/mail/util/l;->e:[C

    .line 44
    .line 45
    shr-int/lit8 v1, p1, 0x4

    .line 46
    .line 47
    aget-char v1, v0, v1

    .line 48
    .line 49
    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write(I)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 53
    .line 54
    and-int/lit8 p1, p1, 0xf

    .line 55
    .line 56
    aget-char p1, v0, p1

    .line 57
    .line 58
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write(I)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget p2, p0, Lcom/sun/mail/util/l;->a:I

    .line 63
    .line 64
    const/4 v3, 0x1

    .line 65
    add-int/2addr p2, v3

    .line 66
    iput p2, p0, Lcom/sun/mail/util/l;->a:I

    .line 67
    .line 68
    iget v4, p0, Lcom/sun/mail/util/l;->b:I

    .line 69
    .line 70
    if-le p2, v4, :cond_2

    .line 71
    .line 72
    iget-object p2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 73
    .line 74
    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write(I)V

    .line 75
    .line 76
    .line 77
    iget-object p2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 78
    .line 79
    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write(I)V

    .line 80
    .line 81
    .line 82
    iget-object p2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 83
    .line 84
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 85
    .line 86
    .line 87
    iput v3, p0, Lcom/sun/mail/util/l;->a:I

    .line 88
    .line 89
    :cond_2
    iget-object p2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 90
    .line 91
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write(I)V

    .line 92
    .line 93
    .line 94
    :goto_0
    return-void
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
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/sun/mail/util/l;->flush()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

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

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/sun/mail/util/l;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x20

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/util/l;->c(IZ)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/sun/mail/util/l;->c:Z

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 17
    .line 18
    .line 19
    return-void
    .line 20
    .line 21
    .line 22
.end method

.method public write(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    throw p0
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/sun/mail/util/l;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    .line 1
    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sun/mail/util/l;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

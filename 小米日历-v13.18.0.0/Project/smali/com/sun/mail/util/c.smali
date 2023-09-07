.class public Lcom/sun/mail/util/c;
.super Ljava/io/FilterOutputStream;
.source "BASE64EncoderStream.java"


# static fields
.field private static h:[B

.field private static final i:[C


# instance fields
.field private a:[B

.field private b:I

.field private c:[B

.field private d:I

.field private e:I

.field private f:I

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/sun/mail/util/c;->h:[B

    .line 8
    .line 9
    const/16 v0, 0x40

    .line 10
    .line 11
    new-array v0, v0, [C

    .line 12
    .line 13
    fill-array-data v0, :array_1

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/sun/mail/util/c;->i:[C

    .line 17
    .line 18
    return-void

    .line 19
    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    nop

    .line 25
    :array_1
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
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
        0x2bs
        0x2fs
    .end array-data
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

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/sun/mail/util/c;->b:I

    .line 6
    .line 7
    iput p1, p0, Lcom/sun/mail/util/c;->d:I

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/sun/mail/util/c;->g:Z

    .line 10
    .line 11
    const/4 p1, 0x3

    .line 12
    new-array v0, p1, [B

    .line 13
    .line 14
    iput-object v0, p0, Lcom/sun/mail/util/c;->a:[B

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    const/4 v1, 0x4

    .line 18
    const v2, 0x7fffffff

    .line 19
    .line 20
    .line 21
    if-eq p2, v2, :cond_0

    .line 22
    .line 23
    if-ge p2, v1, :cond_1

    .line 24
    .line 25
    :cond_0
    iput-boolean v0, p0, Lcom/sun/mail/util/c;->g:Z

    .line 26
    .line 27
    const/16 p2, 0x4c

    .line 28
    .line 29
    :cond_1
    div-int/2addr p2, v1

    .line 30
    mul-int/2addr p2, v1

    .line 31
    iput p2, p0, Lcom/sun/mail/util/c;->e:I

    .line 32
    .line 33
    div-int/lit8 v1, p2, 0x4

    .line 34
    .line 35
    mul-int/2addr v1, p1

    .line 36
    iput v1, p0, Lcom/sun/mail/util/c;->f:I

    .line 37
    .line 38
    iget-boolean p1, p0, Lcom/sun/mail/util/c;->g:Z

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    new-array p1, p2, [B

    .line 43
    .line 44
    iput-object p1, p0, Lcom/sun/mail/util/c;->c:[B

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    add-int/lit8 p1, p2, 0x2

    .line 48
    .line 49
    new-array p1, p1, [B

    .line 50
    .line 51
    iput-object p1, p0, Lcom/sun/mail/util/c;->c:[B

    .line 52
    .line 53
    const/16 v1, 0xd

    .line 54
    .line 55
    aput-byte v1, p1, p2

    .line 56
    .line 57
    add-int/2addr p2, v0

    .line 58
    const/16 v0, 0xa

    .line 59
    .line 60
    aput-byte v0, p1, p2

    .line 61
    .line 62
    :goto_0
    return-void
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
.end method

.method private c()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/sun/mail/util/c;->b:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/sun/mail/util/c;->e(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/sun/mail/util/c;->a:[B

    .line 10
    .line 11
    iget v3, p0, Lcom/sun/mail/util/c;->b:I

    .line 12
    .line 13
    iget-object v4, p0, Lcom/sun/mail/util/c;->c:[B

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    invoke-static {v2, v5, v3, v4}, Lcom/sun/mail/util/c;->d([BII[B)[B

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 21
    .line 22
    .line 23
    iget v1, p0, Lcom/sun/mail/util/c;->d:I

    .line 24
    .line 25
    add-int/2addr v1, v0

    .line 26
    iput v1, p0, Lcom/sun/mail/util/c;->d:I

    .line 27
    .line 28
    iget v0, p0, Lcom/sun/mail/util/c;->e:I

    .line 29
    .line 30
    if-lt v1, v0, :cond_1

    .line 31
    .line 32
    iget-boolean v0, p0, Lcom/sun/mail/util/c;->g:Z

    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 37
    .line 38
    sget-object v1, Lcom/sun/mail/util/c;->h:[B

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iput v5, p0, Lcom/sun/mail/util/c;->d:I

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
.end method

.method private static d([BII[B)[B
    .locals 6

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    invoke-static {p2}, Lcom/sun/mail/util/c;->e(I)I

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    new-array p3, p3, [B

    .line 8
    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    move v1, v0

    .line 11
    :goto_0
    const/4 v2, 0x3

    .line 12
    if-lt p2, v2, :cond_1

    .line 13
    .line 14
    add-int/lit8 v2, p1, 0x1

    .line 15
    .line 16
    aget-byte p1, p0, p1

    .line 17
    .line 18
    and-int/lit16 p1, p1, 0xff

    .line 19
    .line 20
    shl-int/lit8 p1, p1, 0x8

    .line 21
    .line 22
    add-int/lit8 v3, v2, 0x1

    .line 23
    .line 24
    aget-byte v2, p0, v2

    .line 25
    .line 26
    and-int/lit16 v2, v2, 0xff

    .line 27
    .line 28
    or-int/2addr p1, v2

    .line 29
    shl-int/lit8 p1, p1, 0x8

    .line 30
    .line 31
    add-int/lit8 v2, v3, 0x1

    .line 32
    .line 33
    aget-byte v3, p0, v3

    .line 34
    .line 35
    and-int/lit16 v3, v3, 0xff

    .line 36
    .line 37
    or-int/2addr p1, v3

    .line 38
    add-int/lit8 v3, v1, 0x3

    .line 39
    .line 40
    sget-object v4, Lcom/sun/mail/util/c;->i:[C

    .line 41
    .line 42
    and-int/lit8 v5, p1, 0x3f

    .line 43
    .line 44
    aget-char v5, v4, v5

    .line 45
    .line 46
    int-to-byte v5, v5

    .line 47
    aput-byte v5, p3, v3

    .line 48
    .line 49
    shr-int/lit8 p1, p1, 0x6

    .line 50
    .line 51
    add-int/lit8 v3, v1, 0x2

    .line 52
    .line 53
    and-int/lit8 v5, p1, 0x3f

    .line 54
    .line 55
    aget-char v5, v4, v5

    .line 56
    .line 57
    int-to-byte v5, v5

    .line 58
    aput-byte v5, p3, v3

    .line 59
    .line 60
    shr-int/lit8 p1, p1, 0x6

    .line 61
    .line 62
    add-int/lit8 v3, v1, 0x1

    .line 63
    .line 64
    and-int/lit8 v5, p1, 0x3f

    .line 65
    .line 66
    aget-char v5, v4, v5

    .line 67
    .line 68
    int-to-byte v5, v5

    .line 69
    aput-byte v5, p3, v3

    .line 70
    .line 71
    shr-int/lit8 p1, p1, 0x6

    .line 72
    .line 73
    add-int/lit8 v3, v1, 0x0

    .line 74
    .line 75
    and-int/lit8 p1, p1, 0x3f

    .line 76
    .line 77
    aget-char p1, v4, p1

    .line 78
    .line 79
    int-to-byte p1, p1

    .line 80
    aput-byte p1, p3, v3

    .line 81
    .line 82
    add-int/lit8 p2, p2, -0x3

    .line 83
    .line 84
    add-int/lit8 v1, v1, 0x4

    .line 85
    .line 86
    move p1, v2

    .line 87
    goto :goto_0

    .line 88
    :cond_1
    const/16 v2, 0x3d

    .line 89
    .line 90
    const/4 v3, 0x1

    .line 91
    if-ne p2, v3, :cond_2

    .line 92
    .line 93
    aget-byte p0, p0, p1

    .line 94
    .line 95
    and-int/lit16 p0, p0, 0xff

    .line 96
    .line 97
    shl-int/lit8 p0, p0, 0x4

    .line 98
    .line 99
    add-int/lit8 p1, v1, 0x3

    .line 100
    .line 101
    aput-byte v2, p3, p1

    .line 102
    .line 103
    add-int/lit8 p1, v1, 0x2

    .line 104
    .line 105
    aput-byte v2, p3, p1

    .line 106
    .line 107
    add-int/lit8 p1, v1, 0x1

    .line 108
    .line 109
    sget-object p2, Lcom/sun/mail/util/c;->i:[C

    .line 110
    .line 111
    and-int/lit8 v2, p0, 0x3f

    .line 112
    .line 113
    aget-char v2, p2, v2

    .line 114
    .line 115
    int-to-byte v2, v2

    .line 116
    aput-byte v2, p3, p1

    .line 117
    .line 118
    shr-int/lit8 p0, p0, 0x6

    .line 119
    .line 120
    add-int/2addr v1, v0

    .line 121
    and-int/lit8 p0, p0, 0x3f

    .line 122
    .line 123
    aget-char p0, p2, p0

    .line 124
    .line 125
    int-to-byte p0, p0

    .line 126
    aput-byte p0, p3, v1

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_2
    const/4 v3, 0x2

    .line 130
    if-ne p2, v3, :cond_3

    .line 131
    .line 132
    add-int/lit8 p2, p1, 0x1

    .line 133
    .line 134
    aget-byte p1, p0, p1

    .line 135
    .line 136
    and-int/lit16 p1, p1, 0xff

    .line 137
    .line 138
    shl-int/lit8 p1, p1, 0x8

    .line 139
    .line 140
    aget-byte p0, p0, p2

    .line 141
    .line 142
    and-int/lit16 p0, p0, 0xff

    .line 143
    .line 144
    or-int/2addr p0, p1

    .line 145
    shl-int/2addr p0, v3

    .line 146
    add-int/lit8 p1, v1, 0x3

    .line 147
    .line 148
    aput-byte v2, p3, p1

    .line 149
    .line 150
    add-int/lit8 p1, v1, 0x2

    .line 151
    .line 152
    sget-object p2, Lcom/sun/mail/util/c;->i:[C

    .line 153
    .line 154
    and-int/lit8 v2, p0, 0x3f

    .line 155
    .line 156
    aget-char v2, p2, v2

    .line 157
    .line 158
    int-to-byte v2, v2

    .line 159
    aput-byte v2, p3, p1

    .line 160
    .line 161
    shr-int/lit8 p0, p0, 0x6

    .line 162
    .line 163
    add-int/lit8 p1, v1, 0x1

    .line 164
    .line 165
    and-int/lit8 v2, p0, 0x3f

    .line 166
    .line 167
    aget-char v2, p2, v2

    .line 168
    .line 169
    int-to-byte v2, v2

    .line 170
    aput-byte v2, p3, p1

    .line 171
    .line 172
    shr-int/lit8 p0, p0, 0x6

    .line 173
    .line 174
    add-int/2addr v1, v0

    .line 175
    and-int/lit8 p0, p0, 0x3f

    .line 176
    .line 177
    aget-char p0, p2, p0

    .line 178
    .line 179
    int-to-byte p0, p0

    .line 180
    aput-byte p0, p3, v1

    .line 181
    .line 182
    :cond_3
    :goto_1
    return-object p3
    .line 183
    .line 184
    .line 185
.end method

.method private static e(I)I
    .locals 0

    .line 1
    add-int/lit8 p0, p0, 0x2

    .line 2
    .line 3
    div-int/lit8 p0, p0, 0x3

    .line 4
    .line 5
    mul-int/lit8 p0, p0, 0x4

    .line 6
    .line 7
    return p0
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


# virtual methods
.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/util/c;->flush()V

    .line 3
    .line 4
    .line 5
    iget v0, p0, Lcom/sun/mail/util/c;->d:I

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/sun/mail/util/c;->g:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 14
    .line 15
    sget-object v1, Lcom/sun/mail/util/c;->h:[B

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    monitor-exit p0

    .line 34
    throw v0
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

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/sun/mail/util/c;->b:I

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/sun/mail/util/c;->c()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/sun/mail/util/c;->b:I

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    monitor-exit p0

    .line 21
    throw v0
    .line 22
.end method

.method public declared-synchronized write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/c;->a:[B

    iget v1, p0, Lcom/sun/mail/util/c;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/util/c;->b:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    const/4 p1, 0x3

    if-ne v2, p1, :cond_0

    .line 21
    invoke-direct {p0}, Lcom/sun/mail/util/c;->c()V

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcom/sun/mail/util/c;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/sun/mail/util/c;->write([BII)V

    return-void
.end method

.method public declared-synchronized write([BII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    add-int/2addr p3, p2

    .line 1
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/sun/mail/util/c;->b:I

    if-eqz v0, :cond_0

    if-ge p2, p3, :cond_0

    add-int/lit8 v0, p2, 0x1

    .line 2
    aget-byte p2, p1, p2

    invoke-virtual {p0, p2}, Lcom/sun/mail/util/c;->write(I)V

    move p2, v0

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lcom/sun/mail/util/c;->e:I

    iget v1, p0, Lcom/sun/mail/util/c;->d:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x3

    add-int v1, p2, v0

    const/4 v2, 0x0

    if-gt v1, p3, :cond_2

    .line 4
    invoke-static {v0}, Lcom/sun/mail/util/c;->e(I)I

    move-result v3

    .line 5
    iget-boolean v4, p0, Lcom/sun/mail/util/c;->g:Z

    if-nez v4, :cond_1

    .line 6
    iget-object v4, p0, Lcom/sun/mail/util/c;->c:[B

    add-int/lit8 v5, v3, 0x1

    const/16 v6, 0xd

    aput-byte v6, v4, v3

    add-int/lit8 v3, v5, 0x1

    const/16 v6, 0xa

    .line 7
    aput-byte v6, v4, v5

    .line 8
    :cond_1
    iget-object v4, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/sun/mail/util/c;->c:[B

    invoke-static {p1, p2, v0, v5}, Lcom/sun/mail/util/c;->d([BII[B)[B

    move-result-object p2

    invoke-virtual {v4, p2, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 9
    iput v2, p0, Lcom/sun/mail/util/c;->d:I

    move p2, v1

    .line 10
    :cond_2
    :goto_1
    iget v0, p0, Lcom/sun/mail/util/c;->f:I

    add-int v1, p2, v0

    if-gt v1, p3, :cond_3

    .line 11
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/sun/mail/util/c;->c:[B

    invoke-static {p1, p2, v0, v3}, Lcom/sun/mail/util/c;->d([BII[B)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 12
    iget v0, p0, Lcom/sun/mail/util/c;->f:I

    add-int/2addr p2, v0

    goto :goto_1

    :cond_3
    add-int/lit8 v0, p2, 0x3

    if-gt v0, p3, :cond_4

    sub-int v0, p3, p2

    .line 13
    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x3

    .line 14
    invoke-static {v0}, Lcom/sun/mail/util/c;->e(I)I

    move-result v1

    .line 15
    iget-object v3, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/sun/mail/util/c;->c:[B

    invoke-static {p1, p2, v0, v4}, Lcom/sun/mail/util/c;->d([BII[B)[B

    move-result-object v4

    invoke-virtual {v3, v4, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr p2, v0

    .line 16
    iget v0, p0, Lcom/sun/mail/util/c;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sun/mail/util/c;->d:I

    :cond_4
    :goto_2
    if-ge p2, p3, :cond_5

    .line 17
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/sun/mail/util/c;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 18
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

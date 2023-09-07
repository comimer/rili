.class public Lcom/sun/mail/util/e;
.super Ljava/io/FilterInputStream;
.source "LineInputStream.java"


# static fields
.field private static d:Z

.field private static e:I


# instance fields
.field private a:Z

.field private b:[B

.field private c:Ljava/nio/charset/CharsetDecoder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "mail.mime.allowutf8"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/sun/mail/util/h;->b(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/sun/mail/util/e;->d:Z

    .line 9
    .line 10
    const/high16 v0, 0x100000

    .line 11
    .line 12
    sput v0, Lcom/sun/mail/util/e;->e:I

    .line 13
    .line 14
    return-void
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/sun/mail/util/e;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/sun/mail/util/e;->b:[B

    .line 4
    iput-boolean p2, p0, Lcom/sun/mail/util/e;->a:Z

    if-nez p2, :cond_0

    .line 5
    sget-boolean p1, Lcom/sun/mail/util/e;->d:Z

    if-eqz p1, :cond_0

    .line 6
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/util/e;->c:Ljava/nio/charset/CharsetDecoder;

    .line 7
    sget-object p2, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p1, p2}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 8
    iget-object p1, p0, Lcom/sun/mail/util/e;->c:Ljava/nio/charset/CharsetDecoder;

    sget-object p2, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p1, p2}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    :cond_0
    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sun/mail/util/e;->b:[B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x80

    .line 6
    .line 7
    new-array v0, v0, [B

    .line 8
    .line 9
    iput-object v0, p0, Lcom/sun/mail/util/e;->b:[B

    .line 10
    .line 11
    :cond_0
    array-length v1, v0

    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    :goto_0
    iget-object v4, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 15
    .line 16
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    const/4 v5, -0x1

    .line 21
    if-eq v4, v5, :cond_a

    .line 22
    .line 23
    const/16 v6, 0xa

    .line 24
    .line 25
    if-ne v4, v6, :cond_1

    .line 26
    .line 27
    goto/16 :goto_3

    .line 28
    .line 29
    :cond_1
    const/4 v7, 0x2

    .line 30
    const/4 v8, 0x1

    .line 31
    const/16 v9, 0xd

    .line 32
    .line 33
    if-ne v4, v9, :cond_7

    .line 34
    .line 35
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/io/InputStream;->markSupported()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 44
    .line 45
    invoke-virtual {v1, v7}, Ljava/io/InputStream;->mark(I)V

    .line 46
    .line 47
    .line 48
    :cond_2
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-ne v1, v9, :cond_3

    .line 55
    .line 56
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    goto :goto_1

    .line 63
    :cond_3
    move v8, v2

    .line 64
    :goto_1
    if-eq v1, v6, :cond_a

    .line 65
    .line 66
    iget-object v6, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 67
    .line 68
    invoke-virtual {v6}, Ljava/io/InputStream;->markSupported()Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-eqz v6, :cond_4

    .line 73
    .line 74
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    .line 77
    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_4
    iget-object v6, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 81
    .line 82
    instance-of v6, v6, Ljava/io/PushbackInputStream;

    .line 83
    .line 84
    if-nez v6, :cond_5

    .line 85
    .line 86
    new-instance v6, Ljava/io/PushbackInputStream;

    .line 87
    .line 88
    iget-object v10, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 89
    .line 90
    invoke-direct {v6, v10, v7}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 91
    .line 92
    .line 93
    iput-object v6, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 94
    .line 95
    :cond_5
    if-eq v1, v5, :cond_6

    .line 96
    .line 97
    iget-object v6, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 98
    .line 99
    check-cast v6, Ljava/io/PushbackInputStream;

    .line 100
    .line 101
    invoke-virtual {v6, v1}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 102
    .line 103
    .line 104
    :cond_6
    if-eqz v8, :cond_a

    .line 105
    .line 106
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 107
    .line 108
    check-cast v1, Ljava/io/PushbackInputStream;

    .line 109
    .line 110
    invoke-virtual {v1, v9}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 111
    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_7
    add-int/2addr v1, v5

    .line 115
    if-gez v1, :cond_9

    .line 116
    .line 117
    array-length v1, v0

    .line 118
    sget v5, Lcom/sun/mail/util/e;->e:I

    .line 119
    .line 120
    if-ge v1, v5, :cond_8

    .line 121
    .line 122
    array-length v0, v0

    .line 123
    mul-int/2addr v0, v7

    .line 124
    new-array v0, v0, [B

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_8
    array-length v0, v0

    .line 128
    add-int/2addr v0, v5

    .line 129
    new-array v0, v0, [B

    .line 130
    .line 131
    :goto_2
    array-length v1, v0

    .line 132
    sub-int/2addr v1, v3

    .line 133
    sub-int/2addr v1, v8

    .line 134
    iget-object v5, p0, Lcom/sun/mail/util/e;->b:[B

    .line 135
    .line 136
    invoke-static {v5, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    .line 138
    .line 139
    iput-object v0, p0, Lcom/sun/mail/util/e;->b:[B

    .line 140
    .line 141
    :cond_9
    add-int/lit8 v5, v3, 0x1

    .line 142
    .line 143
    int-to-byte v4, v4

    .line 144
    aput-byte v4, v0, v3

    .line 145
    .line 146
    move v3, v5

    .line 147
    goto/16 :goto_0

    .line 148
    .line 149
    :cond_a
    :goto_3
    if-ne v4, v5, :cond_b

    .line 150
    .line 151
    if-nez v3, :cond_b

    .line 152
    .line 153
    const/4 v0, 0x0

    .line 154
    return-object v0

    .line 155
    :cond_b
    iget-boolean v1, p0, Lcom/sun/mail/util/e;->a:Z

    .line 156
    .line 157
    if-eqz v1, :cond_c

    .line 158
    .line 159
    new-instance v1, Ljava/lang/String;

    .line 160
    .line 161
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 162
    .line 163
    invoke-direct {v1, v0, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 164
    .line 165
    .line 166
    return-object v1

    .line 167
    :cond_c
    sget-boolean v1, Lcom/sun/mail/util/e;->d:Z

    .line 168
    .line 169
    if-eqz v1, :cond_d

    .line 170
    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/util/e;->c:Ljava/nio/charset/CharsetDecoder;

    .line 172
    .line 173
    invoke-static {v0, v2, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    invoke-virtual {v1, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    return-object v0

    .line 186
    :catch_0
    :cond_d
    new-instance v1, Ljava/lang/String;

    .line 187
    .line 188
    invoke-direct {v1, v0, v2, v2, v3}, Ljava/lang/String;-><init>([BIII)V

    .line 189
    .line 190
    .line 191
    return-object v1
    .line 192
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
.end method

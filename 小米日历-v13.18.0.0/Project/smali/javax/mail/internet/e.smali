.class public Ljavax/mail/internet/e;
.super Ljavax/mail/d;
.source "MimeMultipart.java"


# instance fields
.field protected c:Lo7/g;

.field protected d:Z

.field protected e:Z

.field protected f:Ljava/lang/String;

.field protected g:Z

.field protected h:Z

.field protected i:Z

.field protected j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "mixed"

    .line 1
    invoke-direct {p0, v0}, Ljavax/mail/internet/e;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljavax/mail/d;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Ljavax/mail/internet/e;->c:Lo7/g;

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Ljavax/mail/internet/e;->d:Z

    .line 5
    iput-boolean v1, p0, Ljavax/mail/internet/e;->e:Z

    .line 6
    iput-object v0, p0, Ljavax/mail/internet/e;->f:Ljava/lang/String;

    .line 7
    iput-boolean v1, p0, Ljavax/mail/internet/e;->g:Z

    .line 8
    iput-boolean v1, p0, Ljavax/mail/internet/e;->h:Z

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Ljavax/mail/internet/e;->i:Z

    .line 10
    iput-boolean v1, p0, Ljavax/mail/internet/e;->j:Z

    .line 11
    invoke-static {}, Ljavax/mail/internet/j;->a()Ljava/lang/String;

    move-result-object v1

    .line 12
    new-instance v2, Ljavax/mail/internet/a;

    const-string v3, "multipart"

    invoke-direct {v2, v3, p1, v0}, Ljavax/mail/internet/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/mail/internet/ParameterList;)V

    const-string p1, "boundary"

    .line 13
    invoke-virtual {v2, p1, v1}, Ljavax/mail/internet/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v2}, Ljavax/mail/internet/a;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavax/mail/d;->b:Ljava/lang/String;

    .line 15
    invoke-virtual {p0}, Ljavax/mail/internet/e;->i()V

    return-void
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/16 v3, 0x2d

    .line 14
    .line 15
    if-eq v2, v3, :cond_0

    .line 16
    .line 17
    return v0

    .line 18
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p0, 0x1

    .line 22
    return p0
.end method

.method private h(Ljava/io/InputStream;)Ljavax/mail/internet/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljavax/mail/internet/e;->f(Ljava/io/InputStream;)Ljavax/mail/internet/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    return-object v0

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 11
    .line 12
    .line 13
    :catch_1
    throw v0
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

.method private static k(Ljava/io/InputStream;[BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p3, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    :goto_0
    if-lez p3, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-gtz v1, :cond_1

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_1
    add-int/2addr p2, v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    sub-int/2addr p3, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_2
    :goto_1
    if-lez v0, :cond_3

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_3
    const/4 v0, -0x1

    .line 22
    :goto_2
    return v0
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
    .line 183
    .line 184
    .line 185
.end method

.method private l(Ljava/io/InputStream;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p2, v0

    .line 4
    .line 5
    if-lez v2, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1, p2, p3}, Ljava/io/InputStream;->skip(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    cmp-long v0, v2, v0

    .line 12
    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    sub-long/2addr p2, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 18
    .line 19
    const-string p2, "can\'t skip"

    .line 20
    .line 21
    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    return-void
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
.method public declared-synchronized b(I)Ljavax/mail/a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/e;->j()V

    .line 3
    .line 4
    .line 5
    invoke-super {p0, p1}, Ljavax/mail/d;->b(I)Ljavax/mail/a;

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    .line 10
    return-object p1

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit p0

    .line 13
    throw p1
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

.method public declared-synchronized c()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/e;->j()V

    .line 3
    .line 4
    .line 5
    invoke-super {p0}, Ljavax/mail/d;->c()I

    .line 6
    .line 7
    .line 8
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    .line 10
    return v0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    monitor-exit p0

    .line 13
    throw v0
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

.method protected e(Ljava/io/InputStream;)Ljavax/mail/internet/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljavax/mail/internet/c;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljavax/mail/internet/c;-><init>(Ljava/io/InputStream;)V

    .line 4
    .line 5
    .line 6
    return-object v0
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
.end method

.method protected f(Ljava/io/InputStream;)Ljavax/mail/internet/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljavax/mail/internet/d;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljavax/mail/internet/d;-><init>(Ljava/io/InputStream;)V

    .line 4
    .line 5
    .line 6
    return-object v0
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
.end method

.method protected g(Ljavax/mail/internet/c;[B)Ljavax/mail/internet/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljavax/mail/internet/d;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Ljavax/mail/internet/d;-><init>(Ljavax/mail/internet/c;[B)V

    .line 4
    .line 5
    .line 6
    return-object v0
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

.method protected i()V
    .locals 2

    .line 1
    const-string v0, "mail.mime.multipart.ignoremissingendboundary"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/sun/mail/util/h;->b(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput-boolean v0, p0, Ljavax/mail/internet/e;->g:Z

    .line 9
    .line 10
    const-string v0, "mail.mime.multipart.ignoremissingboundaryparameter"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/sun/mail/util/h;->b(Ljava/lang/String;Z)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput-boolean v0, p0, Ljavax/mail/internet/e;->h:Z

    .line 17
    .line 18
    const-string v0, "mail.mime.multipart.ignoreexistingboundaryparameter"

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-static {v0, v1}, Lcom/sun/mail/util/h;->b(Ljava/lang/String;Z)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput-boolean v0, p0, Ljavax/mail/internet/e;->i:Z

    .line 26
    .line 27
    const-string v0, "mail.mime.multipart.allowempty"

    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/sun/mail/util/h;->b(Ljava/lang/String;Z)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iput-boolean v0, p0, Ljavax/mail/internet/e;->j:Z

    .line 34
    .line 35
    return-void
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

.method protected declared-synchronized j()V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v0, v1, Ljavax/mail/internet/e;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljavax/mail/internet/e;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11
    .line 12
    .line 13
    :try_start_2
    iget-object v0, v1, Ljavax/mail/internet/e;->c:Lo7/g;

    .line 14
    .line 15
    invoke-interface {v0}, Lo7/g;->b()Ljava/io/InputStream;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    instance-of v2, v0, Ljava/io/ByteArrayInputStream;

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    instance-of v2, v0, Ljava/io/BufferedInputStream;

    .line 24
    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    instance-of v2, v0, Ljavax/mail/internet/i;

    .line 28
    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    new-instance v2, Ljava/io/BufferedInputStream;

    .line 32
    .line 33
    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move-object v2, v0

    .line 38
    :goto_0
    :try_start_3
    nop

    .line 39
    instance-of v0, v2, Ljavax/mail/internet/i;

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    move-object v0, v2

    .line 44
    check-cast v0, Ljavax/mail/internet/i;

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    const/4 v0, 0x0

    .line 48
    :goto_1
    new-instance v4, Ljavax/mail/internet/a;

    .line 49
    .line 50
    iget-object v5, v1, Ljavax/mail/d;->b:Ljava/lang/String;

    .line 51
    .line 52
    invoke-direct {v4, v5}, Ljavax/mail/internet/a;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-boolean v5, v1, Ljavax/mail/internet/e;->i:Z

    .line 56
    .line 57
    if-nez v5, :cond_3

    .line 58
    .line 59
    const-string v5, "boundary"

    .line 60
    .line 61
    invoke-virtual {v4, v5}, Ljavax/mail/internet/a;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    if-eqz v4, :cond_3

    .line 66
    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v6, "--"

    .line 73
    .line 74
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    goto :goto_2

    .line 85
    :cond_3
    const/4 v4, 0x0

    .line 86
    :goto_2
    if-nez v4, :cond_5

    .line 87
    .line 88
    iget-boolean v5, v1, Ljavax/mail/internet/e;->h:Z

    .line 89
    .line 90
    if-nez v5, :cond_5

    .line 91
    .line 92
    iget-boolean v5, v1, Ljavax/mail/internet/e;->i:Z

    .line 93
    .line 94
    if-eqz v5, :cond_4

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_4
    new-instance v0, Ljavax/mail/internet/ParseException;

    .line 98
    .line 99
    const-string v2, "Missing boundary parameter"

    .line 100
    .line 101
    invoke-direct {v0, v2}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 105
    :cond_5
    :goto_3
    :try_start_4
    new-instance v5, Lcom/sun/mail/util/e;

    .line 106
    .line 107
    invoke-direct {v5, v2}, Lcom/sun/mail/util/e;-><init>(Ljava/io/InputStream;)V

    .line 108
    .line 109
    .line 110
    const/4 v6, 0x0

    .line 111
    :cond_6
    :goto_4
    invoke-virtual {v5}, Lcom/sun/mail/util/e;->c()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    const/16 v8, 0x9

    .line 116
    .line 117
    const/16 v9, 0x20

    .line 118
    .line 119
    const/4 v10, 0x2

    .line 120
    const/4 v11, 0x0

    .line 121
    const/4 v12, 0x1

    .line 122
    if-eqz v7, :cond_e

    .line 123
    .line 124
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 125
    .line 126
    .line 127
    move-result v13

    .line 128
    sub-int/2addr v13, v12

    .line 129
    :goto_5
    if-ltz v13, :cond_8

    .line 130
    .line 131
    invoke-virtual {v7, v13}, Ljava/lang/String;->charAt(I)C

    .line 132
    .line 133
    .line 134
    move-result v14

    .line 135
    if-eq v14, v9, :cond_7

    .line 136
    .line 137
    if-eq v14, v8, :cond_7

    .line 138
    .line 139
    goto :goto_6

    .line 140
    :cond_7
    add-int/lit8 v13, v13, -0x1

    .line 141
    .line 142
    goto :goto_5

    .line 143
    :cond_8
    :goto_6
    add-int/lit8 v13, v13, 0x1

    .line 144
    .line 145
    invoke-virtual {v7, v11, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    if-eqz v4, :cond_a

    .line 150
    .line 151
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v13

    .line 155
    if-eqz v13, :cond_9

    .line 156
    .line 157
    goto :goto_8

    .line 158
    :cond_9
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 159
    .line 160
    .line 161
    move-result v13

    .line 162
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 163
    .line 164
    .line 165
    move-result v14

    .line 166
    add-int/2addr v14, v10

    .line 167
    if-ne v13, v14, :cond_c

    .line 168
    .line 169
    invoke-virtual {v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 170
    .line 171
    .line 172
    move-result v13

    .line 173
    if-eqz v13, :cond_c

    .line 174
    .line 175
    const-string v13, "--"

    .line 176
    .line 177
    invoke-virtual {v7, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 178
    .line 179
    .line 180
    move-result v13

    .line 181
    if-eqz v13, :cond_c

    .line 182
    .line 183
    const/4 v7, 0x0

    .line 184
    goto :goto_8

    .line 185
    :cond_a
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 186
    .line 187
    .line 188
    move-result v13

    .line 189
    if-le v13, v10, :cond_c

    .line 190
    .line 191
    const-string v13, "--"

    .line 192
    .line 193
    invoke-virtual {v7, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 194
    .line 195
    .line 196
    move-result v13

    .line 197
    if-eqz v13, :cond_c

    .line 198
    .line 199
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 200
    .line 201
    .line 202
    move-result v13

    .line 203
    const/4 v14, 0x4

    .line 204
    if-le v13, v14, :cond_b

    .line 205
    .line 206
    invoke-static {v7}, Ljavax/mail/internet/e;->d(Ljava/lang/String;)Z

    .line 207
    .line 208
    .line 209
    move-result v13

    .line 210
    if-eqz v13, :cond_b

    .line 211
    .line 212
    goto :goto_7

    .line 213
    :cond_b
    move-object v4, v7

    .line 214
    goto :goto_8

    .line 215
    :cond_c
    :goto_7
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 216
    .line 217
    .line 218
    move-result v8

    .line 219
    if-lez v8, :cond_6

    .line 220
    .line 221
    if-nez v6, :cond_d

    .line 222
    .line 223
    new-instance v6, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 226
    .line 227
    .line 228
    move-result v8

    .line 229
    add-int/2addr v8, v10

    .line 230
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 231
    .line 232
    .line 233
    :cond_d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v7

    .line 240
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    goto/16 :goto_4

    .line 244
    .line 245
    :cond_e
    :goto_8
    if-eqz v6, :cond_f

    .line 246
    .line 247
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v6

    .line 251
    iput-object v6, v1, Ljavax/mail/internet/e;->f:Ljava/lang/String;

    .line 252
    .line 253
    :cond_f
    if-nez v7, :cond_11

    .line 254
    .line 255
    iget-boolean v0, v1, Ljavax/mail/internet/e;->j:Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 256
    .line 257
    if-eqz v0, :cond_10

    .line 258
    .line 259
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 260
    .line 261
    .line 262
    :catch_0
    monitor-exit p0

    .line 263
    return-void

    .line 264
    :cond_10
    :try_start_6
    new-instance v0, Ljavax/mail/internet/ParseException;

    .line 265
    .line 266
    const-string v3, "Missing start boundary"

    .line 267
    .line 268
    invoke-direct {v0, v3}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    throw v0

    .line 272
    :cond_11
    invoke-static {v4}, Lcom/sun/mail/util/a;->b(Ljava/lang/String;)[B

    .line 273
    .line 274
    .line 275
    move-result-object v4

    .line 276
    array-length v6, v4

    .line 277
    const/16 v7, 0x100

    .line 278
    .line 279
    new-array v7, v7, [I

    .line 280
    .line 281
    move v13, v11

    .line 282
    :goto_9
    if-ge v13, v6, :cond_12

    .line 283
    .line 284
    aget-byte v14, v4, v13

    .line 285
    .line 286
    and-int/lit16 v14, v14, 0xff

    .line 287
    .line 288
    add-int/lit8 v13, v13, 0x1

    .line 289
    .line 290
    aput v13, v7, v14

    .line 291
    .line 292
    goto :goto_9

    .line 293
    :cond_12
    new-array v13, v6, [I

    .line 294
    .line 295
    move v14, v6

    .line 296
    :goto_a
    if-lez v14, :cond_15

    .line 297
    .line 298
    add-int/lit8 v15, v6, -0x1

    .line 299
    .line 300
    :goto_b
    if-lt v15, v14, :cond_13

    .line 301
    .line 302
    aget-byte v3, v4, v15

    .line 303
    .line 304
    sub-int v16, v15, v14

    .line 305
    .line 306
    aget-byte v8, v4, v16

    .line 307
    .line 308
    if-ne v3, v8, :cond_14

    .line 309
    .line 310
    add-int/lit8 v3, v15, -0x1

    .line 311
    .line 312
    aput v14, v13, v3

    .line 313
    .line 314
    add-int/lit8 v15, v15, -0x1

    .line 315
    .line 316
    const/16 v8, 0x9

    .line 317
    .line 318
    goto :goto_b

    .line 319
    :cond_13
    :goto_c
    if-lez v15, :cond_14

    .line 320
    .line 321
    add-int/lit8 v15, v15, -0x1

    .line 322
    .line 323
    aput v14, v13, v15

    .line 324
    .line 325
    goto :goto_c

    .line 326
    :cond_14
    add-int/lit8 v14, v14, -0x1

    .line 327
    .line 328
    const/16 v8, 0x9

    .line 329
    .line 330
    goto :goto_a

    .line 331
    :cond_15
    add-int/lit8 v3, v6, -0x1

    .line 332
    .line 333
    aput v12, v13, v3

    .line 334
    .line 335
    const-wide/16 v14, 0x0

    .line 336
    .line 337
    move v8, v11

    .line 338
    move-wide/from16 v17, v14

    .line 339
    .line 340
    :goto_d
    if-nez v8, :cond_35

    .line 341
    .line 342
    if-eqz v0, :cond_19

    .line 343
    .line 344
    invoke-interface {v0}, Ljavax/mail/internet/i;->getPosition()J

    .line 345
    .line 346
    .line 347
    move-result-wide v14

    .line 348
    :goto_e
    invoke-virtual {v5}, Lcom/sun/mail/util/e;->c()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v16

    .line 352
    if-eqz v16, :cond_16

    .line 353
    .line 354
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    .line 355
    .line 356
    .line 357
    move-result v19

    .line 358
    if-lez v19, :cond_16

    .line 359
    .line 360
    goto :goto_e

    .line 361
    :cond_16
    if-nez v16, :cond_18

    .line 362
    .line 363
    iget-boolean v0, v1, Ljavax/mail/internet/e;->g:Z

    .line 364
    .line 365
    if-eqz v0, :cond_17

    .line 366
    .line 367
    iput-boolean v11, v1, Ljavax/mail/internet/e;->e:Z

    .line 368
    .line 369
    goto/16 :goto_21

    .line 370
    .line 371
    :cond_17
    new-instance v0, Ljavax/mail/internet/ParseException;

    .line 372
    .line 373
    const-string v3, "missing multipart end boundary"

    .line 374
    .line 375
    invoke-direct {v0, v3}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    throw v0

    .line 379
    :cond_18
    const/16 v20, 0x0

    .line 380
    .line 381
    goto :goto_f

    .line 382
    :cond_19
    invoke-virtual {v1, v2}, Ljavax/mail/internet/e;->e(Ljava/io/InputStream;)Ljavax/mail/internet/c;

    .line 383
    .line 384
    .line 385
    move-result-object v16

    .line 386
    move-object/from16 v20, v16

    .line 387
    .line 388
    :goto_f
    invoke-virtual {v2}, Ljava/io/InputStream;->markSupported()Z

    .line 389
    .line 390
    .line 391
    move-result v16

    .line 392
    if-eqz v16, :cond_34

    .line 393
    .line 394
    if-nez v0, :cond_1a

    .line 395
    .line 396
    new-instance v16, Ljava/io/ByteArrayOutputStream;

    .line 397
    .line 398
    invoke-direct/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 399
    .line 400
    .line 401
    move-object/from16 v21, v16

    .line 402
    .line 403
    goto :goto_10

    .line 404
    :cond_1a
    invoke-interface {v0}, Ljavax/mail/internet/i;->getPosition()J

    .line 405
    .line 406
    .line 407
    move-result-wide v17

    .line 408
    const/16 v21, 0x0

    .line 409
    .line 410
    :goto_10
    new-array v9, v6, [B

    .line 411
    .line 412
    new-array v12, v6, [B

    .line 413
    .line 414
    move v10, v11

    .line 415
    const/16 v22, 0x1

    .line 416
    .line 417
    :goto_11
    add-int/lit8 v11, v6, 0x4

    .line 418
    .line 419
    add-int/lit16 v11, v11, 0x3e8

    .line 420
    .line 421
    invoke-virtual {v2, v11}, Ljava/io/InputStream;->mark(I)V

    .line 422
    .line 423
    .line 424
    move/from16 v23, v3

    .line 425
    .line 426
    const/4 v11, 0x0

    .line 427
    invoke-static {v2, v9, v11, v6}, Ljavax/mail/internet/e;->k(Ljava/io/InputStream;[BII)I

    .line 428
    .line 429
    .line 430
    move-result v3

    .line 431
    if-ge v3, v6, :cond_1d

    .line 432
    .line 433
    iget-boolean v8, v1, Ljavax/mail/internet/e;->g:Z

    .line 434
    .line 435
    if-eqz v8, :cond_1c

    .line 436
    .line 437
    if-eqz v0, :cond_1b

    .line 438
    .line 439
    invoke-interface {v0}, Ljavax/mail/internet/i;->getPosition()J

    .line 440
    .line 441
    .line 442
    move-result-wide v17

    .line 443
    :cond_1b
    const/4 v8, 0x0

    .line 444
    iput-boolean v8, v1, Ljavax/mail/internet/e;->e:Z

    .line 445
    .line 446
    move-object/from16 v26, v4

    .line 447
    .line 448
    move-object/from16 v24, v5

    .line 449
    .line 450
    move-object/from16 v22, v9

    .line 451
    .line 452
    move-wide/from16 v4, v17

    .line 453
    .line 454
    const/4 v8, 0x1

    .line 455
    const/4 v11, 0x0

    .line 456
    goto/16 :goto_19

    .line 457
    .line 458
    :cond_1c
    new-instance v0, Ljavax/mail/internet/ParseException;

    .line 459
    .line 460
    const-string v3, "missing multipart end boundary"

    .line 461
    .line 462
    invoke-direct {v0, v3}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    throw v0

    .line 466
    :cond_1d
    move/from16 v11, v23

    .line 467
    .line 468
    :goto_12
    if-ltz v11, :cond_1f

    .line 469
    .line 470
    move-object/from16 v24, v5

    .line 471
    .line 472
    aget-byte v5, v9, v11

    .line 473
    .line 474
    move/from16 v25, v8

    .line 475
    .line 476
    aget-byte v8, v4, v11

    .line 477
    .line 478
    if-eq v5, v8, :cond_1e

    .line 479
    .line 480
    goto :goto_13

    .line 481
    :cond_1e
    add-int/lit8 v11, v11, -0x1

    .line 482
    .line 483
    move-object/from16 v5, v24

    .line 484
    .line 485
    move/from16 v8, v25

    .line 486
    .line 487
    goto :goto_12

    .line 488
    :cond_1f
    move-object/from16 v24, v5

    .line 489
    .line 490
    move/from16 v25, v8

    .line 491
    .line 492
    :goto_13
    if-gez v11, :cond_2f

    .line 493
    .line 494
    const/16 v5, 0xd

    .line 495
    .line 496
    const/16 v8, 0xa

    .line 497
    .line 498
    if-nez v22, :cond_22

    .line 499
    .line 500
    add-int/lit8 v11, v10, -0x1

    .line 501
    .line 502
    aget-byte v11, v12, v11

    .line 503
    .line 504
    if-eq v11, v5, :cond_20

    .line 505
    .line 506
    if-ne v11, v8, :cond_22

    .line 507
    .line 508
    :cond_20
    if-ne v11, v8, :cond_21

    .line 509
    .line 510
    const/4 v11, 0x2

    .line 511
    if-lt v10, v11, :cond_21

    .line 512
    .line 513
    add-int/lit8 v11, v10, -0x2

    .line 514
    .line 515
    aget-byte v11, v12, v11

    .line 516
    .line 517
    if-ne v11, v5, :cond_21

    .line 518
    .line 519
    const/4 v11, 0x2

    .line 520
    goto :goto_14

    .line 521
    :cond_21
    const/4 v11, 0x1

    .line 522
    goto :goto_14

    .line 523
    :cond_22
    const/4 v11, 0x0

    .line 524
    :goto_14
    if-nez v22, :cond_24

    .line 525
    .line 526
    if-lez v11, :cond_23

    .line 527
    .line 528
    goto :goto_15

    .line 529
    :cond_23
    move-object/from16 v26, v4

    .line 530
    .line 531
    move-object v11, v9

    .line 532
    move-object/from16 v4, v20

    .line 533
    .line 534
    move-object/from16 v9, v21

    .line 535
    .line 536
    goto/16 :goto_1c

    .line 537
    .line 538
    :cond_24
    :goto_15
    if-eqz v0, :cond_25

    .line 539
    .line 540
    invoke-interface {v0}, Ljavax/mail/internet/i;->getPosition()J

    .line 541
    .line 542
    .line 543
    move-result-wide v17

    .line 544
    move-object/from16 v22, v9

    .line 545
    .line 546
    int-to-long v8, v6

    .line 547
    sub-long v17, v17, v8

    .line 548
    .line 549
    int-to-long v8, v11

    .line 550
    sub-long v17, v17, v8

    .line 551
    .line 552
    goto :goto_16

    .line 553
    :cond_25
    move-object/from16 v22, v9

    .line 554
    .line 555
    :goto_16
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    .line 556
    .line 557
    .line 558
    move-result v8

    .line 559
    const/16 v9, 0x2d

    .line 560
    .line 561
    if-ne v8, v9, :cond_26

    .line 562
    .line 563
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    .line 564
    .line 565
    .line 566
    move-result v5

    .line 567
    if-ne v5, v9, :cond_26

    .line 568
    .line 569
    const/4 v5, 0x1

    .line 570
    iput-boolean v5, v1, Ljavax/mail/internet/e;->e:Z

    .line 571
    .line 572
    move-object/from16 v26, v4

    .line 573
    .line 574
    move-wide/from16 v4, v17

    .line 575
    .line 576
    const/4 v8, 0x1

    .line 577
    goto :goto_19

    .line 578
    :cond_26
    :goto_17
    const/16 v5, 0x20

    .line 579
    .line 580
    if-eq v8, v5, :cond_2e

    .line 581
    .line 582
    const/16 v9, 0x9

    .line 583
    .line 584
    if-ne v8, v9, :cond_27

    .line 585
    .line 586
    goto/16 :goto_1d

    .line 587
    .line 588
    :cond_27
    const/16 v5, 0xa

    .line 589
    .line 590
    if-ne v8, v5, :cond_28

    .line 591
    .line 592
    goto :goto_18

    .line 593
    :cond_28
    const/16 v9, 0xd

    .line 594
    .line 595
    if-ne v8, v9, :cond_2d

    .line 596
    .line 597
    const/4 v8, 0x1

    .line 598
    invoke-virtual {v2, v8}, Ljava/io/InputStream;->mark(I)V

    .line 599
    .line 600
    .line 601
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    .line 602
    .line 603
    .line 604
    move-result v8

    .line 605
    if-eq v8, v5, :cond_29

    .line 606
    .line 607
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    .line 608
    .line 609
    .line 610
    :cond_29
    :goto_18
    move-object/from16 v26, v4

    .line 611
    .line 612
    move-wide/from16 v4, v17

    .line 613
    .line 614
    move/from16 v8, v25

    .line 615
    .line 616
    :goto_19
    if-eqz v0, :cond_2a

    .line 617
    .line 618
    invoke-interface {v0, v14, v15, v4, v5}, Ljavax/mail/internet/i;->c(JJ)Ljava/io/InputStream;

    .line 619
    .line 620
    .line 621
    move-result-object v3

    .line 622
    invoke-direct {v1, v3}, Ljavax/mail/internet/e;->h(Ljava/io/InputStream;)Ljavax/mail/internet/d;

    .line 623
    .line 624
    .line 625
    move-result-object v3

    .line 626
    goto :goto_1b

    .line 627
    :cond_2a
    sub-int/2addr v10, v11

    .line 628
    if-lez v10, :cond_2b

    .line 629
    .line 630
    move-object/from16 v9, v21

    .line 631
    .line 632
    const/4 v11, 0x0

    .line 633
    invoke-virtual {v9, v12, v11, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 634
    .line 635
    .line 636
    goto :goto_1a

    .line 637
    :cond_2b
    move-object/from16 v9, v21

    .line 638
    .line 639
    :goto_1a
    iget-boolean v10, v1, Ljavax/mail/internet/e;->e:Z

    .line 640
    .line 641
    if-nez v10, :cond_2c

    .line 642
    .line 643
    if-lez v3, :cond_2c

    .line 644
    .line 645
    move-object/from16 v11, v22

    .line 646
    .line 647
    const/4 v10, 0x0

    .line 648
    invoke-virtual {v9, v11, v10, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 649
    .line 650
    .line 651
    :cond_2c
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 652
    .line 653
    .line 654
    move-result-object v3

    .line 655
    move-object/from16 v9, v20

    .line 656
    .line 657
    invoke-virtual {v1, v9, v3}, Ljavax/mail/internet/e;->g(Ljavax/mail/internet/c;[B)Ljavax/mail/internet/d;

    .line 658
    .line 659
    .line 660
    move-result-object v3

    .line 661
    :goto_1b
    invoke-super {v1, v3}, Ljavax/mail/d;->a(Ljavax/mail/a;)V

    .line 662
    .line 663
    .line 664
    move-wide/from16 v17, v4

    .line 665
    .line 666
    move/from16 v3, v23

    .line 667
    .line 668
    move-object/from16 v5, v24

    .line 669
    .line 670
    move-object/from16 v4, v26

    .line 671
    .line 672
    const/16 v9, 0x20

    .line 673
    .line 674
    const/4 v10, 0x2

    .line 675
    const/4 v11, 0x0

    .line 676
    const/4 v12, 0x1

    .line 677
    goto/16 :goto_d

    .line 678
    .line 679
    :cond_2d
    move-object/from16 v26, v4

    .line 680
    .line 681
    move-object/from16 v4, v20

    .line 682
    .line 683
    move-object/from16 v9, v21

    .line 684
    .line 685
    move-object/from16 v11, v22

    .line 686
    .line 687
    :goto_1c
    move-object v5, v9

    .line 688
    move-object v8, v11

    .line 689
    const/4 v11, 0x0

    .line 690
    goto :goto_1e

    .line 691
    :cond_2e
    :goto_1d
    move-object/from16 v26, v4

    .line 692
    .line 693
    move-object/from16 v4, v20

    .line 694
    .line 695
    move-object/from16 v5, v21

    .line 696
    .line 697
    move-object/from16 v8, v22

    .line 698
    .line 699
    const/16 v9, 0xd

    .line 700
    .line 701
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    .line 702
    .line 703
    .line 704
    move-result v21

    .line 705
    move-object/from16 v20, v4

    .line 706
    .line 707
    move-object/from16 v22, v8

    .line 708
    .line 709
    move/from16 v8, v21

    .line 710
    .line 711
    move-object/from16 v4, v26

    .line 712
    .line 713
    move-object/from16 v21, v5

    .line 714
    .line 715
    goto/16 :goto_17

    .line 716
    .line 717
    :cond_2f
    move-object/from16 v26, v4

    .line 718
    .line 719
    move-object v8, v9

    .line 720
    move-object/from16 v4, v20

    .line 721
    .line 722
    move-object/from16 v5, v21

    .line 723
    .line 724
    :goto_1e
    add-int/lit8 v3, v11, 0x1

    .line 725
    .line 726
    aget-byte v9, v8, v11

    .line 727
    .line 728
    and-int/lit8 v9, v9, 0x7f

    .line 729
    .line 730
    aget v9, v7, v9

    .line 731
    .line 732
    sub-int/2addr v3, v9

    .line 733
    aget v9, v13, v11

    .line 734
    .line 735
    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    .line 736
    .line 737
    .line 738
    move-result v3

    .line 739
    const/4 v9, 0x2

    .line 740
    if-ge v3, v9, :cond_32

    .line 741
    .line 742
    if-nez v0, :cond_30

    .line 743
    .line 744
    const/4 v3, 0x1

    .line 745
    if-le v10, v3, :cond_30

    .line 746
    .line 747
    add-int/lit8 v3, v10, -0x1

    .line 748
    .line 749
    const/4 v11, 0x0

    .line 750
    invoke-virtual {v5, v12, v11, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 751
    .line 752
    .line 753
    :cond_30
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    .line 754
    .line 755
    .line 756
    move v11, v10

    .line 757
    const-wide/16 v9, 0x1

    .line 758
    .line 759
    invoke-direct {v1, v2, v9, v10}, Ljavax/mail/internet/e;->l(Ljava/io/InputStream;J)V

    .line 760
    .line 761
    .line 762
    const/4 v3, 0x1

    .line 763
    if-lt v11, v3, :cond_31

    .line 764
    .line 765
    add-int/lit8 v10, v11, -0x1

    .line 766
    .line 767
    aget-byte v9, v12, v10

    .line 768
    .line 769
    const/4 v10, 0x0

    .line 770
    aput-byte v9, v12, v10

    .line 771
    .line 772
    aget-byte v9, v8, v10

    .line 773
    .line 774
    aput-byte v9, v12, v3

    .line 775
    .line 776
    const/4 v9, 0x0

    .line 777
    const/4 v10, 0x2

    .line 778
    goto :goto_20

    .line 779
    :cond_31
    const/4 v3, 0x0

    .line 780
    aget-byte v9, v8, v3

    .line 781
    .line 782
    aput-byte v9, v12, v3

    .line 783
    .line 784
    const/4 v9, 0x0

    .line 785
    const/4 v10, 0x1

    .line 786
    goto :goto_20

    .line 787
    :cond_32
    move v11, v10

    .line 788
    if-lez v11, :cond_33

    .line 789
    .line 790
    if-nez v0, :cond_33

    .line 791
    .line 792
    const/4 v9, 0x0

    .line 793
    invoke-virtual {v5, v12, v9, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 794
    .line 795
    .line 796
    goto :goto_1f

    .line 797
    :cond_33
    const/4 v9, 0x0

    .line 798
    :goto_1f
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    .line 799
    .line 800
    .line 801
    int-to-long v10, v3

    .line 802
    invoke-direct {v1, v2, v10, v11}, Ljavax/mail/internet/e;->l(Ljava/io/InputStream;J)V

    .line 803
    .line 804
    .line 805
    move v10, v3

    .line 806
    move-object/from16 v27, v12

    .line 807
    .line 808
    move-object v12, v8

    .line 809
    move-object/from16 v8, v27

    .line 810
    .line 811
    :goto_20
    move-object/from16 v20, v4

    .line 812
    .line 813
    move-object/from16 v21, v5

    .line 814
    .line 815
    move v11, v9

    .line 816
    move/from16 v22, v11

    .line 817
    .line 818
    move/from16 v3, v23

    .line 819
    .line 820
    move-object/from16 v5, v24

    .line 821
    .line 822
    move-object/from16 v4, v26

    .line 823
    .line 824
    move-object v9, v8

    .line 825
    move/from16 v8, v25

    .line 826
    .line 827
    goto/16 :goto_11

    .line 828
    .line 829
    :cond_34
    new-instance v0, Ljavax/mail/MessagingException;

    .line 830
    .line 831
    const-string v3, "Stream doesn\'t support mark"

    .line 832
    .line 833
    invoke-direct {v0, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 834
    .line 835
    .line 836
    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 837
    :cond_35
    :goto_21
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 838
    .line 839
    .line 840
    :catch_1
    const/4 v0, 0x1

    .line 841
    :try_start_8
    iput-boolean v0, v1, Ljavax/mail/internet/e;->d:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 842
    .line 843
    monitor-exit p0

    .line 844
    return-void

    .line 845
    :catchall_0
    move-exception v0

    .line 846
    goto :goto_22

    .line 847
    :catch_2
    move-exception v0

    .line 848
    :try_start_9
    new-instance v3, Ljavax/mail/MessagingException;

    .line 849
    .line 850
    const-string v4, "IO Error"

    .line 851
    .line 852
    invoke-direct {v3, v4, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 853
    .line 854
    .line 855
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 856
    :goto_22
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 857
    .line 858
    .line 859
    :catch_3
    :try_start_b
    throw v0

    .line 860
    :catch_4
    move-exception v0

    .line 861
    new-instance v2, Ljavax/mail/MessagingException;

    .line 862
    .line 863
    const-string v3, "No inputstream from datasource"

    .line 864
    .line 865
    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 866
    .line 867
    .line 868
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 869
    :catchall_1
    move-exception v0

    .line 870
    monitor-exit p0

    .line 871
    throw v0
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
.end method

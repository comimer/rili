.class public Lh5/a;
.super Ljavax/mail/internet/d;
.source "IMAPBodyPart.java"


# static fields
.field private static final s:Z


# instance fields
.field private n:Lh5/d;

.field private o:Lcom/sun/mail/imap/protocol/b;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "mail.mime.decodefilename"

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
    sput-boolean v0, Lh5/a;->s:Z

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
.end method

.method protected constructor <init>(Lcom/sun/mail/imap/protocol/b;Ljava/lang/String;Lh5/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljavax/mail/internet/d;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lh5/a;->r:Z

    .line 6
    .line 7
    iput-object p1, p0, Lh5/a;->o:Lcom/sun/mail/imap/protocol/b;

    .line 8
    .line 9
    iput-object p2, p0, Lh5/a;->p:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p3, p0, Lh5/a;->n:Lh5/d;

    .line 12
    .line 13
    new-instance p2, Ljavax/mail/internet/a;

    .line 14
    .line 15
    iget-object p3, p1, Lcom/sun/mail/imap/protocol/b;->a:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v0, p1, Lcom/sun/mail/imap/protocol/b;->b:Ljava/lang/String;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/sun/mail/imap/protocol/b;->e:Ljavax/mail/internet/ParameterList;

    .line 20
    .line 21
    invoke-direct {p2, p3, v0, p1}, Ljavax/mail/internet/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/mail/internet/ParameterList;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Ljavax/mail/internet/a;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lh5/a;->q:Ljava/lang/String;

    .line 29
    .line 30
    return-void
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
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh5/a;->q:Ljava/lang/String;

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
.end method

.method public f()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh5/a;->o:Lcom/sun/mail/imap/protocol/b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/sun/mail/imap/protocol/b;->c:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
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
.end method

.method protected i()Ljava/io/InputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh5/a;->n:Lh5/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lh5/d;->F()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lh5/a;->n:Lh5/d;

    .line 8
    .line 9
    invoke-virtual {v1}, Lh5/d;->D()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    iget-object v2, p0, Lh5/a;->n:Lh5/d;

    .line 15
    .line 16
    invoke-virtual {v2}, Lh5/d;->G()Lcom/sun/mail/imap/protocol/e;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget-object v3, p0, Lh5/a;->n:Lh5/d;

    .line 21
    .line 22
    invoke-virtual {v3}, Lh5/d;->A()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/e;->r()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    iget-object v3, p0, Lh5/a;->n:Lh5/d;

    .line 32
    .line 33
    invoke-virtual {v3}, Lh5/d;->C()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    const/4 v4, -0x1

    .line 38
    if-eq v3, v4, :cond_1

    .line 39
    .line 40
    new-instance v2, Lh5/c;

    .line 41
    .line 42
    iget-object v3, p0, Lh5/a;->n:Lh5/d;

    .line 43
    .line 44
    iget-object v5, p0, Lh5/a;->p:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v3}, Lh5/d;->I()Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-eqz v6, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iget-object v4, p0, Lh5/a;->o:Lcom/sun/mail/imap/protocol/b;

    .line 54
    .line 55
    iget v4, v4, Lcom/sun/mail/imap/protocol/b;->d:I

    .line 56
    .line 57
    :goto_0
    invoke-direct {v2, v3, v5, v4, v0}, Lh5/c;-><init>(Lh5/d;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    return-object v2

    .line 62
    :cond_1
    :try_start_2
    iget-object v3, p0, Lh5/a;->n:Lh5/d;

    .line 63
    .line 64
    invoke-virtual {v3}, Lh5/d;->H()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    iget-object v0, p0, Lh5/a;->p:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v2, v3, v0}, Lcom/sun/mail/imap/protocol/e;->u(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/a;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    iget-object v0, p0, Lh5/a;->p:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v2, v3, v0}, Lcom/sun/mail/imap/protocol/e;->j(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/a;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    :goto_1
    if-eqz v0, :cond_3

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/a;->b()Ljava/io/ByteArrayInputStream;

    .line 86
    .line 87
    .line 88
    move-result-object v0
    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    goto :goto_2

    .line 90
    :cond_3
    const/4 v0, 0x0

    .line 91
    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 92
    if-nez v0, :cond_4

    .line 93
    .line 94
    iget-object v0, p0, Lh5/a;->n:Lh5/d;

    .line 95
    .line 96
    invoke-virtual {v0}, Lh5/d;->B()V

    .line 97
    .line 98
    .line 99
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 100
    .line 101
    const/4 v1, 0x0

    .line 102
    new-array v1, v1, [B

    .line 103
    .line 104
    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 105
    .line 106
    .line 107
    :cond_4
    return-object v0

    .line 108
    :catchall_0
    move-exception v0

    .line 109
    goto :goto_3

    .line 110
    :catch_0
    move-exception v0

    .line 111
    :try_start_4
    new-instance v2, Ljavax/mail/MessagingException;

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 118
    .line 119
    .line 120
    throw v2

    .line 121
    :catch_1
    move-exception v0

    .line 122
    new-instance v2, Ljavax/mail/FolderClosedException;

    .line 123
    .line 124
    iget-object v3, p0, Lh5/a;->n:Lh5/d;

    .line 125
    .line 126
    invoke-virtual {v3}, Ljavax/mail/Message;->i()Ljavax/mail/b;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-direct {v2, v3, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/b;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw v2

    .line 138
    :goto_3
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 139
    throw v0
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
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
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

.method public declared-synchronized j()Lo7/e;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/d;->b:Lo7/e;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lh5/a;->o:Lcom/sun/mail/imap/protocol/b;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/b;->a()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lo7/e;

    .line 15
    .line 16
    new-instance v1, Lh5/e;

    .line 17
    .line 18
    iget-object v2, p0, Lh5/a;->o:Lcom/sun/mail/imap/protocol/b;

    .line 19
    .line 20
    iget-object v2, v2, Lcom/sun/mail/imap/protocol/b;->f:[Lcom/sun/mail/imap/protocol/b;

    .line 21
    .line 22
    iget-object v3, p0, Lh5/a;->p:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v4, p0, Lh5/a;->n:Lh5/d;

    .line 25
    .line 26
    invoke-direct {v1, p0, v2, v3, v4}, Lh5/e;-><init>(Ljavax/mail/internet/f;[Lcom/sun/mail/imap/protocol/b;Ljava/lang/String;Lh5/d;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Lo7/e;-><init>(Lo7/g;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Ljavax/mail/internet/d;->b:Lo7/e;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lh5/a;->o:Lcom/sun/mail/imap/protocol/b;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/b;->b()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    iget-object v0, p0, Lh5/a;->n:Lh5/d;

    .line 44
    .line 45
    invoke-virtual {v0}, Lh5/d;->K()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    iget-object v0, p0, Lh5/a;->o:Lcom/sun/mail/imap/protocol/b;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/sun/mail/imap/protocol/b;->g:Lcom/sun/mail/imap/protocol/c;

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    new-instance v0, Lo7/e;

    .line 58
    .line 59
    new-instance v1, Lh5/f;

    .line 60
    .line 61
    iget-object v2, p0, Lh5/a;->n:Lh5/d;

    .line 62
    .line 63
    iget-object v3, p0, Lh5/a;->o:Lcom/sun/mail/imap/protocol/b;

    .line 64
    .line 65
    iget-object v4, v3, Lcom/sun/mail/imap/protocol/b;->f:[Lcom/sun/mail/imap/protocol/b;

    .line 66
    .line 67
    const/4 v5, 0x0

    .line 68
    aget-object v4, v4, v5

    .line 69
    .line 70
    iget-object v3, v3, Lcom/sun/mail/imap/protocol/b;->g:Lcom/sun/mail/imap/protocol/c;

    .line 71
    .line 72
    iget-object v5, p0, Lh5/a;->p:Ljava/lang/String;

    .line 73
    .line 74
    invoke-direct {v1, v2, v4, v3, v5}, Lh5/f;-><init>(Lh5/d;Lcom/sun/mail/imap/protocol/b;Lcom/sun/mail/imap/protocol/c;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Lh5/a;->q:Ljava/lang/String;

    .line 78
    .line 79
    invoke-direct {v0, v1, v2}, Lo7/e;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iput-object v0, p0, Ljavax/mail/internet/d;->b:Lo7/e;

    .line 83
    .line 84
    :cond_1
    :goto_0
    invoke-super {p0}, Ljavax/mail/internet/d;->j()Lo7/e;

    .line 85
    .line 86
    .line 87
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    .line 89
    return-object v0

    .line 90
    :catchall_0
    move-exception v0

    .line 91
    monitor-exit p0

    .line 92
    throw v0
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
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
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

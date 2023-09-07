.class public Lh5/d;
.super Ljavax/mail/internet/MimeMessage;
.source "IMAPMessage.java"


# instance fields
.field private volatile A:Z

.field private B:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected p:Lcom/sun/mail/imap/protocol/b;

.field protected q:Lcom/sun/mail/imap/protocol/c;

.field private r:Ljava/util/Date;

.field private s:J

.field private t:Ljava/lang/Boolean;

.field private volatile u:J

.field private volatile v:J

.field protected w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private volatile z:Z


# direct methods
.method protected constructor <init>(Ljavax/mail/h;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/h;)V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lh5/d;->s:J

    .line 7
    .line 8
    iput-wide v0, p0, Lh5/d;->u:J

    .line 9
    .line 10
    iput-wide v0, p0, Lh5/d;->v:J

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lh5/d;->z:Z

    .line 14
    .line 15
    iput-boolean p1, p0, Lh5/d;->A:Z

    .line 16
    .line 17
    new-instance p1, Ljava/util/Hashtable;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-direct {p1, v0}, Ljava/util/Hashtable;-><init>(I)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lh5/d;->B:Ljava/util/Hashtable;

    .line 24
    .line 25
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
.end method

.method private J(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lh5/d;->z:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    return p1

    .line 7
    :cond_0
    iget-object v0, p0, Lh5/d;->B:Ljava/util/Hashtable;

    .line 8
    .line 9
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
    .line 20
    .line 21
    .line 22
.end method

.method private declared-synchronized L()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lh5/d;->p:Lcom/sun/mail/imap/protocol/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lh5/d;->D()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    :try_start_2
    invoke-virtual {p0}, Lh5/d;->G()Lcom/sun/mail/imap/protocol/e;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0}, Lh5/d;->A()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lh5/d;->H()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {v1, v2}, Lcom/sun/mail/imap/protocol/e;->l(I)Lcom/sun/mail/imap/protocol/b;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iput-object v1, p0, Lh5/d;->p:Lcom/sun/mail/imap/protocol/b;
    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 33
    monitor-exit p0

    .line 34
    return-void

    .line 35
    :cond_1
    :try_start_4
    invoke-virtual {p0}, Lh5/d;->B()V

    .line 36
    .line 37
    .line 38
    new-instance v1, Ljavax/mail/MessagingException;

    .line 39
    .line 40
    const-string v2, "Unable to load BODYSTRUCTURE"

    .line 41
    .line 42
    invoke-direct {v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v1

    .line 46
    :catchall_0
    move-exception v1

    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception v1

    .line 49
    invoke-virtual {p0}, Lh5/d;->B()V

    .line 50
    .line 51
    .line 52
    new-instance v2, Ljavax/mail/MessagingException;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 59
    .line 60
    .line 61
    throw v2

    .line 62
    :catch_1
    move-exception v1

    .line 63
    new-instance v2, Ljavax/mail/FolderClosedException;

    .line 64
    .line 65
    iget-object v3, p0, Ljavax/mail/Message;->c:Ljavax/mail/b;

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-direct {v2, v3, v1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/b;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v2

    .line 75
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 76
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 77
    :catchall_1
    move-exception v0

    .line 78
    monitor-exit p0

    .line 79
    throw v0
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

.method private declared-synchronized M()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lh5/d;->q:Lcom/sun/mail/imap/protocol/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lh5/d;->D()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    :try_start_2
    invoke-virtual {p0}, Lh5/d;->G()Lcom/sun/mail/imap/protocol/e;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0}, Lh5/d;->A()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lh5/d;->H()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const-string v3, "ENVELOPE INTERNALDATE RFC822.SIZE"

    .line 25
    .line 26
    invoke-virtual {v1, v2, v3}, Lcom/sun/mail/imap/protocol/e;->i(ILjava/lang/String;)[Lcom/sun/mail/iap/c;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const/4 v4, 0x0

    .line 31
    move v5, v4

    .line 32
    :goto_0
    array-length v6, v3

    .line 33
    if-ge v5, v6, :cond_6

    .line 34
    .line 35
    aget-object v6, v3, v5

    .line 36
    .line 37
    if-eqz v6, :cond_5

    .line 38
    .line 39
    instance-of v7, v6, Lcom/sun/mail/imap/protocol/d;

    .line 40
    .line 41
    if-eqz v7, :cond_5

    .line 42
    .line 43
    check-cast v6, Lcom/sun/mail/imap/protocol/d;

    .line 44
    .line 45
    invoke-virtual {v6}, Lcom/sun/mail/imap/protocol/f;->i()I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    if-eq v6, v2, :cond_1

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_1
    aget-object v6, v3, v5

    .line 53
    .line 54
    check-cast v6, Lcom/sun/mail/imap/protocol/d;

    .line 55
    .line 56
    invoke-virtual {v6}, Lcom/sun/mail/imap/protocol/d;->l()I

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    move v8, v4

    .line 61
    :goto_1
    if-ge v8, v7, :cond_5

    .line 62
    .line 63
    invoke-virtual {v6, v8}, Lcom/sun/mail/imap/protocol/d;->k(I)Lcom/sun/mail/imap/protocol/h;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    instance-of v10, v9, Lcom/sun/mail/imap/protocol/c;

    .line 68
    .line 69
    if-eqz v10, :cond_2

    .line 70
    .line 71
    check-cast v9, Lcom/sun/mail/imap/protocol/c;

    .line 72
    .line 73
    iput-object v9, p0, Lh5/d;->q:Lcom/sun/mail/imap/protocol/c;

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_2
    instance-of v10, v9, Lcom/sun/mail/imap/protocol/g;

    .line 77
    .line 78
    if-eqz v10, :cond_3

    .line 79
    .line 80
    check-cast v9, Lcom/sun/mail/imap/protocol/g;

    .line 81
    .line 82
    invoke-virtual {v9}, Lcom/sun/mail/imap/protocol/g;->a()Ljava/util/Date;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    iput-object v9, p0, Lh5/d;->r:Ljava/util/Date;

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_3
    instance-of v10, v9, Lcom/sun/mail/imap/protocol/l;

    .line 90
    .line 91
    if-eqz v10, :cond_4

    .line 92
    .line 93
    check-cast v9, Lcom/sun/mail/imap/protocol/l;

    .line 94
    .line 95
    iget-wide v9, v9, Lcom/sun/mail/imap/protocol/l;->a:J

    .line 96
    .line 97
    iput-wide v9, p0, Lh5/d;->s:J

    .line 98
    .line 99
    :cond_4
    :goto_2
    add-int/lit8 v8, v8, 0x1

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_6
    invoke-virtual {v1, v3}, Lcom/sun/mail/iap/b;->d([Lcom/sun/mail/iap/c;)V

    .line 106
    .line 107
    .line 108
    array-length v2, v3

    .line 109
    add-int/lit8 v2, v2, -0x1

    .line 110
    .line 111
    aget-object v2, v3, v2

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Lcom/sun/mail/iap/b;->c(Lcom/sun/mail/iap/c;)V
    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    .line 115
    .line 116
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    :try_start_4
    iget-object v0, p0, Lh5/d;->q:Lcom/sun/mail/imap/protocol/c;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 118
    .line 119
    if-eqz v0, :cond_7

    .line 120
    .line 121
    monitor-exit p0

    .line 122
    return-void

    .line 123
    :cond_7
    :try_start_5
    new-instance v0, Ljavax/mail/MessagingException;

    .line 124
    .line 125
    const-string v1, "Failed to load IMAP envelope"

    .line 126
    .line 127
    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 131
    :catchall_0
    move-exception v1

    .line 132
    goto :goto_4

    .line 133
    :catch_0
    move-exception v1

    .line 134
    :try_start_6
    invoke-virtual {p0}, Lh5/d;->B()V

    .line 135
    .line 136
    .line 137
    new-instance v2, Ljavax/mail/MessagingException;

    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 144
    .line 145
    .line 146
    throw v2

    .line 147
    :catch_1
    move-exception v1

    .line 148
    new-instance v2, Ljavax/mail/FolderClosedException;

    .line 149
    .line 150
    iget-object v3, p0, Ljavax/mail/Message;->c:Ljavax/mail/b;

    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-direct {v2, v3, v1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/b;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw v2

    .line 160
    :goto_4
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 161
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 162
    :catchall_1
    move-exception v0

    .line 163
    monitor-exit p0

    .line 164
    throw v0
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

.method private declared-synchronized N()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->h:Ljavax/mail/Flags;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lh5/d;->D()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    :try_start_2
    invoke-virtual {p0}, Lh5/d;->G()Lcom/sun/mail/imap/protocol/e;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0}, Lh5/d;->A()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lh5/d;->H()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {v1, v2}, Lcom/sun/mail/imap/protocol/e;->m(I)Ljavax/mail/Flags;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iput-object v1, p0, Ljavax/mail/internet/MimeMessage;->h:Ljavax/mail/Flags;

    .line 29
    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    new-instance v1, Ljavax/mail/Flags;

    .line 33
    .line 34
    invoke-direct {v1}, Ljavax/mail/Flags;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Ljavax/mail/internet/MimeMessage;->h:Ljavax/mail/Flags;
    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    .line 39
    :cond_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 40
    monitor-exit p0

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception v1

    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception v1

    .line 45
    :try_start_4
    invoke-virtual {p0}, Lh5/d;->B()V

    .line 46
    .line 47
    .line 48
    new-instance v2, Ljavax/mail/MessagingException;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 55
    .line 56
    .line 57
    throw v2

    .line 58
    :catch_1
    move-exception v1

    .line 59
    new-instance v2, Ljavax/mail/FolderClosedException;

    .line 60
    .line 61
    iget-object v3, p0, Ljavax/mail/Message;->c:Ljavax/mail/b;

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-direct {v2, v3, v1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/b;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v2

    .line 71
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 72
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 73
    :catchall_1
    move-exception v0

    .line 74
    monitor-exit p0

    .line 75
    throw v0
.end method

.method private O(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lh5/d;->B:Ljava/util/Hashtable;

    .line 2
    .line 3
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 4
    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void
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

.method private Q(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lh5/d;->w:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lh5/d;->w:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, "."

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
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
.end method

.method private z([Ljavax/mail/internet/InternetAddress;)[Ljavax/mail/internet/InternetAddress;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p1}, [Ljavax/mail/internet/InternetAddress;->clone()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, [Ljavax/mail/internet/InternetAddress;

    .line 10
    .line 11
    return-object p1
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
.method protected A()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessageRemovedException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ljavax/mail/Message;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljavax/mail/MessageRemovedException;

    .line 7
    .line 8
    invoke-direct {v0}, Ljavax/mail/MessageRemovedException;-><init>()V

    .line 9
    .line 10
    .line 11
    throw v0
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

.method protected B()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessageRemovedException;,
            Ljavax/mail/FolderClosedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lh5/d;->D()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lh5/d;->G()Lcom/sun/mail/imap/protocol/e;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/e;->t()V
    :try_end_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    goto :goto_1

    .line 16
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    iget-boolean v0, p0, Ljavax/mail/Message;->b:Z

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance v0, Ljavax/mail/MessageRemovedException;

    .line 23
    .line 24
    invoke-direct {v0}, Ljavax/mail/MessageRemovedException;-><init>()V

    .line 25
    .line 26
    .line 27
    throw v0

    .line 28
    :catch_1
    move-exception v1

    .line 29
    :try_start_2
    new-instance v2, Ljavax/mail/FolderClosedException;

    .line 30
    .line 31
    iget-object v3, p0, Ljavax/mail/Message;->c:Ljavax/mail/b;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-direct {v2, v3, v1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/b;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v2

    .line 41
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    throw v1
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

.method protected C()I
    .locals 1

    .line 1
    iget-object v0, p0, Ljavax/mail/Message;->c:Ljavax/mail/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljavax/mail/b;->j()Ljavax/mail/i;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lh5/j;

    .line 8
    .line 9
    invoke-virtual {v0}, Lh5/j;->z()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
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

.method protected D()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ljavax/mail/Message;->c:Ljavax/mail/b;

    .line 2
    .line 3
    check-cast v0, Lh5/b;

    .line 4
    .line 5
    iget-object v0, v0, Lh5/b;->h:Ljava/lang/Object;

    .line 6
    .line 7
    return-object v0
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

.method public declared-synchronized E()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lh5/d;->v:J

    .line 3
    .line 4
    const-wide/16 v2, -0x1

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-wide v0, p0, Lh5/d;->v:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-wide v0

    .line 14
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lh5/d;->D()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 19
    :try_start_2
    invoke-virtual {p0}, Lh5/d;->G()Lcom/sun/mail/imap/protocol/e;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p0}, Lh5/d;->A()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lh5/d;->H()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {v1, v2}, Lcom/sun/mail/imap/protocol/e;->n(I)Lcom/sun/mail/imap/protocol/i;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    iget-wide v1, v1, Lcom/sun/mail/imap/protocol/i;->a:J

    .line 37
    .line 38
    iput-wide v1, p0, Lh5/d;->v:J
    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    .line 40
    :cond_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 41
    :try_start_4
    iget-wide v0, p0, Lh5/d;->v:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 42
    .line 43
    monitor-exit p0

    .line 44
    return-wide v0

    .line 45
    :catchall_0
    move-exception v1

    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception v1

    .line 48
    :try_start_5
    new-instance v2, Ljavax/mail/MessagingException;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 55
    .line 56
    .line 57
    throw v2

    .line 58
    :catch_1
    move-exception v1

    .line 59
    new-instance v2, Ljavax/mail/FolderClosedException;

    .line 60
    .line 61
    iget-object v3, p0, Ljavax/mail/Message;->c:Ljavax/mail/b;

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-direct {v2, v3, v1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/b;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v2

    .line 71
    :goto_0
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 72
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 73
    :catchall_1
    move-exception v0

    .line 74
    monitor-exit p0

    .line 75
    throw v0
.end method

.method public declared-synchronized F()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lh5/d;->t:Ljava/lang/Boolean;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Ljavax/mail/Message;->c:Ljavax/mail/b;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljavax/mail/b;->j()Ljavax/mail/i;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lh5/j;

    .line 13
    .line 14
    invoke-virtual {v0}, Lh5/j;->H()Z

    .line 15
    .line 16
    .line 17
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    .line 19
    return v0

    .line 20
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    monitor-exit p0

    .line 25
    return v0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    monitor-exit p0

    .line 28
    throw v0
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

.method protected G()Lcom/sun/mail/imap/protocol/e;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;,
            Ljavax/mail/FolderClosedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljavax/mail/Message;->c:Ljavax/mail/b;

    .line 2
    .line 3
    check-cast v0, Lh5/b;

    .line 4
    .line 5
    invoke-virtual {v0}, Lh5/b;->H()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Ljavax/mail/Message;->c:Ljavax/mail/b;

    .line 9
    .line 10
    check-cast v0, Lh5/b;

    .line 11
    .line 12
    iget-object v0, v0, Lh5/b;->g:Lcom/sun/mail/imap/protocol/e;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    new-instance v0, Ljavax/mail/FolderClosedException;

    .line 18
    .line 19
    iget-object v1, p0, Ljavax/mail/Message;->c:Ljavax/mail/b;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/b;)V

    .line 22
    .line 23
    .line 24
    throw v0
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
.end method

.method protected H()I
    .locals 1

    .line 1
    iget-object v0, p0, Ljavax/mail/Message;->c:Ljavax/mail/b;

    .line 2
    .line 3
    check-cast v0, Lh5/b;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljavax/mail/Message;->k()I

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    throw v0
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

.method protected I()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ljavax/mail/Message;->c:Ljavax/mail/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljavax/mail/b;->j()Ljavax/mail/i;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lh5/j;

    .line 8
    .line 9
    invoke-virtual {v0}, Lh5/j;->Z()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
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

.method protected K()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/FolderClosedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljavax/mail/Message;->c:Ljavax/mail/b;

    .line 2
    .line 3
    check-cast v0, Lh5/b;

    .line 4
    .line 5
    iget-object v0, v0, Lh5/b;->g:Lcom/sun/mail/imap/protocol/e;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/e;->r()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    new-instance v0, Ljavax/mail/FolderClosedException;

    .line 15
    .line 16
    iget-object v1, p0, Ljavax/mail/Message;->c:Ljavax/mail/b;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/b;)V

    .line 19
    .line 20
    .line 21
    throw v0
    .line 22
.end method

.method public declared-synchronized P(Z)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    iput-object p1, p0, Lh5/d;->t:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p0

    .line 12
    throw p1
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

.method public declared-synchronized a()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lh5/d;->A()V

    .line 3
    .line 4
    .line 5
    iget-boolean v0, p0, Lh5/d;->A:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->a()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    .line 14
    return-object v0

    .line 15
    :cond_0
    :try_start_1
    iget-object v0, p0, Lh5/d;->x:Ljava/lang/String;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-direct {p0}, Lh5/d;->L()V

    .line 20
    .line 21
    .line 22
    new-instance v0, Ljavax/mail/internet/a;

    .line 23
    .line 24
    iget-object v1, p0, Lh5/d;->p:Lcom/sun/mail/imap/protocol/b;

    .line 25
    .line 26
    iget-object v2, v1, Lcom/sun/mail/imap/protocol/b;->a:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v3, v1, Lcom/sun/mail/imap/protocol/b;->b:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/sun/mail/imap/protocol/b;->e:Ljavax/mail/internet/ParameterList;

    .line 31
    .line 32
    invoke-direct {v0, v2, v3, v1}, Ljavax/mail/internet/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/mail/internet/ParameterList;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljavax/mail/internet/a;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lh5/d;->x:Ljava/lang/String;

    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lh5/d;->x:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    monitor-exit p0

    .line 44
    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    monitor-exit p0

    .line 47
    throw v0
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

.method public b()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lh5/d;->A()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lh5/d;->s:J

    .line 5
    .line 6
    const-wide/16 v2, -0x1

    .line 7
    .line 8
    cmp-long v0, v0, v2

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Lh5/d;->M()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-wide v0, p0, Lh5/d;->s:J

    .line 16
    .line 17
    const-wide/32 v2, 0x7fffffff

    .line 18
    .line 19
    .line 20
    cmp-long v2, v0, v2

    .line 21
    .line 22
    if-lez v2, :cond_1

    .line 23
    .line 24
    const v0, 0x7fffffff

    .line 25
    .line 26
    .line 27
    return v0

    .line 28
    :cond_1
    long-to-int v0, v0

    .line 29
    return v0
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

.method public e(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lh5/d;->A()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lh5/d;->J(Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->g:Ljavax/mail/internet/c;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljavax/mail/internet/c;->c(Ljava/lang/String;)[Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    :cond_0
    invoke-virtual {p0}, Lh5/d;->D()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    invoke-virtual {p0}, Lh5/d;->G()Lcom/sun/mail/imap/protocol/e;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p0}, Lh5/d;->A()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/e;->r()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/4 v3, 0x0

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0}, Lh5/d;->H()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v5, "HEADER.FIELDS ("

    .line 46
    .line 47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v5, ")"

    .line 54
    .line 55
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-direct {p0, v4}, Lh5/d;->Q(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v1, v2, v4}, Lcom/sun/mail/imap/protocol/e;->u(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/a;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/a;->b()Ljava/io/ByteArrayInputStream;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    move-object v1, v3

    .line 78
    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {p0}, Lh5/d;->H()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v5, "HEADER.LINES ("

    .line 89
    .line 90
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v5, ")"

    .line 97
    .line 98
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-virtual {v1, v2, v4}, Lcom/sun/mail/imap/protocol/e;->o(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/k;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    if-eqz v1, :cond_1

    .line 110
    .line 111
    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/k;->a()Ljava/io/ByteArrayInputStream;

    .line 112
    .line 113
    .line 114
    move-result-object v1
    :try_end_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    if-nez v1, :cond_3

    .line 117
    .line 118
    return-object v3

    .line 119
    :cond_3
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->g:Ljavax/mail/internet/c;

    .line 120
    .line 121
    if-nez v0, :cond_4

    .line 122
    .line 123
    new-instance v0, Ljavax/mail/internet/c;

    .line 124
    .line 125
    invoke-direct {v0}, Ljavax/mail/internet/c;-><init>()V

    .line 126
    .line 127
    .line 128
    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->g:Ljavax/mail/internet/c;

    .line 129
    .line 130
    :cond_4
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->g:Ljavax/mail/internet/c;

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Ljavax/mail/internet/c;->e(Ljava/io/InputStream;)V

    .line 133
    .line 134
    .line 135
    invoke-direct {p0, p1}, Lh5/d;->O(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->g:Ljavax/mail/internet/c;

    .line 139
    .line 140
    invoke-virtual {v0, p1}, Ljavax/mail/internet/c;->c(Ljava/lang/String;)[Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    return-object p1

    .line 145
    :catchall_0
    move-exception p1

    .line 146
    goto :goto_1

    .line 147
    :catch_0
    move-exception p1

    .line 148
    :try_start_2
    invoke-virtual {p0}, Lh5/d;->B()V

    .line 149
    .line 150
    .line 151
    new-instance v1, Ljavax/mail/MessagingException;

    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-direct {v1, v2, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 158
    .line 159
    .line 160
    throw v1

    .line 161
    :catch_1
    move-exception p1

    .line 162
    new-instance v1, Ljavax/mail/FolderClosedException;

    .line 163
    .line 164
    iget-object v2, p0, Ljavax/mail/Message;->c:Ljavax/mail/b;

    .line 165
    .line 166
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-direct {v1, v2, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/b;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw v1

    .line 174
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    throw p1
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
.end method

.method public f()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lh5/d;->A()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lh5/d;->A:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->f()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0

    .line 13
    :cond_0
    invoke-direct {p0}, Lh5/d;->L()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lh5/d;->p:Lcom/sun/mail/imap/protocol/b;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/sun/mail/imap/protocol/b;->c:Ljava/lang/String;

    .line 19
    .line 20
    return-object v0
    .line 21
    .line 22
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lh5/d;->A()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lh5/d;->e(Ljava/lang/String;)[Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    return-object p1

    .line 12
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->g:Ljavax/mail/internet/c;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
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

.method public declared-synchronized h()Ljavax/mail/Flags;
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
    invoke-virtual {p0}, Lh5/d;->A()V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lh5/d;->N()V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->h()Ljavax/mail/Flags;

    .line 9
    .line 10
    .line 11
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    .line 13
    return-object v0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    monitor-exit p0

    .line 16
    throw v0
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public j()[Ljavax/mail/Address;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lh5/d;->A()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lh5/d;->A:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->j()[Ljavax/mail/Address;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0

    .line 13
    :cond_0
    invoke-direct {p0}, Lh5/d;->M()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lh5/d;->q:Lcom/sun/mail/imap/protocol/c;

    .line 17
    .line 18
    iget-object v1, v0, Lcom/sun/mail/imap/protocol/c;->c:[Ljavax/mail/internet/InternetAddress;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    array-length v2, v1

    .line 23
    if-nez v2, :cond_2

    .line 24
    .line 25
    :cond_1
    iget-object v1, v0, Lcom/sun/mail/imap/protocol/c;->d:[Ljavax/mail/internet/InternetAddress;

    .line 26
    .line 27
    :cond_2
    invoke-direct {p0, v1}, Lh5/d;->z([Ljavax/mail/internet/InternetAddress;)[Ljavax/mail/internet/InternetAddress;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0
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

.method public l()Ljava/util/Date;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lh5/d;->A()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lh5/d;->r:Ljava/util/Date;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lh5/d;->M()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lh5/d;->r:Ljava/util/Date;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    return-object v0

    .line 17
    :cond_1
    new-instance v0, Ljava/util/Date;

    .line 18
    .line 19
    iget-object v1, p0, Lh5/d;->r:Ljava/util/Date;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 26
    .line 27
    .line 28
    return-object v0
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

.method public m(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lh5/d;->A()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lh5/d;->A:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMessage;->m(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1

    .line 13
    :cond_0
    invoke-direct {p0}, Lh5/d;->M()V

    .line 14
    .line 15
    .line 16
    sget-object v0, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    .line 17
    .line 18
    if-ne p1, v0, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lh5/d;->q:Lcom/sun/mail/imap/protocol/c;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/sun/mail/imap/protocol/c;->e:[Ljavax/mail/internet/InternetAddress;

    .line 23
    .line 24
    invoke-direct {p0, p1}, Lh5/d;->z([Ljavax/mail/internet/InternetAddress;)[Ljavax/mail/internet/InternetAddress;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :cond_1
    sget-object v0, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    .line 30
    .line 31
    if-ne p1, v0, :cond_2

    .line 32
    .line 33
    iget-object p1, p0, Lh5/d;->q:Lcom/sun/mail/imap/protocol/c;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/sun/mail/imap/protocol/c;->f:[Ljavax/mail/internet/InternetAddress;

    .line 36
    .line 37
    invoke-direct {p0, p1}, Lh5/d;->z([Ljavax/mail/internet/InternetAddress;)[Ljavax/mail/internet/InternetAddress;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1

    .line 42
    :cond_2
    sget-object v0, Ljavax/mail/Message$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;

    .line 43
    .line 44
    if-ne p1, v0, :cond_3

    .line 45
    .line 46
    iget-object p1, p0, Lh5/d;->q:Lcom/sun/mail/imap/protocol/c;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/sun/mail/imap/protocol/c;->g:[Ljavax/mail/internet/InternetAddress;

    .line 49
    .line 50
    invoke-direct {p0, p1}, Lh5/d;->z([Ljavax/mail/internet/InternetAddress;)[Ljavax/mail/internet/InternetAddress;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    return-object p1

    .line 55
    :cond_3
    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMessage;->m(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    return-object p1
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
.end method

.method public n()Ljava/util/Date;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lh5/d;->A()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lh5/d;->A:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->n()Ljava/util/Date;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0

    .line 13
    :cond_0
    invoke-direct {p0}, Lh5/d;->M()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lh5/d;->q:Lcom/sun/mail/imap/protocol/c;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/sun/mail/imap/protocol/c;->a:Ljava/util/Date;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    return-object v0

    .line 24
    :cond_1
    new-instance v0, Ljava/util/Date;

    .line 25
    .line 26
    iget-object v1, p0, Lh5/d;->q:Lcom/sun/mail/imap/protocol/c;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/sun/mail/imap/protocol/c;->a:Ljava/util/Date;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 35
    .line 36
    .line 37
    return-object v0
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

.method public o()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lh5/d;->A()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lh5/d;->A:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->o()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0

    .line 13
    :cond_0
    iget-object v0, p0, Lh5/d;->y:Ljava/lang/String;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_1
    invoke-direct {p0}, Lh5/d;->M()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lh5/d;->q:Lcom/sun/mail/imap/protocol/c;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/sun/mail/imap/protocol/c;->b:Ljava/lang/String;

    .line 24
    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    return-object v0

    .line 29
    :cond_2
    :try_start_0
    invoke-static {v0}, Ljavax/mail/internet/h;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Ljavax/mail/internet/h;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lh5/d;->y:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    iget-object v0, p0, Lh5/d;->q:Lcom/sun/mail/imap/protocol/c;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/sun/mail/imap/protocol/c;->b:Ljava/lang/String;

    .line 43
    .line 44
    iput-object v0, p0, Lh5/d;->y:Ljava/lang/String;

    .line 45
    .line 46
    :goto_0
    iget-object v0, p0, Lh5/d;->y:Ljava/lang/String;

    .line 47
    .line 48
    return-object v0
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

.method public declared-synchronized r(Ljavax/mail/Flags;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lh5/d;->D()Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    invoke-virtual {p0}, Lh5/d;->G()Lcom/sun/mail/imap/protocol/e;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lh5/d;->A()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lh5/d;->H()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {v1, v2, p1, p2}, Lcom/sun/mail/imap/protocol/e;->w(ILjavax/mail/Flags;Z)V
    :try_end_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    .line 20
    .line 21
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    monitor-exit p0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p1

    .line 27
    :try_start_3
    new-instance p2, Ljavax/mail/MessagingException;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-direct {p2, v1, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 34
    .line 35
    .line 36
    throw p2

    .line 37
    :catch_1
    move-exception p1

    .line 38
    new-instance p2, Ljavax/mail/FolderClosedException;

    .line 39
    .line 40
    iget-object v1, p0, Ljavax/mail/Message;->c:Ljavax/mail/b;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {p2, v1, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/b;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p2

    .line 50
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 51
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 52
    :catchall_1
    move-exception p1

    .line 53
    monitor-exit p0

    .line 54
    throw p1
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
.end method

.method protected t()Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lh5/d;->A:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->t()Ljava/io/InputStream;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0}, Lh5/d;->F()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p0}, Lh5/d;->D()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    monitor-enter v2

    .line 20
    :try_start_0
    invoke-virtual {p0}, Lh5/d;->G()Lcom/sun/mail/imap/protocol/e;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {p0}, Lh5/d;->A()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/e;->r()Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Lh5/d;->C()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    const/4 v5, -0x1

    .line 38
    if-eq v4, v5, :cond_2

    .line 39
    .line 40
    new-instance v0, Lh5/c;

    .line 41
    .line 42
    const-string v3, "TEXT"

    .line 43
    .line 44
    invoke-direct {p0, v3}, Lh5/d;->Q(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    iget-object v4, p0, Lh5/d;->p:Lcom/sun/mail/imap/protocol/b;

    .line 49
    .line 50
    if-eqz v4, :cond_1

    .line 51
    .line 52
    invoke-virtual {p0}, Lh5/d;->I()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-nez v4, :cond_1

    .line 57
    .line 58
    iget-object v4, p0, Lh5/d;->p:Lcom/sun/mail/imap/protocol/b;

    .line 59
    .line 60
    iget v5, v4, Lcom/sun/mail/imap/protocol/b;->d:I

    .line 61
    .line 62
    :cond_1
    invoke-direct {v0, p0, v3, v5, v1}, Lh5/c;-><init>(Lh5/d;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    return-object v0

    .line 67
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/e;->r()Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_4

    .line 72
    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    invoke-virtual {p0}, Lh5/d;->H()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    const-string v4, "TEXT"

    .line 80
    .line 81
    invoke-direct {p0, v4}, Lh5/d;->Q(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {v3, v1, v4}, Lcom/sun/mail/imap/protocol/e;->u(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/a;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    goto :goto_0

    .line 90
    :cond_3
    invoke-virtual {p0}, Lh5/d;->H()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    const-string v4, "TEXT"

    .line 95
    .line 96
    invoke-direct {p0, v4}, Lh5/d;->Q(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v3, v1, v4}, Lcom/sun/mail/imap/protocol/e;->j(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/a;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    :goto_0
    if-eqz v1, :cond_5

    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/a;->b()Ljava/io/ByteArrayInputStream;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    goto :goto_1

    .line 111
    :cond_4
    invoke-virtual {p0}, Lh5/d;->H()I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    const-string v4, "TEXT"

    .line 116
    .line 117
    invoke-virtual {v3, v1, v4}, Lcom/sun/mail/imap/protocol/e;->o(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/k;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    if-eqz v1, :cond_5

    .line 122
    .line 123
    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/k;->a()Ljava/io/ByteArrayInputStream;

    .line 124
    .line 125
    .line 126
    move-result-object v0
    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    :cond_5
    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 128
    if-nez v0, :cond_6

    .line 129
    .line 130
    invoke-virtual {p0}, Lh5/d;->B()V

    .line 131
    .line 132
    .line 133
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 134
    .line 135
    const/4 v1, 0x0

    .line 136
    new-array v1, v1, [B

    .line 137
    .line 138
    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 139
    .line 140
    .line 141
    :cond_6
    return-object v0

    .line 142
    :catchall_0
    move-exception v0

    .line 143
    goto :goto_2

    .line 144
    :catch_0
    move-exception v0

    .line 145
    :try_start_4
    invoke-virtual {p0}, Lh5/d;->B()V

    .line 146
    .line 147
    .line 148
    new-instance v1, Ljavax/mail/MessagingException;

    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-direct {v1, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 155
    .line 156
    .line 157
    throw v1

    .line 158
    :catch_1
    move-exception v0

    .line 159
    new-instance v1, Ljavax/mail/FolderClosedException;

    .line 160
    .line 161
    iget-object v3, p0, Ljavax/mail/Message;->c:Ljavax/mail/b;

    .line 162
    .line 163
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-direct {v1, v3, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/b;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw v1

    .line 171
    :goto_2
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 172
    throw v0
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

.method public declared-synchronized u()Lo7/e;
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
    invoke-virtual {p0}, Lh5/d;->A()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->d:Lo7/e;

    .line 6
    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    iget-boolean v0, p0, Lh5/d;->A:Z

    .line 10
    .line 11
    if-nez v0, :cond_3

    .line 12
    .line 13
    invoke-direct {p0}, Lh5/d;->L()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lh5/d;->x:Ljava/lang/String;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    new-instance v0, Ljavax/mail/internet/a;

    .line 21
    .line 22
    iget-object v1, p0, Lh5/d;->p:Lcom/sun/mail/imap/protocol/b;

    .line 23
    .line 24
    iget-object v2, v1, Lcom/sun/mail/imap/protocol/b;->a:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, v1, Lcom/sun/mail/imap/protocol/b;->b:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/sun/mail/imap/protocol/b;->e:Ljavax/mail/internet/ParameterList;

    .line 29
    .line 30
    invoke-direct {v0, v2, v3, v1}, Ljavax/mail/internet/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/mail/internet/ParameterList;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljavax/mail/internet/a;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lh5/d;->x:Ljava/lang/String;

    .line 38
    .line 39
    :cond_0
    iget-object v0, p0, Lh5/d;->p:Lcom/sun/mail/imap/protocol/b;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/b;->a()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    new-instance v0, Lo7/e;

    .line 48
    .line 49
    new-instance v1, Lh5/e;

    .line 50
    .line 51
    iget-object v2, p0, Lh5/d;->p:Lcom/sun/mail/imap/protocol/b;

    .line 52
    .line 53
    iget-object v2, v2, Lcom/sun/mail/imap/protocol/b;->f:[Lcom/sun/mail/imap/protocol/b;

    .line 54
    .line 55
    iget-object v3, p0, Lh5/d;->w:Ljava/lang/String;

    .line 56
    .line 57
    invoke-direct {v1, p0, v2, v3, p0}, Lh5/e;-><init>(Ljavax/mail/internet/f;[Lcom/sun/mail/imap/protocol/b;Ljava/lang/String;Lh5/d;)V

    .line 58
    .line 59
    .line 60
    invoke-direct {v0, v1}, Lo7/e;-><init>(Lo7/g;)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->d:Lo7/e;

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    iget-object v0, p0, Lh5/d;->p:Lcom/sun/mail/imap/protocol/b;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/b;->b()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    invoke-virtual {p0}, Lh5/d;->K()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    iget-object v0, p0, Lh5/d;->p:Lcom/sun/mail/imap/protocol/b;

    .line 81
    .line 82
    iget-object v0, v0, Lcom/sun/mail/imap/protocol/b;->g:Lcom/sun/mail/imap/protocol/c;

    .line 83
    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    new-instance v0, Lo7/e;

    .line 87
    .line 88
    new-instance v1, Lh5/f;

    .line 89
    .line 90
    iget-object v2, p0, Lh5/d;->p:Lcom/sun/mail/imap/protocol/b;

    .line 91
    .line 92
    iget-object v3, v2, Lcom/sun/mail/imap/protocol/b;->f:[Lcom/sun/mail/imap/protocol/b;

    .line 93
    .line 94
    const/4 v4, 0x0

    .line 95
    aget-object v3, v3, v4

    .line 96
    .line 97
    iget-object v2, v2, Lcom/sun/mail/imap/protocol/b;->g:Lcom/sun/mail/imap/protocol/c;

    .line 98
    .line 99
    iget-object v4, p0, Lh5/d;->w:Ljava/lang/String;

    .line 100
    .line 101
    if-nez v4, :cond_2

    .line 102
    .line 103
    const-string v4, "1"

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    iget-object v5, p0, Lh5/d;->w:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v5, ".1"

    .line 117
    .line 118
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    :goto_0
    invoke-direct {v1, p0, v3, v2, v4}, Lh5/f;-><init>(Lh5/d;Lcom/sun/mail/imap/protocol/b;Lcom/sun/mail/imap/protocol/c;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iget-object v2, p0, Lh5/d;->x:Ljava/lang/String;

    .line 129
    .line 130
    invoke-direct {v0, v1, v2}, Lo7/e;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->d:Lo7/e;

    .line 134
    .line 135
    :cond_3
    :goto_1
    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->u()Lo7/e;

    .line 136
    .line 137
    .line 138
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    monitor-exit p0

    .line 140
    return-object v0

    .line 141
    :catchall_0
    move-exception v0

    .line 142
    monitor-exit p0

    .line 143
    throw v0
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

.method public declared-synchronized x(Ljavax/mail/Flags$a;)Z
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
    invoke-virtual {p0}, Lh5/d;->A()V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lh5/d;->N()V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMessage;->x(Ljavax/mail/Flags$a;)Z

    .line 9
    .line 10
    .line 11
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    .line 13
    return p1

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    monitor-exit p0

    .line 16
    throw p1
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method y()Ljavax/mail/h;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

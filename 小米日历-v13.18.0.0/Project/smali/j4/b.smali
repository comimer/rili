.class public Lj4/b;
.super Ljava/lang/Object;
.source "ScreenShotHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj4/b$c;,
        Lj4/b$b;
    }
.end annotation


# static fields
.field private static final h:[Ljava/lang/String;

.field private static final i:[Ljava/lang/String;


# instance fields
.field private a:Landroid/database/ContentObserver;

.field private b:Landroid/database/ContentObserver;

.field private c:Landroid/content/ContentResolver;

.field private d:Landroid/os/Handler;

.field private e:Lj4/a;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    const-string v0, "screenshot"

    .line 2
    .line 3
    const-string v1, "screen_shot"

    .line 4
    .line 5
    const-string v2, "screen-shot"

    .line 6
    .line 7
    const-string v3, "screen shot"

    .line 8
    .line 9
    const-string v4, "screencapture"

    .line 10
    .line 11
    const-string v5, "screen_capture"

    .line 12
    .line 13
    const-string v6, "screen-capture"

    .line 14
    .line 15
    const-string v7, "screen capture"

    .line 16
    .line 17
    const-string v8, "screencap"

    .line 18
    .line 19
    const-string v9, "screen_cap"

    .line 20
    .line 21
    const-string v10, "screen-cap"

    .line 22
    .line 23
    const-string v11, "screen cap"

    .line 24
    .line 25
    const-string v12, "snap"

    .line 26
    .line 27
    const-string v13, "\u622a\u5c4f"

    .line 28
    .line 29
    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lj4/b;->h:[Ljava/lang/String;

    .line 34
    .line 35
    const-string v0, "_data"

    .line 36
    .line 37
    const-string v1, "datetaken"

    .line 38
    .line 39
    const-string v2, "date_added"

    .line 40
    .line 41
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lj4/b;->i:[Ljava/lang/String;

    .line 46
    .line 47
    return-void
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

.method private constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lj4/b;->d:Landroid/os/Handler;

    .line 4
    new-instance v0, Lj4/b$a;

    invoke-direct {v0, p0}, Lj4/b$a;-><init>(Lj4/b;)V

    iput-object v0, p0, Lj4/b;->g:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lj4/b$c;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Lj4/b$c;-><init>(Lj4/b;Landroid/os/Handler;Landroid/net/Uri;)V

    iput-object v0, p0, Lj4/b;->a:Landroid/database/ContentObserver;

    .line 6
    new-instance v0, Lj4/b$c;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, p0, v2, v1}, Lj4/b$c;-><init>(Lj4/b;Landroid/os/Handler;Landroid/net/Uri;)V

    iput-object v0, p0, Lj4/b;->b:Landroid/database/ContentObserver;

    .line 7
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lj4/b;->c:Landroid/content/ContentResolver;

    return-void
.end method

.method synthetic constructor <init>(Lj4/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lj4/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lj4/b;)Lj4/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lj4/b;->e:Lj4/a;

    .line 2
    .line 3
    return-object p0
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

.method static synthetic b(Lj4/b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lj4/b;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
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

.method static synthetic c(Lj4/b;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lj4/b;->f(Landroid/net/Uri;)V

    .line 2
    .line 3
    .line 4
    return-void
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

.method private d(Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x2

    .line 9
    if-ge v1, v2, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    sget-object v1, Lj4/b;->h:[Ljava/lang/String;

    .line 17
    .line 18
    array-length v2, v1

    .line 19
    move v3, v0

    .line 20
    :goto_0
    if-ge v3, v2, :cond_2

    .line 21
    .line 22
    aget-object v4, v1, v3

    .line 23
    .line 24
    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_1

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    return p1

    .line 32
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    :goto_1
    return v0
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

.method public static e()Lj4/b;
    .locals 1

    .line 1
    sget-object v0, Lj4/b$b;->a:Lj4/b;

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

.method private f(Landroid/net/Uri;)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v2, 0x1d

    .line 5
    .line 6
    if-le v1, v2, :cond_0

    .line 7
    .line 8
    new-instance v1, Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "android:query-arg-sql-sort-order"

    .line 14
    .line 15
    const-string v3, "date_added desc"

    .line 16
    .line 17
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v2, "android:query-arg-limit"

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lj4/b;->c:Landroid/content/ContentResolver;

    .line 27
    .line 28
    sget-object v3, Lj4/b;->i:[Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v2, p1, v3, v1, v0}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v1, p0, Lj4/b;->c:Landroid/content/ContentResolver;

    .line 36
    .line 37
    sget-object v3, Lj4/b;->i:[Ljava/lang/String;

    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    const/4 v5, 0x0

    .line 41
    const-string v6, "date_added desc limit 1"

    .line 42
    .line 43
    move-object v2, p1

    .line 44
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 45
    .line 46
    .line 47
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 48
    :goto_0
    if-nez p1, :cond_2

    .line 49
    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_1

    .line 57
    .line 58
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 59
    .line 60
    .line 61
    :cond_1
    return-void

    .line 62
    :cond_2
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 63
    .line 64
    .line 65
    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    if-nez v1, :cond_4

    .line 67
    .line 68
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_3

    .line 73
    .line 74
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 75
    .line 76
    .line 77
    :cond_3
    return-void

    .line 78
    :cond_4
    :try_start_2
    const-string v1, "_data"

    .line 79
    .line 80
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    const-string v2, "datetaken"

    .line 85
    .line 86
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    const-string v3, "date_added"

    .line 91
    .line 92
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 101
    .line 102
    .line 103
    move-result-wide v4

    .line 104
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 105
    .line 106
    .line 107
    move-result-wide v2

    .line 108
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    if-lez v6, :cond_8

    .line 113
    .line 114
    iget-object v6, p0, Lj4/b;->f:Ljava/lang/String;

    .line 115
    .line 116
    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    const-wide/16 v7, 0x1f4

    .line 121
    .line 122
    if-eqz v6, :cond_5

    .line 123
    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 125
    .line 126
    .line 127
    move-result-wide v0

    .line 128
    sub-long/2addr v0, v4

    .line 129
    const-wide/16 v2, 0x2a30

    .line 130
    .line 131
    cmp-long v0, v0, v2

    .line 132
    .line 133
    if-gez v0, :cond_8

    .line 134
    .line 135
    iget-object v0, p0, Lj4/b;->d:Landroid/os/Handler;

    .line 136
    .line 137
    iget-object v1, p0, Lj4/b;->g:Ljava/lang/Runnable;

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lj4/b;->d:Landroid/os/Handler;

    .line 143
    .line 144
    iget-object v1, p0, Lj4/b;->g:Ljava/lang/Runnable;

    .line 145
    .line 146
    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_5
    const-wide/16 v9, 0x0

    .line 151
    .line 152
    cmp-long v6, v4, v9

    .line 153
    .line 154
    if-eqz v6, :cond_7

    .line 155
    .line 156
    const-wide/16 v9, 0x3e8

    .line 157
    .line 158
    mul-long/2addr v2, v9

    .line 159
    cmp-long v2, v4, v2

    .line 160
    .line 161
    if-nez v2, :cond_6

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_6
    invoke-direct {p0, v1}, Lj4/b;->d(Ljava/lang/String;)Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-eqz v0, :cond_8

    .line 169
    .line 170
    iget-object v0, p0, Lj4/b;->d:Landroid/os/Handler;

    .line 171
    .line 172
    iget-object v2, p0, Lj4/b;->g:Ljava/lang/Runnable;

    .line 173
    .line 174
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 175
    .line 176
    .line 177
    iput-object v1, p0, Lj4/b;->f:Ljava/lang/String;

    .line 178
    .line 179
    iget-object v0, p0, Lj4/b;->d:Landroid/os/Handler;

    .line 180
    .line 181
    iget-object v1, p0, Lj4/b;->g:Ljava/lang/Runnable;

    .line 182
    .line 183
    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 184
    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_7
    :goto_1
    iget-object v1, p0, Lj4/b;->d:Landroid/os/Handler;

    .line 188
    .line 189
    iget-object v2, p0, Lj4/b;->g:Ljava/lang/Runnable;

    .line 190
    .line 191
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 192
    .line 193
    .line 194
    iget-object v1, p0, Lj4/b;->e:Lj4/a;

    .line 195
    .line 196
    if-eqz v1, :cond_8

    .line 197
    .line 198
    invoke-interface {v1, v0}, Lj4/a;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    .line 200
    .line 201
    :cond_8
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-nez v0, :cond_9

    .line 206
    .line 207
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 208
    .line 209
    .line 210
    goto :goto_4

    .line 211
    :catchall_0
    move-exception v0

    .line 212
    move-object v11, v0

    .line 213
    move-object v0, p1

    .line 214
    move-object p1, v11

    .line 215
    goto :goto_5

    .line 216
    :catch_0
    move-exception v0

    .line 217
    move-object v11, v0

    .line 218
    move-object v0, p1

    .line 219
    move-object p1, v11

    .line 220
    goto :goto_3

    .line 221
    :catchall_1
    move-exception p1

    .line 222
    goto :goto_5

    .line 223
    :catch_1
    move-exception p1

    .line 224
    :goto_3
    :try_start_3
    const-string v1, "ScreenShotHelper"

    .line 225
    .line 226
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 231
    .line 232
    .line 233
    if-eqz v0, :cond_9

    .line 234
    .line 235
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    if-nez p1, :cond_9

    .line 240
    .line 241
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 242
    .line 243
    .line 244
    :cond_9
    :goto_4
    return-void

    .line 245
    :goto_5
    if-eqz v0, :cond_a

    .line 246
    .line 247
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    if-nez v1, :cond_a

    .line 252
    .line 253
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 254
    .line 255
    .line 256
    :cond_a
    throw p1
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


# virtual methods
.method public g(Lj4/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lj4/b;->e:Lj4/a;

    .line 2
    .line 3
    if-ne v0, p1, :cond_1

    .line 4
    .line 5
    const-class v0, Lj4/b;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lj4/b;->e:Lj4/a;

    .line 9
    .line 10
    if-ne v1, p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lj4/b;->e:Lj4/a;

    .line 14
    .line 15
    :cond_0
    monitor-exit v0

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p1

    .line 20
    :cond_1
    :goto_0
    return-void
    .line 21
    .line 22
.end method

.method public h(Lj4/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj4/b;->e:Lj4/a;

    .line 2
    .line 3
    return-void
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

.method public i()V
    .locals 8

    .line 1
    iget-object v0, p0, Lj4/b;->c:Landroid/content/ContentResolver;

    .line 2
    .line 3
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 4
    .line 5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    const/16 v5, 0x1d

    .line 10
    .line 11
    if-lt v2, v5, :cond_0

    .line 12
    .line 13
    move v6, v3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v6, v4

    .line 16
    :goto_0
    iget-object v7, p0, Lj4/b;->a:Landroid/database/ContentObserver;

    .line 17
    .line 18
    invoke-virtual {v0, v1, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lj4/b;->c:Landroid/content/ContentResolver;

    .line 22
    .line 23
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 24
    .line 25
    if-lt v2, v5, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v3, v4

    .line 29
    :goto_1
    iget-object v2, p0, Lj4/b;->b:Landroid/database/ContentObserver;

    .line 30
    .line 31
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 32
    .line 33
    .line 34
    return-void
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

.method public j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lj4/b;->c:Landroid/content/ContentResolver;

    .line 2
    .line 3
    iget-object v1, p0, Lj4/b;->a:Landroid/database/ContentObserver;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lj4/b;->c:Landroid/content/ContentResolver;

    .line 9
    .line 10
    iget-object v1, p0, Lj4/b;->b:Landroid/database/ContentObserver;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 13
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
.end method

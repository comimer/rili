.class public Lcom/miui/calendar/util/p0;
.super Ljava/lang/Object;
.source "SimpleProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/calendar/util/p0$c;,
        Lcom/miui/calendar/util/p0$b;,
        Lcom/miui/calendar/util/p0$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/ContentResolver;

.field private b:Landroid/net/Uri;

.field private c:[Ljava/lang/String;

.field private d:[Ljava/lang/Class;

.field private e:Ljava/lang/StringBuilder;

.field private f:[Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Landroid/content/ContentValues;

.field private i:I

.field private j:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/miui/calendar/util/p0;->i:I

    .line 6
    .line 7
    return-void
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

.method static synthetic a(Landroid/database/Cursor;ILjava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/miui/calendar/util/p0;->f(Landroid/database/Cursor;ILjava/lang/Class;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
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

.method private static b(Landroid/net/Uri;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 5
    .line 6
    const-string v0, "Uri must be specified!"

    .line 7
    .line 8
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw p0
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

.method private static c(Landroid/content/ContentValues;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 5
    .line 6
    const-string v0, "ContentValues must be specified!"

    .line 7
    .line 8
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw p0
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

.method public static d(Landroid/content/Context;)Lcom/miui/calendar/util/p0;
    .locals 1

    .line 1
    new-instance v0, Lcom/miui/calendar/util/p0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/miui/calendar/util/p0;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iput-object p0, v0, Lcom/miui/calendar/util/p0;->a:Landroid/content/ContentResolver;

    .line 11
    .line 12
    return-object v0
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

.method private e(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/util/p0;->d:[Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-array v0, p1, [Ljava/lang/Class;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/miui/calendar/util/p0;->d:[Ljava/lang/Class;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    if-ge v0, p1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/miui/calendar/util/p0;->d:[Ljava/lang/Class;

    .line 13
    .line 14
    const-class v2, Ljava/lang/String;

    .line 15
    .line 16
    aput-object v2, v1, v0

    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
    .line 22
.end method

.method private static f(Landroid/database/Cursor;ILjava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-class v0, Ljava/lang/Short;

    .line 2
    .line 3
    if-ne v0, p2, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getShort(I)S

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    const-class v0, Ljava/lang/Integer;

    .line 15
    .line 16
    if-ne v0, p2, :cond_1

    .line 17
    .line 18
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_1
    const-class v0, Ljava/lang/Long;

    .line 28
    .line 29
    if-ne v0, p2, :cond_2

    .line 30
    .line 31
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    .line 32
    .line 33
    .line 34
    move-result-wide p0

    .line 35
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_2
    const-class v0, Ljava/lang/Float;

    .line 41
    .line 42
    if-ne v0, p2, :cond_3

    .line 43
    .line 44
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getFloat(I)F

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :cond_3
    const-class v0, Ljava/lang/Double;

    .line 54
    .line 55
    if-ne v0, p2, :cond_4

    .line 56
    .line 57
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getDouble(I)D

    .line 58
    .line 59
    .line 60
    move-result-wide p0

    .line 61
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0

    .line 66
    :cond_4
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0
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

.method private static g(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :goto_0
    return-object p0
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
.method public h()Landroid/net/Uri;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/util/p0;->b:Landroid/net/Uri;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/miui/calendar/util/p0;->b(Landroid/net/Uri;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/miui/calendar/util/p0;->h:Landroid/content/ContentValues;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/miui/calendar/util/p0;->c(Landroid/content/ContentValues;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/miui/calendar/util/p0;->a:Landroid/content/ContentResolver;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/miui/calendar/util/p0;->b:Landroid/net/Uri;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/miui/calendar/util/p0;->h:Landroid/content/ContentValues;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
    .line 22
.end method

.method public i()Lcom/miui/calendar/util/p0$b;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/util/p0;->b:Landroid/net/Uri;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/miui/calendar/util/p0;->b(Landroid/net/Uri;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/miui/calendar/util/p0;->e:Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/miui/calendar/util/p0;->g(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    invoke-static {}, Lcom/miui/calendar/util/p0$b;->j()Lcom/miui/calendar/util/p0$b;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v7, 0x0

    .line 17
    :try_start_0
    iget-object v1, p0, Lcom/miui/calendar/util/p0;->a:Landroid/content/ContentResolver;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/miui/calendar/util/p0;->b:Landroid/net/Uri;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/miui/calendar/util/p0;->c:[Ljava/lang/String;

    .line 22
    .line 23
    iget-object v5, p0, Lcom/miui/calendar/util/p0;->f:[Ljava/lang/String;

    .line 24
    .line 25
    iget-object v6, p0, Lcom/miui/calendar/util/p0;->g:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    if-eqz v7, :cond_3

    .line 32
    .line 33
    iget-boolean v1, p0, Lcom/miui/calendar/util/p0;->j:Z

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-static {v0, v1}, Lcom/miui/calendar/util/p0$b;->d(Lcom/miui/calendar/util/p0$b;I)I

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/miui/calendar/util/p0;->c:[Ljava/lang/String;

    .line 46
    .line 47
    array-length v1, v1

    .line 48
    invoke-direct {p0, v1}, Lcom/miui/calendar/util/p0;->e(I)V

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_3

    .line 56
    .line 57
    new-array v2, v1, [Ljava/lang/Object;

    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    :goto_0
    if-ge v3, v1, :cond_2

    .line 61
    .line 62
    iget-object v4, p0, Lcom/miui/calendar/util/p0;->d:[Ljava/lang/Class;

    .line 63
    .line 64
    aget-object v4, v4, v3

    .line 65
    .line 66
    invoke-static {v7, v3, v4}, Lcom/miui/calendar/util/p0;->f(Landroid/database/Cursor;ILjava/lang/Class;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    aput-object v4, v2, v3

    .line 71
    .line 72
    add-int/lit8 v3, v3, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    invoke-static {v2}, Lcom/miui/calendar/util/p0$c;->a([Ljava/lang/Object;)Lcom/miui/calendar/util/p0$c;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v0, v2}, Lcom/miui/calendar/util/p0$b;->h(Lcom/miui/calendar/util/p0$c;)V

    .line 80
    .line 81
    .line 82
    invoke-static {v0}, Lcom/miui/calendar/util/p0$b;->c(Lcom/miui/calendar/util/p0$b;)I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    iget v3, p0, Lcom/miui/calendar/util/p0;->i:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .line 88
    if-ne v2, v3, :cond_1

    .line 89
    .line 90
    :cond_3
    :goto_1
    if-eqz v7, :cond_4

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :catchall_0
    move-exception v0

    .line 94
    goto :goto_3

    .line 95
    :catch_0
    move-exception v1

    .line 96
    :try_start_1
    const-string v2, "Cal:D:SimpleProvider"

    .line 97
    .line 98
    const-string v3, "query(): "

    .line 99
    .line 100
    invoke-static {v2, v3, v1}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    .line 102
    .line 103
    if-eqz v7, :cond_4

    .line 104
    .line 105
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 106
    .line 107
    .line 108
    :cond_4
    return-object v0

    .line 109
    :goto_3
    if-eqz v7, :cond_5

    .line 110
    .line 111
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 112
    .line 113
    .line 114
    :cond_5
    throw v0
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

.method public j()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/miui/calendar/util/p0;->j:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/miui/calendar/util/p0;->i()Lcom/miui/calendar/util/p0$b;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/miui/calendar/util/p0$b;->c(Lcom/miui/calendar/util/p0$b;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
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

.method public k()Lcom/miui/calendar/util/p0$a;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/util/p0;->b:Landroid/net/Uri;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/miui/calendar/util/p0;->b(Landroid/net/Uri;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/miui/calendar/util/p0;->e:Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/miui/calendar/util/p0;->g(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/miui/calendar/util/p0;->a:Landroid/content/ContentResolver;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/miui/calendar/util/p0;->b:Landroid/net/Uri;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/miui/calendar/util/p0;->c:[Ljava/lang/String;

    .line 17
    .line 18
    iget-object v5, p0, Lcom/miui/calendar/util/p0;->f:[Ljava/lang/String;

    .line 19
    .line 20
    iget-object v6, p0, Lcom/miui/calendar/util/p0;->g:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 23
    .line 24
    .line 25
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    const-string v1, "Cal:D:SimpleProvider"

    .line 29
    .line 30
    const-string v2, "queryCursor(): "

    .line 31
    .line 32
    invoke-static {v1, v2, v0}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    :goto_0
    iget-object v1, p0, Lcom/miui/calendar/util/p0;->d:[Ljava/lang/Class;

    .line 37
    .line 38
    invoke-static {v0, v1}, Lcom/miui/calendar/util/p0$a;->b(Landroid/database/Cursor;[Ljava/lang/Class;)Lcom/miui/calendar/util/p0$a;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
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

.method public l()Lcom/miui/calendar/util/p0$b;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/miui/calendar/util/p0;->p(I)Lcom/miui/calendar/util/p0;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/miui/calendar/util/p0;->i()Lcom/miui/calendar/util/p0$b;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
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

.method public m()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/util/p0;->b:Landroid/net/Uri;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/miui/calendar/util/p0;->b(Landroid/net/Uri;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/miui/calendar/util/p0;->h:Landroid/content/ContentValues;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/miui/calendar/util/p0;->c(Landroid/content/ContentValues;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/miui/calendar/util/p0;->a:Landroid/content/ContentResolver;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/miui/calendar/util/p0;->b:Landroid/net/Uri;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/miui/calendar/util/p0;->h:Landroid/content/ContentValues;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/miui/calendar/util/p0;->e:Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-static {v3}, Lcom/miui/calendar/util/p0;->g(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget-object v4, p0, Lcom/miui/calendar/util/p0;->f:[Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v0

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

.method public varargs n([Ljava/lang/Object;)Lcom/miui/calendar/util/p0;
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    new-array v1, v0, [Ljava/lang/String;

    .line 3
    .line 4
    iput-object v1, p0, Lcom/miui/calendar/util/p0;->f:[Ljava/lang/String;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    if-ge v1, v0, :cond_0

    .line 8
    .line 9
    iget-object v2, p0, Lcom/miui/calendar/util/p0;->f:[Ljava/lang/String;

    .line 10
    .line 11
    aget-object v3, p1, v1

    .line 12
    .line 13
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    aput-object v3, v2, v1

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-object p0
.end method

.method public varargs o([Ljava/lang/String;)Lcom/miui/calendar/util/p0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/util/p0;->f:[Ljava/lang/String;

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

.method public p(I)Lcom/miui/calendar/util/p0;
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/calendar/util/p0;->i:I

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

.method public q(Ljava/lang/String;)Lcom/miui/calendar/util/p0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/util/p0;->g:Ljava/lang/String;

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

.method public varargs r([Ljava/lang/String;)Lcom/miui/calendar/util/p0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/util/p0;->c:[Ljava/lang/String;

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

.method public s(Ljava/lang/String;)Lcom/miui/calendar/util/p0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/util/p0;->e:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/miui/calendar/util/p0;->e:Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v1, " AND ("

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
    const-string p1, ")"

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    :goto_0
    return-object p0
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

.method public varargs t([Ljava/lang/Class;)Lcom/miui/calendar/util/p0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/util/p0;->d:[Ljava/lang/Class;

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

.method public u(Landroid/net/Uri;)Lcom/miui/calendar/util/p0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/util/p0;->b:Landroid/net/Uri;

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

.method public v(Landroid/content/ContentValues;)Lcom/miui/calendar/util/p0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/util/p0;->h:Landroid/content/ContentValues;

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

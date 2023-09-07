.class public Lcom/miui/calendar/util/DaysOffUtils;
.super Ljava/lang/Object;
.source "DaysOffUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/calendar/util/DaysOffUtils$a;,
        Lcom/miui/calendar/util/DaysOffUtils$DaysOffScheme;,
        Lcom/miui/calendar/util/DaysOffUtils$FullDaysOffScheme;,
        Lcom/miui/calendar/util/DaysOffUtils$b;
    }
.end annotation


# static fields
.field private static volatile d:Lcom/miui/calendar/util/DaysOffUtils;


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/miui/calendar/util/DaysOffUtils$DaysOffScheme;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/miui/calendar/util/DaysOffUtils;->a:Landroid/util/SparseArray;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/miui/calendar/util/DaysOffUtils;->b:I

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    iput-object p1, p0, Lcom/miui/calendar/util/DaysOffUtils;->c:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/miui/calendar/util/DaysOffUtils;->f(Landroid/content/Context;)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const-string v3, ", cost "

    .line 25
    .line 26
    const-string v4, " ms"

    .line 27
    .line 28
    const-string v5, "Cal:D:DaysOffUtils"

    .line 29
    .line 30
    const/16 v6, 0x11

    .line 31
    .line 32
    if-le v2, v6, :cond_0

    .line 33
    .line 34
    invoke-static {p1}, Lcom/miui/calendar/util/DaysOffUtils;->d(Landroid/content/Context;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    invoke-direct {p0, v2, v7}, Lcom/miui/calendar/util/DaysOffUtils;->i(ILjava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    if-eqz v7, :cond_0

    .line 43
    .line 44
    iput v2, p0, Lcom/miui/calendar/util/DaysOffUtils;->b:I

    .line 45
    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v2, "DaysOffUtils init finish, use sp data, version="

    .line 52
    .line 53
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget v2, p0, Lcom/miui/calendar/util/DaysOffUtils;->b:I

    .line 57
    .line 58
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 65
    .line 66
    .line 67
    move-result-wide v2

    .line 68
    sub-long/2addr v2, v0

    .line 69
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {v5, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_0
    invoke-static {p1}, Lcom/miui/calendar/util/DaysOffUtils;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-direct {p0, v6, p1}, Lcom/miui/calendar/util/DaysOffUtils;->i(ILjava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_1

    .line 92
    .line 93
    iput v6, p0, Lcom/miui/calendar/util/DaysOffUtils;->b:I

    .line 94
    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    const-string v2, "DaysOffUtils init finish, use raw data, version="

    .line 101
    .line 102
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget v2, p0, Lcom/miui/calendar/util/DaysOffUtils;->b:I

    .line 106
    .line 107
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 114
    .line 115
    .line 116
    move-result-wide v2

    .line 117
    sub-long/2addr v2, v0

    .line 118
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-static {v5, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    const-string v2, "DaysOffUtils init error, cost "

    .line 138
    .line 139
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 143
    .line 144
    .line 145
    move-result-wide v2

    .line 146
    sub-long/2addr v2, v0

    .line 147
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-static {v5, p1}, Lcom/miui/calendar/util/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    return-void
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "getDaysOffFromRaw()"

    .line 2
    .line 3
    const-string v1, "Cal:D:DaysOffUtils"

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/high16 v2, 0x7f110000

    .line 10
    .line 11
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    new-array v2, v2, [B

    .line 20
    .line 21
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    .line 22
    .line 23
    .line 24
    new-instance v3, Ljava/lang/String;

    .line 25
    .line 26
    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :catch_0
    move-exception p0

    .line 34
    invoke-static {v1, v0, p0}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception v2

    .line 39
    goto :goto_2

    .line 40
    :catch_1
    move-exception v2

    .line 41
    :try_start_2
    invoke-static {v1, v0, v2}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    .line 43
    .line 44
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_2
    move-exception p0

    .line 49
    invoke-static {v1, v0, p0}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    const-string v3, ""

    .line 53
    .line 54
    :goto_1
    return-object v3

    .line 55
    :goto_2
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 56
    .line 57
    .line 58
    goto :goto_3

    .line 59
    :catch_3
    move-exception p0

    .line 60
    invoke-static {v1, v0, p0}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    :goto_3
    throw v2
    .line 64
    .line 65
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "daysoff_info"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-static {p0, v0, v1}, Lb2/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
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

.method public static f(Landroid/content/Context;)I
    .locals 2

    .line 1
    const-string v0, "daysoff_info_version"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v0, v1}, Lb2/a;->a(Landroid/content/Context;Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
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

.method public static g(Landroid/content/Context;)Lcom/miui/calendar/util/DaysOffUtils;
    .locals 2

    .line 1
    sget-object v0, Lcom/miui/calendar/util/DaysOffUtils;->d:Lcom/miui/calendar/util/DaysOffUtils;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-class v0, Lcom/miui/calendar/util/DaysOffUtils;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    new-instance v1, Lcom/miui/calendar/util/DaysOffUtils;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-direct {v1, p0}, Lcom/miui/calendar/util/DaysOffUtils;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/miui/calendar/util/DaysOffUtils;->d:Lcom/miui/calendar/util/DaysOffUtils;

    .line 18
    .line 19
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0

    .line 24
    :cond_0
    :goto_0
    sget-object p0, Lcom/miui/calendar/util/DaysOffUtils;->d:Lcom/miui/calendar/util/DaysOffUtils;

    .line 25
    .line 26
    return-object p0
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

.method private i(ILjava/lang/String;)Z
    .locals 5

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    :try_start_0
    const-class v0, Lcom/miui/calendar/util/DaysOffUtils$FullDaysOffScheme;

    .line 9
    .line 10
    invoke-static {p2, v0}, Lcom/miui/calendar/util/x;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    check-cast p2, Lcom/miui/calendar/util/DaysOffUtils$FullDaysOffScheme;

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    iget v0, p2, Lcom/miui/calendar/util/DaysOffUtils$FullDaysOffScheme;->versioncode:I

    .line 19
    .line 20
    if-ne p1, v0, :cond_1

    .line 21
    .line 22
    iget-object p1, p2, Lcom/miui/calendar/util/DaysOffUtils$FullDaysOffScheme;->holiday:[Lcom/miui/calendar/util/DaysOffUtils$DaysOffScheme;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    array-length p2, p1

    .line 27
    if-lez p2, :cond_1

    .line 28
    .line 29
    array-length p2, p1

    .line 30
    move v0, v1

    .line 31
    :goto_0
    if-ge v0, p2, :cond_0

    .line 32
    .line 33
    aget-object v2, p1, v0

    .line 34
    .line 35
    iget-object v3, p0, Lcom/miui/calendar/util/DaysOffUtils;->a:Landroid/util/SparseArray;

    .line 36
    .line 37
    iget v4, v2, Lcom/miui/calendar/util/DaysOffUtils$DaysOffScheme;->year:I

    .line 38
    .line 39
    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 p1, 0x1

    .line 46
    return p1

    .line 47
    :catch_0
    move-exception p1

    .line 48
    const-string p2, "Cal:D:DaysOffUtils"

    .line 49
    .line 50
    const-string v0, "parseDaysOff()"

    .line 51
    .line 52
    invoke-static {p2, v0, p1}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    return v1
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

.method private static j(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "daysoff_info"

    .line 2
    .line 3
    invoke-static {p0, v0, p1}, Lb2/a;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
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

.method private static k(Landroid/content/Context;I)V
    .locals 1

    .line 1
    const-string v0, "daysoff_info_version"

    .line 2
    .line 3
    invoke-static {p0, v0, p1}, Lb2/a;->i(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    return-void
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


# virtual methods
.method public a()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/miui/calendar/util/DaysOffUtils$DaysOffScheme;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/util/DaysOffUtils;->a:Landroid/util/SparseArray;

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

.method public c(Landroid/content/Context;Ljava/lang/String;Lcom/miui/calendar/util/DaysOffUtils$a;)V
    .locals 4

    .line 1
    const-string v0, "Cal:D:DaysOffUtils"

    .line 2
    .line 3
    const-string v1, "getDaysOffFromRemote()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lu1/d;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {p1, v1}, Lcom/miui/calendar/util/l0;->a(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sget-object v2, Lcom/miui/calendar/util/l0;->b:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v2}, Lu1/d;->e(Ljava/lang/String;)Lu1/a;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    new-instance v3, Lcom/miui/calendar/util/DaysOffUtils$b;

    .line 24
    .line 25
    invoke-direct {v3, p1, p3, p2}, Lcom/miui/calendar/util/DaysOffUtils$b;-><init>(Landroid/content/Context;Lcom/miui/calendar/util/DaysOffUtils$a;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v2, v0, v1}, Lu1/a;->d(Ljava/lang/String;Ljava/util/Map;)Ltc/a;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-instance p2, Lu1/b;

    .line 33
    .line 34
    invoke-direct {p2, v3}, Lu1/b;-><init>(Lu1/b$a;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, p2}, Ltc/a;->q(Ltc/b;)V

    .line 38
    .line 39
    .line 40
    return-void
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

.method public e(II)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/util/DaysOffUtils;->a:Landroid/util/SparseArray;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/miui/calendar/util/DaysOffUtils$DaysOffScheme;

    .line 11
    .line 12
    if-eqz p1, :cond_3

    .line 13
    .line 14
    iget-object v0, p1, Lcom/miui/calendar/util/DaysOffUtils$DaysOffScheme;->freeday:[I

    .line 15
    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    array-length v2, v0

    .line 19
    move v3, v1

    .line 20
    :goto_0
    if-ge v3, v2, :cond_1

    .line 21
    .line 22
    aget v4, v0, v3

    .line 23
    .line 24
    if-ne v4, p2, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    return p1

    .line 28
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object p1, p1, Lcom/miui/calendar/util/DaysOffUtils$DaysOffScheme;->workday:[I

    .line 32
    .line 33
    array-length v0, p1

    .line 34
    move v2, v1

    .line 35
    :goto_1
    if-ge v2, v0, :cond_3

    .line 36
    .line 37
    aget v3, p1, v2

    .line 38
    .line 39
    if-ne v3, p2, :cond_2

    .line 40
    .line 41
    const/4 p1, 0x2

    .line 42
    return p1

    .line 43
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    return v1
    .line 47
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/miui/calendar/util/DaysOffUtils;->b:I

    .line 2
    .line 3
    return v0
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

.method l(Lorg/json/JSONObject;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "Cal:D:DaysOffUtils"

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const-string p1, "updateLocalDaysOff() empty data"

    .line 7
    .line 8
    invoke-static {v1, p1}, Lcom/miui/calendar/util/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-class v2, Lcom/miui/calendar/util/DaysOffUtils$FullDaysOffScheme;

    .line 17
    .line 18
    invoke-static {p1, v2}, Lcom/miui/calendar/util/x;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/miui/calendar/util/DaysOffUtils$FullDaysOffScheme;

    .line 23
    .line 24
    if-eqz v2, :cond_4

    .line 25
    .line 26
    iget v3, v2, Lcom/miui/calendar/util/DaysOffUtils$FullDaysOffScheme;->versioncode:I

    .line 27
    .line 28
    iget v4, p0, Lcom/miui/calendar/util/DaysOffUtils;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    const-string v5, ","

    .line 31
    .line 32
    if-gt v3, v4, :cond_1

    .line 33
    .line 34
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v3, "updateLocalDaysOff() remote version is equals or lower than now:"

    .line 40
    .line 41
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget v2, v2, Lcom/miui/calendar/util/DaysOffUtils$FullDaysOffScheme;->versioncode:I

    .line 45
    .line 46
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget v2, p0, Lcom/miui/calendar/util/DaysOffUtils;->b:I

    .line 53
    .line 54
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {v1, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return v0

    .line 65
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v4, "updateLocalDaysOff() remote version is higher than now:"

    .line 71
    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget v4, v2, Lcom/miui/calendar/util/DaysOffUtils$FullDaysOffScheme;->versioncode:I

    .line 76
    .line 77
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget v4, p0, Lcom/miui/calendar/util/DaysOffUtils;->b:I

    .line 84
    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-static {v1, v3}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object v3, v2, Lcom/miui/calendar/util/DaysOffUtils$FullDaysOffScheme;->holiday:[Lcom/miui/calendar/util/DaysOffUtils$DaysOffScheme;

    .line 96
    .line 97
    if-eqz v3, :cond_3

    .line 98
    .line 99
    array-length v3, v3

    .line 100
    if-nez v3, :cond_2

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    iget-object v3, p0, Lcom/miui/calendar/util/DaysOffUtils;->c:Landroid/content/Context;

    .line 104
    .line 105
    invoke-static {v3, p1}, Lcom/miui/calendar/util/DaysOffUtils;->j(Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lcom/miui/calendar/util/DaysOffUtils;->c:Landroid/content/Context;

    .line 109
    .line 110
    iget v2, v2, Lcom/miui/calendar/util/DaysOffUtils$FullDaysOffScheme;->versioncode:I

    .line 111
    .line 112
    invoke-static {p1, v2}, Lcom/miui/calendar/util/DaysOffUtils;->k(Landroid/content/Context;I)V

    .line 113
    .line 114
    .line 115
    invoke-static {}, Lpc/c;->c()Lpc/c;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    new-instance v2, Lcom/miui/calendar/util/g$g0;

    .line 120
    .line 121
    invoke-direct {v2}, Lcom/miui/calendar/util/g$g0;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, v2}, Lpc/c;->k(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    const/4 p1, 0x0

    .line 128
    sput-object p1, Lcom/miui/calendar/util/DaysOffUtils;->d:Lcom/miui/calendar/util/DaysOffUtils;

    .line 129
    .line 130
    const-string p1, "updateLocalDaysOff() success"

    .line 131
    .line 132
    invoke-static {v1, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    const/4 p1, 0x1

    .line 136
    return p1

    .line 137
    :cond_3
    :goto_0
    const-string p1, "updateLocalDaysOff() empty holiday data"

    .line 138
    .line 139
    invoke-static {v1, p1}, Lcom/miui/calendar/util/z;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 140
    .line 141
    .line 142
    return v0

    .line 143
    :catch_0
    move-exception p1

    .line 144
    const-string v2, "updateLocalDaysOff()"

    .line 145
    .line 146
    invoke-static {v1, v2, p1}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    .line 148
    .line 149
    :cond_4
    return v0
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

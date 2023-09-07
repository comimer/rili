.class public final Lcom/miui/calendar/sync/ics/i$b;
.super Lcom/android/calendar/syncer/b;
.source "ValidationModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/calendar/sync/ics/i;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00005\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J5\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0014\u0010\u0010\u001a\u00020\n2\n\u0010\u000f\u001a\u00060\rj\u0002`\u000eH\u0016\u00a8\u0006\u0011"
    }
    d2 = {
        "com/miui/calendar/sync/ics/i$b",
        "Lcom/android/calendar/syncer/b;",
        "Ljava/io/InputStream;",
        "data",
        "Lokhttp3/v;",
        "contentType",
        "",
        "eTag",
        "",
        "lastModified",
        "Lkotlin/u;",
        "g",
        "(Ljava/io/InputStream;Lokhttp3/v;Ljava/lang/String;Ljava/lang/Long;)V",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "error",
        "e",
        "app_chinaNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic j:Lcom/miui/calendar/sync/ics/i;

.field final synthetic k:Lcom/android/calendar/syncer/model/ResourceInfo;


# direct methods
.method constructor <init>(Landroid/net/Uri;Lcom/miui/calendar/sync/ics/i;Lcom/android/calendar/syncer/model/ResourceInfo;Landroid/app/Application;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/miui/calendar/sync/ics/i$b;->j:Lcom/miui/calendar/sync/ics/i;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/miui/calendar/sync/ics/i$b;->k:Lcom/android/calendar/syncer/model/ResourceInfo;

    .line 4
    .line 5
    const-string p2, "getApplication()"

    .line 6
    .line 7
    invoke-static {p4, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p4, p1}, Lcom/android/calendar/syncer/b;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 11
    .line 12
    .line 13
    return-void
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


# virtual methods
.method public e(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    const-string v0, "error"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/miui/calendar/sync/ics/i$b;->k:Lcom/android/calendar/syncer/model/ResourceInfo;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/android/calendar/syncer/model/ResourceInfo;->setException(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "ValidationModel"

    .line 12
    .line 13
    const-string v0, "onError"

    .line 14
    .line 15
    invoke-static {p1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/miui/calendar/sync/ics/i$b;->j:Lcom/miui/calendar/sync/ics/i;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/miui/calendar/sync/ics/i;->getResult()Landroidx/lifecycle/u;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object v0, p0, Lcom/miui/calendar/sync/ics/i$b;->k:Lcom/android/calendar/syncer/model/ResourceInfo;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroidx/lifecycle/u;->l(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void
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

.method public g(Ljava/io/InputStream;Lokhttp3/v;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 4

    .line 1
    const-string p3, "ValidationModel"

    .line 2
    .line 3
    const-string p4, "data"

    .line 4
    .line 5
    invoke-static {p1, p4}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance p4, Ljava/io/InputStreamReader;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-static {p2, v1, v0, v1}, Lokhttp3/v;->d(Lokhttp3/v;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/nio/charset/Charset;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    if-nez p2, :cond_1

    .line 19
    .line 20
    :cond_0
    sget-object p2, Lkotlin/text/d;->b:Ljava/nio/charset/Charset;

    .line 21
    .line 22
    :cond_1
    invoke-direct {p4, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/miui/calendar/sync/ics/i$b;->k:Lcom/android/calendar/syncer/model/ResourceInfo;

    .line 26
    .line 27
    iget-object p2, p0, Lcom/miui/calendar/sync/ics/i$b;->j:Lcom/miui/calendar/sync/ics/i;

    .line 28
    .line 29
    :try_start_0
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    .line 33
    .line 34
    :try_start_1
    sget-object v3, Lat/bitfire/ical4android/Event;->Companion:Lat/bitfire/ical4android/Event$Companion;

    .line 35
    .line 36
    invoke-virtual {v3, p4, v2}, Lat/bitfire/ical4android/Event$Companion;->eventsFromReader(Ljava/io/Reader;Ljava/util/Map;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :try_start_2
    invoke-virtual {p0}, Lcom/android/calendar/syncer/b;->d()Landroid/net/Uri;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {p1, v3}, Lcom/android/calendar/syncer/model/ResourceInfo;->setUrl(Landroid/net/Uri;)V

    .line 45
    .line 46
    .line 47
    const-string v3, "X-WR-CALNAME"

    .line 48
    .line 49
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Ljava/lang/String;

    .line 54
    .line 55
    if-eqz v2, :cond_3

    .line 56
    .line 57
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-nez v3, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    const/4 v0, 0x0

    .line 65
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/android/calendar/syncer/b;->d()Landroid/net/Uri;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    :cond_4
    invoke-virtual {p1, v2}, Lcom/android/calendar/syncer/model/ResourceInfo;->setCalendarName(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p2}, Lcom/android/calendar/syncer/model/ResourceInfo;->setEvents(Ljava/util/List;)V

    .line 79
    .line 80
    .line 81
    sget-object p1, Lkotlin/u;->a:Lkotlin/u;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 82
    .line 83
    invoke-static {p4, v1}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    const-string p1, "onSuccess"

    .line 87
    .line 88
    invoke-static {p3, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/miui/calendar/sync/ics/i$b;->j:Lcom/miui/calendar/sync/ics/i;

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/miui/calendar/sync/ics/i;->getResult()Landroidx/lifecycle/u;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iget-object p2, p0, Lcom/miui/calendar/sync/ics/i$b;->k:Lcom/android/calendar/syncer/model/ResourceInfo;

    .line 98
    .line 99
    invoke-virtual {p1, p2}, Landroidx/lifecycle/u;->l(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :catchall_0
    move-exception v0

    .line 104
    :try_start_3
    const-string v2, "parse ics file failed."

    .line 105
    .line 106
    invoke-static {p3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v0}, Lcom/android/calendar/syncer/model/ResourceInfo;->setException(Ljava/lang/Throwable;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2}, Lcom/miui/calendar/sync/ics/i;->getResult()Landroidx/lifecycle/u;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-virtual {p2, p1}, Landroidx/lifecycle/u;->l(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 117
    .line 118
    .line 119
    invoke-static {p4, v1}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :catchall_1
    move-exception p1

    .line 124
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 125
    :catchall_2
    move-exception p2

    .line 126
    invoke-static {p4, p1}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 127
    .line 128
    .line 129
    throw p2
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

.class public final Lcom/android/calendar/syncer/resource/a;
.super Lat/bitfire/ical4android/AndroidCalendar;
.source "CalDavLocalCalendar.kt"

# interfaces
.implements Lcom/android/calendar/syncer/resource/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/syncer/resource/a$a;,
        Lcom/android/calendar/syncer/resource/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lat/bitfire/ical4android/AndroidCalendar<",
        "Lcom/android/calendar/syncer/resource/c;",
        ">;",
        "Lcom/android/calendar/syncer/resource/b<",
        "Lcom/android/calendar/syncer/resource/c;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\u0018\u0000 \u00162\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00020\u0003:\u0002\u0016\u001bB!\u0008\u0002\u0012\u0006\u0010!\u001a\u00020 \u0012\u0006\u0010#\u001a\u00020\"\u0012\u0006\u0010%\u001a\u00020$\u00a2\u0006\u0004\u0008&\u0010\'J\u0016\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00020\nH\u0016J\u000e\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00020\nH\u0016J\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0010\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u0008H\u0016J\u0010\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u0008H\u0016J\u0008\u0010\u0014\u001a\u00020\u0013H\u0016J\u0006\u0010\u0015\u001a\u00020\u0013R\u0014\u0010\u0018\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R(\u0010\u001f\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00198V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001e\u00a8\u0006("
    }
    d2 = {
        "Lcom/android/calendar/syncer/resource/a;",
        "Lat/bitfire/ical4android/AndroidCalendar;",
        "Lcom/android/calendar/syncer/resource/c;",
        "Lcom/android/calendar/syncer/resource/b;",
        "Lcom/android/calendar/syncer/model/Collection;",
        "info",
        "",
        "updateColor",
        "",
        "l",
        "",
        "g",
        "c",
        "",
        "name",
        "j",
        "flags",
        "h",
        "i",
        "Lkotlin/u;",
        "d",
        "k",
        "a",
        "()Ljava/lang/String;",
        "tag",
        "Lcom/android/calendar/syncer/model/SyncState;",
        "state",
        "b",
        "()Lcom/android/calendar/syncer/model/SyncState;",
        "e",
        "(Lcom/android/calendar/syncer/model/SyncState;)V",
        "lastSyncState",
        "Landroid/accounts/Account;",
        "account",
        "Landroid/content/ContentProviderClient;",
        "provider",
        "",
        "id",
        "<init>",
        "(Landroid/accounts/Account;Landroid/content/ContentProviderClient;J)V",
        "syncer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final a:Lcom/android/calendar/syncer/resource/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/calendar/syncer/resource/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/calendar/syncer/resource/a$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcom/android/calendar/syncer/resource/a;->a:Lcom/android/calendar/syncer/resource/a$a;

    return-void
.end method

.method private constructor <init>(Landroid/accounts/Account;Landroid/content/ContentProviderClient;J)V
    .locals 6

    .line 1
    sget-object v3, Lcom/android/calendar/syncer/resource/c$b;->a:Lcom/android/calendar/syncer/resource/c$b;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-wide v4, p3

    .line 7
    invoke-direct/range {v0 .. v5}, Lat/bitfire/ical4android/AndroidCalendar;-><init>(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Lat/bitfire/ical4android/AndroidEventFactory;J)V

    .line 8
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

.method public synthetic constructor <init>(Landroid/accounts/Account;Landroid/content/ContentProviderClient;JLkotlin/jvm/internal/o;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendar/syncer/resource/a;-><init>(Landroid/accounts/Account;Landroid/content/ContentProviderClient;J)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "events-"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lat/bitfire/ical4android/AndroidCalendar;->getAccount()Landroid/accounts/Account;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const/16 v1, 0x2d

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lat/bitfire/ical4android/AndroidCalendar;->getId()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
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

.method public b()Lcom/android/calendar/syncer/model/SyncState;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lat/bitfire/ical4android/AndroidCalendar;->getProvider()Landroid/content/ContentProviderClient;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lat/bitfire/ical4android/AndroidCalendar;->calendarSyncURI()Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "cal_sync1"

    .line 10
    .line 11
    filled-new-array {v2}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    sget-object v2, Lcom/android/calendar/syncer/model/SyncState;->Companion:Lcom/android/calendar/syncer/model/SyncState$Companion;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v2, v3}, Lcom/android/calendar/syncer/model/SyncState$Companion;->fromString(Ljava/lang/String;)Lcom/android/calendar/syncer/model/SyncState;

    .line 39
    .line 40
    .line 41
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-static {v0, v1}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    return-object v2

    .line 46
    :cond_0
    invoke-static {v0, v1}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v1

    .line 51
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52
    :catchall_1
    move-exception v2

    .line 53
    invoke-static {v0, v1}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    throw v2

    .line 57
    :cond_1
    :goto_0
    return-object v1
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

.method public c()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/calendar/syncer/resource/c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "dirty AND original_id IS NULL"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {p0, v1, v2}, Lat/bitfire/ical4android/AndroidCalendar;->queryEvents(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_4

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/android/calendar/syncer/resource/c;

    .line 28
    .line 29
    :try_start_0
    invoke-virtual {v2}, Lat/bitfire/ical4android/AndroidEvent;->getEvent()Lat/bitfire/ical4android/Event;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    invoke-virtual {v3}, Lat/bitfire/ical4android/Event;->getAttendees()Ljava/util/LinkedList;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    invoke-virtual {v2}, Lcom/android/calendar/syncer/resource/c;->g()Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    invoke-virtual {v3}, Lat/bitfire/ical4android/ICalendar;->getSequence()Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    if-nez v6, :cond_0

    .line 52
    .line 53
    const/4 v4, 0x0

    .line 54
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v3, v4}, Lat/bitfire/ical4android/ICalendar;->setSequence(Ljava/lang/Integer;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_0
    if-nez v4, :cond_1

    .line 63
    .line 64
    if-eqz v5, :cond_3

    .line 65
    .line 66
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    add-int/lit8 v4, v4, 0x1

    .line 71
    .line 72
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v3, v4}, Lat/bitfire/ical4android/ICalendar;->setSequence(Ljava/lang/Integer;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    const-string v3, "Required value was null."

    .line 81
    .line 82
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :catch_0
    move-exception v3

    .line 93
    const-string v4, "CalSync:D:CalDavLocalCalendar"

    .line 94
    .line 95
    const-string v5, "Couldn\'t check/increase sequence"

    .line 96
    .line 97
    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    .line 99
    .line 100
    :cond_3
    :goto_1
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_4
    return-object v0
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

.method public d()V
    .locals 6

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v2, "sync_data1"

    .line 8
    .line 9
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lat/bitfire/ical4android/AndroidCalendar;->getProvider()Landroid/content/ContentProviderClient;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {p0}, Lat/bitfire/ical4android/AndroidCalendar;->eventsSyncURI()Landroid/net/Uri;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    new-array v1, v1, [Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p0}, Lat/bitfire/ical4android/AndroidCalendar;->getId()J

    .line 23
    .line 24
    .line 25
    move-result-wide v4

    .line 26
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    const/4 v5, 0x0

    .line 31
    aput-object v4, v1, v5

    .line 32
    .line 33
    const-string v4, "calendar_id=?"

    .line 34
    .line 35
    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    return-void
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

.method public e(Lcom/android/calendar/syncer/model/SyncState;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v1, "cal_sync1"

    .line 12
    .line 13
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lat/bitfire/ical4android/AndroidCalendar;->getProvider()Landroid/content/ContentProviderClient;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0}, Lat/bitfire/ical4android/AndroidCalendar;->calendarSyncURI()Landroid/net/Uri;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {p1, v1, v0, v2, v2}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return-void
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

.method public bridge synthetic f(Ljava/lang/String;)Lcom/android/calendar/syncer/resource/d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/calendar/syncer/resource/a;->j(Ljava/lang/String;)Lcom/android/calendar/syncer/resource/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
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

.method public g()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/calendar/syncer/resource/c;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "deleted AND original_id IS NULL"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lat/bitfire/ical4android/AndroidCalendar;->queryEvents(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
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

.method public h(I)I
    .locals 5

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v2, "sync_data2"

    .line 12
    .line 13
    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lat/bitfire/ical4android/AndroidCalendar;->getProvider()Landroid/content/ContentProviderClient;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0}, Lat/bitfire/ical4android/AndroidCalendar;->eventsSyncURI()Landroid/net/Uri;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    new-array v1, v1, [Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p0}, Lat/bitfire/ical4android/AndroidCalendar;->getId()J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const/4 v4, 0x0

    .line 35
    aput-object v3, v1, v4

    .line 36
    .line 37
    const-string v3, "calendar_id=? AND NOT dirty AND original_id IS NULL"

    .line 38
    .line 39
    invoke-virtual {p1, v2, v0, v3, v1}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    return p1
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

.method public i(I)I
    .locals 15

    .line 1
    invoke-virtual {p0}, Lat/bitfire/ical4android/AndroidCalendar;->getProvider()Landroid/content/ContentProviderClient;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    invoke-virtual {p0}, Lat/bitfire/ical4android/AndroidCalendar;->eventsSyncURI()Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v0, "_id"

    .line 10
    .line 11
    filled-new-array {v0}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const/4 v0, 0x2

    .line 16
    new-array v5, v0, [Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p0}, Lat/bitfire/ical4android/AndroidCalendar;->getId()J

    .line 19
    .line 20
    .line 21
    move-result-wide v6

    .line 22
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    const/4 v7, 0x0

    .line 27
    aput-object v4, v5, v7

    .line 28
    .line 29
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    const/4 v8, 0x1

    .line 34
    aput-object v4, v5, v8

    .line 35
    .line 36
    const-string v4, "calendar_id=? AND NOT dirty AND original_id IS NULL AND sync_data2=?"

    .line 37
    .line 38
    const/4 v6, 0x0

    .line 39
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    :try_start_0
    new-instance v3, Lat/bitfire/ical4android/BatchOperation;

    .line 47
    .line 48
    invoke-virtual {p0}, Lat/bitfire/ical4android/AndroidCalendar;->getProvider()Landroid/content/ContentProviderClient;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-direct {v3, v4}, Lat/bitfire/ical4android/BatchOperation;-><init>(Landroid/content/ContentProviderClient;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_0

    .line 60
    .line 61
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    .line 62
    .line 63
    .line 64
    move-result-wide v4

    .line 65
    new-instance v6, Lat/bitfire/ical4android/BatchOperation$Operation;

    .line 66
    .line 67
    invoke-virtual {p0}, Lat/bitfire/ical4android/AndroidCalendar;->eventsSyncURI()Landroid/net/Uri;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    const-string v10, "_id=? OR original_id=?"

    .line 76
    .line 77
    new-array v11, v0, [Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v12

    .line 83
    aput-object v12, v11, v7

    .line 84
    .line 85
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    aput-object v4, v11, v8

    .line 90
    .line 91
    invoke-virtual {v9, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 92
    .line 93
    .line 94
    move-result-object v10

    .line 95
    const-string v4, "newDelete(eventsSyncURI(\u2026String(), id.toString()))"

    .line 96
    .line 97
    invoke-static {v10, v4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const/4 v11, 0x0

    .line 101
    const/4 v12, 0x0

    .line 102
    const/4 v13, 0x6

    .line 103
    const/4 v14, 0x0

    .line 104
    move-object v9, v6

    .line 105
    invoke-direct/range {v9 .. v14}, Lat/bitfire/ical4android/BatchOperation$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;IILkotlin/jvm/internal/o;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3, v6}, Lat/bitfire/ical4android/BatchOperation;->enqueue(Lat/bitfire/ical4android/BatchOperation$Operation;)Z

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {v3}, Lat/bitfire/ical4android/BatchOperation;->commit()I

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    sget-object v0, Lkotlin/u;->a:Lkotlin/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .line 118
    invoke-static {v1, v2}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :catchall_0
    move-exception v0

    .line 123
    move-object v2, v0

    .line 124
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 125
    :catchall_1
    move-exception v0

    .line 126
    move-object v3, v0

    .line 127
    invoke-static {v1, v2}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 128
    .line 129
    .line 130
    throw v3

    .line 131
    :cond_1
    :goto_1
    return v7
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

.method public j(Ljava/lang/String;)Lcom/android/calendar/syncer/resource/c;
    .locals 2

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    new-array v0, v0, [Ljava/lang/String;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    aput-object p1, v0, v1

    .line 11
    .line 12
    const-string p1, "_sync_id=?"

    .line 13
    .line 14
    invoke-virtual {p0, p1, v0}, Lat/bitfire/ical4android/AndroidCalendar;->queryEvents(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Lkotlin/collections/t;->a0(Ljava/util/List;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/android/calendar/syncer/resource/c;

    .line 23
    .line 24
    return-object p1
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
.end method

.method public final k()V
    .locals 34

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "CalSync:D:CalDavLocalCalendar"

    .line 4
    .line 5
    const-string v2, "Processing deleted exceptions"

    .line 6
    .line 7
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p0 .. p0}, Lat/bitfire/ical4android/AndroidCalendar;->getProvider()Landroid/content/ContentProviderClient;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 15
    .line 16
    const-string v9, "CONTENT_URI"

    .line 17
    .line 18
    invoke-static {v2, v9}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lat/bitfire/ical4android/AndroidCalendar;->syncAdapterURI(Landroid/net/Uri;)Landroid/net/Uri;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    const-string v2, "_id"

    .line 26
    .line 27
    const-string v10, "original_id"

    .line 28
    .line 29
    const-string v11, "sync_data3"

    .line 30
    .line 31
    filled-new-array {v2, v10, v11}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    const/4 v12, 0x1

    .line 36
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v13

    .line 40
    new-array v7, v12, [Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual/range {p0 .. p0}, Lat/bitfire/ical4android/AndroidCalendar;->getId()J

    .line 43
    .line 44
    .line 45
    move-result-wide v14

    .line 46
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    const/4 v14, 0x0

    .line 51
    aput-object v6, v7, v14

    .line 52
    .line 53
    const-string v6, "calendar_id=? AND deleted AND original_id IS NOT NULL"

    .line 54
    .line 55
    const/4 v8, 0x0

    .line 56
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    const-string v4, "withAppendedId(Events.CONTENT_URI, id)"

    .line 61
    .line 62
    const-string v5, "newUpdate(syncAdapterURI\u2026ithValue(Events.DIRTY, 1)"

    .line 63
    .line 64
    const-string v6, "dirty"

    .line 65
    .line 66
    const-string v7, "withAppendedId(Events.CONTENT_URI, originalID)"

    .line 67
    .line 68
    if-eqz v3, :cond_4

    .line 69
    .line 70
    :goto_0
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 71
    .line 72
    .line 73
    move-result v15

    .line 74
    if-eqz v15, :cond_3

    .line 75
    .line 76
    const-string v15, "Found deleted exception, removing and re-scheduling original event (if available)"

    .line 77
    .line 78
    invoke-static {v0, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-object v15, v9

    .line 82
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getLong(I)J

    .line 83
    .line 84
    .line 85
    move-result-wide v8

    .line 86
    move-object/from16 v17, v15

    .line 87
    .line 88
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getLong(I)J

    .line 89
    .line 90
    .line 91
    move-result-wide v14

    .line 92
    new-instance v12, Lat/bitfire/ical4android/BatchOperation;

    .line 93
    .line 94
    move-object/from16 v18, v2

    .line 95
    .line 96
    invoke-virtual/range {p0 .. p0}, Lat/bitfire/ical4android/AndroidCalendar;->getProvider()Landroid/content/ContentProviderClient;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-direct {v12, v2}, Lat/bitfire/ical4android/BatchOperation;-><init>(Landroid/content/ContentProviderClient;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual/range {p0 .. p0}, Lat/bitfire/ical4android/AndroidCalendar;->getProvider()Landroid/content/ContentProviderClient;

    .line 104
    .line 105
    .line 106
    move-result-object v19

    .line 107
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 108
    .line 109
    invoke-static {v2, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-static {v2, v7}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v2}, Lat/bitfire/ical4android/AndroidCalendar;->syncAdapterURI(Landroid/net/Uri;)Landroid/net/Uri;

    .line 117
    .line 118
    .line 119
    move-result-object v20

    .line 120
    filled-new-array {v11}, [Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v21

    .line 124
    const/16 v22, 0x0

    .line 125
    .line 126
    const/16 v23, 0x0

    .line 127
    .line 128
    const/16 v24, 0x0

    .line 129
    .line 130
    invoke-virtual/range {v19 .. v24}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 131
    .line 132
    .line 133
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 134
    if-eqz v2, :cond_2

    .line 135
    .line 136
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 137
    .line 138
    .line 139
    move-result v19

    .line 140
    if-eqz v19, :cond_1

    .line 141
    .line 142
    move-object/from16 v19, v10

    .line 143
    .line 144
    const/4 v10, 0x0

    .line 145
    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    .line 146
    .line 147
    .line 148
    move-result v16

    .line 149
    if-eqz v16, :cond_0

    .line 150
    .line 151
    move/from16 v20, v10

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_0
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 155
    .line 156
    .line 157
    move-result v20

    .line 158
    :goto_1
    new-instance v10, Lat/bitfire/ical4android/BatchOperation$Operation;

    .line 159
    .line 160
    move-object/from16 v27, v0

    .line 161
    .line 162
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 163
    .line 164
    invoke-static {v0, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-static {v0, v7}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, v0}, Lat/bitfire/ical4android/AndroidCalendar;->syncAdapterURI(Landroid/net/Uri;)Landroid/net/Uri;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    const/4 v14, 0x1

    .line 180
    add-int/lit8 v20, v20, 0x1

    .line 181
    .line 182
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object v14

    .line 186
    invoke-virtual {v0, v11, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {v0, v6, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-static {v0, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    const/16 v23, 0x0

    .line 198
    .line 199
    const/16 v24, 0x0

    .line 200
    .line 201
    const/16 v25, 0x6

    .line 202
    .line 203
    const/16 v26, 0x0

    .line 204
    .line 205
    move-object/from16 v21, v10

    .line 206
    .line 207
    move-object/from16 v22, v0

    .line 208
    .line 209
    invoke-direct/range {v21 .. v26}, Lat/bitfire/ical4android/BatchOperation$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;IILkotlin/jvm/internal/o;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v12, v10}, Lat/bitfire/ical4android/BatchOperation;->enqueue(Lat/bitfire/ical4android/BatchOperation$Operation;)Z

    .line 213
    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_1
    move-object/from16 v27, v0

    .line 217
    .line 218
    move-object/from16 v19, v10

    .line 219
    .line 220
    :goto_2
    sget-object v0, Lkotlin/u;->a:Lkotlin/u;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    .line 222
    const/4 v0, 0x0

    .line 223
    :try_start_2
    invoke-static {v2, v0}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 224
    .line 225
    .line 226
    goto :goto_3

    .line 227
    :catchall_0
    move-exception v0

    .line 228
    move-object v4, v0

    .line 229
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 230
    :catchall_1
    move-exception v0

    .line 231
    move-object v5, v0

    .line 232
    :try_start_4
    invoke-static {v2, v4}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 233
    .line 234
    .line 235
    throw v5

    .line 236
    :cond_2
    move-object/from16 v27, v0

    .line 237
    .line 238
    move-object/from16 v19, v10

    .line 239
    .line 240
    :goto_3
    new-instance v0, Lat/bitfire/ical4android/BatchOperation$Operation;

    .line 241
    .line 242
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 243
    .line 244
    invoke-static {v2, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    invoke-static {v2, v4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1, v2}, Lat/bitfire/ical4android/AndroidCalendar;->syncAdapterURI(Landroid/net/Uri;)Landroid/net/Uri;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    const-string v8, "newDelete(syncAdapterURI\u2026Events.CONTENT_URI, id)))"

    .line 260
    .line 261
    invoke-static {v2, v8}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    const/16 v22, 0x0

    .line 265
    .line 266
    const/16 v23, 0x0

    .line 267
    .line 268
    const/16 v24, 0x6

    .line 269
    .line 270
    const/16 v25, 0x0

    .line 271
    .line 272
    move-object/from16 v20, v0

    .line 273
    .line 274
    move-object/from16 v21, v2

    .line 275
    .line 276
    invoke-direct/range {v20 .. v25}, Lat/bitfire/ical4android/BatchOperation$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;IILkotlin/jvm/internal/o;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v12, v0}, Lat/bitfire/ical4android/BatchOperation;->enqueue(Lat/bitfire/ical4android/BatchOperation$Operation;)Z

    .line 280
    .line 281
    .line 282
    invoke-virtual {v12}, Lat/bitfire/ical4android/BatchOperation;->commit()I

    .line 283
    .line 284
    .line 285
    move-object/from16 v9, v17

    .line 286
    .line 287
    move-object/from16 v2, v18

    .line 288
    .line 289
    move-object/from16 v10, v19

    .line 290
    .line 291
    move-object/from16 v0, v27

    .line 292
    .line 293
    const/4 v12, 0x1

    .line 294
    const/4 v14, 0x0

    .line 295
    goto/16 :goto_0

    .line 296
    .line 297
    :cond_3
    move-object/from16 v27, v0

    .line 298
    .line 299
    move-object/from16 v18, v2

    .line 300
    .line 301
    move-object/from16 v17, v9

    .line 302
    .line 303
    move-object/from16 v19, v10

    .line 304
    .line 305
    sget-object v0, Lkotlin/u;->a:Lkotlin/u;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 306
    .line 307
    const/4 v0, 0x0

    .line 308
    invoke-static {v3, v0}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 309
    .line 310
    .line 311
    goto :goto_4

    .line 312
    :catchall_2
    move-exception v0

    .line 313
    move-object v2, v0

    .line 314
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 315
    :catchall_3
    move-exception v0

    .line 316
    move-object v4, v0

    .line 317
    invoke-static {v3, v2}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 318
    .line 319
    .line 320
    throw v4

    .line 321
    :cond_4
    move-object/from16 v27, v0

    .line 322
    .line 323
    move-object/from16 v18, v2

    .line 324
    .line 325
    move-object/from16 v17, v9

    .line 326
    .line 327
    move-object/from16 v19, v10

    .line 328
    .line 329
    :goto_4
    const-string v0, "Processing dirty exceptions"

    .line 330
    .line 331
    move-object/from16 v2, v27

    .line 332
    .line 333
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .line 335
    .line 336
    invoke-virtual/range {p0 .. p0}, Lat/bitfire/ical4android/AndroidCalendar;->getProvider()Landroid/content/ContentProviderClient;

    .line 337
    .line 338
    .line 339
    move-result-object v20

    .line 340
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 341
    .line 342
    move-object/from16 v3, v17

    .line 343
    .line 344
    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v1, v0}, Lat/bitfire/ical4android/AndroidCalendar;->syncAdapterURI(Landroid/net/Uri;)Landroid/net/Uri;

    .line 348
    .line 349
    .line 350
    move-result-object v21

    .line 351
    move-object/from16 v3, v18

    .line 352
    .line 353
    move-object/from16 v0, v19

    .line 354
    .line 355
    filled-new-array {v3, v0, v11}, [Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v22

    .line 359
    const/4 v0, 0x1

    .line 360
    new-array v3, v0, [Ljava/lang/String;

    .line 361
    .line 362
    invoke-virtual/range {p0 .. p0}, Lat/bitfire/ical4android/AndroidCalendar;->getId()J

    .line 363
    .line 364
    .line 365
    move-result-wide v8

    .line 366
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    const/4 v8, 0x0

    .line 371
    aput-object v0, v3, v8

    .line 372
    .line 373
    const/16 v25, 0x0

    .line 374
    .line 375
    const-string v23, "calendar_id=? AND dirty AND original_id IS NOT NULL"

    .line 376
    .line 377
    move-object/from16 v24, v3

    .line 378
    .line 379
    invoke-virtual/range {v20 .. v25}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 380
    .line 381
    .line 382
    move-result-object v3

    .line 383
    if-eqz v3, :cond_7

    .line 384
    .line 385
    :goto_5
    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 386
    .line 387
    .line 388
    move-result v0

    .line 389
    if-eqz v0, :cond_6

    .line 390
    .line 391
    const-string v0, "Found dirty exception, increasing SEQUENCE to re-schedule"

    .line 392
    .line 393
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    .line 395
    .line 396
    const/4 v0, 0x0

    .line 397
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 398
    .line 399
    .line 400
    move-result-wide v8

    .line 401
    const/4 v0, 0x1

    .line 402
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 403
    .line 404
    .line 405
    move-result-wide v14

    .line 406
    const/4 v0, 0x2

    .line 407
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 408
    .line 409
    .line 410
    move-result v10

    .line 411
    if-eqz v10, :cond_5

    .line 412
    .line 413
    const/4 v10, 0x0

    .line 414
    goto :goto_6

    .line 415
    :cond_5
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 416
    .line 417
    .line 418
    move-result v10

    .line 419
    :goto_6
    new-instance v0, Lat/bitfire/ical4android/BatchOperation;

    .line 420
    .line 421
    invoke-virtual/range {p0 .. p0}, Lat/bitfire/ical4android/AndroidCalendar;->getProvider()Landroid/content/ContentProviderClient;

    .line 422
    .line 423
    .line 424
    move-result-object v12

    .line 425
    invoke-direct {v0, v12}, Lat/bitfire/ical4android/BatchOperation;-><init>(Landroid/content/ContentProviderClient;)V

    .line 426
    .line 427
    .line 428
    new-instance v12, Lat/bitfire/ical4android/BatchOperation$Operation;

    .line 429
    .line 430
    move-object/from16 v27, v2

    .line 431
    .line 432
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 433
    .line 434
    invoke-static {v2, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 435
    .line 436
    .line 437
    move-result-object v2

    .line 438
    invoke-static {v2, v7}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v1, v2}, Lat/bitfire/ical4android/AndroidCalendar;->syncAdapterURI(Landroid/net/Uri;)Landroid/net/Uri;

    .line 442
    .line 443
    .line 444
    move-result-object v2

    .line 445
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    .line 446
    .line 447
    .line 448
    move-result-object v2

    .line 449
    invoke-virtual {v2, v6, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 450
    .line 451
    .line 452
    move-result-object v2

    .line 453
    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    const/16 v20, 0x0

    .line 457
    .line 458
    const/16 v21, 0x0

    .line 459
    .line 460
    const/16 v22, 0x6

    .line 461
    .line 462
    const/16 v23, 0x0

    .line 463
    .line 464
    move-object/from16 v18, v12

    .line 465
    .line 466
    move-object/from16 v19, v2

    .line 467
    .line 468
    invoke-direct/range {v18 .. v23}, Lat/bitfire/ical4android/BatchOperation$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;IILkotlin/jvm/internal/o;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v0, v12}, Lat/bitfire/ical4android/BatchOperation;->enqueue(Lat/bitfire/ical4android/BatchOperation$Operation;)Z

    .line 472
    .line 473
    .line 474
    new-instance v2, Lat/bitfire/ical4android/BatchOperation$Operation;

    .line 475
    .line 476
    sget-object v12, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 477
    .line 478
    invoke-static {v12, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 479
    .line 480
    .line 481
    move-result-object v8

    .line 482
    invoke-static {v8, v4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v1, v8}, Lat/bitfire/ical4android/AndroidCalendar;->syncAdapterURI(Landroid/net/Uri;)Landroid/net/Uri;

    .line 486
    .line 487
    .line 488
    move-result-object v8

    .line 489
    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    .line 490
    .line 491
    .line 492
    move-result-object v8

    .line 493
    const/4 v9, 0x1

    .line 494
    add-int/2addr v10, v9

    .line 495
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 496
    .line 497
    .line 498
    move-result-object v10

    .line 499
    invoke-virtual {v8, v11, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 500
    .line 501
    .line 502
    move-result-object v8

    .line 503
    const/4 v10, 0x0

    .line 504
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 505
    .line 506
    .line 507
    move-result-object v12

    .line 508
    invoke-virtual {v8, v6, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 509
    .line 510
    .line 511
    move-result-object v8

    .line 512
    const-string v12, "newUpdate(syncAdapterURI\u2026ithValue(Events.DIRTY, 0)"

    .line 513
    .line 514
    invoke-static {v8, v12}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    const/16 v30, 0x0

    .line 518
    .line 519
    const/16 v31, 0x0

    .line 520
    .line 521
    const/16 v32, 0x6

    .line 522
    .line 523
    const/16 v33, 0x0

    .line 524
    .line 525
    move-object/from16 v28, v2

    .line 526
    .line 527
    move-object/from16 v29, v8

    .line 528
    .line 529
    invoke-direct/range {v28 .. v33}, Lat/bitfire/ical4android/BatchOperation$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;IILkotlin/jvm/internal/o;)V

    .line 530
    .line 531
    .line 532
    invoke-virtual {v0, v2}, Lat/bitfire/ical4android/BatchOperation;->enqueue(Lat/bitfire/ical4android/BatchOperation$Operation;)Z

    .line 533
    .line 534
    .line 535
    invoke-virtual {v0}, Lat/bitfire/ical4android/BatchOperation;->commit()I

    .line 536
    .line 537
    .line 538
    move-object/from16 v2, v27

    .line 539
    .line 540
    goto/16 :goto_5

    .line 541
    .line 542
    :cond_6
    sget-object v0, Lkotlin/u;->a:Lkotlin/u;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 543
    .line 544
    const/4 v0, 0x0

    .line 545
    invoke-static {v3, v0}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 546
    .line 547
    .line 548
    goto :goto_7

    .line 549
    :catchall_4
    move-exception v0

    .line 550
    move-object v2, v0

    .line 551
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 552
    :catchall_5
    move-exception v0

    .line 553
    move-object v4, v0

    .line 554
    invoke-static {v3, v2}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 555
    .line 556
    .line 557
    throw v4

    .line 558
    :cond_7
    :goto_7
    return-void
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
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

.method public final l(Lcom/android/calendar/syncer/model/Collection;Z)I
    .locals 1

    .line 1
    const-string v0, "info"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/android/calendar/syncer/resource/a;->a:Lcom/android/calendar/syncer/resource/a$a;

    .line 7
    .line 8
    invoke-static {v0, p1, p2}, Lcom/android/calendar/syncer/resource/a$a;->a(Lcom/android/calendar/syncer/resource/a$a;Lcom/android/calendar/syncer/model/Collection;Z)Landroid/content/ContentValues;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lat/bitfire/ical4android/AndroidCalendar;->update(Landroid/content/ContentValues;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
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

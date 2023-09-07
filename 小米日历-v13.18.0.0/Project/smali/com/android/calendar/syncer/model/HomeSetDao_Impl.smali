.class public final Lcom/android/calendar/syncer/model/HomeSetDao_Impl;
.super Ljava/lang/Object;
.source "HomeSetDao_Impl.java"

# interfaces
.implements Lcom/android/calendar/syncer/model/HomeSetDao;


# instance fields
.field private final __converters:Lcom/android/calendar/syncer/model/Converters;

.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfHomeSet:Landroidx/room/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/c<",
            "Lcom/android/calendar/syncer/model/HomeSet;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfHomeSet:Landroidx/room/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/d<",
            "Lcom/android/calendar/syncer/model/HomeSet;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfHomeSet_1:Landroidx/room/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/d<",
            "Lcom/android/calendar/syncer/model/HomeSet;",
            ">;"
        }
    .end annotation
.end field

.field private final __updateAdapterOfHomeSet:Landroidx/room/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/c<",
            "Lcom/android/calendar/syncer/model/HomeSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/calendar/syncer/model/Converters;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/android/calendar/syncer/model/Converters;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/calendar/syncer/model/HomeSetDao_Impl;->__converters:Lcom/android/calendar/syncer/model/Converters;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/calendar/syncer/model/HomeSetDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 12
    .line 13
    new-instance v0, Lcom/android/calendar/syncer/model/HomeSetDao_Impl$1;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Lcom/android/calendar/syncer/model/HomeSetDao_Impl$1;-><init>(Lcom/android/calendar/syncer/model/HomeSetDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/calendar/syncer/model/HomeSetDao_Impl;->__insertionAdapterOfHomeSet:Landroidx/room/d;

    .line 19
    .line 20
    new-instance v0, Lcom/android/calendar/syncer/model/HomeSetDao_Impl$2;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/android/calendar/syncer/model/HomeSetDao_Impl$2;-><init>(Lcom/android/calendar/syncer/model/HomeSetDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/calendar/syncer/model/HomeSetDao_Impl;->__insertionAdapterOfHomeSet_1:Landroidx/room/d;

    .line 26
    .line 27
    new-instance v0, Lcom/android/calendar/syncer/model/HomeSetDao_Impl$3;

    .line 28
    .line 29
    invoke-direct {v0, p0, p1}, Lcom/android/calendar/syncer/model/HomeSetDao_Impl$3;-><init>(Lcom/android/calendar/syncer/model/HomeSetDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/calendar/syncer/model/HomeSetDao_Impl;->__deletionAdapterOfHomeSet:Landroidx/room/c;

    .line 33
    .line 34
    new-instance v0, Lcom/android/calendar/syncer/model/HomeSetDao_Impl$4;

    .line 35
    .line 36
    invoke-direct {v0, p0, p1}, Lcom/android/calendar/syncer/model/HomeSetDao_Impl$4;-><init>(Lcom/android/calendar/syncer/model/HomeSetDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/android/calendar/syncer/model/HomeSetDao_Impl;->__updateAdapterOfHomeSet:Landroidx/room/c;

    .line 40
    .line 41
    return-void
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

.method static synthetic access$000(Lcom/android/calendar/syncer/model/HomeSetDao_Impl;)Lcom/android/calendar/syncer/model/Converters;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/syncer/model/HomeSetDao_Impl;->__converters:Lcom/android/calendar/syncer/model/Converters;

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


# virtual methods
.method public delete(Lcom/android/calendar/syncer/model/HomeSet;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/calendar/syncer/model/HomeSetDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 3
    iget-object v0, p0, Lcom/android/calendar/syncer/model/HomeSetDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/syncer/model/HomeSetDao_Impl;->__deletionAdapterOfHomeSet:Landroidx/room/c;

    invoke-virtual {v0, p1}, Landroidx/room/c;->handle(Ljava/lang/Object;)I

    .line 5
    iget-object p1, p0, Lcom/android/calendar/syncer/model/HomeSetDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p1, p0, Lcom/android/calendar/syncer/model/HomeSetDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/android/calendar/syncer/model/HomeSetDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 7
    throw p1
.end method

.method public bridge synthetic delete(Lcom/android/calendar/syncer/model/IdEntity;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/calendar/syncer/model/HomeSet;

    invoke-virtual {p0, p1}, Lcom/android/calendar/syncer/model/HomeSetDao_Impl;->delete(Lcom/android/calendar/syncer/model/HomeSet;)V

    return-void
.end method

.method public getBindableByService(J)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/android/calendar/syncer/model/HomeSet;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "SELECT * FROM homeset WHERE serviceId=? AND privBind"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v2}, Landroidx/room/m;->j(Ljava/lang/String;I)Landroidx/room/m;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    move-wide/from16 v4, p1

    .line 11
    .line 12
    invoke-virtual {v3, v2, v4, v5}, Landroidx/room/m;->B(IJ)V

    .line 13
    .line 14
    .line 15
    iget-object v0, v1, Lcom/android/calendar/syncer/model/HomeSetDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 18
    .line 19
    .line 20
    iget-object v0, v1, Lcom/android/calendar/syncer/model/HomeSetDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    invoke-static {v0, v3, v4, v5}, Lk0/c;->b(Landroidx/room/RoomDatabase;Ll0/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    :try_start_0
    const-string v0, "id"

    .line 29
    .line 30
    invoke-static {v5, v0}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const-string v6, "serviceId"

    .line 35
    .line 36
    invoke-static {v5, v6}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    const-string v7, "url"

    .line 41
    .line 42
    invoke-static {v5, v7}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    const-string v8, "privBind"

    .line 47
    .line 48
    invoke-static {v5, v8}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    const-string v9, "displayName"

    .line 53
    .line 54
    invoke-static {v5, v9}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    new-instance v10, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    .line 61
    .line 62
    .line 63
    move-result v11

    .line 64
    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 65
    .line 66
    .line 67
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 68
    .line 69
    .line 70
    move-result v11

    .line 71
    if-eqz v11, :cond_1

    .line 72
    .line 73
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 74
    .line 75
    .line 76
    move-result-wide v13

    .line 77
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    .line 78
    .line 79
    .line 80
    move-result-wide v15

    .line 81
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v11

    .line 85
    iget-object v12, v1, Lcom/android/calendar/syncer/model/HomeSetDao_Impl;->__converters:Lcom/android/calendar/syncer/model/Converters;

    .line 86
    .line 87
    invoke-virtual {v12, v11}, Lcom/android/calendar/syncer/model/Converters;->stringToHttpUrl(Ljava/lang/String;)Lokhttp3/t;

    .line 88
    .line 89
    .line 90
    move-result-object v17

    .line 91
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    .line 92
    .line 93
    .line 94
    move-result v11

    .line 95
    if-eqz v11, :cond_0

    .line 96
    .line 97
    move/from16 v18, v2

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_0
    move/from16 v18, v4

    .line 101
    .line 102
    :goto_1
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v19

    .line 106
    new-instance v11, Lcom/android/calendar/syncer/model/HomeSet;

    .line 107
    .line 108
    move-object v12, v11

    .line 109
    invoke-direct/range {v12 .. v19}, Lcom/android/calendar/syncer/model/HomeSet;-><init>(JJLokhttp3/t;ZLjava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_1
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3}, Landroidx/room/m;->z()V

    .line 120
    .line 121
    .line 122
    return-object v10

    .line 123
    :catchall_0
    move-exception v0

    .line 124
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3}, Landroidx/room/m;->z()V

    .line 128
    .line 129
    .line 130
    throw v0
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

.method public getByService(J)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/android/calendar/syncer/model/HomeSet;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "SELECT * FROM homeset WHERE serviceId=?"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v2}, Landroidx/room/m;->j(Ljava/lang/String;I)Landroidx/room/m;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    move-wide/from16 v4, p1

    .line 11
    .line 12
    invoke-virtual {v3, v2, v4, v5}, Landroidx/room/m;->B(IJ)V

    .line 13
    .line 14
    .line 15
    iget-object v0, v1, Lcom/android/calendar/syncer/model/HomeSetDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 18
    .line 19
    .line 20
    iget-object v0, v1, Lcom/android/calendar/syncer/model/HomeSetDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    invoke-static {v0, v3, v4, v5}, Lk0/c;->b(Landroidx/room/RoomDatabase;Ll0/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    :try_start_0
    const-string v0, "id"

    .line 29
    .line 30
    invoke-static {v5, v0}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const-string v6, "serviceId"

    .line 35
    .line 36
    invoke-static {v5, v6}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    const-string v7, "url"

    .line 41
    .line 42
    invoke-static {v5, v7}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    const-string v8, "privBind"

    .line 47
    .line 48
    invoke-static {v5, v8}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    const-string v9, "displayName"

    .line 53
    .line 54
    invoke-static {v5, v9}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    new-instance v10, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    .line 61
    .line 62
    .line 63
    move-result v11

    .line 64
    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 65
    .line 66
    .line 67
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 68
    .line 69
    .line 70
    move-result v11

    .line 71
    if-eqz v11, :cond_1

    .line 72
    .line 73
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 74
    .line 75
    .line 76
    move-result-wide v13

    .line 77
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    .line 78
    .line 79
    .line 80
    move-result-wide v15

    .line 81
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v11

    .line 85
    iget-object v12, v1, Lcom/android/calendar/syncer/model/HomeSetDao_Impl;->__converters:Lcom/android/calendar/syncer/model/Converters;

    .line 86
    .line 87
    invoke-virtual {v12, v11}, Lcom/android/calendar/syncer/model/Converters;->stringToHttpUrl(Ljava/lang/String;)Lokhttp3/t;

    .line 88
    .line 89
    .line 90
    move-result-object v17

    .line 91
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    .line 92
    .line 93
    .line 94
    move-result v11

    .line 95
    if-eqz v11, :cond_0

    .line 96
    .line 97
    move/from16 v18, v2

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_0
    move/from16 v18, v4

    .line 101
    .line 102
    :goto_1
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v19

    .line 106
    new-instance v11, Lcom/android/calendar/syncer/model/HomeSet;

    .line 107
    .line 108
    move-object v12, v11

    .line 109
    invoke-direct/range {v12 .. v19}, Lcom/android/calendar/syncer/model/HomeSet;-><init>(JJLokhttp3/t;ZLjava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_1
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3}, Landroidx/room/m;->z()V

    .line 120
    .line 121
    .line 122
    return-object v10

    .line 123
    :catchall_0
    move-exception v0

    .line 124
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3}, Landroidx/room/m;->z()V

    .line 128
    .line 129
    .line 130
    throw v0
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

.method public insert(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/calendar/syncer/model/HomeSet;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/calendar/syncer/model/HomeSetDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/calendar/syncer/model/HomeSetDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/syncer/model/HomeSetDao_Impl;->__insertionAdapterOfHomeSet:Landroidx/room/d;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroidx/room/d;->insert(Ljava/lang/Iterable;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/calendar/syncer/model/HomeSetDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/calendar/syncer/model/HomeSetDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    iget-object v0, p0, Lcom/android/calendar/syncer/model/HomeSetDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 31
    .line 32
    .line 33
    throw p1
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

.method public insertOrReplace(Lcom/android/calendar/syncer/model/HomeSet;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/syncer/model/HomeSetDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/calendar/syncer/model/HomeSetDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/syncer/model/HomeSetDao_Impl;->__insertionAdapterOfHomeSet_1:Landroidx/room/d;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroidx/room/d;->insertAndReturnId(Ljava/lang/Object;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iget-object p1, p0, Lcom/android/calendar/syncer/model/HomeSetDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/android/calendar/syncer/model/HomeSetDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 25
    .line 26
    .line 27
    return-wide v0

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    iget-object v0, p0, Lcom/android/calendar/syncer/model/HomeSetDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 32
    .line 33
    .line 34
    throw p1
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

.method public update(Lcom/android/calendar/syncer/model/HomeSet;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/calendar/syncer/model/HomeSetDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 3
    iget-object v0, p0, Lcom/android/calendar/syncer/model/HomeSetDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/syncer/model/HomeSetDao_Impl;->__updateAdapterOfHomeSet:Landroidx/room/c;

    invoke-virtual {v0, p1}, Landroidx/room/c;->handle(Ljava/lang/Object;)I

    .line 5
    iget-object p1, p0, Lcom/android/calendar/syncer/model/HomeSetDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p1, p0, Lcom/android/calendar/syncer/model/HomeSetDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/android/calendar/syncer/model/HomeSetDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 7
    throw p1
.end method

.method public bridge synthetic update(Lcom/android/calendar/syncer/model/IdEntity;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/calendar/syncer/model/HomeSet;

    invoke-virtual {p0, p1}, Lcom/android/calendar/syncer/model/HomeSetDao_Impl;->update(Lcom/android/calendar/syncer/model/HomeSet;)V

    return-void
.end method

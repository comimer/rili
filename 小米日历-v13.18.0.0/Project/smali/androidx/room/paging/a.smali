.class public abstract Landroidx/room/paging/a;
.super Landroidx/paging/d;
.source "LimitOffsetDataSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/paging/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mCountQuery:Ljava/lang/String;

.field private final mDb:Landroidx/room/RoomDatabase;

.field private final mInTransaction:Z

.field private final mLimitOffsetQuery:Ljava/lang/String;

.field private final mObserver:Landroidx/room/h$c;

.field private final mSourceQuery:Landroidx/room/m;


# direct methods
.method protected varargs constructor <init>(Landroidx/room/RoomDatabase;Landroidx/room/m;Z[Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroidx/paging/d;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/room/paging/a;->mDb:Landroidx/room/RoomDatabase;

    .line 4
    iput-object p2, p0, Landroidx/room/paging/a;->mSourceQuery:Landroidx/room/m;

    .line 5
    iput-boolean p3, p0, Landroidx/room/paging/a;->mInTransaction:Z

    .line 6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SELECT COUNT(*) FROM ( "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroidx/room/m;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " )"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Landroidx/room/paging/a;->mCountQuery:Ljava/lang/String;

    .line 7
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SELECT * FROM ( "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroidx/room/m;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ) LIMIT ? OFFSET ?"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/room/paging/a;->mLimitOffsetQuery:Ljava/lang/String;

    .line 8
    new-instance p2, Landroidx/room/paging/a$a;

    invoke-direct {p2, p0, p4}, Landroidx/room/paging/a$a;-><init>(Landroidx/room/paging/a;[Ljava/lang/String;)V

    iput-object p2, p0, Landroidx/room/paging/a;->mObserver:Landroidx/room/h$c;

    .line 9
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/h;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/room/h;->b(Landroidx/room/h$c;)V

    return-void
.end method

.method protected varargs constructor <init>(Landroidx/room/RoomDatabase;Ll0/e;Z[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p2}, Landroidx/room/m;->q(Ll0/e;)Landroidx/room/m;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/room/paging/a;-><init>(Landroidx/room/RoomDatabase;Landroidx/room/m;Z[Ljava/lang/String;)V

    return-void
.end method

.method private getSQLiteQuery(II)Landroidx/room/m;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/room/paging/a;->mLimitOffsetQuery:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/room/paging/a;->mSourceQuery:Landroidx/room/m;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/room/m;->c()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/lit8 v1, v1, 0x2

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroidx/room/m;->j(Ljava/lang/String;I)Landroidx/room/m;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Landroidx/room/paging/a;->mSourceQuery:Landroidx/room/m;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/room/m;->m(Landroidx/room/m;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/room/m;->c()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/lit8 v1, v1, -0x1

    .line 25
    .line 26
    int-to-long v2, p2

    .line 27
    invoke-virtual {v0, v1, v2, v3}, Landroidx/room/m;->B(IJ)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/room/m;->c()I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    int-to-long v1, p1

    .line 35
    invoke-virtual {v0, p2, v1, v2}, Landroidx/room/m;->B(IJ)V

    .line 36
    .line 37
    .line 38
    return-object v0
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
.method protected abstract convertRows(Landroid/database/Cursor;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public countItems()I
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/room/paging/a;->mCountQuery:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/room/paging/a;->mSourceQuery:Landroidx/room/m;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/room/m;->c()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v0, v1}, Landroidx/room/m;->j(Ljava/lang/String;I)Landroidx/room/m;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Landroidx/room/paging/a;->mSourceQuery:Landroidx/room/m;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroidx/room/m;->m(Landroidx/room/m;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/room/paging/a;->mDb:Landroidx/room/RoomDatabase;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroidx/room/RoomDatabase;->query(Ll0/e;)Landroid/database/Cursor;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x0

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 32
    .line 33
    .line 34
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/room/m;->z()V

    .line 39
    .line 40
    .line 41
    return v2

    .line 42
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/room/m;->z()V

    .line 46
    .line 47
    .line 48
    return v3

    .line 49
    :catchall_0
    move-exception v2

    .line 50
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Landroidx/room/m;->z()V

    .line 54
    .line 55
    .line 56
    throw v2
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

.method public isInvalid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/paging/a;->mDb:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/room/h;->i()V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Landroidx/paging/b;->isInvalid()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public loadInitial(Landroidx/paging/d$d;Landroidx/paging/d$b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/d$d;",
            "Landroidx/paging/d$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/room/paging/a;->mDb:Landroidx/room/RoomDatabase;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :try_start_0
    invoke-virtual {p0}, Landroidx/room/paging/a;->countItems()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-static {p1, v2}, Landroidx/paging/d;->computeInitialLoadPosition(Landroidx/paging/d$d;I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static {p1, v0, v2}, Landroidx/paging/d;->computeInitialLoadSize(Landroidx/paging/d$d;II)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-direct {p0, v0, p1}, Landroidx/room/paging/a;->getSQLiteQuery(II)Landroidx/room/m;

    .line 26
    .line 27
    .line 28
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29
    :try_start_1
    iget-object v3, p0, Landroidx/room/paging/a;->mDb:Landroidx/room/RoomDatabase;

    .line 30
    .line 31
    invoke-virtual {v3, p1}, Landroidx/room/RoomDatabase;->query(Ll0/e;)Landroid/database/Cursor;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p0, v1}, Landroidx/room/paging/a;->convertRows(Landroid/database/Cursor;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    iget-object v4, p0, Landroidx/room/paging/a;->mDb:Landroidx/room/RoomDatabase;

    .line 40
    .line 41
    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    .line 44
    move-object v5, v3

    .line 45
    move-object v3, p1

    .line 46
    move p1, v0

    .line 47
    move-object v0, v5

    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p2

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    const/4 p1, 0x0

    .line 52
    move-object v3, v1

    .line 53
    :goto_0
    if-eqz v1, :cond_1

    .line 54
    .line 55
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 56
    .line 57
    .line 58
    :cond_1
    iget-object v1, p0, Landroidx/room/paging/a;->mDb:Landroidx/room/RoomDatabase;

    .line 59
    .line 60
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 61
    .line 62
    .line 63
    if-eqz v3, :cond_2

    .line 64
    .line 65
    invoke-virtual {v3}, Landroidx/room/m;->z()V

    .line 66
    .line 67
    .line 68
    :cond_2
    invoke-virtual {p2, v0, p1, v2}, Landroidx/paging/d$b;->a(Ljava/util/List;II)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :catchall_1
    move-exception p2

    .line 73
    move-object p1, v1

    .line 74
    :goto_1
    if-eqz v1, :cond_3

    .line 75
    .line 76
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 77
    .line 78
    .line 79
    :cond_3
    iget-object v0, p0, Landroidx/room/paging/a;->mDb:Landroidx/room/RoomDatabase;

    .line 80
    .line 81
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 82
    .line 83
    .line 84
    if-eqz p1, :cond_4

    .line 85
    .line 86
    invoke-virtual {p1}, Landroidx/room/m;->z()V

    .line 87
    .line 88
    .line 89
    :cond_4
    throw p2
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

.method public loadRange(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/room/paging/a;->getSQLiteQuery(II)Landroidx/room/m;

    move-result-object p1

    .line 3
    iget-boolean p2, p0, Landroidx/room/paging/a;->mInTransaction:Z

    if-eqz p2, :cond_2

    .line 4
    iget-object p2, p0, Landroidx/room/paging/a;->mDb:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    const/4 p2, 0x0

    .line 5
    :try_start_0
    iget-object v0, p0, Landroidx/room/paging/a;->mDb:Landroidx/room/RoomDatabase;

    invoke-virtual {v0, p1}, Landroidx/room/RoomDatabase;->query(Ll0/e;)Landroid/database/Cursor;

    move-result-object p2

    .line 6
    invoke-virtual {p0, p2}, Landroidx/room/paging/a;->convertRows(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/room/paging/a;->mDb:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 8
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 9
    :cond_0
    iget-object p2, p0, Landroidx/room/paging/a;->mDb:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 10
    invoke-virtual {p1}, Landroidx/room/m;->z()V

    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p2, :cond_1

    .line 11
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 12
    :cond_1
    iget-object p2, p0, Landroidx/room/paging/a;->mDb:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 13
    invoke-virtual {p1}, Landroidx/room/m;->z()V

    .line 14
    throw v0

    .line 15
    :cond_2
    iget-object p2, p0, Landroidx/room/paging/a;->mDb:Landroidx/room/RoomDatabase;

    invoke-virtual {p2, p1}, Landroidx/room/RoomDatabase;->query(Ll0/e;)Landroid/database/Cursor;

    move-result-object p2

    .line 16
    :try_start_1
    invoke-virtual {p0, p2}, Landroidx/room/paging/a;->convertRows(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 17
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 18
    invoke-virtual {p1}, Landroidx/room/m;->z()V

    return-object v0

    :catchall_1
    move-exception v0

    .line 19
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 20
    invoke-virtual {p1}, Landroidx/room/m;->z()V

    .line 21
    throw v0
.end method

.method public loadRange(Landroidx/paging/d$g;Landroidx/paging/d$e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/d$g;",
            "Landroidx/paging/d$e<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget v0, p1, Landroidx/paging/d$g;->a:I

    iget p1, p1, Landroidx/paging/d$g;->b:I

    invoke-virtual {p0, v0, p1}, Landroidx/room/paging/a;->loadRange(II)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/paging/d$e;->a(Ljava/util/List;)V

    return-void
.end method

.class public final Lcom/android/calendar/syncer/model/CollectionDao_Impl;
.super Ljava/lang/Object;
.source "CollectionDao_Impl.java"

# interfaces
.implements Lcom/android/calendar/syncer/model/CollectionDao;


# instance fields
.field private final __converters:Lcom/android/calendar/syncer/model/Converters;

.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfCollection:Landroidx/room/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/c<",
            "Lcom/android/calendar/syncer/model/Collection;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfCollection:Landroidx/room/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/d<",
            "Lcom/android/calendar/syncer/model/Collection;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfCollection_1:Landroidx/room/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/d<",
            "Lcom/android/calendar/syncer/model/Collection;",
            ">;"
        }
    .end annotation
.end field

.field private final __updateAdapterOfCollection:Landroidx/room/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/c<",
            "Lcom/android/calendar/syncer/model/Collection;",
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
    iput-object v0, p0, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__converters:Lcom/android/calendar/syncer/model/Converters;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 12
    .line 13
    new-instance v0, Lcom/android/calendar/syncer/model/CollectionDao_Impl$1;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Lcom/android/calendar/syncer/model/CollectionDao_Impl$1;-><init>(Lcom/android/calendar/syncer/model/CollectionDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__insertionAdapterOfCollection:Landroidx/room/d;

    .line 19
    .line 20
    new-instance v0, Lcom/android/calendar/syncer/model/CollectionDao_Impl$2;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/android/calendar/syncer/model/CollectionDao_Impl$2;-><init>(Lcom/android/calendar/syncer/model/CollectionDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__insertionAdapterOfCollection_1:Landroidx/room/d;

    .line 26
    .line 27
    new-instance v0, Lcom/android/calendar/syncer/model/CollectionDao_Impl$3;

    .line 28
    .line 29
    invoke-direct {v0, p0, p1}, Lcom/android/calendar/syncer/model/CollectionDao_Impl$3;-><init>(Lcom/android/calendar/syncer/model/CollectionDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__deletionAdapterOfCollection:Landroidx/room/c;

    .line 33
    .line 34
    new-instance v0, Lcom/android/calendar/syncer/model/CollectionDao_Impl$4;

    .line 35
    .line 36
    invoke-direct {v0, p0, p1}, Lcom/android/calendar/syncer/model/CollectionDao_Impl$4;-><init>(Lcom/android/calendar/syncer/model/CollectionDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__updateAdapterOfCollection:Landroidx/room/c;

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

.method static synthetic access$000(Lcom/android/calendar/syncer/model/CollectionDao_Impl;)Lcom/android/calendar/syncer/model/Converters;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__converters:Lcom/android/calendar/syncer/model/Converters;

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

.method static synthetic access$100(Lcom/android/calendar/syncer/model/CollectionDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__db:Landroidx/room/RoomDatabase;

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
.method public delete(Lcom/android/calendar/syncer/model/Collection;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 3
    iget-object v0, p0, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__deletionAdapterOfCollection:Landroidx/room/c;

    invoke-virtual {v0, p1}, Landroidx/room/c;->handle(Ljava/lang/Object;)I

    .line 5
    iget-object p1, p0, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p1, p0, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 7
    throw p1
.end method

.method public bridge synthetic delete(Lcom/android/calendar/syncer/model/IdEntity;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/calendar/syncer/model/Collection;

    invoke-virtual {p0, p1}, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->delete(Lcom/android/calendar/syncer/model/Collection;)V

    return-void
.end method

.method public get(J)Lcom/android/calendar/syncer/model/Collection;
    .locals 35

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "SELECT * FROM collection WHERE id=?"

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
    iget-object v0, v1, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 18
    .line 19
    .line 20
    iget-object v0, v1, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__db:Landroidx/room/RoomDatabase;

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
    move-result-object v6

    .line 28
    :try_start_0
    const-string v0, "id"

    .line 29
    .line 30
    invoke-static {v6, v0}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const-string v7, "serviceId"

    .line 35
    .line 36
    invoke-static {v6, v7}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    const-string v8, "type"

    .line 41
    .line 42
    invoke-static {v6, v8}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    const-string v9, "url"

    .line 47
    .line 48
    invoke-static {v6, v9}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    const-string v10, "privWriteContent"

    .line 53
    .line 54
    invoke-static {v6, v10}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v10

    .line 58
    const-string v11, "privUnbind"

    .line 59
    .line 60
    invoke-static {v6, v11}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v11

    .line 64
    const-string v12, "forceReadOnly"

    .line 65
    .line 66
    invoke-static {v6, v12}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v12

    .line 70
    const-string v13, "displayName"

    .line 71
    .line 72
    invoke-static {v6, v13}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v13

    .line 76
    const-string v14, "description"

    .line 77
    .line 78
    invoke-static {v6, v14}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v14

    .line 82
    const-string v15, "color"

    .line 83
    .line 84
    invoke-static {v6, v15}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v15

    .line 88
    const-string v2, "timezone"

    .line 89
    .line 90
    invoke-static {v6, v2}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    const-string v4, "supportsVEVENT"

    .line 95
    .line 96
    invoke-static {v6, v4}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    const-string v5, "source"

    .line 101
    .line 102
    invoke-static {v6, v5}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 106
    move-object/from16 v16, v3

    .line 107
    .line 108
    :try_start_1
    const-string v3, "sync"

    .line 109
    .line 110
    invoke-static {v6, v3}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 115
    .line 116
    .line 117
    move-result v17

    .line 118
    if-eqz v17, :cond_8

    .line 119
    .line 120
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 121
    .line 122
    .line 123
    move-result-wide v19

    .line 124
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    .line 125
    .line 126
    .line 127
    move-result-wide v21

    .line 128
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v23

    .line 132
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    iget-object v7, v1, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__converters:Lcom/android/calendar/syncer/model/Converters;

    .line 137
    .line 138
    invoke-virtual {v7, v0}, Lcom/android/calendar/syncer/model/Converters;->stringToHttpUrl(Ljava/lang/String;)Lokhttp3/t;

    .line 139
    .line 140
    .line 141
    move-result-object v24

    .line 142
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_0

    .line 147
    .line 148
    const/16 v25, 0x1

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_0
    const/16 v25, 0x0

    .line 152
    .line 153
    :goto_0
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_1

    .line 158
    .line 159
    const/16 v26, 0x1

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_1
    const/16 v26, 0x0

    .line 163
    .line 164
    :goto_1
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-eqz v0, :cond_2

    .line 169
    .line 170
    const/16 v27, 0x1

    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_2
    const/16 v27, 0x0

    .line 174
    .line 175
    :goto_2
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v28

    .line 179
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v29

    .line 183
    invoke-interface {v6, v15}, Landroid/database/Cursor;->isNull(I)Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-eqz v0, :cond_3

    .line 188
    .line 189
    const/16 v30, 0x0

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_3
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    move-object/from16 v30, v0

    .line 201
    .line 202
    :goto_3
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v31

    .line 206
    invoke-interface {v6, v4}, Landroid/database/Cursor;->isNull(I)Z

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    if-eqz v0, :cond_4

    .line 211
    .line 212
    const/4 v0, 0x0

    .line 213
    goto :goto_4

    .line 214
    :cond_4
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    :goto_4
    if-nez v0, :cond_5

    .line 223
    .line 224
    const/16 v32, 0x0

    .line 225
    .line 226
    goto :goto_6

    .line 227
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-eqz v0, :cond_6

    .line 232
    .line 233
    const/4 v0, 0x1

    .line 234
    goto :goto_5

    .line 235
    :cond_6
    const/4 v0, 0x0

    .line 236
    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    move-object/from16 v32, v0

    .line 241
    .line 242
    :goto_6
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    iget-object v2, v1, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__converters:Lcom/android/calendar/syncer/model/Converters;

    .line 247
    .line 248
    invoke-virtual {v2, v0}, Lcom/android/calendar/syncer/model/Converters;->stringToHttpUrl(Ljava/lang/String;)Lokhttp3/t;

    .line 249
    .line 250
    .line 251
    move-result-object v33

    .line 252
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    if-eqz v0, :cond_7

    .line 257
    .line 258
    const/16 v34, 0x1

    .line 259
    .line 260
    goto :goto_7

    .line 261
    :cond_7
    const/16 v34, 0x0

    .line 262
    .line 263
    :goto_7
    new-instance v5, Lcom/android/calendar/syncer/model/Collection;

    .line 264
    .line 265
    move-object/from16 v18, v5

    .line 266
    .line 267
    invoke-direct/range {v18 .. v34}, Lcom/android/calendar/syncer/model/Collection;-><init>(JJLjava/lang/String;Lokhttp3/t;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Lokhttp3/t;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    .line 269
    .line 270
    goto :goto_8

    .line 271
    :cond_8
    const/4 v5, 0x0

    .line 272
    :goto_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 273
    .line 274
    .line 275
    invoke-virtual/range {v16 .. v16}, Landroidx/room/m;->z()V

    .line 276
    .line 277
    .line 278
    return-object v5

    .line 279
    :catchall_0
    move-exception v0

    .line 280
    goto :goto_9

    .line 281
    :catchall_1
    move-exception v0

    .line 282
    move-object/from16 v16, v3

    .line 283
    .line 284
    :goto_9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 285
    .line 286
    .line 287
    invoke-virtual/range {v16 .. v16}, Landroidx/room/m;->z()V

    .line 288
    .line 289
    .line 290
    throw v0
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

.method public getByService(J)Ljava/util/List;
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/android/calendar/syncer/model/Collection;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "SELECT * FROM collection WHERE serviceId=?"

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
    iget-object v0, v1, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 18
    .line 19
    .line 20
    iget-object v0, v1, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__db:Landroidx/room/RoomDatabase;

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
    move-result-object v6

    .line 28
    :try_start_0
    const-string v0, "id"

    .line 29
    .line 30
    invoke-static {v6, v0}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const-string v7, "serviceId"

    .line 35
    .line 36
    invoke-static {v6, v7}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    const-string v8, "type"

    .line 41
    .line 42
    invoke-static {v6, v8}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    const-string v9, "url"

    .line 47
    .line 48
    invoke-static {v6, v9}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    const-string v10, "privWriteContent"

    .line 53
    .line 54
    invoke-static {v6, v10}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v10

    .line 58
    const-string v11, "privUnbind"

    .line 59
    .line 60
    invoke-static {v6, v11}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v11

    .line 64
    const-string v12, "forceReadOnly"

    .line 65
    .line 66
    invoke-static {v6, v12}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v12

    .line 70
    const-string v13, "displayName"

    .line 71
    .line 72
    invoke-static {v6, v13}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v13

    .line 76
    const-string v14, "description"

    .line 77
    .line 78
    invoke-static {v6, v14}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v14

    .line 82
    const-string v15, "color"

    .line 83
    .line 84
    invoke-static {v6, v15}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v15

    .line 88
    const-string v2, "timezone"

    .line 89
    .line 90
    invoke-static {v6, v2}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    const-string v4, "supportsVEVENT"

    .line 95
    .line 96
    invoke-static {v6, v4}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    const-string v5, "source"

    .line 101
    .line 102
    invoke-static {v6, v5}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 106
    move-object/from16 v16, v3

    .line 107
    .line 108
    :try_start_1
    const-string v3, "sync"

    .line 109
    .line 110
    invoke-static {v6, v3}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    move/from16 v17, v3

    .line 115
    .line 116
    new-instance v3, Ljava/util/ArrayList;

    .line 117
    .line 118
    move/from16 v18, v5

    .line 119
    .line 120
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 125
    .line 126
    .line 127
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    if-eqz v5, :cond_8

    .line 132
    .line 133
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 134
    .line 135
    .line 136
    move-result-wide v20

    .line 137
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    .line 138
    .line 139
    .line 140
    move-result-wide v22

    .line 141
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v24

    .line 145
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    move/from16 v36, v0

    .line 150
    .line 151
    iget-object v0, v1, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__converters:Lcom/android/calendar/syncer/model/Converters;

    .line 152
    .line 153
    invoke-virtual {v0, v5}, Lcom/android/calendar/syncer/model/Converters;->stringToHttpUrl(Ljava/lang/String;)Lokhttp3/t;

    .line 154
    .line 155
    .line 156
    move-result-object v25

    .line 157
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_0

    .line 162
    .line 163
    const/16 v26, 0x1

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_0
    const/16 v26, 0x0

    .line 167
    .line 168
    :goto_1
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-eqz v0, :cond_1

    .line 173
    .line 174
    const/16 v27, 0x1

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_1
    const/16 v27, 0x0

    .line 178
    .line 179
    :goto_2
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-eqz v0, :cond_2

    .line 184
    .line 185
    const/16 v28, 0x1

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_2
    const/16 v28, 0x0

    .line 189
    .line 190
    :goto_3
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v29

    .line 194
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v30

    .line 198
    invoke-interface {v6, v15}, Landroid/database/Cursor;->isNull(I)Z

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-eqz v0, :cond_3

    .line 203
    .line 204
    const/16 v31, 0x0

    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_3
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    move-object/from16 v31, v0

    .line 216
    .line 217
    :goto_4
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v32

    .line 221
    invoke-interface {v6, v4}, Landroid/database/Cursor;->isNull(I)Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-eqz v0, :cond_4

    .line 226
    .line 227
    const/4 v0, 0x0

    .line 228
    goto :goto_5

    .line 229
    :cond_4
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    :goto_5
    if-nez v0, :cond_5

    .line 238
    .line 239
    move/from16 v0, v18

    .line 240
    .line 241
    const/16 v33, 0x0

    .line 242
    .line 243
    goto :goto_7

    .line 244
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    if-eqz v0, :cond_6

    .line 249
    .line 250
    const/4 v0, 0x1

    .line 251
    goto :goto_6

    .line 252
    :cond_6
    const/4 v0, 0x0

    .line 253
    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    move-object/from16 v33, v0

    .line 258
    .line 259
    move/from16 v0, v18

    .line 260
    .line 261
    :goto_7
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v5

    .line 265
    move/from16 v18, v0

    .line 266
    .line 267
    iget-object v0, v1, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__converters:Lcom/android/calendar/syncer/model/Converters;

    .line 268
    .line 269
    invoke-virtual {v0, v5}, Lcom/android/calendar/syncer/model/Converters;->stringToHttpUrl(Ljava/lang/String;)Lokhttp3/t;

    .line 270
    .line 271
    .line 272
    move-result-object v34

    .line 273
    move/from16 v0, v17

    .line 274
    .line 275
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 276
    .line 277
    .line 278
    move-result v5

    .line 279
    if-eqz v5, :cond_7

    .line 280
    .line 281
    const/16 v35, 0x1

    .line 282
    .line 283
    goto :goto_8

    .line 284
    :cond_7
    const/16 v35, 0x0

    .line 285
    .line 286
    :goto_8
    new-instance v5, Lcom/android/calendar/syncer/model/Collection;

    .line 287
    .line 288
    move-object/from16 v19, v5

    .line 289
    .line 290
    invoke-direct/range {v19 .. v35}, Lcom/android/calendar/syncer/model/Collection;-><init>(JJLjava/lang/String;Lokhttp3/t;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Lokhttp3/t;Z)V

    .line 291
    .line 292
    .line 293
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    .line 295
    .line 296
    move/from16 v17, v0

    .line 297
    .line 298
    move/from16 v0, v36

    .line 299
    .line 300
    goto/16 :goto_0

    .line 301
    .line 302
    :cond_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 303
    .line 304
    .line 305
    invoke-virtual/range {v16 .. v16}, Landroidx/room/m;->z()V

    .line 306
    .line 307
    .line 308
    return-object v3

    .line 309
    :catchall_0
    move-exception v0

    .line 310
    goto :goto_9

    .line 311
    :catchall_1
    move-exception v0

    .line 312
    move-object/from16 v16, v3

    .line 313
    .line 314
    :goto_9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 315
    .line 316
    .line 317
    invoke-virtual/range {v16 .. v16}, Landroidx/room/m;->z()V

    .line 318
    .line 319
    .line 320
    throw v0
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

.method public getByServiceAndSync(J)Ljava/util/List;
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/android/calendar/syncer/model/Collection;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "SELECT * FROM collection WHERE serviceId=? ORDER BY displayName, url"

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
    iget-object v0, v1, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 18
    .line 19
    .line 20
    iget-object v0, v1, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__db:Landroidx/room/RoomDatabase;

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
    move-result-object v6

    .line 28
    :try_start_0
    const-string v0, "id"

    .line 29
    .line 30
    invoke-static {v6, v0}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const-string v7, "serviceId"

    .line 35
    .line 36
    invoke-static {v6, v7}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    const-string v8, "type"

    .line 41
    .line 42
    invoke-static {v6, v8}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    const-string v9, "url"

    .line 47
    .line 48
    invoke-static {v6, v9}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    const-string v10, "privWriteContent"

    .line 53
    .line 54
    invoke-static {v6, v10}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v10

    .line 58
    const-string v11, "privUnbind"

    .line 59
    .line 60
    invoke-static {v6, v11}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v11

    .line 64
    const-string v12, "forceReadOnly"

    .line 65
    .line 66
    invoke-static {v6, v12}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v12

    .line 70
    const-string v13, "displayName"

    .line 71
    .line 72
    invoke-static {v6, v13}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v13

    .line 76
    const-string v14, "description"

    .line 77
    .line 78
    invoke-static {v6, v14}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v14

    .line 82
    const-string v15, "color"

    .line 83
    .line 84
    invoke-static {v6, v15}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v15

    .line 88
    const-string v2, "timezone"

    .line 89
    .line 90
    invoke-static {v6, v2}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    const-string v4, "supportsVEVENT"

    .line 95
    .line 96
    invoke-static {v6, v4}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    const-string v5, "source"

    .line 101
    .line 102
    invoke-static {v6, v5}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 106
    move-object/from16 v16, v3

    .line 107
    .line 108
    :try_start_1
    const-string v3, "sync"

    .line 109
    .line 110
    invoke-static {v6, v3}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    move/from16 v17, v3

    .line 115
    .line 116
    new-instance v3, Ljava/util/ArrayList;

    .line 117
    .line 118
    move/from16 v18, v5

    .line 119
    .line 120
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 125
    .line 126
    .line 127
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    if-eqz v5, :cond_8

    .line 132
    .line 133
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 134
    .line 135
    .line 136
    move-result-wide v20

    .line 137
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    .line 138
    .line 139
    .line 140
    move-result-wide v22

    .line 141
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v24

    .line 145
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    move/from16 v36, v0

    .line 150
    .line 151
    iget-object v0, v1, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__converters:Lcom/android/calendar/syncer/model/Converters;

    .line 152
    .line 153
    invoke-virtual {v0, v5}, Lcom/android/calendar/syncer/model/Converters;->stringToHttpUrl(Ljava/lang/String;)Lokhttp3/t;

    .line 154
    .line 155
    .line 156
    move-result-object v25

    .line 157
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_0

    .line 162
    .line 163
    const/16 v26, 0x1

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_0
    const/16 v26, 0x0

    .line 167
    .line 168
    :goto_1
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-eqz v0, :cond_1

    .line 173
    .line 174
    const/16 v27, 0x1

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_1
    const/16 v27, 0x0

    .line 178
    .line 179
    :goto_2
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-eqz v0, :cond_2

    .line 184
    .line 185
    const/16 v28, 0x1

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_2
    const/16 v28, 0x0

    .line 189
    .line 190
    :goto_3
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v29

    .line 194
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v30

    .line 198
    invoke-interface {v6, v15}, Landroid/database/Cursor;->isNull(I)Z

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-eqz v0, :cond_3

    .line 203
    .line 204
    const/16 v31, 0x0

    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_3
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    move-object/from16 v31, v0

    .line 216
    .line 217
    :goto_4
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v32

    .line 221
    invoke-interface {v6, v4}, Landroid/database/Cursor;->isNull(I)Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-eqz v0, :cond_4

    .line 226
    .line 227
    const/4 v0, 0x0

    .line 228
    goto :goto_5

    .line 229
    :cond_4
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    :goto_5
    if-nez v0, :cond_5

    .line 238
    .line 239
    move/from16 v0, v18

    .line 240
    .line 241
    const/16 v33, 0x0

    .line 242
    .line 243
    goto :goto_7

    .line 244
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    if-eqz v0, :cond_6

    .line 249
    .line 250
    const/4 v0, 0x1

    .line 251
    goto :goto_6

    .line 252
    :cond_6
    const/4 v0, 0x0

    .line 253
    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    move-object/from16 v33, v0

    .line 258
    .line 259
    move/from16 v0, v18

    .line 260
    .line 261
    :goto_7
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v5

    .line 265
    move/from16 v18, v0

    .line 266
    .line 267
    iget-object v0, v1, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__converters:Lcom/android/calendar/syncer/model/Converters;

    .line 268
    .line 269
    invoke-virtual {v0, v5}, Lcom/android/calendar/syncer/model/Converters;->stringToHttpUrl(Ljava/lang/String;)Lokhttp3/t;

    .line 270
    .line 271
    .line 272
    move-result-object v34

    .line 273
    move/from16 v0, v17

    .line 274
    .line 275
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 276
    .line 277
    .line 278
    move-result v5

    .line 279
    if-eqz v5, :cond_7

    .line 280
    .line 281
    const/16 v35, 0x1

    .line 282
    .line 283
    goto :goto_8

    .line 284
    :cond_7
    const/16 v35, 0x0

    .line 285
    .line 286
    :goto_8
    new-instance v5, Lcom/android/calendar/syncer/model/Collection;

    .line 287
    .line 288
    move-object/from16 v19, v5

    .line 289
    .line 290
    invoke-direct/range {v19 .. v35}, Lcom/android/calendar/syncer/model/Collection;-><init>(JJLjava/lang/String;Lokhttp3/t;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Lokhttp3/t;Z)V

    .line 291
    .line 292
    .line 293
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    .line 295
    .line 296
    move/from16 v17, v0

    .line 297
    .line 298
    move/from16 v0, v36

    .line 299
    .line 300
    goto/16 :goto_0

    .line 301
    .line 302
    :cond_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 303
    .line 304
    .line 305
    invoke-virtual/range {v16 .. v16}, Landroidx/room/m;->z()V

    .line 306
    .line 307
    .line 308
    return-object v3

    .line 309
    :catchall_0
    move-exception v0

    .line 310
    goto :goto_9

    .line 311
    :catchall_1
    move-exception v0

    .line 312
    move-object/from16 v16, v3

    .line 313
    .line 314
    :goto_9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 315
    .line 316
    .line 317
    invoke-virtual/range {v16 .. v16}, Landroidx/room/m;->z()V

    .line 318
    .line 319
    .line 320
    throw v0
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

.method public getByServiceAndType(JLjava/lang/String;)Ljava/util/List;
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/calendar/syncer/model/Collection;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p3

    .line 4
    .line 5
    const-string v2, "SELECT * FROM collection WHERE serviceId=? AND type=?"

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    invoke-static {v2, v3}, Landroidx/room/m;->j(Ljava/lang/String;I)Landroidx/room/m;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v4, 0x1

    .line 13
    move-wide/from16 v5, p1

    .line 14
    .line 15
    invoke-virtual {v2, v4, v5, v6}, Landroidx/room/m;->B(IJ)V

    .line 16
    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Landroidx/room/m;->X(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v2, v3, v0}, Landroidx/room/m;->l(ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object v0, v1, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 30
    .line 31
    .line 32
    iget-object v0, v1, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    const/4 v5, 0x0

    .line 36
    invoke-static {v0, v2, v3, v5}, Lk0/c;->b(Landroidx/room/RoomDatabase;Ll0/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    :try_start_0
    const-string v0, "id"

    .line 41
    .line 42
    invoke-static {v6, v0}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const-string v7, "serviceId"

    .line 47
    .line 48
    invoke-static {v6, v7}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    const-string v8, "type"

    .line 53
    .line 54
    invoke-static {v6, v8}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    const-string v9, "url"

    .line 59
    .line 60
    invoke-static {v6, v9}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v9

    .line 64
    const-string v10, "privWriteContent"

    .line 65
    .line 66
    invoke-static {v6, v10}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v10

    .line 70
    const-string v11, "privUnbind"

    .line 71
    .line 72
    invoke-static {v6, v11}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v11

    .line 76
    const-string v12, "forceReadOnly"

    .line 77
    .line 78
    invoke-static {v6, v12}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v12

    .line 82
    const-string v13, "displayName"

    .line 83
    .line 84
    invoke-static {v6, v13}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v13

    .line 88
    const-string v14, "description"

    .line 89
    .line 90
    invoke-static {v6, v14}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result v14

    .line 94
    const-string v15, "color"

    .line 95
    .line 96
    invoke-static {v6, v15}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v15

    .line 100
    const-string v3, "timezone"

    .line 101
    .line 102
    invoke-static {v6, v3}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    const-string v4, "supportsVEVENT"

    .line 107
    .line 108
    invoke-static {v6, v4}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    const-string v5, "source"

    .line 113
    .line 114
    invoke-static {v6, v5}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 118
    move-object/from16 v16, v2

    .line 119
    .line 120
    :try_start_1
    const-string v2, "sync"

    .line 121
    .line 122
    invoke-static {v6, v2}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    move/from16 p3, v2

    .line 127
    .line 128
    new-instance v2, Ljava/util/ArrayList;

    .line 129
    .line 130
    move/from16 v17, v5

    .line 131
    .line 132
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 137
    .line 138
    .line 139
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    if-eqz v5, :cond_9

    .line 144
    .line 145
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 146
    .line 147
    .line 148
    move-result-wide v19

    .line 149
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    .line 150
    .line 151
    .line 152
    move-result-wide v21

    .line 153
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v23

    .line 157
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    move/from16 v35, v0

    .line 162
    .line 163
    iget-object v0, v1, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__converters:Lcom/android/calendar/syncer/model/Converters;

    .line 164
    .line 165
    invoke-virtual {v0, v5}, Lcom/android/calendar/syncer/model/Converters;->stringToHttpUrl(Ljava/lang/String;)Lokhttp3/t;

    .line 166
    .line 167
    .line 168
    move-result-object v24

    .line 169
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-eqz v0, :cond_1

    .line 174
    .line 175
    const/16 v25, 0x1

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_1
    const/16 v25, 0x0

    .line 179
    .line 180
    :goto_2
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-eqz v0, :cond_2

    .line 185
    .line 186
    const/16 v26, 0x1

    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_2
    const/16 v26, 0x0

    .line 190
    .line 191
    :goto_3
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    if-eqz v0, :cond_3

    .line 196
    .line 197
    const/16 v27, 0x1

    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_3
    const/16 v27, 0x0

    .line 201
    .line 202
    :goto_4
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v28

    .line 206
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v29

    .line 210
    invoke-interface {v6, v15}, Landroid/database/Cursor;->isNull(I)Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-eqz v0, :cond_4

    .line 215
    .line 216
    const/16 v30, 0x0

    .line 217
    .line 218
    goto :goto_5

    .line 219
    :cond_4
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    move-object/from16 v30, v0

    .line 228
    .line 229
    :goto_5
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v31

    .line 233
    invoke-interface {v6, v4}, Landroid/database/Cursor;->isNull(I)Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-eqz v0, :cond_5

    .line 238
    .line 239
    const/4 v0, 0x0

    .line 240
    goto :goto_6

    .line 241
    :cond_5
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    :goto_6
    if-nez v0, :cond_6

    .line 250
    .line 251
    move/from16 v0, v17

    .line 252
    .line 253
    const/16 v32, 0x0

    .line 254
    .line 255
    goto :goto_8

    .line 256
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    if-eqz v0, :cond_7

    .line 261
    .line 262
    const/4 v0, 0x1

    .line 263
    goto :goto_7

    .line 264
    :cond_7
    const/4 v0, 0x0

    .line 265
    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    move-object/from16 v32, v0

    .line 270
    .line 271
    move/from16 v0, v17

    .line 272
    .line 273
    :goto_8
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v5

    .line 277
    move/from16 v17, v0

    .line 278
    .line 279
    iget-object v0, v1, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__converters:Lcom/android/calendar/syncer/model/Converters;

    .line 280
    .line 281
    invoke-virtual {v0, v5}, Lcom/android/calendar/syncer/model/Converters;->stringToHttpUrl(Ljava/lang/String;)Lokhttp3/t;

    .line 282
    .line 283
    .line 284
    move-result-object v33

    .line 285
    move/from16 v0, p3

    .line 286
    .line 287
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 288
    .line 289
    .line 290
    move-result v5

    .line 291
    if-eqz v5, :cond_8

    .line 292
    .line 293
    const/16 v34, 0x1

    .line 294
    .line 295
    goto :goto_9

    .line 296
    :cond_8
    const/16 v34, 0x0

    .line 297
    .line 298
    :goto_9
    new-instance v5, Lcom/android/calendar/syncer/model/Collection;

    .line 299
    .line 300
    move-object/from16 v18, v5

    .line 301
    .line 302
    invoke-direct/range {v18 .. v34}, Lcom/android/calendar/syncer/model/Collection;-><init>(JJLjava/lang/String;Lokhttp3/t;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Lokhttp3/t;Z)V

    .line 303
    .line 304
    .line 305
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    .line 307
    .line 308
    move/from16 p3, v0

    .line 309
    .line 310
    move/from16 v0, v35

    .line 311
    .line 312
    goto/16 :goto_1

    .line 313
    .line 314
    :cond_9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 315
    .line 316
    .line 317
    invoke-virtual/range {v16 .. v16}, Landroidx/room/m;->z()V

    .line 318
    .line 319
    .line 320
    return-object v2

    .line 321
    :catchall_0
    move-exception v0

    .line 322
    goto :goto_a

    .line 323
    :catchall_1
    move-exception v0

    .line 324
    move-object/from16 v16, v2

    .line 325
    .line 326
    :goto_a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 327
    .line 328
    .line 329
    invoke-virtual/range {v16 .. v16}, Landroidx/room/m;->z()V

    .line 330
    .line 331
    .line 332
    throw v0
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
    .line 557
    .line 558
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
.end method

.method public getSyncCalendars(J)Ljava/util/List;
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/android/calendar/syncer/model/Collection;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "SELECT * FROM collection WHERE serviceId=? AND supportsVEVENT ORDER BY displayName, url"

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
    iget-object v0, v1, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 18
    .line 19
    .line 20
    iget-object v0, v1, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__db:Landroidx/room/RoomDatabase;

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
    move-result-object v6

    .line 28
    :try_start_0
    const-string v0, "id"

    .line 29
    .line 30
    invoke-static {v6, v0}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const-string v7, "serviceId"

    .line 35
    .line 36
    invoke-static {v6, v7}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    const-string v8, "type"

    .line 41
    .line 42
    invoke-static {v6, v8}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    const-string v9, "url"

    .line 47
    .line 48
    invoke-static {v6, v9}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    const-string v10, "privWriteContent"

    .line 53
    .line 54
    invoke-static {v6, v10}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v10

    .line 58
    const-string v11, "privUnbind"

    .line 59
    .line 60
    invoke-static {v6, v11}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v11

    .line 64
    const-string v12, "forceReadOnly"

    .line 65
    .line 66
    invoke-static {v6, v12}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v12

    .line 70
    const-string v13, "displayName"

    .line 71
    .line 72
    invoke-static {v6, v13}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v13

    .line 76
    const-string v14, "description"

    .line 77
    .line 78
    invoke-static {v6, v14}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v14

    .line 82
    const-string v15, "color"

    .line 83
    .line 84
    invoke-static {v6, v15}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v15

    .line 88
    const-string v2, "timezone"

    .line 89
    .line 90
    invoke-static {v6, v2}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    const-string v4, "supportsVEVENT"

    .line 95
    .line 96
    invoke-static {v6, v4}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    const-string v5, "source"

    .line 101
    .line 102
    invoke-static {v6, v5}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 106
    move-object/from16 v16, v3

    .line 107
    .line 108
    :try_start_1
    const-string v3, "sync"

    .line 109
    .line 110
    invoke-static {v6, v3}, Lk0/b;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    move/from16 v17, v3

    .line 115
    .line 116
    new-instance v3, Ljava/util/ArrayList;

    .line 117
    .line 118
    move/from16 v18, v5

    .line 119
    .line 120
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 125
    .line 126
    .line 127
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    if-eqz v5, :cond_8

    .line 132
    .line 133
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 134
    .line 135
    .line 136
    move-result-wide v20

    .line 137
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    .line 138
    .line 139
    .line 140
    move-result-wide v22

    .line 141
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v24

    .line 145
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    move/from16 v36, v0

    .line 150
    .line 151
    iget-object v0, v1, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__converters:Lcom/android/calendar/syncer/model/Converters;

    .line 152
    .line 153
    invoke-virtual {v0, v5}, Lcom/android/calendar/syncer/model/Converters;->stringToHttpUrl(Ljava/lang/String;)Lokhttp3/t;

    .line 154
    .line 155
    .line 156
    move-result-object v25

    .line 157
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_0

    .line 162
    .line 163
    const/16 v26, 0x1

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_0
    const/16 v26, 0x0

    .line 167
    .line 168
    :goto_1
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-eqz v0, :cond_1

    .line 173
    .line 174
    const/16 v27, 0x1

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_1
    const/16 v27, 0x0

    .line 178
    .line 179
    :goto_2
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-eqz v0, :cond_2

    .line 184
    .line 185
    const/16 v28, 0x1

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_2
    const/16 v28, 0x0

    .line 189
    .line 190
    :goto_3
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v29

    .line 194
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v30

    .line 198
    invoke-interface {v6, v15}, Landroid/database/Cursor;->isNull(I)Z

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-eqz v0, :cond_3

    .line 203
    .line 204
    const/16 v31, 0x0

    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_3
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    move-object/from16 v31, v0

    .line 216
    .line 217
    :goto_4
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v32

    .line 221
    invoke-interface {v6, v4}, Landroid/database/Cursor;->isNull(I)Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-eqz v0, :cond_4

    .line 226
    .line 227
    const/4 v0, 0x0

    .line 228
    goto :goto_5

    .line 229
    :cond_4
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    :goto_5
    if-nez v0, :cond_5

    .line 238
    .line 239
    move/from16 v0, v18

    .line 240
    .line 241
    const/16 v33, 0x0

    .line 242
    .line 243
    goto :goto_7

    .line 244
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    if-eqz v0, :cond_6

    .line 249
    .line 250
    const/4 v0, 0x1

    .line 251
    goto :goto_6

    .line 252
    :cond_6
    const/4 v0, 0x0

    .line 253
    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    move-object/from16 v33, v0

    .line 258
    .line 259
    move/from16 v0, v18

    .line 260
    .line 261
    :goto_7
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v5

    .line 265
    move/from16 v18, v0

    .line 266
    .line 267
    iget-object v0, v1, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__converters:Lcom/android/calendar/syncer/model/Converters;

    .line 268
    .line 269
    invoke-virtual {v0, v5}, Lcom/android/calendar/syncer/model/Converters;->stringToHttpUrl(Ljava/lang/String;)Lokhttp3/t;

    .line 270
    .line 271
    .line 272
    move-result-object v34

    .line 273
    move/from16 v0, v17

    .line 274
    .line 275
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 276
    .line 277
    .line 278
    move-result v5

    .line 279
    if-eqz v5, :cond_7

    .line 280
    .line 281
    const/16 v35, 0x1

    .line 282
    .line 283
    goto :goto_8

    .line 284
    :cond_7
    const/16 v35, 0x0

    .line 285
    .line 286
    :goto_8
    new-instance v5, Lcom/android/calendar/syncer/model/Collection;

    .line 287
    .line 288
    move-object/from16 v19, v5

    .line 289
    .line 290
    invoke-direct/range {v19 .. v35}, Lcom/android/calendar/syncer/model/Collection;-><init>(JJLjava/lang/String;Lokhttp3/t;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Lokhttp3/t;Z)V

    .line 291
    .line 292
    .line 293
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    .line 295
    .line 296
    move/from16 v17, v0

    .line 297
    .line 298
    move/from16 v0, v36

    .line 299
    .line 300
    goto/16 :goto_0

    .line 301
    .line 302
    :cond_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 303
    .line 304
    .line 305
    invoke-virtual/range {v16 .. v16}, Landroidx/room/m;->z()V

    .line 306
    .line 307
    .line 308
    return-object v3

    .line 309
    :catchall_0
    move-exception v0

    .line 310
    goto :goto_9

    .line 311
    :catchall_1
    move-exception v0

    .line 312
    move-object/from16 v16, v3

    .line 313
    .line 314
    :goto_9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 315
    .line 316
    .line 317
    invoke-virtual/range {v16 .. v16}, Landroidx/room/m;->z()V

    .line 318
    .line 319
    .line 320
    throw v0
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

.method public insert(Lcom/android/calendar/syncer/model/Collection;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 8
    iget-object v0, p0, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__insertionAdapterOfCollection:Landroidx/room/d;

    invoke-virtual {v0, p1}, Landroidx/room/d;->insert(Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object p1, p0, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 12
    throw p1
.end method

.method public insert(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/calendar/syncer/model/Collection;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__insertionAdapterOfCollection:Landroidx/room/d;

    invoke-virtual {v0, p1}, Landroidx/room/d;->insert(Ljava/lang/Iterable;)V

    .line 4
    iget-object p1, p0, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 6
    throw p1
.end method

.method public insertOrReplace(Lcom/android/calendar/syncer/model/Collection;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__insertionAdapterOfCollection_1:Landroidx/room/d;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroidx/room/d;->insert(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__db:Landroidx/room/RoomDatabase;

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
    iget-object v0, p0, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__db:Landroidx/room/RoomDatabase;

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

.method public observeHasSyncByService(J)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "SELECT COUNT(*) FROM collection WHERE serviceId=?"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Landroidx/room/m;->j(Ljava/lang/String;I)Landroidx/room/m;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, v1, p1, p2}, Landroidx/room/m;->B(IJ)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/h;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string p2, "collection"

    .line 18
    .line 19
    filled-new-array {p2}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    new-instance v1, Lcom/android/calendar/syncer/model/CollectionDao_Impl$6;

    .line 24
    .line 25
    invoke-direct {v1, p0, v0}, Lcom/android/calendar/syncer/model/CollectionDao_Impl$6;-><init>(Lcom/android/calendar/syncer/model/CollectionDao_Impl;Landroidx/room/m;)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-virtual {p1, p2, v0, v1}, Landroidx/room/h;->d([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1
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

.method public pageByServiceAndType(JLjava/lang/String;)Landroidx/paging/b$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Landroidx/paging/b$b<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/syncer/model/Collection;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "SELECT * FROM collection WHERE serviceId=? AND type=? ORDER BY displayName, url"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroidx/room/m;->j(Ljava/lang/String;I)Landroidx/room/m;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {v0, v2, p1, p2}, Landroidx/room/m;->B(IJ)V

    .line 10
    .line 11
    .line 12
    if-nez p3, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/room/m;->X(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0, v1, p3}, Landroidx/room/m;->l(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    new-instance p1, Lcom/android/calendar/syncer/model/CollectionDao_Impl$5;

    .line 22
    .line 23
    invoke-direct {p1, p0, v0}, Lcom/android/calendar/syncer/model/CollectionDao_Impl$5;-><init>(Lcom/android/calendar/syncer/model/CollectionDao_Impl;Landroidx/room/m;)V

    .line 24
    .line 25
    .line 26
    return-object p1
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

.method public update(Lcom/android/calendar/syncer/model/Collection;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 3
    iget-object v0, p0, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__updateAdapterOfCollection:Landroidx/room/c;

    invoke-virtual {v0, p1}, Landroidx/room/c;->handle(Ljava/lang/Object;)I

    .line 5
    iget-object p1, p0, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p1, p0, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 7
    throw p1
.end method

.method public bridge synthetic update(Lcom/android/calendar/syncer/model/IdEntity;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/calendar/syncer/model/Collection;

    invoke-virtual {p0, p1}, Lcom/android/calendar/syncer/model/CollectionDao_Impl;->update(Lcom/android/calendar/syncer/model/Collection;)V

    return-void
.end method

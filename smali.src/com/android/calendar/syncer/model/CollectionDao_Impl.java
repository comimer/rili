package com.android.calendar.syncer.model;

import android.database.Cursor;
import androidx.lifecycle.LiveData;
import androidx.paging.b.b;
import androidx.room.RoomDatabase;
import androidx.room.h;
import androidx.room.m;
import androidx.room.paging.a;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import k0.b;
import l0.e;
import l0.f;
import okhttp3.t;

public final class CollectionDao_Impl
  implements CollectionDao
{
  private final Converters __converters = new Converters();
  private final RoomDatabase __db;
  private final androidx.room.c<Collection> __deletionAdapterOfCollection;
  private final androidx.room.d<Collection> __insertionAdapterOfCollection;
  private final androidx.room.d<Collection> __insertionAdapterOfCollection_1;
  private final androidx.room.c<Collection> __updateAdapterOfCollection;
  
  public CollectionDao_Impl(RoomDatabase paramRoomDatabase)
  {
    this.__db = paramRoomDatabase;
    this.__insertionAdapterOfCollection = new androidx.room.d(paramRoomDatabase)
    {
      public void bind(f paramAnonymousf, Collection paramAnonymousCollection)
      {
        paramAnonymousf.B(1, paramAnonymousCollection.getId());
        paramAnonymousf.B(2, paramAnonymousCollection.getServiceId());
        if (paramAnonymousCollection.getType() == null) {
          paramAnonymousf.X(3);
        } else {
          paramAnonymousf.l(3, paramAnonymousCollection.getType());
        }
        Object localObject = CollectionDao_Impl.this.__converters.httpUrlToString(paramAnonymousCollection.getUrl());
        if (localObject == null) {
          paramAnonymousf.X(4);
        } else {
          paramAnonymousf.l(4, (String)localObject);
        }
        paramAnonymousf.B(5, paramAnonymousCollection.getPrivWriteContent());
        paramAnonymousf.B(6, paramAnonymousCollection.getPrivUnbind());
        paramAnonymousf.B(7, paramAnonymousCollection.getForceReadOnly());
        if (paramAnonymousCollection.getDisplayName() == null) {
          paramAnonymousf.X(8);
        } else {
          paramAnonymousf.l(8, paramAnonymousCollection.getDisplayName());
        }
        if (paramAnonymousCollection.getDescription() == null) {
          paramAnonymousf.X(9);
        } else {
          paramAnonymousf.l(9, paramAnonymousCollection.getDescription());
        }
        if (paramAnonymousCollection.getColor() == null) {
          paramAnonymousf.X(10);
        } else {
          paramAnonymousf.B(10, paramAnonymousCollection.getColor().intValue());
        }
        if (paramAnonymousCollection.getTimezone() == null) {
          paramAnonymousf.X(11);
        } else {
          paramAnonymousf.l(11, paramAnonymousCollection.getTimezone());
        }
        if (paramAnonymousCollection.getSupportsVEVENT() == null) {
          localObject = null;
        } else {
          localObject = Integer.valueOf(paramAnonymousCollection.getSupportsVEVENT().booleanValue());
        }
        if (localObject == null) {
          paramAnonymousf.X(12);
        } else {
          paramAnonymousf.B(12, ((Integer)localObject).intValue());
        }
        localObject = CollectionDao_Impl.this.__converters.httpUrlToString(paramAnonymousCollection.getSource());
        if (localObject == null) {
          paramAnonymousf.X(13);
        } else {
          paramAnonymousf.l(13, (String)localObject);
        }
        paramAnonymousf.B(14, paramAnonymousCollection.getSync());
      }
      
      public String createQuery()
      {
        return "INSERT OR ABORT INTO `collection` (`id`,`serviceId`,`type`,`url`,`privWriteContent`,`privUnbind`,`forceReadOnly`,`displayName`,`description`,`color`,`timezone`,`supportsVEVENT`,`source`,`sync`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?,?,?,?,?)";
      }
    };
    this.__insertionAdapterOfCollection_1 = new androidx.room.d(paramRoomDatabase)
    {
      public void bind(f paramAnonymousf, Collection paramAnonymousCollection)
      {
        paramAnonymousf.B(1, paramAnonymousCollection.getId());
        paramAnonymousf.B(2, paramAnonymousCollection.getServiceId());
        if (paramAnonymousCollection.getType() == null) {
          paramAnonymousf.X(3);
        } else {
          paramAnonymousf.l(3, paramAnonymousCollection.getType());
        }
        Object localObject = CollectionDao_Impl.this.__converters.httpUrlToString(paramAnonymousCollection.getUrl());
        if (localObject == null) {
          paramAnonymousf.X(4);
        } else {
          paramAnonymousf.l(4, (String)localObject);
        }
        paramAnonymousf.B(5, paramAnonymousCollection.getPrivWriteContent());
        paramAnonymousf.B(6, paramAnonymousCollection.getPrivUnbind());
        paramAnonymousf.B(7, paramAnonymousCollection.getForceReadOnly());
        if (paramAnonymousCollection.getDisplayName() == null) {
          paramAnonymousf.X(8);
        } else {
          paramAnonymousf.l(8, paramAnonymousCollection.getDisplayName());
        }
        if (paramAnonymousCollection.getDescription() == null) {
          paramAnonymousf.X(9);
        } else {
          paramAnonymousf.l(9, paramAnonymousCollection.getDescription());
        }
        if (paramAnonymousCollection.getColor() == null) {
          paramAnonymousf.X(10);
        } else {
          paramAnonymousf.B(10, paramAnonymousCollection.getColor().intValue());
        }
        if (paramAnonymousCollection.getTimezone() == null) {
          paramAnonymousf.X(11);
        } else {
          paramAnonymousf.l(11, paramAnonymousCollection.getTimezone());
        }
        if (paramAnonymousCollection.getSupportsVEVENT() == null) {
          localObject = null;
        } else {
          localObject = Integer.valueOf(paramAnonymousCollection.getSupportsVEVENT().booleanValue());
        }
        if (localObject == null) {
          paramAnonymousf.X(12);
        } else {
          paramAnonymousf.B(12, ((Integer)localObject).intValue());
        }
        localObject = CollectionDao_Impl.this.__converters.httpUrlToString(paramAnonymousCollection.getSource());
        if (localObject == null) {
          paramAnonymousf.X(13);
        } else {
          paramAnonymousf.l(13, (String)localObject);
        }
        paramAnonymousf.B(14, paramAnonymousCollection.getSync());
      }
      
      public String createQuery()
      {
        return "INSERT OR REPLACE INTO `collection` (`id`,`serviceId`,`type`,`url`,`privWriteContent`,`privUnbind`,`forceReadOnly`,`displayName`,`description`,`color`,`timezone`,`supportsVEVENT`,`source`,`sync`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?,?,?,?,?)";
      }
    };
    this.__deletionAdapterOfCollection = new androidx.room.c(paramRoomDatabase)
    {
      public void bind(f paramAnonymousf, Collection paramAnonymousCollection)
      {
        paramAnonymousf.B(1, paramAnonymousCollection.getId());
      }
      
      public String createQuery()
      {
        return "DELETE FROM `collection` WHERE `id` = ?";
      }
    };
    this.__updateAdapterOfCollection = new androidx.room.c(paramRoomDatabase)
    {
      public void bind(f paramAnonymousf, Collection paramAnonymousCollection)
      {
        paramAnonymousf.B(1, paramAnonymousCollection.getId());
        paramAnonymousf.B(2, paramAnonymousCollection.getServiceId());
        if (paramAnonymousCollection.getType() == null) {
          paramAnonymousf.X(3);
        } else {
          paramAnonymousf.l(3, paramAnonymousCollection.getType());
        }
        Object localObject = CollectionDao_Impl.this.__converters.httpUrlToString(paramAnonymousCollection.getUrl());
        if (localObject == null) {
          paramAnonymousf.X(4);
        } else {
          paramAnonymousf.l(4, (String)localObject);
        }
        paramAnonymousf.B(5, paramAnonymousCollection.getPrivWriteContent());
        paramAnonymousf.B(6, paramAnonymousCollection.getPrivUnbind());
        paramAnonymousf.B(7, paramAnonymousCollection.getForceReadOnly());
        if (paramAnonymousCollection.getDisplayName() == null) {
          paramAnonymousf.X(8);
        } else {
          paramAnonymousf.l(8, paramAnonymousCollection.getDisplayName());
        }
        if (paramAnonymousCollection.getDescription() == null) {
          paramAnonymousf.X(9);
        } else {
          paramAnonymousf.l(9, paramAnonymousCollection.getDescription());
        }
        if (paramAnonymousCollection.getColor() == null) {
          paramAnonymousf.X(10);
        } else {
          paramAnonymousf.B(10, paramAnonymousCollection.getColor().intValue());
        }
        if (paramAnonymousCollection.getTimezone() == null) {
          paramAnonymousf.X(11);
        } else {
          paramAnonymousf.l(11, paramAnonymousCollection.getTimezone());
        }
        if (paramAnonymousCollection.getSupportsVEVENT() == null) {
          localObject = null;
        } else {
          localObject = Integer.valueOf(paramAnonymousCollection.getSupportsVEVENT().booleanValue());
        }
        if (localObject == null) {
          paramAnonymousf.X(12);
        } else {
          paramAnonymousf.B(12, ((Integer)localObject).intValue());
        }
        localObject = CollectionDao_Impl.this.__converters.httpUrlToString(paramAnonymousCollection.getSource());
        if (localObject == null) {
          paramAnonymousf.X(13);
        } else {
          paramAnonymousf.l(13, (String)localObject);
        }
        paramAnonymousf.B(14, paramAnonymousCollection.getSync());
        paramAnonymousf.B(15, paramAnonymousCollection.getId());
      }
      
      public String createQuery()
      {
        return "UPDATE OR ABORT `collection` SET `id` = ?,`serviceId` = ?,`type` = ?,`url` = ?,`privWriteContent` = ?,`privUnbind` = ?,`forceReadOnly` = ?,`displayName` = ?,`description` = ?,`color` = ?,`timezone` = ?,`supportsVEVENT` = ?,`source` = ?,`sync` = ? WHERE `id` = ?";
      }
    };
  }
  
  public void delete(Collection paramCollection)
  {
    this.__db.assertNotSuspendingTransaction();
    this.__db.beginTransaction();
    try
    {
      this.__deletionAdapterOfCollection.handle(paramCollection);
      this.__db.setTransactionSuccessful();
      return;
    }
    finally
    {
      this.__db.endTransaction();
    }
  }
  
  /* Error */
  public Collection get(long paramLong)
  {
    // Byte code:
    //   0: ldc 94
    //   2: iconst_1
    //   3: invokestatic 100	androidx/room/m:j	(Ljava/lang/String;I)Landroidx/room/m;
    //   6: astore_3
    //   7: aload_3
    //   8: iconst_1
    //   9: lload_1
    //   10: invokevirtual 104	androidx/room/m:B	(IJ)V
    //   13: aload_0
    //   14: getfield 44	com/android/calendar/syncer/model/CollectionDao_Impl:__db	Landroidx/room/RoomDatabase;
    //   17: invokevirtual 70	androidx/room/RoomDatabase:assertNotSuspendingTransaction	()V
    //   20: aload_0
    //   21: getfield 44	com/android/calendar/syncer/model/CollectionDao_Impl:__db	Landroidx/room/RoomDatabase;
    //   24: aload_3
    //   25: iconst_0
    //   26: aconst_null
    //   27: invokestatic 110	k0/c:b	(Landroidx/room/RoomDatabase;Ll0/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;
    //   30: astore 4
    //   32: aload 4
    //   34: ldc 112
    //   36: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   39: istore 5
    //   41: aload 4
    //   43: ldc 120
    //   45: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   48: istore 6
    //   50: aload 4
    //   52: ldc 122
    //   54: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   57: istore 7
    //   59: aload 4
    //   61: ldc 124
    //   63: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   66: istore 8
    //   68: aload 4
    //   70: ldc 126
    //   72: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   75: istore 9
    //   77: aload 4
    //   79: ldc 128
    //   81: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   84: istore 10
    //   86: aload 4
    //   88: ldc 130
    //   90: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   93: istore 11
    //   95: aload 4
    //   97: ldc 132
    //   99: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   102: istore 12
    //   104: aload 4
    //   106: ldc 134
    //   108: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   111: istore 13
    //   113: aload 4
    //   115: ldc 136
    //   117: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   120: istore 14
    //   122: aload 4
    //   124: ldc 138
    //   126: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   129: istore 15
    //   131: aload 4
    //   133: ldc 140
    //   135: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   138: istore 16
    //   140: aload 4
    //   142: ldc 142
    //   144: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   147: istore 17
    //   149: aload 4
    //   151: ldc 144
    //   153: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   156: istore 18
    //   158: aload 4
    //   160: invokeinterface 150 1 0
    //   165: ifeq +334 -> 499
    //   168: aload 4
    //   170: iload 5
    //   172: invokeinterface 154 2 0
    //   177: lstore 19
    //   179: aload 4
    //   181: iload 6
    //   183: invokeinterface 154 2 0
    //   188: lstore_1
    //   189: aload 4
    //   191: iload 7
    //   193: invokeinterface 158 2 0
    //   198: astore 21
    //   200: aload 4
    //   202: iload 8
    //   204: invokeinterface 158 2 0
    //   209: astore 22
    //   211: aload_0
    //   212: getfield 42	com/android/calendar/syncer/model/CollectionDao_Impl:__converters	Lcom/android/calendar/syncer/model/Converters;
    //   215: aload 22
    //   217: invokevirtual 162	com/android/calendar/syncer/model/Converters:stringToHttpUrl	(Ljava/lang/String;)Lokhttp3/t;
    //   220: astore 23
    //   222: aload 4
    //   224: iload 9
    //   226: invokeinterface 166 2 0
    //   231: ifeq +9 -> 240
    //   234: iconst_1
    //   235: istore 24
    //   237: goto +6 -> 243
    //   240: iconst_0
    //   241: istore 24
    //   243: aload 4
    //   245: iload 10
    //   247: invokeinterface 166 2 0
    //   252: ifeq +9 -> 261
    //   255: iconst_1
    //   256: istore 25
    //   258: goto +6 -> 264
    //   261: iconst_0
    //   262: istore 25
    //   264: aload 4
    //   266: iload 11
    //   268: invokeinterface 166 2 0
    //   273: ifeq +9 -> 282
    //   276: iconst_1
    //   277: istore 26
    //   279: goto +6 -> 285
    //   282: iconst_0
    //   283: istore 26
    //   285: aload 4
    //   287: iload 12
    //   289: invokeinterface 158 2 0
    //   294: astore 27
    //   296: aload 4
    //   298: iload 13
    //   300: invokeinterface 158 2 0
    //   305: astore 28
    //   307: aload 4
    //   309: iload 14
    //   311: invokeinterface 170 2 0
    //   316: ifeq +9 -> 325
    //   319: aconst_null
    //   320: astore 22
    //   322: goto +17 -> 339
    //   325: aload 4
    //   327: iload 14
    //   329: invokeinterface 166 2 0
    //   334: invokestatic 176	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   337: astore 22
    //   339: aload 4
    //   341: iload 15
    //   343: invokeinterface 158 2 0
    //   348: astore 29
    //   350: aload 4
    //   352: iload 16
    //   354: invokeinterface 170 2 0
    //   359: ifeq +9 -> 368
    //   362: aconst_null
    //   363: astore 30
    //   365: goto +17 -> 382
    //   368: aload 4
    //   370: iload 16
    //   372: invokeinterface 166 2 0
    //   377: invokestatic 176	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   380: astore 30
    //   382: aload 30
    //   384: ifnonnull +9 -> 393
    //   387: aconst_null
    //   388: astore 30
    //   390: goto +27 -> 417
    //   393: aload 30
    //   395: invokevirtual 180	java/lang/Integer:intValue	()I
    //   398: ifeq +9 -> 407
    //   401: iconst_1
    //   402: istore 31
    //   404: goto +6 -> 410
    //   407: iconst_0
    //   408: istore 31
    //   410: iload 31
    //   412: invokestatic 185	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   415: astore 30
    //   417: aload 4
    //   419: iload 17
    //   421: invokeinterface 158 2 0
    //   426: astore 32
    //   428: aload_0
    //   429: getfield 42	com/android/calendar/syncer/model/CollectionDao_Impl:__converters	Lcom/android/calendar/syncer/model/Converters;
    //   432: aload 32
    //   434: invokevirtual 162	com/android/calendar/syncer/model/Converters:stringToHttpUrl	(Ljava/lang/String;)Lokhttp3/t;
    //   437: astore 32
    //   439: aload 4
    //   441: iload 18
    //   443: invokeinterface 166 2 0
    //   448: ifeq +9 -> 457
    //   451: iconst_1
    //   452: istore 31
    //   454: goto +6 -> 460
    //   457: iconst_0
    //   458: istore 31
    //   460: new 88	com/android/calendar/syncer/model/Collection
    //   463: dup
    //   464: lload 19
    //   466: lload_1
    //   467: aload 21
    //   469: aload 23
    //   471: iload 24
    //   473: iload 25
    //   475: iload 26
    //   477: aload 27
    //   479: aload 28
    //   481: aload 22
    //   483: aload 29
    //   485: aload 30
    //   487: aload 32
    //   489: iload 31
    //   491: invokespecial 188	com/android/calendar/syncer/model/Collection:<init>	(JJLjava/lang/String;Lokhttp3/t;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Lokhttp3/t;Z)V
    //   494: astore 22
    //   496: goto +6 -> 502
    //   499: aconst_null
    //   500: astore 22
    //   502: aload 4
    //   504: invokeinterface 191 1 0
    //   509: aload_3
    //   510: invokevirtual 194	androidx/room/m:z	()V
    //   513: aload 22
    //   515: areturn
    //   516: astore 22
    //   518: goto +5 -> 523
    //   521: astore 22
    //   523: aload 4
    //   525: invokeinterface 191 1 0
    //   530: aload_3
    //   531: invokevirtual 194	androidx/room/m:z	()V
    //   534: aload 22
    //   536: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	537	0	this	CollectionDao_Impl
    //   0	537	1	paramLong	long
    //   6	525	3	localm	m
    //   30	494	4	localCursor	Cursor
    //   39	132	5	i	int
    //   48	134	6	j	int
    //   57	135	7	k	int
    //   66	137	8	m	int
    //   75	150	9	n	int
    //   84	162	10	i1	int
    //   93	174	11	i2	int
    //   102	186	12	i3	int
    //   111	188	13	i4	int
    //   120	208	14	i5	int
    //   129	213	15	i6	int
    //   138	233	16	i7	int
    //   147	273	17	i8	int
    //   156	286	18	i9	int
    //   177	288	19	l	long
    //   198	270	21	str1	String
    //   209	305	22	localObject1	Object
    //   516	1	22	localObject2	Object
    //   521	14	22	localObject3	Object
    //   220	250	23	localt	t
    //   235	237	24	bool1	boolean
    //   256	218	25	bool2	boolean
    //   277	199	26	bool3	boolean
    //   294	184	27	str2	String
    //   305	175	28	str3	String
    //   348	136	29	str4	String
    //   363	123	30	localObject4	Object
    //   402	88	31	bool4	boolean
    //   426	62	32	localObject5	Object
    // Exception table:
    //   from	to	target	type
    //   149	234	516	finally
    //   243	255	516	finally
    //   264	276	516	finally
    //   285	319	516	finally
    //   325	339	516	finally
    //   339	362	516	finally
    //   368	382	516	finally
    //   393	401	516	finally
    //   410	417	516	finally
    //   417	451	516	finally
    //   460	496	516	finally
    //   32	149	521	finally
  }
  
  /* Error */
  public List<Collection> getByService(long paramLong)
  {
    // Byte code:
    //   0: ldc 198
    //   2: iconst_1
    //   3: invokestatic 100	androidx/room/m:j	(Ljava/lang/String;I)Landroidx/room/m;
    //   6: astore_3
    //   7: aload_3
    //   8: iconst_1
    //   9: lload_1
    //   10: invokevirtual 104	androidx/room/m:B	(IJ)V
    //   13: aload_0
    //   14: getfield 44	com/android/calendar/syncer/model/CollectionDao_Impl:__db	Landroidx/room/RoomDatabase;
    //   17: invokevirtual 70	androidx/room/RoomDatabase:assertNotSuspendingTransaction	()V
    //   20: aload_0
    //   21: getfield 44	com/android/calendar/syncer/model/CollectionDao_Impl:__db	Landroidx/room/RoomDatabase;
    //   24: aload_3
    //   25: iconst_0
    //   26: aconst_null
    //   27: invokestatic 110	k0/c:b	(Landroidx/room/RoomDatabase;Ll0/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;
    //   30: astore 4
    //   32: aload 4
    //   34: ldc 112
    //   36: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   39: istore 5
    //   41: aload 4
    //   43: ldc 120
    //   45: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   48: istore 6
    //   50: aload 4
    //   52: ldc 122
    //   54: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   57: istore 7
    //   59: aload 4
    //   61: ldc 124
    //   63: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   66: istore 8
    //   68: aload 4
    //   70: ldc 126
    //   72: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   75: istore 9
    //   77: aload 4
    //   79: ldc 128
    //   81: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   84: istore 10
    //   86: aload 4
    //   88: ldc 130
    //   90: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   93: istore 11
    //   95: aload 4
    //   97: ldc 132
    //   99: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   102: istore 12
    //   104: aload 4
    //   106: ldc 134
    //   108: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   111: istore 13
    //   113: aload 4
    //   115: ldc 136
    //   117: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   120: istore 14
    //   122: aload 4
    //   124: ldc 138
    //   126: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   129: istore 15
    //   131: aload 4
    //   133: ldc 140
    //   135: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   138: istore 16
    //   140: aload 4
    //   142: ldc 142
    //   144: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   147: istore 17
    //   149: aload 4
    //   151: ldc 144
    //   153: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   156: istore 18
    //   158: new 200	java/util/ArrayList
    //   161: astore 19
    //   163: aload 19
    //   165: aload 4
    //   167: invokeinterface 203 1 0
    //   172: invokespecial 206	java/util/ArrayList:<init>	(I)V
    //   175: aload 4
    //   177: invokeinterface 209 1 0
    //   182: ifeq +345 -> 527
    //   185: aload 4
    //   187: iload 5
    //   189: invokeinterface 154 2 0
    //   194: lstore 20
    //   196: aload 4
    //   198: iload 6
    //   200: invokeinterface 154 2 0
    //   205: lstore_1
    //   206: aload 4
    //   208: iload 7
    //   210: invokeinterface 158 2 0
    //   215: astore 22
    //   217: aload 4
    //   219: iload 8
    //   221: invokeinterface 158 2 0
    //   226: astore 23
    //   228: aload_0
    //   229: getfield 42	com/android/calendar/syncer/model/CollectionDao_Impl:__converters	Lcom/android/calendar/syncer/model/Converters;
    //   232: aload 23
    //   234: invokevirtual 162	com/android/calendar/syncer/model/Converters:stringToHttpUrl	(Ljava/lang/String;)Lokhttp3/t;
    //   237: astore 24
    //   239: aload 4
    //   241: iload 9
    //   243: invokeinterface 166 2 0
    //   248: ifeq +9 -> 257
    //   251: iconst_1
    //   252: istore 25
    //   254: goto +6 -> 260
    //   257: iconst_0
    //   258: istore 25
    //   260: aload 4
    //   262: iload 10
    //   264: invokeinterface 166 2 0
    //   269: ifeq +9 -> 278
    //   272: iconst_1
    //   273: istore 26
    //   275: goto +6 -> 281
    //   278: iconst_0
    //   279: istore 26
    //   281: aload 4
    //   283: iload 11
    //   285: invokeinterface 166 2 0
    //   290: ifeq +9 -> 299
    //   293: iconst_1
    //   294: istore 27
    //   296: goto +6 -> 302
    //   299: iconst_0
    //   300: istore 27
    //   302: aload 4
    //   304: iload 12
    //   306: invokeinterface 158 2 0
    //   311: astore 28
    //   313: aload 4
    //   315: iload 13
    //   317: invokeinterface 158 2 0
    //   322: astore 29
    //   324: aload 4
    //   326: iload 14
    //   328: invokeinterface 170 2 0
    //   333: ifeq +9 -> 342
    //   336: aconst_null
    //   337: astore 23
    //   339: goto +17 -> 356
    //   342: aload 4
    //   344: iload 14
    //   346: invokeinterface 166 2 0
    //   351: invokestatic 176	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   354: astore 23
    //   356: aload 4
    //   358: iload 15
    //   360: invokeinterface 158 2 0
    //   365: astore 30
    //   367: aload 4
    //   369: iload 16
    //   371: invokeinterface 170 2 0
    //   376: ifeq +9 -> 385
    //   379: aconst_null
    //   380: astore 31
    //   382: goto +17 -> 399
    //   385: aload 4
    //   387: iload 16
    //   389: invokeinterface 166 2 0
    //   394: invokestatic 176	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   397: astore 31
    //   399: aload 31
    //   401: ifnonnull +9 -> 410
    //   404: aconst_null
    //   405: astore 31
    //   407: goto +27 -> 434
    //   410: aload 31
    //   412: invokevirtual 180	java/lang/Integer:intValue	()I
    //   415: ifeq +9 -> 424
    //   418: iconst_1
    //   419: istore 32
    //   421: goto +6 -> 427
    //   424: iconst_0
    //   425: istore 32
    //   427: iload 32
    //   429: invokestatic 185	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   432: astore 31
    //   434: aload 4
    //   436: iload 17
    //   438: invokeinterface 158 2 0
    //   443: astore 33
    //   445: aload_0
    //   446: getfield 42	com/android/calendar/syncer/model/CollectionDao_Impl:__converters	Lcom/android/calendar/syncer/model/Converters;
    //   449: aload 33
    //   451: invokevirtual 162	com/android/calendar/syncer/model/Converters:stringToHttpUrl	(Ljava/lang/String;)Lokhttp3/t;
    //   454: astore 34
    //   456: aload 4
    //   458: iload 18
    //   460: invokeinterface 166 2 0
    //   465: ifeq +9 -> 474
    //   468: iconst_1
    //   469: istore 32
    //   471: goto +6 -> 477
    //   474: iconst_0
    //   475: istore 32
    //   477: new 88	com/android/calendar/syncer/model/Collection
    //   480: astore 33
    //   482: aload 33
    //   484: lload 20
    //   486: lload_1
    //   487: aload 22
    //   489: aload 24
    //   491: iload 25
    //   493: iload 26
    //   495: iload 27
    //   497: aload 28
    //   499: aload 29
    //   501: aload 23
    //   503: aload 30
    //   505: aload 31
    //   507: aload 34
    //   509: iload 32
    //   511: invokespecial 188	com/android/calendar/syncer/model/Collection:<init>	(JJLjava/lang/String;Lokhttp3/t;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Lokhttp3/t;Z)V
    //   514: aload 19
    //   516: aload 33
    //   518: invokeinterface 215 2 0
    //   523: pop
    //   524: goto -349 -> 175
    //   527: aload 4
    //   529: invokeinterface 191 1 0
    //   534: aload_3
    //   535: invokevirtual 194	androidx/room/m:z	()V
    //   538: aload 19
    //   540: areturn
    //   541: astore 23
    //   543: goto +5 -> 548
    //   546: astore 23
    //   548: aload 4
    //   550: invokeinterface 191 1 0
    //   555: aload_3
    //   556: invokevirtual 194	androidx/room/m:z	()V
    //   559: aload 23
    //   561: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	562	0	this	CollectionDao_Impl
    //   0	562	1	paramLong	long
    //   6	550	3	localm	m
    //   30	519	4	localCursor	Cursor
    //   39	149	5	i	int
    //   48	151	6	j	int
    //   57	152	7	k	int
    //   66	154	8	m	int
    //   75	167	9	n	int
    //   84	179	10	i1	int
    //   93	191	11	i2	int
    //   102	203	12	i3	int
    //   111	205	13	i4	int
    //   120	225	14	i5	int
    //   129	230	15	i6	int
    //   138	250	16	i7	int
    //   147	290	17	i8	int
    //   156	303	18	i9	int
    //   161	378	19	localArrayList	ArrayList
    //   194	291	20	l	long
    //   215	273	22	str1	String
    //   226	276	23	localObject1	Object
    //   541	1	23	localObject2	Object
    //   546	14	23	localObject3	Object
    //   237	253	24	localt1	t
    //   252	240	25	bool1	boolean
    //   273	221	26	bool2	boolean
    //   294	202	27	bool3	boolean
    //   311	187	28	str2	String
    //   322	178	29	str3	String
    //   365	139	30	str4	String
    //   380	126	31	localObject4	Object
    //   419	91	32	bool4	boolean
    //   443	74	33	localObject5	Object
    //   454	54	34	localt2	t
    // Exception table:
    //   from	to	target	type
    //   149	163	541	finally
    //   163	175	541	finally
    //   175	251	541	finally
    //   260	272	541	finally
    //   281	293	541	finally
    //   302	336	541	finally
    //   342	356	541	finally
    //   356	379	541	finally
    //   385	399	541	finally
    //   410	418	541	finally
    //   427	434	541	finally
    //   434	445	541	finally
    //   445	468	541	finally
    //   477	524	541	finally
    //   32	149	546	finally
  }
  
  /* Error */
  public List<Collection> getByServiceAndSync(long paramLong)
  {
    // Byte code:
    //   0: ldc 220
    //   2: iconst_1
    //   3: invokestatic 100	androidx/room/m:j	(Ljava/lang/String;I)Landroidx/room/m;
    //   6: astore_3
    //   7: aload_3
    //   8: iconst_1
    //   9: lload_1
    //   10: invokevirtual 104	androidx/room/m:B	(IJ)V
    //   13: aload_0
    //   14: getfield 44	com/android/calendar/syncer/model/CollectionDao_Impl:__db	Landroidx/room/RoomDatabase;
    //   17: invokevirtual 70	androidx/room/RoomDatabase:assertNotSuspendingTransaction	()V
    //   20: aload_0
    //   21: getfield 44	com/android/calendar/syncer/model/CollectionDao_Impl:__db	Landroidx/room/RoomDatabase;
    //   24: aload_3
    //   25: iconst_0
    //   26: aconst_null
    //   27: invokestatic 110	k0/c:b	(Landroidx/room/RoomDatabase;Ll0/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;
    //   30: astore 4
    //   32: aload 4
    //   34: ldc 112
    //   36: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   39: istore 5
    //   41: aload 4
    //   43: ldc 120
    //   45: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   48: istore 6
    //   50: aload 4
    //   52: ldc 122
    //   54: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   57: istore 7
    //   59: aload 4
    //   61: ldc 124
    //   63: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   66: istore 8
    //   68: aload 4
    //   70: ldc 126
    //   72: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   75: istore 9
    //   77: aload 4
    //   79: ldc 128
    //   81: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   84: istore 10
    //   86: aload 4
    //   88: ldc 130
    //   90: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   93: istore 11
    //   95: aload 4
    //   97: ldc 132
    //   99: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   102: istore 12
    //   104: aload 4
    //   106: ldc 134
    //   108: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   111: istore 13
    //   113: aload 4
    //   115: ldc 136
    //   117: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   120: istore 14
    //   122: aload 4
    //   124: ldc 138
    //   126: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   129: istore 15
    //   131: aload 4
    //   133: ldc 140
    //   135: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   138: istore 16
    //   140: aload 4
    //   142: ldc 142
    //   144: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   147: istore 17
    //   149: aload 4
    //   151: ldc 144
    //   153: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   156: istore 18
    //   158: new 200	java/util/ArrayList
    //   161: astore 19
    //   163: aload 19
    //   165: aload 4
    //   167: invokeinterface 203 1 0
    //   172: invokespecial 206	java/util/ArrayList:<init>	(I)V
    //   175: aload 4
    //   177: invokeinterface 209 1 0
    //   182: ifeq +345 -> 527
    //   185: aload 4
    //   187: iload 5
    //   189: invokeinterface 154 2 0
    //   194: lstore 20
    //   196: aload 4
    //   198: iload 6
    //   200: invokeinterface 154 2 0
    //   205: lstore_1
    //   206: aload 4
    //   208: iload 7
    //   210: invokeinterface 158 2 0
    //   215: astore 22
    //   217: aload 4
    //   219: iload 8
    //   221: invokeinterface 158 2 0
    //   226: astore 23
    //   228: aload_0
    //   229: getfield 42	com/android/calendar/syncer/model/CollectionDao_Impl:__converters	Lcom/android/calendar/syncer/model/Converters;
    //   232: aload 23
    //   234: invokevirtual 162	com/android/calendar/syncer/model/Converters:stringToHttpUrl	(Ljava/lang/String;)Lokhttp3/t;
    //   237: astore 24
    //   239: aload 4
    //   241: iload 9
    //   243: invokeinterface 166 2 0
    //   248: ifeq +9 -> 257
    //   251: iconst_1
    //   252: istore 25
    //   254: goto +6 -> 260
    //   257: iconst_0
    //   258: istore 25
    //   260: aload 4
    //   262: iload 10
    //   264: invokeinterface 166 2 0
    //   269: ifeq +9 -> 278
    //   272: iconst_1
    //   273: istore 26
    //   275: goto +6 -> 281
    //   278: iconst_0
    //   279: istore 26
    //   281: aload 4
    //   283: iload 11
    //   285: invokeinterface 166 2 0
    //   290: ifeq +9 -> 299
    //   293: iconst_1
    //   294: istore 27
    //   296: goto +6 -> 302
    //   299: iconst_0
    //   300: istore 27
    //   302: aload 4
    //   304: iload 12
    //   306: invokeinterface 158 2 0
    //   311: astore 28
    //   313: aload 4
    //   315: iload 13
    //   317: invokeinterface 158 2 0
    //   322: astore 29
    //   324: aload 4
    //   326: iload 14
    //   328: invokeinterface 170 2 0
    //   333: ifeq +9 -> 342
    //   336: aconst_null
    //   337: astore 23
    //   339: goto +17 -> 356
    //   342: aload 4
    //   344: iload 14
    //   346: invokeinterface 166 2 0
    //   351: invokestatic 176	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   354: astore 23
    //   356: aload 4
    //   358: iload 15
    //   360: invokeinterface 158 2 0
    //   365: astore 30
    //   367: aload 4
    //   369: iload 16
    //   371: invokeinterface 170 2 0
    //   376: ifeq +9 -> 385
    //   379: aconst_null
    //   380: astore 31
    //   382: goto +17 -> 399
    //   385: aload 4
    //   387: iload 16
    //   389: invokeinterface 166 2 0
    //   394: invokestatic 176	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   397: astore 31
    //   399: aload 31
    //   401: ifnonnull +9 -> 410
    //   404: aconst_null
    //   405: astore 31
    //   407: goto +27 -> 434
    //   410: aload 31
    //   412: invokevirtual 180	java/lang/Integer:intValue	()I
    //   415: ifeq +9 -> 424
    //   418: iconst_1
    //   419: istore 32
    //   421: goto +6 -> 427
    //   424: iconst_0
    //   425: istore 32
    //   427: iload 32
    //   429: invokestatic 185	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   432: astore 31
    //   434: aload 4
    //   436: iload 17
    //   438: invokeinterface 158 2 0
    //   443: astore 33
    //   445: aload_0
    //   446: getfield 42	com/android/calendar/syncer/model/CollectionDao_Impl:__converters	Lcom/android/calendar/syncer/model/Converters;
    //   449: aload 33
    //   451: invokevirtual 162	com/android/calendar/syncer/model/Converters:stringToHttpUrl	(Ljava/lang/String;)Lokhttp3/t;
    //   454: astore 33
    //   456: aload 4
    //   458: iload 18
    //   460: invokeinterface 166 2 0
    //   465: ifeq +9 -> 474
    //   468: iconst_1
    //   469: istore 32
    //   471: goto +6 -> 477
    //   474: iconst_0
    //   475: istore 32
    //   477: new 88	com/android/calendar/syncer/model/Collection
    //   480: astore 34
    //   482: aload 34
    //   484: lload 20
    //   486: lload_1
    //   487: aload 22
    //   489: aload 24
    //   491: iload 25
    //   493: iload 26
    //   495: iload 27
    //   497: aload 28
    //   499: aload 29
    //   501: aload 23
    //   503: aload 30
    //   505: aload 31
    //   507: aload 33
    //   509: iload 32
    //   511: invokespecial 188	com/android/calendar/syncer/model/Collection:<init>	(JJLjava/lang/String;Lokhttp3/t;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Lokhttp3/t;Z)V
    //   514: aload 19
    //   516: aload 34
    //   518: invokeinterface 215 2 0
    //   523: pop
    //   524: goto -349 -> 175
    //   527: aload 4
    //   529: invokeinterface 191 1 0
    //   534: aload_3
    //   535: invokevirtual 194	androidx/room/m:z	()V
    //   538: aload 19
    //   540: areturn
    //   541: astore 23
    //   543: goto +5 -> 548
    //   546: astore 23
    //   548: aload 4
    //   550: invokeinterface 191 1 0
    //   555: aload_3
    //   556: invokevirtual 194	androidx/room/m:z	()V
    //   559: aload 23
    //   561: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	562	0	this	CollectionDao_Impl
    //   0	562	1	paramLong	long
    //   6	550	3	localm	m
    //   30	519	4	localCursor	Cursor
    //   39	149	5	i	int
    //   48	151	6	j	int
    //   57	152	7	k	int
    //   66	154	8	m	int
    //   75	167	9	n	int
    //   84	179	10	i1	int
    //   93	191	11	i2	int
    //   102	203	12	i3	int
    //   111	205	13	i4	int
    //   120	225	14	i5	int
    //   129	230	15	i6	int
    //   138	250	16	i7	int
    //   147	290	17	i8	int
    //   156	303	18	i9	int
    //   161	378	19	localArrayList	ArrayList
    //   194	291	20	l	long
    //   215	273	22	str1	String
    //   226	276	23	localObject1	Object
    //   541	1	23	localObject2	Object
    //   546	14	23	localObject3	Object
    //   237	253	24	localt	t
    //   252	240	25	bool1	boolean
    //   273	221	26	bool2	boolean
    //   294	202	27	bool3	boolean
    //   311	187	28	str2	String
    //   322	178	29	str3	String
    //   365	139	30	str4	String
    //   380	126	31	localObject4	Object
    //   419	91	32	bool4	boolean
    //   443	65	33	localObject5	Object
    //   480	37	34	localCollection	Collection
    // Exception table:
    //   from	to	target	type
    //   149	163	541	finally
    //   163	175	541	finally
    //   175	251	541	finally
    //   260	272	541	finally
    //   281	293	541	finally
    //   302	336	541	finally
    //   342	356	541	finally
    //   356	379	541	finally
    //   385	399	541	finally
    //   410	418	541	finally
    //   427	434	541	finally
    //   434	445	541	finally
    //   445	468	541	finally
    //   477	524	541	finally
    //   32	149	546	finally
  }
  
  /* Error */
  public List<Collection> getByServiceAndType(long paramLong, String paramString)
  {
    // Byte code:
    //   0: ldc 224
    //   2: iconst_2
    //   3: invokestatic 100	androidx/room/m:j	(Ljava/lang/String;I)Landroidx/room/m;
    //   6: astore 4
    //   8: aload 4
    //   10: iconst_1
    //   11: lload_1
    //   12: invokevirtual 104	androidx/room/m:B	(IJ)V
    //   15: aload_3
    //   16: ifnonnull +12 -> 28
    //   19: aload 4
    //   21: iconst_2
    //   22: invokevirtual 227	androidx/room/m:X	(I)V
    //   25: goto +10 -> 35
    //   28: aload 4
    //   30: iconst_2
    //   31: aload_3
    //   32: invokevirtual 231	androidx/room/m:l	(ILjava/lang/String;)V
    //   35: aload_0
    //   36: getfield 44	com/android/calendar/syncer/model/CollectionDao_Impl:__db	Landroidx/room/RoomDatabase;
    //   39: invokevirtual 70	androidx/room/RoomDatabase:assertNotSuspendingTransaction	()V
    //   42: aload_0
    //   43: getfield 44	com/android/calendar/syncer/model/CollectionDao_Impl:__db	Landroidx/room/RoomDatabase;
    //   46: aload 4
    //   48: iconst_0
    //   49: aconst_null
    //   50: invokestatic 110	k0/c:b	(Landroidx/room/RoomDatabase;Ll0/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;
    //   53: astore 5
    //   55: aload 5
    //   57: ldc 112
    //   59: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   62: istore 6
    //   64: aload 5
    //   66: ldc 120
    //   68: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   71: istore 7
    //   73: aload 5
    //   75: ldc 122
    //   77: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   80: istore 8
    //   82: aload 5
    //   84: ldc 124
    //   86: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   89: istore 9
    //   91: aload 5
    //   93: ldc 126
    //   95: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   98: istore 10
    //   100: aload 5
    //   102: ldc 128
    //   104: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   107: istore 11
    //   109: aload 5
    //   111: ldc 130
    //   113: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   116: istore 12
    //   118: aload 5
    //   120: ldc 132
    //   122: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   125: istore 13
    //   127: aload 5
    //   129: ldc 134
    //   131: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   134: istore 14
    //   136: aload 5
    //   138: ldc 136
    //   140: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   143: istore 15
    //   145: aload 5
    //   147: ldc 138
    //   149: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   152: istore 16
    //   154: aload 5
    //   156: ldc 140
    //   158: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   161: istore 17
    //   163: aload 5
    //   165: ldc 142
    //   167: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   170: istore 18
    //   172: aload 5
    //   174: ldc 144
    //   176: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   179: istore 19
    //   181: new 200	java/util/ArrayList
    //   184: astore 20
    //   186: aload 20
    //   188: aload 5
    //   190: invokeinterface 203 1 0
    //   195: invokespecial 206	java/util/ArrayList:<init>	(I)V
    //   198: aload 5
    //   200: invokeinterface 209 1 0
    //   205: ifeq +340 -> 545
    //   208: aload 5
    //   210: iload 6
    //   212: invokeinterface 154 2 0
    //   217: lstore_1
    //   218: aload 5
    //   220: iload 7
    //   222: invokeinterface 154 2 0
    //   227: lstore 21
    //   229: aload 5
    //   231: iload 8
    //   233: invokeinterface 158 2 0
    //   238: astore 23
    //   240: aload 5
    //   242: iload 9
    //   244: invokeinterface 158 2 0
    //   249: astore_3
    //   250: aload_0
    //   251: getfield 42	com/android/calendar/syncer/model/CollectionDao_Impl:__converters	Lcom/android/calendar/syncer/model/Converters;
    //   254: aload_3
    //   255: invokevirtual 162	com/android/calendar/syncer/model/Converters:stringToHttpUrl	(Ljava/lang/String;)Lokhttp3/t;
    //   258: astore 24
    //   260: aload 5
    //   262: iload 10
    //   264: invokeinterface 166 2 0
    //   269: ifeq +9 -> 278
    //   272: iconst_1
    //   273: istore 25
    //   275: goto +6 -> 281
    //   278: iconst_0
    //   279: istore 25
    //   281: aload 5
    //   283: iload 11
    //   285: invokeinterface 166 2 0
    //   290: ifeq +9 -> 299
    //   293: iconst_1
    //   294: istore 26
    //   296: goto +6 -> 302
    //   299: iconst_0
    //   300: istore 26
    //   302: aload 5
    //   304: iload 12
    //   306: invokeinterface 166 2 0
    //   311: ifeq +9 -> 320
    //   314: iconst_1
    //   315: istore 27
    //   317: goto +6 -> 323
    //   320: iconst_0
    //   321: istore 27
    //   323: aload 5
    //   325: iload 13
    //   327: invokeinterface 158 2 0
    //   332: astore 28
    //   334: aload 5
    //   336: iload 14
    //   338: invokeinterface 158 2 0
    //   343: astore 29
    //   345: aload 5
    //   347: iload 15
    //   349: invokeinterface 170 2 0
    //   354: ifeq +8 -> 362
    //   357: aconst_null
    //   358: astore_3
    //   359: goto +16 -> 375
    //   362: aload 5
    //   364: iload 15
    //   366: invokeinterface 166 2 0
    //   371: invokestatic 176	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   374: astore_3
    //   375: aload 5
    //   377: iload 16
    //   379: invokeinterface 158 2 0
    //   384: astore 30
    //   386: aload 5
    //   388: iload 17
    //   390: invokeinterface 170 2 0
    //   395: ifeq +9 -> 404
    //   398: aconst_null
    //   399: astore 31
    //   401: goto +17 -> 418
    //   404: aload 5
    //   406: iload 17
    //   408: invokeinterface 166 2 0
    //   413: invokestatic 176	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   416: astore 31
    //   418: aload 31
    //   420: ifnonnull +9 -> 429
    //   423: aconst_null
    //   424: astore 31
    //   426: goto +27 -> 453
    //   429: aload 31
    //   431: invokevirtual 180	java/lang/Integer:intValue	()I
    //   434: ifeq +9 -> 443
    //   437: iconst_1
    //   438: istore 32
    //   440: goto +6 -> 446
    //   443: iconst_0
    //   444: istore 32
    //   446: iload 32
    //   448: invokestatic 185	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   451: astore 31
    //   453: aload 5
    //   455: iload 18
    //   457: invokeinterface 158 2 0
    //   462: astore 33
    //   464: aload_0
    //   465: getfield 42	com/android/calendar/syncer/model/CollectionDao_Impl:__converters	Lcom/android/calendar/syncer/model/Converters;
    //   468: aload 33
    //   470: invokevirtual 162	com/android/calendar/syncer/model/Converters:stringToHttpUrl	(Ljava/lang/String;)Lokhttp3/t;
    //   473: astore 33
    //   475: aload 5
    //   477: iload 19
    //   479: invokeinterface 166 2 0
    //   484: ifeq +9 -> 493
    //   487: iconst_1
    //   488: istore 32
    //   490: goto +6 -> 496
    //   493: iconst_0
    //   494: istore 32
    //   496: new 88	com/android/calendar/syncer/model/Collection
    //   499: astore 34
    //   501: aload 34
    //   503: lload_1
    //   504: lload 21
    //   506: aload 23
    //   508: aload 24
    //   510: iload 25
    //   512: iload 26
    //   514: iload 27
    //   516: aload 28
    //   518: aload 29
    //   520: aload_3
    //   521: aload 30
    //   523: aload 31
    //   525: aload 33
    //   527: iload 32
    //   529: invokespecial 188	com/android/calendar/syncer/model/Collection:<init>	(JJLjava/lang/String;Lokhttp3/t;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Lokhttp3/t;Z)V
    //   532: aload 20
    //   534: aload 34
    //   536: invokeinterface 215 2 0
    //   541: pop
    //   542: goto -344 -> 198
    //   545: aload 5
    //   547: invokeinterface 191 1 0
    //   552: aload 4
    //   554: invokevirtual 194	androidx/room/m:z	()V
    //   557: aload 20
    //   559: areturn
    //   560: astore_3
    //   561: goto +4 -> 565
    //   564: astore_3
    //   565: aload 5
    //   567: invokeinterface 191 1 0
    //   572: aload 4
    //   574: invokevirtual 194	androidx/room/m:z	()V
    //   577: aload_3
    //   578: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	579	0	this	CollectionDao_Impl
    //   0	579	1	paramLong	long
    //   0	579	3	paramString	String
    //   6	567	4	localm	m
    //   53	513	5	localCursor	Cursor
    //   62	149	6	i	int
    //   71	150	7	j	int
    //   80	152	8	k	int
    //   89	154	9	m	int
    //   98	165	10	n	int
    //   107	177	11	i1	int
    //   116	189	12	i2	int
    //   125	201	13	i3	int
    //   134	203	14	i4	int
    //   143	222	15	i5	int
    //   152	226	16	i6	int
    //   161	246	17	i7	int
    //   170	286	18	i8	int
    //   179	299	19	i9	int
    //   184	374	20	localArrayList	ArrayList
    //   227	278	21	l	long
    //   238	269	23	str1	String
    //   258	251	24	localt	t
    //   273	238	25	bool1	boolean
    //   294	219	26	bool2	boolean
    //   315	200	27	bool3	boolean
    //   332	185	28	str2	String
    //   343	176	29	str3	String
    //   384	138	30	str4	String
    //   399	125	31	localObject1	Object
    //   438	90	32	bool4	boolean
    //   462	64	33	localObject2	Object
    //   499	36	34	localCollection	Collection
    // Exception table:
    //   from	to	target	type
    //   172	186	560	finally
    //   186	198	560	finally
    //   198	272	560	finally
    //   281	293	560	finally
    //   302	314	560	finally
    //   323	357	560	finally
    //   362	375	560	finally
    //   375	398	560	finally
    //   404	418	560	finally
    //   429	437	560	finally
    //   446	453	560	finally
    //   453	464	560	finally
    //   464	487	560	finally
    //   496	542	560	finally
    //   55	172	564	finally
  }
  
  /* Error */
  public List<Collection> getSyncCalendars(long paramLong)
  {
    // Byte code:
    //   0: ldc 235
    //   2: iconst_1
    //   3: invokestatic 100	androidx/room/m:j	(Ljava/lang/String;I)Landroidx/room/m;
    //   6: astore_3
    //   7: aload_3
    //   8: iconst_1
    //   9: lload_1
    //   10: invokevirtual 104	androidx/room/m:B	(IJ)V
    //   13: aload_0
    //   14: getfield 44	com/android/calendar/syncer/model/CollectionDao_Impl:__db	Landroidx/room/RoomDatabase;
    //   17: invokevirtual 70	androidx/room/RoomDatabase:assertNotSuspendingTransaction	()V
    //   20: aload_0
    //   21: getfield 44	com/android/calendar/syncer/model/CollectionDao_Impl:__db	Landroidx/room/RoomDatabase;
    //   24: aload_3
    //   25: iconst_0
    //   26: aconst_null
    //   27: invokestatic 110	k0/c:b	(Landroidx/room/RoomDatabase;Ll0/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;
    //   30: astore 4
    //   32: aload 4
    //   34: ldc 112
    //   36: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   39: istore 5
    //   41: aload 4
    //   43: ldc 120
    //   45: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   48: istore 6
    //   50: aload 4
    //   52: ldc 122
    //   54: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   57: istore 7
    //   59: aload 4
    //   61: ldc 124
    //   63: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   66: istore 8
    //   68: aload 4
    //   70: ldc 126
    //   72: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   75: istore 9
    //   77: aload 4
    //   79: ldc 128
    //   81: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   84: istore 10
    //   86: aload 4
    //   88: ldc 130
    //   90: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   93: istore 11
    //   95: aload 4
    //   97: ldc 132
    //   99: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   102: istore 12
    //   104: aload 4
    //   106: ldc 134
    //   108: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   111: istore 13
    //   113: aload 4
    //   115: ldc 136
    //   117: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   120: istore 14
    //   122: aload 4
    //   124: ldc 138
    //   126: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   129: istore 15
    //   131: aload 4
    //   133: ldc 140
    //   135: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   138: istore 16
    //   140: aload 4
    //   142: ldc 142
    //   144: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   147: istore 17
    //   149: aload 4
    //   151: ldc 144
    //   153: invokestatic 118	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   156: istore 18
    //   158: new 200	java/util/ArrayList
    //   161: astore 19
    //   163: aload 19
    //   165: aload 4
    //   167: invokeinterface 203 1 0
    //   172: invokespecial 206	java/util/ArrayList:<init>	(I)V
    //   175: aload 4
    //   177: invokeinterface 209 1 0
    //   182: ifeq +345 -> 527
    //   185: aload 4
    //   187: iload 5
    //   189: invokeinterface 154 2 0
    //   194: lstore 20
    //   196: aload 4
    //   198: iload 6
    //   200: invokeinterface 154 2 0
    //   205: lstore_1
    //   206: aload 4
    //   208: iload 7
    //   210: invokeinterface 158 2 0
    //   215: astore 22
    //   217: aload 4
    //   219: iload 8
    //   221: invokeinterface 158 2 0
    //   226: astore 23
    //   228: aload_0
    //   229: getfield 42	com/android/calendar/syncer/model/CollectionDao_Impl:__converters	Lcom/android/calendar/syncer/model/Converters;
    //   232: aload 23
    //   234: invokevirtual 162	com/android/calendar/syncer/model/Converters:stringToHttpUrl	(Ljava/lang/String;)Lokhttp3/t;
    //   237: astore 24
    //   239: aload 4
    //   241: iload 9
    //   243: invokeinterface 166 2 0
    //   248: ifeq +9 -> 257
    //   251: iconst_1
    //   252: istore 25
    //   254: goto +6 -> 260
    //   257: iconst_0
    //   258: istore 25
    //   260: aload 4
    //   262: iload 10
    //   264: invokeinterface 166 2 0
    //   269: ifeq +9 -> 278
    //   272: iconst_1
    //   273: istore 26
    //   275: goto +6 -> 281
    //   278: iconst_0
    //   279: istore 26
    //   281: aload 4
    //   283: iload 11
    //   285: invokeinterface 166 2 0
    //   290: ifeq +9 -> 299
    //   293: iconst_1
    //   294: istore 27
    //   296: goto +6 -> 302
    //   299: iconst_0
    //   300: istore 27
    //   302: aload 4
    //   304: iload 12
    //   306: invokeinterface 158 2 0
    //   311: astore 28
    //   313: aload 4
    //   315: iload 13
    //   317: invokeinterface 158 2 0
    //   322: astore 29
    //   324: aload 4
    //   326: iload 14
    //   328: invokeinterface 170 2 0
    //   333: ifeq +9 -> 342
    //   336: aconst_null
    //   337: astore 23
    //   339: goto +17 -> 356
    //   342: aload 4
    //   344: iload 14
    //   346: invokeinterface 166 2 0
    //   351: invokestatic 176	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   354: astore 23
    //   356: aload 4
    //   358: iload 15
    //   360: invokeinterface 158 2 0
    //   365: astore 30
    //   367: aload 4
    //   369: iload 16
    //   371: invokeinterface 170 2 0
    //   376: ifeq +9 -> 385
    //   379: aconst_null
    //   380: astore 31
    //   382: goto +17 -> 399
    //   385: aload 4
    //   387: iload 16
    //   389: invokeinterface 166 2 0
    //   394: invokestatic 176	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   397: astore 31
    //   399: aload 31
    //   401: ifnonnull +9 -> 410
    //   404: aconst_null
    //   405: astore 31
    //   407: goto +27 -> 434
    //   410: aload 31
    //   412: invokevirtual 180	java/lang/Integer:intValue	()I
    //   415: ifeq +9 -> 424
    //   418: iconst_1
    //   419: istore 32
    //   421: goto +6 -> 427
    //   424: iconst_0
    //   425: istore 32
    //   427: iload 32
    //   429: invokestatic 185	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   432: astore 31
    //   434: aload 4
    //   436: iload 17
    //   438: invokeinterface 158 2 0
    //   443: astore 33
    //   445: aload_0
    //   446: getfield 42	com/android/calendar/syncer/model/CollectionDao_Impl:__converters	Lcom/android/calendar/syncer/model/Converters;
    //   449: aload 33
    //   451: invokevirtual 162	com/android/calendar/syncer/model/Converters:stringToHttpUrl	(Ljava/lang/String;)Lokhttp3/t;
    //   454: astore 34
    //   456: aload 4
    //   458: iload 18
    //   460: invokeinterface 166 2 0
    //   465: ifeq +9 -> 474
    //   468: iconst_1
    //   469: istore 32
    //   471: goto +6 -> 477
    //   474: iconst_0
    //   475: istore 32
    //   477: new 88	com/android/calendar/syncer/model/Collection
    //   480: astore 33
    //   482: aload 33
    //   484: lload 20
    //   486: lload_1
    //   487: aload 22
    //   489: aload 24
    //   491: iload 25
    //   493: iload 26
    //   495: iload 27
    //   497: aload 28
    //   499: aload 29
    //   501: aload 23
    //   503: aload 30
    //   505: aload 31
    //   507: aload 34
    //   509: iload 32
    //   511: invokespecial 188	com/android/calendar/syncer/model/Collection:<init>	(JJLjava/lang/String;Lokhttp3/t;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Lokhttp3/t;Z)V
    //   514: aload 19
    //   516: aload 33
    //   518: invokeinterface 215 2 0
    //   523: pop
    //   524: goto -349 -> 175
    //   527: aload 4
    //   529: invokeinterface 191 1 0
    //   534: aload_3
    //   535: invokevirtual 194	androidx/room/m:z	()V
    //   538: aload 19
    //   540: areturn
    //   541: astore 23
    //   543: goto +5 -> 548
    //   546: astore 23
    //   548: aload 4
    //   550: invokeinterface 191 1 0
    //   555: aload_3
    //   556: invokevirtual 194	androidx/room/m:z	()V
    //   559: aload 23
    //   561: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	562	0	this	CollectionDao_Impl
    //   0	562	1	paramLong	long
    //   6	550	3	localm	m
    //   30	519	4	localCursor	Cursor
    //   39	149	5	i	int
    //   48	151	6	j	int
    //   57	152	7	k	int
    //   66	154	8	m	int
    //   75	167	9	n	int
    //   84	179	10	i1	int
    //   93	191	11	i2	int
    //   102	203	12	i3	int
    //   111	205	13	i4	int
    //   120	225	14	i5	int
    //   129	230	15	i6	int
    //   138	250	16	i7	int
    //   147	290	17	i8	int
    //   156	303	18	i9	int
    //   161	378	19	localArrayList	ArrayList
    //   194	291	20	l	long
    //   215	273	22	str1	String
    //   226	276	23	localObject1	Object
    //   541	1	23	localObject2	Object
    //   546	14	23	localObject3	Object
    //   237	253	24	localt1	t
    //   252	240	25	bool1	boolean
    //   273	221	26	bool2	boolean
    //   294	202	27	bool3	boolean
    //   311	187	28	str2	String
    //   322	178	29	str3	String
    //   365	139	30	str4	String
    //   380	126	31	localObject4	Object
    //   419	91	32	bool4	boolean
    //   443	74	33	localObject5	Object
    //   454	54	34	localt2	t
    // Exception table:
    //   from	to	target	type
    //   149	163	541	finally
    //   163	175	541	finally
    //   175	251	541	finally
    //   260	272	541	finally
    //   281	293	541	finally
    //   302	336	541	finally
    //   342	356	541	finally
    //   356	379	541	finally
    //   385	399	541	finally
    //   410	418	541	finally
    //   427	434	541	finally
    //   434	445	541	finally
    //   445	468	541	finally
    //   477	524	541	finally
    //   32	149	546	finally
  }
  
  public void insert(Collection paramCollection)
  {
    this.__db.assertNotSuspendingTransaction();
    this.__db.beginTransaction();
    try
    {
      this.__insertionAdapterOfCollection.insert(paramCollection);
      this.__db.setTransactionSuccessful();
      return;
    }
    finally
    {
      this.__db.endTransaction();
    }
  }
  
  public void insert(List<? extends Collection> paramList)
  {
    this.__db.assertNotSuspendingTransaction();
    this.__db.beginTransaction();
    try
    {
      this.__insertionAdapterOfCollection.insert(paramList);
      this.__db.setTransactionSuccessful();
      return;
    }
    finally
    {
      this.__db.endTransaction();
    }
  }
  
  public void insertOrReplace(Collection paramCollection)
  {
    this.__db.assertNotSuspendingTransaction();
    this.__db.beginTransaction();
    try
    {
      this.__insertionAdapterOfCollection_1.insert(paramCollection);
      this.__db.setTransactionSuccessful();
      return;
    }
    finally
    {
      this.__db.endTransaction();
    }
  }
  
  public LiveData<Boolean> observeHasSyncByService(long paramLong)
  {
    Object localObject = m.j("SELECT COUNT(*) FROM collection WHERE serviceId=?", 1);
    ((m)localObject).B(1, paramLong);
    h localh = this.__db.getInvalidationTracker();
    localObject = new Callable()
    {
      public Boolean call()
        throws Exception
      {
        Object localObject1 = CollectionDao_Impl.this.__db;
        Object localObject3 = this.val$_statement;
        boolean bool = false;
        Object localObject4 = null;
        localObject3 = k0.c.b((RoomDatabase)localObject1, (e)localObject3, false, null);
        localObject1 = localObject4;
        try
        {
          if (((Cursor)localObject3).moveToFirst())
          {
            if (((Cursor)localObject3).isNull(0)) {
              localObject1 = null;
            } else {
              localObject1 = Integer.valueOf(((Cursor)localObject3).getInt(0));
            }
            if (localObject1 == null)
            {
              localObject1 = localObject4;
            }
            else
            {
              if (((Integer)localObject1).intValue() != 0) {
                bool = true;
              }
              localObject1 = Boolean.valueOf(bool);
            }
          }
          return localObject1;
        }
        finally
        {
          ((Cursor)localObject3).close();
        }
      }
      
      protected void finalize()
      {
        this.val$_statement.z();
      }
    };
    return localh.d(new String[] { "collection" }, false, (Callable)localObject);
  }
  
  public b.b<Integer, Collection> pageByServiceAndType(long paramLong, String paramString)
  {
    final m localm = m.j("SELECT * FROM collection WHERE serviceId=? AND type=? ORDER BY displayName, url", 2);
    localm.B(1, paramLong);
    if (paramString == null) {
      localm.X(2);
    } else {
      localm.l(2, paramString);
    }
    new b.b()
    {
      public a<Collection> create()
      {
        new a(CollectionDao_Impl.this.__db, localm, false, new String[] { "collection" })
        {
          protected List<Collection> convertRows(Cursor paramAnonymous2Cursor)
          {
            int i = b.c(paramAnonymous2Cursor, "id");
            int j = b.c(paramAnonymous2Cursor, "serviceId");
            int k = b.c(paramAnonymous2Cursor, "type");
            int m = b.c(paramAnonymous2Cursor, "url");
            int n = b.c(paramAnonymous2Cursor, "privWriteContent");
            int i1 = b.c(paramAnonymous2Cursor, "privUnbind");
            int i2 = b.c(paramAnonymous2Cursor, "forceReadOnly");
            int i3 = b.c(paramAnonymous2Cursor, "displayName");
            int i4 = b.c(paramAnonymous2Cursor, "description");
            int i5 = b.c(paramAnonymous2Cursor, "color");
            int i6 = b.c(paramAnonymous2Cursor, "timezone");
            int i7 = b.c(paramAnonymous2Cursor, "supportsVEVENT");
            int i8 = b.c(paramAnonymous2Cursor, "source");
            int i9 = b.c(paramAnonymous2Cursor, "sync");
            ArrayList localArrayList = new ArrayList(paramAnonymous2Cursor.getCount());
            while (paramAnonymous2Cursor.moveToNext())
            {
              long l1 = paramAnonymous2Cursor.getLong(i);
              long l2 = paramAnonymous2Cursor.getLong(j);
              String str1 = paramAnonymous2Cursor.getString(k);
              Object localObject1 = paramAnonymous2Cursor.getString(m);
              t localt = CollectionDao_Impl.this.__converters.stringToHttpUrl((String)localObject1);
              boolean bool1;
              if (paramAnonymous2Cursor.getInt(n) != 0) {
                bool1 = true;
              } else {
                bool1 = false;
              }
              boolean bool2;
              if (paramAnonymous2Cursor.getInt(i1) != 0) {
                bool2 = true;
              } else {
                bool2 = false;
              }
              boolean bool3;
              if (paramAnonymous2Cursor.getInt(i2) != 0) {
                bool3 = true;
              } else {
                bool3 = false;
              }
              String str2 = paramAnonymous2Cursor.getString(i3);
              String str3 = paramAnonymous2Cursor.getString(i4);
              boolean bool4 = paramAnonymous2Cursor.isNull(i5);
              Object localObject2 = null;
              if (bool4) {
                localObject1 = null;
              } else {
                localObject1 = Integer.valueOf(paramAnonymous2Cursor.getInt(i5));
              }
              String str4 = paramAnonymous2Cursor.getString(i6);
              if (paramAnonymous2Cursor.isNull(i7)) {
                localObject3 = null;
              } else {
                localObject3 = Integer.valueOf(paramAnonymous2Cursor.getInt(i7));
              }
              if (localObject3 == null) {}
              for (Object localObject3 = localObject2;; localObject3 = Boolean.valueOf(bool4))
              {
                break;
                if (((Integer)localObject3).intValue() != 0) {
                  bool4 = true;
                } else {
                  bool4 = false;
                }
              }
              localObject2 = paramAnonymous2Cursor.getString(i8);
              localObject2 = CollectionDao_Impl.this.__converters.stringToHttpUrl((String)localObject2);
              if (paramAnonymous2Cursor.getInt(i9) != 0) {
                bool4 = true;
              } else {
                bool4 = false;
              }
              localArrayList.add(new Collection(l1, l2, str1, localt, bool1, bool2, bool3, str2, str3, (Integer)localObject1, str4, (Boolean)localObject3, (t)localObject2, bool4));
            }
            return localArrayList;
          }
        };
      }
    };
  }
  
  public void update(Collection paramCollection)
  {
    this.__db.assertNotSuspendingTransaction();
    this.__db.beginTransaction();
    try
    {
      this.__updateAdapterOfCollection.handle(paramCollection);
      this.__db.setTransactionSuccessful();
      return;
    }
    finally
    {
      this.__db.endTransaction();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.syncer.model.CollectionDao_Impl
 * JD-Core Version:    0.7.0.1
 */
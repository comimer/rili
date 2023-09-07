package com.android.calendar.syncer.model;

import android.database.Cursor;
import androidx.room.RoomDatabase;
import androidx.room.m;
import java.util.ArrayList;
import java.util.List;
import k0.b;
import l0.f;
import okhttp3.t;

public final class HomeSetDao_Impl
  implements HomeSetDao
{
  private final Converters __converters = new Converters();
  private final RoomDatabase __db;
  private final androidx.room.c<HomeSet> __deletionAdapterOfHomeSet;
  private final androidx.room.d<HomeSet> __insertionAdapterOfHomeSet;
  private final androidx.room.d<HomeSet> __insertionAdapterOfHomeSet_1;
  private final androidx.room.c<HomeSet> __updateAdapterOfHomeSet;
  
  public HomeSetDao_Impl(RoomDatabase paramRoomDatabase)
  {
    this.__db = paramRoomDatabase;
    this.__insertionAdapterOfHomeSet = new androidx.room.d(paramRoomDatabase)
    {
      public void bind(f paramAnonymousf, HomeSet paramAnonymousHomeSet)
      {
        paramAnonymousf.B(1, paramAnonymousHomeSet.getId());
        paramAnonymousf.B(2, paramAnonymousHomeSet.getServiceId());
        String str = HomeSetDao_Impl.this.__converters.httpUrlToString(paramAnonymousHomeSet.getUrl());
        if (str == null) {
          paramAnonymousf.X(3);
        } else {
          paramAnonymousf.l(3, str);
        }
        paramAnonymousf.B(4, paramAnonymousHomeSet.getPrivBind());
        if (paramAnonymousHomeSet.getDisplayName() == null) {
          paramAnonymousf.X(5);
        } else {
          paramAnonymousf.l(5, paramAnonymousHomeSet.getDisplayName());
        }
      }
      
      public String createQuery()
      {
        return "INSERT OR ABORT INTO `homeset` (`id`,`serviceId`,`url`,`privBind`,`displayName`) VALUES (nullif(?, 0),?,?,?,?)";
      }
    };
    this.__insertionAdapterOfHomeSet_1 = new androidx.room.d(paramRoomDatabase)
    {
      public void bind(f paramAnonymousf, HomeSet paramAnonymousHomeSet)
      {
        paramAnonymousf.B(1, paramAnonymousHomeSet.getId());
        paramAnonymousf.B(2, paramAnonymousHomeSet.getServiceId());
        String str = HomeSetDao_Impl.this.__converters.httpUrlToString(paramAnonymousHomeSet.getUrl());
        if (str == null) {
          paramAnonymousf.X(3);
        } else {
          paramAnonymousf.l(3, str);
        }
        paramAnonymousf.B(4, paramAnonymousHomeSet.getPrivBind());
        if (paramAnonymousHomeSet.getDisplayName() == null) {
          paramAnonymousf.X(5);
        } else {
          paramAnonymousf.l(5, paramAnonymousHomeSet.getDisplayName());
        }
      }
      
      public String createQuery()
      {
        return "INSERT OR REPLACE INTO `homeset` (`id`,`serviceId`,`url`,`privBind`,`displayName`) VALUES (nullif(?, 0),?,?,?,?)";
      }
    };
    this.__deletionAdapterOfHomeSet = new androidx.room.c(paramRoomDatabase)
    {
      public void bind(f paramAnonymousf, HomeSet paramAnonymousHomeSet)
      {
        paramAnonymousf.B(1, paramAnonymousHomeSet.getId());
      }
      
      public String createQuery()
      {
        return "DELETE FROM `homeset` WHERE `id` = ?";
      }
    };
    this.__updateAdapterOfHomeSet = new androidx.room.c(paramRoomDatabase)
    {
      public void bind(f paramAnonymousf, HomeSet paramAnonymousHomeSet)
      {
        paramAnonymousf.B(1, paramAnonymousHomeSet.getId());
        paramAnonymousf.B(2, paramAnonymousHomeSet.getServiceId());
        String str = HomeSetDao_Impl.this.__converters.httpUrlToString(paramAnonymousHomeSet.getUrl());
        if (str == null) {
          paramAnonymousf.X(3);
        } else {
          paramAnonymousf.l(3, str);
        }
        paramAnonymousf.B(4, paramAnonymousHomeSet.getPrivBind());
        if (paramAnonymousHomeSet.getDisplayName() == null) {
          paramAnonymousf.X(5);
        } else {
          paramAnonymousf.l(5, paramAnonymousHomeSet.getDisplayName());
        }
        paramAnonymousf.B(6, paramAnonymousHomeSet.getId());
      }
      
      public String createQuery()
      {
        return "UPDATE OR ABORT `homeset` SET `id` = ?,`serviceId` = ?,`url` = ?,`privBind` = ?,`displayName` = ? WHERE `id` = ?";
      }
    };
  }
  
  public void delete(HomeSet paramHomeSet)
  {
    this.__db.assertNotSuspendingTransaction();
    this.__db.beginTransaction();
    try
    {
      this.__deletionAdapterOfHomeSet.handle(paramHomeSet);
      this.__db.setTransactionSuccessful();
      return;
    }
    finally
    {
      this.__db.endTransaction();
    }
  }
  
  public List<HomeSet> getBindableByService(long paramLong)
  {
    m localm = m.j("SELECT * FROM homeset WHERE serviceId=? AND privBind", 1);
    localm.B(1, paramLong);
    this.__db.assertNotSuspendingTransaction();
    Cursor localCursor = k0.c.b(this.__db, localm, false, null);
    try
    {
      int i = b.c(localCursor, "id");
      int j = b.c(localCursor, "serviceId");
      int k = b.c(localCursor, "url");
      int m = b.c(localCursor, "privBind");
      int n = b.c(localCursor, "displayName");
      ArrayList localArrayList = new java/util/ArrayList;
      localArrayList.<init>(localCursor.getCount());
      while (localCursor.moveToNext())
      {
        long l = localCursor.getLong(i);
        paramLong = localCursor.getLong(j);
        String str = localCursor.getString(k);
        t localt = this.__converters.stringToHttpUrl(str);
        boolean bool;
        if (localCursor.getInt(m) != 0) {
          bool = true;
        } else {
          bool = false;
        }
        str = localCursor.getString(n);
        HomeSet localHomeSet = new com/android/calendar/syncer/model/HomeSet;
        localHomeSet.<init>(l, paramLong, localt, bool, str);
        localArrayList.add(localHomeSet);
      }
      return localArrayList;
    }
    finally
    {
      localCursor.close();
      localm.z();
    }
  }
  
  public List<HomeSet> getByService(long paramLong)
  {
    m localm = m.j("SELECT * FROM homeset WHERE serviceId=?", 1);
    localm.B(1, paramLong);
    this.__db.assertNotSuspendingTransaction();
    Cursor localCursor = k0.c.b(this.__db, localm, false, null);
    try
    {
      int i = b.c(localCursor, "id");
      int j = b.c(localCursor, "serviceId");
      int k = b.c(localCursor, "url");
      int m = b.c(localCursor, "privBind");
      int n = b.c(localCursor, "displayName");
      ArrayList localArrayList = new java/util/ArrayList;
      localArrayList.<init>(localCursor.getCount());
      while (localCursor.moveToNext())
      {
        paramLong = localCursor.getLong(i);
        long l = localCursor.getLong(j);
        String str = localCursor.getString(k);
        t localt = this.__converters.stringToHttpUrl(str);
        boolean bool;
        if (localCursor.getInt(m) != 0) {
          bool = true;
        } else {
          bool = false;
        }
        str = localCursor.getString(n);
        HomeSet localHomeSet = new com/android/calendar/syncer/model/HomeSet;
        localHomeSet.<init>(paramLong, l, localt, bool, str);
        localArrayList.add(localHomeSet);
      }
      return localArrayList;
    }
    finally
    {
      localCursor.close();
      localm.z();
    }
  }
  
  public void insert(List<? extends HomeSet> paramList)
  {
    this.__db.assertNotSuspendingTransaction();
    this.__db.beginTransaction();
    try
    {
      this.__insertionAdapterOfHomeSet.insert(paramList);
      this.__db.setTransactionSuccessful();
      return;
    }
    finally
    {
      this.__db.endTransaction();
    }
  }
  
  public long insertOrReplace(HomeSet paramHomeSet)
  {
    this.__db.assertNotSuspendingTransaction();
    this.__db.beginTransaction();
    try
    {
      long l = this.__insertionAdapterOfHomeSet_1.insertAndReturnId(paramHomeSet);
      this.__db.setTransactionSuccessful();
      return l;
    }
    finally
    {
      this.__db.endTransaction();
    }
  }
  
  public void update(HomeSet paramHomeSet)
  {
    this.__db.assertNotSuspendingTransaction();
    this.__db.beginTransaction();
    try
    {
      this.__updateAdapterOfHomeSet.handle(paramHomeSet);
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
 * Qualified Name:     com.android.calendar.syncer.model.HomeSetDao_Impl
 * JD-Core Version:    0.7.0.1
 */
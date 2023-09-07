package com.android.calendar.syncer.model;

import android.database.Cursor;
import androidx.room.RoomDatabase;
import androidx.room.m;
import androidx.room.q;
import java.util.ArrayList;
import java.util.List;
import k0.b;
import k0.c;
import okhttp3.t;

public final class ServiceDao_Impl
  implements ServiceDao
{
  private final Converters __converters = new Converters();
  private final RoomDatabase __db;
  private final androidx.room.d<Service> __insertionAdapterOfService;
  private final q __preparedStmtOfDeleteAll;
  private final q __preparedStmtOfRenameAccount;
  
  public ServiceDao_Impl(RoomDatabase paramRoomDatabase)
  {
    this.__db = paramRoomDatabase;
    this.__insertionAdapterOfService = new androidx.room.d(paramRoomDatabase)
    {
      public void bind(l0.f paramAnonymousf, Service paramAnonymousService)
      {
        paramAnonymousf.B(1, paramAnonymousService.getId());
        if (paramAnonymousService.getAccountName() == null) {
          paramAnonymousf.X(2);
        } else {
          paramAnonymousf.l(2, paramAnonymousService.getAccountName());
        }
        if (paramAnonymousService.getType() == null) {
          paramAnonymousf.X(3);
        } else {
          paramAnonymousf.l(3, paramAnonymousService.getType());
        }
        paramAnonymousService = ServiceDao_Impl.this.__converters.httpUrlToString(paramAnonymousService.getPrincipal());
        if (paramAnonymousService == null) {
          paramAnonymousf.X(4);
        } else {
          paramAnonymousf.l(4, paramAnonymousService);
        }
      }
      
      public String createQuery()
      {
        return "INSERT OR REPLACE INTO `service` (`id`,`accountName`,`type`,`principal`) VALUES (nullif(?, 0),?,?,?)";
      }
    };
    this.__preparedStmtOfDeleteAll = new q(paramRoomDatabase)
    {
      public String createQuery()
      {
        return "DELETE FROM service";
      }
    };
    this.__preparedStmtOfRenameAccount = new q(paramRoomDatabase)
    {
      public String createQuery()
      {
        return "UPDATE service SET accountName=? WHERE accountName=?";
      }
    };
  }
  
  public void deleteAll()
  {
    this.__db.assertNotSuspendingTransaction();
    l0.f localf = this.__preparedStmtOfDeleteAll.acquire();
    this.__db.beginTransaction();
    try
    {
      localf.o();
      this.__db.setTransactionSuccessful();
      return;
    }
    finally
    {
      this.__db.endTransaction();
      this.__preparedStmtOfDeleteAll.release(localf);
    }
  }
  
  public void deleteExceptAccounts(String[] paramArrayOfString)
  {
    this.__db.assertNotSuspendingTransaction();
    Object localObject = k0.f.b();
    ((StringBuilder)localObject).append("DELETE FROM service WHERE accountName NOT IN (");
    k0.f.a((StringBuilder)localObject, paramArrayOfString.length);
    ((StringBuilder)localObject).append(")");
    localObject = ((StringBuilder)localObject).toString();
    localObject = this.__db.compileStatement((String)localObject);
    int i = paramArrayOfString.length;
    int j = 1;
    for (int k = 0; k < i; k++)
    {
      String str = paramArrayOfString[k];
      if (str == null) {
        ((l0.d)localObject).X(j);
      } else {
        ((l0.d)localObject).l(j, str);
      }
      j++;
    }
    this.__db.beginTransaction();
    try
    {
      ((l0.f)localObject).o();
      this.__db.setTransactionSuccessful();
      return;
    }
    finally
    {
      this.__db.endTransaction();
    }
  }
  
  public Service get(long paramLong)
  {
    m localm = m.j("SELECT * FROM service WHERE id=?", 1);
    localm.B(1, paramLong);
    this.__db.assertNotSuspendingTransaction();
    Object localObject1 = this.__db;
    Object localObject2 = null;
    localObject1 = c.b((RoomDatabase)localObject1, localm, false, null);
    try
    {
      int i = b.c((Cursor)localObject1, "id");
      int j = b.c((Cursor)localObject1, "accountName");
      int k = b.c((Cursor)localObject1, "type");
      int m = b.c((Cursor)localObject1, "principal");
      if (((Cursor)localObject1).moveToFirst())
      {
        paramLong = ((Cursor)localObject1).getLong(i);
        String str1 = ((Cursor)localObject1).getString(j);
        localObject2 = ((Cursor)localObject1).getString(k);
        String str2 = ((Cursor)localObject1).getString(m);
        localObject2 = new Service(paramLong, str1, (String)localObject2, this.__converters.stringToHttpUrl(str2));
      }
      return localObject2;
    }
    finally
    {
      ((Cursor)localObject1).close();
      localm.z();
    }
  }
  
  public Service getByAccountAndType(String paramString1, String paramString2)
  {
    m localm = m.j("SELECT * FROM service WHERE accountName=? AND type=?", 2);
    if (paramString1 == null) {
      localm.X(1);
    } else {
      localm.l(1, paramString1);
    }
    if (paramString2 == null) {
      localm.X(2);
    } else {
      localm.l(2, paramString2);
    }
    this.__db.assertNotSuspendingTransaction();
    paramString2 = this.__db;
    paramString1 = null;
    paramString2 = c.b(paramString2, localm, false, null);
    try
    {
      int i = b.c(paramString2, "id");
      int j = b.c(paramString2, "accountName");
      int k = b.c(paramString2, "type");
      int m = b.c(paramString2, "principal");
      if (paramString2.moveToFirst())
      {
        long l = paramString2.getLong(i);
        paramString1 = paramString2.getString(j);
        String str1 = paramString2.getString(k);
        String str2 = paramString2.getString(m);
        paramString1 = new Service(l, paramString1, str1, this.__converters.stringToHttpUrl(str2));
      }
      return paramString1;
    }
    finally
    {
      paramString2.close();
      localm.z();
    }
  }
  
  public List<Service> getByType(String paramString)
  {
    m localm = m.j("SELECT * FROM service WHERE type=?", 1);
    if (paramString == null) {
      localm.X(1);
    } else {
      localm.l(1, paramString);
    }
    this.__db.assertNotSuspendingTransaction();
    paramString = c.b(this.__db, localm, false, null);
    try
    {
      int i = b.c(paramString, "id");
      int j = b.c(paramString, "accountName");
      int k = b.c(paramString, "type");
      int m = b.c(paramString, "principal");
      ArrayList localArrayList = new java/util/ArrayList;
      localArrayList.<init>(paramString.getCount());
      while (paramString.moveToNext())
      {
        long l = paramString.getLong(i);
        String str1 = paramString.getString(j);
        String str2 = paramString.getString(k);
        Object localObject2 = paramString.getString(m);
        t localt = this.__converters.stringToHttpUrl((String)localObject2);
        localObject2 = new com/android/calendar/syncer/model/Service;
        ((Service)localObject2).<init>(l, str1, str2, localt);
        localArrayList.add(localObject2);
      }
      return localArrayList;
    }
    finally
    {
      paramString.close();
      localm.z();
    }
  }
  
  public Long getIdByAccountAndType(String paramString1, String paramString2)
  {
    m localm = m.j("SELECT id FROM service WHERE accountName=? AND type=?", 2);
    if (paramString1 == null) {
      localm.X(1);
    } else {
      localm.l(1, paramString1);
    }
    if (paramString2 == null) {
      localm.X(2);
    } else {
      localm.l(2, paramString2);
    }
    this.__db.assertNotSuspendingTransaction();
    paramString1 = this.__db;
    paramString2 = null;
    Cursor localCursor = c.b(paramString1, localm, false, null);
    paramString1 = paramString2;
    try
    {
      if (localCursor.moveToFirst()) {
        if (localCursor.isNull(0)) {
          paramString1 = paramString2;
        } else {
          paramString1 = Long.valueOf(localCursor.getLong(0));
        }
      }
      return paramString1;
    }
    finally
    {
      localCursor.close();
      localm.z();
    }
  }
  
  public long insertOrReplace(Service paramService)
  {
    this.__db.assertNotSuspendingTransaction();
    this.__db.beginTransaction();
    try
    {
      long l = this.__insertionAdapterOfService.insertAndReturnId(paramService);
      this.__db.setTransactionSuccessful();
      return l;
    }
    finally
    {
      this.__db.endTransaction();
    }
  }
  
  public void renameAccount(String paramString1, String paramString2)
  {
    this.__db.assertNotSuspendingTransaction();
    l0.f localf = this.__preparedStmtOfRenameAccount.acquire();
    if (paramString2 == null) {
      localf.X(1);
    } else {
      localf.l(1, paramString2);
    }
    if (paramString1 == null) {
      localf.X(2);
    } else {
      localf.l(2, paramString1);
    }
    this.__db.beginTransaction();
    try
    {
      localf.o();
      this.__db.setTransactionSuccessful();
      return;
    }
    finally
    {
      this.__db.endTransaction();
      this.__preparedStmtOfRenameAccount.release(localf);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.syncer.model.ServiceDao_Impl
 * JD-Core Version:    0.7.0.1
 */
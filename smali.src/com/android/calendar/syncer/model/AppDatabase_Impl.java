package com.android.calendar.syncer.model;

import android.database.Cursor;
import androidx.room.RoomDatabase;
import androidx.room.RoomDatabase.b;
import androidx.room.h;
import androidx.room.l;
import androidx.room.l.a;
import androidx.room.l.b;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import k0.g;
import k0.g.a;
import k0.g.d;
import l0.c.a;
import l0.c.b;
import l0.c.b.a;
import l0.c.c;

public final class AppDatabase_Impl
  extends AppDatabase
{
  private volatile CollectionDao _collectionDao;
  private volatile HomeSetDao _homeSetDao;
  private volatile ServiceDao _serviceDao;
  
  public void clearAllTables()
  {
    super.assertNotMainThread();
    l0.b localb = super.getOpenHelper().K();
    try
    {
      super.beginTransaction();
      localb.k("DELETE FROM `service`");
      localb.k("DELETE FROM `homeset`");
      localb.k("DELETE FROM `collection`");
      super.setTransactionSuccessful();
      return;
    }
    finally
    {
      super.endTransaction();
      localb.M("PRAGMA wal_checkpoint(FULL)").close();
      if (!localb.f0()) {
        localb.k("VACUUM");
      }
    }
  }
  
  public CollectionDao collectionDao()
  {
    if (this._collectionDao != null) {
      return this._collectionDao;
    }
    try
    {
      if (this._collectionDao == null)
      {
        localObject1 = new com/android/calendar/syncer/model/CollectionDao_Impl;
        ((CollectionDao_Impl)localObject1).<init>(this);
        this._collectionDao = ((CollectionDao)localObject1);
      }
      Object localObject1 = this._collectionDao;
      return localObject1;
    }
    finally {}
  }
  
  protected h createInvalidationTracker()
  {
    return new h(this, new HashMap(0), new HashMap(0), new String[] { "service", "homeset", "collection" });
  }
  
  protected l0.c createOpenHelper(androidx.room.b paramb)
  {
    Object localObject = new l(paramb, new l.a(1)
    {
      public void createAllTables(l0.b paramAnonymousb)
      {
        paramAnonymousb.k("CREATE TABLE IF NOT EXISTS `service` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `accountName` TEXT NOT NULL, `type` TEXT NOT NULL, `principal` TEXT)");
        paramAnonymousb.k("CREATE UNIQUE INDEX IF NOT EXISTS `index_service_accountName_type` ON `service` (`accountName`, `type`)");
        paramAnonymousb.k("CREATE TABLE IF NOT EXISTS `homeset` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `serviceId` INTEGER NOT NULL, `url` TEXT NOT NULL, `privBind` INTEGER NOT NULL, `displayName` TEXT)");
        paramAnonymousb.k("CREATE UNIQUE INDEX IF NOT EXISTS `index_homeset_serviceId_url` ON `homeset` (`serviceId`, `url`)");
        paramAnonymousb.k("CREATE TABLE IF NOT EXISTS `collection` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `serviceId` INTEGER NOT NULL, `type` TEXT NOT NULL, `url` TEXT NOT NULL, `privWriteContent` INTEGER NOT NULL, `privUnbind` INTEGER NOT NULL, `forceReadOnly` INTEGER NOT NULL, `displayName` TEXT, `description` TEXT, `color` INTEGER, `timezone` TEXT, `supportsVEVENT` INTEGER, `source` TEXT, `sync` INTEGER NOT NULL)");
        paramAnonymousb.k("CREATE INDEX IF NOT EXISTS `index_collection_serviceId_type` ON `collection` (`serviceId`, `type`)");
        paramAnonymousb.k("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
        paramAnonymousb.k("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '8474abe28133a31bdbafeacb88f5aff1')");
      }
      
      public void dropAllTables(l0.b paramAnonymousb)
      {
        paramAnonymousb.k("DROP TABLE IF EXISTS `service`");
        paramAnonymousb.k("DROP TABLE IF EXISTS `homeset`");
        paramAnonymousb.k("DROP TABLE IF EXISTS `collection`");
        if (AppDatabase_Impl.access$000(AppDatabase_Impl.this) != null)
        {
          int i = 0;
          int j = AppDatabase_Impl.access$100(AppDatabase_Impl.this).size();
          while (i < j)
          {
            ((RoomDatabase.b)AppDatabase_Impl.access$200(AppDatabase_Impl.this).get(i)).b(paramAnonymousb);
            i++;
          }
        }
      }
      
      protected void onCreate(l0.b paramAnonymousb)
      {
        if (AppDatabase_Impl.access$300(AppDatabase_Impl.this) != null)
        {
          int i = 0;
          int j = AppDatabase_Impl.access$400(AppDatabase_Impl.this).size();
          while (i < j)
          {
            ((RoomDatabase.b)AppDatabase_Impl.access$500(AppDatabase_Impl.this).get(i)).a(paramAnonymousb);
            i++;
          }
        }
      }
      
      public void onOpen(l0.b paramAnonymousb)
      {
        AppDatabase_Impl.access$602(AppDatabase_Impl.this, paramAnonymousb);
        AppDatabase_Impl.this.internalInitInvalidationTracker(paramAnonymousb);
        if (AppDatabase_Impl.access$800(AppDatabase_Impl.this) != null)
        {
          int i = 0;
          int j = AppDatabase_Impl.access$900(AppDatabase_Impl.this).size();
          while (i < j)
          {
            ((RoomDatabase.b)AppDatabase_Impl.access$1000(AppDatabase_Impl.this).get(i)).c(paramAnonymousb);
            i++;
          }
        }
      }
      
      public void onPostMigrate(l0.b paramAnonymousb) {}
      
      public void onPreMigrate(l0.b paramAnonymousb)
      {
        k0.c.a(paramAnonymousb);
      }
      
      protected l.b onValidateSchema(l0.b paramAnonymousb)
      {
        Object localObject1 = new HashMap(4);
        ((HashMap)localObject1).put("id", new g.a("id", "INTEGER", true, 1, null, 1));
        ((HashMap)localObject1).put("accountName", new g.a("accountName", "TEXT", true, 0, null, 1));
        ((HashMap)localObject1).put("type", new g.a("type", "TEXT", true, 0, null, 1));
        ((HashMap)localObject1).put("principal", new g.a("principal", "TEXT", false, 0, null, 1));
        Object localObject2 = new HashSet(0);
        Object localObject3 = new HashSet(1);
        ((HashSet)localObject3).add(new g.d("index_service_accountName_type", true, Arrays.asList(new String[] { "accountName", "type" })));
        localObject2 = new g("service", (Map)localObject1, (Set)localObject2, (Set)localObject3);
        localObject3 = g.a(paramAnonymousb, "service");
        if (!((g)localObject2).equals(localObject3))
        {
          paramAnonymousb = new StringBuilder();
          paramAnonymousb.append("service(com.android.calendar.syncer.model.Service).\n Expected:\n");
          paramAnonymousb.append(localObject2);
          paramAnonymousb.append("\n Found:\n");
          paramAnonymousb.append(localObject3);
          return new l.b(false, paramAnonymousb.toString());
        }
        localObject1 = new HashMap(5);
        ((HashMap)localObject1).put("id", new g.a("id", "INTEGER", true, 1, null, 1));
        ((HashMap)localObject1).put("serviceId", new g.a("serviceId", "INTEGER", true, 0, null, 1));
        ((HashMap)localObject1).put("url", new g.a("url", "TEXT", true, 0, null, 1));
        ((HashMap)localObject1).put("privBind", new g.a("privBind", "INTEGER", true, 0, null, 1));
        ((HashMap)localObject1).put("displayName", new g.a("displayName", "TEXT", false, 0, null, 1));
        localObject3 = new HashSet(0);
        localObject2 = new HashSet(1);
        ((HashSet)localObject2).add(new g.d("index_homeset_serviceId_url", true, Arrays.asList(new String[] { "serviceId", "url" })));
        localObject3 = new g("homeset", (Map)localObject1, (Set)localObject3, (Set)localObject2);
        localObject2 = g.a(paramAnonymousb, "homeset");
        if (!((g)localObject3).equals(localObject2))
        {
          paramAnonymousb = new StringBuilder();
          paramAnonymousb.append("homeset(com.android.calendar.syncer.model.HomeSet).\n Expected:\n");
          paramAnonymousb.append(localObject3);
          paramAnonymousb.append("\n Found:\n");
          paramAnonymousb.append(localObject2);
          return new l.b(false, paramAnonymousb.toString());
        }
        localObject3 = new HashMap(14);
        ((HashMap)localObject3).put("id", new g.a("id", "INTEGER", true, 1, null, 1));
        ((HashMap)localObject3).put("serviceId", new g.a("serviceId", "INTEGER", true, 0, null, 1));
        ((HashMap)localObject3).put("type", new g.a("type", "TEXT", true, 0, null, 1));
        ((HashMap)localObject3).put("url", new g.a("url", "TEXT", true, 0, null, 1));
        ((HashMap)localObject3).put("privWriteContent", new g.a("privWriteContent", "INTEGER", true, 0, null, 1));
        ((HashMap)localObject3).put("privUnbind", new g.a("privUnbind", "INTEGER", true, 0, null, 1));
        ((HashMap)localObject3).put("forceReadOnly", new g.a("forceReadOnly", "INTEGER", true, 0, null, 1));
        ((HashMap)localObject3).put("displayName", new g.a("displayName", "TEXT", false, 0, null, 1));
        ((HashMap)localObject3).put("description", new g.a("description", "TEXT", false, 0, null, 1));
        ((HashMap)localObject3).put("color", new g.a("color", "INTEGER", false, 0, null, 1));
        ((HashMap)localObject3).put("timezone", new g.a("timezone", "TEXT", false, 0, null, 1));
        ((HashMap)localObject3).put("supportsVEVENT", new g.a("supportsVEVENT", "INTEGER", false, 0, null, 1));
        ((HashMap)localObject3).put("source", new g.a("source", "TEXT", false, 0, null, 1));
        ((HashMap)localObject3).put("sync", new g.a("sync", "INTEGER", true, 0, null, 1));
        localObject1 = new HashSet(0);
        localObject2 = new HashSet(1);
        ((HashSet)localObject2).add(new g.d("index_collection_serviceId_type", false, Arrays.asList(new String[] { "serviceId", "type" })));
        localObject3 = new g("collection", (Map)localObject3, (Set)localObject1, (Set)localObject2);
        localObject2 = g.a(paramAnonymousb, "collection");
        if (!((g)localObject3).equals(localObject2))
        {
          paramAnonymousb = new StringBuilder();
          paramAnonymousb.append("collection(com.android.calendar.syncer.model.Collection).\n Expected:\n");
          paramAnonymousb.append(localObject3);
          paramAnonymousb.append("\n Found:\n");
          paramAnonymousb.append(localObject2);
          return new l.b(false, paramAnonymousb.toString());
        }
        return new l.b(true, null);
      }
    }, "8474abe28133a31bdbafeacb88f5aff1", "f9855895d854a1068f013f25200dadda");
    localObject = c.b.a(paramb.b).c(paramb.c).b((c.a)localObject).a();
    return paramb.a.a((c.b)localObject);
  }
  
  public HomeSetDao homeSetDao()
  {
    if (this._homeSetDao != null) {
      return this._homeSetDao;
    }
    try
    {
      if (this._homeSetDao == null)
      {
        localObject1 = new com/android/calendar/syncer/model/HomeSetDao_Impl;
        ((HomeSetDao_Impl)localObject1).<init>(this);
        this._homeSetDao = ((HomeSetDao)localObject1);
      }
      Object localObject1 = this._homeSetDao;
      return localObject1;
    }
    finally {}
  }
  
  public ServiceDao serviceDao()
  {
    if (this._serviceDao != null) {
      return this._serviceDao;
    }
    try
    {
      if (this._serviceDao == null)
      {
        localObject1 = new com/android/calendar/syncer/model/ServiceDao_Impl;
        ((ServiceDao_Impl)localObject1).<init>(this);
        this._serviceDao = ((ServiceDao)localObject1);
      }
      Object localObject1 = this._serviceDao;
      return localObject1;
    }
    finally {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.syncer.model.AppDatabase_Impl
 * JD-Core Version:    0.7.0.1
 */
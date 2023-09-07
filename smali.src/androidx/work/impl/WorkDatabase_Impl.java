package androidx.work.impl;

import android.database.Cursor;
import androidx.room.RoomDatabase;
import androidx.room.RoomDatabase.b;
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
import k0.g.b;
import k0.g.d;
import l0.c.a;
import l0.c.b;
import l0.c.b.a;
import l0.c.c;
import x0.e;
import x0.f;
import x0.i;
import x0.k;
import x0.n;
import x0.o;
import x0.q;
import x0.r;
import x0.t;
import x0.u;

public final class WorkDatabase_Impl
  extends WorkDatabase
{
  private volatile q b;
  private volatile x0.b c;
  private volatile t d;
  private volatile x0.h e;
  private volatile k f;
  private volatile n g;
  private volatile e h;
  
  public x0.b b()
  {
    if (this.c != null) {
      return this.c;
    }
    try
    {
      if (this.c == null)
      {
        localObject1 = new x0/c;
        ((x0.c)localObject1).<init>(this);
        this.c = ((x0.b)localObject1);
      }
      Object localObject1 = this.c;
      return localObject1;
    }
    finally {}
  }
  
  public void clearAllTables()
  {
    super.assertNotMainThread();
    l0.b localb = super.getOpenHelper().K();
    try
    {
      super.beginTransaction();
      localb.k("PRAGMA defer_foreign_keys = TRUE");
      localb.k("DELETE FROM `Dependency`");
      localb.k("DELETE FROM `WorkSpec`");
      localb.k("DELETE FROM `WorkTag`");
      localb.k("DELETE FROM `SystemIdInfo`");
      localb.k("DELETE FROM `WorkName`");
      localb.k("DELETE FROM `WorkProgress`");
      localb.k("DELETE FROM `Preference`");
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
  
  protected androidx.room.h createInvalidationTracker()
  {
    return new androidx.room.h(this, new HashMap(0), new HashMap(0), new String[] { "Dependency", "WorkSpec", "WorkTag", "SystemIdInfo", "WorkName", "WorkProgress", "Preference" });
  }
  
  protected l0.c createOpenHelper(androidx.room.b paramb)
  {
    Object localObject = new androidx.room.l(paramb, new a(12), "c103703e120ae8cc73c9248622f3cd1e", "49f946663a8deb7054212b8adda248c6");
    localObject = c.b.a(paramb.b).c(paramb.c).b((c.a)localObject).a();
    return paramb.a.a((c.b)localObject);
  }
  
  public e f()
  {
    if (this.h != null) {
      return this.h;
    }
    try
    {
      if (this.h == null)
      {
        localObject1 = new x0/f;
        ((f)localObject1).<init>(this);
        this.h = ((e)localObject1);
      }
      Object localObject1 = this.h;
      return localObject1;
    }
    finally {}
  }
  
  public x0.h g()
  {
    if (this.e != null) {
      return this.e;
    }
    try
    {
      if (this.e == null)
      {
        localObject1 = new x0/i;
        ((i)localObject1).<init>(this);
        this.e = ((x0.h)localObject1);
      }
      Object localObject1 = this.e;
      return localObject1;
    }
    finally {}
  }
  
  public k h()
  {
    if (this.f != null) {
      return this.f;
    }
    try
    {
      if (this.f == null)
      {
        localObject1 = new x0/l;
        ((x0.l)localObject1).<init>(this);
        this.f = ((k)localObject1);
      }
      Object localObject1 = this.f;
      return localObject1;
    }
    finally {}
  }
  
  public n i()
  {
    if (this.g != null) {
      return this.g;
    }
    try
    {
      if (this.g == null)
      {
        localObject1 = new x0/o;
        ((o)localObject1).<init>(this);
        this.g = ((n)localObject1);
      }
      Object localObject1 = this.g;
      return localObject1;
    }
    finally {}
  }
  
  public q j()
  {
    if (this.b != null) {
      return this.b;
    }
    try
    {
      if (this.b == null)
      {
        localObject1 = new x0/r;
        ((r)localObject1).<init>(this);
        this.b = ((q)localObject1);
      }
      Object localObject1 = this.b;
      return localObject1;
    }
    finally {}
  }
  
  public t k()
  {
    if (this.d != null) {
      return this.d;
    }
    try
    {
      if (this.d == null)
      {
        localObject1 = new x0/u;
        ((u)localObject1).<init>(this);
        this.d = ((t)localObject1);
      }
      Object localObject1 = this.d;
      return localObject1;
    }
    finally {}
  }
  
  class a
    extends l.a
  {
    a(int paramInt)
    {
      super();
    }
    
    public void createAllTables(l0.b paramb)
    {
      paramb.k("CREATE TABLE IF NOT EXISTS `Dependency` (`work_spec_id` TEXT NOT NULL, `prerequisite_id` TEXT NOT NULL, PRIMARY KEY(`work_spec_id`, `prerequisite_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`prerequisite_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
      paramb.k("CREATE INDEX IF NOT EXISTS `index_Dependency_work_spec_id` ON `Dependency` (`work_spec_id`)");
      paramb.k("CREATE INDEX IF NOT EXISTS `index_Dependency_prerequisite_id` ON `Dependency` (`prerequisite_id`)");
      paramb.k("CREATE TABLE IF NOT EXISTS `WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `period_start_time` INTEGER NOT NULL, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `out_of_quota_policy` INTEGER NOT NULL, `required_network_type` INTEGER, `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB, PRIMARY KEY(`id`))");
      paramb.k("CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)");
      paramb.k("CREATE INDEX IF NOT EXISTS `index_WorkSpec_period_start_time` ON `WorkSpec` (`period_start_time`)");
      paramb.k("CREATE TABLE IF NOT EXISTS `WorkTag` (`tag` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`tag`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
      paramb.k("CREATE INDEX IF NOT EXISTS `index_WorkTag_work_spec_id` ON `WorkTag` (`work_spec_id`)");
      paramb.k("CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
      paramb.k("CREATE TABLE IF NOT EXISTS `WorkName` (`name` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`name`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
      paramb.k("CREATE INDEX IF NOT EXISTS `index_WorkName_work_spec_id` ON `WorkName` (`work_spec_id`)");
      paramb.k("CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
      paramb.k("CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))");
      paramb.k("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
      paramb.k("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'c103703e120ae8cc73c9248622f3cd1e')");
    }
    
    public void dropAllTables(l0.b paramb)
    {
      paramb.k("DROP TABLE IF EXISTS `Dependency`");
      paramb.k("DROP TABLE IF EXISTS `WorkSpec`");
      paramb.k("DROP TABLE IF EXISTS `WorkTag`");
      paramb.k("DROP TABLE IF EXISTS `SystemIdInfo`");
      paramb.k("DROP TABLE IF EXISTS `WorkName`");
      paramb.k("DROP TABLE IF EXISTS `WorkProgress`");
      paramb.k("DROP TABLE IF EXISTS `Preference`");
      if (WorkDatabase_Impl.l(WorkDatabase_Impl.this) != null)
      {
        int i = 0;
        int j = WorkDatabase_Impl.m(WorkDatabase_Impl.this).size();
        while (i < j)
        {
          ((RoomDatabase.b)WorkDatabase_Impl.o(WorkDatabase_Impl.this).get(i)).b(paramb);
          i++;
        }
      }
    }
    
    protected void onCreate(l0.b paramb)
    {
      if (WorkDatabase_Impl.p(WorkDatabase_Impl.this) != null)
      {
        int i = 0;
        int j = WorkDatabase_Impl.q(WorkDatabase_Impl.this).size();
        while (i < j)
        {
          ((RoomDatabase.b)WorkDatabase_Impl.r(WorkDatabase_Impl.this).get(i)).a(paramb);
          i++;
        }
      }
    }
    
    public void onOpen(l0.b paramb)
    {
      WorkDatabase_Impl.s(WorkDatabase_Impl.this, paramb);
      paramb.k("PRAGMA foreign_keys = ON");
      WorkDatabase_Impl.t(WorkDatabase_Impl.this, paramb);
      if (WorkDatabase_Impl.u(WorkDatabase_Impl.this) != null)
      {
        int i = 0;
        int j = WorkDatabase_Impl.v(WorkDatabase_Impl.this).size();
        while (i < j)
        {
          ((RoomDatabase.b)WorkDatabase_Impl.n(WorkDatabase_Impl.this).get(i)).c(paramb);
          i++;
        }
      }
    }
    
    public void onPostMigrate(l0.b paramb) {}
    
    public void onPreMigrate(l0.b paramb)
    {
      k0.c.a(paramb);
    }
    
    protected l.b onValidateSchema(l0.b paramb)
    {
      Object localObject1 = new HashMap(2);
      ((HashMap)localObject1).put("work_spec_id", new g.a("work_spec_id", "TEXT", true, 1, null, 1));
      ((HashMap)localObject1).put("prerequisite_id", new g.a("prerequisite_id", "TEXT", true, 2, null, 1));
      Object localObject2 = new HashSet(2);
      ((HashSet)localObject2).add(new g.b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList(new String[] { "work_spec_id" }), Arrays.asList(new String[] { "id" })));
      ((HashSet)localObject2).add(new g.b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList(new String[] { "prerequisite_id" }), Arrays.asList(new String[] { "id" })));
      Object localObject3 = new HashSet(2);
      ((HashSet)localObject3).add(new g.d("index_Dependency_work_spec_id", false, Arrays.asList(new String[] { "work_spec_id" })));
      ((HashSet)localObject3).add(new g.d("index_Dependency_prerequisite_id", false, Arrays.asList(new String[] { "prerequisite_id" })));
      localObject2 = new g("Dependency", (Map)localObject1, (Set)localObject2, (Set)localObject3);
      localObject3 = g.a(paramb, "Dependency");
      if (!((g)localObject2).equals(localObject3))
      {
        paramb = new StringBuilder();
        paramb.append("Dependency(androidx.work.impl.model.Dependency).\n Expected:\n");
        paramb.append(localObject2);
        paramb.append("\n Found:\n");
        paramb.append(localObject3);
        return new l.b(false, paramb.toString());
      }
      localObject2 = new HashMap(25);
      ((HashMap)localObject2).put("id", new g.a("id", "TEXT", true, 1, null, 1));
      ((HashMap)localObject2).put("state", new g.a("state", "INTEGER", true, 0, null, 1));
      ((HashMap)localObject2).put("worker_class_name", new g.a("worker_class_name", "TEXT", true, 0, null, 1));
      ((HashMap)localObject2).put("input_merger_class_name", new g.a("input_merger_class_name", "TEXT", false, 0, null, 1));
      ((HashMap)localObject2).put("input", new g.a("input", "BLOB", true, 0, null, 1));
      ((HashMap)localObject2).put("output", new g.a("output", "BLOB", true, 0, null, 1));
      ((HashMap)localObject2).put("initial_delay", new g.a("initial_delay", "INTEGER", true, 0, null, 1));
      ((HashMap)localObject2).put("interval_duration", new g.a("interval_duration", "INTEGER", true, 0, null, 1));
      ((HashMap)localObject2).put("flex_duration", new g.a("flex_duration", "INTEGER", true, 0, null, 1));
      ((HashMap)localObject2).put("run_attempt_count", new g.a("run_attempt_count", "INTEGER", true, 0, null, 1));
      ((HashMap)localObject2).put("backoff_policy", new g.a("backoff_policy", "INTEGER", true, 0, null, 1));
      ((HashMap)localObject2).put("backoff_delay_duration", new g.a("backoff_delay_duration", "INTEGER", true, 0, null, 1));
      ((HashMap)localObject2).put("period_start_time", new g.a("period_start_time", "INTEGER", true, 0, null, 1));
      ((HashMap)localObject2).put("minimum_retention_duration", new g.a("minimum_retention_duration", "INTEGER", true, 0, null, 1));
      ((HashMap)localObject2).put("schedule_requested_at", new g.a("schedule_requested_at", "INTEGER", true, 0, null, 1));
      ((HashMap)localObject2).put("run_in_foreground", new g.a("run_in_foreground", "INTEGER", true, 0, null, 1));
      ((HashMap)localObject2).put("out_of_quota_policy", new g.a("out_of_quota_policy", "INTEGER", true, 0, null, 1));
      ((HashMap)localObject2).put("required_network_type", new g.a("required_network_type", "INTEGER", false, 0, null, 1));
      ((HashMap)localObject2).put("requires_charging", new g.a("requires_charging", "INTEGER", true, 0, null, 1));
      ((HashMap)localObject2).put("requires_device_idle", new g.a("requires_device_idle", "INTEGER", true, 0, null, 1));
      ((HashMap)localObject2).put("requires_battery_not_low", new g.a("requires_battery_not_low", "INTEGER", true, 0, null, 1));
      ((HashMap)localObject2).put("requires_storage_not_low", new g.a("requires_storage_not_low", "INTEGER", true, 0, null, 1));
      ((HashMap)localObject2).put("trigger_content_update_delay", new g.a("trigger_content_update_delay", "INTEGER", true, 0, null, 1));
      ((HashMap)localObject2).put("trigger_max_content_delay", new g.a("trigger_max_content_delay", "INTEGER", true, 0, null, 1));
      ((HashMap)localObject2).put("content_uri_triggers", new g.a("content_uri_triggers", "BLOB", false, 0, null, 1));
      localObject3 = new HashSet(0);
      localObject1 = new HashSet(2);
      ((HashSet)localObject1).add(new g.d("index_WorkSpec_schedule_requested_at", false, Arrays.asList(new String[] { "schedule_requested_at" })));
      ((HashSet)localObject1).add(new g.d("index_WorkSpec_period_start_time", false, Arrays.asList(new String[] { "period_start_time" })));
      localObject3 = new g("WorkSpec", (Map)localObject2, (Set)localObject3, (Set)localObject1);
      localObject2 = g.a(paramb, "WorkSpec");
      if (!((g)localObject3).equals(localObject2))
      {
        paramb = new StringBuilder();
        paramb.append("WorkSpec(androidx.work.impl.model.WorkSpec).\n Expected:\n");
        paramb.append(localObject3);
        paramb.append("\n Found:\n");
        paramb.append(localObject2);
        return new l.b(false, paramb.toString());
      }
      localObject3 = new HashMap(2);
      ((HashMap)localObject3).put("tag", new g.a("tag", "TEXT", true, 1, null, 1));
      ((HashMap)localObject3).put("work_spec_id", new g.a("work_spec_id", "TEXT", true, 2, null, 1));
      localObject2 = new HashSet(1);
      ((HashSet)localObject2).add(new g.b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList(new String[] { "work_spec_id" }), Arrays.asList(new String[] { "id" })));
      localObject1 = new HashSet(1);
      ((HashSet)localObject1).add(new g.d("index_WorkTag_work_spec_id", false, Arrays.asList(new String[] { "work_spec_id" })));
      localObject3 = new g("WorkTag", (Map)localObject3, (Set)localObject2, (Set)localObject1);
      localObject2 = g.a(paramb, "WorkTag");
      if (!((g)localObject3).equals(localObject2))
      {
        paramb = new StringBuilder();
        paramb.append("WorkTag(androidx.work.impl.model.WorkTag).\n Expected:\n");
        paramb.append(localObject3);
        paramb.append("\n Found:\n");
        paramb.append(localObject2);
        return new l.b(false, paramb.toString());
      }
      localObject2 = new HashMap(2);
      ((HashMap)localObject2).put("work_spec_id", new g.a("work_spec_id", "TEXT", true, 1, null, 1));
      ((HashMap)localObject2).put("system_id", new g.a("system_id", "INTEGER", true, 0, null, 1));
      localObject3 = new HashSet(1);
      ((HashSet)localObject3).add(new g.b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList(new String[] { "work_spec_id" }), Arrays.asList(new String[] { "id" })));
      localObject3 = new g("SystemIdInfo", (Map)localObject2, (Set)localObject3, new HashSet(0));
      localObject2 = g.a(paramb, "SystemIdInfo");
      if (!((g)localObject3).equals(localObject2))
      {
        paramb = new StringBuilder();
        paramb.append("SystemIdInfo(androidx.work.impl.model.SystemIdInfo).\n Expected:\n");
        paramb.append(localObject3);
        paramb.append("\n Found:\n");
        paramb.append(localObject2);
        return new l.b(false, paramb.toString());
      }
      localObject2 = new HashMap(2);
      ((HashMap)localObject2).put("name", new g.a("name", "TEXT", true, 1, null, 1));
      ((HashMap)localObject2).put("work_spec_id", new g.a("work_spec_id", "TEXT", true, 2, null, 1));
      localObject1 = new HashSet(1);
      ((HashSet)localObject1).add(new g.b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList(new String[] { "work_spec_id" }), Arrays.asList(new String[] { "id" })));
      localObject3 = new HashSet(1);
      ((HashSet)localObject3).add(new g.d("index_WorkName_work_spec_id", false, Arrays.asList(new String[] { "work_spec_id" })));
      localObject2 = new g("WorkName", (Map)localObject2, (Set)localObject1, (Set)localObject3);
      localObject3 = g.a(paramb, "WorkName");
      if (!((g)localObject2).equals(localObject3))
      {
        paramb = new StringBuilder();
        paramb.append("WorkName(androidx.work.impl.model.WorkName).\n Expected:\n");
        paramb.append(localObject2);
        paramb.append("\n Found:\n");
        paramb.append(localObject3);
        return new l.b(false, paramb.toString());
      }
      localObject3 = new HashMap(2);
      ((HashMap)localObject3).put("work_spec_id", new g.a("work_spec_id", "TEXT", true, 1, null, 1));
      ((HashMap)localObject3).put("progress", new g.a("progress", "BLOB", true, 0, null, 1));
      localObject2 = new HashSet(1);
      ((HashSet)localObject2).add(new g.b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList(new String[] { "work_spec_id" }), Arrays.asList(new String[] { "id" })));
      localObject3 = new g("WorkProgress", (Map)localObject3, (Set)localObject2, new HashSet(0));
      localObject2 = g.a(paramb, "WorkProgress");
      if (!((g)localObject3).equals(localObject2))
      {
        paramb = new StringBuilder();
        paramb.append("WorkProgress(androidx.work.impl.model.WorkProgress).\n Expected:\n");
        paramb.append(localObject3);
        paramb.append("\n Found:\n");
        paramb.append(localObject2);
        return new l.b(false, paramb.toString());
      }
      localObject2 = new HashMap(2);
      ((HashMap)localObject2).put("key", new g.a("key", "TEXT", true, 1, null, 1));
      ((HashMap)localObject2).put("long_value", new g.a("long_value", "INTEGER", false, 0, null, 1));
      localObject2 = new g("Preference", (Map)localObject2, new HashSet(0), new HashSet(0));
      paramb = g.a(paramb, "Preference");
      if (!((g)localObject2).equals(paramb))
      {
        localObject3 = new StringBuilder();
        ((StringBuilder)localObject3).append("Preference(androidx.work.impl.model.Preference).\n Expected:\n");
        ((StringBuilder)localObject3).append(localObject2);
        ((StringBuilder)localObject3).append("\n Found:\n");
        ((StringBuilder)localObject3).append(paramb);
        return new l.b(false, ((StringBuilder)localObject3).toString());
      }
      return new l.b(true, null);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.impl.WorkDatabase_Impl
 * JD-Core Version:    0.7.0.1
 */
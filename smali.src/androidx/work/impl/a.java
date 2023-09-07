package androidx.work.impl;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import l0.b;
import y0.d;
import y0.g;

public class a
{
  public static j0.a a = new a(1, 2);
  public static j0.a b = new b(3, 4);
  public static j0.a c = new c(4, 5);
  public static j0.a d = new d(6, 7);
  public static j0.a e = new e(7, 8);
  public static j0.a f = new f(8, 9);
  public static j0.a g = new g(11, 12);
  
  class a
    extends j0.a
  {
    a(int paramInt)
    {
      super(paramInt);
    }
    
    public void a(b paramb)
    {
      paramb.k("CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
      paramb.k("INSERT INTO SystemIdInfo(work_spec_id, system_id) SELECT work_spec_id, alarm_id AS system_id FROM alarmInfo");
      paramb.k("DROP TABLE IF EXISTS alarmInfo");
      paramb.k("INSERT OR IGNORE INTO worktag(tag, work_spec_id) SELECT worker_class_name AS tag, id AS work_spec_id FROM workspec");
    }
  }
  
  class b
    extends j0.a
  {
    b(int paramInt)
    {
      super(paramInt);
    }
    
    public void a(b paramb)
    {
      paramb.k("UPDATE workspec SET schedule_requested_at=0 WHERE state NOT IN (2, 3, 5) AND schedule_requested_at=-1 AND interval_duration<>0");
    }
  }
  
  class c
    extends j0.a
  {
    c(int paramInt)
    {
      super(paramInt);
    }
    
    public void a(b paramb)
    {
      paramb.k("ALTER TABLE workspec ADD COLUMN `trigger_content_update_delay` INTEGER NOT NULL DEFAULT -1");
      paramb.k("ALTER TABLE workspec ADD COLUMN `trigger_max_content_delay` INTEGER NOT NULL DEFAULT -1");
    }
  }
  
  class d
    extends j0.a
  {
    d(int paramInt)
    {
      super(paramInt);
    }
    
    public void a(b paramb)
    {
      paramb.k("CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
    }
  }
  
  class e
    extends j0.a
  {
    e(int paramInt)
    {
      super(paramInt);
    }
    
    public void a(b paramb)
    {
      paramb.k("CREATE INDEX IF NOT EXISTS `index_WorkSpec_period_start_time` ON `workspec` (`period_start_time`)");
    }
  }
  
  class f
    extends j0.a
  {
    f(int paramInt)
    {
      super(paramInt);
    }
    
    public void a(b paramb)
    {
      paramb.k("ALTER TABLE workspec ADD COLUMN `run_in_foreground` INTEGER NOT NULL DEFAULT 0");
    }
  }
  
  class g
    extends j0.a
  {
    g(int paramInt)
    {
      super(paramInt);
    }
    
    public void a(b paramb)
    {
      paramb.k("ALTER TABLE workspec ADD COLUMN `out_of_quota_policy` INTEGER NOT NULL DEFAULT 0");
    }
  }
  
  public static class h
    extends j0.a
  {
    final Context c;
    
    public h(Context paramContext, int paramInt1, int paramInt2)
    {
      super(paramInt2);
      this.c = paramContext;
    }
    
    public void a(b paramb)
    {
      if (this.b >= 10) {
        paramb.D("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[] { "reschedule_needed", Integer.valueOf(1) });
      } else {
        this.c.getSharedPreferences("androidx.work.util.preferences", 0).edit().putBoolean("reschedule_needed", true).apply();
      }
    }
  }
  
  public static class i
    extends j0.a
  {
    final Context c;
    
    public i(Context paramContext)
    {
      super(10);
      this.c = paramContext;
    }
    
    public void a(b paramb)
    {
      paramb.k("CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))");
      g.b(this.c, paramb);
      d.a(this.c, paramb);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.impl.a
 * JD-Core Version:    0.7.0.1
 */
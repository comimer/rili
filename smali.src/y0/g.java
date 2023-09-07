package y0;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import androidx.work.impl.WorkDatabase;
import l0.b;
import x0.d;
import x0.e;

public class g
{
  private final WorkDatabase a;
  
  public g(WorkDatabase paramWorkDatabase)
  {
    this.a = paramWorkDatabase;
  }
  
  public static void b(Context paramContext, b paramb)
  {
    paramContext = paramContext.getSharedPreferences("androidx.work.util.preferences", 0);
    long l1;
    long l2;
    if ((paramContext.contains("reschedule_needed")) || (paramContext.contains("last_cancel_all_time_ms")))
    {
      l1 = 0L;
      l2 = paramContext.getLong("last_cancel_all_time_ms", 0L);
      if (paramContext.getBoolean("reschedule_needed", false)) {
        l1 = 1L;
      }
      paramb.f();
    }
    try
    {
      paramb.D("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[] { "last_cancel_all_time_ms", Long.valueOf(l2) });
      paramb.D("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[] { "reschedule_needed", Long.valueOf(l1) });
      paramContext.edit().clear().apply();
      paramb.C();
      return;
    }
    finally
    {
      paramb.O();
    }
  }
  
  public boolean a()
  {
    Long localLong = this.a.f().a("reschedule_needed");
    boolean bool;
    if ((localLong != null) && (localLong.longValue() == 1L)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public void c(boolean paramBoolean)
  {
    d locald = new d("reschedule_needed", paramBoolean);
    this.a.f().b(locald);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     y0.g
 * JD-Core Version:    0.7.0.1
 */
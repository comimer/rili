package y0;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import androidx.room.RoomDatabase;
import androidx.work.impl.WorkDatabase;
import l0.b;
import x0.e;

public class d
{
  private final WorkDatabase a;
  
  public d(WorkDatabase paramWorkDatabase)
  {
    this.a = paramWorkDatabase;
  }
  
  public static void a(Context paramContext, b paramb)
  {
    paramContext = paramContext.getSharedPreferences("androidx.work.util.id", 0);
    int i;
    int j;
    if ((paramContext.contains("next_job_scheduler_id")) || (paramContext.contains("next_job_scheduler_id")))
    {
      i = paramContext.getInt("next_job_scheduler_id", 0);
      j = paramContext.getInt("next_alarm_manager_id", 0);
      paramb.f();
    }
    try
    {
      paramb.D("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[] { "next_job_scheduler_id", Integer.valueOf(i) });
      paramb.D("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[] { "next_alarm_manager_id", Integer.valueOf(j) });
      paramContext.edit().clear().apply();
      paramb.C();
      return;
    }
    finally
    {
      paramb.O();
    }
  }
  
  private int c(String paramString)
  {
    this.a.beginTransaction();
    try
    {
      Long localLong = this.a.f().a(paramString);
      int i = 0;
      int j;
      if (localLong != null) {
        j = localLong.intValue();
      } else {
        j = 0;
      }
      if (j != 2147483647) {
        i = j + 1;
      }
      e(paramString, i);
      this.a.setTransactionSuccessful();
      return j;
    }
    finally
    {
      this.a.endTransaction();
    }
  }
  
  private void e(String paramString, int paramInt)
  {
    this.a.f().b(new x0.d(paramString, paramInt));
  }
  
  public int b()
  {
    try
    {
      int i = c("next_alarm_manager_id");
      return i;
    }
    finally {}
  }
  
  public int d(int paramInt1, int paramInt2)
  {
    try
    {
      int i = c("next_job_scheduler_id");
      if ((i >= paramInt1) && (i <= paramInt2)) {
        paramInt1 = i;
      } else {
        e("next_job_scheduler_id", paramInt1 + 1);
      }
      return paramInt1;
    }
    finally {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     y0.d
 * JD-Core Version:    0.7.0.1
 */
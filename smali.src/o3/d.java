package o3;

import android.content.Context;
import com.android.calendar.common.event.schema.Event;
import com.miui.calendar.alerts.entities.BaseAlert;

public abstract class d<T extends BaseAlert<? extends Event>, E>
{
  private Context a;
  
  public d(Context paramContext)
  {
    this.a = paramContext.getApplicationContext();
  }
  
  public Context a()
  {
    return this.a;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     o3.d
 * JD-Core Version:    0.7.0.1
 */
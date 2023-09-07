package n3;

import android.content.Context;
import android.text.TextUtils;
import com.miui.calendar.alerts.entities.BaseAlert;
import com.miui.calendar.alerts.entities.BirthdayAlert;
import m3.a.b;

public class d
  extends c<BirthdayAlert>
{
  public d(Context paramContext, BirthdayAlert paramBirthdayAlert)
  {
    super(paramContext, paramBirthdayAlert);
  }
  
  protected String a()
  {
    String str;
    if (TextUtils.isEmpty(this.e)) {
      str = ((BirthdayAlert)this.a).getEventDescription();
    } else {
      str = this.e;
    }
    return str;
  }
  
  protected void d(a.b paramb)
  {
    super.d(paramb);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     n3.d
 * JD-Core Version:    0.7.0.1
 */
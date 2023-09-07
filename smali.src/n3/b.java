package n3;

import android.content.Context;
import android.text.TextUtils;
import com.miui.calendar.alerts.entities.AnniversaryAlert;
import com.miui.calendar.alerts.entities.BaseAlert;
import m3.a.b;

public class b
  extends c<AnniversaryAlert>
{
  public b(Context paramContext, AnniversaryAlert paramAnniversaryAlert)
  {
    super(paramContext, paramAnniversaryAlert);
  }
  
  protected String a()
  {
    String str;
    if (TextUtils.isEmpty(this.e)) {
      str = ((AnniversaryAlert)this.a).getEventDescription();
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
 * Qualified Name:     n3.b
 * JD-Core Version:    0.7.0.1
 */
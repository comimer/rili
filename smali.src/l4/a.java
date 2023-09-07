package l4;

import android.content.Context;
import android.content.Intent;
import android.os.Process;
import androidx.core.app.y;
import com.miui.calendar.sms.SmartMessage;
import com.miui.calendar.util.z;
import m4.i;

public class a
  extends y
{
  public static void j(Context paramContext, Intent paramIntent)
  {
    y.d(paramContext.getApplicationContext(), a.class, 6, paramIntent);
  }
  
  private void k(Intent paramIntent)
  {
    try
    {
      Object localObject = paramIntent.getStringExtra("extra_result");
      String str = paramIntent.getStringExtra("extra_content");
      try
      {
        int i = Integer.parseInt(paramIntent.getStringExtra("extra_ontology_type"));
        paramIntent = new java/lang/StringBuilder;
        paramIntent.<init>();
        paramIntent.append("handleSms(), ontologyType = ");
        paramIntent.append(i);
        z.h("Cal:D:SmsService", paramIntent.toString());
        localObject = SmartMessage.parse((String)localObject, i);
        if (localObject == null)
        {
          z.n("Cal:D:SmsService", "handleSms(): smartMessage is NULL or INVALID, return");
          return;
        }
        if (str == null)
        {
          z.n("Cal:D:SmsService", "handleSms(): message body is null, return");
          return;
        }
        paramIntent = new m4/i;
        paramIntent.<init>();
        paramIntent.b(this, (SmartMessage)localObject, str);
      }
      catch (NumberFormatException paramIntent)
      {
        z.f("Cal:D:SmsService", "handleSms(): ontologyType is INVALID, return", paramIntent);
        return;
      }
      return;
    }
    catch (Exception paramIntent)
    {
      z.f("Cal:D:SmsService", "handleSms()", paramIntent);
    }
  }
  
  protected void g(Intent paramIntent)
  {
    Process.setThreadPriority(10);
    if (paramIntent == null)
    {
      z.n("Cal:D:SmsService", "intent is null");
      return;
    }
    String str = paramIntent.getAction();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("onHandleIntent(): tid=");
    localStringBuilder.append(Thread.currentThread().getId());
    localStringBuilder.append(", action=");
    localStringBuilder.append(str);
    z.h("Cal:D:SmsService", localStringBuilder.toString());
    if ("action_parse_sms".equals(str)) {
      k(paramIntent);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     l4.a
 * JD-Core Version:    0.7.0.1
 */
package m4;

import android.content.Context;
import android.provider.CalendarContract.ExtendedProperties;
import com.miui.calendar.sms.SmartMessage;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.p0;
import com.miui.calendar.util.p0.b;
import com.miui.calendar.util.p0.c;
import com.miui.calendar.util.z;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class h
{
  protected Context a;
  protected SmartMessage b;
  protected String c;
  protected JSONObject d;
  protected boolean e;
  
  public h(Context paramContext, SmartMessage paramSmartMessage, String paramString)
  {
    this.a = paramContext;
    this.b = paramSmartMessage;
    this.c = paramString;
    d();
  }
  
  protected ArrayList<String> a(String paramString)
  {
    try
    {
      Object localObject = p0.d(this.a).u(CalendarContract.ExtendedProperties.CONTENT_URI).r(new String[] { "value" }).t(new Class[] { String.class }).s("name=?").o(new String[] { paramString }).i();
      if ((localObject != null) && (!((p0.b)localObject).isEmpty()))
      {
        paramString = new java/util/ArrayList;
        paramString.<init>();
        localObject = ((p0.b)localObject).iterator();
        while (((Iterator)localObject).hasNext()) {
          paramString.add(((p0.c)((Iterator)localObject).next()).b());
        }
        return paramString;
      }
    }
    catch (Exception paramString)
    {
      z.f("Cal:D:SmsModel", "getEPValueList()", paramString);
      z.h("Cal:D:SmsModel", "getEPValueList(): get NO EP value");
    }
    return null;
  }
  
  protected abstract boolean b();
  
  protected abstract boolean c();
  
  protected void d()
  {
    JSONObject localJSONObject = new JSONObject();
    this.d = localJSONObject;
    try
    {
      localJSONObject.put("event_create_time", String.valueOf(System.currentTimeMillis()));
      this.d.put("need_alarm", this.e);
    }
    catch (JSONException localJSONException)
    {
      z.d("Cal:D:SmsModel", "prepareAttrInfo()", localJSONException);
    }
  }
  
  protected void e(String paramString, boolean paramBoolean)
  {
    g0.f("sms_event_saved", new String[] { "type", paramString });
  }
  
  protected abstract boolean f();
  
  public void g(boolean paramBoolean)
  {
    this.e = paramBoolean;
    try
    {
      this.d.put("need_alarm", paramBoolean);
    }
    catch (JSONException localJSONException)
    {
      z.d("Cal:D:SmsModel", "setNeedAlarm error", localJSONException);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     m4.h
 * JD-Core Version:    0.7.0.1
 */
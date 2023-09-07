package n6;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.view.View;
import com.xiaomi.accountsdk.account.e;
import com.xiaomi.accountsdk.hasheddeviceidlib.HashedDeviceIdUtil;
import com.xiaomi.passport.jsb.PassportJsbMethodException;
import com.xiaomi.passport.webview.a;
import m6.b;
import o5.c;
import org.json.JSONException;
import org.json.JSONObject;

public class d
  extends b
{
  public String getName()
  {
    return "getDeviceInfo";
  }
  
  public m6.d invoke(a parama, JSONObject paramJSONObject)
    throws PassportJsbMethodException
  {
    paramJSONObject = parama.getContext();
    JSONObject localJSONObject = new JSONObject();
    try
    {
      parama = new com/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;
      parama.<init>(e.b());
      localJSONObject.put("deviceId", parama.c());
    }
    catch (JSONException parama)
    {
      boolean bool;
      label157:
      throw new PassportJsbMethodException(105, "should never happen");
    }
    try
    {
      bool = ((Boolean)c.j(Class.forName("miui.os.Build"), "IS_TABLET")).booleanValue();
      parama = "normal";
      if (bool)
      {
        paramJSONObject = "pad";
        parama = "large";
      }
      else
      {
        Object localObject = c.a("android.os.SystemProperties", "getInt", new Object[] { "persist.sys.muiltdisplay_type", Integer.valueOf(0) });
        if ((localObject != null) && (((Integer)localObject).intValue() == 2))
        {
          if ((paramJSONObject.getResources().getConfiguration().screenLayout & 0xF) == 3) {
            parama = "large";
          }
          paramJSONObject = "fold-phone";
        }
        else
        {
          paramJSONObject = "phone";
        }
      }
      localJSONObject.put("miuiDeviceType", paramJSONObject);
      localJSONObject.put("miuiScreenType", parama);
    }
    catch (ClassNotFoundException parama)
    {
      break label157;
    }
    parama = new m6.d(localJSONObject);
    return parama;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     n6.d
 * JD-Core Version:    0.7.0.1
 */
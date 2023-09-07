package n6;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Global;
import android.view.View;
import com.xiaomi.accountsdk.account.e;
import com.xiaomi.passport.jsb.PassportJsbMethodException;
import com.xiaomi.passport.webview.a;
import java.util.Locale;
import m6.b;
import m6.d;
import org.json.JSONException;
import org.json.JSONObject;

public class c
  extends b
{
  public String getName()
  {
    return "getConfig";
  }
  
  public d invoke(a parama, JSONObject paramJSONObject)
    throws PassportJsbMethodException
  {
    Context localContext = parama.getContext();
    JSONObject localJSONObject = new JSONObject();
    try
    {
      parama = Locale.getDefault();
      localJSONObject.put("locale", parama.toString());
      localJSONObject.put("language", parama.getLanguage());
      localJSONObject.put("country", parama.getCountry());
      paramJSONObject = localContext.getPackageName();
      localJSONObject.put("appPackageName", paramJSONObject);
      parama = localContext.getPackageManager();
      bool1 = false;
      parama = parama.getPackageInfo(paramJSONObject, 0);
      localJSONObject.put("appVersionName", parama.versionName);
      localJSONObject.put("appVersionCode", parama.versionCode);
      localJSONObject.put("buildModel", Build.MODEL);
      localJSONObject.put("buildDevice", Build.DEVICE);
      localJSONObject.put("romAndroidVersionName", Build.VERSION.RELEASE);
      localJSONObject.put("romAndroidSdkCode", Build.VERSION.SDK_INT);
      localJSONObject.put("romVersionName", Build.VERSION.INCREMENTAL);
    }
    catch (PackageManager.NameNotFoundException parama)
    {
      boolean bool1;
      boolean bool2;
      String str;
      label303:
      label322:
      throw new PassportJsbMethodException(105, "WebView is not attached to valid page", parama);
    }
    catch (JSONException parama)
    {
      label227:
      throw new PassportJsbMethodException(105, "WebView is not attached to valid page", parama);
    }
    try
    {
      parama = Class.forName("miui.os.Build");
      localJSONObject.put("romMiuiIsInternational", o5.c.j(parama, "IS_INTERNATIONAL_BUILD"));
      localJSONObject.put("romMiuiRegion", o5.c.a("miui.os.Build", "getRegion", new Object[0]));
      bool2 = ((Boolean)o5.c.j(parama, "IS_TABLET")).booleanValue();
      str = "normal";
      if (bool2)
      {
        parama = "pad";
        str = "large";
      }
      else
      {
        parama = o5.c.a("android.os.SystemProperties", "getInt", new Object[] { "persist.sys.muiltdisplay_type", Integer.valueOf(0) });
        if ((parama != null) && (((Integer)parama).intValue() == 2))
        {
          paramJSONObject = "fold-phone";
          parama = paramJSONObject;
          if ((localContext.getResources().getConfiguration().screenLayout & 0xF) != 3) {
            break label303;
          }
          parama = paramJSONObject;
          break label227;
        }
        parama = "phone";
      }
      localJSONObject.put("miuiDeviceType", parama);
      localJSONObject.put("miuiScreenType", str);
    }
    catch (ClassNotFoundException parama)
    {
      break label322;
    }
    parama = o5.c.a("android.os.SystemProperties", "get", new Object[] { "ro.miui.ui.version.name" });
    if ((parama instanceof String)) {
      localJSONObject.put("romMiuiVersionName", parama);
    }
    if (Settings.Global.getInt(localContext.getContentResolver(), "device_provisioned", 0) != 1) {
      bool1 = true;
    }
    localJSONObject.put("inMiuiProvisionStep", bool1);
    localJSONObject.put("userSpaceId", e.g());
    parama = new d(localJSONObject);
    return parama;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     n6.c
 * JD-Core Version:    0.7.0.1
 */
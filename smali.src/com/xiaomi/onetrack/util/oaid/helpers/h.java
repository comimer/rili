package com.xiaomi.onetrack.util.oaid.helpers;

import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.os.BaseBundle;
import com.xiaomi.onetrack.util.p;

public class h
{
  private static final String a = "NubiaDeviceIDHelper";
  
  public String a(Context paramContext)
  {
    String str = "";
    Object localObject = Uri.parse("content://cn.nubia.identity/identity");
    try
    {
      paramContext = paramContext.getContentResolver().acquireContentProviderClient((Uri)localObject);
      localObject = paramContext.call("getOAID", null, null);
      paramContext.close();
      paramContext = str;
      if (((BaseBundle)localObject).getInt("code", -1) == 0) {
        paramContext = ((BaseBundle)localObject).getString("id");
      }
    }
    catch (Exception paramContext)
    {
      p.a("NubiaDeviceIDHelper", paramContext.getMessage());
      paramContext = str;
    }
    return paramContext;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.util.oaid.helpers.h
 * JD-Core Version:    0.7.0.1
 */
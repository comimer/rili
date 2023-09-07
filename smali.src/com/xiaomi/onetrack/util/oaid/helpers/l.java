package com.xiaomi.onetrack.util.oaid.helpers;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.xiaomi.onetrack.util.p;

public class l
{
  private static final String a = "VivoDeviceIDHelper";
  
  public String a(Context paramContext)
  {
    String str = "";
    Object localObject1 = Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/OAID");
    Object localObject2 = str;
    try
    {
      localObject1 = paramContext.getContentResolver().query((Uri)localObject1, null, null, null, null);
      paramContext = str;
      if (localObject1 != null)
      {
        paramContext = str;
        localObject2 = str;
        if (((Cursor)localObject1).moveToNext())
        {
          localObject2 = str;
          paramContext = ((Cursor)localObject1).getString(((Cursor)localObject1).getColumnIndex("value"));
        }
        localObject2 = paramContext;
        ((Cursor)localObject1).close();
      }
    }
    catch (Exception paramContext)
    {
      p.a("VivoDeviceIDHelper", paramContext.getMessage());
      paramContext = (Context)localObject2;
    }
    return paramContext;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.util.oaid.helpers.l
 * JD-Core Version:    0.7.0.1
 */
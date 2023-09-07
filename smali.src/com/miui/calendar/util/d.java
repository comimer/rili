package com.miui.calendar.util;

import android.content.Context;
import android.os.Environment;
import android.util.Log;
import java.io.File;
import java.io.IOException;

public class d
{
  public static File a(Context paramContext)
  {
    paramContext = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DCIM);
    if (paramContext == null)
    {
      Log.e("AudioUtils", "Fail to getExternalCacheDir.");
      return null;
    }
    paramContext = new File(paramContext, "Calendar");
    if ((!paramContext.exists()) && (!paramContext.mkdirs()) && (!paramContext.exists()))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Fail to create CameraDir:");
      localStringBuilder.append(paramContext);
      Log.e("AudioUtils", localStringBuilder.toString());
      return null;
    }
    return paramContext;
  }
  
  public static File b(Context paramContext)
  {
    return c(paramContext, String.valueOf(System.currentTimeMillis()), ".png");
  }
  
  public static File c(Context paramContext, String paramString1, String paramString2)
  {
    try
    {
      paramContext = File.createTempFile(paramString1, paramString2, a(paramContext));
      if (paramContext != null) {
        return paramContext;
      }
    }
    catch (IOException paramContext)
    {
      paramContext.printStackTrace();
    }
    return null;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.d
 * JD-Core Version:    0.7.0.1
 */
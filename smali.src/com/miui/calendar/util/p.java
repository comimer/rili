package com.miui.calendar.util;

import android.content.Context;
import h3.a;
import java.io.File;
import java.io.IOException;

public class p
{
  protected static int c = 8192;
  protected a a;
  protected String b;
  
  protected p(Context paramContext, String paramString, int paramInt)
  {
    try
    {
      this.b = paramString;
      paramContext = a(paramContext, paramString);
      long l;
      if (paramInt > 0) {
        l = paramInt;
      } else {
        l = 8388608L;
      }
      this.a = a.h0(paramContext, 1, 1, l);
    }
    catch (IOException paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  private File a(Context paramContext, String paramString)
  {
    paramContext = paramContext.getCacheDir().getPath();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramContext);
    localStringBuilder.append(File.separator);
    localStringBuilder.append(paramString);
    return new File(localStringBuilder.toString());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.p
 * JD-Core Version:    0.7.0.1
 */
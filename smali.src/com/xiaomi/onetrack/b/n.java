package com.xiaomi.onetrack.b;

import android.text.TextUtils;
import com.xiaomi.onetrack.d.f;
import com.xiaomi.onetrack.g.c;
import com.xiaomi.onetrack.util.p;
import com.xiaomi.onetrack.util.q;
import java.util.Map;

public class n
{
  private static String a = "ConfigProvider";
  private static volatile boolean b = false;
  private static volatile boolean c = true;
  
  public static int a(int paramInt)
  {
    if (p.b)
    {
      p.a(a, "debug upload mode, send events immediately");
      return 0;
    }
    try
    {
      paramInt = ((Integer)e.c().get(Integer.valueOf(paramInt + 1))).intValue();
    }
    catch (Exception localException)
    {
      paramInt = 60000;
    }
    String str = a;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("getUploadInterval ");
    localStringBuilder.append(paramInt);
    p.a(str, localStringBuilder.toString());
    return paramInt;
  }
  
  public static void a(boolean paramBoolean)
  {
    try
    {
      b = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public static boolean a()
  {
    boolean bool1 = false;
    boolean bool3;
    try
    {
      String[] arrayOfString = f.a().b();
      int i;
      if ((!TextUtils.isEmpty(arrayOfString[0])) && (!TextUtils.isEmpty(arrayOfString[1]))) {
        i = 1;
      } else {
        i = 0;
      }
      boolean bool2 = q.a(a);
      bool3 = bool1;
      if (i != 0)
      {
        bool3 = bool1;
        if (!bool2) {
          bool3 = true;
        }
      }
    }
    catch (Exception localException)
    {
      p.a(a, "ConfigProvider.available", localException);
      bool3 = bool1;
    }
    return bool3;
  }
  
  public static boolean b()
  {
    try
    {
      boolean bool = b;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public static boolean c()
  {
    return c.a();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.b.n
 * JD-Core Version:    0.7.0.1
 */
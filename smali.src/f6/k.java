package f6;

import android.util.Log;
import java.lang.reflect.Method;

public class k
{
  public static String a(String paramString1, String paramString2)
  {
    try
    {
      paramString1 = (String)Class.forName("android.os.SystemProperties").getMethod("get", new Class[] { String.class, String.class }).invoke(null, new Object[] { paramString1, paramString2 });
      return paramString1;
    }
    catch (Exception paramString1)
    {
      Log.e(a.a("SystemProperties"), "get e", paramString1);
    }
    return paramString2;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     f6.k
 * JD-Core Version:    0.7.0.1
 */
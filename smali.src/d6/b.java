package d6;

import java.lang.reflect.Field;

public final class b
{
  public static boolean a()
  {
    try
    {
      boolean bool = ((Boolean)Class.forName("com.miui.systemAdSolution.BuildConfig").getField("DEBUG").get(null)).booleanValue();
      return bool;
    }
    catch (Exception localException) {}
    return false;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     d6.b
 * JD-Core Version:    0.7.0.1
 */
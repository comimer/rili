package f2;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public class k
{
  private static volatile SharedPreferences a;
  
  public static int a(Context paramContext, String paramString, int paramInt)
  {
    return c(paramContext).getInt(paramString, paramInt);
  }
  
  public static String b(Context paramContext, String paramString1, String paramString2)
  {
    return c(paramContext).getString(paramString1, paramString2);
  }
  
  private static SharedPreferences c(Context paramContext)
  {
    if (a == null) {
      a = paramContext.getSharedPreferences("com.android.calendar.widget_preferences", 0);
    }
    return a;
  }
  
  public static void d(Context paramContext, String paramString)
  {
    paramContext = c(paramContext).edit();
    paramContext.remove(paramString);
    paramContext.apply();
  }
  
  public static void e(Context paramContext, String paramString, int paramInt)
  {
    paramContext = c(paramContext).edit();
    paramContext.putInt(paramString, paramInt);
    paramContext.apply();
  }
  
  public static void f(Context paramContext, String paramString1, String paramString2)
  {
    c(paramContext).edit().putString(paramString1, paramString2).apply();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     f2.k
 * JD-Core Version:    0.7.0.1
 */
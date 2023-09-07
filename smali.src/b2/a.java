package b2;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import androidx.preference.j;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;

public class a
{
  private static volatile SharedPreferences a;
  
  public static int a(Context paramContext, String paramString, int paramInt)
  {
    return f(paramContext).getInt(paramString, paramInt);
  }
  
  public static long b(Context paramContext, String paramString, long paramLong)
  {
    paramContext = f(paramContext);
    try
    {
      long l = paramContext.getLong(paramString, paramLong);
      return l;
    }
    catch (Exception localException) {}
    return paramContext.getInt(paramString, (int)paramLong);
  }
  
  public static String c(Context paramContext, String paramString1, String paramString2)
  {
    return f(paramContext).getString(paramString1, paramString2);
  }
  
  public static boolean d(Context paramContext, String paramString, boolean paramBoolean)
  {
    return f(paramContext).getBoolean(paramString, paramBoolean);
  }
  
  public static String[] e(Context paramContext, String paramString, String[] paramArrayOfString)
  {
    paramContext = f(paramContext).getStringSet(paramString, null);
    if (paramContext != null) {
      return (String[])paramContext.toArray(new String[paramContext.size()]);
    }
    return paramArrayOfString;
  }
  
  public static SharedPreferences f(Context paramContext)
  {
    if (a == null) {
      a = paramContext.getSharedPreferences("com.android.calendar_preferences", 0);
    }
    return a;
  }
  
  public static void g(Context paramContext, String paramString)
  {
    paramContext = f(paramContext).edit();
    paramContext.remove(paramString);
    paramContext.apply();
  }
  
  public static void h(Context paramContext)
  {
    j.l(paramContext, "com.android.calendar_preferences", 0, 2132082701, false);
  }
  
  public static void i(Context paramContext, String paramString, int paramInt)
  {
    paramContext = f(paramContext).edit();
    paramContext.putInt(paramString, paramInt);
    paramContext.apply();
  }
  
  public static void j(Context paramContext, String paramString, long paramLong)
  {
    f(paramContext).edit().putLong(paramString, paramLong).apply();
  }
  
  public static void k(Context paramContext, String paramString1, String paramString2)
  {
    f(paramContext).edit().putString(paramString1, paramString2).apply();
  }
  
  public static void l(Context paramContext, String paramString, boolean paramBoolean)
  {
    paramContext = f(paramContext).edit();
    paramContext.putBoolean(paramString, paramBoolean);
    paramContext.apply();
  }
  
  public static void m(Context paramContext, String paramString, String[] paramArrayOfString)
  {
    paramContext = f(paramContext);
    LinkedHashSet localLinkedHashSet = new LinkedHashSet();
    Collections.addAll(localLinkedHashSet, paramArrayOfString);
    paramContext.edit().putStringSet(paramString, localLinkedHashSet).apply();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b2.a
 * JD-Core Version:    0.7.0.1
 */
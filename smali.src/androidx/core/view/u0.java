package androidx.core.view;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.view.ViewConfiguration;

public final class u0
{
  public static float a(ViewConfiguration paramViewConfiguration, Context paramContext)
  {
    return a.a(paramViewConfiguration);
  }
  
  public static float b(ViewConfiguration paramViewConfiguration, Context paramContext)
  {
    return a.b(paramViewConfiguration);
  }
  
  public static boolean c(ViewConfiguration paramViewConfiguration, Context paramContext)
  {
    if (Build.VERSION.SDK_INT >= 28) {
      return b.b(paramViewConfiguration);
    }
    paramViewConfiguration = paramContext.getResources();
    int i = paramViewConfiguration.getIdentifier("config_showMenuShortcutsWhenKeyboardPresent", "bool", "android");
    boolean bool;
    if ((i != 0) && (paramViewConfiguration.getBoolean(i))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  static class a
  {
    static float a(ViewConfiguration paramViewConfiguration)
    {
      return paramViewConfiguration.getScaledHorizontalScrollFactor();
    }
    
    static float b(ViewConfiguration paramViewConfiguration)
    {
      return paramViewConfiguration.getScaledVerticalScrollFactor();
    }
  }
  
  static class b
  {
    static int a(ViewConfiguration paramViewConfiguration)
    {
      return w0.a(paramViewConfiguration);
    }
    
    static boolean b(ViewConfiguration paramViewConfiguration)
    {
      return v0.a(paramViewConfiguration);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.view.u0
 * JD-Core Version:    0.7.0.1
 */
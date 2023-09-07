package androidx.core.os;

import android.annotation.SuppressLint;
import android.os.Build.VERSION;
import java.util.Locale;

public class a
{
  protected static boolean a(String paramString1, String paramString2)
  {
    boolean bool1 = "REL".equals(paramString2);
    boolean bool2 = false;
    if (bool1) {
      return false;
    }
    Locale localLocale = Locale.ROOT;
    if (paramString2.toUpperCase(localLocale).compareTo(paramString1.toUpperCase(localLocale)) >= 0) {
      bool2 = true;
    }
    return bool2;
  }
  
  @Deprecated
  public static boolean b()
  {
    boolean bool;
    if (Build.VERSION.SDK_INT >= 30) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  @Deprecated
  @SuppressLint({"RestrictedApi"})
  public static boolean c()
  {
    int i = Build.VERSION.SDK_INT;
    boolean bool;
    if ((i < 31) && ((i < 30) || (!a("S", Build.VERSION.CODENAME)))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.os.a
 * JD-Core Version:    0.7.0.1
 */
package androidx.core.text;

import android.text.TextUtils;
import java.util.Locale;

public final class e
{
  private static final Locale a = new Locale("", "");
  
  public static int a(Locale paramLocale)
  {
    return a.a(paramLocale);
  }
  
  static class a
  {
    static int a(Locale paramLocale)
    {
      return TextUtils.getLayoutDirectionFromLocale(paramLocale);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.text.e
 * JD-Core Version:    0.7.0.1
 */
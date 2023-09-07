package n7;

import android.text.TextUtils;
import java.util.Locale;

public class c
{
  public static String a(Locale paramLocale)
  {
    if (paramLocale == null) {
      return null;
    }
    String str = paramLocale.getLanguage();
    paramLocale = paramLocale.getCountry();
    if (TextUtils.isEmpty(paramLocale)) {
      paramLocale = str;
    } else {
      paramLocale = String.format("%s_%s", new Object[] { str, paramLocale });
    }
    return paramLocale;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     n7.c
 * JD-Core Version:    0.7.0.1
 */
package q6;

import android.text.TextUtils;
import java.util.Locale;

public class b
{
  public static String a()
  {
    Object localObject = Locale.getDefault();
    if (localObject == null) {
      return null;
    }
    String str = ((Locale)localObject).getLanguage();
    localObject = ((Locale)localObject).getCountry();
    if (!TextUtils.isEmpty((CharSequence)localObject)) {
      str = String.format("%s_%s", new Object[] { str, localObject });
    }
    return str;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     q6.b
 * JD-Core Version:    0.7.0.1
 */
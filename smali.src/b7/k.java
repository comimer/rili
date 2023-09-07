package b7;

import android.text.TextUtils;

public class k
{
  public static String a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return "[empty]";
    }
    return String.format("[%d]@%s", new Object[] { Integer.valueOf(paramString.length()), Integer.toHexString(paramString.hashCode()) });
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b7.k
 * JD-Core Version:    0.7.0.1
 */
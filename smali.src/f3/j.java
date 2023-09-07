package f3;

import android.text.TextUtils;
import java.util.Collection;

public final class j
{
  public static void a(boolean paramBoolean, String paramString)
  {
    if (paramBoolean) {
      return;
    }
    throw new IllegalArgumentException(paramString);
  }
  
  public static String b(String paramString)
  {
    if (!TextUtils.isEmpty(paramString)) {
      return paramString;
    }
    throw new IllegalArgumentException("Must not be null or empty");
  }
  
  public static <T extends Collection<Y>, Y> T c(T paramT)
  {
    if (!paramT.isEmpty()) {
      return paramT;
    }
    throw new IllegalArgumentException("Must not be empty.");
  }
  
  public static <T> T d(T paramT)
  {
    return e(paramT, "Argument must not be null");
  }
  
  public static <T> T e(T paramT, String paramString)
  {
    if (paramT != null) {
      return paramT;
    }
    throw new NullPointerException(paramString);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     f3.j
 * JD-Core Version:    0.7.0.1
 */
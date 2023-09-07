package o2;

import android.net.Uri;
import java.util.List;

public final class b
{
  public static boolean a(Uri paramUri)
  {
    boolean bool;
    if ((b(paramUri)) && (!e(paramUri))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static boolean b(Uri paramUri)
  {
    boolean bool;
    if ((paramUri != null) && ("content".equals(paramUri.getScheme())) && ("media".equals(paramUri.getAuthority()))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static boolean c(Uri paramUri)
  {
    boolean bool;
    if ((b(paramUri)) && (e(paramUri))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static boolean d(int paramInt1, int paramInt2)
  {
    boolean bool;
    if ((paramInt1 != -2147483648) && (paramInt2 != -2147483648) && (paramInt1 <= 512) && (paramInt2 <= 384)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private static boolean e(Uri paramUri)
  {
    return paramUri.getPathSegments().contains("video");
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     o2.b
 * JD-Core Version:    0.7.0.1
 */
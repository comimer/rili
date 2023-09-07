package y6;

import android.app.Activity;
import android.content.Context;
import com.xiaomi.accountsdk.utils.p;

public class b
{
  public static boolean a(Context paramContext, String paramString)
  {
    return new p(paramContext, "permission_request_history").a(paramString, false);
  }
  
  public static boolean b(Activity paramActivity, String paramString)
  {
    boolean bool;
    if ((a(paramActivity, paramString)) && (!androidx.core.app.b.u(paramActivity, paramString))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static void c(Context paramContext, String paramString)
  {
    new p(paramContext, "permission_request_history").b(paramString, true);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     y6.b
 * JD-Core Version:    0.7.0.1
 */
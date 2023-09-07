package u5;

import android.app.Activity;
import com.xiaomi.accountsdk.account.serverpassthrougherror.data.ErrorHandleInfo;
import com.xiaomi.accountsdk.account.serverpassthrougherror.data.PassThroughErrorInfo;

public class c
{
  private static a a = new b();
  
  public static a a()
  {
    return a;
  }
  
  public static void b(Activity paramActivity, PassThroughErrorInfo paramPassThroughErrorInfo)
  {
    c(paramActivity, paramPassThroughErrorInfo, null);
  }
  
  public static void c(Activity paramActivity, PassThroughErrorInfo paramPassThroughErrorInfo1, PassThroughErrorInfo paramPassThroughErrorInfo2)
  {
    a.f(paramActivity, new ErrorHandleInfo(paramActivity, paramPassThroughErrorInfo1, paramPassThroughErrorInfo2));
  }
  
  public static void d(a parama)
  {
    a = parama;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     u5.c
 * JD-Core Version:    0.7.0.1
 */
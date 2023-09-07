package b7;

import android.accounts.Account;
import android.content.Context;
import android.os.Looper;
import com.xiaomi.accountsdk.utils.b;
import com.xiaomi.accountsdk.utils.h;
import com.xiaomi.passport.accountmanager.g;

public class e
{
  private final Context a;
  
  public e(Context paramContext)
  {
    if (paramContext != null)
    {
      this.a = paramContext.getApplicationContext();
      return;
    }
    throw new IllegalArgumentException("context == null");
  }
  
  g a()
  {
    return g.z(this.a);
  }
  
  public final String b()
  {
    if (!d())
    {
      Object localObject = a();
      Account localAccount = ((g)localObject).l();
      if (localAccount == null) {
        return null;
      }
      try
      {
        localObject = ((g)localObject).o(localAccount, "encrypted_user_id");
        return localObject;
      }
      catch (SecurityException localSecurityException)
      {
        b.g("CUserIdUtil", "failed to getUserData");
        if (g.A(this.a)) {
          return c(localAccount);
        }
        throw new IllegalStateException("not supposed to be here");
      }
    }
    throw new IllegalStateException("CUserIdUtil#getCUserId() should NOT be called on main thread!");
  }
  
  String c(Account paramAccount)
  {
    return new h(this.a, paramAccount).b();
  }
  
  boolean d()
  {
    boolean bool;
    if (Looper.myLooper() == Looper.getMainLooper()) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b7.e
 * JD-Core Version:    0.7.0.1
 */
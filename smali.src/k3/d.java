package k3;

import android.accounts.Account;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import com.miui.calendar.account.mi.MiAccountSchema;
import com.miui.calendar.util.t0;
import com.miui.calendar.util.z;
import com.xiaomi.passport.accountmanager.g;
import com.xiaomi.passport.accountmanager.h;
import com.xiaomi.passport.accountmanager.i;
import com.xiaomi.passport.f;
import com.xiaomi.passport.f.b;
import com.xiaomi.passport.servicetoken.ServiceTokenResult;
import com.xiaomi.passport.servicetoken.data.XmAccountVisibility;

public class d
{
  private static boolean a = false;
  
  public static void e(Context paramContext)
  {
    try
    {
      Intent localIntent = new android/content/Intent;
      localIntent.<init>();
      localIntent.setClassName("com.xiaomi.account", "com.xiaomi.account.ui.LoginActivity");
      localIntent.setPackage("com.xiaomi.account");
      paramContext.startActivity(localIntent);
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      t0.c(paramContext, paramContext.getString(2131887258));
      z.c("Cal:D:AccountUtils", "addXiaomiAccount: ActivityNotFound");
    }
  }
  
  private static void f(MiAccountSchema paramMiAccountSchema, b paramb)
  {
    new Handler(Looper.getMainLooper()).post(new b(paramb, paramMiAccountSchema));
  }
  
  public static void g(b paramb)
  {
    AsyncTask.execute(new a(paramb));
  }
  
  private static MiAccountSchema h(Account paramAccount, Context paramContext)
  {
    if (paramAccount == null) {
      return null;
    }
    z.a("Cal:D:AccountUtils", "getAccountInfo(): account is not null");
    paramAccount = i(paramContext, paramAccount, "calendar");
    MiAccountSchema localMiAccountSchema = new MiAccountSchema();
    if (paramAccount != null)
    {
      paramContext = paramAccount.first;
      if (paramContext != null)
      {
        localMiAccountSchema.authToken = ((String)paramContext);
        localMiAccountSchema.userId = ((String)paramAccount.second);
        z.a("Cal:D:AccountUtils", "getAccountInfo(): success, return");
        return localMiAccountSchema;
      }
    }
    localMiAccountSchema.authToken = null;
    z.a("Cal:D:AccountUtils", "getAccountInfo(): no service token");
    return localMiAccountSchema;
  }
  
  private static Pair<String, String> i(Context paramContext, Account paramAccount, String paramString)
  {
    paramContext = g.z(paramContext).x(paramAccount, paramString, null);
    if (paramContext == null)
    {
      z.c("Cal:D:AccountUtils", "getAuthToken future is null");
      return null;
    }
    paramContext = paramContext.h();
    if (paramContext == null)
    {
      z.c("Cal:D:AccountUtils", "getAuthToken result is null");
      return null;
    }
    return new Pair(paramContext.serviceToken, paramContext.cUserId);
  }
  
  private static void j(Context paramContext, final b paramb)
  {
    if (!a) {
      k(paramContext);
    }
    Account localAccount = g.z(paramContext).l();
    if (localAccount != null)
    {
      f(h(localAccount, paramContext), paramb);
      return;
    }
    g.z(paramContext).c(new a(paramb), null);
  }
  
  private static void k(Context paramContext)
  {
    f.a(paramContext, new f.b(true, false));
    a = true;
  }
  
  class a
    implements h<XmAccountVisibility>
  {
    a(d.b paramb) {}
    
    public void a(i<XmAccountVisibility> parami)
    {
      new Thread(new c(parami, d.this, paramb)).start();
    }
  }
  
  public static abstract interface b
  {
    public abstract void a(MiAccountSchema paramMiAccountSchema);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     k3.d
 * JD-Core Version:    0.7.0.1
 */
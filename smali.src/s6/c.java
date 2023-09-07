package s6;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.accountsdk.account.data.AccountInfo;
import com.xiaomi.passport.accountmanager.g;
import com.xiaomi.passport.ui.internal.NeedBindSnsException;
import r6.a;
import r6.a.a;
import r6.a.b;
import r6.a.d;

public abstract class c
{
  private a<AccountInfo> a;
  public final String b;
  
  public c(String paramString)
  {
    this.b = paramString;
  }
  
  private void e(Context paramContext, AccountInfo paramAccountInfo)
  {
    if (paramAccountInfo == null) {
      return;
    }
    if (!TextUtils.isEmpty(paramAccountInfo.passToken)) {
      g.z(paramContext).q(paramAccountInfo);
    }
  }
  
  public void b()
  {
    a locala = this.a;
    if (locala != null)
    {
      locala.a();
      this.a = null;
    }
  }
  
  public void c(final Context paramContext, final b paramb, a.d<AccountInfo> paramd, a.b paramb1)
  {
    a locala = this.a;
    if (locala != null)
    {
      locala.a();
      this.a = null;
    }
    paramContext = new a(new a(paramContext, paramb), paramd, paramb1);
    this.a = paramContext;
    paramContext.c();
  }
  
  protected abstract AccountInfo d(Context paramContext, b paramb)
    throws Throwable;
  
  class a
    implements a.a<AccountInfo>
  {
    a(Context paramContext, b paramb) {}
    
    public AccountInfo a()
      throws Throwable
    {
      Object localObject = c.this.d(paramContext, paramb);
      c.a(c.this, paramContext, (AccountInfo)localObject);
      if (!p.k()) {
        return localObject;
      }
      localObject = new NeedBindSnsException(p.d);
      p.j();
      throw ((Throwable)localObject);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     s6.c
 * JD-Core Version:    0.7.0.1
 */
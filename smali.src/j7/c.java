package j7;

import android.content.Context;
import com.xiaomi.phonenum.data.AccountCertification;
import com.xiaomi.phonenum.obtain.PhoneException;
import com.xiaomi.phonenum.procedure.cert.AccountCertificationFetchException;
import g7.d;
import java.io.IOException;

public class c
  implements b
{
  private final String a;
  private final String b;
  
  public c(String paramString1, String paramString2)
  {
    this.a = paramString1;
    this.b = paramString2;
  }
  
  public AccountCertification a(Context paramContext, int paramInt)
    throws AccountCertificationFetchException
  {
    try
    {
      paramContext = d.a(paramContext).f(paramInt, this.a, this.b);
      return paramContext;
    }
    catch (IOException paramContext)
    {
      throw new AccountCertificationFetchException(paramContext);
    }
    catch (PhoneException paramContext)
    {
      throw new AccountCertificationFetchException(paramContext);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j7.c
 * JD-Core Version:    0.7.0.1
 */
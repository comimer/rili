package j7;

import android.content.Context;
import com.xiaomi.phonenum.data.AccountCertification;
import com.xiaomi.phonenum.procedure.cert.AccountCertificationFetchException;
import com.xiaomi.phonenum.utils.c;

public class a
{
  public static AccountCertification[] a(Context paramContext, b... paramVarArgs)
  {
    int i = h7.a.i(paramContext).f();
    AccountCertification[] arrayOfAccountCertification = new AccountCertification[i];
    for (int j = 0; j < i; j++)
    {
      int k = c.a(paramContext, j);
      Object localObject1;
      if (k == -1)
      {
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append("getAccountCertifications invalid subId for simIndex=");
        ((StringBuilder)localObject1).append(j);
        com.xiaomi.accountsdk.utils.b.g("AccountCertificationFetchHelper", ((StringBuilder)localObject1).toString());
      }
      else if (!com.xiaomi.phonenum.utils.b.a(paramContext, k))
      {
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append("getAccountCertifications sim not valid subId=");
        ((StringBuilder)localObject1).append(k);
        com.xiaomi.accountsdk.utils.b.g("AccountCertificationFetchHelper", ((StringBuilder)localObject1).toString());
      }
      else
      {
        Object localObject2 = com.xiaomi.phonenum.data.a.a(k);
        localObject1 = localObject2;
        if (localObject2 == null)
        {
          int m = paramVarArgs.length;
          int n = 0;
          for (;;)
          {
            localObject1 = localObject2;
            if (n >= m) {
              break;
            }
            localObject1 = paramVarArgs[n];
            try
            {
              localObject1 = ((b)localObject1).a(paramContext, k);
              localObject2 = localObject1;
              com.xiaomi.phonenum.data.a.b((AccountCertification)localObject1);
            }
            catch (AccountCertificationFetchException localAccountCertificationFetchException)
            {
              localObject1 = new StringBuilder();
              ((StringBuilder)localObject1).append("get AccountCertification failed simIndex=");
              ((StringBuilder)localObject1).append(j);
              ((StringBuilder)localObject1).append(", subId=");
              ((StringBuilder)localObject1).append(k);
              com.xiaomi.accountsdk.utils.b.h("AccountCertificationFetchHelper", ((StringBuilder)localObject1).toString(), localAccountCertificationFetchException);
              n++;
            }
          }
        }
        arrayOfAccountCertification[j] = localObject1;
      }
    }
    return arrayOfAccountCertification;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j7.a
 * JD-Core Version:    0.7.0.1
 */
package i7;

import android.content.Context;
import com.xiaomi.passport.sim.SIMInfo;
import com.xiaomi.phonenum.data.AccountCertification;
import com.xiaomi.phonenum.data.AccountCertification.b;
import java.util.ArrayList;
import java.util.List;

public class e
  implements c
{
  public SIMInfo[] a(Context paramContext, final String paramString, String[] paramArrayOfString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("call getSIMInfos sid=");
    localStringBuilder.append(paramString);
    localStringBuilder.append(", simInfoTypes=");
    localStringBuilder.append(String.join(",", paramArrayOfString));
    com.xiaomi.accountsdk.utils.b.g("OtherOsAccountPhoneNumberManager", localStringBuilder.toString());
    return SIMInfo.build(paramContext, paramArrayOfString, new a(paramString), null);
  }
  
  public AccountCertification[] b(Context paramContext, String paramString, b paramb)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("call getAccountCertifications sid=");
    localStringBuilder.append(paramString);
    localStringBuilder.append(", flag=");
    localStringBuilder.append(Integer.toBinaryString(paramb.a));
    com.xiaomi.accountsdk.utils.b.g("OtherOsAccountPhoneNumberManager", localStringBuilder.toString());
    ArrayList localArrayList = new ArrayList();
    if (paramb.b(2))
    {
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("add OperatorAccountCertificationFetcher for flag=");
      localStringBuilder.append(Integer.toBinaryString(paramb.a));
      com.xiaomi.accountsdk.utils.b.g("OtherOsAccountPhoneNumberManager", localStringBuilder.toString());
      localArrayList.add(new j7.c(paramString, paramContext.getPackageName()));
    }
    return j7.a.a(paramContext, (j7.b[])localArrayList.toArray(new j7.b[0]));
  }
  
  public void c(Context paramContext, String paramString, AccountCertification paramAccountCertification)
  {
    paramContext = new StringBuilder();
    paramContext.append("call invalidateAccountCertification sid=");
    paramContext.append(paramString);
    paramContext.append(", accountCertification=");
    paramContext.append(paramAccountCertification);
    com.xiaomi.accountsdk.utils.b.g("OtherOsAccountPhoneNumberManager", paramContext.toString());
    com.xiaomi.phonenum.data.a.c(paramAccountCertification);
  }
  
  class a
    implements AccountCertification.b
  {
    a(String paramString) {}
    
    public AccountCertification[] a(Context paramContext, b paramb)
    {
      return e.this.b(paramContext, paramString, paramb);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     i7.e
 * JD-Core Version:    0.7.0.1
 */
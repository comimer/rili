package z5;

import android.content.Context;
import com.xiaomi.accountsdk.utils.FidSigningUtil.FidSignException;
import com.xiaomi.accountsdk.utils.b;

public class g
{
  public static String a(Context paramContext, String paramString)
    throws FidSigningUtil.FidSignException
  {
    String str = d.d().b(paramContext);
    paramContext = new StringBuilder();
    paramContext.append("fidPrefix ");
    paramContext.append(str.substring(0, str.length() / 2));
    b.g("UDevIdUtil", paramContext.toString());
    return b(paramString, str);
  }
  
  private static String b(String paramString1, String paramString2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString1);
    localStringBuilder.append(paramString2);
    paramString1 = c.a(localStringBuilder.toString());
    paramString2 = new StringBuilder();
    paramString2.append("ud:");
    paramString2.append(paramString1);
    paramString1 = paramString2.toString();
    paramString2 = new StringBuilder();
    paramString2.append("uDevIdPrefix  ");
    paramString2.append(paramString1.substring(0, paramString1.length() / 2));
    b.g("UDevIdUtil", paramString2.toString());
    return paramString1;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     z5.g
 * JD-Core Version:    0.7.0.1
 */
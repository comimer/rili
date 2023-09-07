package b7;

import android.content.Context;
import android.os.Looper;
import com.xiaomi.passport.h;
import com.xiaomi.phonenum.data.AccountCertification;
import i7.a;
import i7.c;
import java.util.HashMap;
import java.util.Map;

public class b
{
  public static Map<String, String> a(Context paramContext, Map<String, String> paramMap)
  {
    if (Looper.myLooper() != Looper.getMainLooper())
    {
      Object localObject = paramMap;
      if (paramMap == null) {
        localObject = new HashMap();
      }
      AccountCertification[] arrayOfAccountCertification = a.a(paramContext).b(paramContext, "passportapi", i7.b.c(new int[] { 1 }));
      StringBuilder localStringBuilder1 = new StringBuilder();
      StringBuilder localStringBuilder2 = new StringBuilder();
      StringBuilder localStringBuilder3 = new StringBuilder();
      int i = arrayOfAccountCertification.length;
      for (int j = 0; j < i; j++)
      {
        paramMap = arrayOfAccountCertification[j];
        if (paramMap != null)
        {
          if (localStringBuilder1.length() > 0) {
            localStringBuilder1.append(";");
          }
          localStringBuilder1.append(paramMap.activatorToken);
          if (localStringBuilder2.length() > 0) {
            localStringBuilder2.append(";");
          }
          localStringBuilder2.append(paramMap.hashedPhoneNumber);
          if (localStringBuilder3.length() > 0) {
            localStringBuilder3.append(";");
          }
          String str = h.h(paramContext, new String[] { paramMap.hashedPhoneNumber }, null, 3000L);
          paramMap = str;
          if (str == null) {
            paramMap = "";
          }
          localStringBuilder3.append(paramMap);
        }
      }
      ((Map)localObject).put("Activator-Tokens", localStringBuilder1.toString());
      ((Map)localObject).put("Hashed-Phones", localStringBuilder2.toString());
      ((Map)localObject).put("Tz-Signs", localStringBuilder3.toString());
      return localObject;
    }
    throw new IllegalStateException("can not call in main thread");
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b7.b
 * JD-Core Version:    0.7.0.1
 */
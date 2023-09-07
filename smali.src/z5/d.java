package z5;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.xiaomi.accountsdk.utils.FidSigningUtil;
import com.xiaomi.accountsdk.utils.FidSigningUtil.FidSignException;
import com.xiaomi.accountsdk.utils.FidSigningUtil.c;
import com.xiaomi.accountsdk.utils.FidSigningUtil.d;

public class d
{
  private static volatile d a;
  
  private void a(Context paramContext, String paramString)
  {
    e(paramContext).edit().putString("fid", paramString).apply();
  }
  
  private String c(Context paramContext)
  {
    return e(paramContext).getString("fid", null);
  }
  
  public static d d()
  {
    if (a == null) {
      try
      {
        if (a == null)
        {
          d locald = new z5/d;
          locald.<init>();
          a = locald;
        }
      }
      finally {}
    }
    return a;
  }
  
  private static SharedPreferences e(Context paramContext)
  {
    if (paramContext != null) {
      return paramContext.getSharedPreferences("passport_fid_manager", 0);
    }
    throw new IllegalArgumentException("context is null");
  }
  
  public String b(Context paramContext)
    throws FidSigningUtil.FidSignException
  {
    Object localObject1 = c(paramContext);
    Object localObject2 = localObject1;
    if (localObject1 == null)
    {
      localObject1 = FidSigningUtil.a();
      if ((localObject1 instanceof FidSigningUtil.d)) {
        localObject1 = ((FidSigningUtil.d)localObject1).a();
      } else {
        localObject1 = ((FidSigningUtil.c)localObject1).a();
      }
      localObject2 = localObject1;
      if (!TextUtils.isEmpty((CharSequence)localObject1))
      {
        a(paramContext, (String)localObject1);
        localObject2 = localObject1;
      }
    }
    return localObject2;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     z5.d
 * JD-Core Version:    0.7.0.1
 */
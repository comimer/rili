package j5;

import android.accounts.Account;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.xiaomi.accountsdk.utils.b;
import com.xiaomi.passport.accountmanager.g;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class a
{
  private static SharedPreferences a(Context paramContext)
  {
    return paramContext.getSharedPreferences("extra_tokens", 0);
  }
  
  public static void b(Context paramContext, Account paramAccount)
  {
    b.g("ExtraTokensManager", "Restore to UserData");
    g localg = g.z(paramContext);
    paramContext = a(paramContext);
    Object localObject1 = paramContext.getString("userId", null);
    if (!TextUtils.equals(paramAccount.name, (CharSequence)localObject1))
    {
      b.g("ExtraTokensManager", "ignore restore: userId not match");
      return;
    }
    paramContext = paramContext.getAll();
    paramContext.remove("userId");
    localObject1 = paramContext.entrySet().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      Object localObject2 = (Map.Entry)((Iterator)localObject1).next();
      paramContext = (String)((Map.Entry)localObject2).getKey();
      if (!TextUtils.isEmpty(paramContext))
      {
        localObject2 = ((Map.Entry)localObject2).getValue();
        if ((localObject2 instanceof String))
        {
          localObject2 = (String)localObject2;
          if (localg.o(paramAccount, paramContext) == null) {
            localg.u(paramAccount, paramContext, (String)localObject2);
          }
        }
      }
    }
  }
  
  @SuppressLint({"ApplySharedPref"})
  public static void c(Context paramContext, String paramString, Map<String, String> paramMap)
  {
    b.g("ExtraTokensManager", "Save into SharedPreferences");
    paramContext = a(paramContext);
    String str = paramContext.getString("userId", null);
    paramContext = paramContext.edit();
    if (!TextUtils.equals(paramString, str))
    {
      b.g("ExtraTokensManager", "clear all old user token data");
      paramContext.clear();
      paramContext.putString("userId", paramString);
    }
    paramString = paramMap.entrySet().iterator();
    while (paramString.hasNext())
    {
      paramMap = (Map.Entry)paramString.next();
      paramContext.putString((String)paramMap.getKey(), (String)paramMap.getValue());
    }
    paramContext.commit();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j5.a
 * JD-Core Version:    0.7.0.1
 */
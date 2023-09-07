package n6;

import android.accounts.Account;
import android.view.View;
import com.xiaomi.accountsdk.account.data.AccountInfo;
import com.xiaomi.accountsdk.account.data.AccountInfo.b;
import com.xiaomi.passport.accountmanager.g;
import com.xiaomi.passport.jsb.PassportJsbMethodException;
import com.xiaomi.passport.webview.a;
import java.util.Iterator;
import m6.b;
import m6.d;
import org.json.JSONException;
import org.json.JSONObject;

public class r
  extends b
{
  public String getName()
  {
    return "setAccountInfo";
  }
  
  public d invoke(a parama, JSONObject paramJSONObject)
    throws PassportJsbMethodException
  {
    b.checkUrlDomainPermission(parama);
    parama = parama.getContext();
    Object localObject1 = getParamsStringFieldOrThrow(paramJSONObject, "userId");
    Object localObject2 = paramJSONObject.optString("passToken");
    boolean bool = paramJSONObject.optBoolean("addAccountIfNotExists", false);
    Object localObject3 = new AccountInfo.b().F((String)localObject1).w((String)localObject2).r();
    localObject2 = g.z(parama);
    parama = ((g)localObject2).l();
    if (parama == null)
    {
      if (bool)
      {
        bool = ((g)localObject2).q((AccountInfo)localObject3);
        parama = ((g)localObject2).l();
        if (!bool) {
          return new d(false);
        }
      }
      else
      {
        return new d(false);
      }
    }
    else
    {
      if (!parama.name.equals(localObject1)) {
        break label207;
      }
      ((g)localObject2).q((AccountInfo)localObject3);
    }
    localObject1 = paramJSONObject.optJSONObject("userData");
    if (localObject1 != null) {
      try
      {
        paramJSONObject = ((JSONObject)localObject1).keys();
        while (paramJSONObject.hasNext())
        {
          localObject3 = (String)paramJSONObject.next();
          ((g)localObject2).u(parama, (String)localObject3, ((JSONObject)localObject1).getString((String)localObject3));
        }
        return new d(true);
      }
      catch (JSONException parama)
      {
        throw new IllegalStateException("should never happen", parama);
      }
    }
    label207:
    return new d(false);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     n6.r
 * JD-Core Version:    0.7.0.1
 */
package n6;

import android.content.Context;
import android.view.View;
import com.xiaomi.passport.jsb.PassportJsbMethodException;
import com.xiaomi.passport.sim.SIMInfo;
import com.xiaomi.phonenum.data.AccountCertification;
import i7.c;
import java.util.HashSet;
import java.util.Set;
import m6.b;
import m6.d;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import r6.a.a;
import r6.a.b;
import r6.a.d;

public class f
  extends b
{
  private r6.a<JSONObject> a;
  
  public String getName()
  {
    return "getSIMInfo";
  }
  
  public d invoke(com.xiaomi.passport.webview.a parama, JSONObject paramJSONObject)
    throws PassportJsbMethodException
  {
    b.checkUrlDomainPermission(parama);
    Object localObject1 = parama.getContext();
    String str = getParamsStringFieldOrThrow(paramJSONObject, "callbackId");
    try
    {
      Object localObject2 = paramJSONObject.getJSONArray("simInfoTypes");
      paramJSONObject = new String[((JSONArray)localObject2).length()];
      HashSet localHashSet = new java/util/HashSet;
      localHashSet.<init>();
      localHashSet.add("slotIndex");
      localHashSet.add("subId");
      localHashSet.add("mccmnc");
      localHashSet.add("networkMCCMNC");
      localHashSet.add("inService");
      localHashSet.add("mobileDataEnable");
      localHashSet.add("activationAccountCert");
      localHashSet.add("operatorAccountCert");
      localHashSet.add("activationOrOperatorAccountCert");
      for (int i = 0; i < ((JSONArray)localObject2).length(); i++)
      {
        localObject3 = ((JSONArray)localObject2).getString(i);
        paramJSONObject[i] = localObject3;
        if (!localHashSet.contains(localObject3)) {
          return new d(false);
        }
      }
      Object localObject3 = this.a;
      if (localObject3 != null) {
        ((r6.a)localObject3).a();
      }
      localObject2 = new r6/a;
      localObject3 = new n6/f$c;
      ((c)localObject3).<init>((Context)localObject1, paramJSONObject);
      paramJSONObject = new n6/f$a;
      paramJSONObject.<init>(this, parama, str);
      localObject1 = new n6/f$b;
      ((b)localObject1).<init>(this, parama, str);
      ((r6.a)localObject2).<init>((a.a)localObject3, paramJSONObject, (a.b)localObject1);
      this.a = ((r6.a)localObject2);
      ((r6.a)localObject2).c();
      parama = new d(true);
      return parama;
    }
    catch (JSONException parama)
    {
      throw new PassportJsbMethodException(104, parama.getMessage(), parama);
    }
  }
  
  public void release(com.xiaomi.passport.webview.a parama)
  {
    super.release(parama);
    parama = this.a;
    if (parama != null) {
      parama.a();
    }
  }
  
  class a
    implements a.d<JSONObject>
  {
    a(com.xiaomi.passport.webview.a parama, String paramString) {}
    
    public void b(JSONObject paramJSONObject)
    {
      JSONObject localJSONObject = new JSONObject();
      try
      {
        localJSONObject.put("result", paramJSONObject);
        m6.a.b(this.a, this.b, paramJSONObject);
        return;
      }
      catch (JSONException paramJSONObject)
      {
        throw new IllegalStateException("should never happen", paramJSONObject);
      }
    }
  }
  
  class b
    implements a.b
  {
    b(com.xiaomi.passport.webview.a parama, String paramString) {}
    
    public void a(Throwable paramThrowable)
    {
      JSONObject localJSONObject = new JSONObject();
      try
      {
        localJSONObject.put("error", paramThrowable.getMessage());
        m6.a.b(this.a, this.b, localJSONObject);
        return;
      }
      catch (JSONException paramThrowable)
      {
        throw new IllegalStateException("should never happen", paramThrowable);
      }
    }
  }
  
  private static class c
    implements a.a<JSONObject>
  {
    private final Context a;
    private final String[] b;
    
    public c(Context paramContext, String[] paramArrayOfString)
    {
      this.a = paramContext;
      this.b = paramArrayOfString;
    }
    
    public JSONObject a()
      throws Throwable
    {
      SIMInfo[] arrayOfSIMInfo = i7.a.a(this.a).a(this.a, "passportapi", this.b);
      JSONObject localJSONObject1 = new JSONObject();
      localJSONObject1.put("slotCount", arrayOfSIMInfo.length);
      for (int i = 0; i < arrayOfSIMInfo.length; i++)
      {
        SIMInfo localSIMInfo = arrayOfSIMInfo[i];
        if (localSIMInfo != null)
        {
          JSONObject localJSONObject2 = new JSONObject();
          localJSONObject2.putOpt("slotIndex", Integer.valueOf(localSIMInfo.slotIndex)).putOpt("subId", Integer.valueOf(localSIMInfo.subId)).putOpt("mccmnc", localSIMInfo.mccmnc).putOpt("networkMCCMNC", localSIMInfo.networkMCCMNC).putOpt("inService", localSIMInfo.inService).putOpt("mobileDataEnable", localSIMInfo.mobileDataEnable);
          if (localSIMInfo.accountCert != null)
          {
            JSONObject localJSONObject3 = new JSONObject();
            localJSONObject3.put("activatorToken", localSIMInfo.accountCert.activatorToken);
            localJSONObject3.put("hashedPhone", localSIMInfo.accountCert.hashedPhoneNumber);
            for (localSIMInfo : this.b)
            {
              localSIMInfo.hashCode();
              int m = -1;
              switch (localSIMInfo.hashCode())
              {
              default: 
                break;
              case 2092001019: 
                if (localSIMInfo.equals("activationAccountCert")) {
                  m = 2;
                }
                break;
              case 1178409645: 
                if (localSIMInfo.equals("operatorAccountCert")) {
                  m = 1;
                }
                break;
              case -1588313004: 
                if (localSIMInfo.equals("activationOrOperatorAccountCert")) {
                  m = 0;
                }
                break;
              }
              switch (m)
              {
              default: 
                break;
              case 0: 
              case 1: 
              case 2: 
                localJSONObject2.put(localSIMInfo, localJSONObject3);
              }
            }
          }
          localJSONObject1.put(String.valueOf(i), localJSONObject2);
        }
      }
      return localJSONObject1;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     n6.f
 * JD-Core Version:    0.7.0.1
 */
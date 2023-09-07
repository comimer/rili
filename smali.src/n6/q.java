package n6;

import android.accounts.Account;
import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import b7.h;
import com.xiaomi.passport.accountmanager.g;
import com.xiaomi.passport.jsb.PassportJsbMethodException;
import com.xiaomi.passport.servicetoken.ServiceTokenResult;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import m6.d;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import r6.a.a;
import r6.a.b;
import r6.a.d;

public class q
  extends m6.b
{
  private r6.a<JSONObject> a;
  
  public String getName()
  {
    return "requestAndSetLoginCookies";
  }
  
  public d invoke(final com.xiaomi.passport.webview.a parama, JSONObject paramJSONObject)
    throws PassportJsbMethodException
  {
    Object localObject1 = g.z(parama.getContext()).l();
    int i = 0;
    if (localObject1 == null) {
      return new d(false);
    }
    localObject1 = getParamsStringFieldOrThrow(paramJSONObject, "callbackId");
    try
    {
      JSONArray localJSONArray = paramJSONObject.getJSONArray("serviceIdCookieDomains");
      paramJSONObject = new ArrayList();
      while (i < localJSONArray.length()) {
        try
        {
          JSONObject localJSONObject = localJSONArray.getJSONObject(i);
          localObject2 = new android/util/Pair;
          ((Pair)localObject2).<init>(localJSONObject.getString("serviceId"), localJSONObject.optString("cookieDomain"));
          paramJSONObject.add(localObject2);
          i++;
        }
        catch (JSONException parama)
        {
          throw new PassportJsbMethodException(104, "error get service id", parama);
        }
      }
      Object localObject2 = this.a;
      if (localObject2 != null) {
        ((r6.a)localObject2).a();
      }
      parama = new r6.a(new c(parama.getContext(), paramJSONObject), new a(parama, (String)localObject1), new b(parama, (String)localObject1));
      this.a = parama;
      parama.c();
      return new d(true);
    }
    catch (JSONException parama)
    {
      throw new PassportJsbMethodException(104, "no serviceIdCookieDomains array", parama);
    }
  }
  
  public void release(com.xiaomi.passport.webview.a parama)
  {
    super.release(parama);
    parama = this.a;
    if (parama != null)
    {
      parama.a();
      this.a = null;
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
        localJSONObject.put("result", true);
        localJSONObject.put("data", paramJSONObject);
        m6.a.b(parama, this.b, localJSONObject);
        return;
      }
      catch (JSONException paramJSONObject)
      {
        throw new IllegalStateException("never happen", paramJSONObject);
      }
    }
  }
  
  class b
    implements a.b
  {
    b(com.xiaomi.passport.webview.a parama, String paramString) {}
    
    public void a(Throwable paramThrowable)
    {
      paramThrowable = new JSONObject();
      try
      {
        paramThrowable.put("result", false);
        m6.a.b(parama, this.b, paramThrowable);
        return;
      }
      catch (JSONException paramThrowable)
      {
        throw new IllegalStateException("never happen", paramThrowable);
      }
    }
  }
  
  private static class c
    implements a.a<JSONObject>
  {
    public final Context a;
    public final List<Pair<String, String>> b;
    
    public c(Context paramContext, List<Pair<String, String>> paramList)
    {
      this.a = paramContext;
      this.b = new ArrayList(paramList);
    }
    
    public JSONObject a()
      throws Throwable
    {
      Object localObject1 = g.z(this.a);
      Account localAccount = ((g)localObject1).l();
      Object localObject2 = new HashSet();
      Object localObject3 = this.b.iterator();
      while (((Iterator)localObject3).hasNext()) {
        ((Set)localObject2).add((String)((Pair)((Iterator)localObject3).next()).first);
      }
      localObject3 = new HashMap();
      Object localObject4 = ((Set)localObject2).iterator();
      Object localObject5;
      while (((Iterator)localObject4).hasNext())
      {
        localObject2 = (String)((Iterator)localObject4).next();
        localObject5 = ((g)localObject1).j(localAccount, (String)localObject2, null);
        if (localObject5 != null) {
          ((g)localObject1).f((ServiceTokenResult)localObject5).h();
        }
        ((Map)localObject3).put(localObject2, ((g)localObject1).x(localAccount, (String)localObject2, null).h().stsCookies);
      }
      localObject1 = this.b.iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Pair)((Iterator)localObject1).next();
        if (!TextUtils.isEmpty((CharSequence)((Pair)localObject2).second)) {
          h.g((String)((Pair)localObject2).second, h.e((String)((Map)localObject3).get(((Pair)localObject2).first)));
        }
      }
      localObject4 = new JSONObject();
      JSONArray localJSONArray = new JSONArray();
      try
      {
        localObject2 = this.b.iterator();
        while (((Iterator)localObject2).hasNext())
        {
          localObject1 = (Pair)((Iterator)localObject2).next();
          localObject5 = new org/json/JSONObject;
          ((JSONObject)localObject5).<init>();
          ((JSONObject)localObject5).put("serviceId", ((Pair)localObject1).first);
          ((JSONObject)localObject5).put("cookieDomain", ((Pair)localObject1).second);
          ((JSONObject)localObject5).put("cookieString", ((Map)localObject3).get(((Pair)localObject1).first));
          localJSONArray.put(localObject5);
        }
        ((JSONObject)localObject4).put("userId", localAccount.name);
        ((JSONObject)localObject4).put("cookies", localJSONArray);
        return localObject4;
      }
      catch (JSONException localJSONException)
      {
        throw new IllegalStateException("should never happen", localJSONException);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     n6.q
 * JD-Core Version:    0.7.0.1
 */
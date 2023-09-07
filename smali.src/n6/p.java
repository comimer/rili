package n6;

import android.content.Context;
import android.view.View;
import com.xiaomi.passport.accountmanager.g;
import com.xiaomi.passport.jsb.PassportJsbMethodException;
import m6.b;
import m6.d;
import org.json.JSONException;
import org.json.JSONObject;
import r6.a.a;
import r6.a.d;

public class p
  extends b
{
  private r6.a<Boolean> a;
  
  public String getName()
  {
    return "removeAccount";
  }
  
  public d invoke(final com.xiaomi.passport.webview.a parama, final JSONObject paramJSONObject)
    throws PassportJsbMethodException
  {
    b.checkUrlDomainPermission(parama);
    Context localContext = parama.getContext().getApplicationContext();
    if (g.z(localContext).l() != null)
    {
      paramJSONObject = getParamsStringFieldOrThrow(paramJSONObject, "callbackId");
      parama = new r6.a(new b(localContext), new a(parama, paramJSONObject), null);
      this.a = parama;
      parama.c();
      return new d(true);
    }
    throw new PassportJsbMethodException(105, "no account");
  }
  
  public void release(com.xiaomi.passport.webview.a parama)
  {
    parama = this.a;
    if (parama != null)
    {
      parama.a();
      this.a = null;
    }
  }
  
  class a
    implements a.d<Boolean>
  {
    a(com.xiaomi.passport.webview.a parama, String paramString) {}
    
    public void b(Boolean paramBoolean)
    {
      JSONObject localJSONObject = new JSONObject();
      try
      {
        localJSONObject.put("result", paramBoolean);
        m6.a.b(parama, paramJSONObject, localJSONObject);
        return;
      }
      catch (JSONException paramBoolean)
      {
        throw new IllegalStateException(paramBoolean);
      }
    }
  }
  
  private static class b
    implements a.a<Boolean>
  {
    public final Context a;
    
    public b(Context paramContext)
    {
      this.a = paramContext;
    }
    
    public Boolean a()
    {
      return Boolean.valueOf(t5.a.c(this.a));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     n6.p
 * JD-Core Version:    0.7.0.1
 */
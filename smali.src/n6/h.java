package n6;

import android.content.Context;
import android.view.View;
import com.xiaomi.passport.jsb.PassportJsbMethodException;
import m6.b;
import m6.d;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import r6.a.a;
import r6.a.b;
import r6.a.d;

public class h
  extends b
{
  private r6.a<String> a;
  
  public String getName()
  {
    return "getTZSign";
  }
  
  public d invoke(com.xiaomi.passport.webview.a parama, JSONObject paramJSONObject)
    throws PassportJsbMethodException
  {
    b.checkUrlDomainPermission(parama);
    Object localObject1 = parama.getContext();
    String str = getParamsStringFieldOrThrow(paramJSONObject, "callbackId");
    try
    {
      long l = paramJSONObject.optLong("timeoutMs", 15000L);
      Object localObject2 = paramJSONObject.getJSONArray("tzSignParts");
      paramJSONObject = new String[((JSONArray)localObject2).length()];
      for (int i = 0; i < ((JSONArray)localObject2).length(); i++) {
        paramJSONObject[i] = ((JSONArray)localObject2).getString(i);
      }
      localObject2 = this.a;
      if (localObject2 != null) {
        ((r6.a)localObject2).a();
      }
      r6.a locala = new r6/a;
      localObject2 = new n6/h$c;
      ((c)localObject2).<init>((Context)localObject1, paramJSONObject, l);
      localObject1 = new n6/h$a;
      ((a)localObject1).<init>(this, parama, str);
      paramJSONObject = new n6/h$b;
      paramJSONObject.<init>(this, parama, str);
      locala.<init>((a.a)localObject2, (a.d)localObject1, paramJSONObject);
      this.a = locala;
      locala.c();
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
    implements a.d<String>
  {
    a(com.xiaomi.passport.webview.a parama, String paramString) {}
    
    public void b(String paramString)
    {
      JSONObject localJSONObject = new JSONObject();
      try
      {
        localJSONObject.put("result", paramString);
        m6.a.b(this.a, this.b, localJSONObject);
        return;
      }
      catch (JSONException paramString)
      {
        throw new IllegalStateException("should never happen", paramString);
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
    implements a.a<String>
  {
    private final Context a;
    private final String[] b;
    private final long c;
    
    public c(Context paramContext, String[] paramArrayOfString, long paramLong)
    {
      this.a = paramContext;
      this.b = paramArrayOfString;
      this.c = paramLong;
    }
    
    public String a()
      throws Throwable
    {
      return com.xiaomi.passport.h.h(this.a, this.b, null, this.c);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     n6.h
 * JD-Core Version:    0.7.0.1
 */
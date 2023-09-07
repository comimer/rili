package m6;

import com.xiaomi.accountsdk.utils.b;
import org.json.JSONObject;

public class a
{
  public static String a(String paramString)
  {
    return paramString.replace("'", "\\'");
  }
  
  public static void b(com.xiaomi.passport.webview.a parama, final String paramString, final JSONObject paramJSONObject)
  {
    b.g("PassportFrontendMethodInvoker", String.format("invoke callback %s with params %s", new Object[] { paramString, paramJSONObject }));
    if (paramJSONObject == null) {
      paramJSONObject = "";
    } else {
      paramJSONObject = paramJSONObject.toString();
    }
    parama.post(new a(paramString, paramJSONObject));
  }
  
  class a
    implements Runnable
  {
    a(String paramString1, String paramString2) {}
    
    public void run()
    {
      a.this.loadUrl(String.format("javascript: invokePassportCallback('%s', '%s');", new Object[] { paramString, a.a(paramJSONObject) }));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     m6.a
 * JD-Core Version:    0.7.0.1
 */
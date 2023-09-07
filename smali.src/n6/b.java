package n6;

import android.view.View;
import com.xiaomi.accountsdk.utils.k;
import com.xiaomi.passport.jsb.PassportJsbMethodException;
import com.xiaomi.passport.webview.a;
import m6.d;
import org.json.JSONException;
import org.json.JSONObject;

public class b
  extends m6.b
{
  public String getName()
  {
    return "getAppInfo";
  }
  
  public d invoke(a parama, JSONObject paramJSONObject)
    throws PassportJsbMethodException
  {
    parama = parama.getContext();
    paramJSONObject = getParamsStringFieldOrThrow(paramJSONObject, "packageName");
    if (k.d(parama, paramJSONObject))
    {
      JSONObject localJSONObject = new JSONObject();
      try
      {
        localJSONObject.put("versionCode", k.a(parama, paramJSONObject));
        localJSONObject.put("result", "installed");
        parama = new d(localJSONObject);
        return parama;
      }
      catch (JSONException parama)
      {
        throw new IllegalStateException("should never happen", parama);
      }
    }
    parama = new StringBuilder();
    parama.append("package ");
    parama.append(paramJSONObject);
    parama.append(" not installed");
    throw new PassportJsbMethodException(150, parama.toString());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     n6.b
 * JD-Core Version:    0.7.0.1
 */
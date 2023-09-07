package n6;

import android.app.Activity;
import android.view.View;
import com.xiaomi.passport.jsb.PassportJsbMethodException;
import m6.b;
import m6.d;
import org.json.JSONObject;

public class a
  extends b
{
  public String getName()
  {
    return "closePage";
  }
  
  public d invoke(com.xiaomi.passport.webview.a parama, JSONObject paramJSONObject)
    throws PassportJsbMethodException
  {
    parama = parama.getContext();
    if ((parama instanceof Activity))
    {
      parama = (Activity)parama;
      paramJSONObject = paramJSONObject.optString("reason");
      if ("success".equals(paramJSONObject)) {
        parama.setResult(-1);
      } else if ("cancel".equals(paramJSONObject)) {
        parama.setResult(0);
      }
      parama.finish();
      return new d(true);
    }
    throw new PassportJsbMethodException(105, "WebView is not attached to valid page");
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     n6.a
 * JD-Core Version:    0.7.0.1
 */
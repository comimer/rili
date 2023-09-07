package n6;

import android.webkit.WebView;
import com.xiaomi.passport.jsb.PassportJsbMethodException;
import com.xiaomi.passport.webview.a;
import m6.b;
import m6.d;
import org.json.JSONObject;

public class l
  extends b
{
  public String getName()
  {
    return "goForwards";
  }
  
  public d invoke(a parama, JSONObject paramJSONObject)
    throws PassportJsbMethodException
  {
    int i = paramJSONObject.optInt("steps");
    if (parama.canGoBackOrForward(i))
    {
      parama.goBackOrForward(i);
      return new d(true);
    }
    return new d(false);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     n6.l
 * JD-Core Version:    0.7.0.1
 */
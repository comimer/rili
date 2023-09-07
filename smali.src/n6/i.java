package n6;

import android.app.Activity;
import android.view.View;
import android.webkit.WebView;
import com.xiaomi.passport.jsb.PassportJsbMethodException;
import com.xiaomi.passport.webview.a;
import m6.b;
import m6.d;
import org.json.JSONObject;

public class i
  extends b
{
  public String getName()
  {
    return "goBack";
  }
  
  public d invoke(a parama, JSONObject paramJSONObject)
    throws PassportJsbMethodException
  {
    if (parama.canGoBack())
    {
      parama.goBack();
    }
    else
    {
      parama = parama.getContext();
      if ((parama instanceof Activity)) {
        ((Activity)parama).finish();
      }
    }
    return new d(true);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     n6.i
 * JD-Core Version:    0.7.0.1
 */
package n6;

import android.view.View;
import com.xiaomi.accountsdk.utils.v;
import com.xiaomi.passport.jsb.PassportJsbMethodException;
import com.xiaomi.passport.webview.a;
import m6.b;
import m6.d;
import org.json.JSONObject;

public class n
  extends b
{
  public String getName()
  {
    return "isInTalkBackMode";
  }
  
  public d invoke(a parama, JSONObject paramJSONObject)
    throws PassportJsbMethodException
  {
    return new d(v.a(parama.getContext()));
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     n6.n
 * JD-Core Version:    0.7.0.1
 */
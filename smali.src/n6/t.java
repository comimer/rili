package n6;

import android.content.Context;
import android.view.View;
import android.widget.Toast;
import com.xiaomi.passport.jsb.PassportJsbMethodException;
import com.xiaomi.passport.webview.a;
import m6.b;
import m6.d;
import org.json.JSONObject;

public class t
  extends b
{
  public String getName()
  {
    return "showToast";
  }
  
  public d invoke(a parama, JSONObject paramJSONObject)
    throws PassportJsbMethodException
  {
    paramJSONObject = getParamsStringFieldOrThrow(paramJSONObject, "text");
    Toast.makeText(parama.getContext().getApplicationContext(), paramJSONObject, 0).show();
    return new d(true);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     n6.t
 * JD-Core Version:    0.7.0.1
 */
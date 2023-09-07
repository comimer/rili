package n6;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import com.xiaomi.passport.jsb.PassportJsbMethodException;
import com.xiaomi.passport.webview.a;
import m6.b;
import m6.d;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class u
  extends b
{
  public String getName()
  {
    return "startPage";
  }
  
  public d invoke(a parama, JSONObject paramJSONObject)
    throws PassportJsbMethodException
  {
    parama = parama.getContext();
    Intent localIntent = new Intent();
    Object localObject = paramJSONObject.optString("action");
    if (!TextUtils.isEmpty((CharSequence)localObject)) {
      localIntent.setAction((String)localObject);
    }
    localObject = paramJSONObject.optJSONArray("categories");
    int j;
    if (localObject != null)
    {
      int i = ((JSONArray)localObject).length();
      for (j = 0; j < i; j++)
      {
        String str = ((JSONArray)localObject).optString(j);
        if (!TextUtils.isEmpty(str)) {
          localIntent.addCategory(str);
        }
      }
    }
    localObject = paramJSONObject.optString("package");
    if (!TextUtils.isEmpty((CharSequence)localObject)) {
      localIntent.setPackage((String)localObject);
    }
    localObject = paramJSONObject.optString("data");
    if (!TextUtils.isEmpty((CharSequence)localObject)) {
      localIntent.setData(Uri.parse((String)localObject));
    }
    if (paramJSONObject.has("flags")) {
      try
      {
        j = paramJSONObject.getInt("flags");
        localIntent.setFlags(j);
      }
      catch (JSONException parama)
      {
        throw new IllegalStateException("should never happen", parama);
      }
    }
    localIntent.putExtras(b.jsonToBundle(paramJSONObject.optJSONObject("bundle")));
    boolean bool = paramJSONObject.optBoolean("closeCurrentPage");
    if (((parama instanceof Activity)) && (bool)) {
      ((Activity)parama).finish();
    }
    try
    {
      parama.startActivity(localIntent);
      parama = new d(true);
      return parama;
    }
    catch (ActivityNotFoundException parama)
    {
      throw new PassportJsbMethodException(106, "can not find target page", parama);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     n6.u
 * JD-Core Version:    0.7.0.1
 */
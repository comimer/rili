package n6;

import android.webkit.WebBackForwardList;
import android.webkit.WebHistoryItem;
import android.webkit.WebView;
import com.xiaomi.passport.jsb.PassportJsbMethodException;
import com.xiaomi.passport.webview.a;
import m6.b;
import m6.d;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class e
  extends b
{
  public String getName()
  {
    return "getLoadHistory";
  }
  
  public d invoke(a parama, JSONObject paramJSONObject)
    throws PassportJsbMethodException
  {
    WebBackForwardList localWebBackForwardList = parama.copyBackForwardList();
    int i = localWebBackForwardList.getSize();
    try
    {
      JSONObject localJSONObject = new org/json/JSONObject;
      localJSONObject.<init>();
      localJSONObject.put("current", localWebBackForwardList.getCurrentIndex());
      localJSONObject.put("total", i);
      parama = new org/json/JSONArray;
      parama.<init>();
      for (int j = 0; j < i; j++)
      {
        paramJSONObject = new org/json/JSONObject;
        paramJSONObject.<init>();
        WebHistoryItem localWebHistoryItem = localWebBackForwardList.getItemAtIndex(j);
        paramJSONObject.put("originalUrl", localWebHistoryItem.getOriginalUrl());
        paramJSONObject.put("url", localWebHistoryItem.getUrl());
        paramJSONObject.put("title", localWebHistoryItem.getTitle());
        parama.put(paramJSONObject);
      }
      localJSONObject.put("history", parama);
      parama = new d(localJSONObject);
      return parama;
    }
    catch (JSONException parama)
    {
      throw new PassportJsbMethodException(105, "GetLoadHistory", parama);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     n6.e
 * JD-Core Version:    0.7.0.1
 */
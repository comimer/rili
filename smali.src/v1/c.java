package v1;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.android.calendar.application.CalendarApplication;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class c
  implements b
{
  private SharedPreferences a = CalendarApplication.e().getApplicationContext().getSharedPreferences("NET_MOCK_INFO", 0);
  
  public static c d()
  {
    return b.a();
  }
  
  public void a()
  {
    this.a.edit().clear().apply();
  }
  
  public void b(a parama)
  {
    try
    {
      JSONArray localJSONArray = new org/json/JSONArray;
      localJSONArray.<init>(this.a.getString("key_mock_data", "[]"));
      JSONObject localJSONObject = new org/json/JSONObject;
      localJSONObject.<init>();
      localJSONObject.put("key_path", parama.b());
      localJSONObject.put("key_file", parama.a());
      localJSONArray.put(localJSONObject);
      this.a.edit().putString("key_mock_data", localJSONArray.toString()).apply();
    }
    catch (JSONException parama)
    {
      parama.printStackTrace();
    }
  }
  
  public ArrayList<a> c()
  {
    localArrayList = new ArrayList();
    try
    {
      if (this.a.contains("key_mock_data"))
      {
        JSONArray localJSONArray = new org/json/JSONArray;
        localJSONArray.<init>(this.a.getString("key_mock_data", ""));
        for (int i = 0; i < localJSONArray.length(); i++)
        {
          a locala = new v1/a;
          locala.<init>();
          JSONObject localJSONObject = (JSONObject)localJSONArray.opt(i);
          locala.d(localJSONObject.optString("key_path", ""));
          locala.c(localJSONObject.optString("key_file", ""));
          localArrayList.add(locala);
        }
      }
      return localArrayList;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
  }
  
  private static class b
  {
    private static c a = new c(null);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     v1.c
 * JD-Core Version:    0.7.0.1
 */
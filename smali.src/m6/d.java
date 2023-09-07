package m6;

import org.json.JSONException;
import org.json.JSONObject;

public class d
{
  private final Object a;
  
  public d(JSONObject paramJSONObject)
  {
    if (paramJSONObject != null)
    {
      this.a = paramJSONObject;
      return;
    }
    throw new IllegalArgumentException("params can not be null");
  }
  
  public d(boolean paramBoolean)
  {
    this.a = Boolean.valueOf(paramBoolean);
  }
  
  public void a(JSONObject paramJSONObject, String paramString)
  {
    try
    {
      paramJSONObject.put(paramString, this.a);
      return;
    }
    catch (JSONException paramJSONObject)
    {
      throw new IllegalStateException("should not happen", paramJSONObject);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     m6.d
 * JD-Core Version:    0.7.0.1
 */
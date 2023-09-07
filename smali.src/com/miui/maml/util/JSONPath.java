package com.miui.maml.util;

import android.text.TextUtils;
import android.util.Log;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class JSONPath
{
  private static final String LOG_TAG = "JSONPath";
  private JSONObject mRoot;
  private JSONArray mRootArray;
  
  public JSONPath(JSONArray paramJSONArray)
  {
    this.mRootArray = paramJSONArray;
  }
  
  public JSONPath(JSONObject paramJSONObject)
  {
    this.mRoot = paramJSONObject;
  }
  
  public Object get(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    String[] arrayOfString = paramString.split("/");
    paramString = this.mRoot;
    if (paramString == null) {
      paramString = this.mRootArray;
    }
    if (paramString == null) {
      return null;
    }
    int i = 0;
    for (;;)
    {
      Object localObject1 = paramString;
      try
      {
        if (i < arrayOfString.length)
        {
          Object localObject2 = arrayOfString[i];
          if (TextUtils.isEmpty((CharSequence)localObject2))
          {
            localObject1 = paramString;
          }
          else
          {
            int j = ((String)localObject2).indexOf("[");
            int k;
            if (j != -1)
            {
              k = Integer.parseInt(((String)localObject2).substring(j + 1, ((String)localObject2).length() - 1));
              localObject2 = ((String)localObject2).substring(0, j);
            }
            else
            {
              k = -1;
            }
            localObject1 = paramString;
            if ((paramString instanceof JSONObject))
            {
              localObject1 = paramString;
              if (!TextUtils.isEmpty((CharSequence)localObject2)) {
                localObject1 = ((JSONObject)paramString).get((String)localObject2);
              }
            }
            paramString = (String)localObject1;
            if ((localObject1 instanceof JSONArray))
            {
              paramString = (JSONArray)localObject1;
              if (k == -1) {
                break label218;
              }
              paramString = paramString.get(k);
            }
            if (paramString == null) {
              break label216;
            }
            localObject2 = JSONObject.NULL;
            localObject1 = paramString;
            if (paramString == localObject2) {
              break label216;
            }
          }
          i++;
          paramString = (String)localObject1;
          continue;
          label216:
          return null;
        }
        label218:
        return localObject1;
      }
      catch (Exception paramString)
      {
        Log.d("JSONPath", paramString.toString());
      }
      catch (JSONException paramString)
      {
        Log.d("JSONPath", paramString.toString());
      }
    }
    return null;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.util.JSONPath
 * JD-Core Version:    0.7.0.1
 */
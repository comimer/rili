package com.xiaomi.onetrack.a.b;

import android.text.TextUtils;
import com.xiaomi.onetrack.b.h;
import com.xiaomi.onetrack.f.b.b;
import com.xiaomi.onetrack.util.p;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONObject;

public class b
  extends com.xiaomi.onetrack.f.b
{
  private static final String d = "OTAdEvent";
  private List<a> e = null;
  
  public b(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    try
    {
      a(paramString1);
      c(paramString3);
      b(paramString2);
      b(System.currentTimeMillis());
      paramString2 = new org/json/JSONObject;
      paramString2.<init>(paramString4);
      paramString4 = paramString2.getJSONObject("H");
      b(paramString2);
      a(h.a().a(paramString1, paramString3, "level", 0));
      a(paramString4);
      c(paramString4);
    }
    catch (Exception paramString1)
    {
      paramString2 = new StringBuilder();
      paramString2.append("CustomEvent error:");
      paramString2.append(paramString1.toString());
      p.b("OTAdEvent", paramString2.toString());
    }
  }
  
  private void c(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null) {
      return;
    }
    if (paramJSONObject.has(b.b.H)) {
      paramJSONObject.remove(b.b.H);
    }
  }
  
  public List<a> a()
  {
    return this.e;
  }
  
  public void a(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null) {
      return;
    }
    try
    {
      JSONArray localJSONArray = paramJSONObject.optJSONArray(b.b.H);
      if ((localJSONArray != null) && (localJSONArray.length() > 0))
      {
        ArrayList localArrayList = new java/util/ArrayList;
        localArrayList.<init>();
        for (int i = 0; i < localJSONArray.length(); i++)
        {
          Object localObject1 = localJSONArray.optString(i);
          if (!TextUtils.isEmpty((CharSequence)localObject1))
          {
            paramJSONObject = (JSONObject)localObject1;
            if (((String)localObject1).contains("api.ad.xiaomi.com"))
            {
              paramJSONObject = (JSONObject)localObject1;
              if (!((String)localObject1).contains("_sn_")) {
                if (((String)localObject1).contains("?"))
                {
                  paramJSONObject = new java/lang/StringBuilder;
                  paramJSONObject.<init>();
                  paramJSONObject.append((String)localObject1);
                  paramJSONObject.append("&_sn_=");
                  paramJSONObject.append(UUID.randomUUID().toString());
                  paramJSONObject = paramJSONObject.toString();
                }
                else
                {
                  paramJSONObject = new java/lang/StringBuilder;
                  paramJSONObject.<init>();
                  paramJSONObject.append((String)localObject1);
                  paramJSONObject.append("?_sn_=");
                  paramJSONObject.append(UUID.randomUUID().toString());
                  paramJSONObject = paramJSONObject.toString();
                }
              }
            }
            localObject1 = new com/xiaomi/onetrack/a/b/a;
            ((a)localObject1).<init>();
            ((a)localObject1).c(c());
            ((a)localObject1).a(e());
            ((a)localObject1).a(h());
            ((a)localObject1).d(d());
            ((a)localObject1).b(paramJSONObject);
            localArrayList.add(localObject1);
          }
        }
        this.e = localArrayList;
      }
    }
    finally
    {
      paramJSONObject = new StringBuilder();
      paramJSONObject.append("parseAdMonitor Throwable:");
      paramJSONObject.append(localObject2.getMessage());
      p.a("OTAdEvent", paramJSONObject.toString());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.a.b.b
 * JD-Core Version:    0.7.0.1
 */
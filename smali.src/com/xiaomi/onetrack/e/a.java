package com.xiaomi.onetrack.e;

import com.xiaomi.onetrack.b.h;
import com.xiaomi.onetrack.f.b;
import com.xiaomi.onetrack.util.p;
import org.json.JSONObject;

public class a
  extends b
{
  private static final String d = "CustomEvent";
  
  public a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    try
    {
      a(paramString1);
      c(paramString3);
      b(paramString2);
      b(System.currentTimeMillis());
      paramString2 = new org/json/JSONObject;
      paramString2.<init>(paramString4);
      b(paramString2);
      a(h.a().a(paramString1, paramString3, "level", 1));
    }
    catch (Exception paramString1)
    {
      paramString2 = new StringBuilder();
      paramString2.append("CustomEvent error:");
      paramString2.append(paramString1.toString());
      p.b("CustomEvent", paramString2.toString());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.e.a
 * JD-Core Version:    0.7.0.1
 */
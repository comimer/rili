package com.xiaomi.onetrack.d;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.onetrack.util.aa;
import com.xiaomi.onetrack.util.p;
import com.xiaomi.onetrack.util.q;
import com.xiaomi.onetrack.util.x;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public class f
{
  public static final JSONObject a = new JSONObject();
  private static final String b = "SecretKeyManager";
  private static final String c = "secretKey";
  private static final String d = "sid";
  private static final String e = "key";
  private Context f = com.xiaomi.onetrack.f.a.a();
  private JSONObject g = null;
  private String[] h = new String[2];
  
  public static f a()
  {
    return a.a();
  }
  
  private void d()
  {
    if (p.a) {
      if ((!TextUtils.isEmpty(this.h[0])) && (!TextUtils.isEmpty(this.h[1]))) {
        p.a("SecretKeyManager", "key  and sid is valid! ");
      } else {
        p.a("SecretKeyManager", "key or sid is invalid!");
      }
    }
  }
  
  private JSONObject e()
  {
    Object localObject1 = this.g;
    Object localObject2 = localObject1;
    if (localObject1 == null)
    {
      localObject1 = f();
      localObject2 = localObject1;
      if (localObject1 != null)
      {
        this.g = ((JSONObject)localObject1);
        localObject2 = localObject1;
      }
    }
    localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = c();
    }
    return localObject1;
  }
  
  private JSONObject f()
  {
    try
    {
      Object localObject = aa.g();
      if (TextUtils.isEmpty((CharSequence)localObject)) {
        return null;
      }
      localObject = new JSONObject(b.b(this.f, (String)localObject));
      return localObject;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
  
  public String[] b()
  {
    try
    {
      JSONObject localJSONObject = e();
      String[] arrayOfString = this.h;
      if (localJSONObject != null) {
        localObject1 = localJSONObject.optString("key");
      } else {
        localObject1 = "";
      }
      arrayOfString[0] = localObject1;
      arrayOfString = this.h;
      if (localJSONObject != null) {
        localObject1 = localJSONObject.optString("sid");
      } else {
        localObject1 = "";
      }
      arrayOfString[1] = localObject1;
      d();
      Object localObject1 = this.h;
      return localObject1;
    }
    finally {}
  }
  
  public JSONObject c()
  {
    try
    {
      if (q.a("SecretKeyManager")) {
        return a;
      }
      Object localObject1 = a.a();
      Object localObject2 = c.a(e.a((byte[])localObject1));
      localObject3 = new java/util/HashMap;
      ((HashMap)localObject3).<init>();
      ((Map)localObject3).put("secretKey", localObject2);
      localObject3 = com.xiaomi.onetrack.g.b.b(x.a().e(), (Map)localObject3, true);
      if (!TextUtils.isEmpty((CharSequence)localObject3))
      {
        localObject2 = new org/json/JSONObject;
        ((JSONObject)localObject2).<init>((String)localObject3);
        int i = ((JSONObject)localObject2).optInt("code");
        localObject3 = ((JSONObject)localObject2).optJSONObject("data");
        if ((i == 0) && (localObject3 != null))
        {
          localObject2 = ((JSONObject)localObject3).optString("key");
          localObject3 = ((JSONObject)localObject3).optString("sid");
          if ((!TextUtils.isEmpty((CharSequence)localObject2)) && (!TextUtils.isEmpty((CharSequence)localObject3)))
          {
            localObject1 = c.a(a.b(c.a((String)localObject2), (byte[])localObject1));
            localObject2 = new org/json/JSONObject;
            ((JSONObject)localObject2).<init>();
            ((JSONObject)localObject2).put("key", localObject1);
            ((JSONObject)localObject2).put("sid", localObject3);
            this.g = ((JSONObject)localObject2);
            aa.a(b.a(this.f, ((JSONObject)localObject2).toString()));
            aa.i(System.currentTimeMillis());
          }
        }
      }
    }
    catch (Exception localException)
    {
      Object localObject3 = new StringBuilder();
      ((StringBuilder)localObject3).append("requestSecretData: ");
      ((StringBuilder)localObject3).append(localException.toString());
      p.b("SecretKeyManager", ((StringBuilder)localObject3).toString());
    }
    return this.g;
  }
  
  private static final class a
  {
    private static final f a = new f(null);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.d.f
 * JD-Core Version:    0.7.0.1
 */
package u1;

import android.text.TextUtils;
import com.miui.calendar.util.l0;
import com.miui.calendar.util.s;
import com.miui.calendar.util.z;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import okhttp3.Protocol;
import okhttp3.a0;
import okhttp3.a0.a;
import okhttp3.b0;
import okhttp3.t;
import okhttp3.u;
import okhttp3.u.a;
import okhttp3.v;
import okhttp3.y;
import org.json.JSONException;
import org.json.JSONObject;
import v1.a;
import v1.b;

public class c
  implements u
{
  private static ArrayList<String> e;
  private b d = v1.c.d();
  
  static
  {
    ArrayList localArrayList = new ArrayList();
    e = localArrayList;
    localArrayList.add("feed/get");
    e.add("feed/categories");
  }
  
  private String a(String paramString1, String paramString2)
  {
    try
    {
      JSONObject localJSONObject = new org/json/JSONObject;
      File localFile = new java/io/File;
      localFile.<init>(paramString1);
      localJSONObject.<init>(s.d(localFile));
      if (!e.contains(paramString2)) {
        localJSONObject.put("data", l0.c(localJSONObject.getString("data")));
      }
      paramString1 = localJSONObject.toString();
      return paramString1;
    }
    catch (JSONException paramString1)
    {
      z.d("Cal:D:MockInterceptor", "getMockData()", paramString1);
    }
    return null;
  }
  
  public a0 intercept(u.a parama)
    throws IOException
  {
    Object localObject1 = this.d.c().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      Object localObject2 = (a)((Iterator)localObject1).next();
      String str1 = ((a)localObject2).b();
      if (!TextUtils.isEmpty(str1))
      {
        z.a("Cal:D:MockInterceptor", "try intercept request");
        y localy = parama.b();
        String str2 = localy.i().toString();
        if ((!TextUtils.isEmpty(str2)) && (str2.contains(str1)))
        {
          localObject2 = ((a)localObject2).a();
          if (s.b((String)localObject2))
          {
            str1 = a((String)localObject2, str1);
            if (str1 != null)
            {
              localObject1 = new StringBuilder();
              ((StringBuilder)localObject1).append("intercept request: ");
              ((StringBuilder)localObject1).append(localy);
              z.a("Cal:D:MockInterceptor", ((StringBuilder)localObject1).toString());
              return new a0.a().g(200).r(parama.b()).p(Protocol.HTTP_1_1).m("OK").b(b0.x(v.f("application/json"), str1.getBytes())).c();
            }
          }
        }
      }
    }
    return parama.a(parama.b());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     u1.c
 * JD-Core Version:    0.7.0.1
 */
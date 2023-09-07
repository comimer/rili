package z3;

import android.content.Context;
import android.text.TextUtils;
import com.google.gson.JsonSyntaxException;
import com.google.gson.reflect.TypeToken;
import com.miui.calendar.holiday.model.HolidayBriefSchema;
import com.miui.calendar.util.e0;
import com.miui.calendar.util.l0;
import com.miui.calendar.util.q;
import com.miui.calendar.util.x;
import com.miui.calendar.util.y;
import com.miui.calendar.util.z;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import okhttp3.b0;
import org.json.JSONObject;
import u1.b;
import u1.b.a;

public class g
{
  private static g b;
  private tc.a<b0> a;
  
  private String e(JSONObject paramJSONObject, boolean paramBoolean)
  {
    if (paramJSONObject == null)
    {
      z.m("Cal:D:HolidayLogic", "getDataFromResponse() jsonObject is null !");
      return "";
    }
    try
    {
      if ((paramJSONObject.has("data")) && (!TextUtils.isEmpty(paramJSONObject.getString("data"))))
      {
        if (paramBoolean) {
          return l0.b(paramJSONObject.getString("data"));
        }
        return paramJSONObject.getString("data");
      }
      StringBuilder localStringBuilder = new java/lang/StringBuilder;
      localStringBuilder.<init>();
      localStringBuilder.append("getDataFromResponse() return empty jsonObject is : ");
      localStringBuilder.append(paramJSONObject);
      z.m("Cal:D:HolidayLogic", localStringBuilder.toString());
      return "";
    }
    catch (Exception paramJSONObject)
    {
      z.d("Cal:D:HolidayLogic", "getDataFromResponse", paramJSONObject);
    }
    return "";
  }
  
  public static g g()
  {
    try
    {
      if (b == null)
      {
        localg = new z3/g;
        localg.<init>();
        b = localg;
      }
      g localg = b;
      return localg;
    }
    finally {}
  }
  
  private Map<String, HolidayBriefSchema> h(List<HolidayBriefSchema> paramList)
  {
    HashMap localHashMap = new HashMap();
    if (paramList != null)
    {
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        HolidayBriefSchema localHolidayBriefSchema = (HolidayBriefSchema)paramList.next();
        localHashMap.put(localHolidayBriefSchema.name, localHolidayBriefSchema);
      }
    }
    return localHashMap;
  }
  
  private List<HolidayBriefSchema> i(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    try
    {
      Object localObject = new z3/g$a;
      ((a)localObject).<init>(this);
      paramString = (List)x.b(paramString, ((TypeToken)localObject).getType());
      localObject = new z3/g$b;
      ((b)localObject).<init>(this);
      Collections.sort(paramString, (Comparator)localObject);
      return paramString;
    }
    catch (JsonSyntaxException paramString)
    {
      z.d("Cal:D:HolidayLogic", paramString.toString(), paramString);
    }
    return null;
  }
  
  public void d(Context paramContext, long paramLong, d<Map<String, HolidayBriefSchema>> paramd)
  {
    paramLong = TimeUnit.MILLISECONDS.toSeconds(e0.h(paramLong));
    String str = u1.d.a(paramContext);
    Object localObject = new HashMap();
    ((HashMap)localObject).put("time", String.valueOf(paramLong));
    Map localMap = l0.a(paramContext, (HashMap)localObject);
    localObject = u1.d.d();
    paramd = new c(paramContext, paramLong, paramd, this);
    if (y.l(paramContext)) {
      paramContext = ((u1.a)localObject).D(str, localMap);
    } else {
      paramContext = ((u1.a)localObject).b(str, localMap);
    }
    if (paramContext != null)
    {
      paramContext.q(new b(paramd));
      this.a = paramContext;
    }
  }
  
  public Map<String, HolidayBriefSchema> f(Context paramContext, long paramLong)
  {
    paramLong = TimeUnit.MILLISECONDS.toSeconds(e0.h(paramLong));
    return h(i(q.d(paramContext, String.format(Locale.ENGLISH, "festival_brief_%d", new Object[] { Long.valueOf(paramLong) }))));
  }
  
  public void j(Context paramContext)
  {
    paramContext = this.a;
    if (paramContext != null)
    {
      paramContext.cancel();
      this.a = null;
    }
  }
  
  class a
    extends TypeToken<List<HolidayBriefSchema>>
  {
    a() {}
  }
  
  class b
    implements Comparator<HolidayBriefSchema>
  {
    b() {}
    
    public int a(HolidayBriefSchema paramHolidayBriefSchema1, HolidayBriefSchema paramHolidayBriefSchema2)
    {
      int i = paramHolidayBriefSchema1.sequence;
      int j = paramHolidayBriefSchema2.sequence;
      if (i > j) {
        return 1;
      }
      if (i < j) {
        return -1;
      }
      return 0;
    }
  }
  
  private static class c
    implements b.a
  {
    private WeakReference<Context> a;
    private long b;
    private g.d<Map<String, HolidayBriefSchema>> c;
    private WeakReference<g> d;
    
    c(Context paramContext, long paramLong, g.d<Map<String, HolidayBriefSchema>> paramd, g paramg)
    {
      this.a = new WeakReference(paramContext);
      this.b = paramLong;
      this.c = paramd;
      this.d = new WeakReference(paramg);
    }
    
    public void a(JSONObject paramJSONObject)
    {
      Object localObject = (Context)this.a.get();
      g localg = (g)this.d.get();
      if ((localObject != null) && (localg != null))
      {
        paramJSONObject = g.a(localg, paramJSONObject, false);
        s4.d.d(paramJSONObject);
        if (!TextUtils.isEmpty(paramJSONObject)) {
          q.f((Context)localObject, String.format(Locale.ENGLISH, "festival_brief_%d", new Object[] { Long.valueOf(this.b) }), paramJSONObject);
        } else {
          q.h((Context)localObject, String.format(Locale.ENGLISH, "festival_brief_%d", new Object[] { Long.valueOf(this.b) }));
        }
        localObject = g.b(localg, paramJSONObject);
        paramJSONObject = this.c;
        if (paramJSONObject != null) {
          paramJSONObject.b(g.c(localg, (List)localObject));
        }
      }
    }
    
    public void b(Exception paramException)
    {
      z.d("Cal:D:HolidayLogic", "HolidayBriefResponseListener:", paramException);
      paramException = this.c;
      if (paramException != null) {
        paramException.a();
      }
    }
  }
  
  public static abstract interface d<T>
  {
    public abstract void a();
    
    public abstract void b(T paramT);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     z3.g
 * JD-Core Version:    0.7.0.1
 */
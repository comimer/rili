package k4;

import android.content.Context;
import android.text.TextUtils;
import b2.a;
import com.miui.calendar.shift.ShiftSchema;
import com.miui.calendar.util.l0;
import com.miui.calendar.util.s;
import com.miui.calendar.util.x;
import com.miui.calendar.util.z;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import org.json.JSONObject;
import u1.b.a;

public class d
{
  private static String a;
  
  public static ShiftSchema c(Context paramContext)
  {
    paramContext = d(paramContext);
    if (!TextUtils.isEmpty(paramContext)) {
      try
      {
        paramContext = (ShiftSchema)x.a(paramContext, ShiftSchema.class);
        return paramContext;
      }
      catch (Exception paramContext)
      {
        z.d("Cal:D:ShiftUtils", "getShiftConfig()", paramContext);
      }
    }
    return new ShiftSchema();
  }
  
  private static String d(Context paramContext)
  {
    if (!TextUtils.isEmpty(a)) {
      return a;
    }
    a = s.c(paramContext, "calendar_shift_data.json");
    paramContext = new StringBuilder();
    paramContext.append("getShiftStrFromFile(): json:");
    paramContext.append(a);
    z.a("Cal:D:ShiftUtils", paramContext.toString());
    return a;
  }
  
  public static boolean e(Context paramContext)
  {
    return a.d(paramContext, "preferences_shift_card_subscribed", false);
  }
  
  private static void h(Context paramContext, String paramString)
  {
    z.a("Cal:D:ShiftUtils", "saveShiftToFile()");
    if (TextUtils.isEmpty(paramString))
    {
      z.m("Cal:D:ShiftUtils", "saveShiftToFile(): shiftData is EMPTY, return");
      return;
    }
    s.f(paramContext, "calendar_shift_data.json", paramString);
  }
  
  public static void i(Context paramContext, a parama)
  {
    z.a("Cal:D:ShiftUtils", "syncShift()");
    k3.d.g(new c(paramContext, parama));
  }
  
  public static void j(Context paramContext, ShiftSchema paramShiftSchema)
  {
    try
    {
      paramShiftSchema = x.c(paramShiftSchema);
      a = paramShiftSchema;
      h(paramContext, paramShiftSchema);
    }
    catch (Exception paramContext)
    {
      z.d("Cal:D:ShiftUtils", "updateShiftConfig()", paramContext);
    }
  }
  
  public static void k(Context paramContext, boolean paramBoolean)
  {
    if (e(paramContext) != paramBoolean)
    {
      a.l(paramContext, "preferences_shift_card_subscribed", paramBoolean);
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("updateShiftSubscribeStatus() isSubscribed = ");
      localStringBuilder.append(paramBoolean);
      z.a("Cal:D:ShiftUtils", localStringBuilder.toString());
      l3.b.a(paramContext);
    }
  }
  
  public static void l(Context paramContext)
  {
    z.a("Cal:D:ShiftUtils", "uploadShiftConfig()");
    k3.d.g(new b(paramContext));
  }
  
  public static abstract interface a
  {
    public abstract void a();
  }
  
  private static class b
    implements b.a
  {
    private WeakReference<Context> a;
    private WeakReference<d.a> b;
    
    b(Context paramContext, d.a parama)
    {
      this.a = new WeakReference(paramContext);
      this.b = new WeakReference(parama);
    }
    
    public void a(JSONObject paramJSONObject)
    {
      Object localObject1 = (Context)this.a.get();
      if (localObject1 == null) {
        return;
      }
      JSONObject localJSONObject = null;
      try
      {
        paramJSONObject = l0.b(paramJSONObject.getString("data"));
        localJSONObject = paramJSONObject;
        s4.d.d(paramJSONObject);
        localJSONObject = paramJSONObject;
        if (!TextUtils.isEmpty(paramJSONObject))
        {
          localJSONObject = paramJSONObject;
          Object localObject2 = new org/json/JSONObject;
          localJSONObject = paramJSONObject;
          ((JSONObject)localObject2).<init>(paramJSONObject);
          localJSONObject = paramJSONObject;
          ShiftSchema localShiftSchema = (ShiftSchema)x.a(((JSONObject)localObject2).optString("extra"), ShiftSchema.class);
          if (localShiftSchema != null)
          {
            localJSONObject = paramJSONObject;
            localShiftSchema.version = ((JSONObject)localObject2).optLong("updateTime");
            localJSONObject = paramJSONObject;
            localObject2 = new java/lang/StringBuilder;
            localJSONObject = paramJSONObject;
            ((StringBuilder)localObject2).<init>();
            localJSONObject = paramJSONObject;
            ((StringBuilder)localObject2).append("SyncResponseListener() update shift config version to:");
            localJSONObject = paramJSONObject;
            ((StringBuilder)localObject2).append(localShiftSchema.version);
            localJSONObject = paramJSONObject;
            z.a("Cal:D:ShiftUtils", ((StringBuilder)localObject2).toString());
            localJSONObject = paramJSONObject;
            d.j((Context)localObject1, localShiftSchema);
            localJSONObject = paramJSONObject;
            l3.b.a((Context)localObject1);
            localJSONObject = paramJSONObject;
            if (this.b.get() != null)
            {
              localJSONObject = paramJSONObject;
              ((d.a)this.b.get()).a();
            }
          }
        }
      }
      catch (Exception paramJSONObject)
      {
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append("data:");
        ((StringBuilder)localObject1).append(localJSONObject);
        z.d("Cal:D:ShiftUtils", ((StringBuilder)localObject1).toString(), paramJSONObject);
      }
    }
    
    public void b(Exception paramException)
    {
      z.d("Cal:D:ShiftUtils", "SyncResponseListener:", paramException);
    }
  }
  
  private static class c
    implements b.a
  {
    private WeakReference<Context> a;
    
    c(Context paramContext)
    {
      this.a = new WeakReference(paramContext);
    }
    
    public void a(JSONObject paramJSONObject)
    {
      Object localObject = (Context)this.a.get();
      if (localObject == null) {
        return;
      }
      JSONObject localJSONObject1 = null;
      try
      {
        paramJSONObject = l0.b(paramJSONObject.getString("data"));
        localJSONObject1 = paramJSONObject;
        s4.d.d(paramJSONObject);
        localJSONObject1 = paramJSONObject;
        if (!TextUtils.isEmpty(paramJSONObject))
        {
          localJSONObject1 = paramJSONObject;
          ShiftSchema localShiftSchema = d.c((Context)localObject);
          localJSONObject1 = paramJSONObject;
          JSONObject localJSONObject2 = new org/json/JSONObject;
          localJSONObject1 = paramJSONObject;
          localJSONObject2.<init>(paramJSONObject);
          localJSONObject1 = paramJSONObject;
          localShiftSchema.version = localJSONObject2.optLong("version");
          localJSONObject1 = paramJSONObject;
          d.j((Context)localObject, localShiftSchema);
        }
      }
      catch (Exception paramJSONObject)
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("data:");
        ((StringBuilder)localObject).append(localJSONObject1);
        z.d("Cal:D:ShiftUtils", ((StringBuilder)localObject).toString(), paramJSONObject);
      }
    }
    
    public void b(Exception paramException)
    {
      z.d("Cal:D:ShiftUtils", "UploadResponseListener:", paramException);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     k4.d
 * JD-Core Version:    0.7.0.1
 */
package com.miui.calendar.util;

import android.content.Context;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.k;
import org.json.JSONObject;
import u1.b.a;

@Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/util/n0;", "Lu1/b$a;", "Lorg/json/JSONObject;", "jsonObject", "Lkotlin/u;", "a", "Ljava/lang/Exception;", "Lkotlin/Exception;", "e", "b", "Ljava/lang/ref/WeakReference;", "Landroid/content/Context;", "kotlin.jvm.PlatformType", "Ljava/lang/ref/WeakReference;", "mContextReference", "Lcom/miui/calendar/util/f0;", "mListenerReference", "context", "listener", "<init>", "(Landroid/content/Context;Lcom/miui/calendar/util/f0;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
final class n0
  implements b.a
{
  private final WeakReference<Context> a;
  private final WeakReference<f0> b;
  
  public n0(Context paramContext, f0 paramf0)
  {
    this.a = new WeakReference(paramContext);
    this.b = new WeakReference(paramf0);
  }
  
  private static final void d(n0 paramn0, int paramInt)
  {
    r.f(paramn0, "this$0");
    paramn0 = (f0)paramn0.b.get();
    if (paramn0 != null) {
      paramn0.a(1);
    }
  }
  
  public void a(JSONObject paramJSONObject)
  {
    r.f(paramJSONObject, "jsonObject");
    Context localContext = (Context)this.a.get();
    if (localContext == null) {
      return;
    }
    try
    {
      paramJSONObject = ((ConfigScheme)x.a(paramJSONObject.toString(), ConfigScheme.class)).getData();
      if (paramJSONObject != null) {
        paramJSONObject = paramJSONObject.getConfigList();
      } else {
        paramJSONObject = null;
      }
      if ((paramJSONObject != null) && (!paramJSONObject.isEmpty())) {
        paramJSONObject = paramJSONObject.iterator();
      }
      while (paramJSONObject.hasNext())
      {
        Object localObject1 = (ConfigModel)paramJSONObject.next();
        int i = ((ConfigModel)localObject1).getVersionCode();
        Object localObject2 = new java/lang/StringBuilder;
        ((StringBuilder)localObject2).<init>();
        ((StringBuilder)localObject2).append("configName:");
        ((StringBuilder)localObject2).append(((ConfigModel)localObject1).getConfigName());
        ((StringBuilder)localObject2).append(",versionCode:");
        ((StringBuilder)localObject2).append(((ConfigModel)localObject1).getVersionCode());
        z.a("ConfigUtils", ((StringBuilder)localObject2).toString());
        int j = ((ConfigModel)localObject1).getConfigType();
        if (j != 1)
        {
          if (j != 2)
          {
            if ((j == 3) && (k.q(((ConfigModel)localObject1).getConfigName(), "huangli", false, 2, null)) && (i > j0.f(localContext))) {
              j0.g(localContext, "huangli");
            }
          }
          else if ((k.q(((ConfigModel)localObject1).getConfigName(), "festival", false, 2, null)) && (i > j0.c(localContext))) {
            j0.g(localContext, "festival");
          }
        }
        else if (k.q(((ConfigModel)localObject1).getConfigName(), "daysoff", false, 2, null)) {
          if (i > DaysOffUtils.f(localContext))
          {
            localObject1 = DaysOffUtils.g(localContext.getApplicationContext());
            localObject2 = localContext.getApplicationContext();
            m0 localm0 = new com/miui/calendar/util/m0;
            localm0.<init>(this);
            ((DaysOffUtils)localObject1).c((Context)localObject2, "application", localm0);
          }
          else
          {
            localObject2 = (f0)this.b.get();
            if (localObject2 != null)
            {
              ((f0)localObject2).a(1);
              continue;
              return;
            }
          }
        }
      }
    }
    catch (Exception paramJSONObject)
    {
      z.d("ConfigUtils", "parse error", paramJSONObject);
    }
  }
  
  public void b(Exception paramException)
  {
    r.f(paramException, "e");
    z.d("ConfigUtils", "ResponseListener:", paramException);
    paramException = (f0)this.b.get();
    if (paramException != null) {
      paramException.a(-1);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.n0
 * JD-Core Version:    0.7.0.1
 */
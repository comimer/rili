package com.miui.calendar.util;

import android.content.Context;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import org.json.JSONObject;
import u1.b.a;

@Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/util/i0;", "Lu1/b$a;", "Lorg/json/JSONObject;", "jsonObject", "Lkotlin/u;", "a", "Ljava/lang/Exception;", "Lkotlin/Exception;", "e", "b", "Ljava/lang/ref/WeakReference;", "Landroid/content/Context;", "Ljava/lang/ref/WeakReference;", "mContextReference", "context", "<init>", "(Landroid/content/Context;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
final class i0
  implements b.a
{
  private final WeakReference<Context> a;
  
  public i0(Context paramContext)
  {
    this.a = new WeakReference(paramContext);
  }
  
  public void a(JSONObject paramJSONObject)
  {
    Context localContext = (Context)this.a.get();
    if (localContext == null) {
      return;
    }
    z.a("PatchUtils", String.valueOf(paramJSONObject));
    if (paramJSONObject == null) {
      return;
    }
    try
    {
      PatchData localPatchData = ((PatchModel)x.a(paramJSONObject.toString(), PatchModel.class)).getData();
      if (localPatchData != null)
      {
        paramJSONObject = localPatchData.getConfigName();
        if (r.a(paramJSONObject, "festival"))
        {
          j0.i(localContext, localPatchData.getVersionCode());
          j0.h(localContext, localPatchData.getExtra());
        }
        else if (r.a(paramJSONObject, "huangli"))
        {
          j0.k(localContext, localPatchData.getVersionCode());
          j0.j(localContext, localPatchData.getExtra());
        }
      }
    }
    catch (Exception paramJSONObject)
    {
      z.d("PatchUtils", "json parse exception", paramJSONObject);
    }
  }
  
  public void b(Exception paramException)
  {
    z.d("PatchUtils", "get patch failed", paramException);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.i0
 * JD-Core Version:    0.7.0.1
 */
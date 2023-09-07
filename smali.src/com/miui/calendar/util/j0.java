package com.miui.calendar.util;

import android.content.Context;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.k;
import u1.b;
import u1.d;

@Metadata(bv={}, d1={""}, d2={"Landroid/content/Context;", "context", "", "patchType", "Lkotlin/u;", "g", "Lcom/miui/calendar/util/HolidayPatch;", "a", "Lcom/miui/calendar/util/HuangliPatch;", "d", "", "version", "i", "c", "extra", "h", "b", "k", "f", "j", "e", "Ljava/lang/String;", "sFestivalPatchJson", "Lcom/miui/calendar/util/HolidayPatch;", "sHolidayPatch", "app_chinaNormalRelease"}, k=2, mv={1, 7, 1})
public final class j0
{
  private static String a = "";
  private static HolidayPatch b;
  
  public static final HolidayPatch a(Context paramContext)
  {
    String str = b(paramContext);
    if (TextUtils.isEmpty(str)) {
      return null;
    }
    if (k.q(str, a, false, 2, null))
    {
      paramContext = b;
      if (paramContext != null) {
        return paramContext;
      }
    }
    try
    {
      a = str;
      paramContext = (HolidayPatch)x.a(str, HolidayPatch.class);
      b = paramContext;
      return paramContext;
    }
    catch (Exception paramContext)
    {
      z.d("PatchUtils", "parse festival error", paramContext);
    }
    return null;
  }
  
  public static final String b(Context paramContext)
  {
    return b2.a.c(paramContext, "patch_sp_key_festival_extra", "");
  }
  
  public static final int c(Context paramContext)
  {
    return b2.a.a(paramContext, "patch_sp_key_festival", 0);
  }
  
  public static final HuangliPatch d(Context paramContext)
  {
    paramContext = e(paramContext);
    if (TextUtils.isEmpty(paramContext)) {
      return null;
    }
    try
    {
      paramContext = (HuangliPatch)x.a(paramContext, HuangliPatch.class);
      return paramContext;
    }
    catch (Exception paramContext)
    {
      z.d("PatchUtils", "parse huangli error", paramContext);
    }
    return null;
  }
  
  public static final String e(Context paramContext)
  {
    return b2.a.c(paramContext, "patch_sp_key_huangli_extra", "");
  }
  
  public static final int f(Context paramContext)
  {
    return b2.a.a(paramContext, "patch_sp_key_huangli", 0);
  }
  
  public static final void g(Context paramContext, String paramString)
  {
    String str = d.c(paramContext, false, null, null, 14, null);
    Object localObject = new HashMap();
    ((Map)localObject).put("configName", String.valueOf(paramString));
    paramString = l0.a(paramContext, (HashMap)localObject);
    localObject = d.f(null, 1, null);
    paramContext = new i0(paramContext);
    paramString = ((u1.a)localObject).v(str, paramString);
    r.c(paramString);
    paramString.q(new b(paramContext));
  }
  
  public static final void h(Context paramContext, String paramString)
  {
    b2.a.k(paramContext, "patch_sp_key_festival_extra", paramString);
  }
  
  public static final void i(Context paramContext, int paramInt)
  {
    b2.a.i(paramContext, "patch_sp_key_festival", paramInt);
  }
  
  public static final void j(Context paramContext, String paramString)
  {
    b2.a.k(paramContext, "patch_sp_key_huangli_extra", paramString);
  }
  
  public static final void k(Context paramContext, int paramInt)
  {
    b2.a.i(paramContext, "patch_sp_key_huangli", paramInt);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.j0
 * JD-Core Version:    0.7.0.1
 */
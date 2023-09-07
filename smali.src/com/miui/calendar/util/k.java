package com.miui.calendar.util;

import android.content.Context;
import android.os.AsyncTask;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import u1.b;
import u1.d;

@Metadata(bv={}, d1={""}, d2={"Landroid/content/Context;", "context", "Lcom/miui/calendar/util/f0;", "listener", "Lkotlin/u;", "b", "app_chinaNormalRelease"}, k=2, mv={1, 7, 1})
public final class k
{
  public static final void b(Context paramContext, f0 paramf0)
  {
    r.f(paramContext, "context");
    AsyncTask.execute(new j(paramContext, paramf0));
  }
  
  private static final void c(Context paramContext, f0 paramf0)
  {
    r.f(paramContext, "$context");
    z.a("ConfigUtils", "getConfig()");
    String str = d.c(paramContext, false, null, null, 14, null);
    Map localMap = l0.a(paramContext, null);
    u1.a locala = d.f(null, 1, null);
    paramContext = new n0(paramContext, paramf0);
    paramf0 = locala.r(str, localMap);
    if (paramf0 != null) {
      paramf0.q(new b(paramContext));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.k
 * JD-Core Version:    0.7.0.1
 */
package com.miui.calendar.search;

import android.content.Context;
import android.view.View;
import fb.f;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/search/j;", "Lfb/f;", "Landroid/content/Context;", "context", "Lkotlin/u;", "onAttach", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class j
  extends f
{
  public Map<Integer, View> d;
  
  public void n()
  {
    this.d.clear();
  }
  
  public void onAttach(Context paramContext)
  {
    r.f(paramContext, "context");
    super.onAttach(paramContext);
    k(RecentSearchProvider.b.a(paramContext).c());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.search.j
 * JD-Core Version:    0.7.0.1
 */
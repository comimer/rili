package com.miui.calendar.view;

import android.content.Context;
import android.view.View;
import android.widget.AdapterView;
import android.widget.PopupWindow;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import la.e;

@Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/view/w;", "Lla/e;", "Landroid/view/View;", "getContentView", "Landroid/content/Context;", "context", "Lcom/miui/calendar/view/c;", "adapter", "<init>", "(Landroid/content/Context;Lcom/miui/calendar/view/c;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class w
  extends e
{
  public w(Context paramContext, c paramc)
  {
    super(paramContext);
    i(paramc);
    Q(new v(paramc, this));
  }
  
  private static final void X(c paramc, w paramw, AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    r.f(paramc, "$adapter");
    r.f(paramw, "this$0");
    paramc.a(paramInt).c();
    paramw.dismiss();
  }
  
  public View getContentView()
  {
    View localView = super.getContentView();
    localView.setPadding(0, 30, 0, 30);
    r.e(localView, "contentView");
    return localView;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.view.w
 * JD-Core Version:    0.7.0.1
 */
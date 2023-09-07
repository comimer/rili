package com.miui.calendar.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import miuix.recyclerview.widget.RecyclerView;
import miuix.springback.view.SpringBackLayout;
import t4.a;
import t4.a.d;

@Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/view/RefreshLoadRecyclerView;", "Lmiuix/recyclerview/widget/RecyclerView;", "Lmiuix/springback/view/SpringBackLayout;", "springBackLayout", "Lkotlin/u;", "s", "", "enable", "setEnablePullRefresh", "enablePullLoad", "setEnablePullLoad", "", "index", "", "string", "u", "v", "t", "x", "w", "Lt4/a$d;", "l", "setOnPullToRefreshListener", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "defStyle", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "p", "a", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class RefreshLoadRecyclerView
  extends RecyclerView
{
  public static final a p = new a(null);
  private final a n = new a(this, null, 2, null);
  public Map<Integer, View> o;
  
  public RefreshLoadRecyclerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0, 4, null);
  }
  
  public RefreshLoadRecyclerView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public final void s(SpringBackLayout paramSpringBackLayout)
  {
    a locala = this.n;
    if (locala != null) {
      locala.e(paramSpringBackLayout);
    }
  }
  
  public final void setEnablePullLoad(boolean paramBoolean)
  {
    a locala = this.n;
    if (locala != null) {
      locala.m(paramBoolean);
    }
  }
  
  public final void setEnablePullRefresh(boolean paramBoolean)
  {
    a locala = this.n;
    if (locala != null) {
      locala.n(paramBoolean);
    }
  }
  
  public final void setOnPullToRefreshListener(a.d paramd)
  {
    a locala = this.n;
    if (locala != null) {
      locala.o(paramd);
    }
  }
  
  public final void t()
  {
    a locala = this.n;
    if (locala != null) {
      locala.k();
    }
  }
  
  public final void u(int paramInt, String paramString)
  {
    r.f(paramString, "string");
    a locala = this.n;
    if (locala != null) {
      locala.h(paramInt, paramString);
    }
  }
  
  public final void v(int paramInt, String paramString)
  {
    r.f(paramString, "string");
    a locala = this.n;
    if (locala != null) {
      locala.i(paramInt, paramString);
    }
  }
  
  public final void w()
  {
    a locala = this.n;
    if (locala != null) {
      locala.j();
    }
  }
  
  public final void x()
  {
    a locala = this.n;
    if (locala != null) {
      locala.l();
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/view/RefreshLoadRecyclerView$a;", "", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.view.RefreshLoadRecyclerView
 * JD-Core Version:    0.7.0.1
 */
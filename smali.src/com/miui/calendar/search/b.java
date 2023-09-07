package com.miui.calendar.search;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.fragment.app.Fragment;
import com.android.calendar.homepage.AgendaListLayout;
import com.android.calendar.homepage.ListLayout;
import com.miui.calendar.util.g.j;
import com.miui.calendar.util.g.u;
import com.miui.calendar.util.g.x;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.u;
import n1.e.a;
import org.greenrobot.eventbus.ThreadMode;

@Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/search/b;", "Landroidx/fragment/app/Fragment;", "Landroid/content/Context;", "context", "Lkotlin/u;", "onAttach", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "onResume", "onPause", "onStop", "onDestroyView", "onDestroy", "Lcom/miui/calendar/util/g$j;", "event", "l", "n", "Lcom/miui/calendar/util/g$x;", "eventLoadingEvent", "onMainEvent", "a", "Landroid/content/Context;", "mContext", "Lcom/android/calendar/homepage/AgendaListLayout;", "b", "Lcom/android/calendar/homepage/AgendaListLayout;", "mAllListLayout", "Lcom/miui/calendar/search/f;", "c", "Lcom/miui/calendar/search/f;", "mChoiceWrap", "<init>", "()V", "f", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class b
  extends Fragment
{
  public static final a f = new a(null);
  private Context a;
  private AgendaListLayout b;
  private f c;
  private w7.l<? super String, u> d;
  public Map<Integer, View> e;
  
  private static final void m(b paramb, g.j paramj)
  {
    r.f(paramb, "this$0");
    r.f(paramj, "$event");
    paramb = paramb.b;
    if (paramb != null) {
      paramb.a(paramj);
    }
  }
  
  public void j()
  {
    this.e.clear();
  }
  
  public final void l(g.j paramj)
  {
    r.f(paramj, "event");
    AgendaListLayout localAgendaListLayout = this.b;
    if (localAgendaListLayout != null) {
      localAgendaListLayout.postDelayed(new a(this, paramj), 200L);
    }
  }
  
  public final void n()
  {
    Object localObject = this.b;
    if (localObject != null)
    {
      localObject = ((AgendaListLayout)localObject).getMAdapter();
      if (localObject != null) {
        ((n1.c)localObject).w(true);
      }
    }
    localObject = this.c;
    if (localObject != null) {
      ((f)localObject).o();
    }
  }
  
  public void onAttach(Context paramContext)
  {
    r.f(paramContext, "context");
    super.onAttach(paramContext);
    this.a = paramContext;
    paramContext = new AgendaListLayout(paramContext, "from_search_view");
    this.b = paramContext;
    r.c(paramContext);
    paramContext.C(m1.a.a).setVisibility(8);
    paramContext = this.b;
    if (paramContext != null) {
      paramContext.setDateChangedCallback(this.d);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    pc.c.c().o(this);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    r.f(paramLayoutInflater, "inflater");
    paramLayoutInflater = paramLayoutInflater.inflate(2131558574, paramViewGroup, false);
    ((FrameLayout)paramLayoutInflater.findViewById(2131362207)).addView(this.b);
    return paramLayoutInflater;
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    pc.c.c().q(this);
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    AgendaListLayout localAgendaListLayout = this.b;
    if (localAgendaListLayout != null) {
      localAgendaListLayout.p();
    }
    j();
  }
  
  @pc.l(threadMode=ThreadMode.MAIN)
  public final void onMainEvent(g.x paramx)
  {
    r.f(paramx, "eventLoadingEvent");
    AgendaListLayout localAgendaListLayout = this.b;
    if (localAgendaListLayout != null) {
      localAgendaListLayout.b0(paramx.a);
    }
  }
  
  public void onPause()
  {
    super.onPause();
    AgendaListLayout localAgendaListLayout = this.b;
    if (localAgendaListLayout != null) {
      localAgendaListLayout.q();
    }
  }
  
  public void onResume()
  {
    super.onResume();
    AgendaListLayout localAgendaListLayout = this.b;
    if (localAgendaListLayout != null) {
      localAgendaListLayout.s();
    }
  }
  
  public void onStop()
  {
    super.onStop();
    Object localObject = this.b;
    if (localObject != null) {
      ((ListLayout)localObject).t();
    }
    localObject = this.c;
    if (localObject != null) {
      ((f)localObject).h();
    }
  }
  
  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    r.f(paramView, "view");
    super.onViewCreated(paramView, paramBundle);
    Object localObject = this.a;
    paramBundle = null;
    paramView = (View)localObject;
    if (localObject == null)
    {
      r.x("mContext");
      paramView = null;
    }
    localObject = this.b;
    r.c(localObject);
    localObject = new f(paramView, this, ((AgendaListLayout)localObject).getMEventsList());
    this.c = ((f)localObject);
    AgendaListLayout localAgendaListLayout = this.b;
    paramView = paramBundle;
    if (localAgendaListLayout != null) {
      paramView = localAgendaListLayout.getMAdapter();
    }
    ((f)localObject).k(paramView);
    paramView = this.b;
    if (paramView != null)
    {
      paramView = paramView.getMAdapter();
      if (paramView != null) {
        paramView.v(new b(this));
      }
    }
    paramView = this.c;
    if (paramView != null) {
      paramView.m(new c());
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/search/b$a;", "", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
  
  @Metadata(bv={}, d1={""}, d2={"com/miui/calendar/search/b$b", "Lcom/miui/calendar/search/g;", "Ln1/e$a;", "Landroid/view/View;", "v", "", "position", "", "d", "isChecked", "t", "Lkotlin/u;", "e", "count", "b", "isAllChecked", "", "list", "c", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class b
    implements g<e.a>
  {
    b(b paramb) {}
    
    public void b(int paramInt)
    {
      f localf = b.k(this.a);
      if (localf != null) {
        localf.n(paramInt);
      }
    }
    
    public void c(boolean paramBoolean, List<e.a> paramList)
    {
      f localf = b.k(this.a);
      if (localf != null) {
        localf.p(paramBoolean, paramList);
      }
    }
    
    public boolean d(View paramView, int paramInt)
    {
      paramView = b.k(this.a);
      if (paramView != null) {
        paramView.o();
      }
      return true;
    }
    
    public void e(int paramInt, boolean paramBoolean, e.a parama)
    {
      r.f(parama, "t");
      f localf = b.k(this.a);
      if (localf != null) {
        localf.j(paramBoolean, parama);
      }
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"com/miui/calendar/search/b$c", "Lcom/miui/calendar/search/h;", "Lkotlin/u;", "onChange", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class c
    implements h
  {
    public void onChange()
    {
      com.miui.calendar.util.g.c(new g.u());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.search.b
 * JD-Core Version:    0.7.0.1
 */
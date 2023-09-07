package com.android.calendar.homepage;

import android.app.Dialog;
import android.content.Context;
import android.os.Handler;
import android.text.format.DateUtils;
import android.view.LayoutInflater;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.g;
import androidx.recyclerview.widget.RecyclerView.o;
import androidx.recyclerview.widget.RecyclerView.t;
import androidx.recyclerview.widget.SpringRecyclerView;
import com.android.calendar.common.Utils;
import com.android.calendar.common.WrapperLinearLayoutManager;
import com.android.calendar.common.event.schema.Event;
import com.miui.calendar.util.b1;
import com.miui.calendar.util.g.a0;
import com.miui.calendar.util.g.j;
import com.miui.calendar.util.g.k;
import com.miui.calendar.util.g.l0;
import com.miui.calendar.util.g.u;
import com.miui.calendar.util.g.w;
import com.miui.calendar.util.s0;
import com.miui.calendar.util.v;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.z;
import com.miui.calendar.view.RefreshLoadRecyclerView;
import com.miui.calendar.view.x;
import com.miui.calendar.widget.EmptyView;
import java.util.Calendar;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.r;
import kotlin.u;
import miuix.springback.view.SpringBackLayout;
import n1.e.a;
import n1.h;
import n1.i;
import t4.a.d;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/homepage/AgendaListLayout;", "Lcom/android/calendar/homepage/ListLayout;", "Lkotlin/u;", "h0", "Ljava/util/Calendar;", "firstMonth", "", "monthNumToQuery", "", "resetPosition", "scrollImmediately", "Ljava/lang/Runnable;", "runnable", "W", "c0", "index", "S", "toDate", "T", "Lcom/miui/calendar/util/g$a0;", "event", "V", "show", "g0", "", "hint", "e0", "U", "a0", "Lkotlin/Function1;", "callback", "setDateChangedCallback", "w", "s", "q", "Y", "getViewType", "", "getDefPosition", "b0", "Lcom/miui/calendar/util/g$j;", "a", "Landroid/view/View;", "view", "x", "y", "startX", "startY", "f", "r", "Ljava/lang/String;", "getFrom", "()Ljava/lang/String;", "from", "Lmiuix/springback/view/SpringBackLayout;", "v", "Lmiuix/springback/view/SpringBackLayout;", "mRefresher", "Lcom/miui/calendar/view/RefreshLoadRecyclerView;", "Lcom/miui/calendar/view/RefreshLoadRecyclerView;", "getMEventsList", "()Lcom/miui/calendar/view/RefreshLoadRecyclerView;", "mEventsList", "Lcom/android/calendar/common/WrapperLinearLayoutManager;", "Lcom/android/calendar/common/WrapperLinearLayoutManager;", "mLayoutManager", "Lcom/miui/calendar/widget/EmptyView;", "Lcom/miui/calendar/widget/EmptyView;", "mEmptyView", "Lcom/miui/calendar/view/x;", "z", "Lcom/miui/calendar/view/x;", "mProgressDialog", "D", "Z", "mStopScrollNotify", "E", "I", "mScrollState", "G", "Ljava/util/Calendar;", "mFirstMonth", "J", "mMonthNum", "K", "isLoading", "L", "mCurrentPosition", "Landroid/os/Handler;", "N", "Landroid/os/Handler;", "getMLoadingHandler", "()Landroid/os/Handler;", "setMLoadingHandler", "(Landroid/os/Handler;)V", "mLoadingHandler", "Ln1/c;", "mAdapter", "Ln1/c;", "getMAdapter", "()Ln1/c;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;Ljava/lang/String;)V", "Q", "c", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class AgendaListLayout
  extends ListLayout
{
  public static final c Q = new c(null);
  private boolean D;
  private int E;
  private e.a F;
  private final Calendar G;
  private final i H;
  private final n1.c I;
  private int J;
  private boolean K;
  private int L;
  private w7.l<? super String, u> M;
  private Handler N;
  private n1.g O;
  public Map<Integer, View> P;
  private final String r;
  private final SpringBackLayout v;
  private final RefreshLoadRecyclerView w;
  private final WrapperLinearLayoutManager x;
  private EmptyView y;
  private x z;
  
  public AgendaListLayout(final Context paramContext, String paramString)
  {
    super(paramContext);
    this.r = paramString;
    Object localObject1 = Calendar.getInstance();
    ((Calendar)localObject1).setTimeInMillis(Utils.Y());
    ((Calendar)localObject1).set(2, 0);
    r.e(localObject1, "getInstance().apply {\n  …(Calendar.MONTH, 0)\n    }");
    this.G = ((Calendar)localObject1);
    localObject1 = new i();
    this.H = ((i)localObject1);
    localObject1 = new n1.c(paramContext, (i)localObject1, paramString);
    this.I = ((n1.c)localObject1);
    this.L = -1;
    Object localObject2 = getMInflater().inflate(2131558650, this);
    r.e(localObject2, "mInflater.inflate(R.layo…layout_view_agenda, this)");
    paramString = ((View)localObject2).findViewById(2131363021);
    r.d(paramString, "null cannot be cast to non-null type miuix.springback.view.SpringBackLayout");
    paramString = (SpringBackLayout)paramString;
    this.v = paramString;
    Object localObject3 = ((View)localObject2).findViewById(2131362433);
    r.d(localObject3, "null cannot be cast to non-null type com.miui.calendar.view.RefreshLoadRecyclerView");
    localObject3 = (RefreshLoadRecyclerView)localObject3;
    this.w = ((RefreshLoadRecyclerView)localObject3);
    localObject2 = ((View)localObject2).findViewById(2131362406);
    r.e(localObject2, "view.findViewById(R.id.empty_view)");
    localObject2 = (EmptyView)localObject2;
    this.y = ((EmptyView)localObject2);
    v.k(((EmptyView)localObject2).getActionView());
    ((RecyclerView)localObject3).setAdapter((RecyclerView.g)localObject1);
    localObject1 = new WrapperLinearLayoutManager(paramContext, 0, false, 6, null);
    this.x = ((WrapperLinearLayoutManager)localObject1);
    ((RecyclerView)localObject3).setLayoutManager((RecyclerView.o)localObject1);
    ((SpringRecyclerView)localObject3).setSpringEnabled(false);
    ((RefreshLoadRecyclerView)localObject3).setEnablePullLoad(true);
    ((RefreshLoadRecyclerView)localObject3).setEnablePullRefresh(true);
    ((RefreshLoadRecyclerView)localObject3).s(paramString);
    ((RefreshLoadRecyclerView)localObject3).setOnPullToRefreshListener(new a(this));
    ((RecyclerView)localObject3).addOnScrollListener(new b(this, paramContext));
  }
  
  private final boolean S(int paramInt)
  {
    if (r.a(this.r, "from_search_view")) {
      return false;
    }
    Object localObject1 = this.H.getItem(paramInt);
    if ((localObject1 == null) || (!s0.u(Utils.V(), ((e.a)localObject1).e)))
    {
      localObject1 = Utils.V().clone();
      r.d(localObject1, "null cannot be cast to non-null type java.util.Calendar");
      Calendar localCalendar = (Calendar)localObject1;
      Object localObject2 = (h)this.H.f(localCalendar);
      localObject1 = localObject2;
      if (localObject2 == null)
      {
        localObject1 = new h(localCalendar, null);
        this.H.b(localCalendar, (n1.e)localObject1);
      }
      if (((h)localObject1).c(localCalendar) == null)
      {
        localObject2 = this.O;
        if (localObject2 != null)
        {
          localObject2 = ((n1.g)localObject2).getItem(0).e;
          Object localObject3 = this.H;
          r.e(localObject2, "date");
          localObject3 = ((i)localObject3).f((Calendar)localObject2);
          r.d(localObject3, "null cannot be cast to non-null type com.android.calendar.agenda.MonthAgendaSet");
          ((h)localObject3).e((Calendar)localObject2);
        }
        this.O = ((h)localObject1).b(localCalendar);
      }
      T(localCalendar);
    }
    return true;
  }
  
  private final void T(Calendar paramCalendar)
  {
    int i = s0.a(this.G, paramCalendar);
    if (i < 0)
    {
      this.G.setTimeInMillis(paramCalendar.getTimeInMillis());
      this.J += -i - 1;
    }
    else if (i > this.J)
    {
      this.J = (i + 1);
    }
  }
  
  private final void U()
  {
    Object localObject = this.z;
    if (localObject != null) {
      ((miuix.appcompat.app.l)localObject).dismiss();
    }
    localObject = this.N;
    if (localObject != null) {
      ((Handler)localObject).removeCallbacksAndMessages(null);
    }
    this.N = null;
  }
  
  private final void V(g.a0 parama0)
  {
    this.D = true;
    Object localObject = this.H;
    Calendar localCalendar = parama0.a;
    r.e(localCalendar, "event.date");
    int i = ((i)localObject).a(localCalendar);
    localObject = this.H.getItem(i);
    if ((localObject != null) && (s0.u(((e.a)localObject).e, parama0.a)))
    {
      this.w.stopScroll();
      this.x.scrollToPositionWithOffset(i, 0);
    }
    else
    {
      parama0 = parama0.a;
      r.e(parama0, "event.date");
      X(this, parama0, 1, true, false, null, 24, null);
    }
  }
  
  private final void W(Calendar paramCalendar, int paramInt, final boolean paramBoolean1, boolean paramBoolean2, final Runnable paramRunnable)
  {
    if ((!this.K) && (this.J != 0))
    {
      this.K = true;
      int i;
      if (paramInt > 0) {
        i = paramInt;
      } else {
        i = -paramInt;
      }
      i.i(this.H, getContext(), paramCalendar, i, null, new Lambda(paramInt)
      {
        public final void invoke(List<? extends Event> paramAnonymousList)
        {
          if ((paramAnonymousList != null) && (paramAnonymousList.size() == 0)) {
            i = 1;
          } else {
            i = 0;
          }
          if ((i != 0) && (this.$monthNumToQuery > 0)) {
            jdField_this.getMEventsList().t();
          }
          AgendaListLayout.Q(jdField_this);
          AgendaListLayout.L(jdField_this, false);
          AgendaListLayout.P(jdField_this, false);
          i locali = AgendaListLayout.E(jdField_this);
          paramAnonymousList = Utils.V();
          r.e(paramAnonymousList, "getToDate()");
          int j = locali.a(paramAnonymousList);
          int i = j;
          if (AgendaListLayout.D(jdField_this, j))
          {
            locali = AgendaListLayout.E(jdField_this);
            paramAnonymousList = Utils.V();
            r.e(paramAnonymousList, "getToDate()");
            i = locali.a(paramAnonymousList);
          }
          jdField_this.getMAdapter().notifyDataSetChanged();
          if (paramBoolean1)
          {
            jdField_this.getMEventsList().stopScroll();
            AgendaListLayout.H(jdField_this).scrollToPositionWithOffset(i, 0);
          }
          paramAnonymousList = paramRunnable;
          if (paramAnonymousList != null) {
            paramAnonymousList.run();
          }
          AgendaListLayout.R(jdField_this);
          pc.c.c().k(new g.w(AgendaListLayout.E(jdField_this).e().size()));
        }
      }, 8, null);
    }
  }
  
  private final void a0()
  {
    Handler localHandler = new Handler();
    this.N = localHandler;
    localHandler.postDelayed(new a(this), 1000L);
  }
  
  private final void c0()
  {
    if (r.a(this.r, "from_search_view")) {
      g0(false);
    }
    if (r.a(this.r, "from_agenda_view")) {
      return;
    }
    if (this.H.getCount() == 0)
    {
      this.y.setVisibility(0);
      Object localObject1 = this.G.clone();
      r.d(localObject1, "null cannot be cast to non-null type java.util.Calendar");
      Object localObject2 = (Calendar)localObject1;
      ((Calendar)localObject2).add(2, this.J + 1);
      localObject1 = this.y;
      localObject2 = getContext().getString(2131886834, new Object[] { Integer.valueOf(((Calendar)localObject2).get(1)) });
      r.e(localObject2, "context.getString(\n     …r.YEAR)\n                )");
      ((EmptyView)localObject1).setEmptyActionText((String)localObject2);
      this.y.setEmptyActionClickListener(new b(this));
      this.v.setSpringBackMode(1);
    }
    else
    {
      this.y.setVisibility(8);
      this.v.setSpringBackMode(3);
    }
  }
  
  private static final void d0(AgendaListLayout paramAgendaListLayout, View paramView)
  {
    r.f(paramAgendaListLayout, "this$0");
    Z(paramAgendaListLayout, 12, false, false, null, 12, null);
  }
  
  private final void e0(String paramString)
  {
    Object localObject = this.z;
    if (localObject != null) {
      ((miuix.appcompat.app.l)localObject).dismiss();
    }
    localObject = getContext();
    r.e(localObject, "context");
    localObject = new x((Context)localObject);
    ((x)localObject).D(paramString);
    ((miuix.appcompat.app.l)localObject).setCancelable(false);
    ((miuix.appcompat.app.l)localObject).setCanceledOnTouchOutside(false);
    ((x)localObject).A(true);
    this.z = ((x)localObject);
    ((Dialog)localObject).show();
  }
  
  private final void g0(boolean paramBoolean)
  {
    if (paramBoolean) {
      f0(this, null, 1, null);
    } else {
      U();
    }
  }
  
  private final void h0()
  {
    Object localObject1 = this.w;
    Object localObject2 = getContext().getString(2131887333, new Object[] { Integer.valueOf(this.G.get(1) - 1) });
    r.e(localObject2, "context.getString(R.stri…h.get(Calendar.YEAR) - 1)");
    ((RefreshLoadRecyclerView)localObject1).u(0, (String)localObject2);
    localObject1 = this.G.clone();
    r.d(localObject1, "null cannot be cast to non-null type java.util.Calendar");
    localObject2 = (Calendar)localObject1;
    ((Calendar)localObject2).add(2, this.J);
    localObject1 = this.w;
    localObject2 = getContext().getString(2131886832, new Object[] { Integer.valueOf(((Calendar)localObject2).get(1) + 1) });
    r.e(localObject2, "context.getString(R.stri…r.get(Calendar.YEAR) + 1)");
    ((RefreshLoadRecyclerView)localObject1).v(0, (String)localObject2);
  }
  
  private static final void setLoadingAlarm$lambda-4(AgendaListLayout paramAgendaListLayout)
  {
    r.f(paramAgendaListLayout, "this$0");
    paramAgendaListLayout.g0(true);
  }
  
  public View C(int paramInt)
  {
    Map localMap = this.P;
    View localView1 = (View)localMap.get(Integer.valueOf(paramInt));
    View localView2 = localView1;
    if (localView1 == null)
    {
      localView2 = findViewById(paramInt);
      if (localView2 != null) {
        localMap.put(Integer.valueOf(paramInt), localView2);
      } else {
        localView2 = null;
      }
    }
    return localView2;
  }
  
  public final void Y(int paramInt, boolean paramBoolean1, boolean paramBoolean2, Runnable paramRunnable)
  {
    Object localObject;
    if (paramInt < 0)
    {
      this.G.add(2, paramInt);
      localObject = this.G.clone();
      r.d(localObject, "null cannot be cast to non-null type java.util.Calendar");
      localObject = (Calendar)localObject;
      this.J -= paramInt;
    }
    else
    {
      localObject = this.G.clone();
      r.d(localObject, "null cannot be cast to non-null type java.util.Calendar");
      localObject = (Calendar)localObject;
      ((Calendar)localObject).add(2, this.J);
      this.J += paramInt;
    }
    W((Calendar)localObject, paramInt, paramBoolean1, paramBoolean2, paramRunnable);
  }
  
  public void a(g.j paramj)
  {
    r.f(paramj, "event");
    if ((paramj instanceof g.a0)) {
      V((g.a0)paramj);
    } else if ((paramj instanceof g.u)) {
      X(this, this.G, this.J, true, false, null, 24, null);
    }
  }
  
  public final void b0(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      String str = getContext().getString(2131886438);
      r.e(str, "context.getString(R.string.delete_hint)");
      e0(str);
    }
    else
    {
      U();
    }
  }
  
  public boolean f(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    r.f(paramView, "view");
    if ((!x0.u0()) && (x0.v0()))
    {
      paramInt1 = getMContainer().getPaddingTop();
      paramView = getContext();
      r.e(paramView, "context");
      if (paramInt4 > paramInt1 + x0.A(paramView)) {
        return true;
      }
    }
    return false;
  }
  
  public float getDefPosition()
  {
    return getMVerticalMotionUtil().h();
  }
  
  public final String getFrom()
  {
    return this.r;
  }
  
  public final n1.c getMAdapter()
  {
    return this.I;
  }
  
  public final RefreshLoadRecyclerView getMEventsList()
  {
    return this.w;
  }
  
  public final Handler getMLoadingHandler()
  {
    return this.N;
  }
  
  public int getViewType()
  {
    return 1;
  }
  
  public void q()
  {
    if (!isShown()) {
      return;
    }
    super.q();
    z.a("Cal:D:AgendaListLayout", "onActivityPause()");
    U();
  }
  
  public void s()
  {
    super.s();
    z.a("Cal:D:AgendaListLayout", "onActivityResume()");
    this.D = true;
    this.w.requestFocus();
    int i = this.J;
    if (i == 0) {
      Z(this, 11, true, true, null, 8, null);
    } else {
      X(this, this.G, i, true, true, null, 16, null);
    }
    h0();
    if (r.a(this.r, "from_search_view")) {
      a0();
    }
  }
  
  public final void setDateChangedCallback(w7.l<? super String, u> paraml)
  {
    this.M = paraml;
  }
  
  public final void setMLoadingHandler(Handler paramHandler)
  {
    this.N = paramHandler;
  }
  
  public void w()
  {
    super.w();
    View localView = getMIndicatorShadowView();
    if (localView != null) {
      localView.setVisibility(0);
    }
    com.miui.calendar.util.g.c(new g.k(0, false, true));
  }
  
  @Metadata(bv={}, d1={""}, d2={"com/android/calendar/homepage/AgendaListLayout$a", "Lt4/a$d;", "Lkotlin/u;", "a", "b", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a
    implements a.d
  {
    a(AgendaListLayout paramAgendaListLayout) {}
    
    private static final void e(AgendaListLayout paramAgendaListLayout)
    {
      r.f(paramAgendaListLayout, "this$0");
      paramAgendaListLayout.getMEventsList().w();
    }
    
    private static final void f(AgendaListLayout paramAgendaListLayout)
    {
      r.f(paramAgendaListLayout, "this$0");
      paramAgendaListLayout.getMEventsList().x();
    }
    
    public void a()
    {
      AgendaListLayout localAgendaListLayout = this.a;
      AgendaListLayout.Z(localAgendaListLayout, -12, false, false, new d(localAgendaListLayout), 4, null);
    }
    
    public void b()
    {
      AgendaListLayout localAgendaListLayout = this.a;
      AgendaListLayout.Z(localAgendaListLayout, 12, false, false, new c(localAgendaListLayout), 4, null);
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"com/android/calendar/homepage/AgendaListLayout$b", "Landroidx/recyclerview/widget/RecyclerView$t;", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "", "dx", "dy", "Lkotlin/u;", "onScrolled", "newState", "onScrollStateChanged", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class b
    extends RecyclerView.t
  {
    b(AgendaListLayout paramAgendaListLayout, Context paramContext) {}
    
    private static final void b(AgendaListLayout paramAgendaListLayout, e.a parama)
    {
      r.f(paramAgendaListLayout, "this$0");
      r.f(parama, "$it");
      if (AgendaListLayout.J(paramAgendaListLayout)) {
        return;
      }
      if (AgendaListLayout.G(paramAgendaListLayout) == null)
      {
        AgendaListLayout.N(paramAgendaListLayout, parama);
        return;
      }
      Object localObject = AgendaListLayout.G(paramAgendaListLayout);
      if (localObject != null) {
        localObject = ((e.a)localObject).e;
      } else {
        localObject = null;
      }
      if (!s0.u((Calendar)localObject, parama.e))
      {
        AgendaListLayout.N(paramAgendaListLayout, parama);
        z.a("Cal:D:AgendaListLayout", "timecost----- onScrolled post GoToDateEvent");
        com.miui.calendar.util.g.c(new g.a0(parama.e).f(true).b(true));
      }
    }
    
    public void onScrollStateChanged(RecyclerView paramRecyclerView, int paramInt)
    {
      r.f(paramRecyclerView, "recyclerView");
      AgendaListLayout.O(this.a, paramInt);
      if (AgendaListLayout.I(this.a) == 1) {
        AgendaListLayout.P(this.a, false);
      }
      if (AgendaListLayout.I(this.a) == 0) {
        com.miui.calendar.util.g.c(new g.l0());
      }
      paramRecyclerView = new StringBuilder();
      paramRecyclerView.append("onScrollStateChanged ");
      paramRecyclerView.append(AgendaListLayout.I(this.a));
      paramRecyclerView.append(' ');
      paramRecyclerView.append(AgendaListLayout.J(this.a));
      z.a("Cal:D:AgendaListLayout", paramRecyclerView.toString());
    }
    
    public void onScrolled(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
    {
      r.f(paramRecyclerView, "recyclerView");
      paramRecyclerView = paramRecyclerView.getLayoutManager();
      r.d(paramRecyclerView, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
      paramInt1 = ((LinearLayoutManager)paramRecyclerView).findFirstVisibleItemPosition();
      e.a locala;
      if (AgendaListLayout.F(this.a) != paramInt1)
      {
        AgendaListLayout.M(this.a, paramInt1);
        locala = AgendaListLayout.E(this.a).getItem(paramInt1);
        if (locala != null)
        {
          Object localObject = this.a;
          paramRecyclerView = paramContext;
          localObject = AgendaListLayout.K((AgendaListLayout)localObject);
          if (localObject != null)
          {
            long l;
            if (locala.h) {
              l = Utils.W();
            } else {
              l = locala.e.getTimeInMillis();
            }
            paramRecyclerView = (u)((w7.l)localObject).invoke(DateUtils.formatDateTime(paramRecyclerView, l, 52));
          }
        }
      }
      if ((!x0.u0()) && (Utils.t(paramContext) != 3) && (Utils.t(paramContext) != 2))
      {
        paramInt1 = AgendaListLayout.H(this.a).findFirstVisibleItemPosition();
        locala = AgendaListLayout.E(this.a).getItem(paramInt1);
        if (locala != null)
        {
          paramRecyclerView = this.a;
          paramRecyclerView.post(new e(paramRecyclerView, locala));
        }
      }
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/homepage/AgendaListLayout$c;", "", "", "FROM_AGENDA_VIEW", "Ljava/lang/String;", "FROM_SEARCH_VIEW", "", "NEED_SHOW_LOADING_OFFSET", "J", "TAG", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class c {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.homepage.AgendaListLayout
 * JD-Core Version:    0.7.0.1
 */
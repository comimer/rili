package com.miui.calendar.search;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.os.Bundle;
import android.os.Handler;
import android.provider.CalendarContract.Events;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.g;
import androidx.recyclerview.widget.SpringRecyclerView;
import com.android.calendar.common.Utils;
import com.android.calendar.common.WrapperLinearLayoutManager;
import com.android.calendar.common.event.schema.Event;
import com.miui.calendar.util.v;
import com.miui.calendar.util.z;
import com.miui.calendar.view.RefreshLoadRecyclerView;
import com.miui.calendar.widget.EmptyView;
import db.e;
import java.util.Calendar;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.r;
import kotlin.u;
import miuix.animation.IVisibleStyle;
import miuix.animation.d;
import miuix.springback.view.SpringBackLayout;
import n1.c;
import n1.e.a;
import n1.i;
import t4.a.d;

@Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/search/SearchResultFragment;", "Ldb/e;", "Ljava/util/Calendar;", "w", "firstMonth", "", "monthNumToQuery", "", "searchKeyWord", "Ljava/lang/Runnable;", "runnable", "Lkotlin/u;", "y", "G", "E", "", "keyword", "v", "Landroid/content/Context;", "context", "onAttach", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "onPause", "onResume", "onDetach", "onDestroyView", "onDestroy", "A", "i", "p0", "", "p1", "j", "notify", "C", "Landroidx/constraintlayout/widget/ConstraintLayout;", "a", "Landroidx/constraintlayout/widget/ConstraintLayout;", "mContainer", "Lmiuix/springback/view/SpringBackLayout;", "b", "Lmiuix/springback/view/SpringBackLayout;", "mRefresher", "Lcom/miui/calendar/view/RefreshLoadRecyclerView;", "c", "Lcom/miui/calendar/view/RefreshLoadRecyclerView;", "mEventsList", "Lcom/android/calendar/common/WrapperLinearLayoutManager;", "d", "Lcom/android/calendar/common/WrapperLinearLayoutManager;", "mLayoutManager", "Lcom/miui/calendar/widget/EmptyView;", "e", "Lcom/miui/calendar/widget/EmptyView;", "mEmptyView", "f", "Ljava/util/Calendar;", "mFirstMonth", "g", "Ljava/lang/String;", "mSearchKeyword", "I", "mMonthNum", "k", "Z", "isLoading", "l", "Landroid/content/Context;", "mContext", "Lcom/miui/calendar/search/f;", "m", "Lcom/miui/calendar/search/f;", "x", "()Lcom/miui/calendar/search/f;", "setMChoiceWrap", "(Lcom/miui/calendar/search/f;)V", "mChoiceWrap", "Landroid/database/ContentObserver;", "n", "Landroid/database/ContentObserver;", "mEventObserver", "<init>", "()V", "p", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class SearchResultFragment
  extends e
{
  public static final a p = new a(null);
  private ConstraintLayout a;
  private SpringBackLayout b;
  private RefreshLoadRecyclerView c;
  private WrapperLinearLayoutManager d;
  private EmptyView e;
  private Calendar f = w();
  private String g = "";
  private final i h = new i();
  private c i;
  private int j;
  private boolean k;
  private Context l;
  private f m;
  private final ContentObserver n = new b(this, new Handler());
  public Map<Integer, View> o;
  
  private final void E()
  {
    int i1 = this.h.getCount();
    Object localObject1 = null;
    EmptyView localEmptyView = null;
    Object localObject2;
    if (i1 == 0)
    {
      localObject1 = this.e;
      localObject2 = localObject1;
      if (localObject1 == null)
      {
        r.x("mEmptyView");
        localObject2 = null;
      }
      ((View)localObject2).setVisibility(0);
      localObject2 = this.f.clone();
      r.d(localObject2, "null cannot be cast to non-null type java.util.Calendar");
      Calendar localCalendar = (Calendar)localObject2;
      localCalendar.add(2, this.j + 1);
      localObject1 = this.e;
      localObject2 = localObject1;
      if (localObject1 == null)
      {
        r.x("mEmptyView");
        localObject2 = null;
      }
      Context localContext = this.l;
      localObject1 = localContext;
      if (localContext == null)
      {
        r.x("mContext");
        localObject1 = null;
      }
      localObject1 = ((Context)localObject1).getString(2131886834, new Object[] { Integer.valueOf(localCalendar.get(1)) });
      r.e(localObject1, "mContext.getString(\n    …r.YEAR)\n                )");
      ((EmptyView)localObject2).setEmptyActionText((String)localObject1);
      localObject1 = this.e;
      localObject2 = localObject1;
      if (localObject1 == null)
      {
        r.x("mEmptyView");
        localObject2 = null;
      }
      ((EmptyView)localObject2).setEmptyActionClickListener(new k(this));
      localObject2 = this.b;
      if (localObject2 == null)
      {
        r.x("mRefresher");
        localObject2 = localEmptyView;
      }
      ((SpringBackLayout)localObject2).setSpringBackMode(1);
    }
    else
    {
      localEmptyView = this.e;
      localObject2 = localEmptyView;
      if (localEmptyView == null)
      {
        r.x("mEmptyView");
        localObject2 = null;
      }
      ((View)localObject2).setVisibility(8);
      localObject2 = this.b;
      if (localObject2 == null)
      {
        r.x("mRefresher");
        localObject2 = localObject1;
      }
      ((SpringBackLayout)localObject2).setSpringBackMode(3);
    }
  }
  
  private static final void F(SearchResultFragment paramSearchResultFragment, View paramView)
  {
    r.f(paramSearchResultFragment, "this$0");
    B(paramSearchResultFragment, 12, paramSearchResultFragment.g, null, 4, null);
  }
  
  private final void G()
  {
    Object localObject1 = this.c;
    Object localObject2 = null;
    Object localObject3 = localObject1;
    if (localObject1 == null)
    {
      r.x("mEventsList");
      localObject3 = null;
    }
    Object localObject4 = this.l;
    localObject1 = localObject4;
    if (localObject4 == null)
    {
      r.x("mContext");
      localObject1 = null;
    }
    localObject1 = ((Context)localObject1).getString(2131887333, new Object[] { Integer.valueOf(this.f.get(1) - 1) });
    r.e(localObject1, "mContext.getString(R.str…h.get(Calendar.YEAR) - 1)");
    localObject3.u(0, (String)localObject1);
    localObject3 = this.f.clone();
    r.d(localObject3, "null cannot be cast to non-null type java.util.Calendar");
    localObject4 = (Calendar)localObject3;
    ((Calendar)localObject4).add(2, this.j);
    localObject1 = this.c;
    localObject3 = localObject1;
    if (localObject1 == null)
    {
      r.x("mEventsList");
      localObject3 = null;
    }
    localObject1 = this.l;
    if (localObject1 == null)
    {
      r.x("mContext");
      localObject1 = localObject2;
    }
    localObject1 = ((Context)localObject1).getString(2131886832, new Object[] { Integer.valueOf(((Calendar)localObject4).get(1) + 1) });
    r.e(localObject1, "mContext.getString(R.str…r.get(Calendar.YEAR) + 1)");
    localObject3.v(0, (String)localObject1);
  }
  
  private final void v(CharSequence paramCharSequence)
  {
    Object localObject = null;
    D(this, false, 1, null);
    B(this, 23, paramCharSequence.toString(), null, 4, null);
    paramCharSequence = this.a;
    if (paramCharSequence == null)
    {
      r.x("mContainer");
      paramCharSequence = localObject;
    }
    miuix.animation.a.y(new View[] { paramCharSequence }).b().l().E(new d9.a[0]);
  }
  
  private final Calendar w()
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeInMillis(Utils.Y());
    localCalendar.set(2, 0);
    r.e(localCalendar, "getInstance().apply {\n  …endar.MONTH, 0)\n        }");
    return localCalendar;
  }
  
  private final void y(Calendar paramCalendar, int paramInt, String paramString, final Runnable paramRunnable)
  {
    if ((!this.k) && (this.j != 0))
    {
      this.k = true;
      int i1;
      if (paramInt > 0) {
        i1 = paramInt;
      } else {
        i1 = -paramInt;
      }
      i locali = this.h;
      Context localContext1 = this.l;
      Context localContext2 = localContext1;
      if (localContext1 == null)
      {
        r.x("mContext");
        localContext2 = null;
      }
      locali.h(localContext2, paramCalendar, i1, paramString, new Lambda(paramInt)
      {
        public final void invoke(List<? extends Event> paramAnonymousList)
        {
          int i;
          if ((paramAnonymousList != null) && (paramAnonymousList.size() == 0)) {
            i = 1;
          } else {
            i = 0;
          }
          Object localObject = null;
          if ((i != 0) && (this.$monthNumToQuery > 0))
          {
            RefreshLoadRecyclerView localRefreshLoadRecyclerView = SearchResultFragment.o(jdField_this);
            paramAnonymousList = localRefreshLoadRecyclerView;
            if (localRefreshLoadRecyclerView == null)
            {
              r.x("mEventsList");
              paramAnonymousList = null;
            }
            paramAnonymousList.t();
          }
          SearchResultFragment.t(jdField_this);
          SearchResultFragment.s(jdField_this, false);
          paramAnonymousList = SearchResultFragment.m(jdField_this);
          if (paramAnonymousList == null)
          {
            r.x("mAdapter");
            paramAnonymousList = localObject;
          }
          paramAnonymousList.notifyDataSetChanged();
          paramAnonymousList = paramRunnable;
          if (paramAnonymousList != null) {
            paramAnonymousList.run();
          }
          SearchResultFragment.u(jdField_this);
        }
      });
    }
  }
  
  public final void A(int paramInt, String paramString, Runnable paramRunnable)
  {
    r.f(paramString, "searchKeyWord");
    Object localObject;
    if (paramInt < 0)
    {
      this.f.add(2, paramInt);
      localObject = this.f.clone();
      r.d(localObject, "null cannot be cast to non-null type java.util.Calendar");
      localObject = (Calendar)localObject;
      this.j -= paramInt;
    }
    else
    {
      localObject = this.f.clone();
      r.d(localObject, "null cannot be cast to non-null type java.util.Calendar");
      localObject = (Calendar)localObject;
      ((Calendar)localObject).add(2, this.j);
      this.j += paramInt;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("loadMoreMonthEvents mMonthNum:");
    localStringBuilder.append(this.j);
    localStringBuilder.append(" monthNumToQuery:");
    localStringBuilder.append(paramInt);
    z.a("Cal:D:SearchResultFragment", localStringBuilder.toString());
    y((Calendar)localObject, paramInt, paramString, paramRunnable);
  }
  
  public final void C(boolean paramBoolean)
  {
    this.h.d();
    this.j = 0;
    this.f = w();
    if (paramBoolean)
    {
      c localc1 = this.i;
      c localc2 = localc1;
      if (localc1 == null)
      {
        r.x("mAdapter");
        localc2 = null;
      }
      localc2.notifyDataSetChanged();
    }
  }
  
  protected void i(CharSequence paramCharSequence)
  {
    int i1;
    if ((paramCharSequence != null) && (paramCharSequence.length() != 0)) {
      i1 = 0;
    } else {
      i1 = 1;
    }
    if (i1 != 0) {
      return;
    }
    this.g = paramCharSequence.toString();
    RecentSearchProvider.a locala = RecentSearchProvider.b;
    Context localContext1 = this.l;
    Context localContext2 = localContext1;
    if (localContext1 == null)
    {
      r.x("mContext");
      localContext2 = null;
    }
    locala.a(localContext2).c().b(0, this.g);
    v(paramCharSequence);
  }
  
  protected void j(CharSequence paramCharSequence, boolean paramBoolean)
  {
    int i1;
    if ((paramCharSequence != null) && (paramCharSequence.length() != 0)) {
      i1 = 0;
    } else {
      i1 = 1;
    }
    if (i1 == 0) {
      kotlin.text.k.L0(paramCharSequence).length();
    }
  }
  
  public void l()
  {
    this.o.clear();
  }
  
  public void onAttach(Context paramContext)
  {
    r.f(paramContext, "context");
    super.onAttach(paramContext);
    this.l = paramContext;
    this.i = new c(paramContext, this.h, "from_search_view");
    Context localContext = this.l;
    paramContext = localContext;
    if (localContext == null)
    {
      r.x("mContext");
      paramContext = null;
    }
    paramContext.getContentResolver().registerContentObserver(CalendarContract.Events.CONTENT_URI, true, this.n);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    r.f(paramLayoutInflater, "inflater");
    paramLayoutInflater = paramLayoutInflater.inflate(2131558649, paramViewGroup, false);
    r.d(paramLayoutInflater, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout");
    paramViewGroup = (ConstraintLayout)paramLayoutInflater;
    this.a = paramViewGroup;
    paramLayoutInflater = paramViewGroup;
    if (paramViewGroup == null)
    {
      r.x("mContainer");
      paramLayoutInflater = null;
    }
    return paramLayoutInflater;
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    z.a("Cal:D:SearchResultFragment", "onDestroy");
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    z.a("Cal:D:SearchResultFragment", "onDestroyView");
    l();
  }
  
  public void onDetach()
  {
    super.onDetach();
    z.a("Cal:D:SearchResultFragment", "onDetach");
    Object localObject1 = this.m;
    if (localObject1 != null) {
      ((f)localObject1).h();
    }
    Object localObject2 = null;
    D(this, false, 1, null);
    this.g = "";
    localObject1 = this.l;
    if (localObject1 == null)
    {
      r.x("mContext");
      localObject1 = localObject2;
    }
    ((Context)localObject1).getContentResolver().unregisterContentObserver(this.n);
  }
  
  public void onPause()
  {
    super.onPause();
  }
  
  public void onResume()
  {
    super.onResume();
  }
  
  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    r.f(paramView, "view");
    super.onViewCreated(paramView, paramBundle);
    paramBundle = paramView.findViewById(2131363021);
    r.d(paramBundle, "null cannot be cast to non-null type miuix.springback.view.SpringBackLayout");
    this.b = ((SpringBackLayout)paramBundle);
    paramBundle = paramView.findViewById(2131362433);
    r.d(paramBundle, "null cannot be cast to non-null type com.miui.calendar.view.RefreshLoadRecyclerView");
    this.c = ((RefreshLoadRecyclerView)paramBundle);
    paramBundle = paramView.findViewById(2131362406);
    r.e(paramBundle, "view.findViewById<EmptyView>(R.id.empty_view)");
    this.e = ((EmptyView)paramBundle);
    paramView.findViewById(2131362612).setVisibility(8);
    paramBundle = this.e;
    Object localObject1 = null;
    paramView = paramBundle;
    if (paramBundle == null)
    {
      r.x("mEmptyView");
      paramView = null;
    }
    v.k(paramView.getActionView());
    paramBundle = this.c;
    paramView = paramBundle;
    if (paramBundle == null)
    {
      r.x("mEventsList");
      paramView = null;
    }
    Object localObject2 = this.i;
    paramBundle = (Bundle)localObject2;
    if (localObject2 == null)
    {
      r.x("mAdapter");
      paramBundle = null;
    }
    paramView.setAdapter(paramBundle);
    paramBundle = this.l;
    paramView = paramBundle;
    if (paramBundle == null)
    {
      r.x("mContext");
      paramView = null;
    }
    localObject2 = this.c;
    paramBundle = (Bundle)localObject2;
    if (localObject2 == null)
    {
      r.x("mEventsList");
      paramBundle = null;
    }
    localObject2 = new f(paramView, this, paramBundle);
    this.m = ((f)localObject2);
    paramBundle = this.i;
    paramView = paramBundle;
    if (paramBundle == null)
    {
      r.x("mAdapter");
      paramView = null;
    }
    ((f)localObject2).k(paramView);
    paramBundle = this.i;
    paramView = paramBundle;
    if (paramBundle == null)
    {
      r.x("mAdapter");
      paramView = null;
    }
    paramView.v(new c(this));
    paramBundle = this.c;
    paramView = paramBundle;
    if (paramBundle == null)
    {
      r.x("mEventsList");
      paramView = null;
    }
    paramView.setOverScrollMode(0);
    paramView = this.l;
    if (paramView == null)
    {
      r.x("mContext");
      paramView = null;
    }
    this.d = new WrapperLinearLayoutManager(paramView, 0, false, 6, null);
    paramBundle = this.c;
    paramView = paramBundle;
    if (paramBundle == null)
    {
      r.x("mEventsList");
      paramView = null;
    }
    localObject2 = this.d;
    paramBundle = (Bundle)localObject2;
    if (localObject2 == null)
    {
      r.x("mLayoutManager");
      paramBundle = null;
    }
    paramView.setLayoutManager(paramBundle);
    paramBundle = this.c;
    paramView = paramBundle;
    if (paramBundle == null)
    {
      r.x("mEventsList");
      paramView = null;
    }
    paramView.setSpringEnabled(false);
    paramBundle = this.c;
    paramView = paramBundle;
    if (paramBundle == null)
    {
      r.x("mEventsList");
      paramView = null;
    }
    paramView.setEnablePullRefresh(true);
    paramBundle = this.c;
    paramView = paramBundle;
    if (paramBundle == null)
    {
      r.x("mEventsList");
      paramView = null;
    }
    paramView.setEnablePullLoad(true);
    paramBundle = this.c;
    paramView = paramBundle;
    if (paramBundle == null)
    {
      r.x("mEventsList");
      paramView = null;
    }
    localObject2 = this.b;
    paramBundle = (Bundle)localObject2;
    if (localObject2 == null)
    {
      r.x("mRefresher");
      paramBundle = null;
    }
    paramView.s(paramBundle);
    paramView = this.c;
    if (paramView == null)
    {
      r.x("mEventsList");
      paramView = localObject1;
    }
    paramView.setOnPullToRefreshListener(new d(this));
  }
  
  public final f x()
  {
    return this.m;
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/search/SearchResultFragment$a;", "", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
  
  @Metadata(bv={}, d1={""}, d2={"com/miui/calendar/search/SearchResultFragment$b", "Landroid/database/ContentObserver;", "", "deliverSelfNotifications", "selfChange", "Lkotlin/u;", "onChange", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class b
    extends ContentObserver
  {
    b(SearchResultFragment paramSearchResultFragment, Handler paramHandler)
    {
      super();
    }
    
    public boolean deliverSelfNotifications()
    {
      return true;
    }
    
    public void onChange(boolean paramBoolean)
    {
      z.a("Cal:D:SearchResultFragment", "mEventObserver: onChange()");
      Object localObject = SearchResultFragment.r(this.a);
      int i;
      if ((localObject != null) && (((CharSequence)localObject).length() != 0)) {
        i = 0;
      } else {
        i = 1;
      }
      if (i == 0)
      {
        localObject = this.a;
        SearchResultFragment.z((SearchResultFragment)localObject, SearchResultFragment.p((SearchResultFragment)localObject), SearchResultFragment.q(this.a), SearchResultFragment.r(this.a), null, 8, null);
      }
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"com/miui/calendar/search/SearchResultFragment$c", "Lcom/miui/calendar/search/g;", "Ln1/e$a;", "Landroid/view/View;", "v", "", "position", "", "d", "isChecked", "t", "Lkotlin/u;", "e", "count", "b", "isAllChecked", "", "list", "c", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class c
    implements g<e.a>
  {
    c(SearchResultFragment paramSearchResultFragment) {}
    
    public void b(int paramInt)
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("itemTotalCount count:");
      ((StringBuilder)localObject).append(paramInt);
      z.a("Cal:D:SearchResultFragment", ((StringBuilder)localObject).toString());
      localObject = this.a.x();
      if (localObject != null) {
        ((f)localObject).n(paramInt);
      }
    }
    
    public void c(boolean paramBoolean, List<e.a> paramList)
    {
      f localf = this.a.x();
      if (localf != null) {
        localf.p(paramBoolean, paramList);
      }
    }
    
    public boolean d(View paramView, int paramInt)
    {
      z.a("Cal:D:SearchResultFragment", "SearchResultFragment onItemLongClick");
      paramView = this.a.x();
      if (paramView != null) {
        paramView.o();
      }
      return true;
    }
    
    public void e(int paramInt, boolean paramBoolean, e.a parama)
    {
      r.f(parama, "t");
      f localf = this.a.x();
      if (localf != null) {
        localf.j(paramBoolean, parama);
      }
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"com/miui/calendar/search/SearchResultFragment$d", "Lt4/a$d;", "Lkotlin/u;", "a", "b", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class d
    implements a.d
  {
    d(SearchResultFragment paramSearchResultFragment) {}
    
    private static final void e(SearchResultFragment paramSearchResultFragment)
    {
      r.f(paramSearchResultFragment, "this$0");
      RefreshLoadRecyclerView localRefreshLoadRecyclerView = SearchResultFragment.o(paramSearchResultFragment);
      paramSearchResultFragment = localRefreshLoadRecyclerView;
      if (localRefreshLoadRecyclerView == null)
      {
        r.x("mEventsList");
        paramSearchResultFragment = null;
      }
      paramSearchResultFragment.w();
    }
    
    private static final void f(SearchResultFragment paramSearchResultFragment)
    {
      r.f(paramSearchResultFragment, "this$0");
      RefreshLoadRecyclerView localRefreshLoadRecyclerView = SearchResultFragment.o(paramSearchResultFragment);
      paramSearchResultFragment = localRefreshLoadRecyclerView;
      if (localRefreshLoadRecyclerView == null)
      {
        r.x("mEventsList");
        paramSearchResultFragment = null;
      }
      paramSearchResultFragment.x();
    }
    
    public void a()
    {
      EmptyView localEmptyView = SearchResultFragment.n(this.a);
      Object localObject1 = null;
      Object localObject2 = localEmptyView;
      if (localEmptyView == null)
      {
        r.x("mEmptyView");
        localObject2 = null;
      }
      if (((View)localObject2).getVisibility() == 0)
      {
        localEmptyView = SearchResultFragment.n(this.a);
        localObject2 = localEmptyView;
        if (localEmptyView == null)
        {
          r.x("mEmptyView");
          localObject2 = null;
        }
        ((View)localObject2).setVisibility(8);
      }
      int i;
      if (SearchResultFragment.r(this.a).length() == 0) {
        i = 1;
      } else {
        i = 0;
      }
      if (i != 0)
      {
        localObject2 = SearchResultFragment.o(this.a);
        if (localObject2 == null)
        {
          r.x("mEventsList");
          localObject2 = localObject1;
        }
        ((RefreshLoadRecyclerView)localObject2).x();
        return;
      }
      localObject2 = this.a;
      ((SearchResultFragment)localObject2).A(-12, SearchResultFragment.r((SearchResultFragment)localObject2), new m(this.a));
    }
    
    public void b()
    {
      int i;
      if (SearchResultFragment.r(this.a).length() == 0) {
        i = 1;
      } else {
        i = 0;
      }
      if (i != 0)
      {
        RefreshLoadRecyclerView localRefreshLoadRecyclerView = SearchResultFragment.o(this.a);
        localObject = localRefreshLoadRecyclerView;
        if (localRefreshLoadRecyclerView == null)
        {
          r.x("mEventsList");
          localObject = null;
        }
        ((RefreshLoadRecyclerView)localObject).w();
        return;
      }
      Object localObject = this.a;
      ((SearchResultFragment)localObject).A(12, SearchResultFragment.r((SearchResultFragment)localObject), new l(this.a));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.search.SearchResultFragment
 * JD-Core Version:    0.7.0.1
 */
package androidx.viewpager2.adapter;

import android.os.BaseBundle;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.view.View;
import android.view.View.OnLayoutChangeListener;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.activity.ComponentActivity;
import androidx.core.util.h;
import androidx.core.view.a0;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.Fragment.SavedState;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentManager.m;
import androidx.fragment.app.s;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.Lifecycle.Event;
import androidx.lifecycle.Lifecycle.State;
import androidx.lifecycle.l;
import androidx.lifecycle.n;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.c0;
import androidx.recyclerview.widget.RecyclerView.g;
import androidx.recyclerview.widget.RecyclerView.i;
import androidx.viewpager2.widget.ViewPager2;
import androidx.viewpager2.widget.ViewPager2.i;
import java.util.Iterator;
import java.util.Set;

public abstract class FragmentStateAdapter
  extends RecyclerView.g<a>
  implements b
{
  final Lifecycle a;
  final FragmentManager b;
  final n.d<Fragment> c = new n.d();
  private final n.d<Fragment.SavedState> d = new n.d();
  private final n.d<Integer> e = new n.d();
  private FragmentMaxLifecycleEnforcer f;
  boolean g = false;
  private boolean h = false;
  
  public FragmentStateAdapter(FragmentManager paramFragmentManager, Lifecycle paramLifecycle)
  {
    this.b = paramFragmentManager;
    this.a = paramLifecycle;
    super.setHasStableIds(true);
  }
  
  public FragmentStateAdapter(androidx.fragment.app.d paramd)
  {
    this(paramd.getSupportFragmentManager(), paramd.getLifecycle());
  }
  
  private static String i(String paramString, long paramLong)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString);
    localStringBuilder.append(paramLong);
    return localStringBuilder.toString();
  }
  
  private void j(int paramInt)
  {
    long l = getItemId(paramInt);
    if (!this.c.d(l))
    {
      Fragment localFragment = h(paramInt);
      localFragment.setInitialSavedState((Fragment.SavedState)this.d.f(l));
      this.c.l(l, localFragment);
    }
  }
  
  private boolean l(long paramLong)
  {
    boolean bool1 = this.e.d(paramLong);
    boolean bool2 = true;
    if (bool1) {
      return true;
    }
    Object localObject = (Fragment)this.c.f(paramLong);
    if (localObject == null) {
      return false;
    }
    localObject = ((Fragment)localObject).getView();
    if (localObject == null) {
      return false;
    }
    if (((View)localObject).getParent() == null) {
      bool2 = false;
    }
    return bool2;
  }
  
  private static boolean m(String paramString1, String paramString2)
  {
    boolean bool;
    if ((paramString1.startsWith(paramString2)) && (paramString1.length() > paramString2.length())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private Long o(int paramInt)
  {
    Object localObject1 = null;
    int i = 0;
    while (i < this.e.p())
    {
      Object localObject2 = localObject1;
      if (((Integer)this.e.r(i)).intValue() == paramInt) {
        if (localObject1 == null) {
          localObject2 = Long.valueOf(this.e.k(i));
        } else {
          throw new IllegalStateException("Design assumption violated: a ViewHolder can only be bound to one item at a time.");
        }
      }
      i++;
      localObject1 = localObject2;
    }
    return localObject1;
  }
  
  private static long u(String paramString1, String paramString2)
  {
    return Long.parseLong(paramString1.substring(paramString2.length()));
  }
  
  private void w(long paramLong)
  {
    Fragment localFragment = (Fragment)this.c.f(paramLong);
    if (localFragment == null) {
      return;
    }
    if (localFragment.getView() != null)
    {
      ViewParent localViewParent = localFragment.getView().getParent();
      if (localViewParent != null) {
        ((FrameLayout)localViewParent).removeAllViews();
      }
    }
    if (!g(paramLong)) {
      this.d.n(paramLong);
    }
    if (!localFragment.isAdded())
    {
      this.c.n(paramLong);
      return;
    }
    if (z())
    {
      this.h = true;
      return;
    }
    if ((localFragment.isAdded()) && (g(paramLong))) {
      this.d.l(paramLong, this.b.n1(localFragment));
    }
    this.b.m().p(localFragment).j();
    this.c.n(paramLong);
  }
  
  private void x()
  {
    final Handler localHandler = new Handler(Looper.getMainLooper());
    final c localc = new c();
    this.a.a(new l()
    {
      public void g(n paramAnonymousn, Lifecycle.Event paramAnonymousEvent)
      {
        if (paramAnonymousEvent == Lifecycle.Event.ON_DESTROY)
        {
          localHandler.removeCallbacks(localc);
          paramAnonymousn.getLifecycle().c(this);
        }
      }
    });
    localHandler.postDelayed(localc, 10000L);
  }
  
  private void y(final Fragment paramFragment, final FrameLayout paramFrameLayout)
  {
    this.b.e1(new b(paramFragment, paramFrameLayout), false);
  }
  
  public final Parcelable a()
  {
    Bundle localBundle = new Bundle(this.c.p() + this.d.p());
    int i = 0;
    int k;
    long l;
    for (int j = 0;; j++)
    {
      k = i;
      if (j >= this.c.p()) {
        break;
      }
      l = this.c.k(j);
      Fragment localFragment = (Fragment)this.c.f(l);
      if ((localFragment != null) && (localFragment.isAdded()))
      {
        String str = i("f#", l);
        this.b.d1(localBundle, str, localFragment);
      }
    }
    while (k < this.d.p())
    {
      l = this.d.k(k);
      if (g(l)) {
        localBundle.putParcelable(i("s#", l), (Parcelable)this.d.f(l));
      }
      k++;
    }
    return localBundle;
  }
  
  public final void c(Parcelable paramParcelable)
  {
    if ((this.d.i()) && (this.c.i()))
    {
      paramParcelable = (Bundle)paramParcelable;
      if (paramParcelable.getClassLoader() == null) {
        paramParcelable.setClassLoader(getClass().getClassLoader());
      }
      Iterator localIterator = paramParcelable.keySet().iterator();
      while (localIterator.hasNext())
      {
        Object localObject = (String)localIterator.next();
        long l;
        if (m((String)localObject, "f#"))
        {
          l = u((String)localObject, "f#");
          localObject = this.b.q0(paramParcelable, (String)localObject);
          this.c.l(l, localObject);
        }
        else if (m((String)localObject, "s#"))
        {
          l = u((String)localObject, "s#");
          localObject = (Fragment.SavedState)paramParcelable.getParcelable((String)localObject);
          if (g(l)) {
            this.d.l(l, localObject);
          }
        }
        else
        {
          paramParcelable = new StringBuilder();
          paramParcelable.append("Unexpected key in savedState: ");
          paramParcelable.append((String)localObject);
          throw new IllegalArgumentException(paramParcelable.toString());
        }
      }
      if (!this.c.i())
      {
        this.h = true;
        this.g = true;
        k();
        x();
      }
      return;
    }
    throw new IllegalStateException("Expected the adapter to be 'fresh' while restoring state.");
  }
  
  void f(View paramView, FrameLayout paramFrameLayout)
  {
    if (paramFrameLayout.getChildCount() <= 1)
    {
      if (paramView.getParent() == paramFrameLayout) {
        return;
      }
      if (paramFrameLayout.getChildCount() > 0) {
        paramFrameLayout.removeAllViews();
      }
      if (paramView.getParent() != null) {
        ((ViewGroup)paramView.getParent()).removeView(paramView);
      }
      paramFrameLayout.addView(paramView);
      return;
    }
    throw new IllegalStateException("Design assumption violated.");
  }
  
  public abstract boolean g(long paramLong);
  
  public abstract long getItemId(int paramInt);
  
  public abstract Fragment h(int paramInt);
  
  void k()
  {
    if ((this.h) && (!z()))
    {
      Object localObject = new n.b();
      int i = 0;
      long l;
      for (int j = 0; j < this.c.p(); j++)
      {
        l = this.c.k(j);
        if (!g(l))
        {
          ((Set)localObject).add(Long.valueOf(l));
          this.e.n(l);
        }
      }
      if (!this.g)
      {
        this.h = false;
        for (j = i; j < this.c.p(); j++)
        {
          l = this.c.k(j);
          if (!l(l)) {
            ((Set)localObject).add(Long.valueOf(l));
          }
        }
      }
      localObject = ((Set)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        w(((Long)((Iterator)localObject).next()).longValue());
      }
    }
  }
  
  public void onAttachedToRecyclerView(RecyclerView paramRecyclerView)
  {
    boolean bool;
    if (this.f == null) {
      bool = true;
    } else {
      bool = false;
    }
    h.a(bool);
    FragmentMaxLifecycleEnforcer localFragmentMaxLifecycleEnforcer = new FragmentMaxLifecycleEnforcer();
    this.f = localFragmentMaxLifecycleEnforcer;
    localFragmentMaxLifecycleEnforcer.b(paramRecyclerView);
  }
  
  public void onDetachedFromRecyclerView(RecyclerView paramRecyclerView)
  {
    this.f.c(paramRecyclerView);
    this.f = null;
  }
  
  public final void p(final a parama, int paramInt)
  {
    long l = parama.getItemId();
    int i = parama.b().getId();
    Object localObject = o(i);
    if ((localObject != null) && (((Long)localObject).longValue() != l))
    {
      w(((Long)localObject).longValue());
      this.e.n(((Long)localObject).longValue());
    }
    this.e.l(l, Integer.valueOf(i));
    j(paramInt);
    localObject = parama.b();
    if (a0.O((View)localObject)) {
      if (((View)localObject).getParent() == null) {
        ((View)localObject).addOnLayoutChangeListener(new a((FrameLayout)localObject, parama));
      } else {
        throw new IllegalStateException("Design assumption violated.");
      }
    }
    k();
  }
  
  public final a q(ViewGroup paramViewGroup, int paramInt)
  {
    return a.a(paramViewGroup);
  }
  
  public final boolean r(a parama)
  {
    return true;
  }
  
  public final void s(a parama)
  {
    v(parama);
    k();
  }
  
  public final void setHasStableIds(boolean paramBoolean)
  {
    throw new UnsupportedOperationException("Stable Ids are required for the adapter to function properly, and the adapter takes care of setting the flag.");
  }
  
  public final void t(a parama)
  {
    parama = o(parama.b().getId());
    if (parama != null)
    {
      w(parama.longValue());
      this.e.n(parama.longValue());
    }
  }
  
  void v(final a parama)
  {
    Fragment localFragment = (Fragment)this.c.f(parama.getItemId());
    if (localFragment != null)
    {
      Object localObject1 = parama.b();
      Object localObject2 = localFragment.getView();
      if ((!localFragment.isAdded()) && (localObject2 != null)) {
        throw new IllegalStateException("Design assumption violated.");
      }
      if ((localFragment.isAdded()) && (localObject2 == null))
      {
        y(localFragment, (FrameLayout)localObject1);
        return;
      }
      if ((localFragment.isAdded()) && (((View)localObject2).getParent() != null))
      {
        if (((View)localObject2).getParent() != localObject1) {
          f((View)localObject2, (FrameLayout)localObject1);
        }
        return;
      }
      if (localFragment.isAdded())
      {
        f((View)localObject2, (FrameLayout)localObject1);
        return;
      }
      if (!z())
      {
        y(localFragment, (FrameLayout)localObject1);
        localObject2 = this.b.m();
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append("f");
        ((StringBuilder)localObject1).append(parama.getItemId());
        ((s)localObject2).e(localFragment, ((StringBuilder)localObject1).toString()).s(localFragment, Lifecycle.State.STARTED).j();
        this.f.d(false);
      }
      else
      {
        if (this.b.G0()) {
          return;
        }
        this.a.a(new l()
        {
          public void g(n paramAnonymousn, Lifecycle.Event paramAnonymousEvent)
          {
            if (FragmentStateAdapter.this.z()) {
              return;
            }
            paramAnonymousn.getLifecycle().c(this);
            if (a0.O(parama.b())) {
              FragmentStateAdapter.this.v(parama);
            }
          }
        });
      }
      return;
    }
    throw new IllegalStateException("Design assumption violated.");
  }
  
  boolean z()
  {
    return this.b.M0();
  }
  
  class FragmentMaxLifecycleEnforcer
  {
    private ViewPager2.i a;
    private RecyclerView.i b;
    private l c;
    private ViewPager2 d;
    private long e = -1L;
    
    FragmentMaxLifecycleEnforcer() {}
    
    private ViewPager2 a(RecyclerView paramRecyclerView)
    {
      ViewParent localViewParent = paramRecyclerView.getParent();
      if ((localViewParent instanceof ViewPager2)) {
        return (ViewPager2)localViewParent;
      }
      paramRecyclerView = new StringBuilder();
      paramRecyclerView.append("Expected ViewPager2 instance. Got: ");
      paramRecyclerView.append(localViewParent);
      throw new IllegalStateException(paramRecyclerView.toString());
    }
    
    void b(RecyclerView paramRecyclerView)
    {
      this.d = a(paramRecyclerView);
      paramRecyclerView = new a();
      this.a = paramRecyclerView;
      this.d.g(paramRecyclerView);
      paramRecyclerView = new b();
      this.b = paramRecyclerView;
      FragmentStateAdapter.this.registerAdapterDataObserver(paramRecyclerView);
      paramRecyclerView = new l()
      {
        public void g(n paramAnonymousn, Lifecycle.Event paramAnonymousEvent)
        {
          FragmentStateAdapter.FragmentMaxLifecycleEnforcer.this.d(false);
        }
      };
      this.c = paramRecyclerView;
      FragmentStateAdapter.this.a.a(paramRecyclerView);
    }
    
    void c(RecyclerView paramRecyclerView)
    {
      a(paramRecyclerView).n(this.a);
      FragmentStateAdapter.this.unregisterAdapterDataObserver(this.b);
      FragmentStateAdapter.this.a.c(this.c);
      this.d = null;
    }
    
    void d(boolean paramBoolean)
    {
      if (FragmentStateAdapter.this.z()) {
        return;
      }
      if (this.d.getScrollState() != 0) {
        return;
      }
      if ((!FragmentStateAdapter.this.c.i()) && (FragmentStateAdapter.this.getItemCount() != 0))
      {
        int i = this.d.getCurrentItem();
        if (i >= FragmentStateAdapter.this.getItemCount()) {
          return;
        }
        long l = FragmentStateAdapter.this.getItemId(i);
        if ((l == this.e) && (!paramBoolean)) {
          return;
        }
        Object localObject = (Fragment)FragmentStateAdapter.this.c.f(l);
        if ((localObject != null) && (((Fragment)localObject).isAdded()))
        {
          this.e = l;
          s locals = FragmentStateAdapter.this.b.m();
          localObject = null;
          for (i = 0; i < FragmentStateAdapter.this.c.p(); i++)
          {
            l = FragmentStateAdapter.this.c.k(i);
            Fragment localFragment = (Fragment)FragmentStateAdapter.this.c.r(i);
            if (localFragment.isAdded())
            {
              if (l != this.e) {
                locals.s(localFragment, Lifecycle.State.STARTED);
              } else {
                localObject = localFragment;
              }
              if (l == this.e) {
                paramBoolean = true;
              } else {
                paramBoolean = false;
              }
              localFragment.setMenuVisibility(paramBoolean);
            }
          }
          if (localObject != null) {
            locals.s((Fragment)localObject, Lifecycle.State.RESUMED);
          }
          if (!locals.o()) {
            locals.j();
          }
        }
      }
    }
    
    class a
      extends ViewPager2.i
    {
      a() {}
      
      public void onPageScrollStateChanged(int paramInt)
      {
        FragmentStateAdapter.FragmentMaxLifecycleEnforcer.this.d(false);
      }
      
      public void onPageSelected(int paramInt)
      {
        FragmentStateAdapter.FragmentMaxLifecycleEnforcer.this.d(false);
      }
    }
    
    class b
      extends FragmentStateAdapter.d
    {
      b()
      {
        super();
      }
      
      public void onChanged()
      {
        FragmentStateAdapter.FragmentMaxLifecycleEnforcer.this.d(true);
      }
    }
  }
  
  class a
    implements View.OnLayoutChangeListener
  {
    a(FrameLayout paramFrameLayout, a parama) {}
    
    public void onLayoutChange(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
    {
      if (this.a.getParent() != null)
      {
        this.a.removeOnLayoutChangeListener(this);
        FragmentStateAdapter.this.v(parama);
      }
    }
  }
  
  class b
    extends FragmentManager.m
  {
    b(Fragment paramFragment, FrameLayout paramFrameLayout) {}
    
    public void m(FragmentManager paramFragmentManager, Fragment paramFragment, View paramView, Bundle paramBundle)
    {
      if (paramFragment == paramFragment)
      {
        paramFragmentManager.w1(this);
        FragmentStateAdapter.this.f(paramView, paramFrameLayout);
      }
    }
  }
  
  class c
    implements Runnable
  {
    c() {}
    
    public void run()
    {
      FragmentStateAdapter localFragmentStateAdapter = FragmentStateAdapter.this;
      localFragmentStateAdapter.g = false;
      localFragmentStateAdapter.k();
    }
  }
  
  private static abstract class d
    extends RecyclerView.i
  {
    public abstract void onChanged();
    
    public final void onItemRangeChanged(int paramInt1, int paramInt2)
    {
      onChanged();
    }
    
    public final void onItemRangeChanged(int paramInt1, int paramInt2, Object paramObject)
    {
      onChanged();
    }
    
    public final void onItemRangeInserted(int paramInt1, int paramInt2)
    {
      onChanged();
    }
    
    public final void onItemRangeMoved(int paramInt1, int paramInt2, int paramInt3)
    {
      onChanged();
    }
    
    public final void onItemRangeRemoved(int paramInt1, int paramInt2)
    {
      onChanged();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.viewpager2.adapter.FragmentStateAdapter
 * JD-Core Version:    0.7.0.1
 */
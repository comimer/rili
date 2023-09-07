package androidx.recyclerview.widget;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;

public abstract class s
  extends RecyclerView.r
{
  RecyclerView a;
  private Scroller b;
  private final RecyclerView.t c = new a();
  
  private void g()
  {
    this.a.removeOnScrollListener(this.c);
    this.a.setOnFlingListener(null);
  }
  
  private void j()
    throws IllegalStateException
  {
    if (this.a.getOnFlingListener() == null)
    {
      this.a.addOnScrollListener(this.c);
      this.a.setOnFlingListener(this);
      return;
    }
    throw new IllegalStateException("An instance of OnFlingListener already set.");
  }
  
  private boolean k(RecyclerView.o paramo, int paramInt1, int paramInt2)
  {
    if (!(paramo instanceof RecyclerView.y.b)) {
      return false;
    }
    RecyclerView.y localy = e(paramo);
    if (localy == null) {
      return false;
    }
    paramInt1 = i(paramo, paramInt1, paramInt2);
    if (paramInt1 == -1) {
      return false;
    }
    localy.setTargetPosition(paramInt1);
    paramo.startSmoothScroll(localy);
    return true;
  }
  
  public boolean a(int paramInt1, int paramInt2)
  {
    RecyclerView.o localo = this.a.getLayoutManager();
    boolean bool1 = false;
    if (localo == null) {
      return false;
    }
    if (this.a.getAdapter() == null) {
      return false;
    }
    int i = this.a.getMinFlingVelocity();
    boolean bool2;
    if (Math.abs(paramInt2) <= i)
    {
      bool2 = bool1;
      if (Math.abs(paramInt1) <= i) {}
    }
    else
    {
      bool2 = bool1;
      if (k(localo, paramInt1, paramInt2)) {
        bool2 = true;
      }
    }
    return bool2;
  }
  
  public void b(RecyclerView paramRecyclerView)
    throws IllegalStateException
  {
    RecyclerView localRecyclerView = this.a;
    if (localRecyclerView == paramRecyclerView) {
      return;
    }
    if (localRecyclerView != null) {
      g();
    }
    this.a = paramRecyclerView;
    if (paramRecyclerView != null)
    {
      j();
      this.b = new Scroller(this.a.getContext(), new DecelerateInterpolator());
      l();
    }
  }
  
  public abstract int[] c(RecyclerView.o paramo, View paramView);
  
  public int[] d(int paramInt1, int paramInt2)
  {
    this.b.fling(0, 0, paramInt1, paramInt2, -2147483648, 2147483647, -2147483648, 2147483647);
    return new int[] { this.b.getFinalX(), this.b.getFinalY() };
  }
  
  protected RecyclerView.y e(RecyclerView.o paramo)
  {
    return f(paramo);
  }
  
  @Deprecated
  protected h f(RecyclerView.o paramo)
  {
    if (!(paramo instanceof RecyclerView.y.b)) {
      return null;
    }
    return new b(this.a.getContext());
  }
  
  public abstract View h(RecyclerView.o paramo);
  
  public abstract int i(RecyclerView.o paramo, int paramInt1, int paramInt2);
  
  void l()
  {
    Object localObject = this.a;
    if (localObject == null) {
      return;
    }
    RecyclerView.o localo = ((RecyclerView)localObject).getLayoutManager();
    if (localo == null) {
      return;
    }
    localObject = h(localo);
    if (localObject == null) {
      return;
    }
    localObject = c(localo, (View)localObject);
    int i = localObject[0];
    if ((i != 0) || (localObject[1] != 0)) {
      this.a.smoothScrollBy(i, localObject[1]);
    }
  }
  
  class a
    extends RecyclerView.t
  {
    boolean a = false;
    
    a() {}
    
    public void onScrollStateChanged(RecyclerView paramRecyclerView, int paramInt)
    {
      super.onScrollStateChanged(paramRecyclerView, paramInt);
      if ((paramInt == 0) && (this.a))
      {
        this.a = false;
        s.this.l();
      }
    }
    
    public void onScrolled(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
    {
      if ((paramInt1 != 0) || (paramInt2 != 0)) {
        this.a = true;
      }
    }
  }
  
  class b
    extends h
  {
    b(Context paramContext)
    {
      super();
    }
    
    protected float calculateSpeedPerPixel(DisplayMetrics paramDisplayMetrics)
    {
      return 100.0F / paramDisplayMetrics.densityDpi;
    }
    
    protected void onTargetFound(View paramView, RecyclerView.z paramz, RecyclerView.y.a parama)
    {
      paramz = s.this;
      RecyclerView localRecyclerView = paramz.a;
      if (localRecyclerView == null) {
        return;
      }
      paramView = paramz.c(localRecyclerView.getLayoutManager(), paramView);
      int i = paramView[0];
      int j = paramView[1];
      int k = calculateTimeForDeceleration(Math.max(Math.abs(i), Math.abs(j)));
      if (k > 0) {
        parama.d(i, j, k, this.mDecelerateInterpolator);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.recyclerview.widget.s
 * JD-Core Version:    0.7.0.1
 */
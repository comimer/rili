package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;

public class l
  extends s
{
  private k d;
  private k e;
  
  private int m(RecyclerView.o paramo, View paramView, k paramk)
  {
    return paramk.g(paramView) + paramk.e(paramView) / 2 - (paramk.m() + paramk.n() / 2);
  }
  
  private View n(RecyclerView.o paramo, k paramk)
  {
    int i = paramo.getChildCount();
    Object localObject = null;
    if (i == 0) {
      return null;
    }
    int j = paramk.m();
    int k = paramk.n() / 2;
    int m = 2147483647;
    int n = 0;
    while (n < i)
    {
      View localView = paramo.getChildAt(n);
      int i1 = Math.abs(paramk.g(localView) + paramk.e(localView) / 2 - (j + k));
      int i2 = m;
      if (i1 < m)
      {
        localObject = localView;
        i2 = i1;
      }
      n++;
      m = i2;
    }
    return localObject;
  }
  
  private k o(RecyclerView.o paramo)
  {
    k localk = this.e;
    if ((localk == null) || (localk.a != paramo)) {
      this.e = k.a(paramo);
    }
    return this.e;
  }
  
  private k p(RecyclerView.o paramo)
  {
    if (paramo.canScrollVertically()) {
      return q(paramo);
    }
    if (paramo.canScrollHorizontally()) {
      return o(paramo);
    }
    return null;
  }
  
  private k q(RecyclerView.o paramo)
  {
    k localk = this.d;
    if ((localk == null) || (localk.a != paramo)) {
      this.d = k.c(paramo);
    }
    return this.d;
  }
  
  private boolean r(RecyclerView.o paramo, int paramInt1, int paramInt2)
  {
    boolean bool1 = paramo.canScrollHorizontally();
    boolean bool2 = true;
    boolean bool3 = true;
    if (bool1)
    {
      if (paramInt1 <= 0) {
        bool3 = false;
      }
      return bool3;
    }
    if (paramInt2 > 0) {
      bool3 = bool2;
    } else {
      bool3 = false;
    }
    return bool3;
  }
  
  private boolean s(RecyclerView.o paramo)
  {
    int i = paramo.getItemCount();
    boolean bool1 = paramo instanceof RecyclerView.y.b;
    boolean bool2 = false;
    boolean bool3 = bool2;
    if (bool1)
    {
      paramo = ((RecyclerView.y.b)paramo).computeScrollVectorForPosition(i - 1);
      bool3 = bool2;
      if (paramo != null) {
        if (paramo.x >= 0.0F)
        {
          bool3 = bool2;
          if (paramo.y >= 0.0F) {}
        }
        else
        {
          bool3 = true;
        }
      }
    }
    return bool3;
  }
  
  public int[] c(RecyclerView.o paramo, View paramView)
  {
    int[] arrayOfInt = new int[2];
    if (paramo.canScrollHorizontally()) {
      arrayOfInt[0] = m(paramo, paramView, o(paramo));
    } else {
      arrayOfInt[0] = 0;
    }
    if (paramo.canScrollVertically()) {
      arrayOfInt[1] = m(paramo, paramView, q(paramo));
    } else {
      arrayOfInt[1] = 0;
    }
    return arrayOfInt;
  }
  
  protected h f(RecyclerView.o paramo)
  {
    if (!(paramo instanceof RecyclerView.y.b)) {
      return null;
    }
    return new a(this.a.getContext());
  }
  
  public View h(RecyclerView.o paramo)
  {
    if (paramo.canScrollVertically()) {
      return n(paramo, q(paramo));
    }
    if (paramo.canScrollHorizontally()) {
      return n(paramo, o(paramo));
    }
    return null;
  }
  
  public int i(RecyclerView.o paramo, int paramInt1, int paramInt2)
  {
    int i = paramo.getItemCount();
    if (i == 0) {
      return -1;
    }
    k localk = p(paramo);
    if (localk == null) {
      return -1;
    }
    int j = -2147483648;
    int k = 2147483647;
    int m = paramo.getChildCount();
    int n = 0;
    Object localObject1 = null;
    Object localObject2 = null;
    while (n < m)
    {
      View localView = paramo.getChildAt(n);
      int i1;
      Object localObject3;
      if (localView == null)
      {
        i1 = k;
        localObject3 = localObject1;
      }
      else
      {
        int i2 = m(paramo, localView, localk);
        int i3 = j;
        Object localObject4 = localObject2;
        if (i2 <= 0)
        {
          i3 = j;
          localObject4 = localObject2;
          if (i2 > j)
          {
            localObject4 = localView;
            i3 = i2;
          }
        }
        j = i3;
        i1 = k;
        localObject3 = localObject1;
        localObject2 = localObject4;
        if (i2 >= 0)
        {
          j = i3;
          i1 = k;
          localObject3 = localObject1;
          localObject2 = localObject4;
          if (i2 < k)
          {
            i1 = i2;
            localObject2 = localObject4;
            localObject3 = localView;
            j = i3;
          }
        }
      }
      n++;
      k = i1;
      localObject1 = localObject3;
    }
    boolean bool = r(paramo, paramInt1, paramInt2);
    if ((bool) && (localObject1 != null)) {
      return paramo.getPosition(localObject1);
    }
    if ((!bool) && (localObject2 != null)) {
      return paramo.getPosition(localObject2);
    }
    if (bool) {
      localObject1 = localObject2;
    }
    if (localObject1 == null) {
      return -1;
    }
    paramInt2 = paramo.getPosition(localObject1);
    if (s(paramo) == bool) {
      paramInt1 = -1;
    } else {
      paramInt1 = 1;
    }
    paramInt1 = paramInt2 + paramInt1;
    if ((paramInt1 >= 0) && (paramInt1 < i)) {
      return paramInt1;
    }
    return -1;
  }
  
  class a
    extends h
  {
    a(Context paramContext)
    {
      super();
    }
    
    protected float calculateSpeedPerPixel(DisplayMetrics paramDisplayMetrics)
    {
      return 100.0F / paramDisplayMetrics.densityDpi;
    }
    
    protected int calculateTimeForScrolling(int paramInt)
    {
      return Math.min(100, super.calculateTimeForScrolling(paramInt));
    }
    
    protected void onTargetFound(View paramView, RecyclerView.z paramz, RecyclerView.y.a parama)
    {
      paramz = l.this;
      paramView = paramz.c(paramz.a.getLayoutManager(), paramView);
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
 * Qualified Name:     androidx.recyclerview.widget.l
 * JD-Core Version:    0.7.0.1
 */
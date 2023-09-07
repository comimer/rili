package androidx.recyclerview.widget;

import android.graphics.PointF;
import android.view.View;

public class i
  extends s
{
  private k d;
  private k e;
  
  private float m(RecyclerView.o paramo, k paramk)
  {
    int i = paramo.getChildCount();
    if (i == 0) {
      return 1.0F;
    }
    int j = 0;
    Object localObject1 = null;
    int k = -2147483648;
    int m = 2147483647;
    Object localObject2 = null;
    int i2;
    while (j < i)
    {
      View localView = paramo.getChildAt(j);
      int n = paramo.getPosition(localView);
      Object localObject3;
      int i1;
      if (n == -1)
      {
        localObject3 = localObject1;
        i1 = k;
      }
      else
      {
        i2 = m;
        if (n < m)
        {
          localObject1 = localView;
          i2 = n;
        }
        localObject3 = localObject1;
        m = i2;
        i1 = k;
        if (n > k)
        {
          i1 = n;
          m = i2;
          localObject2 = localView;
          localObject3 = localObject1;
        }
      }
      j++;
      localObject1 = localObject3;
      k = i1;
    }
    if ((localObject1 != null) && (localObject2 != null))
    {
      i2 = Math.min(paramk.g(localObject1), paramk.g(localObject2));
      i2 = Math.max(paramk.d(localObject1), paramk.d(localObject2)) - i2;
      if (i2 == 0) {
        return 1.0F;
      }
      return i2 * 1.0F / (k - m + 1);
    }
    return 1.0F;
  }
  
  private int n(RecyclerView.o paramo, View paramView, k paramk)
  {
    return paramk.g(paramView) + paramk.e(paramView) / 2 - (paramk.m() + paramk.n() / 2);
  }
  
  private int o(RecyclerView.o paramo, k paramk, int paramInt1, int paramInt2)
  {
    int[] arrayOfInt = d(paramInt1, paramInt2);
    float f = m(paramo, paramk);
    if (f <= 0.0F) {
      return 0;
    }
    if (Math.abs(arrayOfInt[0]) > Math.abs(arrayOfInt[1])) {
      paramInt1 = arrayOfInt[0];
    } else {
      paramInt1 = arrayOfInt[1];
    }
    return Math.round(paramInt1 / f);
  }
  
  private View p(RecyclerView.o paramo, k paramk)
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
  
  private k q(RecyclerView.o paramo)
  {
    k localk = this.e;
    if ((localk == null) || (localk.a != paramo)) {
      this.e = k.a(paramo);
    }
    return this.e;
  }
  
  private k r(RecyclerView.o paramo)
  {
    k localk = this.d;
    if ((localk == null) || (localk.a != paramo)) {
      this.d = k.c(paramo);
    }
    return this.d;
  }
  
  public int[] c(RecyclerView.o paramo, View paramView)
  {
    int[] arrayOfInt = new int[2];
    if (paramo.canScrollHorizontally()) {
      arrayOfInt[0] = n(paramo, paramView, q(paramo));
    } else {
      arrayOfInt[0] = 0;
    }
    if (paramo.canScrollVertically()) {
      arrayOfInt[1] = n(paramo, paramView, r(paramo));
    } else {
      arrayOfInt[1] = 0;
    }
    return arrayOfInt;
  }
  
  public View h(RecyclerView.o paramo)
  {
    if (paramo.canScrollVertically()) {
      return p(paramo, r(paramo));
    }
    if (paramo.canScrollHorizontally()) {
      return p(paramo, q(paramo));
    }
    return null;
  }
  
  public int i(RecyclerView.o paramo, int paramInt1, int paramInt2)
  {
    if (!(paramo instanceof RecyclerView.y.b)) {
      return -1;
    }
    int i = paramo.getItemCount();
    if (i == 0) {
      return -1;
    }
    Object localObject = h(paramo);
    if (localObject == null) {
      return -1;
    }
    int j = paramo.getPosition((View)localObject);
    if (j == -1) {
      return -1;
    }
    localObject = (RecyclerView.y.b)paramo;
    int k = i - 1;
    localObject = ((RecyclerView.y.b)localObject).computeScrollVectorForPosition(k);
    if (localObject == null) {
      return -1;
    }
    boolean bool = paramo.canScrollHorizontally();
    int m = 0;
    int n;
    if (bool)
    {
      n = o(paramo, q(paramo), paramInt1, 0);
      paramInt1 = n;
      if (((PointF)localObject).x < 0.0F) {
        paramInt1 = -n;
      }
    }
    else
    {
      paramInt1 = 0;
    }
    if (paramo.canScrollVertically())
    {
      n = o(paramo, r(paramo), 0, paramInt2);
      paramInt2 = n;
      if (((PointF)localObject).y < 0.0F) {
        paramInt2 = -n;
      }
    }
    else
    {
      paramInt2 = 0;
    }
    if (paramo.canScrollVertically()) {
      paramInt1 = paramInt2;
    }
    if (paramInt1 == 0) {
      return -1;
    }
    paramInt1 = j + paramInt1;
    if (paramInt1 < 0) {
      paramInt1 = m;
    }
    if (paramInt1 >= i) {
      paramInt1 = k;
    }
    return paramInt1;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.recyclerview.widget.i
 * JD-Core Version:    0.7.0.1
 */
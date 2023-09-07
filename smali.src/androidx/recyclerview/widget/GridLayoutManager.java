package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import androidx.core.view.accessibility.g;
import androidx.core.view.accessibility.g.c;
import java.util.Arrays;

public class GridLayoutManager
  extends LinearLayoutManager
{
  boolean a = false;
  int b = -1;
  int[] c;
  View[] d;
  final SparseIntArray e = new SparseIntArray();
  final SparseIntArray f = new SparseIntArray();
  c g = new a();
  final Rect h = new Rect();
  private boolean i;
  
  public GridLayoutManager(Context paramContext, int paramInt)
  {
    super(paramContext);
    r(paramInt);
  }
  
  public GridLayoutManager(Context paramContext, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    super(paramContext, paramInt2, paramBoolean);
    r(paramInt1);
  }
  
  public GridLayoutManager(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    r(RecyclerView.o.getProperties(paramContext, paramAttributeSet, paramInt1, paramInt2).b);
  }
  
  private void a(RecyclerView.v paramv, RecyclerView.z paramz, int paramInt, boolean paramBoolean)
  {
    int j = 0;
    int k = -1;
    int m;
    int n;
    if (paramBoolean)
    {
      m = 1;
      n = 0;
      k = paramInt;
      paramInt = n;
    }
    else
    {
      paramInt--;
      m = -1;
    }
    while (paramInt != k)
    {
      View localView = this.d[paramInt];
      b localb = (b)localView.getLayoutParams();
      n = n(paramv, paramz, getPosition(localView));
      localb.b = n;
      localb.a = j;
      j += n;
      paramInt += m;
    }
  }
  
  private void b()
  {
    int j = getChildCount();
    for (int k = 0; k < j; k++)
    {
      b localb = (b)getChildAt(k).getLayoutParams();
      int m = localb.getViewLayoutPosition();
      this.e.put(m, localb.b());
      this.f.put(m, localb.a());
    }
  }
  
  private void c(int paramInt)
  {
    this.c = d(this.c, this.b, paramInt);
  }
  
  static int[] d(int[] paramArrayOfInt, int paramInt1, int paramInt2)
  {
    int j = 1;
    int[] arrayOfInt;
    if ((paramArrayOfInt != null) && (paramArrayOfInt.length == paramInt1 + 1))
    {
      arrayOfInt = paramArrayOfInt;
      if (paramArrayOfInt[(paramArrayOfInt.length - 1)] == paramInt2) {}
    }
    else
    {
      arrayOfInt = new int[paramInt1 + 1];
    }
    int k = 0;
    arrayOfInt[0] = 0;
    int m = paramInt2 / paramInt1;
    int n = paramInt2 % paramInt1;
    int i1 = 0;
    paramInt2 = k;
    while (j <= paramInt1)
    {
      paramInt2 += n;
      if ((paramInt2 > 0) && (paramInt1 - paramInt2 < n))
      {
        k = m + 1;
        paramInt2 -= paramInt1;
      }
      else
      {
        k = m;
      }
      i1 += k;
      arrayOfInt[j] = i1;
      j++;
    }
    return arrayOfInt;
  }
  
  private void e()
  {
    this.e.clear();
    this.f.clear();
  }
  
  private int f(RecyclerView.z paramz)
  {
    if ((getChildCount() != 0) && (paramz.b() != 0))
    {
      ensureLayoutState();
      boolean bool = isSmoothScrollbarEnabled();
      View localView1 = findFirstVisibleChildClosestToStart(bool ^ true, true);
      View localView2 = findFirstVisibleChildClosestToEnd(bool ^ true, true);
      if ((localView1 != null) && (localView2 != null))
      {
        int j = this.g.b(getPosition(localView1), this.b);
        int k = this.g.b(getPosition(localView2), this.b);
        int m = Math.min(j, k);
        j = Math.max(j, k);
        k = this.g.b(paramz.b() - 1, this.b);
        if (this.mShouldReverseLayout) {
          m = Math.max(0, k + 1 - j - 1);
        } else {
          m = Math.max(0, m);
        }
        if (!bool) {
          return m;
        }
        j = Math.abs(this.mOrientationHelper.d(localView2) - this.mOrientationHelper.g(localView1));
        int n = this.g.b(getPosition(localView1), this.b);
        k = this.g.b(getPosition(localView2), this.b);
        float f1 = j / (k - n + 1);
        return Math.round(m * f1 + (this.mOrientationHelper.m() - this.mOrientationHelper.g(localView1)));
      }
    }
    return 0;
  }
  
  private int g(RecyclerView.z paramz)
  {
    if ((getChildCount() != 0) && (paramz.b() != 0))
    {
      ensureLayoutState();
      View localView1 = findFirstVisibleChildClosestToStart(isSmoothScrollbarEnabled() ^ true, true);
      View localView2 = findFirstVisibleChildClosestToEnd(isSmoothScrollbarEnabled() ^ true, true);
      if ((localView1 != null) && (localView2 != null))
      {
        if (!isSmoothScrollbarEnabled()) {
          return this.g.b(paramz.b() - 1, this.b) + 1;
        }
        int j = this.mOrientationHelper.d(localView2);
        int k = this.mOrientationHelper.g(localView1);
        int m = this.g.b(getPosition(localView1), this.b);
        int n = this.g.b(getPosition(localView2), this.b);
        int i1 = this.g.b(paramz.b() - 1, this.b);
        return (int)((j - k) / (n - m + 1) * (i1 + 1));
      }
    }
    return 0;
  }
  
  private void h(RecyclerView.v paramv, RecyclerView.z paramz, LinearLayoutManager.a parama, int paramInt)
  {
    if (paramInt == 1) {
      j = 1;
    } else {
      j = 0;
    }
    paramInt = m(paramv, paramz, parama.b);
    if (j != 0) {
      while (paramInt > 0)
      {
        paramInt = parama.b;
        if (paramInt <= 0) {
          break;
        }
        paramInt--;
        parama.b = paramInt;
        paramInt = m(paramv, paramz, paramInt);
      }
    }
    int k = paramz.b();
    int j = parama.b;
    while (j < k - 1)
    {
      int m = j + 1;
      int n = m(paramv, paramz, m);
      if (n <= paramInt) {
        break;
      }
      j = m;
      paramInt = n;
    }
    parama.b = j;
  }
  
  private void i()
  {
    View[] arrayOfView = this.d;
    if ((arrayOfView == null) || (arrayOfView.length != this.b)) {
      this.d = new View[this.b];
    }
  }
  
  private int l(RecyclerView.v paramv, RecyclerView.z paramz, int paramInt)
  {
    if (!paramz.e()) {
      return this.g.b(paramInt, this.b);
    }
    int j = paramv.f(paramInt);
    if (j == -1)
    {
      paramv = new StringBuilder();
      paramv.append("Cannot find span size for pre layout position. ");
      paramv.append(paramInt);
      Log.w("GridLayoutManager", paramv.toString());
      return 0;
    }
    return this.g.b(j, this.b);
  }
  
  private int m(RecyclerView.v paramv, RecyclerView.z paramz, int paramInt)
  {
    if (!paramz.e()) {
      return this.g.c(paramInt, this.b);
    }
    int j = this.f.get(paramInt, -1);
    if (j != -1) {
      return j;
    }
    j = paramv.f(paramInt);
    if (j == -1)
    {
      paramv = new StringBuilder();
      paramv.append("Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:");
      paramv.append(paramInt);
      Log.w("GridLayoutManager", paramv.toString());
      return 0;
    }
    return this.g.c(j, this.b);
  }
  
  private int n(RecyclerView.v paramv, RecyclerView.z paramz, int paramInt)
  {
    if (!paramz.e()) {
      return this.g.f(paramInt);
    }
    int j = this.e.get(paramInt, -1);
    if (j != -1) {
      return j;
    }
    j = paramv.f(paramInt);
    if (j == -1)
    {
      paramv = new StringBuilder();
      paramv.append("Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:");
      paramv.append(paramInt);
      Log.w("GridLayoutManager", paramv.toString());
      return 1;
    }
    return this.g.f(j);
  }
  
  private void o(float paramFloat, int paramInt)
  {
    c(Math.max(Math.round(paramFloat * this.b), paramInt));
  }
  
  private void p(View paramView, int paramInt, boolean paramBoolean)
  {
    b localb = (b)paramView.getLayoutParams();
    Rect localRect = localb.mDecorInsets;
    int j = localRect.top + localRect.bottom + localb.topMargin + localb.bottomMargin;
    int k = localRect.left + localRect.right + localb.leftMargin + localb.rightMargin;
    int m = j(localb.a, localb.b);
    if (this.mOrientation == 1)
    {
      k = RecyclerView.o.getChildMeasureSpec(m, paramInt, k, localb.width, false);
      paramInt = RecyclerView.o.getChildMeasureSpec(this.mOrientationHelper.n(), getHeightMode(), j, localb.height, true);
    }
    else
    {
      paramInt = RecyclerView.o.getChildMeasureSpec(m, paramInt, j, localb.height, false);
      k = RecyclerView.o.getChildMeasureSpec(this.mOrientationHelper.n(), getWidthMode(), k, localb.width, true);
    }
    q(paramView, k, paramInt, paramBoolean);
  }
  
  private void q(View paramView, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    RecyclerView.p localp = (RecyclerView.p)paramView.getLayoutParams();
    if (paramBoolean) {
      paramBoolean = shouldReMeasureChild(paramView, paramInt1, paramInt2, localp);
    } else {
      paramBoolean = shouldMeasureChild(paramView, paramInt1, paramInt2, localp);
    }
    if (paramBoolean) {
      paramView.measure(paramInt1, paramInt2);
    }
  }
  
  private void s()
  {
    int j;
    int k;
    if (getOrientation() == 1)
    {
      j = getWidth() - getPaddingRight();
      k = getPaddingLeft();
    }
    else
    {
      j = getHeight() - getPaddingBottom();
      k = getPaddingTop();
    }
    c(j - k);
  }
  
  public boolean checkLayoutParams(RecyclerView.p paramp)
  {
    return paramp instanceof b;
  }
  
  void collectPrefetchPositionsForLayoutState(RecyclerView.z paramz, LinearLayoutManager.c paramc, RecyclerView.o.c paramc1)
  {
    int j = this.b;
    for (int k = 0; (k < this.b) && (paramc.c(paramz)) && (j > 0); k++)
    {
      int m = paramc.d;
      paramc1.a(m, Math.max(0, paramc.g));
      j -= this.g.f(m);
      paramc.d += paramc.e;
    }
  }
  
  public int computeHorizontalScrollOffset(RecyclerView.z paramz)
  {
    if (this.i) {
      return f(paramz);
    }
    return super.computeHorizontalScrollOffset(paramz);
  }
  
  public int computeHorizontalScrollRange(RecyclerView.z paramz)
  {
    if (this.i) {
      return g(paramz);
    }
    return super.computeHorizontalScrollRange(paramz);
  }
  
  public int computeVerticalScrollOffset(RecyclerView.z paramz)
  {
    if (this.i) {
      return f(paramz);
    }
    return super.computeVerticalScrollOffset(paramz);
  }
  
  public int computeVerticalScrollRange(RecyclerView.z paramz)
  {
    if (this.i) {
      return g(paramz);
    }
    return super.computeVerticalScrollRange(paramz);
  }
  
  View findReferenceChild(RecyclerView.v paramv, RecyclerView.z paramz, int paramInt1, int paramInt2, int paramInt3)
  {
    ensureLayoutState();
    int j = this.mOrientationHelper.m();
    int k = this.mOrientationHelper.i();
    int m;
    if (paramInt2 > paramInt1) {
      m = 1;
    } else {
      m = -1;
    }
    Object localObject1 = null;
    Object localObject4;
    for (Object localObject2 = null; paramInt1 != paramInt2; localObject2 = localObject4)
    {
      View localView = getChildAt(paramInt1);
      int n = getPosition(localView);
      Object localObject3 = localObject1;
      localObject4 = localObject2;
      if (n >= 0)
      {
        localObject3 = localObject1;
        localObject4 = localObject2;
        if (n < paramInt3) {
          if (m(paramv, paramz, n) != 0)
          {
            localObject3 = localObject1;
            localObject4 = localObject2;
          }
          else if (((RecyclerView.p)localView.getLayoutParams()).isItemRemoved())
          {
            localObject3 = localObject1;
            localObject4 = localObject2;
            if (localObject2 == null)
            {
              localObject4 = localView;
              localObject3 = localObject1;
            }
          }
          else
          {
            if ((this.mOrientationHelper.g(localView) < k) && (this.mOrientationHelper.d(localView) >= j)) {
              return localView;
            }
            localObject3 = localObject1;
            localObject4 = localObject2;
            if (localObject1 == null)
            {
              localObject3 = localView;
              localObject4 = localObject2;
            }
          }
        }
      }
      paramInt1 += m;
      localObject1 = localObject3;
    }
    if (localObject1 != null) {
      localObject2 = localObject1;
    }
    return localObject2;
  }
  
  public RecyclerView.p generateDefaultLayoutParams()
  {
    if (this.mOrientation == 0) {
      return new b(-2, -1);
    }
    return new b(-1, -2);
  }
  
  public RecyclerView.p generateLayoutParams(Context paramContext, AttributeSet paramAttributeSet)
  {
    return new b(paramContext, paramAttributeSet);
  }
  
  public RecyclerView.p generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new b((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new b(paramLayoutParams);
  }
  
  public int getColumnCountForAccessibility(RecyclerView.v paramv, RecyclerView.z paramz)
  {
    if (this.mOrientation == 1) {
      return this.b;
    }
    if (paramz.b() < 1) {
      return 0;
    }
    return l(paramv, paramz, paramz.b() - 1) + 1;
  }
  
  public int getRowCountForAccessibility(RecyclerView.v paramv, RecyclerView.z paramz)
  {
    if (this.mOrientation == 0) {
      return this.b;
    }
    if (paramz.b() < 1) {
      return 0;
    }
    return l(paramv, paramz, paramz.b() - 1) + 1;
  }
  
  int j(int paramInt1, int paramInt2)
  {
    if ((this.mOrientation == 1) && (isLayoutRTL()))
    {
      arrayOfInt = this.c;
      int j = this.b;
      return arrayOfInt[(j - paramInt1)] - arrayOfInt[(j - paramInt1 - paramInt2)];
    }
    int[] arrayOfInt = this.c;
    return arrayOfInt[(paramInt2 + paramInt1)] - arrayOfInt[paramInt1];
  }
  
  public int k()
  {
    return this.b;
  }
  
  void layoutChunk(RecyclerView.v paramv, RecyclerView.z paramz, LinearLayoutManager.c paramc, LinearLayoutManager.b paramb)
  {
    int j = this.mOrientationHelper.l();
    int k;
    if (j != 1073741824) {
      k = 1;
    } else {
      k = 0;
    }
    int m;
    if (getChildCount() > 0) {
      m = this.c[this.b];
    } else {
      m = 0;
    }
    if (k != 0) {
      s();
    }
    boolean bool;
    if (paramc.e == 1) {
      bool = true;
    } else {
      bool = false;
    }
    int n = this.b;
    if (!bool) {
      n = m(paramv, paramz, paramc.d) + n(paramv, paramz, paramc.d);
    }
    int i1 = 0;
    Object localObject;
    while ((i1 < this.b) && (paramc.c(paramz)) && (n > 0))
    {
      i2 = paramc.d;
      i3 = n(paramv, paramz, i2);
      if (i3 <= this.b)
      {
        n -= i3;
        if (n >= 0)
        {
          localObject = paramc.d(paramv);
          if (localObject != null)
          {
            this.d[i1] = localObject;
            i1++;
          }
        }
      }
      else
      {
        paramv = new StringBuilder();
        paramv.append("Item at position ");
        paramv.append(i2);
        paramv.append(" requires ");
        paramv.append(i3);
        paramv.append(" spans but GridLayoutManager has only ");
        paramv.append(this.b);
        paramv.append(" spans.");
        throw new IllegalArgumentException(paramv.toString());
      }
    }
    if (i1 == 0)
    {
      paramb.b = true;
      return;
    }
    float f1 = 0.0F;
    a(paramv, paramz, i1, bool);
    int i3 = 0;
    n = i3;
    while (i3 < i1)
    {
      paramz = this.d[i3];
      if (paramc.l == null)
      {
        if (bool) {
          addView(paramz);
        } else {
          addView(paramz, 0);
        }
      }
      else if (bool) {
        addDisappearingView(paramz);
      } else {
        addDisappearingView(paramz, 0);
      }
      calculateItemDecorationsForChild(paramz, this.h);
      p(paramz, j, false);
      i4 = this.mOrientationHelper.e(paramz);
      i2 = n;
      if (i4 > n) {
        i2 = i4;
      }
      paramv = (b)paramz.getLayoutParams();
      float f2 = this.mOrientationHelper.f(paramz) * 1.0F / paramv.b;
      float f3 = f1;
      if (f2 > f1) {
        f3 = f2;
      }
      i3++;
      n = i2;
      f1 = f3;
    }
    int i2 = n;
    if (k != 0)
    {
      o(f1, m);
      k = 0;
      for (n = 0;; n = i2)
      {
        i2 = n;
        if (k >= i1) {
          break;
        }
        paramv = this.d[k];
        p(paramv, 1073741824, true);
        m = this.mOrientationHelper.e(paramv);
        i2 = n;
        if (m > n) {
          i2 = m;
        }
        k++;
      }
    }
    for (n = 0; n < i1; n++)
    {
      paramz = this.d[n];
      if (this.mOrientationHelper.e(paramz) != i2)
      {
        paramv = (b)paramz.getLayoutParams();
        localObject = paramv.mDecorInsets;
        m = ((Rect)localObject).top + ((Rect)localObject).bottom + paramv.topMargin + paramv.bottomMargin;
        k = ((Rect)localObject).left + ((Rect)localObject).right + paramv.leftMargin + paramv.rightMargin;
        i3 = j(paramv.a, paramv.b);
        if (this.mOrientation == 1)
        {
          k = RecyclerView.o.getChildMeasureSpec(i3, 1073741824, k, paramv.width, false);
          m = View.MeasureSpec.makeMeasureSpec(i2 - m, 1073741824);
        }
        else
        {
          k = View.MeasureSpec.makeMeasureSpec(i2 - k, 1073741824);
          m = RecyclerView.o.getChildMeasureSpec(i3, 1073741824, m, paramv.height, false);
        }
        q(paramz, k, m, true);
      }
    }
    int i4 = 0;
    paramb.a = i2;
    if (this.mOrientation == 1)
    {
      if (paramc.f == -1)
      {
        n = paramc.b;
        i2 = n - i2;
      }
      else
      {
        k = paramc.b;
        n = k;
        k = i2 + k;
        i2 = n;
        n = k;
      }
      m = 0;
      k = m;
    }
    else if (paramc.f == -1)
    {
      m = paramc.b;
      k = m - i2;
      i2 = 0;
      n = i2;
    }
    else
    {
      k = paramc.b;
      m = i2 + k;
      n = 0;
      i2 = n;
    }
    while (i4 < i1)
    {
      paramz = this.d[i4];
      paramv = (b)paramz.getLayoutParams();
      if (this.mOrientation == 1)
      {
        if (isLayoutRTL())
        {
          m = getPaddingLeft() + this.c[(this.b - paramv.a)];
          k = m - this.mOrientationHelper.f(paramz);
          i3 = i2;
          i2 = n;
        }
        else
        {
          i3 = getPaddingLeft() + this.c[paramv.a];
          j = this.mOrientationHelper.f(paramz);
          m = n;
          n = i3;
          k = i2;
          i3 = j + i3;
          i2 = m;
          m = i3;
          break label1067;
        }
      }
      else
      {
        n = getPaddingTop() + this.c[paramv.a];
        i2 = this.mOrientationHelper.f(paramz);
        i3 = n;
        i2 += n;
      }
      n = k;
      k = i3;
      label1067:
      layoutDecoratedWithMargins(paramz, n, k, m, i2);
      if ((paramv.isItemRemoved()) || (paramv.isItemChanged())) {
        paramb.c = true;
      }
      paramb.d |= paramz.hasFocusable();
      i4++;
      i3 = i2;
      i2 = k;
      k = n;
      n = i3;
    }
    Arrays.fill(this.d, null);
  }
  
  void onAnchorReady(RecyclerView.v paramv, RecyclerView.z paramz, LinearLayoutManager.a parama, int paramInt)
  {
    super.onAnchorReady(paramv, paramz, parama, paramInt);
    s();
    if ((paramz.b() > 0) && (!paramz.e())) {
      h(paramv, paramz, parama, paramInt);
    }
    i();
  }
  
  public View onFocusSearchFailed(View paramView, int paramInt, RecyclerView.v paramv, RecyclerView.z paramz)
  {
    View localView = findContainingItemView(paramView);
    Object localObject1 = null;
    if (localView == null) {
      return null;
    }
    Object localObject2 = (b)localView.getLayoutParams();
    int j = ((b)localObject2).a;
    int k = ((b)localObject2).b + j;
    if (super.onFocusSearchFailed(paramView, paramInt, paramv, paramz) == null) {
      return null;
    }
    int m;
    if (convertFocusDirectionToLayoutDirection(paramInt) == 1) {
      m = 1;
    } else {
      m = 0;
    }
    if (m != this.mShouldReverseLayout) {
      paramInt = 1;
    } else {
      paramInt = 0;
    }
    int i1;
    if (paramInt != 0)
    {
      paramInt = getChildCount() - 1;
      n = -1;
      i1 = n;
    }
    else
    {
      n = getChildCount();
      i1 = 1;
      paramInt = 0;
    }
    int i2;
    if ((this.mOrientation == 1) && (isLayoutRTL())) {
      i2 = 1;
    } else {
      i2 = 0;
    }
    int i3 = l(paramv, paramz, paramInt);
    int i4 = -1;
    int i5 = i4;
    int i6 = 0;
    int i7 = 0;
    int i8 = paramInt;
    paramView = null;
    paramInt = i7;
    i7 = n;
    int n = i6;
    while (i8 != i7)
    {
      i6 = l(paramv, paramz, i8);
      localObject2 = getChildAt(i8);
      if (localObject2 == localView) {
        break;
      }
      if ((((View)localObject2).hasFocusable()) && (i6 != i3))
      {
        if (localObject1 != null) {
          break;
        }
      }
      else
      {
        b localb = (b)((View)localObject2).getLayoutParams();
        int i9 = localb.a;
        int i10 = localb.b + i9;
        if ((((View)localObject2).hasFocusable()) && (i9 == j) && (i10 == k)) {
          return localObject2;
        }
        if (((((View)localObject2).hasFocusable()) && (localObject1 == null)) || ((!((View)localObject2).hasFocusable()) && (paramView == null))) {}
        for (;;)
        {
          i6 = 1;
          break label479;
          i6 = Math.max(i9, j);
          int i11 = Math.min(i10, k) - i6;
          if (((View)localObject2).hasFocusable())
          {
            if (i11 <= n) {
              while (i11 == n)
              {
                if (i9 > i4) {
                  i6 = 1;
                } else {
                  i6 = 0;
                }
                if (i2 != i6) {
                  break;
                }
              }
            }
          }
          else
          {
            if (localObject1 != null) {
              break;
            }
            int i12 = 1;
            i6 = 1;
            if (!isViewPartiallyVisible((View)localObject2, false, true)) {
              break;
            }
            int i13 = paramInt;
            if (i11 > i13)
            {
              i6 = i12;
              break label479;
            }
            if (i11 != i13) {
              break;
            }
            if (i9 <= i5) {
              i6 = 0;
            }
            if (i2 != i6) {
              break;
            }
          }
        }
        i6 = 0;
        label479:
        if (i6 != 0) {
          if (((View)localObject2).hasFocusable())
          {
            i4 = localb.a;
            n = Math.min(i10, k);
            i6 = Math.max(i9, j);
            localObject1 = localObject2;
            n -= i6;
          }
          else
          {
            i5 = localb.a;
            paramInt = Math.min(i10, k) - Math.max(i9, j);
            paramView = (View)localObject2;
          }
        }
      }
      i8 += i1;
    }
    if (localObject1 == null) {
      localObject1 = paramView;
    }
    return localObject1;
  }
  
  public void onInitializeAccessibilityNodeInfoForItem(RecyclerView.v paramv, RecyclerView.z paramz, View paramView, g paramg)
  {
    ViewGroup.LayoutParams localLayoutParams = paramView.getLayoutParams();
    if (!(localLayoutParams instanceof b))
    {
      super.onInitializeAccessibilityNodeInfoForItem(paramView, paramg);
      return;
    }
    paramView = (b)localLayoutParams;
    int j = l(paramv, paramz, paramView.getViewLayoutPosition());
    if (this.mOrientation == 0) {
      paramg.U(g.c.f(paramView.a(), paramView.b(), j, 1, false, false));
    } else {
      paramg.U(g.c.f(j, 1, paramView.a(), paramView.b(), false, false));
    }
  }
  
  public void onItemsAdded(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
  {
    this.g.h();
    this.g.g();
  }
  
  public void onItemsChanged(RecyclerView paramRecyclerView)
  {
    this.g.h();
    this.g.g();
  }
  
  public void onItemsMoved(RecyclerView paramRecyclerView, int paramInt1, int paramInt2, int paramInt3)
  {
    this.g.h();
    this.g.g();
  }
  
  public void onItemsRemoved(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
  {
    this.g.h();
    this.g.g();
  }
  
  public void onItemsUpdated(RecyclerView paramRecyclerView, int paramInt1, int paramInt2, Object paramObject)
  {
    this.g.h();
    this.g.g();
  }
  
  public void onLayoutChildren(RecyclerView.v paramv, RecyclerView.z paramz)
  {
    if (paramz.e()) {
      b();
    }
    super.onLayoutChildren(paramv, paramz);
    e();
  }
  
  public void onLayoutCompleted(RecyclerView.z paramz)
  {
    super.onLayoutCompleted(paramz);
    this.a = false;
  }
  
  public void r(int paramInt)
  {
    if (paramInt == this.b) {
      return;
    }
    this.a = true;
    if (paramInt >= 1)
    {
      this.b = paramInt;
      this.g.h();
      requestLayout();
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Span count should be at least 1. Provided ");
    localStringBuilder.append(paramInt);
    throw new IllegalArgumentException(localStringBuilder.toString());
  }
  
  public int scrollHorizontallyBy(int paramInt, RecyclerView.v paramv, RecyclerView.z paramz)
  {
    s();
    i();
    return super.scrollHorizontallyBy(paramInt, paramv, paramz);
  }
  
  public int scrollVerticallyBy(int paramInt, RecyclerView.v paramv, RecyclerView.z paramz)
  {
    s();
    i();
    return super.scrollVerticallyBy(paramInt, paramv, paramz);
  }
  
  public void setMeasuredDimension(Rect paramRect, int paramInt1, int paramInt2)
  {
    if (this.c == null) {
      super.setMeasuredDimension(paramRect, paramInt1, paramInt2);
    }
    int j = getPaddingLeft() + getPaddingRight();
    int k = getPaddingTop() + getPaddingBottom();
    if (this.mOrientation == 1)
    {
      paramInt2 = RecyclerView.o.chooseSize(paramInt2, paramRect.height() + k, getMinimumHeight());
      paramRect = this.c;
      paramInt1 = RecyclerView.o.chooseSize(paramInt1, paramRect[(paramRect.length - 1)] + j, getMinimumWidth());
    }
    else
    {
      paramInt1 = RecyclerView.o.chooseSize(paramInt1, paramRect.width() + j, getMinimumWidth());
      paramRect = this.c;
      paramInt2 = RecyclerView.o.chooseSize(paramInt2, paramRect[(paramRect.length - 1)] + k, getMinimumHeight());
    }
    setMeasuredDimension(paramInt1, paramInt2);
  }
  
  public void setStackFromEnd(boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      super.setStackFromEnd(false);
      return;
    }
    throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
  }
  
  public boolean supportsPredictiveItemAnimations()
  {
    boolean bool;
    if ((this.mPendingSavedState == null) && (!this.a)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static final class a
    extends GridLayoutManager.c
  {
    public int e(int paramInt1, int paramInt2)
    {
      return paramInt1 % paramInt2;
    }
    
    public int f(int paramInt)
    {
      return 1;
    }
  }
  
  public static class b
    extends RecyclerView.p
  {
    int a = -1;
    int b = 0;
    
    public b(int paramInt1, int paramInt2)
    {
      super(paramInt2);
    }
    
    public b(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
    }
    
    public b(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public b(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      super();
    }
    
    public int a()
    {
      return this.a;
    }
    
    public int b()
    {
      return this.b;
    }
  }
  
  public static abstract class c
  {
    final SparseIntArray a = new SparseIntArray();
    final SparseIntArray b = new SparseIntArray();
    private boolean c = false;
    private boolean d = false;
    
    static int a(SparseIntArray paramSparseIntArray, int paramInt)
    {
      int i = paramSparseIntArray.size() - 1;
      int j = 0;
      while (j <= i)
      {
        int k = j + i >>> 1;
        if (paramSparseIntArray.keyAt(k) < paramInt) {
          j = k + 1;
        } else {
          i = k - 1;
        }
      }
      paramInt = j - 1;
      if ((paramInt >= 0) && (paramInt < paramSparseIntArray.size())) {
        return paramSparseIntArray.keyAt(paramInt);
      }
      return -1;
    }
    
    int b(int paramInt1, int paramInt2)
    {
      if (!this.d) {
        return d(paramInt1, paramInt2);
      }
      int i = this.b.get(paramInt1, -1);
      if (i != -1) {
        return i;
      }
      paramInt2 = d(paramInt1, paramInt2);
      this.b.put(paramInt1, paramInt2);
      return paramInt2;
    }
    
    int c(int paramInt1, int paramInt2)
    {
      if (!this.c) {
        return e(paramInt1, paramInt2);
      }
      int i = this.a.get(paramInt1, -1);
      if (i != -1) {
        return i;
      }
      paramInt2 = e(paramInt1, paramInt2);
      this.a.put(paramInt1, paramInt2);
      return paramInt2;
    }
    
    public int d(int paramInt1, int paramInt2)
    {
      int m;
      if (this.d)
      {
        i = a(this.b, paramInt1);
        if (i != -1)
        {
          j = this.b.get(i);
          k = i + 1;
          m = c(i, paramInt2) + f(i);
          i = j;
          n = k;
          i1 = m;
          if (m != paramInt2) {
            break label91;
          }
          i = j + 1;
          i1 = 0;
          n = k;
          break label91;
        }
      }
      int i = 0;
      int n = i;
      int i1 = n;
      label91:
      int i2 = f(paramInt1);
      int j = i1;
      int k = n;
      i1 = i;
      while (k < paramInt1)
      {
        m = f(k);
        j += m;
        if (j == paramInt2)
        {
          n = i1 + 1;
          i = 0;
        }
        else
        {
          n = i1;
          i = j;
          if (j > paramInt2)
          {
            n = i1 + 1;
            i = m;
          }
        }
        k++;
        i1 = n;
        j = i;
      }
      paramInt1 = i1;
      if (j + i2 > paramInt2) {
        paramInt1 = i1 + 1;
      }
      return paramInt1;
    }
    
    public abstract int e(int paramInt1, int paramInt2);
    
    public abstract int f(int paramInt);
    
    public void g()
    {
      this.b.clear();
    }
    
    public void h()
    {
      this.a.clear();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.recyclerview.widget.GridLayoutManager
 * JD-Core Version:    0.7.0.1
 */
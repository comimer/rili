package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityRecord;
import androidx.core.view.accessibility.g.c;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;

public class StaggeredGridLayoutManager
  extends RecyclerView.o
  implements RecyclerView.y.b
{
  private final Runnable D = new a();
  private int a = -1;
  d[] b;
  k c;
  k d;
  private int e;
  private int f;
  private final g g;
  boolean h = false;
  boolean i = false;
  private BitSet j;
  int k = -1;
  int l = -2147483648;
  LazySpanLookup m = new LazySpanLookup();
  private int n = 2;
  private boolean o;
  private boolean p;
  private SavedState q;
  private int r;
  private final Rect v = new Rect();
  private final b w = new b();
  private boolean x = false;
  private boolean y = true;
  private int[] z;
  
  public StaggeredGridLayoutManager(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    paramContext = RecyclerView.o.getProperties(paramContext, paramAttributeSet, paramInt1, paramInt2);
    setOrientation(paramContext.a);
    O(paramContext.b);
    setReverseLayout(paramContext.c);
    this.g = new g();
    k();
  }
  
  private void A(int paramInt1, int paramInt2, int paramInt3)
  {
    int i1;
    if (this.i) {
      i1 = u();
    } else {
      i1 = t();
    }
    int i2;
    if (paramInt3 == 8)
    {
      if (paramInt1 < paramInt2)
      {
        i2 = paramInt2 + 1;
      }
      else
      {
        i2 = paramInt1 + 1;
        i3 = paramInt2;
        break label60;
      }
    }
    else {
      i2 = paramInt1 + paramInt2;
    }
    int i3 = paramInt1;
    label60:
    this.m.h(i3);
    if (paramInt3 != 1)
    {
      if (paramInt3 != 2)
      {
        if (paramInt3 == 8)
        {
          this.m.k(paramInt1, 1);
          this.m.j(paramInt2, 1);
        }
      }
      else {
        this.m.k(paramInt1, paramInt2);
      }
    }
    else {
      this.m.j(paramInt1, paramInt2);
    }
    if (i2 <= i1) {
      return;
    }
    if (this.i) {
      paramInt1 = t();
    } else {
      paramInt1 = u();
    }
    if (i3 <= paramInt1) {
      requestLayout();
    }
  }
  
  private void D(View paramView, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    calculateItemDecorationsForChild(paramView, this.v);
    c localc = (c)paramView.getLayoutParams();
    int i1 = localc.leftMargin;
    Rect localRect = this.v;
    paramInt1 = W(paramInt1, i1 + localRect.left, localc.rightMargin + localRect.right);
    i1 = localc.topMargin;
    localRect = this.v;
    paramInt2 = W(paramInt2, i1 + localRect.top, localc.bottomMargin + localRect.bottom);
    if (paramBoolean) {
      paramBoolean = shouldReMeasureChild(paramView, paramInt1, paramInt2, localc);
    } else {
      paramBoolean = shouldMeasureChild(paramView, paramInt1, paramInt2, localc);
    }
    if (paramBoolean) {
      paramView.measure(paramInt1, paramInt2);
    }
  }
  
  private void E(View paramView, c paramc, boolean paramBoolean)
  {
    if (paramc.b)
    {
      if (this.e == 1) {
        D(paramView, this.r, RecyclerView.o.getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom(), paramc.height, true), paramBoolean);
      } else {
        D(paramView, RecyclerView.o.getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight(), paramc.width, true), this.r, paramBoolean);
      }
    }
    else if (this.e == 1) {
      D(paramView, RecyclerView.o.getChildMeasureSpec(this.f, getWidthMode(), 0, paramc.width, false), RecyclerView.o.getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom(), paramc.height, true), paramBoolean);
    } else {
      D(paramView, RecyclerView.o.getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight(), paramc.width, true), RecyclerView.o.getChildMeasureSpec(this.f, getHeightMode(), 0, paramc.height, false), paramBoolean);
    }
  }
  
  private void F(RecyclerView.v paramv, RecyclerView.z paramz, boolean paramBoolean)
  {
    b localb = this.w;
    if (((this.q != null) || (this.k != -1)) && (paramz.b() == 0))
    {
      removeAndRecycleAllViews(paramv);
      localb.c();
      return;
    }
    boolean bool = localb.e;
    int i1 = 1;
    if ((bool) && (this.k == -1) && (this.q == null)) {
      i2 = 0;
    } else {
      i2 = 1;
    }
    if (i2 != 0)
    {
      localb.c();
      if (this.q != null)
      {
        b(localb);
      }
      else
      {
        resolveShouldLayoutReverse();
        localb.c = this.i;
      }
      S(paramz, localb);
      localb.e = true;
    }
    if ((this.q == null) && (this.k == -1) && ((localb.c != this.o) || (isLayoutRTL() != this.p)))
    {
      this.m.b();
      localb.d = true;
    }
    Object localObject;
    if (getChildCount() > 0)
    {
      localObject = this.q;
      if ((localObject == null) || (((SavedState)localObject).mSpanOffsetsSize < 1))
      {
        if (localb.d) {
          for (i2 = 0; i2 < this.a; i2++)
          {
            this.b[i2].e();
            int i3 = localb.b;
            if (i3 != -2147483648) {
              this.b[i2].v(i3);
            }
          }
        }
        if ((i2 == 0) && (this.w.f != null)) {
          i2 = 0;
        }
        while (i2 < this.a)
        {
          localObject = this.b[i2];
          ((d)localObject).e();
          ((d)localObject).v(this.w.f[i2]);
          i2++;
          continue;
          for (i2 = 0; i2 < this.a; i2++) {
            this.b[i2].b(this.i, localb.b);
          }
          this.w.d(this.b);
        }
      }
    }
    detachAndScrapAttachedViews(paramv);
    this.g.a = false;
    this.x = false;
    U(this.d.n());
    T(localb.a, paramz);
    if (localb.c)
    {
      N(-1);
      l(paramv, this.g, paramz);
      N(1);
      localObject = this.g;
      ((g)localObject).c = (localb.a + ((g)localObject).d);
      l(paramv, (g)localObject, paramz);
    }
    else
    {
      N(1);
      l(paramv, this.g, paramz);
      N(-1);
      localObject = this.g;
      ((g)localObject).c = (localb.a + ((g)localObject).d);
      l(paramv, (g)localObject, paramz);
    }
    M();
    if (getChildCount() > 0) {
      if (this.i)
      {
        r(paramv, paramz, true);
        s(paramv, paramz, false);
      }
      else
      {
        s(paramv, paramz, true);
        r(paramv, paramz, false);
      }
    }
    if ((paramBoolean) && (!paramz.e()))
    {
      if ((this.n != 0) && (getChildCount() > 0) && ((this.x) || (B() != null))) {
        i2 = 1;
      } else {
        i2 = 0;
      }
      if (i2 != 0)
      {
        removeCallbacks(this.D);
        if (g())
        {
          i2 = i1;
          break label668;
        }
      }
    }
    int i2 = 0;
    label668:
    if (paramz.e()) {
      this.w.c();
    }
    this.o = localb.c;
    this.p = isLayoutRTL();
    if (i2 != 0)
    {
      this.w.c();
      F(paramv, paramz, false);
    }
  }
  
  private boolean G(int paramInt)
  {
    int i1 = this.e;
    boolean bool1 = true;
    boolean bool2 = true;
    boolean bool3;
    if (i1 == 0)
    {
      if (paramInt == -1) {
        bool3 = true;
      } else {
        bool3 = false;
      }
      if (bool3 != this.i) {
        bool3 = bool2;
      } else {
        bool3 = false;
      }
      return bool3;
    }
    if (paramInt == -1) {
      bool3 = true;
    } else {
      bool3 = false;
    }
    if (bool3 == this.i) {
      bool3 = true;
    } else {
      bool3 = false;
    }
    if (bool3 == isLayoutRTL()) {
      bool3 = bool1;
    } else {
      bool3 = false;
    }
    return bool3;
  }
  
  private void I(View paramView)
  {
    for (int i1 = this.a - 1; i1 >= 0; i1--) {
      this.b[i1].u(paramView);
    }
  }
  
  private void J(RecyclerView.v paramv, g paramg)
  {
    if ((paramg.a) && (!paramg.i)) {
      if (paramg.b == 0)
      {
        if (paramg.e == -1) {
          K(paramv, paramg.g);
        } else {
          L(paramv, paramg.f);
        }
      }
      else
      {
        int i1;
        if (paramg.e == -1)
        {
          i1 = paramg.f;
          i1 -= w(i1);
          if (i1 < 0) {
            i1 = paramg.g;
          } else {
            i1 = paramg.g - Math.min(i1, paramg.b);
          }
          K(paramv, i1);
        }
        else
        {
          i1 = x(paramg.g) - paramg.g;
          if (i1 < 0)
          {
            i1 = paramg.f;
          }
          else
          {
            int i2 = paramg.f;
            i1 = Math.min(i1, paramg.b) + i2;
          }
          L(paramv, i1);
        }
      }
    }
  }
  
  private void K(RecyclerView.v paramv, int paramInt)
  {
    for (int i1 = getChildCount() - 1; i1 >= 0; i1--)
    {
      View localView = getChildAt(i1);
      if ((this.c.g(localView) < paramInt) || (this.c.q(localView) < paramInt)) {
        break;
      }
      c localc = (c)localView.getLayoutParams();
      if (localc.b)
      {
        int i2 = 0;
        int i4;
        for (int i3 = 0;; i3++)
        {
          i4 = i2;
          if (i3 >= this.a) {
            break;
          }
          if (this.b[i3].a.size() == 1) {
            return;
          }
        }
        while (i4 < this.a)
        {
          this.b[i4].s();
          i4++;
        }
      }
      if (localc.a.a.size() == 1) {
        return;
      }
      localc.a.s();
      removeAndRecycleView(localView, paramv);
    }
  }
  
  private void L(RecyclerView.v paramv, int paramInt)
  {
    while (getChildCount() > 0)
    {
      int i1 = 0;
      View localView = getChildAt(0);
      if ((this.c.d(localView) > paramInt) || (this.c.p(localView) > paramInt)) {
        break;
      }
      c localc = (c)localView.getLayoutParams();
      if (localc.b)
      {
        int i3;
        for (int i2 = 0;; i2++)
        {
          i3 = i1;
          if (i2 >= this.a) {
            break;
          }
          if (this.b[i2].a.size() == 1) {
            return;
          }
        }
        while (i3 < this.a)
        {
          this.b[i3].t();
          i3++;
        }
      }
      if (localc.a.a.size() == 1) {
        return;
      }
      localc.a.t();
      removeAndRecycleView(localView, paramv);
    }
  }
  
  private void M()
  {
    if (this.d.k() == 1073741824) {
      return;
    }
    float f1 = 0.0F;
    int i1 = getChildCount();
    int i2 = 0;
    Object localObject;
    for (int i3 = 0; i3 < i1; i3++)
    {
      localObject = getChildAt(i3);
      float f2 = this.d.e((View)localObject);
      if (f2 >= f1)
      {
        float f3 = f2;
        if (((c)((View)localObject).getLayoutParams()).b()) {
          f3 = f2 * 1.0F / this.a;
        }
        f1 = Math.max(f1, f3);
      }
    }
    int i4 = this.f;
    int i5 = Math.round(f1 * this.a);
    i3 = i5;
    if (this.d.k() == -2147483648) {
      i3 = Math.min(i5, this.d.n());
    }
    U(i3);
    i3 = i2;
    if (this.f == i4) {
      return;
    }
    while (i3 < i1)
    {
      View localView = getChildAt(i3);
      localObject = (c)localView.getLayoutParams();
      if (!((c)localObject).b) {
        if ((isLayoutRTL()) && (this.e == 1))
        {
          i5 = this.a;
          i2 = ((c)localObject).a.e;
          localView.offsetLeftAndRight(-(i5 - 1 - i2) * this.f - -(i5 - 1 - i2) * i4);
        }
        else
        {
          i5 = ((c)localObject).a.e;
          i2 = this.f * i5;
          i5 *= i4;
          if (this.e == 1) {
            localView.offsetLeftAndRight(i2 - i5);
          } else {
            localView.offsetTopAndBottom(i2 - i5);
          }
        }
      }
      i3++;
    }
  }
  
  private void N(int paramInt)
  {
    g localg = this.g;
    localg.e = paramInt;
    boolean bool1 = this.i;
    int i1 = 1;
    boolean bool2;
    if (paramInt == -1) {
      bool2 = true;
    } else {
      bool2 = false;
    }
    if (bool1 == bool2) {
      paramInt = i1;
    } else {
      paramInt = -1;
    }
    localg.d = paramInt;
  }
  
  private void P(int paramInt1, int paramInt2)
  {
    for (int i1 = 0; i1 < this.a; i1++) {
      if (!this.b[i1].a.isEmpty()) {
        V(this.b[i1], paramInt1, paramInt2);
      }
    }
  }
  
  private boolean Q(RecyclerView.z paramz, b paramb)
  {
    int i1;
    if (this.o) {
      i1 = q(paramz.b());
    } else {
      i1 = m(paramz.b());
    }
    paramb.a = i1;
    paramb.b = -2147483648;
    return true;
  }
  
  private void T(int paramInt, RecyclerView.z paramz)
  {
    g localg = this.g;
    boolean bool1 = false;
    localg.b = 0;
    localg.c = paramInt;
    if (isSmoothScrolling())
    {
      i1 = paramz.c();
      if (i1 != -1)
      {
        boolean bool2 = this.i;
        if (i1 < paramInt) {
          bool3 = true;
        } else {
          bool3 = false;
        }
        if (bool2 == bool3)
        {
          paramInt = this.c.n();
          i1 = 0;
          break label98;
        }
        i1 = this.c.n();
        paramInt = 0;
        break label98;
      }
    }
    paramInt = 0;
    int i1 = paramInt;
    label98:
    if (getClipToPadding())
    {
      this.g.f = (this.c.m() - i1);
      this.g.g = (this.c.i() + paramInt);
    }
    else
    {
      this.g.g = (this.c.h() + paramInt);
      this.g.f = (-i1);
    }
    paramz = this.g;
    paramz.h = false;
    paramz.a = true;
    boolean bool3 = bool1;
    if (this.c.k() == 0)
    {
      bool3 = bool1;
      if (this.c.h() == 0) {
        bool3 = true;
      }
    }
    paramz.i = bool3;
  }
  
  private void V(d paramd, int paramInt1, int paramInt2)
  {
    int i1 = paramd.j();
    if (paramInt1 == -1)
    {
      if (paramd.o() + i1 <= paramInt2) {
        this.j.set(paramd.e, false);
      }
    }
    else if (paramd.k() - i1 >= paramInt2) {
      this.j.set(paramd.e, false);
    }
  }
  
  private int W(int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramInt2 == 0) && (paramInt3 == 0)) {
      return paramInt1;
    }
    int i1 = View.MeasureSpec.getMode(paramInt1);
    if ((i1 != -2147483648) && (i1 != 1073741824)) {
      return paramInt1;
    }
    return View.MeasureSpec.makeMeasureSpec(Math.max(0, View.MeasureSpec.getSize(paramInt1) - paramInt2 - paramInt3), i1);
  }
  
  private void a(View paramView)
  {
    for (int i1 = this.a - 1; i1 >= 0; i1--) {
      this.b[i1].a(paramView);
    }
  }
  
  private void b(b paramb)
  {
    SavedState localSavedState = this.q;
    int i1 = localSavedState.mSpanOffsetsSize;
    if (i1 > 0)
    {
      if (i1 == this.a) {
        for (i1 = 0; i1 < this.a; i1++)
        {
          this.b[i1].e();
          localSavedState = this.q;
          int i2 = localSavedState.mSpanOffsets[i1];
          int i3 = i2;
          if (i2 != -2147483648)
          {
            if (localSavedState.mAnchorLayoutFromEnd) {
              i3 = this.c.i();
            } else {
              i3 = this.c.m();
            }
            i3 = i2 + i3;
          }
          this.b[i1].v(i3);
        }
      }
      localSavedState.invalidateSpanInfo();
      localSavedState = this.q;
      localSavedState.mAnchorPosition = localSavedState.mVisibleAnchorPosition;
    }
    localSavedState = this.q;
    this.p = localSavedState.mLastLayoutRTL;
    setReverseLayout(localSavedState.mReverseLayout);
    resolveShouldLayoutReverse();
    localSavedState = this.q;
    i1 = localSavedState.mAnchorPosition;
    if (i1 != -1)
    {
      this.k = i1;
      paramb.c = localSavedState.mAnchorLayoutFromEnd;
    }
    else
    {
      paramb.c = this.i;
    }
    if (localSavedState.mSpanLookupSize > 1)
    {
      paramb = this.m;
      paramb.a = localSavedState.mSpanLookup;
      paramb.b = localSavedState.mFullSpanItems;
    }
  }
  
  private int computeScrollExtent(RecyclerView.z paramz)
  {
    if (getChildCount() == 0) {
      return 0;
    }
    return q.a(paramz, this.c, o(this.y ^ true), n(this.y ^ true), this, this.y);
  }
  
  private int computeScrollOffset(RecyclerView.z paramz)
  {
    if (getChildCount() == 0) {
      return 0;
    }
    return q.b(paramz, this.c, o(this.y ^ true), n(this.y ^ true), this, this.y, this.i);
  }
  
  private int computeScrollRange(RecyclerView.z paramz)
  {
    if (getChildCount() == 0) {
      return 0;
    }
    return q.c(paramz, this.c, o(this.y ^ true), n(this.y ^ true), this, this.y);
  }
  
  private int convertFocusDirectionToLayoutDirection(int paramInt)
  {
    int i1 = -1;
    int i2 = 1;
    int i3 = 1;
    if (paramInt != 1)
    {
      if (paramInt != 2)
      {
        if (paramInt != 17)
        {
          if (paramInt != 33)
          {
            if (paramInt != 66)
            {
              if (paramInt != 130) {
                return -2147483648;
              }
              if (this.e == 1) {
                paramInt = i3;
              } else {
                paramInt = -2147483648;
              }
              return paramInt;
            }
            if (this.e == 0) {
              paramInt = i2;
            } else {
              paramInt = -2147483648;
            }
            return paramInt;
          }
          if (this.e != 1) {
            i1 = -2147483648;
          }
          return i1;
        }
        if (this.e != 0) {
          i1 = -2147483648;
        }
        return i1;
      }
      if (this.e == 1) {
        return 1;
      }
      if (isLayoutRTL()) {
        return -1;
      }
      return 1;
    }
    if (this.e == 1) {
      return -1;
    }
    if (isLayoutRTL()) {
      return 1;
    }
    return -1;
  }
  
  private void e(View paramView, c paramc, g paramg)
  {
    if (paramg.e == 1)
    {
      if (paramc.b) {
        a(paramView);
      } else {
        paramc.a.a(paramView);
      }
    }
    else if (paramc.b) {
      I(paramView);
    } else {
      paramc.a.u(paramView);
    }
  }
  
  private int f(int paramInt)
  {
    int i1 = getChildCount();
    int i2 = -1;
    if (i1 == 0)
    {
      if (this.i) {
        i2 = 1;
      }
      return i2;
    }
    int i3;
    if (paramInt < t()) {
      i3 = 1;
    } else {
      i3 = 0;
    }
    if (i3 == this.i) {
      i2 = 1;
    }
    return i2;
  }
  
  private boolean h(d paramd)
  {
    if (this.i)
    {
      if (paramd.k() < this.c.i())
      {
        ArrayList localArrayList = paramd.a;
        return paramd.n((View)localArrayList.get(localArrayList.size() - 1)).b ^ true;
      }
    }
    else if (paramd.o() > this.c.m()) {
      return paramd.n((View)paramd.a.get(0)).b ^ true;
    }
    return false;
  }
  
  private StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem i(int paramInt)
  {
    StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem localFullSpanItem = new StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem();
    localFullSpanItem.mGapPerSpan = new int[this.a];
    for (int i1 = 0; i1 < this.a; i1++) {
      localFullSpanItem.mGapPerSpan[i1] = (paramInt - this.b[i1].l(paramInt));
    }
    return localFullSpanItem;
  }
  
  private StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem j(int paramInt)
  {
    StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem localFullSpanItem = new StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem();
    localFullSpanItem.mGapPerSpan = new int[this.a];
    for (int i1 = 0; i1 < this.a; i1++) {
      localFullSpanItem.mGapPerSpan[i1] = (this.b[i1].p(paramInt) - paramInt);
    }
    return localFullSpanItem;
  }
  
  private void k()
  {
    this.c = k.b(this, this.e);
    this.d = k.b(this, 1 - this.e);
  }
  
  private int l(RecyclerView.v paramv, g paramg, RecyclerView.z paramz)
  {
    Object localObject = this.j;
    int i1 = this.a;
    int i2 = 0;
    ((BitSet)localObject).set(0, i1, true);
    if (this.g.i)
    {
      if (paramg.e == 1) {
        i1 = 2147483647;
      } else {
        i1 = -2147483648;
      }
    }
    else if (paramg.e == 1) {
      i1 = paramg.g + paramg.b;
    } else {
      i1 = paramg.f - paramg.b;
    }
    P(paramg.e, i1);
    int i4;
    if (this.i) {
      i4 = this.c.i();
    } else {
      i4 = this.c.m();
    }
    int i3;
    for (int i5 = 0; (paramg.a(paramz)) && ((this.g.i) || (!this.j.isEmpty())); i5 = 1)
    {
      View localView = paramg.b(paramv);
      c localc = (c)localView.getLayoutParams();
      int i6 = localc.getViewLayoutPosition();
      i5 = this.m.g(i6);
      int i7;
      if (i5 == -1) {
        i7 = 1;
      } else {
        i7 = i2;
      }
      if (i7 != 0)
      {
        if (localc.b) {
          localObject = this.b[i2];
        } else {
          localObject = z(paramg);
        }
        this.m.n(i6, (d)localObject);
      }
      else
      {
        localObject = this.b[i5];
      }
      localc.a = ((d)localObject);
      if (paramg.e == 1) {
        addView(localView);
      } else {
        addView(localView, i2);
      }
      E(localView, localc, i2);
      StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem localFullSpanItem;
      int i8;
      if (paramg.e == 1)
      {
        if (localc.b) {
          i3 = v(i4);
        } else {
          i3 = ((d)localObject).l(i4);
        }
        i5 = this.c.e(localView);
        if ((i7 != 0) && (localc.b))
        {
          localFullSpanItem = i(i3);
          localFullSpanItem.mGapDir = -1;
          localFullSpanItem.mPosition = i6;
          this.m.a(localFullSpanItem);
        }
        i5 += i3;
        i8 = i3;
      }
      else
      {
        if (localc.b) {
          i3 = y(i4);
        } else {
          i3 = ((d)localObject).p(i4);
        }
        i8 = i3 - this.c.e(localView);
        if ((i7 != 0) && (localc.b))
        {
          localFullSpanItem = j(i3);
          localFullSpanItem.mGapDir = 1;
          localFullSpanItem.mPosition = i6;
          this.m.a(localFullSpanItem);
        }
        i5 = i3;
      }
      if ((localc.b) && (paramg.d == -1)) {
        if (i7 != 0)
        {
          this.x = true;
        }
        else
        {
          boolean bool;
          if (paramg.e == 1) {
            bool = c();
          } else {
            bool = d();
          }
          if ((bool ^ true))
          {
            localFullSpanItem = this.m.f(i6);
            if (localFullSpanItem != null) {
              localFullSpanItem.mHasUnwantedGapAfter = true;
            }
            this.x = true;
          }
        }
      }
      e(localView, localc, paramg);
      if ((isLayoutRTL()) && (this.e == 1))
      {
        if (localc.b) {
          i3 = this.d.i();
        } else {
          i3 = this.d.i() - (this.a - 1 - ((d)localObject).e) * this.f;
        }
        i6 = this.d.e(localView);
        i7 = i3;
        i3 -= i6;
        i6 = i7;
      }
      else
      {
        if (localc.b) {
          i3 = this.d.m();
        } else {
          i3 = ((d)localObject).e * this.f + this.d.m();
        }
        i6 = this.d.e(localView);
        i7 = i3;
        i6 += i3;
        i3 = i7;
      }
      if (this.e == 1) {
        layoutDecoratedWithMargins(localView, i3, i8, i6, i5);
      } else {
        layoutDecoratedWithMargins(localView, i8, i3, i5, i6);
      }
      if (localc.b) {
        P(this.g.e, i1);
      } else {
        V((d)localObject, this.g.e, i1);
      }
      J(paramv, this.g);
      if ((this.g.h) && (localView.hasFocusable())) {
        if (localc.b) {
          this.j.clear();
        } else {
          this.j.set(((d)localObject).e, false);
        }
      }
      i3 = 0;
    }
    if (i5 == 0) {
      J(paramv, this.g);
    }
    if (this.g.e == -1)
    {
      i1 = y(this.c.m());
      i1 = this.c.m() - i1;
    }
    else
    {
      i1 = v(this.c.i()) - this.c.i();
    }
    if (i1 > 0) {
      i1 = Math.min(paramg.b, i1);
    } else {
      i1 = i3;
    }
    return i1;
  }
  
  private int m(int paramInt)
  {
    int i1 = getChildCount();
    for (int i2 = 0; i2 < i1; i2++)
    {
      int i3 = getPosition(getChildAt(i2));
      if ((i3 >= 0) && (i3 < paramInt)) {
        return i3;
      }
    }
    return 0;
  }
  
  private int q(int paramInt)
  {
    for (int i1 = getChildCount() - 1; i1 >= 0; i1--)
    {
      int i2 = getPosition(getChildAt(i1));
      if ((i2 >= 0) && (i2 < paramInt)) {
        return i2;
      }
    }
    return 0;
  }
  
  private void r(RecyclerView.v paramv, RecyclerView.z paramz, boolean paramBoolean)
  {
    int i1 = v(-2147483648);
    if (i1 == -2147483648) {
      return;
    }
    i1 = this.c.i() - i1;
    if (i1 > 0)
    {
      i1 -= -scrollBy(-i1, paramv, paramz);
      if ((paramBoolean) && (i1 > 0)) {
        this.c.r(i1);
      }
    }
  }
  
  private void resolveShouldLayoutReverse()
  {
    if ((this.e != 1) && (isLayoutRTL())) {
      this.i = (this.h ^ true);
    } else {
      this.i = this.h;
    }
  }
  
  private void s(RecyclerView.v paramv, RecyclerView.z paramz, boolean paramBoolean)
  {
    int i1 = y(2147483647);
    if (i1 == 2147483647) {
      return;
    }
    i1 -= this.c.m();
    if (i1 > 0)
    {
      i1 -= scrollBy(i1, paramv, paramz);
      if ((paramBoolean) && (i1 > 0)) {
        this.c.r(-i1);
      }
    }
  }
  
  private int v(int paramInt)
  {
    int i1 = this.b[0].l(paramInt);
    int i2 = 1;
    while (i2 < this.a)
    {
      int i3 = this.b[i2].l(paramInt);
      int i4 = i1;
      if (i3 > i1) {
        i4 = i3;
      }
      i2++;
      i1 = i4;
    }
    return i1;
  }
  
  private int w(int paramInt)
  {
    int i1 = this.b[0].p(paramInt);
    int i2 = 1;
    while (i2 < this.a)
    {
      int i3 = this.b[i2].p(paramInt);
      int i4 = i1;
      if (i3 > i1) {
        i4 = i3;
      }
      i2++;
      i1 = i4;
    }
    return i1;
  }
  
  private int x(int paramInt)
  {
    int i1 = this.b[0].l(paramInt);
    int i2 = 1;
    while (i2 < this.a)
    {
      int i3 = this.b[i2].l(paramInt);
      int i4 = i1;
      if (i3 < i1) {
        i4 = i3;
      }
      i2++;
      i1 = i4;
    }
    return i1;
  }
  
  private int y(int paramInt)
  {
    int i1 = this.b[0].p(paramInt);
    int i2 = 1;
    while (i2 < this.a)
    {
      int i3 = this.b[i2].p(paramInt);
      int i4 = i1;
      if (i3 < i1) {
        i4 = i3;
      }
      i2++;
      i1 = i4;
    }
    return i1;
  }
  
  private d z(g paramg)
  {
    boolean bool = G(paramg.e);
    int i1 = -1;
    int i2;
    int i3;
    if (bool)
    {
      i2 = this.a - 1;
      i3 = -1;
    }
    else
    {
      i2 = 0;
      i1 = this.a;
      i3 = 1;
    }
    int i4 = paramg.e;
    d locald = null;
    paramg = null;
    int i6;
    int i7;
    if (i4 == 1)
    {
      i4 = 2147483647;
      i5 = this.c.m();
      i6 = i2;
      while (i6 != i1)
      {
        locald = this.b[i6];
        i7 = locald.l(i5);
        i2 = i4;
        if (i7 < i4)
        {
          paramg = locald;
          i2 = i7;
        }
        i6 += i3;
        i4 = i2;
      }
      return paramg;
    }
    i4 = -2147483648;
    int i5 = this.c.i();
    paramg = locald;
    while (i2 != i1)
    {
      locald = this.b[i2];
      i7 = locald.p(i5);
      i6 = i4;
      if (i7 > i4)
      {
        paramg = locald;
        i6 = i7;
      }
      i2 += i3;
      i4 = i6;
    }
    return paramg;
  }
  
  View B()
  {
    int i1 = getChildCount() - 1;
    BitSet localBitSet = new BitSet(this.a);
    localBitSet.set(0, this.a, true);
    int i2 = this.e;
    int i3 = -1;
    if ((i2 == 1) && (isLayoutRTL())) {
      i2 = 1;
    } else {
      i2 = -1;
    }
    int i4;
    if (this.i)
    {
      i4 = -1;
    }
    else
    {
      i4 = i1 + 1;
      i1 = 0;
    }
    int i5 = i1;
    if (i1 < i4)
    {
      i3 = 1;
      i5 = i1;
    }
    while (i5 != i4)
    {
      View localView = getChildAt(i5);
      c localc = (c)localView.getLayoutParams();
      if (localBitSet.get(localc.a.e))
      {
        if (h(localc.a)) {
          return localView;
        }
        localBitSet.clear(localc.a.e);
      }
      if (!localc.b)
      {
        i1 = i5 + i3;
        if (i1 != i4)
        {
          Object localObject = getChildAt(i1);
          int i6;
          if (this.i)
          {
            i6 = this.c.d(localView);
            i1 = this.c.d((View)localObject);
            if (i6 < i1) {
              return localView;
            }
            if (i6 != i1) {
              break label275;
            }
          }
          else
          {
            i1 = this.c.g(localView);
            i6 = this.c.g((View)localObject);
            if (i1 > i6) {
              return localView;
            }
            if (i1 != i6) {
              break label275;
            }
          }
          i1 = 1;
          break label277;
          label275:
          i1 = 0;
          label277:
          if (i1 != 0)
          {
            localObject = (c)((View)localObject).getLayoutParams();
            if (localc.a.e - ((c)localObject).a.e < 0) {
              i1 = 1;
            } else {
              i1 = 0;
            }
            if (i2 < 0) {
              i6 = 1;
            } else {
              i6 = 0;
            }
            if (i1 != i6) {
              return localView;
            }
          }
        }
      }
      i5 += i3;
    }
    return null;
  }
  
  public void C()
  {
    this.m.b();
    requestLayout();
  }
  
  void H(int paramInt, RecyclerView.z paramz)
  {
    int i1;
    int i2;
    if (paramInt > 0)
    {
      i1 = u();
      i2 = 1;
    }
    else
    {
      i1 = t();
      i2 = -1;
    }
    this.g.a = true;
    T(i1, paramz);
    N(i2);
    paramz = this.g;
    paramz.c = (i1 + paramz.d);
    paramz.b = Math.abs(paramInt);
  }
  
  public void O(int paramInt)
  {
    assertNotInLayoutOrScroll(null);
    if (paramInt != this.a)
    {
      C();
      this.a = paramInt;
      this.j = new BitSet(this.a);
      this.b = new d[this.a];
      for (paramInt = 0; paramInt < this.a; paramInt++) {
        this.b[paramInt] = new d(paramInt);
      }
      requestLayout();
    }
  }
  
  boolean R(RecyclerView.z paramz, b paramb)
  {
    boolean bool1 = paramz.e();
    boolean bool2 = false;
    if (!bool1)
    {
      int i1 = this.k;
      if (i1 != -1)
      {
        if ((i1 >= 0) && (i1 < paramz.b()))
        {
          paramz = this.q;
          if ((paramz != null) && (paramz.mAnchorPosition != -1) && (paramz.mSpanOffsetsSize >= 1))
          {
            paramb.b = -2147483648;
            paramb.a = this.k;
          }
          else
          {
            paramz = findViewByPosition(this.k);
            if (paramz != null)
            {
              if (this.i) {
                i1 = u();
              } else {
                i1 = t();
              }
              paramb.a = i1;
              if (this.l != -2147483648)
              {
                if (paramb.c) {
                  paramb.b = (this.c.i() - this.l - this.c.d(paramz));
                } else {
                  paramb.b = (this.c.m() + this.l - this.c.g(paramz));
                }
                return true;
              }
              if (this.c.e(paramz) > this.c.n())
              {
                if (paramb.c) {
                  i1 = this.c.i();
                } else {
                  i1 = this.c.m();
                }
                paramb.b = i1;
                return true;
              }
              i1 = this.c.g(paramz) - this.c.m();
              if (i1 < 0)
              {
                paramb.b = (-i1);
                return true;
              }
              i1 = this.c.i() - this.c.d(paramz);
              if (i1 < 0)
              {
                paramb.b = i1;
                return true;
              }
              paramb.b = -2147483648;
            }
            else
            {
              int i2 = this.k;
              paramb.a = i2;
              i1 = this.l;
              if (i1 == -2147483648)
              {
                if (f(i2) == 1) {
                  bool2 = true;
                }
                paramb.c = bool2;
                paramb.a();
              }
              else
              {
                paramb.b(i1);
              }
              paramb.d = true;
            }
          }
          return true;
        }
        this.k = -1;
        this.l = -2147483648;
      }
    }
    return false;
  }
  
  void S(RecyclerView.z paramz, b paramb)
  {
    if (R(paramz, paramb)) {
      return;
    }
    if (Q(paramz, paramb)) {
      return;
    }
    paramb.a();
    paramb.a = 0;
  }
  
  void U(int paramInt)
  {
    this.f = (paramInt / this.a);
    this.r = View.MeasureSpec.makeMeasureSpec(paramInt, this.d.k());
  }
  
  public void assertNotInLayoutOrScroll(String paramString)
  {
    if (this.q == null) {
      super.assertNotInLayoutOrScroll(paramString);
    }
  }
  
  boolean c()
  {
    int i1 = this.b[0].l(-2147483648);
    for (int i2 = 1; i2 < this.a; i2++) {
      if (this.b[i2].l(-2147483648) != i1) {
        return false;
      }
    }
    return true;
  }
  
  public boolean canScrollHorizontally()
  {
    boolean bool;
    if (this.e == 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean canScrollVertically()
  {
    int i1 = this.e;
    boolean bool = true;
    if (i1 != 1) {
      bool = false;
    }
    return bool;
  }
  
  public boolean checkLayoutParams(RecyclerView.p paramp)
  {
    return paramp instanceof c;
  }
  
  public void collectAdjacentPrefetchPositions(int paramInt1, int paramInt2, RecyclerView.z paramz, RecyclerView.o.c paramc)
  {
    if (this.e != 0) {
      paramInt1 = paramInt2;
    }
    if ((getChildCount() != 0) && (paramInt1 != 0))
    {
      H(paramInt1, paramz);
      Object localObject = this.z;
      if ((localObject == null) || (localObject.length < this.a)) {
        this.z = new int[this.a];
      }
      int i1 = 0;
      paramInt2 = 0;
      int i2;
      for (paramInt1 = paramInt2; paramInt2 < this.a; paramInt1 = i2)
      {
        localObject = this.g;
        if (((g)localObject).d == -1)
        {
          i2 = ((g)localObject).f;
          i3 = this.b[paramInt2].p(i2);
        }
        else
        {
          i2 = this.b[paramInt2].l(((g)localObject).g);
          i3 = this.g.g;
        }
        int i3 = i2 - i3;
        i2 = paramInt1;
        if (i3 >= 0)
        {
          this.z[paramInt1] = i3;
          i2 = paramInt1 + 1;
        }
        paramInt2++;
      }
      Arrays.sort(this.z, 0, paramInt1);
      for (paramInt2 = i1; (paramInt2 < paramInt1) && (this.g.a(paramz)); paramInt2++)
      {
        paramc.a(this.g.c, this.z[paramInt2]);
        localObject = this.g;
        ((g)localObject).c += ((g)localObject).d;
      }
    }
  }
  
  public int computeHorizontalScrollExtent(RecyclerView.z paramz)
  {
    return computeScrollExtent(paramz);
  }
  
  public int computeHorizontalScrollOffset(RecyclerView.z paramz)
  {
    return computeScrollOffset(paramz);
  }
  
  public int computeHorizontalScrollRange(RecyclerView.z paramz)
  {
    return computeScrollRange(paramz);
  }
  
  public PointF computeScrollVectorForPosition(int paramInt)
  {
    paramInt = f(paramInt);
    PointF localPointF = new PointF();
    if (paramInt == 0) {
      return null;
    }
    if (this.e == 0)
    {
      localPointF.x = paramInt;
      localPointF.y = 0.0F;
    }
    else
    {
      localPointF.x = 0.0F;
      localPointF.y = paramInt;
    }
    return localPointF;
  }
  
  public int computeVerticalScrollExtent(RecyclerView.z paramz)
  {
    return computeScrollExtent(paramz);
  }
  
  public int computeVerticalScrollOffset(RecyclerView.z paramz)
  {
    return computeScrollOffset(paramz);
  }
  
  public int computeVerticalScrollRange(RecyclerView.z paramz)
  {
    return computeScrollRange(paramz);
  }
  
  boolean d()
  {
    int i1 = this.b[0].p(-2147483648);
    for (int i2 = 1; i2 < this.a; i2++) {
      if (this.b[i2].p(-2147483648) != i1) {
        return false;
      }
    }
    return true;
  }
  
  boolean g()
  {
    if ((getChildCount() != 0) && (this.n != 0) && (isAttachedToWindow()))
    {
      int i1;
      int i2;
      if (this.i)
      {
        i1 = u();
        i2 = t();
      }
      else
      {
        i1 = t();
        i2 = u();
      }
      if ((i1 == 0) && (B() != null))
      {
        this.m.b();
        requestSimpleAnimationsInNextLayout();
        requestLayout();
        return true;
      }
      if (!this.x) {
        return false;
      }
      int i3;
      if (this.i) {
        i3 = -1;
      } else {
        i3 = 1;
      }
      Object localObject = this.m;
      i2++;
      localObject = ((LazySpanLookup)localObject).e(i1, i2, i3, true);
      if (localObject == null)
      {
        this.x = false;
        this.m.d(i2);
        return false;
      }
      StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem localFullSpanItem = this.m.e(i1, ((StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)localObject).mPosition, i3 * -1, true);
      if (localFullSpanItem == null) {
        this.m.d(((StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)localObject).mPosition);
      } else {
        this.m.d(localFullSpanItem.mPosition + 1);
      }
      requestSimpleAnimationsInNextLayout();
      requestLayout();
      return true;
    }
    return false;
  }
  
  public RecyclerView.p generateDefaultLayoutParams()
  {
    if (this.e == 0) {
      return new c(-2, -1);
    }
    return new c(-1, -2);
  }
  
  public RecyclerView.p generateLayoutParams(Context paramContext, AttributeSet paramAttributeSet)
  {
    return new c(paramContext, paramAttributeSet);
  }
  
  public RecyclerView.p generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new c((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new c(paramLayoutParams);
  }
  
  public int getColumnCountForAccessibility(RecyclerView.v paramv, RecyclerView.z paramz)
  {
    if (this.e == 1) {
      return this.a;
    }
    return super.getColumnCountForAccessibility(paramv, paramz);
  }
  
  public int getRowCountForAccessibility(RecyclerView.v paramv, RecyclerView.z paramz)
  {
    if (this.e == 0) {
      return this.a;
    }
    return super.getRowCountForAccessibility(paramv, paramz);
  }
  
  public boolean isAutoMeasureEnabled()
  {
    boolean bool;
    if (this.n != 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  boolean isLayoutRTL()
  {
    int i1 = getLayoutDirection();
    boolean bool = true;
    if (i1 != 1) {
      bool = false;
    }
    return bool;
  }
  
  View n(boolean paramBoolean)
  {
    int i1 = this.c.m();
    int i2 = this.c.i();
    int i3 = getChildCount() - 1;
    Object localObject2;
    for (Object localObject1 = null; i3 >= 0; localObject1 = localObject2)
    {
      View localView = getChildAt(i3);
      int i4 = this.c.g(localView);
      int i5 = this.c.d(localView);
      localObject2 = localObject1;
      if (i5 > i1) {
        if (i4 >= i2)
        {
          localObject2 = localObject1;
        }
        else if ((i5 > i2) && (paramBoolean))
        {
          localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = localView;
          }
        }
        else
        {
          return localView;
        }
      }
      i3--;
    }
    return localObject1;
  }
  
  View o(boolean paramBoolean)
  {
    int i1 = this.c.m();
    int i2 = this.c.i();
    int i3 = getChildCount();
    Object localObject1 = null;
    int i4 = 0;
    while (i4 < i3)
    {
      View localView = getChildAt(i4);
      int i5 = this.c.g(localView);
      Object localObject2 = localObject1;
      if (this.c.d(localView) > i1) {
        if (i5 >= i2)
        {
          localObject2 = localObject1;
        }
        else if ((i5 < i1) && (paramBoolean))
        {
          localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = localView;
          }
        }
        else
        {
          return localView;
        }
      }
      i4++;
      localObject1 = localObject2;
    }
    return localObject1;
  }
  
  public void offsetChildrenHorizontal(int paramInt)
  {
    super.offsetChildrenHorizontal(paramInt);
    for (int i1 = 0; i1 < this.a; i1++) {
      this.b[i1].r(paramInt);
    }
  }
  
  public void offsetChildrenVertical(int paramInt)
  {
    super.offsetChildrenVertical(paramInt);
    for (int i1 = 0; i1 < this.a; i1++) {
      this.b[i1].r(paramInt);
    }
  }
  
  public void onDetachedFromWindow(RecyclerView paramRecyclerView, RecyclerView.v paramv)
  {
    super.onDetachedFromWindow(paramRecyclerView, paramv);
    removeCallbacks(this.D);
    for (int i1 = 0; i1 < this.a; i1++) {
      this.b[i1].e();
    }
    paramRecyclerView.requestLayout();
  }
  
  public View onFocusSearchFailed(View paramView, int paramInt, RecyclerView.v paramv, RecyclerView.z paramz)
  {
    if (getChildCount() == 0) {
      return null;
    }
    paramView = findContainingItemView(paramView);
    if (paramView == null) {
      return null;
    }
    resolveShouldLayoutReverse();
    int i1 = convertFocusDirectionToLayoutDirection(paramInt);
    if (i1 == -2147483648) {
      return null;
    }
    Object localObject = (c)paramView.getLayoutParams();
    boolean bool1 = ((c)localObject).b;
    localObject = ((c)localObject).a;
    if (i1 == 1) {
      paramInt = u();
    } else {
      paramInt = t();
    }
    T(paramInt, paramz);
    N(i1);
    g localg = this.g;
    localg.c = (localg.d + paramInt);
    localg.b = ((int)(this.c.n() * 0.3333333F));
    localg = this.g;
    localg.h = true;
    int i2 = 0;
    localg.a = false;
    l(paramv, localg, paramz);
    this.o = this.i;
    if (!bool1)
    {
      paramv = ((d)localObject).m(paramInt, i1);
      if ((paramv != null) && (paramv != paramView)) {
        return paramv;
      }
    }
    if (G(i1)) {
      for (i3 = this.a - 1; i3 >= 0; i3--)
      {
        paramv = this.b[i3].m(paramInt, i1);
        if ((paramv != null) && (paramv != paramView)) {
          return paramv;
        }
      }
    }
    for (int i3 = 0; i3 < this.a; i3++)
    {
      paramv = this.b[i3].m(paramInt, i1);
      if ((paramv != null) && (paramv != paramView)) {
        return paramv;
      }
    }
    boolean bool2 = this.h;
    if (i1 == -1) {
      paramInt = 1;
    } else {
      paramInt = 0;
    }
    if ((bool2 ^ true) == paramInt) {
      paramInt = 1;
    } else {
      paramInt = 0;
    }
    if (!bool1)
    {
      if (paramInt != 0) {
        i3 = ((d)localObject).f();
      } else {
        i3 = ((d)localObject).g();
      }
      paramv = findViewByPosition(i3);
      if ((paramv != null) && (paramv != paramView)) {
        return paramv;
      }
    }
    i3 = i2;
    if (G(i1)) {
      for (i3 = this.a - 1; i3 >= 0; i3--) {
        if (i3 != ((d)localObject).e)
        {
          if (paramInt != 0) {
            i2 = this.b[i3].f();
          } else {
            i2 = this.b[i3].g();
          }
          paramv = findViewByPosition(i2);
          if ((paramv != null) && (paramv != paramView)) {
            return paramv;
          }
        }
      }
    }
    while (i3 < this.a)
    {
      if (paramInt != 0) {
        i2 = this.b[i3].f();
      } else {
        i2 = this.b[i3].g();
      }
      paramv = findViewByPosition(i2);
      if ((paramv != null) && (paramv != paramView)) {
        return paramv;
      }
      i3++;
    }
    return null;
  }
  
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    if (getChildCount() > 0)
    {
      View localView1 = o(false);
      View localView2 = n(false);
      if ((localView1 != null) && (localView2 != null))
      {
        int i1 = getPosition(localView1);
        int i2 = getPosition(localView2);
        if (i1 < i2)
        {
          paramAccessibilityEvent.setFromIndex(i1);
          paramAccessibilityEvent.setToIndex(i2);
        }
        else
        {
          paramAccessibilityEvent.setFromIndex(i2);
          paramAccessibilityEvent.setToIndex(i1);
        }
      }
    }
  }
  
  public void onInitializeAccessibilityNodeInfoForItem(RecyclerView.v paramv, RecyclerView.z paramz, View paramView, androidx.core.view.accessibility.g paramg)
  {
    paramv = paramView.getLayoutParams();
    if (!(paramv instanceof c))
    {
      super.onInitializeAccessibilityNodeInfoForItem(paramView, paramg);
      return;
    }
    paramv = (c)paramv;
    int i1 = this.e;
    int i2 = 1;
    int i3 = 1;
    if (i1 == 0)
    {
      i2 = paramv.a();
      if (paramv.b) {
        i3 = this.a;
      }
      paramg.U(g.c.f(i2, i3, -1, -1, false, false));
    }
    else
    {
      i1 = paramv.a();
      i3 = i2;
      if (paramv.b) {
        i3 = this.a;
      }
      paramg.U(g.c.f(-1, -1, i1, i3, false, false));
    }
  }
  
  public void onItemsAdded(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
  {
    A(paramInt1, paramInt2, 1);
  }
  
  public void onItemsChanged(RecyclerView paramRecyclerView)
  {
    this.m.b();
    requestLayout();
  }
  
  public void onItemsMoved(RecyclerView paramRecyclerView, int paramInt1, int paramInt2, int paramInt3)
  {
    A(paramInt1, paramInt2, 8);
  }
  
  public void onItemsRemoved(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
  {
    A(paramInt1, paramInt2, 2);
  }
  
  public void onItemsUpdated(RecyclerView paramRecyclerView, int paramInt1, int paramInt2, Object paramObject)
  {
    A(paramInt1, paramInt2, 4);
  }
  
  public void onLayoutChildren(RecyclerView.v paramv, RecyclerView.z paramz)
  {
    F(paramv, paramz, true);
  }
  
  public void onLayoutCompleted(RecyclerView.z paramz)
  {
    super.onLayoutCompleted(paramz);
    this.k = -1;
    this.l = -2147483648;
    this.q = null;
    this.w.c();
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if ((paramParcelable instanceof SavedState))
    {
      this.q = ((SavedState)paramParcelable);
      requestLayout();
    }
  }
  
  public Parcelable onSaveInstanceState()
  {
    if (this.q != null) {
      return new SavedState(this.q);
    }
    SavedState localSavedState = new SavedState();
    localSavedState.mReverseLayout = this.h;
    localSavedState.mAnchorLayoutFromEnd = this.o;
    localSavedState.mLastLayoutRTL = this.p;
    LazySpanLookup localLazySpanLookup = this.m;
    int i1 = 0;
    if (localLazySpanLookup != null)
    {
      int[] arrayOfInt = localLazySpanLookup.a;
      if (arrayOfInt != null)
      {
        localSavedState.mSpanLookup = arrayOfInt;
        localSavedState.mSpanLookupSize = arrayOfInt.length;
        localSavedState.mFullSpanItems = localLazySpanLookup.b;
        break label102;
      }
    }
    localSavedState.mSpanLookupSize = 0;
    label102:
    if (getChildCount() > 0)
    {
      if (this.o) {
        i2 = u();
      } else {
        i2 = t();
      }
      localSavedState.mAnchorPosition = i2;
      localSavedState.mVisibleAnchorPosition = p();
      int i2 = this.a;
      localSavedState.mSpanOffsetsSize = i2;
      localSavedState.mSpanOffsets = new int[i2];
      while (i1 < this.a)
      {
        int i3;
        if (this.o)
        {
          i3 = this.b[i1].l(-2147483648);
          i2 = i3;
          if (i3 == -2147483648) {
            break label256;
          }
          i2 = this.c.i();
        }
        else
        {
          i3 = this.b[i1].p(-2147483648);
          i2 = i3;
          if (i3 == -2147483648) {
            break label256;
          }
          i2 = this.c.m();
        }
        i2 = i3 - i2;
        localSavedState.mSpanOffsets[i1] = i2;
        i1++;
      }
    }
    label256:
    localSavedState.mAnchorPosition = -1;
    localSavedState.mVisibleAnchorPosition = -1;
    localSavedState.mSpanOffsetsSize = 0;
    return localSavedState;
  }
  
  public void onScrollStateChanged(int paramInt)
  {
    if (paramInt == 0) {
      g();
    }
  }
  
  int p()
  {
    View localView;
    if (this.i) {
      localView = n(true);
    } else {
      localView = o(true);
    }
    int i1;
    if (localView == null) {
      i1 = -1;
    } else {
      i1 = getPosition(localView);
    }
    return i1;
  }
  
  int scrollBy(int paramInt, RecyclerView.v paramv, RecyclerView.z paramz)
  {
    if ((getChildCount() != 0) && (paramInt != 0))
    {
      H(paramInt, paramz);
      int i1 = l(paramv, this.g, paramz);
      if (this.g.b >= i1) {
        if (paramInt < 0) {
          paramInt = -i1;
        } else {
          paramInt = i1;
        }
      }
      this.c.r(-paramInt);
      this.o = this.i;
      paramz = this.g;
      paramz.b = 0;
      J(paramv, paramz);
      return paramInt;
    }
    return 0;
  }
  
  public int scrollHorizontallyBy(int paramInt, RecyclerView.v paramv, RecyclerView.z paramz)
  {
    return scrollBy(paramInt, paramv, paramz);
  }
  
  public void scrollToPosition(int paramInt)
  {
    SavedState localSavedState = this.q;
    if ((localSavedState != null) && (localSavedState.mAnchorPosition != paramInt)) {
      localSavedState.invalidateAnchorPositionInfo();
    }
    this.k = paramInt;
    this.l = -2147483648;
    requestLayout();
  }
  
  public int scrollVerticallyBy(int paramInt, RecyclerView.v paramv, RecyclerView.z paramz)
  {
    return scrollBy(paramInt, paramv, paramz);
  }
  
  public void setMeasuredDimension(Rect paramRect, int paramInt1, int paramInt2)
  {
    int i1 = getPaddingLeft() + getPaddingRight();
    int i2 = getPaddingTop() + getPaddingBottom();
    if (this.e == 1)
    {
      paramInt2 = RecyclerView.o.chooseSize(paramInt2, paramRect.height() + i2, getMinimumHeight());
      paramInt1 = RecyclerView.o.chooseSize(paramInt1, this.f * this.a + i1, getMinimumWidth());
    }
    else
    {
      paramInt1 = RecyclerView.o.chooseSize(paramInt1, paramRect.width() + i1, getMinimumWidth());
      paramInt2 = RecyclerView.o.chooseSize(paramInt2, this.f * this.a + i2, getMinimumHeight());
    }
    setMeasuredDimension(paramInt1, paramInt2);
  }
  
  public void setOrientation(int paramInt)
  {
    if ((paramInt != 0) && (paramInt != 1)) {
      throw new IllegalArgumentException("invalid orientation.");
    }
    assertNotInLayoutOrScroll(null);
    if (paramInt == this.e) {
      return;
    }
    this.e = paramInt;
    k localk = this.c;
    this.c = this.d;
    this.d = localk;
    requestLayout();
  }
  
  public void setReverseLayout(boolean paramBoolean)
  {
    assertNotInLayoutOrScroll(null);
    SavedState localSavedState = this.q;
    if ((localSavedState != null) && (localSavedState.mReverseLayout != paramBoolean)) {
      localSavedState.mReverseLayout = paramBoolean;
    }
    this.h = paramBoolean;
    requestLayout();
  }
  
  public void smoothScrollToPosition(RecyclerView paramRecyclerView, RecyclerView.z paramz, int paramInt)
  {
    paramRecyclerView = new h(paramRecyclerView.getContext());
    paramRecyclerView.setTargetPosition(paramInt);
    startSmoothScroll(paramRecyclerView);
  }
  
  public boolean supportsPredictiveItemAnimations()
  {
    boolean bool;
    if (this.q == null) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  int t()
  {
    int i1 = getChildCount();
    int i2 = 0;
    if (i1 != 0) {
      i2 = getPosition(getChildAt(0));
    }
    return i2;
  }
  
  int u()
  {
    int i1 = getChildCount();
    if (i1 == 0) {
      i1 = 0;
    } else {
      i1 = getPosition(getChildAt(i1 - 1));
    }
    return i1;
  }
  
  static class LazySpanLookup
  {
    int[] a;
    List<FullSpanItem> b;
    
    private int i(int paramInt)
    {
      if (this.b == null) {
        return -1;
      }
      FullSpanItem localFullSpanItem = f(paramInt);
      if (localFullSpanItem != null) {
        this.b.remove(localFullSpanItem);
      }
      int i = this.b.size();
      for (int j = 0; j < i; j++) {
        if (((FullSpanItem)this.b.get(j)).mPosition >= paramInt) {
          break label82;
        }
      }
      j = -1;
      label82:
      if (j != -1)
      {
        localFullSpanItem = (FullSpanItem)this.b.get(j);
        this.b.remove(j);
        return localFullSpanItem.mPosition;
      }
      return -1;
    }
    
    private void l(int paramInt1, int paramInt2)
    {
      Object localObject = this.b;
      if (localObject == null) {
        return;
      }
      for (int i = ((List)localObject).size() - 1; i >= 0; i--)
      {
        localObject = (FullSpanItem)this.b.get(i);
        int j = ((FullSpanItem)localObject).mPosition;
        if (j >= paramInt1) {
          ((FullSpanItem)localObject).mPosition = (j + paramInt2);
        }
      }
    }
    
    private void m(int paramInt1, int paramInt2)
    {
      Object localObject = this.b;
      if (localObject == null) {
        return;
      }
      for (int i = ((List)localObject).size() - 1; i >= 0; i--)
      {
        localObject = (FullSpanItem)this.b.get(i);
        int j = ((FullSpanItem)localObject).mPosition;
        if (j >= paramInt1) {
          if (j < paramInt1 + paramInt2) {
            this.b.remove(i);
          } else {
            ((FullSpanItem)localObject).mPosition = (j - paramInt2);
          }
        }
      }
    }
    
    public void a(FullSpanItem paramFullSpanItem)
    {
      if (this.b == null) {
        this.b = new ArrayList();
      }
      int i = this.b.size();
      for (int j = 0; j < i; j++)
      {
        FullSpanItem localFullSpanItem = (FullSpanItem)this.b.get(j);
        if (localFullSpanItem.mPosition == paramFullSpanItem.mPosition) {
          this.b.remove(j);
        }
        if (localFullSpanItem.mPosition >= paramFullSpanItem.mPosition)
        {
          this.b.add(j, paramFullSpanItem);
          return;
        }
      }
      this.b.add(paramFullSpanItem);
    }
    
    void b()
    {
      int[] arrayOfInt = this.a;
      if (arrayOfInt != null) {
        Arrays.fill(arrayOfInt, -1);
      }
      this.b = null;
    }
    
    void c(int paramInt)
    {
      int[] arrayOfInt1 = this.a;
      if (arrayOfInt1 == null)
      {
        arrayOfInt1 = new int[Math.max(paramInt, 10) + 1];
        this.a = arrayOfInt1;
        Arrays.fill(arrayOfInt1, -1);
      }
      else if (paramInt >= arrayOfInt1.length)
      {
        int[] arrayOfInt2 = new int[o(paramInt)];
        this.a = arrayOfInt2;
        System.arraycopy(arrayOfInt1, 0, arrayOfInt2, 0, arrayOfInt1.length);
        arrayOfInt2 = this.a;
        Arrays.fill(arrayOfInt2, arrayOfInt1.length, arrayOfInt2.length, -1);
      }
    }
    
    int d(int paramInt)
    {
      List localList = this.b;
      if (localList != null) {
        for (int i = localList.size() - 1; i >= 0; i--) {
          if (((FullSpanItem)this.b.get(i)).mPosition >= paramInt) {
            this.b.remove(i);
          }
        }
      }
      return h(paramInt);
    }
    
    public FullSpanItem e(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
    {
      Object localObject = this.b;
      if (localObject == null) {
        return null;
      }
      int i = ((List)localObject).size();
      for (int j = 0; j < i; j++)
      {
        localObject = (FullSpanItem)this.b.get(j);
        int k = ((FullSpanItem)localObject).mPosition;
        if (k >= paramInt2) {
          return null;
        }
        if ((k >= paramInt1) && ((paramInt3 == 0) || (((FullSpanItem)localObject).mGapDir == paramInt3) || ((paramBoolean) && (((FullSpanItem)localObject).mHasUnwantedGapAfter)))) {
          return localObject;
        }
      }
      return null;
    }
    
    public FullSpanItem f(int paramInt)
    {
      Object localObject = this.b;
      if (localObject == null) {
        return null;
      }
      for (int i = ((List)localObject).size() - 1; i >= 0; i--)
      {
        localObject = (FullSpanItem)this.b.get(i);
        if (((FullSpanItem)localObject).mPosition == paramInt) {
          return localObject;
        }
      }
      return null;
    }
    
    int g(int paramInt)
    {
      int[] arrayOfInt = this.a;
      if ((arrayOfInt != null) && (paramInt < arrayOfInt.length)) {
        return arrayOfInt[paramInt];
      }
      return -1;
    }
    
    int h(int paramInt)
    {
      int[] arrayOfInt = this.a;
      if (arrayOfInt == null) {
        return -1;
      }
      if (paramInt >= arrayOfInt.length) {
        return -1;
      }
      int i = i(paramInt);
      if (i == -1)
      {
        arrayOfInt = this.a;
        Arrays.fill(arrayOfInt, paramInt, arrayOfInt.length, -1);
        return this.a.length;
      }
      arrayOfInt = this.a;
      i++;
      Arrays.fill(arrayOfInt, paramInt, i, -1);
      return i;
    }
    
    void j(int paramInt1, int paramInt2)
    {
      int[] arrayOfInt = this.a;
      if ((arrayOfInt != null) && (paramInt1 < arrayOfInt.length))
      {
        int i = paramInt1 + paramInt2;
        c(i);
        arrayOfInt = this.a;
        System.arraycopy(arrayOfInt, paramInt1, arrayOfInt, i, arrayOfInt.length - paramInt1 - paramInt2);
        Arrays.fill(this.a, paramInt1, i, -1);
        l(paramInt1, paramInt2);
      }
    }
    
    void k(int paramInt1, int paramInt2)
    {
      int[] arrayOfInt = this.a;
      if ((arrayOfInt != null) && (paramInt1 < arrayOfInt.length))
      {
        int i = paramInt1 + paramInt2;
        c(i);
        arrayOfInt = this.a;
        System.arraycopy(arrayOfInt, i, arrayOfInt, paramInt1, arrayOfInt.length - paramInt1 - paramInt2);
        arrayOfInt = this.a;
        Arrays.fill(arrayOfInt, arrayOfInt.length - paramInt2, arrayOfInt.length, -1);
        m(paramInt1, paramInt2);
      }
    }
    
    void n(int paramInt, StaggeredGridLayoutManager.d paramd)
    {
      c(paramInt);
      this.a[paramInt] = paramd.e;
    }
    
    int o(int paramInt)
    {
      int i = this.a.length;
      while (i <= paramInt) {
        i *= 2;
      }
      return i;
    }
    
    @SuppressLint({"BanParcelableUsage"})
    static class FullSpanItem
      implements Parcelable
    {
      public static final Parcelable.Creator<FullSpanItem> CREATOR = new a();
      int mGapDir;
      int[] mGapPerSpan;
      boolean mHasUnwantedGapAfter;
      int mPosition;
      
      FullSpanItem() {}
      
      FullSpanItem(Parcel paramParcel)
      {
        this.mPosition = paramParcel.readInt();
        this.mGapDir = paramParcel.readInt();
        int i = paramParcel.readInt();
        boolean bool = true;
        if (i != 1) {
          bool = false;
        }
        this.mHasUnwantedGapAfter = bool;
        i = paramParcel.readInt();
        if (i > 0)
        {
          int[] arrayOfInt = new int[i];
          this.mGapPerSpan = arrayOfInt;
          paramParcel.readIntArray(arrayOfInt);
        }
      }
      
      public int describeContents()
      {
        return 0;
      }
      
      int getGapForSpan(int paramInt)
      {
        int[] arrayOfInt = this.mGapPerSpan;
        if (arrayOfInt == null) {
          paramInt = 0;
        } else {
          paramInt = arrayOfInt[paramInt];
        }
        return paramInt;
      }
      
      public String toString()
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("FullSpanItem{mPosition=");
        localStringBuilder.append(this.mPosition);
        localStringBuilder.append(", mGapDir=");
        localStringBuilder.append(this.mGapDir);
        localStringBuilder.append(", mHasUnwantedGapAfter=");
        localStringBuilder.append(this.mHasUnwantedGapAfter);
        localStringBuilder.append(", mGapPerSpan=");
        localStringBuilder.append(Arrays.toString(this.mGapPerSpan));
        localStringBuilder.append('}');
        return localStringBuilder.toString();
      }
      
      public void writeToParcel(Parcel paramParcel, int paramInt)
      {
        paramParcel.writeInt(this.mPosition);
        paramParcel.writeInt(this.mGapDir);
        paramParcel.writeInt(this.mHasUnwantedGapAfter);
        int[] arrayOfInt = this.mGapPerSpan;
        if ((arrayOfInt != null) && (arrayOfInt.length > 0))
        {
          paramParcel.writeInt(arrayOfInt.length);
          paramParcel.writeIntArray(this.mGapPerSpan);
        }
        else
        {
          paramParcel.writeInt(0);
        }
      }
      
      static final class a
        implements Parcelable.Creator<StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem>
      {
        public StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem a(Parcel paramParcel)
        {
          return new StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem(paramParcel);
        }
        
        public StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem[] b(int paramInt)
        {
          return new StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem[paramInt];
        }
      }
    }
  }
  
  @SuppressLint({"BanParcelableUsage"})
  public static class SavedState
    implements Parcelable
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new a();
    boolean mAnchorLayoutFromEnd;
    int mAnchorPosition;
    List<StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem> mFullSpanItems;
    boolean mLastLayoutRTL;
    boolean mReverseLayout;
    int[] mSpanLookup;
    int mSpanLookupSize;
    int[] mSpanOffsets;
    int mSpanOffsetsSize;
    int mVisibleAnchorPosition;
    
    public SavedState() {}
    
    SavedState(Parcel paramParcel)
    {
      this.mAnchorPosition = paramParcel.readInt();
      this.mVisibleAnchorPosition = paramParcel.readInt();
      int i = paramParcel.readInt();
      this.mSpanOffsetsSize = i;
      int[] arrayOfInt;
      if (i > 0)
      {
        arrayOfInt = new int[i];
        this.mSpanOffsets = arrayOfInt;
        paramParcel.readIntArray(arrayOfInt);
      }
      i = paramParcel.readInt();
      this.mSpanLookupSize = i;
      if (i > 0)
      {
        arrayOfInt = new int[i];
        this.mSpanLookup = arrayOfInt;
        paramParcel.readIntArray(arrayOfInt);
      }
      i = paramParcel.readInt();
      boolean bool1 = false;
      if (i == 1) {
        bool2 = true;
      } else {
        bool2 = false;
      }
      this.mReverseLayout = bool2;
      if (paramParcel.readInt() == 1) {
        bool2 = true;
      } else {
        bool2 = false;
      }
      this.mAnchorLayoutFromEnd = bool2;
      boolean bool2 = bool1;
      if (paramParcel.readInt() == 1) {
        bool2 = true;
      }
      this.mLastLayoutRTL = bool2;
      this.mFullSpanItems = paramParcel.readArrayList(StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem.class.getClassLoader());
    }
    
    public SavedState(SavedState paramSavedState)
    {
      this.mSpanOffsetsSize = paramSavedState.mSpanOffsetsSize;
      this.mAnchorPosition = paramSavedState.mAnchorPosition;
      this.mVisibleAnchorPosition = paramSavedState.mVisibleAnchorPosition;
      this.mSpanOffsets = paramSavedState.mSpanOffsets;
      this.mSpanLookupSize = paramSavedState.mSpanLookupSize;
      this.mSpanLookup = paramSavedState.mSpanLookup;
      this.mReverseLayout = paramSavedState.mReverseLayout;
      this.mAnchorLayoutFromEnd = paramSavedState.mAnchorLayoutFromEnd;
      this.mLastLayoutRTL = paramSavedState.mLastLayoutRTL;
      this.mFullSpanItems = paramSavedState.mFullSpanItems;
    }
    
    public int describeContents()
    {
      return 0;
    }
    
    void invalidateAnchorPositionInfo()
    {
      this.mSpanOffsets = null;
      this.mSpanOffsetsSize = 0;
      this.mAnchorPosition = -1;
      this.mVisibleAnchorPosition = -1;
    }
    
    void invalidateSpanInfo()
    {
      this.mSpanOffsets = null;
      this.mSpanOffsetsSize = 0;
      this.mSpanLookupSize = 0;
      this.mSpanLookup = null;
      this.mFullSpanItems = null;
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeInt(this.mAnchorPosition);
      paramParcel.writeInt(this.mVisibleAnchorPosition);
      paramParcel.writeInt(this.mSpanOffsetsSize);
      if (this.mSpanOffsetsSize > 0) {
        paramParcel.writeIntArray(this.mSpanOffsets);
      }
      paramParcel.writeInt(this.mSpanLookupSize);
      if (this.mSpanLookupSize > 0) {
        paramParcel.writeIntArray(this.mSpanLookup);
      }
      paramParcel.writeInt(this.mReverseLayout);
      paramParcel.writeInt(this.mAnchorLayoutFromEnd);
      paramParcel.writeInt(this.mLastLayoutRTL);
      paramParcel.writeList(this.mFullSpanItems);
    }
    
    static final class a
      implements Parcelable.Creator<StaggeredGridLayoutManager.SavedState>
    {
      public StaggeredGridLayoutManager.SavedState a(Parcel paramParcel)
      {
        return new StaggeredGridLayoutManager.SavedState(paramParcel);
      }
      
      public StaggeredGridLayoutManager.SavedState[] b(int paramInt)
      {
        return new StaggeredGridLayoutManager.SavedState[paramInt];
      }
    }
  }
  
  class a
    implements Runnable
  {
    a() {}
    
    public void run()
    {
      StaggeredGridLayoutManager.this.g();
    }
  }
  
  class b
  {
    int a;
    int b;
    boolean c;
    boolean d;
    boolean e;
    int[] f;
    
    b()
    {
      c();
    }
    
    void a()
    {
      int i;
      if (this.c) {
        i = StaggeredGridLayoutManager.this.c.i();
      } else {
        i = StaggeredGridLayoutManager.this.c.m();
      }
      this.b = i;
    }
    
    void b(int paramInt)
    {
      if (this.c) {
        this.b = (StaggeredGridLayoutManager.this.c.i() - paramInt);
      } else {
        this.b = (StaggeredGridLayoutManager.this.c.m() + paramInt);
      }
    }
    
    void c()
    {
      this.a = -1;
      this.b = -2147483648;
      this.c = false;
      this.d = false;
      this.e = false;
      int[] arrayOfInt = this.f;
      if (arrayOfInt != null) {
        Arrays.fill(arrayOfInt, -1);
      }
    }
    
    void d(StaggeredGridLayoutManager.d[] paramArrayOfd)
    {
      int i = paramArrayOfd.length;
      int[] arrayOfInt = this.f;
      if ((arrayOfInt == null) || (arrayOfInt.length < i)) {
        this.f = new int[StaggeredGridLayoutManager.this.b.length];
      }
      for (int j = 0; j < i; j++) {
        this.f[j] = paramArrayOfd[j].p(-2147483648);
      }
    }
  }
  
  public static class c
    extends RecyclerView.p
  {
    StaggeredGridLayoutManager.d a;
    boolean b;
    
    public c(int paramInt1, int paramInt2)
    {
      super(paramInt2);
    }
    
    public c(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
    }
    
    public c(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public c(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      super();
    }
    
    public final int a()
    {
      StaggeredGridLayoutManager.d locald = this.a;
      if (locald == null) {
        return -1;
      }
      return locald.e;
    }
    
    public boolean b()
    {
      return this.b;
    }
  }
  
  class d
  {
    ArrayList<View> a = new ArrayList();
    int b = -2147483648;
    int c = -2147483648;
    int d = 0;
    final int e;
    
    d(int paramInt)
    {
      this.e = paramInt;
    }
    
    void a(View paramView)
    {
      StaggeredGridLayoutManager.c localc = n(paramView);
      localc.a = this;
      this.a.add(paramView);
      this.c = -2147483648;
      if (this.a.size() == 1) {
        this.b = -2147483648;
      }
      if ((localc.isItemRemoved()) || (localc.isItemChanged())) {
        this.d += StaggeredGridLayoutManager.this.c.e(paramView);
      }
    }
    
    void b(boolean paramBoolean, int paramInt)
    {
      int i;
      if (paramBoolean) {
        i = l(-2147483648);
      } else {
        i = p(-2147483648);
      }
      e();
      if (i == -2147483648) {
        return;
      }
      if (((paramBoolean) && (i < StaggeredGridLayoutManager.this.c.i())) || ((!paramBoolean) && (i > StaggeredGridLayoutManager.this.c.m()))) {
        return;
      }
      int j = i;
      if (paramInt != -2147483648) {
        j = i + paramInt;
      }
      this.c = j;
      this.b = j;
    }
    
    void c()
    {
      Object localObject = this.a;
      localObject = (View)((ArrayList)localObject).get(((ArrayList)localObject).size() - 1);
      StaggeredGridLayoutManager.c localc = n((View)localObject);
      this.c = StaggeredGridLayoutManager.this.c.d((View)localObject);
      if (localc.b)
      {
        localObject = StaggeredGridLayoutManager.this.m.f(localc.getViewLayoutPosition());
        if ((localObject != null) && (((StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)localObject).mGapDir == 1)) {
          this.c += ((StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)localObject).getGapForSpan(this.e);
        }
      }
    }
    
    void d()
    {
      Object localObject = (View)this.a.get(0);
      StaggeredGridLayoutManager.c localc = n((View)localObject);
      this.b = StaggeredGridLayoutManager.this.c.g((View)localObject);
      if (localc.b)
      {
        localObject = StaggeredGridLayoutManager.this.m.f(localc.getViewLayoutPosition());
        if ((localObject != null) && (((StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)localObject).mGapDir == -1)) {
          this.b -= ((StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)localObject).getGapForSpan(this.e);
        }
      }
    }
    
    void e()
    {
      this.a.clear();
      q();
      this.d = 0;
    }
    
    public int f()
    {
      int i;
      if (StaggeredGridLayoutManager.this.h) {
        i = i(this.a.size() - 1, -1, true);
      } else {
        i = i(0, this.a.size(), true);
      }
      return i;
    }
    
    public int g()
    {
      int i;
      if (StaggeredGridLayoutManager.this.h) {
        i = i(0, this.a.size(), true);
      } else {
        i = i(this.a.size() - 1, -1, true);
      }
      return i;
    }
    
    int h(int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
    {
      int i = StaggeredGridLayoutManager.this.c.m();
      int j = StaggeredGridLayoutManager.this.c.i();
      int k;
      if (paramInt2 > paramInt1) {
        k = 1;
      } else {
        k = -1;
      }
      while (paramInt1 != paramInt2)
      {
        View localView = (View)this.a.get(paramInt1);
        int m = StaggeredGridLayoutManager.this.c.g(localView);
        int n = StaggeredGridLayoutManager.this.c.d(localView);
        int i1 = 0;
        int i2;
        if (paramBoolean3 ? m <= j : m < j) {
          i2 = 1;
        } else {
          i2 = 0;
        }
        if (paramBoolean3 ? n >= i : n > i) {
          i1 = 1;
        }
        if ((i2 != 0) && (i1 != 0)) {
          if ((paramBoolean1) && (paramBoolean2))
          {
            if ((m >= i) && (n <= j)) {
              return StaggeredGridLayoutManager.this.getPosition(localView);
            }
          }
          else
          {
            if (paramBoolean2) {
              return StaggeredGridLayoutManager.this.getPosition(localView);
            }
            if ((m < i) || (n > j)) {
              return StaggeredGridLayoutManager.this.getPosition(localView);
            }
          }
        }
        paramInt1 += k;
      }
      return -1;
    }
    
    int i(int paramInt1, int paramInt2, boolean paramBoolean)
    {
      return h(paramInt1, paramInt2, false, false, paramBoolean);
    }
    
    public int j()
    {
      return this.d;
    }
    
    int k()
    {
      int i = this.c;
      if (i != -2147483648) {
        return i;
      }
      c();
      return this.c;
    }
    
    int l(int paramInt)
    {
      int i = this.c;
      if (i != -2147483648) {
        return i;
      }
      if (this.a.size() == 0) {
        return paramInt;
      }
      c();
      return this.c;
    }
    
    public View m(int paramInt1, int paramInt2)
    {
      Object localObject1 = null;
      Object localObject2 = null;
      View localView;
      StaggeredGridLayoutManager localStaggeredGridLayoutManager;
      if (paramInt2 == -1)
      {
        int i = this.a.size();
        paramInt2 = 0;
        for (;;)
        {
          localObject1 = localObject2;
          if (paramInt2 >= i) {
            break;
          }
          localView = (View)this.a.get(paramInt2);
          localStaggeredGridLayoutManager = StaggeredGridLayoutManager.this;
          if (localStaggeredGridLayoutManager.h)
          {
            localObject1 = localObject2;
            if (localStaggeredGridLayoutManager.getPosition(localView) <= paramInt1) {
              break;
            }
          }
          localObject1 = StaggeredGridLayoutManager.this;
          if ((!((StaggeredGridLayoutManager)localObject1).h) && (((RecyclerView.o)localObject1).getPosition(localView) >= paramInt1))
          {
            localObject1 = localObject2;
            break;
          }
          localObject1 = localObject2;
          if (!localView.hasFocusable()) {
            break;
          }
          paramInt2++;
          localObject2 = localView;
        }
      }
      paramInt2 = this.a.size() - 1;
      for (localObject2 = localObject1;; localObject2 = localView)
      {
        localObject1 = localObject2;
        if (paramInt2 < 0) {
          break;
        }
        localView = (View)this.a.get(paramInt2);
        localStaggeredGridLayoutManager = StaggeredGridLayoutManager.this;
        if (localStaggeredGridLayoutManager.h)
        {
          localObject1 = localObject2;
          if (localStaggeredGridLayoutManager.getPosition(localView) >= paramInt1) {
            break;
          }
        }
        localObject1 = StaggeredGridLayoutManager.this;
        if ((!((StaggeredGridLayoutManager)localObject1).h) && (((RecyclerView.o)localObject1).getPosition(localView) <= paramInt1))
        {
          localObject1 = localObject2;
          break;
        }
        localObject1 = localObject2;
        if (!localView.hasFocusable()) {
          break;
        }
        paramInt2--;
      }
      return localObject1;
    }
    
    StaggeredGridLayoutManager.c n(View paramView)
    {
      return (StaggeredGridLayoutManager.c)paramView.getLayoutParams();
    }
    
    int o()
    {
      int i = this.b;
      if (i != -2147483648) {
        return i;
      }
      d();
      return this.b;
    }
    
    int p(int paramInt)
    {
      int i = this.b;
      if (i != -2147483648) {
        return i;
      }
      if (this.a.size() == 0) {
        return paramInt;
      }
      d();
      return this.b;
    }
    
    void q()
    {
      this.b = -2147483648;
      this.c = -2147483648;
    }
    
    void r(int paramInt)
    {
      int i = this.b;
      if (i != -2147483648) {
        this.b = (i + paramInt);
      }
      i = this.c;
      if (i != -2147483648) {
        this.c = (i + paramInt);
      }
    }
    
    void s()
    {
      int i = this.a.size();
      View localView = (View)this.a.remove(i - 1);
      StaggeredGridLayoutManager.c localc = n(localView);
      localc.a = null;
      if ((localc.isItemRemoved()) || (localc.isItemChanged())) {
        this.d -= StaggeredGridLayoutManager.this.c.e(localView);
      }
      if (i == 1) {
        this.b = -2147483648;
      }
      this.c = -2147483648;
    }
    
    void t()
    {
      View localView = (View)this.a.remove(0);
      StaggeredGridLayoutManager.c localc = n(localView);
      localc.a = null;
      if (this.a.size() == 0) {
        this.c = -2147483648;
      }
      if ((localc.isItemRemoved()) || (localc.isItemChanged())) {
        this.d -= StaggeredGridLayoutManager.this.c.e(localView);
      }
      this.b = -2147483648;
    }
    
    void u(View paramView)
    {
      StaggeredGridLayoutManager.c localc = n(paramView);
      localc.a = this;
      this.a.add(0, paramView);
      this.b = -2147483648;
      if (this.a.size() == 1) {
        this.c = -2147483648;
      }
      if ((localc.isItemRemoved()) || (localc.isItemChanged())) {
        this.d += StaggeredGridLayoutManager.this.c.e(paramView);
      }
    }
    
    void v(int paramInt)
    {
      this.b = paramInt;
      this.c = paramInt;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.recyclerview.widget.StaggeredGridLayoutManager
 * JD-Core Version:    0.7.0.1
 */
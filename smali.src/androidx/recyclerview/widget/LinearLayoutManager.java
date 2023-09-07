package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityRecord;
import java.util.List;

public class LinearLayoutManager
  extends RecyclerView.o
  implements RecyclerView.y.b
{
  static final boolean DEBUG = false;
  public static final int HORIZONTAL = 0;
  public static final int INVALID_OFFSET = -2147483648;
  private static final float MAX_SCROLL_FACTOR = 0.3333333F;
  private static final String TAG = "LinearLayoutManager";
  public static final int VERTICAL = 1;
  final a mAnchorInfo = new a();
  private int mInitialPrefetchItemCount = 2;
  private boolean mLastStackFromEnd;
  private final b mLayoutChunkResult = new b();
  private c mLayoutState;
  int mOrientation = 1;
  k mOrientationHelper;
  SavedState mPendingSavedState = null;
  int mPendingScrollPosition = -1;
  int mPendingScrollPositionOffset = -2147483648;
  private boolean mRecycleChildrenOnDetach;
  private int[] mReusableIntPair = new int[2];
  private boolean mReverseLayout = false;
  boolean mShouldReverseLayout = false;
  private boolean mSmoothScrollbarEnabled = true;
  private boolean mStackFromEnd = false;
  
  public LinearLayoutManager(Context paramContext)
  {
    this(paramContext, 1, false);
  }
  
  public LinearLayoutManager(Context paramContext, int paramInt, boolean paramBoolean)
  {
    setOrientation(paramInt);
    setReverseLayout(paramBoolean);
  }
  
  public LinearLayoutManager(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    paramContext = RecyclerView.o.getProperties(paramContext, paramAttributeSet, paramInt1, paramInt2);
    setOrientation(paramContext.a);
    setReverseLayout(paramContext.c);
    setStackFromEnd(paramContext.d);
  }
  
  private int computeScrollExtent(RecyclerView.z paramz)
  {
    if (getChildCount() == 0) {
      return 0;
    }
    ensureLayoutState();
    return q.a(paramz, this.mOrientationHelper, findFirstVisibleChildClosestToStart(this.mSmoothScrollbarEnabled ^ true, true), findFirstVisibleChildClosestToEnd(this.mSmoothScrollbarEnabled ^ true, true), this, this.mSmoothScrollbarEnabled);
  }
  
  private int computeScrollOffset(RecyclerView.z paramz)
  {
    if (getChildCount() == 0) {
      return 0;
    }
    ensureLayoutState();
    return q.b(paramz, this.mOrientationHelper, findFirstVisibleChildClosestToStart(this.mSmoothScrollbarEnabled ^ true, true), findFirstVisibleChildClosestToEnd(this.mSmoothScrollbarEnabled ^ true, true), this, this.mSmoothScrollbarEnabled, this.mShouldReverseLayout);
  }
  
  private int computeScrollRange(RecyclerView.z paramz)
  {
    if (getChildCount() == 0) {
      return 0;
    }
    ensureLayoutState();
    return q.c(paramz, this.mOrientationHelper, findFirstVisibleChildClosestToStart(this.mSmoothScrollbarEnabled ^ true, true), findFirstVisibleChildClosestToEnd(this.mSmoothScrollbarEnabled ^ true, true), this, this.mSmoothScrollbarEnabled);
  }
  
  private View findFirstPartiallyOrCompletelyInvisibleChild()
  {
    return findOnePartiallyOrCompletelyInvisibleChild(0, getChildCount());
  }
  
  private View findFirstReferenceChild(RecyclerView.v paramv, RecyclerView.z paramz)
  {
    return findReferenceChild(paramv, paramz, 0, getChildCount(), paramz.b());
  }
  
  private View findLastPartiallyOrCompletelyInvisibleChild()
  {
    return findOnePartiallyOrCompletelyInvisibleChild(getChildCount() - 1, -1);
  }
  
  private View findLastReferenceChild(RecyclerView.v paramv, RecyclerView.z paramz)
  {
    return findReferenceChild(paramv, paramz, getChildCount() - 1, -1, paramz.b());
  }
  
  private View findPartiallyOrCompletelyInvisibleChildClosestToEnd()
  {
    View localView;
    if (this.mShouldReverseLayout) {
      localView = findFirstPartiallyOrCompletelyInvisibleChild();
    } else {
      localView = findLastPartiallyOrCompletelyInvisibleChild();
    }
    return localView;
  }
  
  private View findPartiallyOrCompletelyInvisibleChildClosestToStart()
  {
    View localView;
    if (this.mShouldReverseLayout) {
      localView = findLastPartiallyOrCompletelyInvisibleChild();
    } else {
      localView = findFirstPartiallyOrCompletelyInvisibleChild();
    }
    return localView;
  }
  
  private View findReferenceChildClosestToEnd(RecyclerView.v paramv, RecyclerView.z paramz)
  {
    if (this.mShouldReverseLayout) {
      paramv = findFirstReferenceChild(paramv, paramz);
    } else {
      paramv = findLastReferenceChild(paramv, paramz);
    }
    return paramv;
  }
  
  private View findReferenceChildClosestToStart(RecyclerView.v paramv, RecyclerView.z paramz)
  {
    if (this.mShouldReverseLayout) {
      paramv = findLastReferenceChild(paramv, paramz);
    } else {
      paramv = findFirstReferenceChild(paramv, paramz);
    }
    return paramv;
  }
  
  private int fixLayoutEndGap(int paramInt, RecyclerView.v paramv, RecyclerView.z paramz, boolean paramBoolean)
  {
    int i = this.mOrientationHelper.i() - paramInt;
    if (i > 0)
    {
      i = -scrollBy(-i, paramv, paramz);
      if (paramBoolean)
      {
        paramInt = this.mOrientationHelper.i() - (paramInt + i);
        if (paramInt > 0)
        {
          this.mOrientationHelper.r(paramInt);
          return paramInt + i;
        }
      }
      return i;
    }
    return 0;
  }
  
  private int fixLayoutStartGap(int paramInt, RecyclerView.v paramv, RecyclerView.z paramz, boolean paramBoolean)
  {
    int i = paramInt - this.mOrientationHelper.m();
    if (i > 0)
    {
      int j = -scrollBy(i, paramv, paramz);
      i = j;
      if (paramBoolean)
      {
        paramInt = paramInt + j - this.mOrientationHelper.m();
        i = j;
        if (paramInt > 0)
        {
          this.mOrientationHelper.r(-paramInt);
          i = j - paramInt;
        }
      }
      return i;
    }
    return 0;
  }
  
  private View getChildClosestToEnd()
  {
    int i;
    if (this.mShouldReverseLayout) {
      i = 0;
    } else {
      i = getChildCount() - 1;
    }
    return getChildAt(i);
  }
  
  private View getChildClosestToStart()
  {
    int i;
    if (this.mShouldReverseLayout) {
      i = getChildCount() - 1;
    } else {
      i = 0;
    }
    return getChildAt(i);
  }
  
  private void layoutForPredictiveAnimations(RecyclerView.v paramv, RecyclerView.z paramz, int paramInt1, int paramInt2)
  {
    if ((paramz.g()) && (getChildCount() != 0) && (!paramz.e()) && (supportsPredictiveItemAnimations()))
    {
      List localList = paramv.k();
      int i = localList.size();
      int j = getPosition(getChildAt(0));
      int k = 0;
      int m = k;
      int n = m;
      int i1 = m;
      Object localObject;
      for (m = k; m < i; m++)
      {
        localObject = (RecyclerView.c0)localList.get(m);
        if (!((RecyclerView.c0)localObject).isRemoved())
        {
          int i2 = ((RecyclerView.c0)localObject).getLayoutPosition();
          k = 1;
          int i3;
          if (i2 < j) {
            i3 = 1;
          } else {
            i3 = 0;
          }
          if (i3 != this.mShouldReverseLayout) {
            k = -1;
          }
          if (k == -1) {
            i1 += this.mOrientationHelper.e(((RecyclerView.c0)localObject).itemView);
          } else {
            n += this.mOrientationHelper.e(((RecyclerView.c0)localObject).itemView);
          }
        }
      }
      this.mLayoutState.l = localList;
      if (i1 > 0)
      {
        updateLayoutStateToFillStart(getPosition(getChildClosestToStart()), paramInt1);
        localObject = this.mLayoutState;
        ((c)localObject).h = i1;
        ((c)localObject).c = 0;
        ((c)localObject).a();
        fill(paramv, this.mLayoutState, paramz, false);
      }
      if (n > 0)
      {
        updateLayoutStateToFillEnd(getPosition(getChildClosestToEnd()), paramInt2);
        localObject = this.mLayoutState;
        ((c)localObject).h = n;
        ((c)localObject).c = 0;
        ((c)localObject).a();
        fill(paramv, this.mLayoutState, paramz, false);
      }
      this.mLayoutState.l = null;
    }
  }
  
  private void logChildren()
  {
    Log.d("LinearLayoutManager", "internal representation of views on the screen");
    for (int i = 0; i < getChildCount(); i++)
    {
      View localView = getChildAt(i);
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("item ");
      localStringBuilder.append(getPosition(localView));
      localStringBuilder.append(", coord:");
      localStringBuilder.append(this.mOrientationHelper.g(localView));
      Log.d("LinearLayoutManager", localStringBuilder.toString());
    }
    Log.d("LinearLayoutManager", "==============");
  }
  
  private void recycleByLayoutState(RecyclerView.v paramv, c paramc)
  {
    if ((paramc.a) && (!paramc.m))
    {
      int i = paramc.g;
      int j = paramc.i;
      if (paramc.f == -1) {
        recycleViewsFromEnd(paramv, i, j);
      } else {
        recycleViewsFromStart(paramv, i, j);
      }
    }
  }
  
  private void recycleChildren(RecyclerView.v paramv, int paramInt1, int paramInt2)
  {
    if (paramInt1 == paramInt2) {
      return;
    }
    int i = paramInt1;
    if (paramInt2 > paramInt1)
    {
      paramInt2--;
      while (paramInt2 >= paramInt1)
      {
        removeAndRecycleViewAt(paramInt2, paramv);
        paramInt2--;
      }
    }
    while (i > paramInt2)
    {
      removeAndRecycleViewAt(i, paramv);
      i--;
    }
  }
  
  private void recycleViewsFromEnd(RecyclerView.v paramv, int paramInt1, int paramInt2)
  {
    int i = getChildCount();
    if (paramInt1 < 0) {
      return;
    }
    int j = this.mOrientationHelper.h() - paramInt1 + paramInt2;
    View localView;
    if (this.mShouldReverseLayout)
    {
      for (paramInt1 = 0;; paramInt1++)
      {
        if (paramInt1 >= i) {
          return;
        }
        localView = getChildAt(paramInt1);
        if ((this.mOrientationHelper.g(localView) < j) || (this.mOrientationHelper.q(localView) < j)) {
          break;
        }
      }
      recycleChildren(paramv, 0, paramInt1);
      return;
    }
    paramInt2 = i - 1;
    paramInt1 = paramInt2;
    while (paramInt1 >= 0)
    {
      localView = getChildAt(paramInt1);
      if ((this.mOrientationHelper.g(localView) >= j) && (this.mOrientationHelper.q(localView) >= j)) {
        paramInt1--;
      } else {
        recycleChildren(paramv, paramInt2, paramInt1);
      }
    }
  }
  
  private void recycleViewsFromStart(RecyclerView.v paramv, int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0) {
      return;
    }
    int i = paramInt1 - paramInt2;
    paramInt2 = getChildCount();
    View localView;
    if (this.mShouldReverseLayout)
    {
      paramInt2--;
      for (paramInt1 = paramInt2;; paramInt1--)
      {
        if (paramInt1 < 0) {
          return;
        }
        localView = getChildAt(paramInt1);
        if ((this.mOrientationHelper.d(localView) > i) || (this.mOrientationHelper.p(localView) > i)) {
          break;
        }
      }
      recycleChildren(paramv, paramInt2, paramInt1);
      return;
    }
    paramInt1 = 0;
    while (paramInt1 < paramInt2)
    {
      localView = getChildAt(paramInt1);
      if ((this.mOrientationHelper.d(localView) <= i) && (this.mOrientationHelper.p(localView) <= i)) {
        paramInt1++;
      } else {
        recycleChildren(paramv, 0, paramInt1);
      }
    }
  }
  
  private void resolveShouldLayoutReverse()
  {
    if ((this.mOrientation != 1) && (isLayoutRTL())) {
      this.mShouldReverseLayout = (this.mReverseLayout ^ true);
    } else {
      this.mShouldReverseLayout = this.mReverseLayout;
    }
  }
  
  private boolean updateAnchorFromChildren(RecyclerView.v paramv, RecyclerView.z paramz, a parama)
  {
    int i = getChildCount();
    int j = 0;
    if (i == 0) {
      return false;
    }
    View localView = getFocusedChild();
    if ((localView != null) && (parama.d(localView, paramz)))
    {
      parama.c(localView, getPosition(localView));
      return true;
    }
    if (this.mLastStackFromEnd != this.mStackFromEnd) {
      return false;
    }
    if (parama.d) {
      paramv = findReferenceChildClosestToEnd(paramv, paramz);
    } else {
      paramv = findReferenceChildClosestToStart(paramv, paramz);
    }
    if (paramv != null)
    {
      parama.b(paramv, getPosition(paramv));
      if ((!paramz.e()) && (supportsPredictiveItemAnimations()))
      {
        if ((this.mOrientationHelper.g(paramv) >= this.mOrientationHelper.i()) || (this.mOrientationHelper.d(paramv) < this.mOrientationHelper.m())) {
          j = 1;
        }
        if (j != 0)
        {
          if (parama.d) {
            j = this.mOrientationHelper.i();
          } else {
            j = this.mOrientationHelper.m();
          }
          parama.c = j;
        }
      }
      return true;
    }
    return false;
  }
  
  private boolean updateAnchorFromPendingData(RecyclerView.z paramz, a parama)
  {
    boolean bool1 = paramz.e();
    boolean bool2 = false;
    if (!bool1)
    {
      int i = this.mPendingScrollPosition;
      if (i != -1)
      {
        if ((i >= 0) && (i < paramz.b()))
        {
          parama.b = this.mPendingScrollPosition;
          paramz = this.mPendingSavedState;
          if ((paramz != null) && (paramz.hasValidAnchor()))
          {
            bool1 = this.mPendingSavedState.mAnchorLayoutFromEnd;
            parama.d = bool1;
            if (bool1) {
              parama.c = (this.mOrientationHelper.i() - this.mPendingSavedState.mAnchorOffset);
            } else {
              parama.c = (this.mOrientationHelper.m() + this.mPendingSavedState.mAnchorOffset);
            }
            return true;
          }
          if (this.mPendingScrollPositionOffset == -2147483648)
          {
            paramz = findViewByPosition(this.mPendingScrollPosition);
            if (paramz != null)
            {
              if (this.mOrientationHelper.e(paramz) > this.mOrientationHelper.n())
              {
                parama.a();
                return true;
              }
              if (this.mOrientationHelper.g(paramz) - this.mOrientationHelper.m() < 0)
              {
                parama.c = this.mOrientationHelper.m();
                parama.d = false;
                return true;
              }
              if (this.mOrientationHelper.i() - this.mOrientationHelper.d(paramz) < 0)
              {
                parama.c = this.mOrientationHelper.i();
                parama.d = true;
                return true;
              }
              if (parama.d) {
                i = this.mOrientationHelper.d(paramz) + this.mOrientationHelper.o();
              } else {
                i = this.mOrientationHelper.g(paramz);
              }
              parama.c = i;
            }
            else
            {
              if (getChildCount() > 0)
              {
                i = getPosition(getChildAt(0));
                if (this.mPendingScrollPosition < i) {
                  bool1 = true;
                } else {
                  bool1 = false;
                }
                if (bool1 == this.mShouldReverseLayout) {
                  bool2 = true;
                }
                parama.d = bool2;
              }
              parama.a();
            }
            return true;
          }
          bool1 = this.mShouldReverseLayout;
          parama.d = bool1;
          if (bool1) {
            parama.c = (this.mOrientationHelper.i() - this.mPendingScrollPositionOffset);
          } else {
            parama.c = (this.mOrientationHelper.m() + this.mPendingScrollPositionOffset);
          }
          return true;
        }
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = -2147483648;
      }
    }
    return false;
  }
  
  private void updateAnchorInfoForLayout(RecyclerView.v paramv, RecyclerView.z paramz, a parama)
  {
    if (updateAnchorFromPendingData(paramz, parama)) {
      return;
    }
    if (updateAnchorFromChildren(paramv, paramz, parama)) {
      return;
    }
    parama.a();
    int i;
    if (this.mStackFromEnd) {
      i = paramz.b() - 1;
    } else {
      i = 0;
    }
    parama.b = i;
  }
  
  private void updateLayoutState(int paramInt1, int paramInt2, boolean paramBoolean, RecyclerView.z paramz)
  {
    this.mLayoutState.m = resolveIsInfinite();
    this.mLayoutState.f = paramInt1;
    Object localObject1 = this.mReusableIntPair;
    int i = 0;
    localObject1[0] = 0;
    int j = 1;
    int k = 1;
    localObject1[1] = 0;
    calculateExtraLayoutSpace(paramz, (int[])localObject1);
    int m = Math.max(0, this.mReusableIntPair[0]);
    int n = Math.max(0, this.mReusableIntPair[1]);
    if (paramInt1 == 1) {
      i = 1;
    }
    paramz = this.mLayoutState;
    if (i != 0) {
      paramInt1 = n;
    } else {
      paramInt1 = m;
    }
    paramz.h = paramInt1;
    if (i == 0) {
      m = n;
    }
    paramz.i = m;
    Object localObject2;
    if (i != 0)
    {
      paramz.h = (paramInt1 + this.mOrientationHelper.j());
      localObject2 = getChildClosestToEnd();
      paramz = this.mLayoutState;
      paramInt1 = k;
      if (this.mShouldReverseLayout) {
        paramInt1 = -1;
      }
      paramz.e = paramInt1;
      paramInt1 = getPosition((View)localObject2);
      localObject1 = this.mLayoutState;
      paramz.d = (paramInt1 + ((c)localObject1).e);
      ((c)localObject1).b = this.mOrientationHelper.d((View)localObject2);
      paramInt1 = this.mOrientationHelper.d((View)localObject2) - this.mOrientationHelper.i();
    }
    else
    {
      paramz = getChildClosestToStart();
      localObject1 = this.mLayoutState;
      ((c)localObject1).h += this.mOrientationHelper.m();
      localObject2 = this.mLayoutState;
      if (this.mShouldReverseLayout) {
        paramInt1 = j;
      } else {
        paramInt1 = -1;
      }
      ((c)localObject2).e = paramInt1;
      paramInt1 = getPosition(paramz);
      localObject1 = this.mLayoutState;
      ((c)localObject2).d = (paramInt1 + ((c)localObject1).e);
      ((c)localObject1).b = this.mOrientationHelper.g(paramz);
      paramInt1 = -this.mOrientationHelper.g(paramz) + this.mOrientationHelper.m();
    }
    paramz = this.mLayoutState;
    paramz.c = paramInt2;
    if (paramBoolean) {
      paramz.c = (paramInt2 - paramInt1);
    }
    paramz.g = paramInt1;
  }
  
  private void updateLayoutStateToFillEnd(int paramInt1, int paramInt2)
  {
    this.mLayoutState.c = (this.mOrientationHelper.i() - paramInt2);
    c localc = this.mLayoutState;
    int i;
    if (this.mShouldReverseLayout) {
      i = -1;
    } else {
      i = 1;
    }
    localc.e = i;
    localc.d = paramInt1;
    localc.f = 1;
    localc.b = paramInt2;
    localc.g = -2147483648;
  }
  
  private void updateLayoutStateToFillEnd(a parama)
  {
    updateLayoutStateToFillEnd(parama.b, parama.c);
  }
  
  private void updateLayoutStateToFillStart(int paramInt1, int paramInt2)
  {
    this.mLayoutState.c = (paramInt2 - this.mOrientationHelper.m());
    c localc = this.mLayoutState;
    localc.d = paramInt1;
    if (this.mShouldReverseLayout) {
      paramInt1 = 1;
    } else {
      paramInt1 = -1;
    }
    localc.e = paramInt1;
    localc.f = -1;
    localc.b = paramInt2;
    localc.g = -2147483648;
  }
  
  private void updateLayoutStateToFillStart(a parama)
  {
    updateLayoutStateToFillStart(parama.b, parama.c);
  }
  
  public void assertNotInLayoutOrScroll(String paramString)
  {
    if (this.mPendingSavedState == null) {
      super.assertNotInLayoutOrScroll(paramString);
    }
  }
  
  protected void calculateExtraLayoutSpace(RecyclerView.z paramz, int[] paramArrayOfInt)
  {
    int i = getExtraLayoutSpace(paramz);
    int j;
    int k;
    if (this.mLayoutState.f == -1)
    {
      j = 0;
      k = i;
    }
    else
    {
      k = 0;
      j = i;
    }
    paramArrayOfInt[0] = k;
    paramArrayOfInt[1] = j;
  }
  
  public boolean canScrollHorizontally()
  {
    boolean bool;
    if (this.mOrientation == 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean canScrollVertically()
  {
    int i = this.mOrientation;
    boolean bool = true;
    if (i != 1) {
      bool = false;
    }
    return bool;
  }
  
  public void collectAdjacentPrefetchPositions(int paramInt1, int paramInt2, RecyclerView.z paramz, RecyclerView.o.c paramc)
  {
    if (this.mOrientation != 0) {
      paramInt1 = paramInt2;
    }
    if ((getChildCount() != 0) && (paramInt1 != 0))
    {
      ensureLayoutState();
      if (paramInt1 > 0) {
        paramInt2 = 1;
      } else {
        paramInt2 = -1;
      }
      updateLayoutState(paramInt2, Math.abs(paramInt1), true, paramz);
      collectPrefetchPositionsForLayoutState(paramz, this.mLayoutState, paramc);
    }
  }
  
  public void collectInitialPrefetchPositions(int paramInt, RecyclerView.o.c paramc)
  {
    SavedState localSavedState = this.mPendingSavedState;
    int i = -1;
    boolean bool1;
    int j;
    if ((localSavedState != null) && (localSavedState.hasValidAnchor()))
    {
      localSavedState = this.mPendingSavedState;
      bool1 = localSavedState.mAnchorLayoutFromEnd;
      j = localSavedState.mAnchorPosition;
    }
    else
    {
      resolveShouldLayoutReverse();
      boolean bool2 = this.mShouldReverseLayout;
      k = this.mPendingScrollPosition;
      j = k;
      bool1 = bool2;
      if (k == -1) {
        if (bool2)
        {
          j = paramInt - 1;
          bool1 = bool2;
        }
        else
        {
          j = 0;
          bool1 = bool2;
        }
      }
    }
    if (!bool1) {
      i = 1;
    }
    for (int k = 0; (k < this.mInitialPrefetchItemCount) && (j >= 0) && (j < paramInt); k++)
    {
      paramc.a(j, 0);
      j += i;
    }
  }
  
  void collectPrefetchPositionsForLayoutState(RecyclerView.z paramz, c paramc, RecyclerView.o.c paramc1)
  {
    int i = paramc.d;
    if ((i >= 0) && (i < paramz.b())) {
      paramc1.a(i, Math.max(0, paramc.g));
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
    if (getChildCount() == 0) {
      return null;
    }
    int i = 0;
    int j = getPosition(getChildAt(0));
    int k = 1;
    if (paramInt < j) {
      i = 1;
    }
    paramInt = k;
    if (i != this.mShouldReverseLayout) {
      paramInt = -1;
    }
    if (this.mOrientation == 0) {
      return new PointF(paramInt, 0.0F);
    }
    return new PointF(0.0F, paramInt);
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
  
  int convertFocusDirectionToLayoutDirection(int paramInt)
  {
    int i = -1;
    int j = 1;
    int k = 1;
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
              if (this.mOrientation == 1) {
                paramInt = k;
              } else {
                paramInt = -2147483648;
              }
              return paramInt;
            }
            if (this.mOrientation == 0) {
              paramInt = j;
            } else {
              paramInt = -2147483648;
            }
            return paramInt;
          }
          if (this.mOrientation != 1) {
            i = -2147483648;
          }
          return i;
        }
        if (this.mOrientation != 0) {
          i = -2147483648;
        }
        return i;
      }
      if (this.mOrientation == 1) {
        return 1;
      }
      if (isLayoutRTL()) {
        return -1;
      }
      return 1;
    }
    if (this.mOrientation == 1) {
      return -1;
    }
    if (isLayoutRTL()) {
      return 1;
    }
    return -1;
  }
  
  c createLayoutState()
  {
    return new c();
  }
  
  void ensureLayoutState()
  {
    if (this.mLayoutState == null) {
      this.mLayoutState = createLayoutState();
    }
  }
  
  int fill(RecyclerView.v paramv, c paramc, RecyclerView.z paramz, boolean paramBoolean)
  {
    int i = paramc.c;
    int j = paramc.g;
    if (j != -2147483648)
    {
      if (i < 0) {
        paramc.g = (j + i);
      }
      recycleByLayoutState(paramv, paramc);
    }
    int k = paramc.c + paramc.h;
    b localb = this.mLayoutChunkResult;
    do
    {
      do
      {
        if (((!paramc.m) && (k <= 0)) || (!paramc.c(paramz))) {
          break;
        }
        localb.a();
        layoutChunk(paramv, paramz, paramc, localb);
        if (localb.b) {
          break;
        }
        paramc.b += localb.a * paramc.f;
        int m;
        if ((localb.c) && (paramc.l == null))
        {
          j = k;
          if (paramz.e()) {}
        }
        else
        {
          j = paramc.c;
          m = localb.a;
          paramc.c = (j - m);
          j = k - m;
        }
        k = paramc.g;
        if (k != -2147483648)
        {
          k += localb.a;
          paramc.g = k;
          m = paramc.c;
          if (m < 0) {
            paramc.g = (k + m);
          }
          recycleByLayoutState(paramv, paramc);
        }
        k = j;
      } while (!paramBoolean);
      k = j;
    } while (!localb.d);
    return i - paramc.c;
  }
  
  public int findFirstCompletelyVisibleItemPosition()
  {
    View localView = findOneVisibleChild(0, getChildCount(), true, false);
    int i;
    if (localView == null) {
      i = -1;
    } else {
      i = getPosition(localView);
    }
    return i;
  }
  
  View findFirstVisibleChildClosestToEnd(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (this.mShouldReverseLayout) {
      return findOneVisibleChild(0, getChildCount(), paramBoolean1, paramBoolean2);
    }
    return findOneVisibleChild(getChildCount() - 1, -1, paramBoolean1, paramBoolean2);
  }
  
  View findFirstVisibleChildClosestToStart(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (this.mShouldReverseLayout) {
      return findOneVisibleChild(getChildCount() - 1, -1, paramBoolean1, paramBoolean2);
    }
    return findOneVisibleChild(0, getChildCount(), paramBoolean1, paramBoolean2);
  }
  
  public int findFirstVisibleItemPosition()
  {
    View localView = findOneVisibleChild(0, getChildCount(), false, true);
    int i;
    if (localView == null) {
      i = -1;
    } else {
      i = getPosition(localView);
    }
    return i;
  }
  
  public int findLastCompletelyVisibleItemPosition()
  {
    int i = getChildCount();
    int j = -1;
    View localView = findOneVisibleChild(i - 1, -1, true, false);
    if (localView != null) {
      j = getPosition(localView);
    }
    return j;
  }
  
  public int findLastVisibleItemPosition()
  {
    int i = getChildCount();
    int j = -1;
    View localView = findOneVisibleChild(i - 1, -1, false, true);
    if (localView != null) {
      j = getPosition(localView);
    }
    return j;
  }
  
  View findOnePartiallyOrCompletelyInvisibleChild(int paramInt1, int paramInt2)
  {
    ensureLayoutState();
    int i;
    if (paramInt2 > paramInt1) {
      i = 1;
    } else if (paramInt2 < paramInt1) {
      i = -1;
    } else {
      i = 0;
    }
    if (i == 0) {
      return getChildAt(paramInt1);
    }
    int j;
    if (this.mOrientationHelper.g(getChildAt(paramInt1)) < this.mOrientationHelper.m())
    {
      i = 16644;
      j = 16388;
    }
    else
    {
      i = 4161;
      j = 4097;
    }
    View localView;
    if (this.mOrientation == 0) {
      localView = this.mHorizontalBoundCheck.a(paramInt1, paramInt2, i, j);
    } else {
      localView = this.mVerticalBoundCheck.a(paramInt1, paramInt2, i, j);
    }
    return localView;
  }
  
  View findOneVisibleChild(int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    ensureLayoutState();
    int i = 320;
    int j;
    if (paramBoolean1) {
      j = 24579;
    } else {
      j = 320;
    }
    if (!paramBoolean2) {
      i = 0;
    }
    View localView;
    if (this.mOrientation == 0) {
      localView = this.mHorizontalBoundCheck.a(paramInt1, paramInt2, j, i);
    } else {
      localView = this.mVerticalBoundCheck.a(paramInt1, paramInt2, j, i);
    }
    return localView;
  }
  
  View findReferenceChild(RecyclerView.v paramv, RecyclerView.z paramz, int paramInt1, int paramInt2, int paramInt3)
  {
    ensureLayoutState();
    int i = this.mOrientationHelper.m();
    int j = this.mOrientationHelper.i();
    int k;
    if (paramInt2 > paramInt1) {
      k = 1;
    } else {
      k = -1;
    }
    paramz = null;
    Object localObject2;
    for (paramv = null; paramInt1 != paramInt2; paramv = (RecyclerView.v)localObject2)
    {
      View localView = getChildAt(paramInt1);
      int m = getPosition(localView);
      Object localObject1 = paramz;
      localObject2 = paramv;
      if (m >= 0)
      {
        localObject1 = paramz;
        localObject2 = paramv;
        if (m < paramInt3) {
          if (((RecyclerView.p)localView.getLayoutParams()).isItemRemoved())
          {
            localObject1 = paramz;
            localObject2 = paramv;
            if (paramv == null)
            {
              localObject2 = localView;
              localObject1 = paramz;
            }
          }
          else
          {
            if ((this.mOrientationHelper.g(localView) < j) && (this.mOrientationHelper.d(localView) >= i)) {
              return localView;
            }
            localObject1 = paramz;
            localObject2 = paramv;
            if (paramz == null)
            {
              localObject1 = localView;
              localObject2 = paramv;
            }
          }
        }
      }
      paramInt1 += k;
      paramz = (RecyclerView.z)localObject1;
    }
    if (paramz != null) {
      paramv = paramz;
    }
    return paramv;
  }
  
  public View findViewByPosition(int paramInt)
  {
    int i = getChildCount();
    if (i == 0) {
      return null;
    }
    int j = paramInt - getPosition(getChildAt(0));
    if ((j >= 0) && (j < i))
    {
      View localView = getChildAt(j);
      if (getPosition(localView) == paramInt) {
        return localView;
      }
    }
    return super.findViewByPosition(paramInt);
  }
  
  public RecyclerView.p generateDefaultLayoutParams()
  {
    return new RecyclerView.p(-2, -2);
  }
  
  @Deprecated
  protected int getExtraLayoutSpace(RecyclerView.z paramz)
  {
    if (paramz.d()) {
      return this.mOrientationHelper.n();
    }
    return 0;
  }
  
  public int getInitialPrefetchItemCount()
  {
    return this.mInitialPrefetchItemCount;
  }
  
  public int getOrientation()
  {
    return this.mOrientation;
  }
  
  public boolean getRecycleChildrenOnDetach()
  {
    return this.mRecycleChildrenOnDetach;
  }
  
  public boolean getReverseLayout()
  {
    return this.mReverseLayout;
  }
  
  public boolean getStackFromEnd()
  {
    return this.mStackFromEnd;
  }
  
  public boolean isAutoMeasureEnabled()
  {
    return true;
  }
  
  protected boolean isLayoutRTL()
  {
    int i = getLayoutDirection();
    boolean bool = true;
    if (i != 1) {
      bool = false;
    }
    return bool;
  }
  
  public boolean isSmoothScrollbarEnabled()
  {
    return this.mSmoothScrollbarEnabled;
  }
  
  void layoutChunk(RecyclerView.v paramv, RecyclerView.z paramz, c paramc, b paramb)
  {
    paramv = paramc.d(paramv);
    if (paramv == null)
    {
      paramb.b = true;
      return;
    }
    paramz = (RecyclerView.p)paramv.getLayoutParams();
    boolean bool1;
    boolean bool2;
    if (paramc.l == null)
    {
      bool1 = this.mShouldReverseLayout;
      if (paramc.f == -1) {
        bool2 = true;
      } else {
        bool2 = false;
      }
      if (bool1 == bool2) {
        addView(paramv);
      } else {
        addView(paramv, 0);
      }
    }
    else
    {
      bool1 = this.mShouldReverseLayout;
      if (paramc.f == -1) {
        bool2 = true;
      } else {
        bool2 = false;
      }
      if (bool1 == bool2) {
        addDisappearingView(paramv);
      } else {
        addDisappearingView(paramv, 0);
      }
    }
    measureChildWithMargins(paramv, 0, 0);
    paramb.a = this.mOrientationHelper.e(paramv);
    int i;
    int j;
    int k;
    int m;
    int n;
    int i1;
    if (this.mOrientation == 1)
    {
      if (isLayoutRTL())
      {
        i = getWidth() - getPaddingRight();
        j = i - this.mOrientationHelper.f(paramv);
      }
      else
      {
        j = getPaddingLeft();
        i = this.mOrientationHelper.f(paramv) + j;
      }
      if (paramc.f == -1)
      {
        k = paramc.b;
        m = paramb.a;
        n = k;
        i1 = i;
        i = k - m;
      }
      else
      {
        k = paramc.b;
        m = paramb.a;
        i1 = k;
        n = i;
        k = m + k;
        i = i1;
        i1 = n;
        n = k;
      }
    }
    else
    {
      j = getPaddingTop();
      i = this.mOrientationHelper.f(paramv) + j;
      if (paramc.f == -1)
      {
        m = paramc.b;
        int i2 = paramb.a;
        i1 = m;
        k = j;
        n = i;
        j = m - i2;
        i = k;
      }
      else
      {
        k = paramc.b;
        i1 = paramb.a;
        i1 += k;
        n = i;
        i = j;
        j = k;
      }
    }
    layoutDecoratedWithMargins(paramv, j, i, i1, n);
    if ((paramz.isItemRemoved()) || (paramz.isItemChanged())) {
      paramb.c = true;
    }
    paramb.d = paramv.hasFocusable();
  }
  
  void onAnchorReady(RecyclerView.v paramv, RecyclerView.z paramz, a parama, int paramInt) {}
  
  public void onDetachedFromWindow(RecyclerView paramRecyclerView, RecyclerView.v paramv)
  {
    super.onDetachedFromWindow(paramRecyclerView, paramv);
    if (this.mRecycleChildrenOnDetach)
    {
      removeAndRecycleAllViews(paramv);
      paramv.c();
    }
  }
  
  public View onFocusSearchFailed(View paramView, int paramInt, RecyclerView.v paramv, RecyclerView.z paramz)
  {
    resolveShouldLayoutReverse();
    if (getChildCount() == 0) {
      return null;
    }
    paramInt = convertFocusDirectionToLayoutDirection(paramInt);
    if (paramInt == -2147483648) {
      return null;
    }
    ensureLayoutState();
    updateLayoutState(paramInt, (int)(this.mOrientationHelper.n() * 0.3333333F), false, paramz);
    paramView = this.mLayoutState;
    paramView.g = -2147483648;
    paramView.a = false;
    fill(paramv, paramView, paramz, true);
    if (paramInt == -1) {
      paramView = findPartiallyOrCompletelyInvisibleChildClosestToStart();
    } else {
      paramView = findPartiallyOrCompletelyInvisibleChildClosestToEnd();
    }
    if (paramInt == -1) {
      paramv = getChildClosestToStart();
    } else {
      paramv = getChildClosestToEnd();
    }
    if (paramv.hasFocusable())
    {
      if (paramView == null) {
        return null;
      }
      return paramv;
    }
    return paramView;
  }
  
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    if (getChildCount() > 0)
    {
      paramAccessibilityEvent.setFromIndex(findFirstVisibleItemPosition());
      paramAccessibilityEvent.setToIndex(findLastVisibleItemPosition());
    }
  }
  
  public void onLayoutChildren(RecyclerView.v paramv, RecyclerView.z paramz)
  {
    Object localObject = this.mPendingSavedState;
    int i = -1;
    if (((localObject != null) || (this.mPendingScrollPosition != -1)) && (paramz.b() == 0))
    {
      removeAndRecycleAllViews(paramv);
      return;
    }
    localObject = this.mPendingSavedState;
    if ((localObject != null) && (((SavedState)localObject).hasValidAnchor())) {
      this.mPendingScrollPosition = this.mPendingSavedState.mAnchorPosition;
    }
    ensureLayoutState();
    this.mLayoutState.a = false;
    resolveShouldLayoutReverse();
    View localView = getFocusedChild();
    localObject = this.mAnchorInfo;
    if ((((a)localObject).e) && (this.mPendingScrollPosition == -1) && (this.mPendingSavedState == null))
    {
      if ((localView != null) && ((this.mOrientationHelper.g(localView) >= this.mOrientationHelper.i()) || (this.mOrientationHelper.d(localView) <= this.mOrientationHelper.m()))) {
        this.mAnchorInfo.c(localView, getPosition(localView));
      }
    }
    else
    {
      ((a)localObject).e();
      localObject = this.mAnchorInfo;
      ((a)localObject).d = (this.mShouldReverseLayout ^ this.mStackFromEnd);
      updateAnchorInfoForLayout(paramv, paramz, (a)localObject);
      this.mAnchorInfo.e = true;
    }
    localObject = this.mLayoutState;
    if (((c)localObject).k >= 0) {
      j = 1;
    } else {
      j = -1;
    }
    ((c)localObject).f = j;
    localObject = this.mReusableIntPair;
    localObject[0] = 0;
    localObject[1] = 0;
    calculateExtraLayoutSpace(paramz, (int[])localObject);
    int k = Math.max(0, this.mReusableIntPair[0]) + this.mOrientationHelper.m();
    int m = Math.max(0, this.mReusableIntPair[1]) + this.mOrientationHelper.j();
    int j = k;
    int n = m;
    int i1;
    if (paramz.e())
    {
      i1 = this.mPendingScrollPosition;
      j = k;
      n = m;
      if (i1 != -1)
      {
        j = k;
        n = m;
        if (this.mPendingScrollPositionOffset != -2147483648)
        {
          localObject = findViewByPosition(i1);
          j = k;
          n = m;
          if (localObject != null)
          {
            if (this.mShouldReverseLayout)
            {
              n = this.mOrientationHelper.i() - this.mOrientationHelper.d((View)localObject);
              j = this.mPendingScrollPositionOffset;
            }
            else
            {
              j = this.mOrientationHelper.g((View)localObject) - this.mOrientationHelper.m();
              n = this.mPendingScrollPositionOffset;
            }
            j = n - j;
            if (j > 0)
            {
              j = k + j;
              n = m;
            }
            else
            {
              n = m - j;
              j = k;
            }
          }
        }
      }
    }
    localObject = this.mAnchorInfo;
    if (((a)localObject).d)
    {
      if (!this.mShouldReverseLayout) {}
    }
    else {
      while (!this.mShouldReverseLayout)
      {
        i = 1;
        break;
      }
    }
    onAnchorReady(paramv, paramz, (a)localObject, i);
    detachAndScrapAttachedViews(paramv);
    this.mLayoutState.m = resolveIsInfinite();
    this.mLayoutState.j = paramz.e();
    this.mLayoutState.i = 0;
    localObject = this.mAnchorInfo;
    if (((a)localObject).d)
    {
      updateLayoutStateToFillStart((a)localObject);
      localObject = this.mLayoutState;
      ((c)localObject).h = j;
      fill(paramv, (c)localObject, paramz, false);
      localObject = this.mLayoutState;
      i = ((c)localObject).b;
      m = ((c)localObject).d;
      k = ((c)localObject).c;
      j = n;
      if (k > 0) {
        j = n + k;
      }
      updateLayoutStateToFillEnd(this.mAnchorInfo);
      localObject = this.mLayoutState;
      ((c)localObject).h = j;
      ((c)localObject).d += ((c)localObject).e;
      fill(paramv, (c)localObject, paramz, false);
      localObject = this.mLayoutState;
      k = ((c)localObject).b;
      i1 = ((c)localObject).c;
      n = i;
      j = k;
      if (i1 > 0)
      {
        updateLayoutStateToFillStart(m, i);
        localObject = this.mLayoutState;
        ((c)localObject).h = i1;
        fill(paramv, (c)localObject, paramz, false);
        n = this.mLayoutState.b;
        j = k;
      }
    }
    else
    {
      updateLayoutStateToFillEnd((a)localObject);
      localObject = this.mLayoutState;
      ((c)localObject).h = n;
      fill(paramv, (c)localObject, paramz, false);
      localObject = this.mLayoutState;
      i = ((c)localObject).b;
      m = ((c)localObject).d;
      k = ((c)localObject).c;
      n = j;
      if (k > 0) {
        n = j + k;
      }
      updateLayoutStateToFillStart(this.mAnchorInfo);
      localObject = this.mLayoutState;
      ((c)localObject).h = n;
      ((c)localObject).d += ((c)localObject).e;
      fill(paramv, (c)localObject, paramz, false);
      localObject = this.mLayoutState;
      k = ((c)localObject).b;
      i1 = ((c)localObject).c;
      n = k;
      j = i;
      if (i1 > 0)
      {
        updateLayoutStateToFillEnd(m, i);
        localObject = this.mLayoutState;
        ((c)localObject).h = i1;
        fill(paramv, (c)localObject, paramz, false);
        j = this.mLayoutState.b;
        n = k;
      }
    }
    k = n;
    i = j;
    if (getChildCount() > 0)
    {
      if ((this.mShouldReverseLayout ^ this.mStackFromEnd))
      {
        k = fixLayoutEndGap(j, paramv, paramz, true);
        i = n + k;
        j += k;
        n = fixLayoutStartGap(i, paramv, paramz, false);
      }
      else
      {
        k = fixLayoutStartGap(n, paramv, paramz, true);
        i = n + k;
        j += k;
        n = fixLayoutEndGap(j, paramv, paramz, false);
      }
      k = i + n;
      i = j + n;
    }
    layoutForPredictiveAnimations(paramv, paramz, k, i);
    if (!paramz.e()) {
      this.mOrientationHelper.s();
    } else {
      this.mAnchorInfo.e();
    }
    this.mLastStackFromEnd = this.mStackFromEnd;
  }
  
  public void onLayoutCompleted(RecyclerView.z paramz)
  {
    super.onLayoutCompleted(paramz);
    this.mPendingSavedState = null;
    this.mPendingScrollPosition = -1;
    this.mPendingScrollPositionOffset = -2147483648;
    this.mAnchorInfo.e();
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if ((paramParcelable instanceof SavedState))
    {
      this.mPendingSavedState = ((SavedState)paramParcelable);
      requestLayout();
    }
  }
  
  public Parcelable onSaveInstanceState()
  {
    if (this.mPendingSavedState != null) {
      return new SavedState(this.mPendingSavedState);
    }
    SavedState localSavedState = new SavedState();
    if (getChildCount() > 0)
    {
      ensureLayoutState();
      boolean bool = this.mLastStackFromEnd ^ this.mShouldReverseLayout;
      localSavedState.mAnchorLayoutFromEnd = bool;
      View localView;
      if (bool)
      {
        localView = getChildClosestToEnd();
        localSavedState.mAnchorOffset = (this.mOrientationHelper.i() - this.mOrientationHelper.d(localView));
        localSavedState.mAnchorPosition = getPosition(localView);
      }
      else
      {
        localView = getChildClosestToStart();
        localSavedState.mAnchorPosition = getPosition(localView);
        localSavedState.mAnchorOffset = (this.mOrientationHelper.g(localView) - this.mOrientationHelper.m());
      }
    }
    else
    {
      localSavedState.invalidateAnchor();
    }
    return localSavedState;
  }
  
  public void prepareForDrop(View paramView1, View paramView2, int paramInt1, int paramInt2)
  {
    assertNotInLayoutOrScroll("Cannot drop a view during a scroll or layout calculation");
    ensureLayoutState();
    resolveShouldLayoutReverse();
    paramInt1 = getPosition(paramView1);
    paramInt2 = getPosition(paramView2);
    if (paramInt1 < paramInt2) {
      paramInt1 = 1;
    } else {
      paramInt1 = -1;
    }
    if (this.mShouldReverseLayout)
    {
      if (paramInt1 == 1) {
        scrollToPositionWithOffset(paramInt2, this.mOrientationHelper.i() - (this.mOrientationHelper.g(paramView2) + this.mOrientationHelper.e(paramView1)));
      } else {
        scrollToPositionWithOffset(paramInt2, this.mOrientationHelper.i() - this.mOrientationHelper.d(paramView2));
      }
    }
    else if (paramInt1 == -1) {
      scrollToPositionWithOffset(paramInt2, this.mOrientationHelper.g(paramView2));
    } else {
      scrollToPositionWithOffset(paramInt2, this.mOrientationHelper.d(paramView2) - this.mOrientationHelper.e(paramView1));
    }
  }
  
  boolean resolveIsInfinite()
  {
    boolean bool;
    if ((this.mOrientationHelper.k() == 0) && (this.mOrientationHelper.h() == 0)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  int scrollBy(int paramInt, RecyclerView.v paramv, RecyclerView.z paramz)
  {
    if ((getChildCount() != 0) && (paramInt != 0))
    {
      ensureLayoutState();
      this.mLayoutState.a = true;
      int i;
      if (paramInt > 0) {
        i = 1;
      } else {
        i = -1;
      }
      int j = Math.abs(paramInt);
      updateLayoutState(i, j, true, paramz);
      c localc = this.mLayoutState;
      int k = localc.g + fill(paramv, localc, paramz, false);
      if (k < 0) {
        return 0;
      }
      if (j > k) {
        paramInt = i * k;
      }
      this.mOrientationHelper.r(-paramInt);
      this.mLayoutState.k = paramInt;
      return paramInt;
    }
    return 0;
  }
  
  public int scrollHorizontallyBy(int paramInt, RecyclerView.v paramv, RecyclerView.z paramz)
  {
    if (this.mOrientation == 1) {
      return 0;
    }
    return scrollBy(paramInt, paramv, paramz);
  }
  
  public void scrollToPosition(int paramInt)
  {
    this.mPendingScrollPosition = paramInt;
    this.mPendingScrollPositionOffset = -2147483648;
    SavedState localSavedState = this.mPendingSavedState;
    if (localSavedState != null) {
      localSavedState.invalidateAnchor();
    }
    requestLayout();
  }
  
  public void scrollToPositionWithOffset(int paramInt1, int paramInt2)
  {
    this.mPendingScrollPosition = paramInt1;
    this.mPendingScrollPositionOffset = paramInt2;
    SavedState localSavedState = this.mPendingSavedState;
    if (localSavedState != null) {
      localSavedState.invalidateAnchor();
    }
    requestLayout();
  }
  
  public int scrollVerticallyBy(int paramInt, RecyclerView.v paramv, RecyclerView.z paramz)
  {
    if (this.mOrientation == 0) {
      return 0;
    }
    return scrollBy(paramInt, paramv, paramz);
  }
  
  public void setInitialPrefetchItemCount(int paramInt)
  {
    this.mInitialPrefetchItemCount = paramInt;
  }
  
  public void setOrientation(int paramInt)
  {
    Object localObject;
    if ((paramInt != 0) && (paramInt != 1))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("invalid orientation:");
      ((StringBuilder)localObject).append(paramInt);
      throw new IllegalArgumentException(((StringBuilder)localObject).toString());
    }
    assertNotInLayoutOrScroll(null);
    if ((paramInt != this.mOrientation) || (this.mOrientationHelper == null))
    {
      localObject = k.b(this, paramInt);
      this.mOrientationHelper = ((k)localObject);
      this.mAnchorInfo.a = ((k)localObject);
      this.mOrientation = paramInt;
      requestLayout();
    }
  }
  
  public void setRecycleChildrenOnDetach(boolean paramBoolean)
  {
    this.mRecycleChildrenOnDetach = paramBoolean;
  }
  
  public void setReverseLayout(boolean paramBoolean)
  {
    assertNotInLayoutOrScroll(null);
    if (paramBoolean == this.mReverseLayout) {
      return;
    }
    this.mReverseLayout = paramBoolean;
    requestLayout();
  }
  
  public void setSmoothScrollbarEnabled(boolean paramBoolean)
  {
    this.mSmoothScrollbarEnabled = paramBoolean;
  }
  
  public void setStackFromEnd(boolean paramBoolean)
  {
    assertNotInLayoutOrScroll(null);
    if (this.mStackFromEnd == paramBoolean) {
      return;
    }
    this.mStackFromEnd = paramBoolean;
    requestLayout();
  }
  
  boolean shouldMeasureTwice()
  {
    boolean bool;
    if ((getHeightMode() != 1073741824) && (getWidthMode() != 1073741824) && (hasFlexibleChildInBothOrientations())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
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
    if ((this.mPendingSavedState == null) && (this.mLastStackFromEnd == this.mStackFromEnd)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  void validateChildOrder()
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("validating child count ");
    ((StringBuilder)localObject).append(getChildCount());
    Log.d("LinearLayoutManager", ((StringBuilder)localObject).toString());
    int i = getChildCount();
    boolean bool1 = true;
    boolean bool2 = true;
    if (i < 1) {
      return;
    }
    int j = getPosition(getChildAt(0));
    int k = this.mOrientationHelper.g(getChildAt(0));
    int m;
    int n;
    if (this.mShouldReverseLayout)
    {
      for (i = 1;; i++)
      {
        if (i >= getChildCount()) {
          return;
        }
        localObject = getChildAt(i);
        m = getPosition((View)localObject);
        n = this.mOrientationHelper.g((View)localObject);
        if (m < j)
        {
          logChildren();
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("detected invalid position. loc invalid? ");
          if (n >= k) {
            bool2 = false;
          }
          ((StringBuilder)localObject).append(bool2);
          throw new RuntimeException(((StringBuilder)localObject).toString());
        }
        if (n > k) {
          break;
        }
      }
      logChildren();
      throw new RuntimeException("detected invalid location");
    }
    i = 1;
    while (i < getChildCount())
    {
      localObject = getChildAt(i);
      n = getPosition((View)localObject);
      m = this.mOrientationHelper.g((View)localObject);
      if (n < j)
      {
        logChildren();
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("detected invalid position. loc invalid? ");
        if (m < k) {
          bool2 = bool1;
        } else {
          bool2 = false;
        }
        ((StringBuilder)localObject).append(bool2);
        throw new RuntimeException(((StringBuilder)localObject).toString());
      }
      if (m >= k)
      {
        i++;
      }
      else
      {
        logChildren();
        throw new RuntimeException("detected invalid location");
      }
    }
  }
  
  @SuppressLint({"BanParcelableUsage"})
  public static class SavedState
    implements Parcelable
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new a();
    boolean mAnchorLayoutFromEnd;
    int mAnchorOffset;
    int mAnchorPosition;
    
    public SavedState() {}
    
    SavedState(Parcel paramParcel)
    {
      this.mAnchorPosition = paramParcel.readInt();
      this.mAnchorOffset = paramParcel.readInt();
      int i = paramParcel.readInt();
      boolean bool = true;
      if (i != 1) {
        bool = false;
      }
      this.mAnchorLayoutFromEnd = bool;
    }
    
    public SavedState(SavedState paramSavedState)
    {
      this.mAnchorPosition = paramSavedState.mAnchorPosition;
      this.mAnchorOffset = paramSavedState.mAnchorOffset;
      this.mAnchorLayoutFromEnd = paramSavedState.mAnchorLayoutFromEnd;
    }
    
    public int describeContents()
    {
      return 0;
    }
    
    boolean hasValidAnchor()
    {
      boolean bool;
      if (this.mAnchorPosition >= 0) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    void invalidateAnchor()
    {
      this.mAnchorPosition = -1;
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeInt(this.mAnchorPosition);
      paramParcel.writeInt(this.mAnchorOffset);
      paramParcel.writeInt(this.mAnchorLayoutFromEnd);
    }
    
    static final class a
      implements Parcelable.Creator<LinearLayoutManager.SavedState>
    {
      public LinearLayoutManager.SavedState a(Parcel paramParcel)
      {
        return new LinearLayoutManager.SavedState(paramParcel);
      }
      
      public LinearLayoutManager.SavedState[] b(int paramInt)
      {
        return new LinearLayoutManager.SavedState[paramInt];
      }
    }
  }
  
  static class a
  {
    k a;
    int b;
    int c;
    boolean d;
    boolean e;
    
    a()
    {
      e();
    }
    
    void a()
    {
      int i;
      if (this.d) {
        i = this.a.i();
      } else {
        i = this.a.m();
      }
      this.c = i;
    }
    
    public void b(View paramView, int paramInt)
    {
      if (this.d) {
        this.c = (this.a.d(paramView) + this.a.o());
      } else {
        this.c = this.a.g(paramView);
      }
      this.b = paramInt;
    }
    
    public void c(View paramView, int paramInt)
    {
      int i = this.a.o();
      if (i >= 0)
      {
        b(paramView, paramInt);
        return;
      }
      this.b = paramInt;
      int j;
      int k;
      if (this.d)
      {
        paramInt = this.a.i() - i - this.a.d(paramView);
        this.c = (this.a.i() - paramInt);
        if (paramInt > 0)
        {
          j = this.a.e(paramView);
          i = this.c;
          k = this.a.m();
          i = i - j - (k + Math.min(this.a.g(paramView) - k, 0));
          if (i < 0) {
            this.c += Math.min(paramInt, -i);
          }
        }
      }
      else
      {
        k = this.a.g(paramView);
        paramInt = k - this.a.m();
        this.c = k;
        if (paramInt > 0)
        {
          int m = this.a.e(paramView);
          j = this.a.i();
          int n = this.a.d(paramView);
          i = this.a.i() - Math.min(0, j - i - n) - (k + m);
          if (i < 0) {
            this.c -= Math.min(paramInt, -i);
          }
        }
      }
    }
    
    boolean d(View paramView, RecyclerView.z paramz)
    {
      paramView = (RecyclerView.p)paramView.getLayoutParams();
      boolean bool;
      if ((!paramView.isItemRemoved()) && (paramView.getViewLayoutPosition() >= 0) && (paramView.getViewLayoutPosition() < paramz.b())) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    void e()
    {
      this.b = -1;
      this.c = -2147483648;
      this.d = false;
      this.e = false;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("AnchorInfo{mPosition=");
      localStringBuilder.append(this.b);
      localStringBuilder.append(", mCoordinate=");
      localStringBuilder.append(this.c);
      localStringBuilder.append(", mLayoutFromEnd=");
      localStringBuilder.append(this.d);
      localStringBuilder.append(", mValid=");
      localStringBuilder.append(this.e);
      localStringBuilder.append('}');
      return localStringBuilder.toString();
    }
  }
  
  protected static class b
  {
    public int a;
    public boolean b;
    public boolean c;
    public boolean d;
    
    void a()
    {
      this.a = 0;
      this.b = false;
      this.c = false;
      this.d = false;
    }
  }
  
  static class c
  {
    boolean a = true;
    int b;
    int c;
    int d;
    int e;
    int f;
    int g;
    int h = 0;
    int i = 0;
    boolean j = false;
    int k;
    List<RecyclerView.c0> l = null;
    boolean m;
    
    private View e()
    {
      int n = this.l.size();
      for (int i1 = 0; i1 < n; i1++)
      {
        View localView = ((RecyclerView.c0)this.l.get(i1)).itemView;
        RecyclerView.p localp = (RecyclerView.p)localView.getLayoutParams();
        if ((!localp.isItemRemoved()) && (this.d == localp.getViewLayoutPosition()))
        {
          b(localView);
          return localView;
        }
      }
      return null;
    }
    
    public void a()
    {
      b(null);
    }
    
    public void b(View paramView)
    {
      paramView = f(paramView);
      if (paramView == null) {
        this.d = -1;
      } else {
        this.d = ((RecyclerView.p)paramView.getLayoutParams()).getViewLayoutPosition();
      }
    }
    
    boolean c(RecyclerView.z paramz)
    {
      int n = this.d;
      boolean bool;
      if ((n >= 0) && (n < paramz.b())) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    View d(RecyclerView.v paramv)
    {
      if (this.l != null) {
        return e();
      }
      paramv = paramv.o(this.d);
      this.d += this.e;
      return paramv;
    }
    
    public View f(View paramView)
    {
      int n = this.l.size();
      Object localObject1 = null;
      int i1 = 2147483647;
      int i2 = 0;
      Object localObject2;
      for (;;)
      {
        localObject2 = localObject1;
        if (i2 >= n) {
          break;
        }
        View localView = ((RecyclerView.c0)this.l.get(i2)).itemView;
        RecyclerView.p localp = (RecyclerView.p)localView.getLayoutParams();
        localObject2 = localObject1;
        int i3 = i1;
        if (localView != paramView) {
          if (localp.isItemRemoved())
          {
            localObject2 = localObject1;
            i3 = i1;
          }
          else
          {
            int i4 = (localp.getViewLayoutPosition() - this.d) * this.e;
            if (i4 < 0)
            {
              localObject2 = localObject1;
              i3 = i1;
            }
            else
            {
              localObject2 = localObject1;
              i3 = i1;
              if (i4 < i1)
              {
                localObject1 = localView;
                if (i4 == 0)
                {
                  localObject2 = localObject1;
                  break;
                }
                i3 = i4;
                localObject2 = localObject1;
              }
            }
          }
        }
        i2++;
        localObject1 = localObject2;
        i1 = i3;
      }
      return localObject2;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.recyclerview.widget.LinearLayoutManager
 * JD-Core Version:    0.7.0.1
 */
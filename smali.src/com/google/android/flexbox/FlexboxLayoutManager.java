package com.google.android.flexbox;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.g;
import androidx.recyclerview.widget.RecyclerView.o;
import androidx.recyclerview.widget.RecyclerView.o.d;
import androidx.recyclerview.widget.RecyclerView.p;
import androidx.recyclerview.widget.RecyclerView.v;
import androidx.recyclerview.widget.RecyclerView.y;
import androidx.recyclerview.widget.RecyclerView.y.b;
import androidx.recyclerview.widget.RecyclerView.z;
import androidx.recyclerview.widget.h;
import androidx.recyclerview.widget.k;
import java.util.ArrayList;
import java.util.List;

public class FlexboxLayoutManager
  extends RecyclerView.o
  implements FlexContainer, RecyclerView.y.b
{
  private static final boolean DEBUG = false;
  private static final String TAG = "FlexboxLayoutManager";
  private static final Rect TEMP_RECT = new Rect();
  private int mAlignItems;
  private AnchorInfo mAnchorInfo = new AnchorInfo(null);
  private final Context mContext;
  private int mDirtyPosition = -1;
  private int mFlexDirection;
  private List<FlexLine> mFlexLines = new ArrayList();
  private FlexboxHelper.FlexLinesResult mFlexLinesResult = new FlexboxHelper.FlexLinesResult();
  private int mFlexWrap;
  private final FlexboxHelper mFlexboxHelper = new FlexboxHelper(this);
  private boolean mFromBottomToTop;
  private boolean mIsRtl;
  private int mJustifyContent;
  private int mLastHeight = -2147483648;
  private int mLastWidth = -2147483648;
  private LayoutState mLayoutState;
  private int mMaxLine = -1;
  private k mOrientationHelper;
  private View mParent;
  private SavedState mPendingSavedState;
  private int mPendingScrollPosition = -1;
  private int mPendingScrollPositionOffset = -2147483648;
  private boolean mRecycleChildrenOnDetach;
  private RecyclerView.v mRecycler;
  private RecyclerView.z mState;
  private k mSubOrientationHelper;
  private SparseArray<View> mViewCache = new SparseArray();
  
  public FlexboxLayoutManager(Context paramContext)
  {
    this(paramContext, 0, 1);
  }
  
  public FlexboxLayoutManager(Context paramContext, int paramInt)
  {
    this(paramContext, paramInt, 1);
  }
  
  public FlexboxLayoutManager(Context paramContext, int paramInt1, int paramInt2)
  {
    setFlexDirection(paramInt1);
    setFlexWrap(paramInt2);
    setAlignItems(4);
    setAutoMeasureEnabled(true);
    this.mContext = paramContext;
  }
  
  public FlexboxLayoutManager(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    paramAttributeSet = RecyclerView.o.getProperties(paramContext, paramAttributeSet, paramInt1, paramInt2);
    paramInt1 = paramAttributeSet.a;
    if (paramInt1 != 0)
    {
      if (paramInt1 == 1) {
        if (paramAttributeSet.c) {
          setFlexDirection(3);
        } else {
          setFlexDirection(2);
        }
      }
    }
    else if (paramAttributeSet.c) {
      setFlexDirection(1);
    } else {
      setFlexDirection(0);
    }
    setFlexWrap(1);
    setAlignItems(4);
    setAutoMeasureEnabled(true);
    this.mContext = paramContext;
  }
  
  private boolean canViewBeRecycledFromEnd(View paramView, int paramInt)
  {
    boolean bool1 = isMainAxisDirectionHorizontal();
    boolean bool2 = true;
    boolean bool3 = true;
    if ((!bool1) && (this.mIsRtl))
    {
      if (this.mOrientationHelper.d(paramView) > paramInt) {
        bool3 = false;
      }
      return bool3;
    }
    if (this.mOrientationHelper.g(paramView) >= this.mOrientationHelper.h() - paramInt) {
      bool3 = bool2;
    } else {
      bool3 = false;
    }
    return bool3;
  }
  
  private boolean canViewBeRecycledFromStart(View paramView, int paramInt)
  {
    boolean bool1 = isMainAxisDirectionHorizontal();
    boolean bool2 = true;
    boolean bool3 = true;
    if ((!bool1) && (this.mIsRtl))
    {
      if (this.mOrientationHelper.h() - this.mOrientationHelper.g(paramView) > paramInt) {
        bool3 = false;
      }
      return bool3;
    }
    if (this.mOrientationHelper.d(paramView) <= paramInt) {
      bool3 = bool2;
    } else {
      bool3 = false;
    }
    return bool3;
  }
  
  private void clearFlexLines()
  {
    this.mFlexLines.clear();
    this.mAnchorInfo.reset();
    AnchorInfo.access$2402(this.mAnchorInfo, 0);
  }
  
  private int computeScrollExtent(RecyclerView.z paramz)
  {
    if (getChildCount() == 0) {
      return 0;
    }
    int i = paramz.b();
    ensureOrientationHelper();
    View localView1 = findFirstReferenceChild(i);
    View localView2 = findLastReferenceChild(i);
    if ((paramz.b() != 0) && (localView1 != null) && (localView2 != null))
    {
      i = this.mOrientationHelper.d(localView2);
      int j = this.mOrientationHelper.g(localView1);
      return Math.min(this.mOrientationHelper.n(), i - j);
    }
    return 0;
  }
  
  private int computeScrollOffset(RecyclerView.z paramz)
  {
    if (getChildCount() == 0) {
      return 0;
    }
    int i = paramz.b();
    View localView1 = findFirstReferenceChild(i);
    View localView2 = findLastReferenceChild(i);
    if ((paramz.b() != 0) && (localView1 != null) && (localView2 != null))
    {
      int j = getPosition(localView1);
      int k = getPosition(localView2);
      i = Math.abs(this.mOrientationHelper.d(localView2) - this.mOrientationHelper.g(localView1));
      paramz = this.mFlexboxHelper.mIndexToFlexLine;
      j = paramz[j];
      if ((j != 0) && (j != -1))
      {
        k = paramz[k];
        float f = i / (k - j + 1);
        return Math.round(j * f + (this.mOrientationHelper.m() - this.mOrientationHelper.g(localView1)));
      }
    }
    return 0;
  }
  
  private int computeScrollRange(RecyclerView.z paramz)
  {
    if (getChildCount() == 0) {
      return 0;
    }
    int i = paramz.b();
    View localView1 = findFirstReferenceChild(i);
    View localView2 = findLastReferenceChild(i);
    if ((paramz.b() != 0) && (localView1 != null) && (localView2 != null))
    {
      i = findFirstVisibleItemPosition();
      int j = findLastVisibleItemPosition();
      return (int)(Math.abs(this.mOrientationHelper.d(localView2) - this.mOrientationHelper.g(localView1)) / (j - i + 1) * paramz.b());
    }
    return 0;
  }
  
  private void ensureLayoutState()
  {
    if (this.mLayoutState == null) {
      this.mLayoutState = new LayoutState(null);
    }
  }
  
  private void ensureOrientationHelper()
  {
    if (this.mOrientationHelper != null) {
      return;
    }
    if (isMainAxisDirectionHorizontal())
    {
      if (this.mFlexWrap == 0)
      {
        this.mOrientationHelper = k.a(this);
        this.mSubOrientationHelper = k.c(this);
      }
      else
      {
        this.mOrientationHelper = k.c(this);
        this.mSubOrientationHelper = k.a(this);
      }
    }
    else if (this.mFlexWrap == 0)
    {
      this.mOrientationHelper = k.c(this);
      this.mSubOrientationHelper = k.a(this);
    }
    else
    {
      this.mOrientationHelper = k.a(this);
      this.mSubOrientationHelper = k.c(this);
    }
  }
  
  private int fill(RecyclerView.v paramv, RecyclerView.z paramz, LayoutState paramLayoutState)
  {
    if (paramLayoutState.mScrollingOffset != -2147483648)
    {
      if (paramLayoutState.mAvailable < 0) {
        LayoutState.access$2002(paramLayoutState, paramLayoutState.mScrollingOffset + paramLayoutState.mAvailable);
      }
      recycleByLayoutState(paramv, paramLayoutState);
    }
    int i = paramLayoutState.mAvailable;
    int j = paramLayoutState.mAvailable;
    int k = 0;
    boolean bool = isMainAxisDirectionHorizontal();
    while (((j > 0) || (this.mLayoutState.mInfinite)) && (paramLayoutState.hasMore(paramz, this.mFlexLines)))
    {
      FlexLine localFlexLine = (FlexLine)this.mFlexLines.get(paramLayoutState.mFlexLinePosition);
      LayoutState.access$2202(paramLayoutState, localFlexLine.mFirstIndex);
      k += layoutFlexLine(localFlexLine, paramLayoutState);
      if ((!bool) && (this.mIsRtl)) {
        LayoutState.access$1002(paramLayoutState, paramLayoutState.mOffset - localFlexLine.getCrossSize() * paramLayoutState.mLayoutDirection);
      } else {
        LayoutState.access$1002(paramLayoutState, paramLayoutState.mOffset + localFlexLine.getCrossSize() * paramLayoutState.mLayoutDirection);
      }
      j -= localFlexLine.getCrossSize();
    }
    LayoutState.access$1202(paramLayoutState, paramLayoutState.mAvailable - k);
    if (paramLayoutState.mScrollingOffset != -2147483648)
    {
      LayoutState.access$2002(paramLayoutState, paramLayoutState.mScrollingOffset + k);
      if (paramLayoutState.mAvailable < 0) {
        LayoutState.access$2002(paramLayoutState, paramLayoutState.mScrollingOffset + paramLayoutState.mAvailable);
      }
      recycleByLayoutState(paramv, paramLayoutState);
    }
    return i - paramLayoutState.mAvailable;
  }
  
  private View findFirstReferenceChild(int paramInt)
  {
    View localView = findReferenceChild(0, getChildCount(), paramInt);
    if (localView == null) {
      return null;
    }
    paramInt = getPosition(localView);
    paramInt = this.mFlexboxHelper.mIndexToFlexLine[paramInt];
    if (paramInt == -1) {
      return null;
    }
    return findFirstReferenceViewInLine(localView, (FlexLine)this.mFlexLines.get(paramInt));
  }
  
  private View findFirstReferenceViewInLine(View paramView, FlexLine paramFlexLine)
  {
    boolean bool = isMainAxisDirectionHorizontal();
    int i = paramFlexLine.mItemCount;
    int j = 1;
    while (j < i)
    {
      View localView = getChildAt(j);
      paramFlexLine = paramView;
      if (localView != null) {
        if (localView.getVisibility() == 8)
        {
          paramFlexLine = paramView;
        }
        else
        {
          if ((this.mIsRtl) && (!bool))
          {
            paramFlexLine = paramView;
            if (this.mOrientationHelper.d(paramView) >= this.mOrientationHelper.d(localView)) {
              break label112;
            }
          }
          else
          {
            paramFlexLine = paramView;
            if (this.mOrientationHelper.g(paramView) <= this.mOrientationHelper.g(localView)) {
              break label112;
            }
          }
          paramFlexLine = localView;
        }
      }
      label112:
      j++;
      paramView = paramFlexLine;
    }
    return paramView;
  }
  
  private View findLastReferenceChild(int paramInt)
  {
    View localView = findReferenceChild(getChildCount() - 1, -1, paramInt);
    if (localView == null) {
      return null;
    }
    paramInt = getPosition(localView);
    paramInt = this.mFlexboxHelper.mIndexToFlexLine[paramInt];
    return findLastReferenceViewInLine(localView, (FlexLine)this.mFlexLines.get(paramInt));
  }
  
  private View findLastReferenceViewInLine(View paramView, FlexLine paramFlexLine)
  {
    boolean bool = isMainAxisDirectionHorizontal();
    int i = getChildCount() - 2;
    int j = getChildCount();
    int k = paramFlexLine.mItemCount;
    while (i > j - k - 1)
    {
      View localView = getChildAt(i);
      paramFlexLine = paramView;
      if (localView != null) {
        if (localView.getVisibility() == 8)
        {
          paramFlexLine = paramView;
        }
        else
        {
          if ((this.mIsRtl) && (!bool))
          {
            paramFlexLine = paramView;
            if (this.mOrientationHelper.g(paramView) <= this.mOrientationHelper.g(localView)) {
              break label128;
            }
          }
          else
          {
            paramFlexLine = paramView;
            if (this.mOrientationHelper.d(paramView) >= this.mOrientationHelper.d(localView)) {
              break label128;
            }
          }
          paramFlexLine = localView;
        }
      }
      label128:
      i--;
      paramView = paramFlexLine;
    }
    return paramView;
  }
  
  private View findOneVisibleChild(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int i;
    if (paramInt2 > paramInt1) {
      i = 1;
    } else {
      i = -1;
    }
    while (paramInt1 != paramInt2)
    {
      View localView = getChildAt(paramInt1);
      if (isViewVisible(localView, paramBoolean)) {
        return localView;
      }
      paramInt1 += i;
    }
    return null;
  }
  
  private View findReferenceChild(int paramInt1, int paramInt2, int paramInt3)
  {
    ensureOrientationHelper();
    ensureLayoutState();
    int i = this.mOrientationHelper.m();
    int j = this.mOrientationHelper.i();
    int k;
    if (paramInt2 > paramInt1) {
      k = 1;
    } else {
      k = -1;
    }
    Object localObject1 = null;
    Object localObject4;
    for (Object localObject2 = null; paramInt1 != paramInt2; localObject2 = localObject4)
    {
      View localView = getChildAt(paramInt1);
      int m = getPosition(localView);
      Object localObject3 = localObject1;
      localObject4 = localObject2;
      if (m >= 0)
      {
        localObject3 = localObject1;
        localObject4 = localObject2;
        if (m < paramInt3) {
          if (((RecyclerView.p)localView.getLayoutParams()).isItemRemoved())
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
            if ((this.mOrientationHelper.g(localView) >= i) && (this.mOrientationHelper.d(localView) <= j)) {
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
      paramInt1 += k;
      localObject1 = localObject3;
    }
    if (localObject1 != null) {
      localObject2 = localObject1;
    }
    return localObject2;
  }
  
  private int fixLayoutEndGap(int paramInt, RecyclerView.v paramv, RecyclerView.z paramz, boolean paramBoolean)
  {
    int i;
    if ((!isMainAxisDirectionHorizontal()) && (this.mIsRtl)) {
      i = 1;
    } else {
      i = 0;
    }
    if (i != 0)
    {
      i = paramInt - this.mOrientationHelper.m();
      if (i > 0) {
        i = handleScrollingMainOrientation(i, paramv, paramz);
      } else {
        return 0;
      }
    }
    else
    {
      i = this.mOrientationHelper.i() - paramInt;
      if (i <= 0) {
        break label125;
      }
      i = -handleScrollingMainOrientation(-i, paramv, paramz);
    }
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
    label125:
    return 0;
  }
  
  private int fixLayoutStartGap(int paramInt, RecyclerView.v paramv, RecyclerView.z paramz, boolean paramBoolean)
  {
    int i;
    if ((!isMainAxisDirectionHorizontal()) && (this.mIsRtl))
    {
      i = this.mOrientationHelper.i() - paramInt;
      if (i > 0) {
        i = handleScrollingMainOrientation(-i, paramv, paramz);
      } else {
        return 0;
      }
    }
    else
    {
      i = paramInt - this.mOrientationHelper.m();
      if (i <= 0) {
        break label121;
      }
      i = -handleScrollingMainOrientation(i, paramv, paramz);
    }
    int j = i;
    if (paramBoolean)
    {
      paramInt = paramInt + i - this.mOrientationHelper.m();
      j = i;
      if (paramInt > 0)
      {
        this.mOrientationHelper.r(-paramInt);
        j = i - paramInt;
      }
    }
    return j;
    label121:
    return 0;
  }
  
  private int getChildBottom(View paramView)
  {
    RecyclerView.p localp = (RecyclerView.p)paramView.getLayoutParams();
    return getDecoratedBottom(paramView) + localp.bottomMargin;
  }
  
  private View getChildClosestToStart()
  {
    return getChildAt(0);
  }
  
  private int getChildLeft(View paramView)
  {
    RecyclerView.p localp = (RecyclerView.p)paramView.getLayoutParams();
    return getDecoratedLeft(paramView) - localp.leftMargin;
  }
  
  private int getChildRight(View paramView)
  {
    RecyclerView.p localp = (RecyclerView.p)paramView.getLayoutParams();
    return getDecoratedRight(paramView) + localp.rightMargin;
  }
  
  private int getChildTop(View paramView)
  {
    RecyclerView.p localp = (RecyclerView.p)paramView.getLayoutParams();
    return getDecoratedTop(paramView) - localp.topMargin;
  }
  
  private int handleScrollingMainOrientation(int paramInt, RecyclerView.v paramv, RecyclerView.z paramz)
  {
    if ((getChildCount() != 0) && (paramInt != 0))
    {
      ensureOrientationHelper();
      LayoutState localLayoutState = this.mLayoutState;
      int i = 1;
      LayoutState.access$502(localLayoutState, true);
      int j;
      if ((!isMainAxisDirectionHorizontal()) && (this.mIsRtl)) {
        j = 1;
      } else {
        j = 0;
      }
      if (j != 0)
      {
        if (paramInt < 0) {}
      }
      else {
        while (paramInt <= 0)
        {
          i = -1;
          break;
        }
      }
      int k = Math.abs(paramInt);
      updateLayoutState(i, k);
      int m = this.mLayoutState.mScrollingOffset + fill(paramv, paramz, this.mLayoutState);
      if (m < 0) {
        return 0;
      }
      if (j != 0)
      {
        if (k > m) {
          paramInt = -i * m;
        }
      }
      else if (k > m) {
        paramInt = i * m;
      }
      this.mOrientationHelper.r(-paramInt);
      LayoutState.access$2702(this.mLayoutState, paramInt);
      return paramInt;
    }
    return 0;
  }
  
  private int handleScrollingSubOrientation(int paramInt)
  {
    int i = getChildCount();
    int j = 0;
    if ((i != 0) && (paramInt != 0))
    {
      ensureOrientationHelper();
      boolean bool = isMainAxisDirectionHorizontal();
      View localView = this.mParent;
      if (bool) {
        i = localView.getWidth();
      } else {
        i = localView.getHeight();
      }
      int k;
      if (bool) {
        k = getWidth();
      } else {
        k = getHeight();
      }
      if (getLayoutDirection() == 1) {
        j = 1;
      }
      if (j != 0)
      {
        j = Math.abs(paramInt);
        if (paramInt < 0)
        {
          paramInt = Math.min(k + this.mAnchorInfo.mPerpendicularCoordinate - i, j);
        }
        else
        {
          i = paramInt;
          if (this.mAnchorInfo.mPerpendicularCoordinate + paramInt <= 0) {
            break label197;
          }
        }
      }
      for (paramInt = this.mAnchorInfo.mPerpendicularCoordinate;; paramInt = this.mAnchorInfo.mPerpendicularCoordinate)
      {
        i = -paramInt;
        break;
        if (paramInt > 0)
        {
          i = Math.min(k - this.mAnchorInfo.mPerpendicularCoordinate - i, paramInt);
          break;
        }
        if (this.mAnchorInfo.mPerpendicularCoordinate + paramInt >= 0)
        {
          i = paramInt;
          break;
        }
      }
      label197:
      return i;
    }
    return 0;
  }
  
  private static boolean isMeasurementUpToDate(int paramInt1, int paramInt2, int paramInt3)
  {
    int i = View.MeasureSpec.getMode(paramInt2);
    paramInt2 = View.MeasureSpec.getSize(paramInt2);
    boolean bool1 = false;
    boolean bool2 = false;
    if ((paramInt3 > 0) && (paramInt1 != paramInt3)) {
      return false;
    }
    if (i != -2147483648)
    {
      if (i != 0)
      {
        if (i != 1073741824) {
          return false;
        }
        if (paramInt2 == paramInt1) {
          bool2 = true;
        }
        return bool2;
      }
      return true;
    }
    bool2 = bool1;
    if (paramInt2 >= paramInt1) {
      bool2 = true;
    }
    return bool2;
  }
  
  private boolean isViewVisible(View paramView, boolean paramBoolean)
  {
    int i = getPaddingLeft();
    int j = getPaddingTop();
    int k = getWidth() - getPaddingRight();
    int m = getHeight() - getPaddingBottom();
    int n = getChildLeft(paramView);
    int i1 = getChildTop(paramView);
    int i2 = getChildRight(paramView);
    int i3 = getChildBottom(paramView);
    boolean bool1 = true;
    boolean bool2 = true;
    int i4;
    if ((i <= n) && (k >= i2)) {
      i4 = 1;
    } else {
      i4 = 0;
    }
    if ((n < k) && (i2 < i)) {
      i = 0;
    } else {
      i = 1;
    }
    if ((j <= i1) && (m >= i3)) {
      i2 = 1;
    } else {
      i2 = 0;
    }
    if ((i1 < m) && (i3 < j)) {
      i1 = 0;
    } else {
      i1 = 1;
    }
    if (paramBoolean)
    {
      if ((i4 != 0) && (i2 != 0)) {
        paramBoolean = bool2;
      } else {
        paramBoolean = false;
      }
      return paramBoolean;
    }
    if ((i != 0) && (i1 != 0)) {
      paramBoolean = bool1;
    } else {
      paramBoolean = false;
    }
    return paramBoolean;
  }
  
  private int layoutFlexLine(FlexLine paramFlexLine, LayoutState paramLayoutState)
  {
    if (isMainAxisDirectionHorizontal()) {
      return layoutFlexLineMainAxisHorizontal(paramFlexLine, paramLayoutState);
    }
    return layoutFlexLineMainAxisVertical(paramFlexLine, paramLayoutState);
  }
  
  private int layoutFlexLineMainAxisHorizontal(FlexLine paramFlexLine, LayoutState paramLayoutState)
  {
    int i = getPaddingLeft();
    int j = getPaddingRight();
    int k = getWidth();
    int m = paramLayoutState.mOffset;
    int n = m;
    if (paramLayoutState.mLayoutDirection == -1) {
      n = m - paramFlexLine.mCrossSize;
    }
    int i1 = paramLayoutState.mPosition;
    m = this.mJustifyContent;
    if (m != 0)
    {
      if (m != 1)
      {
        if (m != 2)
        {
          if (m != 3)
          {
            if (m != 4)
            {
              if (m == 5)
              {
                m = paramFlexLine.mItemCount;
                if (m != 0) {
                  f1 = (k - paramFlexLine.mMainSize) / (m + 1);
                } else {
                  f1 = 0.0F;
                }
                f2 = i + f1;
                f3 = k - j - f1;
                break label393;
              }
              paramFlexLine = new StringBuilder();
              paramFlexLine.append("Invalid justifyContent is set: ");
              paramFlexLine.append(this.mJustifyContent);
              throw new IllegalStateException(paramFlexLine.toString());
            }
            m = paramFlexLine.mItemCount;
            if (m != 0) {
              f1 = (k - paramFlexLine.mMainSize) / m;
            } else {
              f1 = 0.0F;
            }
            f2 = i;
            f3 = f1 / 2.0F;
            f2 += f3;
            f3 = k - j - f3;
            break label393;
          }
          f3 = i;
          m = paramFlexLine.mItemCount;
          if (m != 1) {
            f2 = m - 1;
          } else {
            f2 = 1.0F;
          }
          f1 = (k - paramFlexLine.mMainSize) / f2;
          f4 = k - j;
          f2 = f3;
          f3 = f4;
          break label393;
        }
        f2 = i;
        m = paramFlexLine.mMainSize;
        f2 += (k - m) / 2.0F;
        f3 = k - j - (k - m) / 2.0F;
      }
      else
      {
        m = paramFlexLine.mMainSize;
        f2 = k - m + j;
        f3 = m - i;
        f1 = 0.0F;
        break label393;
      }
    }
    else
    {
      f2 = i;
      f3 = k - j;
    }
    float f1 = 0.0F;
    label393:
    float f4 = f2 - this.mAnchorInfo.mPerpendicularCoordinate;
    float f2 = f3 - this.mAnchorInfo.mPerpendicularCoordinate;
    f1 = Math.max(f1, 0.0F);
    m = 0;
    k = paramFlexLine.getItemCount();
    j = i1;
    float f3 = f4;
    while (j < i1 + k)
    {
      View localView = getFlexItemAt(j);
      if (localView != null)
      {
        if (paramLayoutState.mLayoutDirection == 1)
        {
          calculateItemDecorationsForChild(localView, TEMP_RECT);
          addView(localView);
        }
        else
        {
          calculateItemDecorationsForChild(localView, TEMP_RECT);
          addView(localView, m);
          m++;
        }
        Object localObject = this.mFlexboxHelper;
        long l = localObject.mMeasureSpecCache[j];
        i = ((FlexboxHelper)localObject).extractLowerInt(l);
        int i2 = this.mFlexboxHelper.extractHigherInt(l);
        localObject = (LayoutParams)localView.getLayoutParams();
        if (shouldMeasureChild(localView, i, i2, (RecyclerView.p)localObject)) {
          localView.measure(i, i2);
        }
        f3 += ((ViewGroup.MarginLayoutParams)localObject).leftMargin + getLeftDecorationWidth(localView);
        f4 = f2 - (((ViewGroup.MarginLayoutParams)localObject).rightMargin + getRightDecorationWidth(localView));
        i = n + getTopDecorationHeight(localView);
        if (this.mIsRtl) {
          this.mFlexboxHelper.layoutSingleChildHorizontal(localView, paramFlexLine, Math.round(f4) - localView.getMeasuredWidth(), i, Math.round(f4), i + localView.getMeasuredHeight());
        } else {
          this.mFlexboxHelper.layoutSingleChildHorizontal(localView, paramFlexLine, Math.round(f3), i, Math.round(f3) + localView.getMeasuredWidth(), i + localView.getMeasuredHeight());
        }
        float f5 = localView.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams)localObject).rightMargin + getRightDecorationWidth(localView);
        f2 = localView.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams)localObject).leftMargin + getLeftDecorationWidth(localView);
        f3 += f5 + f1;
        f2 = f4 - (f2 + f1);
      }
      j++;
    }
    LayoutState.access$1502(paramLayoutState, paramLayoutState.mFlexLinePosition + this.mLayoutState.mLayoutDirection);
    return paramFlexLine.getCrossSize();
  }
  
  private int layoutFlexLineMainAxisVertical(FlexLine paramFlexLine, LayoutState paramLayoutState)
  {
    int i = getPaddingTop();
    int j = getPaddingBottom();
    int k = getHeight();
    int m = paramLayoutState.mOffset;
    int n = paramLayoutState.mOffset;
    int i1 = m;
    int i2 = n;
    if (paramLayoutState.mLayoutDirection == -1)
    {
      i2 = paramFlexLine.mCrossSize;
      i1 = m - i2;
      i2 = n + i2;
    }
    int i3 = paramLayoutState.mPosition;
    n = this.mJustifyContent;
    boolean bool = true;
    float f3;
    if (n != 0)
    {
      if (n != 1)
      {
        if (n != 2)
        {
          if (n != 3)
          {
            if (n != 4)
            {
              if (n == 5)
              {
                n = paramFlexLine.mItemCount;
                if (n != 0) {
                  f1 = (k - paramFlexLine.mMainSize) / (n + 1);
                } else {
                  f1 = 0.0F;
                }
                f2 = i + f1;
                f3 = k - j - f1;
                break label417;
              }
              paramFlexLine = new StringBuilder();
              paramFlexLine.append("Invalid justifyContent is set: ");
              paramFlexLine.append(this.mJustifyContent);
              throw new IllegalStateException(paramFlexLine.toString());
            }
            n = paramFlexLine.mItemCount;
            if (n != 0) {
              f1 = (k - paramFlexLine.mMainSize) / n;
            } else {
              f1 = 0.0F;
            }
            f2 = i;
            f3 = f1 / 2.0F;
            f2 += f3;
            f3 = k - j - f3;
            break label417;
          }
          f3 = i;
          n = paramFlexLine.mItemCount;
          if (n != 1) {
            f2 = n - 1;
          } else {
            f2 = 1.0F;
          }
          f1 = (k - paramFlexLine.mMainSize) / f2;
          f4 = k - j;
          f2 = f3;
          f3 = f4;
          break label417;
        }
        f2 = i;
        n = paramFlexLine.mMainSize;
        f2 += (k - n) / 2.0F;
        f3 = k - j - (k - n) / 2.0F;
      }
      else
      {
        n = paramFlexLine.mMainSize;
        f2 = k - n + j;
        f3 = n - i;
        f1 = 0.0F;
        break label417;
      }
    }
    else
    {
      f2 = i;
      f3 = k - j;
    }
    float f1 = 0.0F;
    label417:
    float f4 = f2 - this.mAnchorInfo.mPerpendicularCoordinate;
    f3 -= this.mAnchorInfo.mPerpendicularCoordinate;
    float f2 = Math.max(f1, 0.0F);
    n = 0;
    j = paramFlexLine.getItemCount();
    m = i3;
    f1 = f4;
    while (m < i3 + j)
    {
      View localView = getFlexItemAt(m);
      if (localView != null)
      {
        Object localObject1 = this.mFlexboxHelper;
        Object localObject2 = ((FlexboxHelper)localObject1).mMeasureSpecCache;
        f4 = f2;
        long l = localObject2[m];
        k = ((FlexboxHelper)localObject1).extractLowerInt(l);
        i = this.mFlexboxHelper.extractHigherInt(l);
        localObject2 = (LayoutParams)localView.getLayoutParams();
        if (shouldMeasureChild(localView, k, i, (RecyclerView.p)localObject2)) {
          localView.measure(k, i);
        }
        f1 += ((ViewGroup.MarginLayoutParams)localObject2).topMargin + getTopDecorationHeight(localView);
        f3 -= ((ViewGroup.MarginLayoutParams)localObject2).rightMargin + getBottomDecorationHeight(localView);
        if (paramLayoutState.mLayoutDirection == 1)
        {
          calculateItemDecorationsForChild(localView, TEMP_RECT);
          addView(localView);
        }
        else
        {
          calculateItemDecorationsForChild(localView, TEMP_RECT);
          addView(localView, n);
          n++;
        }
        i = i1 + getLeftDecorationWidth(localView);
        k = i2 - getRightDecorationWidth(localView);
        bool = this.mIsRtl;
        if (bool)
        {
          if (this.mFromBottomToTop)
          {
            this.mFlexboxHelper.layoutSingleChildVertical(localView, paramFlexLine, bool, k - localView.getMeasuredWidth(), Math.round(f3) - localView.getMeasuredHeight(), k, Math.round(f3));
          }
          else
          {
            localObject1 = localView;
            this.mFlexboxHelper.layoutSingleChildVertical((View)localObject1, paramFlexLine, bool, k - ((View)localObject1).getMeasuredWidth(), Math.round(f1), k, Math.round(f1) + ((View)localObject1).getMeasuredHeight());
          }
        }
        else
        {
          localObject1 = localView;
          if (this.mFromBottomToTop) {
            this.mFlexboxHelper.layoutSingleChildVertical((View)localObject1, paramFlexLine, bool, i, Math.round(f3) - ((View)localObject1).getMeasuredHeight(), i + ((View)localObject1).getMeasuredWidth(), Math.round(f3));
          } else {
            this.mFlexboxHelper.layoutSingleChildVertical((View)localObject1, paramFlexLine, bool, i, Math.round(f1), i + ((View)localObject1).getMeasuredWidth(), Math.round(f1) + ((View)localObject1).getMeasuredHeight());
          }
        }
        bool = true;
        float f5 = localView.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams)localObject2).topMargin + getBottomDecorationHeight(localView);
        float f6 = localView.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams)localObject2).bottomMargin + getTopDecorationHeight(localView);
        f1 += f5 + f4;
        f3 -= f6 + f4;
      }
      m++;
    }
    LayoutState.access$1502(paramLayoutState, paramLayoutState.mFlexLinePosition + this.mLayoutState.mLayoutDirection);
    return paramFlexLine.getCrossSize();
  }
  
  private void recycleByLayoutState(RecyclerView.v paramv, LayoutState paramLayoutState)
  {
    if (!paramLayoutState.mShouldRecycle) {
      return;
    }
    if (paramLayoutState.mLayoutDirection == -1) {
      recycleFlexLinesFromEnd(paramv, paramLayoutState);
    } else {
      recycleFlexLinesFromStart(paramv, paramLayoutState);
    }
  }
  
  private void recycleChildren(RecyclerView.v paramv, int paramInt1, int paramInt2)
  {
    while (paramInt2 >= paramInt1)
    {
      removeAndRecycleViewAt(paramInt2, paramv);
      paramInt2--;
    }
  }
  
  private void recycleFlexLinesFromEnd(RecyclerView.v paramv, LayoutState paramLayoutState)
  {
    if (paramLayoutState.mScrollingOffset < 0) {
      return;
    }
    this.mOrientationHelper.h();
    int i = getChildCount();
    if (i == 0) {
      return;
    }
    int j = i - 1;
    Object localObject1 = getChildAt(j);
    int k = this.mFlexboxHelper.mIndexToFlexLine[getPosition(localObject1)];
    if (k == -1) {
      return;
    }
    localObject1 = (FlexLine)this.mFlexLines.get(k);
    int m = j;
    int n;
    for (;;)
    {
      n = i;
      if (m < 0) {
        break;
      }
      View localView = getChildAt(m);
      n = i;
      if (!canViewBeRecycledFromEnd(localView, paramLayoutState.mScrollingOffset)) {
        break;
      }
      n = k;
      Object localObject2 = localObject1;
      if (((FlexLine)localObject1).mFirstIndex == getPosition(localView))
      {
        if (k <= 0)
        {
          n = m;
          break;
        }
        n = k + paramLayoutState.mLayoutDirection;
        localObject2 = (FlexLine)this.mFlexLines.get(n);
        i = m;
      }
      m--;
      k = n;
      localObject1 = localObject2;
    }
    recycleChildren(paramv, n, j);
  }
  
  private void recycleFlexLinesFromStart(RecyclerView.v paramv, LayoutState paramLayoutState)
  {
    if (paramLayoutState.mScrollingOffset < 0) {
      return;
    }
    int i = getChildCount();
    if (i == 0) {
      return;
    }
    Object localObject1 = getChildAt(0);
    int j = this.mFlexboxHelper.mIndexToFlexLine[getPosition(localObject1)];
    int k = -1;
    if (j == -1) {
      return;
    }
    Object localObject2 = (FlexLine)this.mFlexLines.get(j);
    int m = 0;
    int n;
    for (;;)
    {
      n = k;
      if (m >= i) {
        break;
      }
      View localView = getChildAt(m);
      n = k;
      if (!canViewBeRecycledFromStart(localView, paramLayoutState.mScrollingOffset)) {
        break;
      }
      n = j;
      localObject1 = localObject2;
      if (((FlexLine)localObject2).mLastIndex == getPosition(localView))
      {
        if (j >= this.mFlexLines.size() - 1)
        {
          n = m;
          break;
        }
        n = j + paramLayoutState.mLayoutDirection;
        localObject1 = (FlexLine)this.mFlexLines.get(n);
        k = m;
      }
      m++;
      j = n;
      localObject2 = localObject1;
    }
    recycleChildren(paramv, 0, n);
  }
  
  private void resolveInfiniteAmount()
  {
    int i;
    if (isMainAxisDirectionHorizontal()) {
      i = getHeightMode();
    } else {
      i = getWidthMode();
    }
    LayoutState localLayoutState = this.mLayoutState;
    boolean bool;
    if ((i != 0) && (i != -2147483648)) {
      bool = false;
    } else {
      bool = true;
    }
    LayoutState.access$1102(localLayoutState, bool);
  }
  
  private void resolveLayoutDirection()
  {
    int i = getLayoutDirection();
    int j = this.mFlexDirection;
    boolean bool1 = false;
    boolean bool2 = false;
    boolean bool3 = false;
    if (j != 0)
    {
      if (j != 1)
      {
        if (j != 2)
        {
          if (j != 3)
          {
            this.mIsRtl = false;
            this.mFromBottomToTop = false;
          }
          else
          {
            if (i == 1) {
              bool3 = true;
            }
            this.mIsRtl = bool3;
            if (this.mFlexWrap == 2) {
              this.mIsRtl = (bool3 ^ true);
            }
            this.mFromBottomToTop = true;
          }
        }
        else
        {
          if (i == 1) {
            bool3 = true;
          } else {
            bool3 = false;
          }
          this.mIsRtl = bool3;
          if (this.mFlexWrap == 2) {
            this.mIsRtl = (bool3 ^ true);
          }
          this.mFromBottomToTop = false;
        }
      }
      else
      {
        if (i != 1) {
          bool3 = true;
        } else {
          bool3 = false;
        }
        this.mIsRtl = bool3;
        bool3 = bool1;
        if (this.mFlexWrap == 2) {
          bool3 = true;
        }
        this.mFromBottomToTop = bool3;
      }
    }
    else
    {
      if (i == 1) {
        bool3 = true;
      } else {
        bool3 = false;
      }
      this.mIsRtl = bool3;
      bool3 = bool2;
      if (this.mFlexWrap == 2) {
        bool3 = true;
      }
      this.mFromBottomToTop = bool3;
    }
  }
  
  private boolean shouldMeasureChild(View paramView, int paramInt1, int paramInt2, RecyclerView.p paramp)
  {
    boolean bool;
    if ((!paramView.isLayoutRequested()) && (isMeasurementCacheEnabled()) && (isMeasurementUpToDate(paramView.getWidth(), paramInt1, paramp.width)) && (isMeasurementUpToDate(paramView.getHeight(), paramInt2, paramp.height))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  private boolean updateAnchorFromChildren(RecyclerView.z paramz, AnchorInfo paramAnchorInfo)
  {
    int i = getChildCount();
    int j = 0;
    if (i == 0) {
      return false;
    }
    View localView;
    if (paramAnchorInfo.mLayoutFromEnd) {
      localView = findLastReferenceChild(paramz.b());
    } else {
      localView = findFirstReferenceChild(paramz.b());
    }
    if (localView != null)
    {
      paramAnchorInfo.assignFromView(localView);
      if ((!paramz.e()) && (supportsPredictiveItemAnimations()))
      {
        if ((this.mOrientationHelper.g(localView) >= this.mOrientationHelper.i()) || (this.mOrientationHelper.d(localView) < this.mOrientationHelper.m())) {
          j = 1;
        }
        if (j != 0)
        {
          if (paramAnchorInfo.mLayoutFromEnd) {
            j = this.mOrientationHelper.i();
          } else {
            j = this.mOrientationHelper.m();
          }
          AnchorInfo.access$1702(paramAnchorInfo, j);
        }
      }
      return true;
    }
    return false;
  }
  
  private boolean updateAnchorFromPendingState(RecyclerView.z paramz, AnchorInfo paramAnchorInfo, SavedState paramSavedState)
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
          AnchorInfo.access$1302(paramAnchorInfo, this.mPendingScrollPosition);
          AnchorInfo.access$1402(paramAnchorInfo, this.mFlexboxHelper.mIndexToFlexLine[paramAnchorInfo.mPosition]);
          SavedState localSavedState = this.mPendingSavedState;
          if ((localSavedState != null) && (localSavedState.hasValidAnchor(paramz.b())))
          {
            AnchorInfo.access$1702(paramAnchorInfo, this.mOrientationHelper.m() + paramSavedState.mAnchorOffset);
            AnchorInfo.access$1802(paramAnchorInfo, true);
            AnchorInfo.access$1402(paramAnchorInfo, -1);
            return true;
          }
          if (this.mPendingScrollPositionOffset == -2147483648)
          {
            paramz = findViewByPosition(this.mPendingScrollPosition);
            if (paramz != null)
            {
              if (this.mOrientationHelper.e(paramz) > this.mOrientationHelper.n())
              {
                paramAnchorInfo.assignCoordinateFromPadding();
                return true;
              }
              if (this.mOrientationHelper.g(paramz) - this.mOrientationHelper.m() < 0)
              {
                AnchorInfo.access$1702(paramAnchorInfo, this.mOrientationHelper.m());
                AnchorInfo.access$902(paramAnchorInfo, false);
                return true;
              }
              if (this.mOrientationHelper.i() - this.mOrientationHelper.d(paramz) < 0)
              {
                AnchorInfo.access$1702(paramAnchorInfo, this.mOrientationHelper.i());
                AnchorInfo.access$902(paramAnchorInfo, true);
                return true;
              }
              if (paramAnchorInfo.mLayoutFromEnd) {
                i = this.mOrientationHelper.d(paramz) + this.mOrientationHelper.o();
              } else {
                i = this.mOrientationHelper.g(paramz);
              }
              AnchorInfo.access$1702(paramAnchorInfo, i);
            }
            else
            {
              if (getChildCount() > 0)
              {
                i = getPosition(getChildAt(0));
                if (this.mPendingScrollPosition < i) {
                  bool2 = true;
                }
                AnchorInfo.access$902(paramAnchorInfo, bool2);
              }
              paramAnchorInfo.assignCoordinateFromPadding();
            }
            return true;
          }
          if ((!isMainAxisDirectionHorizontal()) && (this.mIsRtl)) {
            AnchorInfo.access$1702(paramAnchorInfo, this.mPendingScrollPositionOffset - this.mOrientationHelper.j());
          } else {
            AnchorInfo.access$1702(paramAnchorInfo, this.mOrientationHelper.m() + this.mPendingScrollPositionOffset);
          }
          return true;
        }
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = -2147483648;
      }
    }
    return false;
  }
  
  private void updateAnchorInfoForLayout(RecyclerView.z paramz, AnchorInfo paramAnchorInfo)
  {
    if (updateAnchorFromPendingState(paramz, paramAnchorInfo, this.mPendingSavedState)) {
      return;
    }
    if (updateAnchorFromChildren(paramz, paramAnchorInfo)) {
      return;
    }
    paramAnchorInfo.assignCoordinateFromPadding();
    AnchorInfo.access$1302(paramAnchorInfo, 0);
    AnchorInfo.access$1402(paramAnchorInfo, 0);
  }
  
  private void updateDirtyPosition(int paramInt)
  {
    if (paramInt >= findLastVisibleItemPosition()) {
      return;
    }
    int i = getChildCount();
    this.mFlexboxHelper.ensureMeasureSpecCache(i);
    this.mFlexboxHelper.ensureMeasuredSizeCache(i);
    this.mFlexboxHelper.ensureIndexToFlexLine(i);
    if (paramInt >= this.mFlexboxHelper.mIndexToFlexLine.length) {
      return;
    }
    this.mDirtyPosition = paramInt;
    View localView = getChildClosestToStart();
    if (localView == null) {
      return;
    }
    this.mPendingScrollPosition = getPosition(localView);
    if ((!isMainAxisDirectionHorizontal()) && (this.mIsRtl)) {
      this.mPendingScrollPositionOffset = (this.mOrientationHelper.d(localView) + this.mOrientationHelper.j());
    } else {
      this.mPendingScrollPositionOffset = (this.mOrientationHelper.g(localView) - this.mOrientationHelper.m());
    }
  }
  
  private void updateFlexLines(int paramInt)
  {
    int i = View.MeasureSpec.makeMeasureSpec(getWidth(), getWidthMode());
    int j = View.MeasureSpec.makeMeasureSpec(getHeight(), getHeightMode());
    int k = getWidth();
    int m = getHeight();
    boolean bool = isMainAxisDirectionHorizontal();
    int n = 1;
    int i1 = 1;
    if (bool)
    {
      n = this.mLastWidth;
      if ((n == -2147483648) || (n == k)) {
        i1 = 0;
      }
      if (this.mLayoutState.mInfinite) {
        n = this.mContext.getResources().getDisplayMetrics().heightPixels;
      } else {
        n = this.mLayoutState.mAvailable;
      }
    }
    else
    {
      i1 = this.mLastHeight;
      if ((i1 != -2147483648) && (i1 != m)) {
        i1 = n;
      } else {
        i1 = 0;
      }
      if (this.mLayoutState.mInfinite) {
        n = this.mContext.getResources().getDisplayMetrics().widthPixels;
      } else {
        n = this.mLayoutState.mAvailable;
      }
    }
    this.mLastWidth = k;
    this.mLastHeight = m;
    m = this.mDirtyPosition;
    if ((m == -1) && ((this.mPendingScrollPosition != -1) || (i1 != 0)))
    {
      if (this.mAnchorInfo.mLayoutFromEnd) {
        return;
      }
      this.mFlexLines.clear();
      this.mFlexLinesResult.reset();
      if (isMainAxisDirectionHorizontal()) {
        this.mFlexboxHelper.calculateHorizontalFlexLinesToIndex(this.mFlexLinesResult, i, j, n, this.mAnchorInfo.mPosition, this.mFlexLines);
      } else {
        this.mFlexboxHelper.calculateVerticalFlexLinesToIndex(this.mFlexLinesResult, i, j, n, this.mAnchorInfo.mPosition, this.mFlexLines);
      }
      this.mFlexLines = this.mFlexLinesResult.mFlexLines;
      this.mFlexboxHelper.determineMainSize(i, j);
      this.mFlexboxHelper.stretchViews();
      AnchorInfo localAnchorInfo = this.mAnchorInfo;
      AnchorInfo.access$1402(localAnchorInfo, this.mFlexboxHelper.mIndexToFlexLine[localAnchorInfo.mPosition]);
      LayoutState.access$1502(this.mLayoutState, this.mAnchorInfo.mFlexLinePosition);
    }
    else
    {
      if (m != -1) {
        i1 = Math.min(m, this.mAnchorInfo.mPosition);
      } else {
        i1 = this.mAnchorInfo.mPosition;
      }
      this.mFlexLinesResult.reset();
      if (isMainAxisDirectionHorizontal())
      {
        if (this.mFlexLines.size() > 0)
        {
          this.mFlexboxHelper.clearFlexLines(this.mFlexLines, i1);
          this.mFlexboxHelper.calculateFlexLines(this.mFlexLinesResult, i, j, n, i1, this.mAnchorInfo.mPosition, this.mFlexLines);
        }
        else
        {
          this.mFlexboxHelper.ensureIndexToFlexLine(paramInt);
          this.mFlexboxHelper.calculateHorizontalFlexLines(this.mFlexLinesResult, i, j, n, 0, this.mFlexLines);
        }
      }
      else if (this.mFlexLines.size() > 0)
      {
        this.mFlexboxHelper.clearFlexLines(this.mFlexLines, i1);
        this.mFlexboxHelper.calculateFlexLines(this.mFlexLinesResult, j, i, n, i1, this.mAnchorInfo.mPosition, this.mFlexLines);
      }
      else
      {
        this.mFlexboxHelper.ensureIndexToFlexLine(paramInt);
        this.mFlexboxHelper.calculateVerticalFlexLines(this.mFlexLinesResult, i, j, n, 0, this.mFlexLines);
      }
      this.mFlexLines = this.mFlexLinesResult.mFlexLines;
      this.mFlexboxHelper.determineMainSize(i, j, i1);
      this.mFlexboxHelper.stretchViews(i1);
    }
  }
  
  private void updateLayoutState(int paramInt1, int paramInt2)
  {
    LayoutState.access$2302(this.mLayoutState, paramInt1);
    boolean bool = isMainAxisDirectionHorizontal();
    int i = View.MeasureSpec.makeMeasureSpec(getWidth(), getWidthMode());
    int j = View.MeasureSpec.makeMeasureSpec(getHeight(), getHeightMode());
    int k = 0;
    int m = 0;
    int n;
    if ((!bool) && (this.mIsRtl)) {
      n = 1;
    } else {
      n = 0;
    }
    Object localObject2;
    if (paramInt1 == 1)
    {
      localObject1 = getChildAt(getChildCount() - 1);
      LayoutState.access$1002(this.mLayoutState, this.mOrientationHelper.d((View)localObject1));
      paramInt1 = getPosition((View)localObject1);
      k = this.mFlexboxHelper.mIndexToFlexLine[paramInt1];
      localObject1 = findLastReferenceViewInLine((View)localObject1, (FlexLine)this.mFlexLines.get(k));
      LayoutState.access$2502(this.mLayoutState, 1);
      localObject2 = this.mLayoutState;
      LayoutState.access$2202((LayoutState)localObject2, paramInt1 + ((LayoutState)localObject2).mItemDirection);
      if (this.mFlexboxHelper.mIndexToFlexLine.length <= this.mLayoutState.mPosition)
      {
        LayoutState.access$1502(this.mLayoutState, -1);
      }
      else
      {
        localObject2 = this.mLayoutState;
        LayoutState.access$1502((LayoutState)localObject2, this.mFlexboxHelper.mIndexToFlexLine[localObject2.mPosition]);
      }
      if (n != 0)
      {
        LayoutState.access$1002(this.mLayoutState, this.mOrientationHelper.g((View)localObject1));
        LayoutState.access$2002(this.mLayoutState, -this.mOrientationHelper.g((View)localObject1) + this.mOrientationHelper.m());
        localObject1 = this.mLayoutState;
        paramInt1 = m;
        if (((LayoutState)localObject1).mScrollingOffset >= 0) {
          paramInt1 = this.mLayoutState.mScrollingOffset;
        }
        LayoutState.access$2002((LayoutState)localObject1, paramInt1);
      }
      else
      {
        LayoutState.access$1002(this.mLayoutState, this.mOrientationHelper.d((View)localObject1));
        LayoutState.access$2002(this.mLayoutState, this.mOrientationHelper.d((View)localObject1) - this.mOrientationHelper.i());
      }
      if (((this.mLayoutState.mFlexLinePosition == -1) || (this.mLayoutState.mFlexLinePosition > this.mFlexLines.size() - 1)) && (this.mLayoutState.mPosition <= getFlexItemCount()))
      {
        paramInt1 = paramInt2 - this.mLayoutState.mScrollingOffset;
        this.mFlexLinesResult.reset();
        if (paramInt1 > 0)
        {
          if (bool) {
            this.mFlexboxHelper.calculateHorizontalFlexLines(this.mFlexLinesResult, i, j, paramInt1, this.mLayoutState.mPosition, this.mFlexLines);
          } else {
            this.mFlexboxHelper.calculateVerticalFlexLines(this.mFlexLinesResult, i, j, paramInt1, this.mLayoutState.mPosition, this.mFlexLines);
          }
          this.mFlexboxHelper.determineMainSize(i, j, this.mLayoutState.mPosition);
          this.mFlexboxHelper.stretchViews(this.mLayoutState.mPosition);
        }
      }
    }
    else
    {
      localObject1 = getChildAt(0);
      LayoutState.access$1002(this.mLayoutState, this.mOrientationHelper.g((View)localObject1));
      i = getPosition((View)localObject1);
      paramInt1 = this.mFlexboxHelper.mIndexToFlexLine[i];
      localObject1 = findFirstReferenceViewInLine((View)localObject1, (FlexLine)this.mFlexLines.get(paramInt1));
      LayoutState.access$2502(this.mLayoutState, 1);
      m = this.mFlexboxHelper.mIndexToFlexLine[i];
      paramInt1 = m;
      if (m == -1) {
        paramInt1 = 0;
      }
      if (paramInt1 > 0)
      {
        localObject2 = (FlexLine)this.mFlexLines.get(paramInt1 - 1);
        LayoutState.access$2202(this.mLayoutState, i - ((FlexLine)localObject2).getItemCount());
      }
      else
      {
        LayoutState.access$2202(this.mLayoutState, -1);
      }
      localObject2 = this.mLayoutState;
      if (paramInt1 > 0) {
        paramInt1--;
      } else {
        paramInt1 = 0;
      }
      LayoutState.access$1502((LayoutState)localObject2, paramInt1);
      if (n != 0)
      {
        LayoutState.access$1002(this.mLayoutState, this.mOrientationHelper.d((View)localObject1));
        LayoutState.access$2002(this.mLayoutState, this.mOrientationHelper.d((View)localObject1) - this.mOrientationHelper.i());
        localObject1 = this.mLayoutState;
        paramInt1 = k;
        if (((LayoutState)localObject1).mScrollingOffset >= 0) {
          paramInt1 = this.mLayoutState.mScrollingOffset;
        }
        LayoutState.access$2002((LayoutState)localObject1, paramInt1);
      }
      else
      {
        LayoutState.access$1002(this.mLayoutState, this.mOrientationHelper.g((View)localObject1));
        LayoutState.access$2002(this.mLayoutState, -this.mOrientationHelper.g((View)localObject1) + this.mOrientationHelper.m());
      }
    }
    Object localObject1 = this.mLayoutState;
    LayoutState.access$1202((LayoutState)localObject1, paramInt2 - ((LayoutState)localObject1).mScrollingOffset);
  }
  
  private void updateLayoutStateToFillEnd(AnchorInfo paramAnchorInfo, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean2) {
      resolveInfiniteAmount();
    } else {
      LayoutState.access$1102(this.mLayoutState, false);
    }
    if ((!isMainAxisDirectionHorizontal()) && (this.mIsRtl)) {
      LayoutState.access$1202(this.mLayoutState, paramAnchorInfo.mCoordinate - getPaddingRight());
    } else {
      LayoutState.access$1202(this.mLayoutState, this.mOrientationHelper.i() - paramAnchorInfo.mCoordinate);
    }
    LayoutState.access$2202(this.mLayoutState, paramAnchorInfo.mPosition);
    LayoutState.access$2502(this.mLayoutState, 1);
    LayoutState.access$2302(this.mLayoutState, 1);
    LayoutState.access$1002(this.mLayoutState, paramAnchorInfo.mCoordinate);
    LayoutState.access$2002(this.mLayoutState, -2147483648);
    LayoutState.access$1502(this.mLayoutState, paramAnchorInfo.mFlexLinePosition);
    if ((paramBoolean1) && (this.mFlexLines.size() > 1) && (paramAnchorInfo.mFlexLinePosition >= 0) && (paramAnchorInfo.mFlexLinePosition < this.mFlexLines.size() - 1))
    {
      paramAnchorInfo = (FlexLine)this.mFlexLines.get(paramAnchorInfo.mFlexLinePosition);
      LayoutState.access$1508(this.mLayoutState);
      LayoutState localLayoutState = this.mLayoutState;
      LayoutState.access$2202(localLayoutState, localLayoutState.mPosition + paramAnchorInfo.getItemCount());
    }
  }
  
  private void updateLayoutStateToFillStart(AnchorInfo paramAnchorInfo, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean2) {
      resolveInfiniteAmount();
    } else {
      LayoutState.access$1102(this.mLayoutState, false);
    }
    if ((!isMainAxisDirectionHorizontal()) && (this.mIsRtl)) {
      LayoutState.access$1202(this.mLayoutState, this.mParent.getWidth() - paramAnchorInfo.mCoordinate - this.mOrientationHelper.m());
    } else {
      LayoutState.access$1202(this.mLayoutState, paramAnchorInfo.mCoordinate - this.mOrientationHelper.m());
    }
    LayoutState.access$2202(this.mLayoutState, paramAnchorInfo.mPosition);
    LayoutState.access$2502(this.mLayoutState, 1);
    LayoutState.access$2302(this.mLayoutState, -1);
    LayoutState.access$1002(this.mLayoutState, paramAnchorInfo.mCoordinate);
    LayoutState.access$2002(this.mLayoutState, -2147483648);
    LayoutState.access$1502(this.mLayoutState, paramAnchorInfo.mFlexLinePosition);
    if ((paramBoolean1) && (paramAnchorInfo.mFlexLinePosition > 0) && (this.mFlexLines.size() > paramAnchorInfo.mFlexLinePosition))
    {
      paramAnchorInfo = (FlexLine)this.mFlexLines.get(paramAnchorInfo.mFlexLinePosition);
      LayoutState.access$1510(this.mLayoutState);
      LayoutState localLayoutState = this.mLayoutState;
      LayoutState.access$2202(localLayoutState, localLayoutState.mPosition - paramAnchorInfo.getItemCount());
    }
  }
  
  public boolean canScrollHorizontally()
  {
    if (this.mFlexWrap == 0) {
      return isMainAxisDirectionHorizontal();
    }
    boolean bool1 = isMainAxisDirectionHorizontal();
    boolean bool2 = false;
    if (bool1)
    {
      int i = getWidth();
      View localView = this.mParent;
      int j;
      if (localView != null) {
        j = localView.getWidth();
      } else {
        j = 0;
      }
      if (i <= j) {}
    }
    else
    {
      bool2 = true;
    }
    return bool2;
  }
  
  public boolean canScrollVertically()
  {
    int i = this.mFlexWrap;
    boolean bool1 = true;
    if (i == 0) {
      return isMainAxisDirectionHorizontal() ^ true;
    }
    boolean bool2 = bool1;
    if (!isMainAxisDirectionHorizontal())
    {
      int j = getHeight();
      View localView = this.mParent;
      if (localView != null) {
        i = localView.getHeight();
      } else {
        i = 0;
      }
      if (j > i) {
        bool2 = bool1;
      } else {
        bool2 = false;
      }
    }
    return bool2;
  }
  
  public boolean checkLayoutParams(RecyclerView.p paramp)
  {
    return paramp instanceof LayoutParams;
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
    if (paramInt < getPosition(getChildAt(0))) {
      paramInt = -1;
    } else {
      paramInt = 1;
    }
    if (isMainAxisDirectionHorizontal()) {
      return new PointF(0.0F, paramInt);
    }
    return new PointF(paramInt, 0.0F);
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
  
  public int findFirstCompletelyVisibleItemPosition()
  {
    View localView = findOneVisibleChild(0, getChildCount(), true);
    int i;
    if (localView == null) {
      i = -1;
    } else {
      i = getPosition(localView);
    }
    return i;
  }
  
  public int findFirstVisibleItemPosition()
  {
    View localView = findOneVisibleChild(0, getChildCount(), false);
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
    View localView = findOneVisibleChild(i - 1, -1, true);
    if (localView != null) {
      j = getPosition(localView);
    }
    return j;
  }
  
  public int findLastVisibleItemPosition()
  {
    int i = getChildCount();
    int j = -1;
    View localView = findOneVisibleChild(i - 1, -1, false);
    if (localView != null) {
      j = getPosition(localView);
    }
    return j;
  }
  
  public RecyclerView.p generateDefaultLayoutParams()
  {
    return new LayoutParams(-2, -2);
  }
  
  public RecyclerView.p generateLayoutParams(Context paramContext, AttributeSet paramAttributeSet)
  {
    return new LayoutParams(paramContext, paramAttributeSet);
  }
  
  public int getAlignContent()
  {
    return 5;
  }
  
  public int getAlignItems()
  {
    return this.mAlignItems;
  }
  
  public int getChildHeightMeasureSpec(int paramInt1, int paramInt2, int paramInt3)
  {
    return RecyclerView.o.getChildMeasureSpec(getHeight(), getHeightMode(), paramInt2, paramInt3, canScrollVertically());
  }
  
  public int getChildWidthMeasureSpec(int paramInt1, int paramInt2, int paramInt3)
  {
    return RecyclerView.o.getChildMeasureSpec(getWidth(), getWidthMode(), paramInt2, paramInt3, canScrollHorizontally());
  }
  
  public int getDecorationLengthCrossAxis(View paramView)
  {
    int i;
    if (isMainAxisDirectionHorizontal()) {
      i = getTopDecorationHeight(paramView);
    }
    for (int j = getBottomDecorationHeight(paramView);; j = getRightDecorationWidth(paramView))
    {
      return i + j;
      i = getLeftDecorationWidth(paramView);
    }
  }
  
  public int getDecorationLengthMainAxis(View paramView, int paramInt1, int paramInt2)
  {
    if (isMainAxisDirectionHorizontal()) {
      paramInt1 = getLeftDecorationWidth(paramView);
    }
    for (paramInt2 = getRightDecorationWidth(paramView);; paramInt2 = getBottomDecorationHeight(paramView))
    {
      return paramInt1 + paramInt2;
      paramInt1 = getTopDecorationHeight(paramView);
    }
  }
  
  public int getFlexDirection()
  {
    return this.mFlexDirection;
  }
  
  public View getFlexItemAt(int paramInt)
  {
    View localView = (View)this.mViewCache.get(paramInt);
    if (localView != null) {
      return localView;
    }
    return this.mRecycler.o(paramInt);
  }
  
  public int getFlexItemCount()
  {
    return this.mState.b();
  }
  
  public List<FlexLine> getFlexLines()
  {
    ArrayList localArrayList = new ArrayList(this.mFlexLines.size());
    int i = this.mFlexLines.size();
    for (int j = 0; j < i; j++)
    {
      FlexLine localFlexLine = (FlexLine)this.mFlexLines.get(j);
      if (localFlexLine.getItemCount() != 0) {
        localArrayList.add(localFlexLine);
      }
    }
    return localArrayList;
  }
  
  public List<FlexLine> getFlexLinesInternal()
  {
    return this.mFlexLines;
  }
  
  public int getFlexWrap()
  {
    return this.mFlexWrap;
  }
  
  public int getJustifyContent()
  {
    return this.mJustifyContent;
  }
  
  public int getLargestMainSize()
  {
    int i = this.mFlexLines.size();
    int j = 0;
    if (i == 0) {
      return 0;
    }
    i = -2147483648;
    int k = this.mFlexLines.size();
    while (j < k)
    {
      i = Math.max(i, ((FlexLine)this.mFlexLines.get(j)).mMainSize);
      j++;
    }
    return i;
  }
  
  public int getMaxLine()
  {
    return this.mMaxLine;
  }
  
  int getPositionToFlexLineIndex(int paramInt)
  {
    return this.mFlexboxHelper.mIndexToFlexLine[paramInt];
  }
  
  public boolean getRecycleChildrenOnDetach()
  {
    return this.mRecycleChildrenOnDetach;
  }
  
  public View getReorderedFlexItemAt(int paramInt)
  {
    return getFlexItemAt(paramInt);
  }
  
  public int getSumOfCrossSize()
  {
    int i = this.mFlexLines.size();
    int j = 0;
    int k = 0;
    while (j < i)
    {
      k += ((FlexLine)this.mFlexLines.get(j)).mCrossSize;
      j++;
    }
    return k;
  }
  
  boolean isLayoutRtl()
  {
    return this.mIsRtl;
  }
  
  public boolean isMainAxisDirectionHorizontal()
  {
    int i = this.mFlexDirection;
    boolean bool1 = true;
    boolean bool2 = bool1;
    if (i != 0) {
      if (i == 1) {
        bool2 = bool1;
      } else {
        bool2 = false;
      }
    }
    return bool2;
  }
  
  public void onAdapterChanged(RecyclerView.g paramg1, RecyclerView.g paramg2)
  {
    removeAllViews();
  }
  
  public void onAttachedToWindow(RecyclerView paramRecyclerView)
  {
    super.onAttachedToWindow(paramRecyclerView);
    this.mParent = ((View)paramRecyclerView.getParent());
  }
  
  public void onDetachedFromWindow(RecyclerView paramRecyclerView, RecyclerView.v paramv)
  {
    super.onDetachedFromWindow(paramRecyclerView, paramv);
    if (this.mRecycleChildrenOnDetach)
    {
      removeAndRecycleAllViews(paramv);
      paramv.c();
    }
  }
  
  public void onItemsAdded(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
  {
    super.onItemsAdded(paramRecyclerView, paramInt1, paramInt2);
    updateDirtyPosition(paramInt1);
  }
  
  public void onItemsMoved(RecyclerView paramRecyclerView, int paramInt1, int paramInt2, int paramInt3)
  {
    super.onItemsMoved(paramRecyclerView, paramInt1, paramInt2, paramInt3);
    updateDirtyPosition(Math.min(paramInt1, paramInt2));
  }
  
  public void onItemsRemoved(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
  {
    super.onItemsRemoved(paramRecyclerView, paramInt1, paramInt2);
    updateDirtyPosition(paramInt1);
  }
  
  public void onItemsUpdated(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
  {
    super.onItemsUpdated(paramRecyclerView, paramInt1, paramInt2);
    updateDirtyPosition(paramInt1);
  }
  
  public void onItemsUpdated(RecyclerView paramRecyclerView, int paramInt1, int paramInt2, Object paramObject)
  {
    super.onItemsUpdated(paramRecyclerView, paramInt1, paramInt2, paramObject);
    updateDirtyPosition(paramInt1);
  }
  
  public void onLayoutChildren(RecyclerView.v paramv, RecyclerView.z paramz)
  {
    this.mRecycler = paramv;
    this.mState = paramz;
    int i = paramz.b();
    if ((i == 0) && (paramz.e())) {
      return;
    }
    resolveLayoutDirection();
    ensureOrientationHelper();
    ensureLayoutState();
    this.mFlexboxHelper.ensureMeasureSpecCache(i);
    this.mFlexboxHelper.ensureMeasuredSizeCache(i);
    this.mFlexboxHelper.ensureIndexToFlexLine(i);
    LayoutState.access$502(this.mLayoutState, false);
    SavedState localSavedState = this.mPendingSavedState;
    if ((localSavedState != null) && (localSavedState.hasValidAnchor(i))) {
      this.mPendingScrollPosition = this.mPendingSavedState.mAnchorPosition;
    }
    if ((!this.mAnchorInfo.mValid) || (this.mPendingScrollPosition != -1) || (this.mPendingSavedState != null))
    {
      this.mAnchorInfo.reset();
      updateAnchorInfoForLayout(paramz, this.mAnchorInfo);
      AnchorInfo.access$702(this.mAnchorInfo, true);
    }
    detachAndScrapAttachedViews(paramv);
    if (this.mAnchorInfo.mLayoutFromEnd) {
      updateLayoutStateToFillStart(this.mAnchorInfo, false, true);
    } else {
      updateLayoutStateToFillEnd(this.mAnchorInfo, false, true);
    }
    updateFlexLines(i);
    int j;
    if (this.mAnchorInfo.mLayoutFromEnd)
    {
      fill(paramv, paramz, this.mLayoutState);
      j = this.mLayoutState.mOffset;
      updateLayoutStateToFillEnd(this.mAnchorInfo, true, false);
      fill(paramv, paramz, this.mLayoutState);
      i = this.mLayoutState.mOffset;
    }
    else
    {
      fill(paramv, paramz, this.mLayoutState);
      i = this.mLayoutState.mOffset;
      updateLayoutStateToFillStart(this.mAnchorInfo, true, false);
      fill(paramv, paramz, this.mLayoutState);
      j = this.mLayoutState.mOffset;
    }
    if (getChildCount() > 0) {
      if (this.mAnchorInfo.mLayoutFromEnd) {
        fixLayoutStartGap(j + fixLayoutEndGap(i, paramv, paramz, true), paramv, paramz, false);
      } else {
        fixLayoutEndGap(i + fixLayoutStartGap(j, paramv, paramz, true), paramv, paramz, false);
      }
    }
  }
  
  public void onLayoutCompleted(RecyclerView.z paramz)
  {
    super.onLayoutCompleted(paramz);
    this.mPendingSavedState = null;
    this.mPendingScrollPosition = -1;
    this.mPendingScrollPositionOffset = -2147483648;
    this.mDirtyPosition = -1;
    this.mAnchorInfo.reset();
    this.mViewCache.clear();
  }
  
  public void onNewFlexItemAdded(View paramView, int paramInt1, int paramInt2, FlexLine paramFlexLine)
  {
    calculateItemDecorationsForChild(paramView, TEMP_RECT);
    if (isMainAxisDirectionHorizontal())
    {
      paramInt1 = getLeftDecorationWidth(paramView) + getRightDecorationWidth(paramView);
      paramFlexLine.mMainSize += paramInt1;
      paramFlexLine.mDividerLengthInMainSize += paramInt1;
    }
    else
    {
      paramInt1 = getTopDecorationHeight(paramView) + getBottomDecorationHeight(paramView);
      paramFlexLine.mMainSize += paramInt1;
      paramFlexLine.mDividerLengthInMainSize += paramInt1;
    }
  }
  
  public void onNewFlexLineAdded(FlexLine paramFlexLine) {}
  
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
      return new SavedState(this.mPendingSavedState, null);
    }
    SavedState localSavedState = new SavedState();
    if (getChildCount() > 0)
    {
      View localView = getChildClosestToStart();
      SavedState.access$202(localSavedState, getPosition(localView));
      SavedState.access$302(localSavedState, this.mOrientationHelper.g(localView) - this.mOrientationHelper.m());
    }
    else
    {
      localSavedState.invalidateAnchor();
    }
    return localSavedState;
  }
  
  public int scrollHorizontallyBy(int paramInt, RecyclerView.v paramv, RecyclerView.z paramz)
  {
    if ((isMainAxisDirectionHorizontal()) && ((this.mFlexWrap != 0) || (!isMainAxisDirectionHorizontal())))
    {
      paramInt = handleScrollingSubOrientation(paramInt);
      paramv = this.mAnchorInfo;
      AnchorInfo.access$2402(paramv, paramv.mPerpendicularCoordinate + paramInt);
      this.mSubOrientationHelper.r(-paramInt);
      return paramInt;
    }
    paramInt = handleScrollingMainOrientation(paramInt, paramv, paramz);
    this.mViewCache.clear();
    return paramInt;
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
  
  public int scrollVerticallyBy(int paramInt, RecyclerView.v paramv, RecyclerView.z paramz)
  {
    if ((!isMainAxisDirectionHorizontal()) && ((this.mFlexWrap != 0) || (isMainAxisDirectionHorizontal())))
    {
      paramInt = handleScrollingSubOrientation(paramInt);
      paramv = this.mAnchorInfo;
      AnchorInfo.access$2402(paramv, paramv.mPerpendicularCoordinate + paramInt);
      this.mSubOrientationHelper.r(-paramInt);
      return paramInt;
    }
    paramInt = handleScrollingMainOrientation(paramInt, paramv, paramz);
    this.mViewCache.clear();
    return paramInt;
  }
  
  public void setAlignContent(int paramInt)
  {
    throw new UnsupportedOperationException("Setting the alignContent in the FlexboxLayoutManager is not supported. Use FlexboxLayout if you need to use this attribute.");
  }
  
  public void setAlignItems(int paramInt)
  {
    int i = this.mAlignItems;
    if (i != paramInt)
    {
      if ((i == 4) || (paramInt == 4))
      {
        removeAllViews();
        clearFlexLines();
      }
      this.mAlignItems = paramInt;
      requestLayout();
    }
  }
  
  public void setFlexDirection(int paramInt)
  {
    if (this.mFlexDirection != paramInt)
    {
      removeAllViews();
      this.mFlexDirection = paramInt;
      this.mOrientationHelper = null;
      this.mSubOrientationHelper = null;
      clearFlexLines();
      requestLayout();
    }
  }
  
  public void setFlexLines(List<FlexLine> paramList)
  {
    this.mFlexLines = paramList;
  }
  
  public void setFlexWrap(int paramInt)
  {
    if (paramInt != 2)
    {
      int i = this.mFlexWrap;
      if (i != paramInt)
      {
        if ((i == 0) || (paramInt == 0))
        {
          removeAllViews();
          clearFlexLines();
        }
        this.mFlexWrap = paramInt;
        this.mOrientationHelper = null;
        this.mSubOrientationHelper = null;
        requestLayout();
      }
      return;
    }
    throw new UnsupportedOperationException("wrap_reverse is not supported in FlexboxLayoutManager");
  }
  
  public void setJustifyContent(int paramInt)
  {
    if (this.mJustifyContent != paramInt)
    {
      this.mJustifyContent = paramInt;
      requestLayout();
    }
  }
  
  public void setMaxLine(int paramInt)
  {
    if (this.mMaxLine != paramInt)
    {
      this.mMaxLine = paramInt;
      requestLayout();
    }
  }
  
  public void setRecycleChildrenOnDetach(boolean paramBoolean)
  {
    this.mRecycleChildrenOnDetach = paramBoolean;
  }
  
  public void smoothScrollToPosition(RecyclerView paramRecyclerView, RecyclerView.z paramz, int paramInt)
  {
    paramRecyclerView = new h(paramRecyclerView.getContext());
    paramRecyclerView.setTargetPosition(paramInt);
    startSmoothScroll(paramRecyclerView);
  }
  
  public void updateViewCache(int paramInt, View paramView)
  {
    this.mViewCache.put(paramInt, paramView);
  }
  
  private class AnchorInfo
  {
    private boolean mAssignedFromSavedState;
    private int mCoordinate;
    private int mFlexLinePosition;
    private boolean mLayoutFromEnd;
    private int mPerpendicularCoordinate = 0;
    private int mPosition;
    private boolean mValid;
    
    private AnchorInfo() {}
    
    private void assignCoordinateFromPadding()
    {
      int i;
      if ((!FlexboxLayoutManager.this.isMainAxisDirectionHorizontal()) && (FlexboxLayoutManager.this.mIsRtl))
      {
        if (this.mLayoutFromEnd) {
          i = FlexboxLayoutManager.this.mOrientationHelper.i();
        } else {
          i = FlexboxLayoutManager.this.getWidth() - FlexboxLayoutManager.this.mOrientationHelper.m();
        }
        this.mCoordinate = i;
      }
      else
      {
        if (this.mLayoutFromEnd) {
          i = FlexboxLayoutManager.this.mOrientationHelper.i();
        } else {
          i = FlexboxLayoutManager.this.mOrientationHelper.m();
        }
        this.mCoordinate = i;
      }
    }
    
    private void assignFromView(View paramView)
    {
      k localk;
      if (FlexboxLayoutManager.this.mFlexWrap == 0) {
        localk = FlexboxLayoutManager.this.mSubOrientationHelper;
      } else {
        localk = FlexboxLayoutManager.this.mOrientationHelper;
      }
      if ((!FlexboxLayoutManager.this.isMainAxisDirectionHorizontal()) && (FlexboxLayoutManager.this.mIsRtl))
      {
        if (this.mLayoutFromEnd) {
          this.mCoordinate = (localk.g(paramView) + localk.o());
        } else {
          this.mCoordinate = localk.d(paramView);
        }
      }
      else if (this.mLayoutFromEnd) {
        this.mCoordinate = (localk.d(paramView) + localk.o());
      } else {
        this.mCoordinate = localk.g(paramView);
      }
      this.mPosition = FlexboxLayoutManager.this.getPosition(paramView);
      int i = 0;
      this.mAssignedFromSavedState = false;
      paramView = FlexboxLayoutManager.this.mFlexboxHelper.mIndexToFlexLine;
      int j = this.mPosition;
      if (j == -1) {
        j = 0;
      }
      int k = paramView[j];
      j = i;
      if (k != -1) {
        j = k;
      }
      this.mFlexLinePosition = j;
      if (FlexboxLayoutManager.this.mFlexLines.size() > this.mFlexLinePosition) {
        this.mPosition = ((FlexLine)FlexboxLayoutManager.this.mFlexLines.get(this.mFlexLinePosition)).mFirstIndex;
      }
    }
    
    private void reset()
    {
      this.mPosition = -1;
      this.mFlexLinePosition = -1;
      this.mCoordinate = -2147483648;
      boolean bool1 = false;
      boolean bool2 = false;
      boolean bool3 = false;
      boolean bool4 = false;
      this.mValid = false;
      this.mAssignedFromSavedState = false;
      if (FlexboxLayoutManager.this.isMainAxisDirectionHorizontal())
      {
        if (FlexboxLayoutManager.this.mFlexWrap == 0)
        {
          if (FlexboxLayoutManager.this.mFlexDirection == 1) {
            bool4 = true;
          }
          this.mLayoutFromEnd = bool4;
        }
        else
        {
          bool4 = bool1;
          if (FlexboxLayoutManager.this.mFlexWrap == 2) {
            bool4 = true;
          }
          this.mLayoutFromEnd = bool4;
        }
      }
      else if (FlexboxLayoutManager.this.mFlexWrap == 0)
      {
        bool4 = bool2;
        if (FlexboxLayoutManager.this.mFlexDirection == 3) {
          bool4 = true;
        }
        this.mLayoutFromEnd = bool4;
      }
      else
      {
        bool4 = bool3;
        if (FlexboxLayoutManager.this.mFlexWrap == 2) {
          bool4 = true;
        }
        this.mLayoutFromEnd = bool4;
      }
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("AnchorInfo{mPosition=");
      localStringBuilder.append(this.mPosition);
      localStringBuilder.append(", mFlexLinePosition=");
      localStringBuilder.append(this.mFlexLinePosition);
      localStringBuilder.append(", mCoordinate=");
      localStringBuilder.append(this.mCoordinate);
      localStringBuilder.append(", mPerpendicularCoordinate=");
      localStringBuilder.append(this.mPerpendicularCoordinate);
      localStringBuilder.append(", mLayoutFromEnd=");
      localStringBuilder.append(this.mLayoutFromEnd);
      localStringBuilder.append(", mValid=");
      localStringBuilder.append(this.mValid);
      localStringBuilder.append(", mAssignedFromSavedState=");
      localStringBuilder.append(this.mAssignedFromSavedState);
      localStringBuilder.append('}');
      return localStringBuilder.toString();
    }
  }
  
  public static class LayoutParams
    extends RecyclerView.p
    implements FlexItem
  {
    public static final Parcelable.Creator<LayoutParams> CREATOR = new Parcelable.Creator()
    {
      public FlexboxLayoutManager.LayoutParams createFromParcel(Parcel paramAnonymousParcel)
      {
        return new FlexboxLayoutManager.LayoutParams(paramAnonymousParcel);
      }
      
      public FlexboxLayoutManager.LayoutParams[] newArray(int paramAnonymousInt)
      {
        return new FlexboxLayoutManager.LayoutParams[paramAnonymousInt];
      }
    };
    private int mAlignSelf = -1;
    private float mFlexBasisPercent = -1.0F;
    private float mFlexGrow = 0.0F;
    private float mFlexShrink = 1.0F;
    private int mMaxHeight = 16777215;
    private int mMaxWidth = 16777215;
    private int mMinHeight;
    private int mMinWidth;
    private boolean mWrapBefore;
    
    public LayoutParams(int paramInt1, int paramInt2)
    {
      super(paramInt2);
    }
    
    public LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
    }
    
    protected LayoutParams(Parcel paramParcel)
    {
      super(-2);
      this.mFlexGrow = paramParcel.readFloat();
      this.mFlexShrink = paramParcel.readFloat();
      this.mAlignSelf = paramParcel.readInt();
      this.mFlexBasisPercent = paramParcel.readFloat();
      this.mMinWidth = paramParcel.readInt();
      this.mMinHeight = paramParcel.readInt();
      this.mMaxWidth = paramParcel.readInt();
      this.mMaxHeight = paramParcel.readInt();
      boolean bool;
      if (paramParcel.readByte() != 0) {
        bool = true;
      } else {
        bool = false;
      }
      this.mWrapBefore = bool;
      this.bottomMargin = paramParcel.readInt();
      this.leftMargin = paramParcel.readInt();
      this.rightMargin = paramParcel.readInt();
      this.topMargin = paramParcel.readInt();
      this.height = paramParcel.readInt();
      this.width = paramParcel.readInt();
    }
    
    public LayoutParams(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public LayoutParams(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      super();
    }
    
    public LayoutParams(RecyclerView.p paramp)
    {
      super();
    }
    
    public LayoutParams(LayoutParams paramLayoutParams)
    {
      super();
      this.mFlexGrow = paramLayoutParams.mFlexGrow;
      this.mFlexShrink = paramLayoutParams.mFlexShrink;
      this.mAlignSelf = paramLayoutParams.mAlignSelf;
      this.mFlexBasisPercent = paramLayoutParams.mFlexBasisPercent;
      this.mMinWidth = paramLayoutParams.mMinWidth;
      this.mMinHeight = paramLayoutParams.mMinHeight;
      this.mMaxWidth = paramLayoutParams.mMaxWidth;
      this.mMaxHeight = paramLayoutParams.mMaxHeight;
      this.mWrapBefore = paramLayoutParams.mWrapBefore;
    }
    
    public int describeContents()
    {
      return 0;
    }
    
    public int getAlignSelf()
    {
      return this.mAlignSelf;
    }
    
    public float getFlexBasisPercent()
    {
      return this.mFlexBasisPercent;
    }
    
    public float getFlexGrow()
    {
      return this.mFlexGrow;
    }
    
    public float getFlexShrink()
    {
      return this.mFlexShrink;
    }
    
    public int getHeight()
    {
      return this.height;
    }
    
    public int getMarginBottom()
    {
      return this.bottomMargin;
    }
    
    public int getMarginLeft()
    {
      return this.leftMargin;
    }
    
    public int getMarginRight()
    {
      return this.rightMargin;
    }
    
    public int getMarginTop()
    {
      return this.topMargin;
    }
    
    public int getMaxHeight()
    {
      return this.mMaxHeight;
    }
    
    public int getMaxWidth()
    {
      return this.mMaxWidth;
    }
    
    public int getMinHeight()
    {
      return this.mMinHeight;
    }
    
    public int getMinWidth()
    {
      return this.mMinWidth;
    }
    
    public int getOrder()
    {
      return 1;
    }
    
    public int getWidth()
    {
      return this.width;
    }
    
    public boolean isWrapBefore()
    {
      return this.mWrapBefore;
    }
    
    public void setAlignSelf(int paramInt)
    {
      this.mAlignSelf = paramInt;
    }
    
    public void setFlexBasisPercent(float paramFloat)
    {
      this.mFlexBasisPercent = paramFloat;
    }
    
    public void setFlexGrow(float paramFloat)
    {
      this.mFlexGrow = paramFloat;
    }
    
    public void setFlexShrink(float paramFloat)
    {
      this.mFlexShrink = paramFloat;
    }
    
    public void setHeight(int paramInt)
    {
      this.height = paramInt;
    }
    
    public void setMaxHeight(int paramInt)
    {
      this.mMaxHeight = paramInt;
    }
    
    public void setMaxWidth(int paramInt)
    {
      this.mMaxWidth = paramInt;
    }
    
    public void setMinHeight(int paramInt)
    {
      this.mMinHeight = paramInt;
    }
    
    public void setMinWidth(int paramInt)
    {
      this.mMinWidth = paramInt;
    }
    
    public void setOrder(int paramInt)
    {
      throw new UnsupportedOperationException("Setting the order in the FlexboxLayoutManager is not supported. Use FlexboxLayout if you need to reorder using the attribute.");
    }
    
    public void setWidth(int paramInt)
    {
      this.width = paramInt;
    }
    
    public void setWrapBefore(boolean paramBoolean)
    {
      this.mWrapBefore = paramBoolean;
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeFloat(this.mFlexGrow);
      paramParcel.writeFloat(this.mFlexShrink);
      paramParcel.writeInt(this.mAlignSelf);
      paramParcel.writeFloat(this.mFlexBasisPercent);
      paramParcel.writeInt(this.mMinWidth);
      paramParcel.writeInt(this.mMinHeight);
      paramParcel.writeInt(this.mMaxWidth);
      paramParcel.writeInt(this.mMaxHeight);
      paramParcel.writeByte(this.mWrapBefore);
      paramParcel.writeInt(this.bottomMargin);
      paramParcel.writeInt(this.leftMargin);
      paramParcel.writeInt(this.rightMargin);
      paramParcel.writeInt(this.topMargin);
      paramParcel.writeInt(this.height);
      paramParcel.writeInt(this.width);
    }
  }
  
  private static class LayoutState
  {
    private static final int ITEM_DIRECTION_TAIL = 1;
    private static final int LAYOUT_END = 1;
    private static final int LAYOUT_START = -1;
    private static final int SCROLLING_OFFSET_NaN = -2147483648;
    private int mAvailable;
    private int mFlexLinePosition;
    private boolean mInfinite;
    private int mItemDirection = 1;
    private int mLastScrollDelta;
    private int mLayoutDirection = 1;
    private int mOffset;
    private int mPosition;
    private int mScrollingOffset;
    private boolean mShouldRecycle;
    
    private boolean hasMore(RecyclerView.z paramz, List<FlexLine> paramList)
    {
      int i = this.mPosition;
      if ((i >= 0) && (i < paramz.b()))
      {
        i = this.mFlexLinePosition;
        if ((i >= 0) && (i < paramList.size()))
        {
          bool = true;
          break label45;
        }
      }
      boolean bool = false;
      label45:
      return bool;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("LayoutState{mAvailable=");
      localStringBuilder.append(this.mAvailable);
      localStringBuilder.append(", mFlexLinePosition=");
      localStringBuilder.append(this.mFlexLinePosition);
      localStringBuilder.append(", mPosition=");
      localStringBuilder.append(this.mPosition);
      localStringBuilder.append(", mOffset=");
      localStringBuilder.append(this.mOffset);
      localStringBuilder.append(", mScrollingOffset=");
      localStringBuilder.append(this.mScrollingOffset);
      localStringBuilder.append(", mLastScrollDelta=");
      localStringBuilder.append(this.mLastScrollDelta);
      localStringBuilder.append(", mItemDirection=");
      localStringBuilder.append(this.mItemDirection);
      localStringBuilder.append(", mLayoutDirection=");
      localStringBuilder.append(this.mLayoutDirection);
      localStringBuilder.append('}');
      return localStringBuilder.toString();
    }
  }
  
  private static class SavedState
    implements Parcelable
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator()
    {
      public FlexboxLayoutManager.SavedState createFromParcel(Parcel paramAnonymousParcel)
      {
        return new FlexboxLayoutManager.SavedState(paramAnonymousParcel, null);
      }
      
      public FlexboxLayoutManager.SavedState[] newArray(int paramAnonymousInt)
      {
        return new FlexboxLayoutManager.SavedState[paramAnonymousInt];
      }
    };
    private int mAnchorOffset;
    private int mAnchorPosition;
    
    SavedState() {}
    
    private SavedState(Parcel paramParcel)
    {
      this.mAnchorPosition = paramParcel.readInt();
      this.mAnchorOffset = paramParcel.readInt();
    }
    
    private SavedState(SavedState paramSavedState)
    {
      this.mAnchorPosition = paramSavedState.mAnchorPosition;
      this.mAnchorOffset = paramSavedState.mAnchorOffset;
    }
    
    private boolean hasValidAnchor(int paramInt)
    {
      int i = this.mAnchorPosition;
      boolean bool;
      if ((i >= 0) && (i < paramInt)) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    private void invalidateAnchor()
    {
      this.mAnchorPosition = -1;
    }
    
    public int describeContents()
    {
      return 0;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("SavedState{mAnchorPosition=");
      localStringBuilder.append(this.mAnchorPosition);
      localStringBuilder.append(", mAnchorOffset=");
      localStringBuilder.append(this.mAnchorOffset);
      localStringBuilder.append('}');
      return localStringBuilder.toString();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeInt(this.mAnchorPosition);
      paramParcel.writeInt(this.mAnchorOffset);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.flexbox.FlexboxLayoutManager
 * JD-Core Version:    0.7.0.1
 */
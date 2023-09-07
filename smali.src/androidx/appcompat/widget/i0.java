package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityRecord;
import android.widget.LinearLayout.LayoutParams;
import androidx.core.view.a0;
import androidx.core.view.e;
import d.j;

public class i0
  extends ViewGroup
{
  private static final String ACCESSIBILITY_CLASS_NAME = "androidx.appcompat.widget.LinearLayoutCompat";
  public static final int HORIZONTAL = 0;
  private static final int INDEX_BOTTOM = 2;
  private static final int INDEX_CENTER_VERTICAL = 0;
  private static final int INDEX_FILL = 3;
  private static final int INDEX_TOP = 1;
  public static final int SHOW_DIVIDER_BEGINNING = 1;
  public static final int SHOW_DIVIDER_END = 4;
  public static final int SHOW_DIVIDER_MIDDLE = 2;
  public static final int SHOW_DIVIDER_NONE = 0;
  public static final int VERTICAL = 1;
  private static final int VERTICAL_GRAVITY_COUNT = 4;
  private boolean mBaselineAligned = true;
  private int mBaselineAlignedChildIndex = -1;
  private int mBaselineChildTop = 0;
  private Drawable mDivider;
  private int mDividerHeight;
  private int mDividerPadding;
  private int mDividerWidth;
  private int mGravity = 8388659;
  private int[] mMaxAscent;
  private int[] mMaxDescent;
  private int mOrientation;
  private int mShowDividers;
  private int mTotalLength;
  private boolean mUseLargestChild;
  private float mWeightSum;
  
  public i0(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public i0(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public i0(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    int[] arrayOfInt = j.a1;
    z0 localz0 = z0.v(paramContext, paramAttributeSet, arrayOfInt, paramInt, 0);
    a0.j0(this, paramContext, arrayOfInt, paramAttributeSet, localz0.r(), paramInt, 0);
    paramInt = localz0.k(j.c1, -1);
    if (paramInt >= 0) {
      setOrientation(paramInt);
    }
    paramInt = localz0.k(j.b1, -1);
    if (paramInt >= 0) {
      setGravity(paramInt);
    }
    boolean bool = localz0.a(j.d1, true);
    if (!bool) {
      setBaselineAligned(bool);
    }
    this.mWeightSum = localz0.i(j.f1, -1.0F);
    this.mBaselineAlignedChildIndex = localz0.k(j.e1, -1);
    this.mUseLargestChild = localz0.a(j.i1, false);
    setDividerDrawable(localz0.g(j.g1));
    this.mShowDividers = localz0.k(j.j1, 0);
    this.mDividerPadding = localz0.f(j.h1, 0);
    localz0.w();
  }
  
  private void forceUniformHeight(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
    for (int j = 0; j < paramInt1; j++)
    {
      View localView = getVirtualChildAt(j);
      if (localView.getVisibility() != 8)
      {
        a locala = (a)localView.getLayoutParams();
        if (locala.height == -1)
        {
          int k = locala.width;
          locala.width = localView.getMeasuredWidth();
          measureChildWithMargins(localView, paramInt2, 0, i, 0);
          locala.width = k;
        }
      }
    }
  }
  
  private void forceUniformWidth(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
    for (int j = 0; j < paramInt1; j++)
    {
      View localView = getVirtualChildAt(j);
      if (localView.getVisibility() != 8)
      {
        a locala = (a)localView.getLayoutParams();
        if (locala.width == -1)
        {
          int k = locala.height;
          locala.height = localView.getMeasuredHeight();
          measureChildWithMargins(localView, i, 0, paramInt2, 0);
          locala.height = k;
        }
      }
    }
  }
  
  private void setChildFrame(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramView.layout(paramInt1, paramInt2, paramInt3 + paramInt1, paramInt4 + paramInt2);
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof a;
  }
  
  void drawDividersHorizontal(Canvas paramCanvas)
  {
    int i = getVirtualChildCount();
    boolean bool = e1.b(this);
    View localView;
    a locala;
    int k;
    for (int j = 0; j < i; j++)
    {
      localView = getVirtualChildAt(j);
      if ((localView != null) && (localView.getVisibility() != 8) && (hasDividerBeforeChildAt(j)))
      {
        locala = (a)localView.getLayoutParams();
        if (bool) {
          k = localView.getRight() + locala.rightMargin;
        } else {
          k = localView.getLeft() - locala.leftMargin - this.mDividerWidth;
        }
        drawVerticalDivider(paramCanvas, k);
      }
    }
    if (hasDividerBeforeChildAt(i))
    {
      localView = getVirtualChildAt(i - 1);
      if (localView == null)
      {
        if (bool)
        {
          j = getPaddingLeft();
          break label223;
        }
        k = getWidth() - getPaddingRight();
        j = this.mDividerWidth;
      }
      else
      {
        locala = (a)localView.getLayoutParams();
        if (!bool) {
          break label210;
        }
        k = localView.getLeft() - locala.leftMargin;
        j = this.mDividerWidth;
      }
      j = k - j;
      break label223;
      label210:
      j = localView.getRight() + locala.rightMargin;
      label223:
      drawVerticalDivider(paramCanvas, j);
    }
  }
  
  void drawDividersVertical(Canvas paramCanvas)
  {
    int i = getVirtualChildCount();
    Object localObject1;
    Object localObject2;
    for (int j = 0; j < i; j++)
    {
      localObject1 = getVirtualChildAt(j);
      if ((localObject1 != null) && (((View)localObject1).getVisibility() != 8) && (hasDividerBeforeChildAt(j)))
      {
        localObject2 = (a)((View)localObject1).getLayoutParams();
        drawHorizontalDivider(paramCanvas, ((View)localObject1).getTop() - ((LinearLayout.LayoutParams)localObject2).topMargin - this.mDividerHeight);
      }
    }
    if (hasDividerBeforeChildAt(i))
    {
      localObject2 = getVirtualChildAt(i - 1);
      if (localObject2 == null)
      {
        j = getHeight() - getPaddingBottom() - this.mDividerHeight;
      }
      else
      {
        localObject1 = (a)((View)localObject2).getLayoutParams();
        j = ((View)localObject2).getBottom() + ((LinearLayout.LayoutParams)localObject1).bottomMargin;
      }
      drawHorizontalDivider(paramCanvas, j);
    }
  }
  
  void drawHorizontalDivider(Canvas paramCanvas, int paramInt)
  {
    this.mDivider.setBounds(getPaddingLeft() + this.mDividerPadding, paramInt, getWidth() - getPaddingRight() - this.mDividerPadding, this.mDividerHeight + paramInt);
    this.mDivider.draw(paramCanvas);
  }
  
  void drawVerticalDivider(Canvas paramCanvas, int paramInt)
  {
    this.mDivider.setBounds(paramInt, getPaddingTop() + this.mDividerPadding, this.mDividerWidth + paramInt, getHeight() - getPaddingBottom() - this.mDividerPadding);
    this.mDivider.draw(paramCanvas);
  }
  
  protected a generateDefaultLayoutParams()
  {
    int i = this.mOrientation;
    if (i == 0) {
      return new a(-2, -2);
    }
    if (i == 1) {
      return new a(-1, -2);
    }
    return null;
  }
  
  public a generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new a(getContext(), paramAttributeSet);
  }
  
  protected a generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return new a(paramLayoutParams);
  }
  
  public int getBaseline()
  {
    if (this.mBaselineAlignedChildIndex < 0) {
      return super.getBaseline();
    }
    int i = getChildCount();
    int j = this.mBaselineAlignedChildIndex;
    if (i > j)
    {
      View localView = getChildAt(j);
      int k = localView.getBaseline();
      if (k == -1)
      {
        if (this.mBaselineAlignedChildIndex == 0) {
          return -1;
        }
        throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
      }
      i = this.mBaselineChildTop;
      j = i;
      if (this.mOrientation == 1)
      {
        int m = this.mGravity & 0x70;
        j = i;
        if (m != 48) {
          if (m != 16)
          {
            if (m != 80) {
              j = i;
            } else {
              j = getBottom() - getTop() - getPaddingBottom() - this.mTotalLength;
            }
          }
          else {
            j = i + (getBottom() - getTop() - getPaddingTop() - getPaddingBottom() - this.mTotalLength) / 2;
          }
        }
      }
      return j + ((a)localView.getLayoutParams()).topMargin + k;
    }
    throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
  }
  
  public int getBaselineAlignedChildIndex()
  {
    return this.mBaselineAlignedChildIndex;
  }
  
  int getChildrenSkipCount(View paramView, int paramInt)
  {
    return 0;
  }
  
  public Drawable getDividerDrawable()
  {
    return this.mDivider;
  }
  
  public int getDividerPadding()
  {
    return this.mDividerPadding;
  }
  
  public int getDividerWidth()
  {
    return this.mDividerWidth;
  }
  
  public int getGravity()
  {
    return this.mGravity;
  }
  
  int getLocationOffset(View paramView)
  {
    return 0;
  }
  
  int getNextLocationOffset(View paramView)
  {
    return 0;
  }
  
  public int getOrientation()
  {
    return this.mOrientation;
  }
  
  public int getShowDividers()
  {
    return this.mShowDividers;
  }
  
  View getVirtualChildAt(int paramInt)
  {
    return getChildAt(paramInt);
  }
  
  int getVirtualChildCount()
  {
    return getChildCount();
  }
  
  public float getWeightSum()
  {
    return this.mWeightSum;
  }
  
  protected boolean hasDividerBeforeChildAt(int paramInt)
  {
    boolean bool1 = false;
    boolean bool2 = false;
    boolean bool3 = false;
    if (paramInt == 0)
    {
      if ((this.mShowDividers & 0x1) != 0) {
        bool3 = true;
      }
      return bool3;
    }
    if (paramInt == getChildCount())
    {
      bool3 = bool1;
      if ((this.mShowDividers & 0x4) != 0) {
        bool3 = true;
      }
      return bool3;
    }
    bool3 = bool2;
    if ((this.mShowDividers & 0x2) != 0)
    {
      paramInt--;
      for (;;)
      {
        bool3 = bool2;
        if (paramInt < 0) {
          break;
        }
        if (getChildAt(paramInt).getVisibility() != 8)
        {
          bool3 = true;
          break;
        }
        paramInt--;
      }
    }
    return bool3;
  }
  
  public boolean isBaselineAligned()
  {
    return this.mBaselineAligned;
  }
  
  public boolean isMeasureWithLargestChildEnabled()
  {
    return this.mUseLargestChild;
  }
  
  void layoutHorizontal(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    boolean bool1 = e1.b(this);
    int i = getPaddingTop();
    int j = paramInt4 - paramInt2;
    int k = getPaddingBottom();
    int m = getPaddingBottom();
    int n = getVirtualChildCount();
    paramInt2 = this.mGravity;
    paramInt4 = paramInt2 & 0x70;
    boolean bool2 = this.mBaselineAligned;
    int[] arrayOfInt1 = this.mMaxAscent;
    int[] arrayOfInt2 = this.mMaxDescent;
    paramInt2 = e.b(0x800007 & paramInt2, a0.z(this));
    int i1 = 1;
    if (paramInt2 != 1)
    {
      if (paramInt2 != 5) {
        paramInt2 = getPaddingLeft();
      } else {
        paramInt2 = getPaddingLeft() + paramInt3 - paramInt1 - this.mTotalLength;
      }
    }
    else {
      paramInt2 = getPaddingLeft() + (paramInt3 - paramInt1 - this.mTotalLength) / 2;
    }
    int i2;
    int i3;
    if (bool1)
    {
      i2 = n - 1;
      i3 = -1;
    }
    else
    {
      i2 = 0;
      i3 = 1;
    }
    int i4 = 0;
    paramInt3 = paramInt4;
    paramInt4 = i;
    while (i4 < n)
    {
      int i5 = i2 + i3 * i4;
      View localView = getVirtualChildAt(i5);
      if (localView == null)
      {
        paramInt2 += measureNullChild(i5);
      }
      else if (localView.getVisibility() != 8)
      {
        int i6 = localView.getMeasuredWidth();
        int i7 = localView.getMeasuredHeight();
        a locala = (a)localView.getLayoutParams();
        if ((bool2) && (locala.height != -1)) {
          i8 = localView.getBaseline();
        } else {
          i8 = -1;
        }
        int i9 = locala.gravity;
        paramInt1 = i9;
        if (i9 < 0) {
          paramInt1 = paramInt3;
        }
        paramInt1 &= 0x70;
        if (paramInt1 != 16)
        {
          if (paramInt1 != 48)
          {
            if (paramInt1 != 80)
            {
              paramInt1 = paramInt4;
            }
            else
            {
              i9 = j - k - i7 - locala.bottomMargin;
              paramInt1 = i9;
              if (i8 != -1)
              {
                paramInt1 = localView.getMeasuredHeight();
                paramInt1 = i9 - (arrayOfInt2[2] - (paramInt1 - i8));
              }
            }
          }
          else
          {
            i9 = locala.topMargin + paramInt4;
            paramInt1 = i9;
            if (i8 != -1)
            {
              paramInt1 = i9 + (arrayOfInt1[1] - i8);
              break label426;
            }
          }
        }
        else {
          paramInt1 = (j - i - m - i7) / 2 + paramInt4 + locala.topMargin - locala.bottomMargin;
        }
        label426:
        i1 = 1;
        int i8 = paramInt2;
        if (hasDividerBeforeChildAt(i5)) {
          i8 = paramInt2 + this.mDividerWidth;
        }
        paramInt2 = locala.leftMargin + i8;
        setChildFrame(localView, paramInt2 + getLocationOffset(localView), paramInt1, i6, i7);
        i8 = locala.rightMargin;
        paramInt1 = getNextLocationOffset(localView);
        i4 += getChildrenSkipCount(localView, i5);
        paramInt2 += i6 + i8 + paramInt1;
      }
      else
      {
        i1 = 1;
      }
      i4++;
    }
  }
  
  void layoutVertical(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = getPaddingLeft();
    int j = paramInt3 - paramInt1;
    int k = getPaddingRight();
    int m = getPaddingRight();
    int n = getVirtualChildCount();
    int i1 = this.mGravity;
    paramInt1 = i1 & 0x70;
    if (paramInt1 != 16)
    {
      if (paramInt1 != 80) {
        paramInt1 = getPaddingTop();
      } else {
        paramInt1 = getPaddingTop() + paramInt4 - paramInt2 - this.mTotalLength;
      }
    }
    else {
      paramInt1 = getPaddingTop() + (paramInt4 - paramInt2 - this.mTotalLength) / 2;
    }
    for (paramInt2 = 0; paramInt2 < n; paramInt2++)
    {
      View localView = getVirtualChildAt(paramInt2);
      if (localView == null)
      {
        paramInt3 = paramInt1 + measureNullChild(paramInt2);
      }
      else
      {
        paramInt3 = paramInt1;
        if (localView.getVisibility() != 8)
        {
          int i2 = localView.getMeasuredWidth();
          int i3 = localView.getMeasuredHeight();
          a locala = (a)localView.getLayoutParams();
          paramInt4 = locala.gravity;
          paramInt3 = paramInt4;
          if (paramInt4 < 0) {
            paramInt3 = i1 & 0x800007;
          }
          paramInt3 = e.b(paramInt3, a0.z(this)) & 0x7;
          if (paramInt3 != 1)
          {
            if (paramInt3 != 5)
            {
              paramInt3 = locala.leftMargin + i;
              break label273;
            }
            paramInt4 = j - k - i2;
            paramInt3 = locala.rightMargin;
          }
          else
          {
            paramInt4 = (j - i - m - i2) / 2 + i + locala.leftMargin;
            paramInt3 = locala.rightMargin;
          }
          paramInt3 = paramInt4 - paramInt3;
          label273:
          paramInt4 = paramInt1;
          if (hasDividerBeforeChildAt(paramInt2)) {
            paramInt4 = paramInt1 + this.mDividerHeight;
          }
          paramInt1 = paramInt4 + locala.topMargin;
          setChildFrame(localView, paramInt3, paramInt1 + getLocationOffset(localView), i2, i3);
          paramInt3 = locala.bottomMargin;
          paramInt4 = getNextLocationOffset(localView);
          paramInt2 += getChildrenSkipCount(localView, paramInt2);
          paramInt1 += i3 + paramInt3 + paramInt4;
          continue;
        }
      }
      paramInt1 = paramInt3;
    }
  }
  
  void measureChildBeforeLayout(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    measureChildWithMargins(paramView, paramInt2, paramInt3, paramInt4, paramInt5);
  }
  
  void measureHorizontal(int paramInt1, int paramInt2)
  {
    this.mTotalLength = 0;
    int i = getVirtualChildCount();
    int j = View.MeasureSpec.getMode(paramInt1);
    int k = View.MeasureSpec.getMode(paramInt2);
    if ((this.mMaxAscent == null) || (this.mMaxDescent == null))
    {
      this.mMaxAscent = new int[4];
      this.mMaxDescent = new int[4];
    }
    int[] arrayOfInt = this.mMaxAscent;
    Object localObject1 = this.mMaxDescent;
    arrayOfInt[3] = -1;
    arrayOfInt[2] = -1;
    arrayOfInt[1] = -1;
    arrayOfInt[0] = -1;
    localObject1[3] = -1;
    localObject1[2] = -1;
    localObject1[1] = -1;
    localObject1[0] = -1;
    boolean bool1 = this.mBaselineAligned;
    boolean bool2 = this.mUseLargestChild;
    int m = 1073741824;
    int n;
    if (j == 1073741824) {
      n = 1;
    } else {
      n = 0;
    }
    int i1 = 0;
    int i2 = i1;
    int i3 = i2;
    int i4 = i3;
    int i5 = i4;
    int i6 = i5;
    int i7 = i6;
    int i8 = i7;
    int i9 = 1;
    float f1 = 0.0F;
    Object localObject2;
    Object localObject3;
    float f2;
    while (i1 < i)
    {
      localObject2 = getVirtualChildAt(i1);
      if (localObject2 == null) {
        this.mTotalLength += measureNullChild(i1);
      }
      for (;;)
      {
        i10 = i1;
        i1 = m;
        m = i10;
        break label866;
        if (((View)localObject2).getVisibility() != 8) {
          break;
        }
        i1 += getChildrenSkipCount((View)localObject2, i1);
      }
      if (hasDividerBeforeChildAt(i1)) {
        this.mTotalLength += this.mDividerWidth;
      }
      localObject3 = (a)((View)localObject2).getLayoutParams();
      f2 = ((LinearLayout.LayoutParams)localObject3).weight;
      f1 += f2;
      if ((j == m) && (((LinearLayout.LayoutParams)localObject3).width == 0) && (f2 > 0.0F))
      {
        if (n != 0)
        {
          this.mTotalLength += ((LinearLayout.LayoutParams)localObject3).leftMargin + ((LinearLayout.LayoutParams)localObject3).rightMargin;
        }
        else
        {
          m = this.mTotalLength;
          this.mTotalLength = Math.max(m, ((LinearLayout.LayoutParams)localObject3).leftMargin + m + ((LinearLayout.LayoutParams)localObject3).rightMargin);
        }
        if (bool1)
        {
          m = View.MeasureSpec.makeMeasureSpec(0, 0);
          ((View)localObject2).measure(m, m);
          m = i2;
        }
        else
        {
          i6 = 1;
          break label591;
        }
      }
      else
      {
        if ((((LinearLayout.LayoutParams)localObject3).width == 0) && (f2 > 0.0F))
        {
          ((LinearLayout.LayoutParams)localObject3).width = -2;
          m = 0;
        }
        else
        {
          m = -2147483648;
        }
        if (f1 == 0.0F) {
          i10 = this.mTotalLength;
        } else {
          i10 = 0;
        }
        measureChildBeforeLayout((View)localObject2, i1, paramInt1, i10, paramInt2, 0);
        if (m != -2147483648) {
          ((LinearLayout.LayoutParams)localObject3).width = m;
        }
        i10 = ((View)localObject2).getMeasuredWidth();
        if (n != 0)
        {
          this.mTotalLength += ((LinearLayout.LayoutParams)localObject3).leftMargin + i10 + ((LinearLayout.LayoutParams)localObject3).rightMargin + getNextLocationOffset((View)localObject2);
        }
        else
        {
          m = this.mTotalLength;
          this.mTotalLength = Math.max(m, m + i10 + ((LinearLayout.LayoutParams)localObject3).leftMargin + ((LinearLayout.LayoutParams)localObject3).rightMargin + getNextLocationOffset((View)localObject2));
        }
        m = i2;
        if (bool2) {
          m = Math.max(i10, i2);
        }
      }
      i2 = m;
      label591:
      int i11 = i1;
      i12 = 1073741824;
      if ((k != 1073741824) && (((LinearLayout.LayoutParams)localObject3).height == -1))
      {
        i1 = 1;
        i8 = i1;
      }
      else
      {
        i1 = 0;
      }
      i10 = ((LinearLayout.LayoutParams)localObject3).topMargin + ((LinearLayout.LayoutParams)localObject3).bottomMargin;
      m = ((View)localObject2).getMeasuredHeight() + i10;
      int i13 = View.combineMeasuredStates(i7, ((View)localObject2).getMeasuredState());
      if (bool1)
      {
        int i14 = ((View)localObject2).getBaseline();
        if (i14 != -1)
        {
          int i15 = ((LinearLayout.LayoutParams)localObject3).gravity;
          i7 = i15;
          if (i15 < 0) {
            i7 = this.mGravity;
          }
          i7 = ((i7 & 0x70) >> 4 & 0xFFFFFFFE) >> 1;
          arrayOfInt[i7] = Math.max(arrayOfInt[i7], i14);
          localObject1[i7] = Math.max(localObject1[i7], m - i14);
        }
      }
      i3 = Math.max(i3, m);
      if ((i9 != 0) && (((LinearLayout.LayoutParams)localObject3).height == -1)) {
        i9 = 1;
      } else {
        i9 = 0;
      }
      if (((LinearLayout.LayoutParams)localObject3).weight > 0.0F)
      {
        if (i1 == 0) {
          i10 = m;
        }
        i1 = Math.max(i5, i10);
      }
      else
      {
        if (i1 == 0) {
          i10 = m;
        }
        i4 = Math.max(i4, i10);
        i1 = i5;
      }
      m = getChildrenSkipCount((View)localObject2, i11) + i11;
      i7 = i13;
      i5 = i1;
      i1 = i12;
      label866:
      i10 = i1;
      i1 = m + 1;
      m = i10;
    }
    if ((this.mTotalLength > 0) && (hasDividerBeforeChildAt(i))) {
      this.mTotalLength += this.mDividerWidth;
    }
    i1 = arrayOfInt[1];
    if ((i1 == -1) && (arrayOfInt[0] == -1) && (arrayOfInt[2] == -1) && (arrayOfInt[3] == -1)) {
      i1 = i3;
    } else {
      i1 = Math.max(i3, Math.max(arrayOfInt[3], Math.max(arrayOfInt[0], Math.max(i1, arrayOfInt[2]))) + Math.max(localObject1[3], Math.max(localObject1[0], Math.max(localObject1[1], localObject1[2]))));
    }
    i3 = i7;
    m = i1;
    if (bool2) {
      if (j != -2147483648)
      {
        m = i1;
        if (j != 0) {}
      }
      else
      {
        this.mTotalLength = 0;
        for (i7 = 0;; i7++)
        {
          m = i1;
          if (i7 >= i) {
            break;
          }
          localObject2 = getVirtualChildAt(i7);
          if (localObject2 == null)
          {
            this.mTotalLength += measureNullChild(i7);
          }
          else
          {
            if (((View)localObject2).getVisibility() != 8) {
              break label1118;
            }
            i7 += getChildrenSkipCount((View)localObject2, i7);
          }
          for (;;)
          {
            break;
            label1118:
            localObject3 = (a)((View)localObject2).getLayoutParams();
            if (n != 0)
            {
              this.mTotalLength += ((LinearLayout.LayoutParams)localObject3).leftMargin + i2 + ((LinearLayout.LayoutParams)localObject3).rightMargin + getNextLocationOffset((View)localObject2);
            }
            else
            {
              m = this.mTotalLength;
              this.mTotalLength = Math.max(m, m + i2 + ((LinearLayout.LayoutParams)localObject3).leftMargin + ((LinearLayout.LayoutParams)localObject3).rightMargin + getNextLocationOffset((View)localObject2));
            }
          }
        }
      }
    }
    i1 = this.mTotalLength + (getPaddingLeft() + getPaddingRight());
    this.mTotalLength = i1;
    int i12 = View.resolveSizeAndState(Math.max(i1, getSuggestedMinimumWidth()), paramInt1, 0);
    int i10 = (0xFFFFFF & i12) - this.mTotalLength;
    if ((i6 == 0) && ((i10 == 0) || (f1 <= 0.0F)))
    {
      i7 = Math.max(i4, i5);
      if ((bool2) && (j != 1073741824)) {
        for (i4 = 0; i4 < i; i4++)
        {
          localObject1 = getVirtualChildAt(i4);
          if ((localObject1 != null) && (((View)localObject1).getVisibility() != 8) && (((a)((View)localObject1).getLayoutParams()).weight > 0.0F)) {
            ((View)localObject1).measure(View.MeasureSpec.makeMeasureSpec(i2, 1073741824), View.MeasureSpec.makeMeasureSpec(((View)localObject1).getMeasuredHeight(), 1073741824));
          }
        }
      }
      i1 = i;
      i2 = m;
      i4 = i7;
    }
    else
    {
      f2 = this.mWeightSum;
      if (f2 > 0.0F) {
        f1 = f2;
      }
      arrayOfInt[3] = -1;
      arrayOfInt[2] = -1;
      arrayOfInt[1] = -1;
      arrayOfInt[0] = -1;
      localObject1[3] = -1;
      localObject1[2] = -1;
      localObject1[1] = -1;
      localObject1[0] = -1;
      this.mTotalLength = 0;
      i5 = -1;
      i7 = i3;
      i3 = 0;
      i1 = i9;
      i2 = i;
      i9 = i7;
      i7 = i4;
      i4 = i10;
      while (i3 < i2)
      {
        localObject3 = getVirtualChildAt(i3);
        if ((localObject3 != null) && (((View)localObject3).getVisibility() != 8))
        {
          localObject2 = (a)((View)localObject3).getLayoutParams();
          f2 = ((LinearLayout.LayoutParams)localObject2).weight;
          if (f2 > 0.0F)
          {
            m = (int)(i4 * f2 / f1);
            i10 = ViewGroup.getChildMeasureSpec(paramInt2, getPaddingTop() + getPaddingBottom() + ((LinearLayout.LayoutParams)localObject2).topMargin + ((LinearLayout.LayoutParams)localObject2).bottomMargin, ((LinearLayout.LayoutParams)localObject2).height);
            if ((((LinearLayout.LayoutParams)localObject2).width == 0) && (j == 1073741824))
            {
              if (m > 0) {
                i6 = m;
              } else {
                i6 = 0;
              }
              ((View)localObject3).measure(View.MeasureSpec.makeMeasureSpec(i6, 1073741824), i10);
            }
            else
            {
              i = ((View)localObject3).getMeasuredWidth() + m;
              i6 = i;
              if (i < 0) {
                i6 = 0;
              }
              ((View)localObject3).measure(View.MeasureSpec.makeMeasureSpec(i6, 1073741824), i10);
            }
            i9 = View.combineMeasuredStates(i9, ((View)localObject3).getMeasuredState() & 0xFF000000);
            f1 -= f2;
            i4 -= m;
          }
          if (n != 0)
          {
            this.mTotalLength += ((View)localObject3).getMeasuredWidth() + ((LinearLayout.LayoutParams)localObject2).leftMargin + ((LinearLayout.LayoutParams)localObject2).rightMargin + getNextLocationOffset((View)localObject3);
          }
          else
          {
            i6 = this.mTotalLength;
            this.mTotalLength = Math.max(i6, ((View)localObject3).getMeasuredWidth() + i6 + ((LinearLayout.LayoutParams)localObject2).leftMargin + ((LinearLayout.LayoutParams)localObject2).rightMargin + getNextLocationOffset((View)localObject3));
          }
          if ((k != 1073741824) && (((LinearLayout.LayoutParams)localObject2).height == -1)) {
            i6 = 1;
          } else {
            i6 = 0;
          }
          i10 = ((LinearLayout.LayoutParams)localObject2).topMargin + ((LinearLayout.LayoutParams)localObject2).bottomMargin;
          i = ((View)localObject3).getMeasuredHeight() + i10;
          m = Math.max(i5, i);
          if (i6 != 0) {
            i5 = i10;
          } else {
            i5 = i;
          }
          i5 = Math.max(i7, i5);
          if ((i1 != 0) && (((LinearLayout.LayoutParams)localObject2).height == -1)) {
            i1 = 1;
          } else {
            i1 = 0;
          }
          if (bool1)
          {
            i10 = ((View)localObject3).getBaseline();
            if (i10 != -1)
            {
              i6 = ((LinearLayout.LayoutParams)localObject2).gravity;
              i7 = i6;
              if (i6 < 0) {
                i7 = this.mGravity;
              }
              i7 = ((i7 & 0x70) >> 4 & 0xFFFFFFFE) >> 1;
              arrayOfInt[i7] = Math.max(arrayOfInt[i7], i10);
              localObject1[i7] = Math.max(localObject1[i7], i - i10);
            }
          }
          i7 = i5;
          i5 = m;
        }
        i3++;
      }
      this.mTotalLength += getPaddingLeft() + getPaddingRight();
      i4 = arrayOfInt[1];
      if ((i4 == -1) && (arrayOfInt[0] == -1) && (arrayOfInt[2] == -1) && (arrayOfInt[3] == -1)) {
        i4 = i5;
      } else {
        i4 = Math.max(i5, Math.max(arrayOfInt[3], Math.max(arrayOfInt[0], Math.max(i4, arrayOfInt[2]))) + Math.max(localObject1[3], Math.max(localObject1[0], Math.max(localObject1[1], localObject1[2]))));
      }
      i3 = i9;
      i9 = i1;
      i1 = i2;
      i2 = i4;
      i4 = i7;
    }
    if ((i9 != 0) || (k == 1073741824)) {
      i4 = i2;
    }
    setMeasuredDimension(i12 | i3 & 0xFF000000, View.resolveSizeAndState(Math.max(i4 + (getPaddingTop() + getPaddingBottom()), getSuggestedMinimumHeight()), paramInt2, i3 << 16));
    if (i8 != 0) {
      forceUniformHeight(i1, paramInt1);
    }
  }
  
  int measureNullChild(int paramInt)
  {
    return 0;
  }
  
  void measureVertical(int paramInt1, int paramInt2)
  {
    this.mTotalLength = 0;
    int i = getVirtualChildCount();
    int j = View.MeasureSpec.getMode(paramInt1);
    int k = View.MeasureSpec.getMode(paramInt2);
    int m = this.mBaselineAlignedChildIndex;
    boolean bool = this.mUseLargestChild;
    int n = 0;
    int i1 = n;
    int i2 = i1;
    int i3 = i2;
    int i4 = i3;
    int i5 = i4;
    int i6 = i5;
    int i7 = i6;
    float f1 = 0.0F;
    int i8 = 1;
    Object localObject1;
    Object localObject2;
    float f2;
    int i9;
    int i11;
    int i12;
    while (i5 < i)
    {
      localObject1 = getVirtualChildAt(i5);
      if (localObject1 == null)
      {
        this.mTotalLength += measureNullChild(i5);
      }
      else if (((View)localObject1).getVisibility() == 8)
      {
        i5 += getChildrenSkipCount((View)localObject1, i5);
      }
      else
      {
        if (hasDividerBeforeChildAt(i5)) {
          this.mTotalLength += this.mDividerHeight;
        }
        localObject2 = (a)((View)localObject1).getLayoutParams();
        f2 = ((LinearLayout.LayoutParams)localObject2).weight;
        f1 += f2;
        if ((k == 1073741824) && (((LinearLayout.LayoutParams)localObject2).height == 0) && (f2 > 0.0F))
        {
          i6 = this.mTotalLength;
          this.mTotalLength = Math.max(i6, ((LinearLayout.LayoutParams)localObject2).topMargin + i6 + ((LinearLayout.LayoutParams)localObject2).bottomMargin);
          i6 = 1;
        }
        else
        {
          if ((((LinearLayout.LayoutParams)localObject2).height == 0) && (f2 > 0.0F))
          {
            ((LinearLayout.LayoutParams)localObject2).height = -2;
            i9 = 0;
          }
          else
          {
            i9 = -2147483648;
          }
          if (f1 == 0.0F) {
            i10 = this.mTotalLength;
          } else {
            i10 = 0;
          }
          measureChildBeforeLayout((View)localObject1, i5, paramInt1, 0, paramInt2, i10);
          if (i9 != -2147483648) {
            ((LinearLayout.LayoutParams)localObject2).height = i9;
          }
          i10 = ((View)localObject1).getMeasuredHeight();
          i9 = this.mTotalLength;
          this.mTotalLength = Math.max(i9, i9 + i10 + ((LinearLayout.LayoutParams)localObject2).topMargin + ((LinearLayout.LayoutParams)localObject2).bottomMargin + getNextLocationOffset((View)localObject1));
          if (bool) {
            i2 = Math.max(i10, i2);
          }
        }
        i11 = i5;
        if ((m >= 0) && (m == i11 + 1)) {
          this.mBaselineChildTop = this.mTotalLength;
        }
        if ((i11 < m) && (((LinearLayout.LayoutParams)localObject2).weight > 0.0F)) {
          throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
        }
        if ((j != 1073741824) && (((LinearLayout.LayoutParams)localObject2).width == -1))
        {
          i5 = 1;
          i7 = i5;
        }
        else
        {
          i5 = 0;
        }
        i9 = ((LinearLayout.LayoutParams)localObject2).leftMargin + ((LinearLayout.LayoutParams)localObject2).rightMargin;
        i10 = ((View)localObject1).getMeasuredWidth() + i9;
        i1 = Math.max(i1, i10);
        i12 = View.combineMeasuredStates(n, ((View)localObject1).getMeasuredState());
        if ((i8 != 0) && (((LinearLayout.LayoutParams)localObject2).width == -1)) {
          n = 1;
        } else {
          n = 0;
        }
        if (((LinearLayout.LayoutParams)localObject2).weight > 0.0F)
        {
          if (i5 == 0) {
            i9 = i10;
          }
          i3 = Math.max(i3, i9);
          i8 = i4;
        }
        else
        {
          if (i5 == 0) {
            i9 = i10;
          }
          i8 = Math.max(i4, i9);
        }
        i5 = getChildrenSkipCount((View)localObject1, i11);
        i4 = i8;
        i9 = i12;
        i5 += i11;
        i8 = n;
        n = i9;
      }
      i5++;
    }
    if ((this.mTotalLength > 0) && (hasDividerBeforeChildAt(i))) {
      this.mTotalLength += this.mDividerHeight;
    }
    if ((bool) && ((k == -2147483648) || (k == 0)))
    {
      this.mTotalLength = 0;
      for (i5 = 0; i5 < i; i5++)
      {
        localObject2 = getVirtualChildAt(i5);
        if (localObject2 == null)
        {
          this.mTotalLength += measureNullChild(i5);
        }
        else if (((View)localObject2).getVisibility() == 8)
        {
          i5 += getChildrenSkipCount((View)localObject2, i5);
        }
        else
        {
          localObject1 = (a)((View)localObject2).getLayoutParams();
          i9 = this.mTotalLength;
          this.mTotalLength = Math.max(i9, i9 + i2 + ((LinearLayout.LayoutParams)localObject1).topMargin + ((LinearLayout.LayoutParams)localObject1).bottomMargin + getNextLocationOffset((View)localObject2));
        }
      }
    }
    i5 = this.mTotalLength + (getPaddingTop() + getPaddingBottom());
    this.mTotalLength = i5;
    int i10 = View.resolveSizeAndState(Math.max(i5, getSuggestedMinimumHeight()), paramInt2, 0);
    i5 = (0xFFFFFF & i10) - this.mTotalLength;
    if ((i6 == 0) && ((i5 == 0) || (f1 <= 0.0F)))
    {
      i4 = Math.max(i4, i3);
      if ((bool) && (k != 1073741824)) {
        for (i3 = 0; i3 < i; i3++)
        {
          localObject1 = getVirtualChildAt(i3);
          if ((localObject1 != null) && (((View)localObject1).getVisibility() != 8) && (((a)((View)localObject1).getLayoutParams()).weight > 0.0F)) {
            ((View)localObject1).measure(View.MeasureSpec.makeMeasureSpec(((View)localObject1).getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(i2, 1073741824));
          }
        }
      }
      i3 = n;
      n = i4;
      i2 = i1;
    }
    else
    {
      f2 = this.mWeightSum;
      if (f2 > 0.0F) {
        f1 = f2;
      }
      this.mTotalLength = 0;
      i3 = i5;
      i5 = 0;
      i2 = i1;
      while (i5 < i)
      {
        localObject2 = getVirtualChildAt(i5);
        if (((View)localObject2).getVisibility() != 8)
        {
          localObject1 = (a)((View)localObject2).getLayoutParams();
          f2 = ((LinearLayout.LayoutParams)localObject1).weight;
          if (f2 > 0.0F)
          {
            i1 = (int)(i3 * f2 / f1);
            i9 = getPaddingLeft();
            int i13 = getPaddingRight();
            m = ((LinearLayout.LayoutParams)localObject1).leftMargin;
            i11 = ((LinearLayout.LayoutParams)localObject1).rightMargin;
            i12 = ((LinearLayout.LayoutParams)localObject1).width;
            i6 = i3 - i1;
            i9 = ViewGroup.getChildMeasureSpec(paramInt1, i9 + i13 + m + i11, i12);
            if ((((LinearLayout.LayoutParams)localObject1).height == 0) && (k == 1073741824))
            {
              if (i1 > 0) {
                i3 = i1;
              } else {
                i3 = 0;
              }
              ((View)localObject2).measure(i9, View.MeasureSpec.makeMeasureSpec(i3, 1073741824));
            }
            else
            {
              i1 = ((View)localObject2).getMeasuredHeight() + i1;
              i3 = i1;
              if (i1 < 0) {
                i3 = 0;
              }
              ((View)localObject2).measure(i9, View.MeasureSpec.makeMeasureSpec(i3, 1073741824));
            }
            n = View.combineMeasuredStates(n, ((View)localObject2).getMeasuredState() & 0xFFFFFF00);
            f1 -= f2;
            i3 = i6;
          }
          i9 = ((LinearLayout.LayoutParams)localObject1).leftMargin + ((LinearLayout.LayoutParams)localObject1).rightMargin;
          i1 = ((View)localObject2).getMeasuredWidth() + i9;
          i6 = Math.max(i2, i1);
          if ((j != 1073741824) && (((LinearLayout.LayoutParams)localObject1).width == -1)) {
            i2 = 1;
          } else {
            i2 = 0;
          }
          if (i2 != 0) {
            i2 = i9;
          } else {
            i2 = i1;
          }
          i4 = Math.max(i4, i2);
          if ((i8 != 0) && (((LinearLayout.LayoutParams)localObject1).width == -1)) {
            i8 = 1;
          } else {
            i8 = 0;
          }
          i2 = this.mTotalLength;
          this.mTotalLength = Math.max(i2, ((View)localObject2).getMeasuredHeight() + i2 + ((LinearLayout.LayoutParams)localObject1).topMargin + ((LinearLayout.LayoutParams)localObject1).bottomMargin + getNextLocationOffset((View)localObject2));
          i2 = i6;
        }
        i5++;
      }
      this.mTotalLength += getPaddingTop() + getPaddingBottom();
      i3 = n;
      n = i4;
    }
    if ((i8 != 0) || (j == 1073741824)) {
      n = i2;
    }
    setMeasuredDimension(View.resolveSizeAndState(Math.max(n + (getPaddingLeft() + getPaddingRight()), getSuggestedMinimumWidth()), paramInt1, i3), i10);
    if (i7 != 0) {
      forceUniformWidth(i, paramInt2);
    }
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    if (this.mDivider == null) {
      return;
    }
    if (this.mOrientation == 1) {
      drawDividersVertical(paramCanvas);
    } else {
      drawDividersHorizontal(paramCanvas);
    }
  }
  
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
  }
  
  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
    paramAccessibilityNodeInfo.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (this.mOrientation == 1) {
      layoutVertical(paramInt1, paramInt2, paramInt3, paramInt4);
    } else {
      layoutHorizontal(paramInt1, paramInt2, paramInt3, paramInt4);
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (this.mOrientation == 1) {
      measureVertical(paramInt1, paramInt2);
    } else {
      measureHorizontal(paramInt1, paramInt2);
    }
  }
  
  public void setBaselineAligned(boolean paramBoolean)
  {
    this.mBaselineAligned = paramBoolean;
  }
  
  public void setBaselineAlignedChildIndex(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < getChildCount()))
    {
      this.mBaselineAlignedChildIndex = paramInt;
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("base aligned child index out of range (0, ");
    localStringBuilder.append(getChildCount());
    localStringBuilder.append(")");
    throw new IllegalArgumentException(localStringBuilder.toString());
  }
  
  public void setDividerDrawable(Drawable paramDrawable)
  {
    if (paramDrawable == this.mDivider) {
      return;
    }
    this.mDivider = paramDrawable;
    boolean bool = false;
    if (paramDrawable != null)
    {
      this.mDividerWidth = paramDrawable.getIntrinsicWidth();
      this.mDividerHeight = paramDrawable.getIntrinsicHeight();
    }
    else
    {
      this.mDividerWidth = 0;
      this.mDividerHeight = 0;
    }
    if (paramDrawable == null) {
      bool = true;
    }
    setWillNotDraw(bool);
    requestLayout();
  }
  
  public void setDividerPadding(int paramInt)
  {
    this.mDividerPadding = paramInt;
  }
  
  public void setGravity(int paramInt)
  {
    if (this.mGravity != paramInt)
    {
      int i = paramInt;
      if ((0x800007 & paramInt) == 0) {
        i = paramInt | 0x800003;
      }
      paramInt = i;
      if ((i & 0x70) == 0) {
        paramInt = i | 0x30;
      }
      this.mGravity = paramInt;
      requestLayout();
    }
  }
  
  public void setHorizontalGravity(int paramInt)
  {
    paramInt &= 0x800007;
    int i = this.mGravity;
    if ((0x800007 & i) != paramInt)
    {
      this.mGravity = (paramInt | 0xFF7FFFF8 & i);
      requestLayout();
    }
  }
  
  public void setMeasureWithLargestChildEnabled(boolean paramBoolean)
  {
    this.mUseLargestChild = paramBoolean;
  }
  
  public void setOrientation(int paramInt)
  {
    if (this.mOrientation != paramInt)
    {
      this.mOrientation = paramInt;
      requestLayout();
    }
  }
  
  public void setShowDividers(int paramInt)
  {
    if (paramInt != this.mShowDividers) {
      requestLayout();
    }
    this.mShowDividers = paramInt;
  }
  
  public void setVerticalGravity(int paramInt)
  {
    paramInt &= 0x70;
    int i = this.mGravity;
    if ((i & 0x70) != paramInt)
    {
      this.mGravity = (paramInt | i & 0xFFFFFF8F);
      requestLayout();
    }
  }
  
  public void setWeightSum(float paramFloat)
  {
    this.mWeightSum = Math.max(0.0F, paramFloat);
  }
  
  public boolean shouldDelayChildPressedState()
  {
    return false;
  }
  
  public static class a
    extends LinearLayout.LayoutParams
  {
    public a(int paramInt1, int paramInt2)
    {
      super(paramInt2);
    }
    
    public a(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
    }
    
    public a(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.widget.i0
 * JD-Core Version:    0.7.0.1
 */
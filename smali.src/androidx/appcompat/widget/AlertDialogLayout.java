package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.widget.LinearLayout.LayoutParams;
import androidx.core.view.a0;
import androidx.core.view.e;
import d.f;

public class AlertDialogLayout
  extends i0
{
  public AlertDialogLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private static int b(View paramView)
  {
    int i = a0.A(paramView);
    if (i > 0) {
      return i;
    }
    if ((paramView instanceof ViewGroup))
    {
      paramView = (ViewGroup)paramView;
      if (paramView.getChildCount() == 1) {
        return b(paramView.getChildAt(0));
      }
    }
    return 0;
  }
  
  private boolean c(int paramInt1, int paramInt2)
  {
    int i = getChildCount();
    Object localObject1 = null;
    Object localObject2 = null;
    Object localObject3 = localObject2;
    View localView;
    for (int j = 0; j < i; j++)
    {
      localView = getChildAt(j);
      if (localView.getVisibility() != 8)
      {
        k = localView.getId();
        if (k == f.O)
        {
          localObject1 = localView;
        }
        else if (k == f.k)
        {
          localObject2 = localView;
        }
        else
        {
          if ((k != f.m) && (k != f.o)) {
            return false;
          }
          if (localObject3 != null) {
            return false;
          }
          localObject3 = localView;
        }
      }
    }
    int m = View.MeasureSpec.getMode(paramInt2);
    int n = View.MeasureSpec.getSize(paramInt2);
    int i1 = View.MeasureSpec.getMode(paramInt1);
    int i2 = getPaddingTop() + getPaddingBottom();
    if (localObject1 != null)
    {
      localObject1.measure(paramInt1, 0);
      i2 += localObject1.getMeasuredHeight();
      k = View.combineMeasuredStates(0, localObject1.getMeasuredState());
    }
    else
    {
      k = 0;
    }
    int i3;
    if (localObject2 != null)
    {
      localObject2.measure(paramInt1, 0);
      j = b(localObject2);
      i3 = localObject2.getMeasuredHeight() - j;
      i2 += j;
      k = View.combineMeasuredStates(k, localObject2.getMeasuredState());
    }
    else
    {
      j = 0;
      i3 = j;
    }
    int i5;
    if (localObject3 != null)
    {
      if (m == 0) {
        i4 = 0;
      } else {
        i4 = View.MeasureSpec.makeMeasureSpec(Math.max(0, n - i2), m);
      }
      localObject3.measure(paramInt1, i4);
      i5 = localObject3.getMeasuredHeight();
      i2 += i5;
      k = View.combineMeasuredStates(k, localObject3.getMeasuredState());
    }
    else
    {
      i5 = 0;
    }
    int i6 = n - i2;
    n = k;
    int i7 = i6;
    int i4 = i2;
    if (localObject2 != null)
    {
      i3 = Math.min(i6, i3);
      n = i6;
      i4 = j;
      if (i3 > 0)
      {
        n = i6 - i3;
        i4 = j + i3;
      }
      localObject2.measure(paramInt1, View.MeasureSpec.makeMeasureSpec(i4, 1073741824));
      i4 = i2 - j + localObject2.getMeasuredHeight();
      j = View.combineMeasuredStates(k, localObject2.getMeasuredState());
      i7 = n;
      n = j;
    }
    int k = n;
    j = i4;
    if (localObject3 != null)
    {
      k = n;
      j = i4;
      if (i7 > 0)
      {
        localObject3.measure(paramInt1, View.MeasureSpec.makeMeasureSpec(i5 + i7, m));
        j = i4 - i5 + localObject3.getMeasuredHeight();
        k = View.combineMeasuredStates(n, localObject3.getMeasuredState());
      }
    }
    i4 = 0;
    for (i2 = 0; i4 < i; i2 = n)
    {
      localView = getChildAt(i4);
      n = i2;
      if (localView.getVisibility() != 8) {
        n = Math.max(i2, localView.getMeasuredWidth());
      }
      i4++;
    }
    setMeasuredDimension(View.resolveSizeAndState(i2 + (getPaddingLeft() + getPaddingRight()), paramInt1, k), View.resolveSizeAndState(j, paramInt2, 0));
    if (i1 != 1073741824) {
      forceUniformWidth(i, paramInt2);
    }
    return true;
  }
  
  private void forceUniformWidth(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
    for (int j = 0; j < paramInt1; j++)
    {
      View localView = getChildAt(j);
      if (localView.getVisibility() != 8)
      {
        i0.a locala = (i0.a)localView.getLayoutParams();
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
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = getPaddingLeft();
    int j = paramInt3 - paramInt1;
    int k = getPaddingRight();
    int m = getPaddingRight();
    paramInt3 = getMeasuredHeight();
    int n = getChildCount();
    int i1 = getGravity();
    paramInt1 = i1 & 0x70;
    if (paramInt1 != 16)
    {
      if (paramInt1 != 80) {
        paramInt1 = getPaddingTop();
      } else {
        paramInt1 = getPaddingTop() + paramInt4 - paramInt2 - paramInt3;
      }
    }
    else {
      paramInt1 = getPaddingTop() + (paramInt4 - paramInt2 - paramInt3) / 2;
    }
    Object localObject = getDividerDrawable();
    if (localObject == null) {
      paramInt2 = 0;
    } else {
      paramInt2 = ((Drawable)localObject).getIntrinsicHeight();
    }
    paramInt3 = 0;
    while (paramInt3 < n)
    {
      View localView = getChildAt(paramInt3);
      paramInt4 = paramInt1;
      if (localView != null)
      {
        paramInt4 = paramInt1;
        if (localView.getVisibility() != 8)
        {
          int i2 = localView.getMeasuredWidth();
          int i3 = localView.getMeasuredHeight();
          localObject = (i0.a)localView.getLayoutParams();
          int i4 = ((LinearLayout.LayoutParams)localObject).gravity;
          paramInt4 = i4;
          if (i4 < 0) {
            paramInt4 = i1 & 0x800007;
          }
          paramInt4 = e.b(paramInt4, a0.z(this)) & 0x7;
          if (paramInt4 != 1)
          {
            if (paramInt4 != 5)
            {
              paramInt4 = ((LinearLayout.LayoutParams)localObject).leftMargin + i;
              break label304;
            }
            paramInt4 = j - k - i2;
            i4 = ((LinearLayout.LayoutParams)localObject).rightMargin;
          }
          else
          {
            paramInt4 = (j - i - m - i2) / 2 + i + ((LinearLayout.LayoutParams)localObject).leftMargin;
            i4 = ((LinearLayout.LayoutParams)localObject).rightMargin;
          }
          paramInt4 -= i4;
          label304:
          i4 = paramInt1;
          if (hasDividerBeforeChildAt(paramInt3)) {
            i4 = paramInt1 + paramInt2;
          }
          paramInt1 = i4 + ((LinearLayout.LayoutParams)localObject).topMargin;
          setChildFrame(localView, paramInt4, paramInt1, i2, i3);
          paramInt4 = paramInt1 + (i3 + ((LinearLayout.LayoutParams)localObject).bottomMargin);
        }
      }
      paramInt3++;
      paramInt1 = paramInt4;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (!c(paramInt1, paramInt2)) {
      super.onMeasure(paramInt1, paramInt2);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.widget.AlertDialogLayout
 * JD-Core Version:    0.7.0.1
 */
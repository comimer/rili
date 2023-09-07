package androidx.appcompat.widget;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.a0;
import d.f;
import d.j;
import h.b;

public class ActionBarContextView
  extends a
{
  private CharSequence i;
  private CharSequence j;
  private View k;
  private View l;
  private View m;
  private LinearLayout n;
  private TextView o;
  private TextView p;
  private int q;
  private int r;
  private boolean v;
  private int w;
  
  public ActionBarContextView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ActionBarContextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, d.a.j);
  }
  
  public ActionBarContextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = z0.v(paramContext, paramAttributeSet, j.y, paramInt, 0);
    a0.p0(this, paramContext.g(j.z));
    this.q = paramContext.n(j.D, 0);
    this.r = paramContext.n(j.C, 0);
    this.e = paramContext.m(j.B, 0);
    this.w = paramContext.n(j.A, d.g.d);
    paramContext.w();
  }
  
  private void i()
  {
    if (this.n == null)
    {
      LayoutInflater.from(getContext()).inflate(d.g.a, this);
      localObject = (LinearLayout)getChildAt(getChildCount() - 1);
      this.n = ((LinearLayout)localObject);
      this.o = ((TextView)((View)localObject).findViewById(f.e));
      this.p = ((TextView)this.n.findViewById(f.d));
      if (this.q != 0) {
        this.o.setTextAppearance(getContext(), this.q);
      }
      if (this.r != 0) {
        this.p.setTextAppearance(getContext(), this.r);
      }
    }
    this.o.setText(this.i);
    this.p.setText(this.j);
    boolean bool1 = TextUtils.isEmpty(this.i);
    boolean bool2 = TextUtils.isEmpty(this.j) ^ true;
    Object localObject = this.p;
    int i1 = 0;
    if (bool2) {
      i2 = 0;
    } else {
      i2 = 8;
    }
    ((View)localObject).setVisibility(i2);
    localObject = this.n;
    int i2 = i1;
    if (!(bool1 ^ true)) {
      if (bool2) {
        i2 = i1;
      } else {
        i2 = 8;
      }
    }
    ((View)localObject).setVisibility(i2);
    if (this.n.getParent() == null) {
      addView(this.n);
    }
  }
  
  public void g()
  {
    if (this.k == null) {
      k();
    }
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new ViewGroup.MarginLayoutParams(-1, -2);
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new ViewGroup.MarginLayoutParams(getContext(), paramAttributeSet);
  }
  
  public CharSequence getSubtitle()
  {
    return this.j;
  }
  
  public CharSequence getTitle()
  {
    return this.i;
  }
  
  public void h(final b paramb)
  {
    Object localObject = this.k;
    if (localObject == null)
    {
      localObject = LayoutInflater.from(getContext()).inflate(this.w, this, false);
      this.k = ((View)localObject);
      addView((View)localObject);
    }
    else if (((View)localObject).getParent() == null)
    {
      addView(this.k);
    }
    localObject = this.k.findViewById(f.i);
    this.l = ((View)localObject);
    ((View)localObject).setOnClickListener(new a(paramb));
    paramb = (androidx.appcompat.view.menu.g)paramb.c();
    localObject = this.d;
    if (localObject != null) {
      ((ActionMenuPresenter)localObject).q();
    }
    localObject = new ActionMenuPresenter(getContext());
    this.d = ((ActionMenuPresenter)localObject);
    ((ActionMenuPresenter)localObject).B(true);
    localObject = new ViewGroup.LayoutParams(-2, -1);
    paramb.addMenuPresenter(this.d, this.b);
    paramb = (ActionMenuView)this.d.g(this);
    this.c = paramb;
    a0.p0(paramb, null);
    addView(this.c, (ViewGroup.LayoutParams)localObject);
  }
  
  public boolean j()
  {
    return this.v;
  }
  
  public void k()
  {
    removeAllViews();
    this.m = null;
    this.c = null;
    this.d = null;
    View localView = this.l;
    if (localView != null) {
      localView.setOnClickListener(null);
    }
  }
  
  public boolean l()
  {
    ActionMenuPresenter localActionMenuPresenter = this.d;
    if (localActionMenuPresenter != null) {
      return localActionMenuPresenter.C();
    }
    return false;
  }
  
  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    ActionMenuPresenter localActionMenuPresenter = this.d;
    if (localActionMenuPresenter != null)
    {
      localActionMenuPresenter.t();
      this.d.u();
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramBoolean = e1.b(this);
    int i1;
    if (paramBoolean) {
      i1 = paramInt3 - paramInt1 - getPaddingRight();
    } else {
      i1 = getPaddingLeft();
    }
    int i2 = getPaddingTop();
    int i3 = paramInt4 - paramInt2 - getPaddingTop() - getPaddingBottom();
    Object localObject = this.k;
    paramInt2 = i1;
    if (localObject != null)
    {
      paramInt2 = i1;
      if (((View)localObject).getVisibility() != 8)
      {
        localObject = (ViewGroup.MarginLayoutParams)this.k.getLayoutParams();
        if (paramBoolean) {
          paramInt2 = ((ViewGroup.MarginLayoutParams)localObject).rightMargin;
        } else {
          paramInt2 = ((ViewGroup.MarginLayoutParams)localObject).leftMargin;
        }
        if (paramBoolean) {
          paramInt4 = ((ViewGroup.MarginLayoutParams)localObject).leftMargin;
        } else {
          paramInt4 = ((ViewGroup.MarginLayoutParams)localObject).rightMargin;
        }
        paramInt2 = a.d(i1, paramInt2, paramBoolean);
        paramInt2 = a.d(paramInt2 + e(this.k, paramInt2, i2, i3, paramBoolean), paramInt4, paramBoolean);
      }
    }
    localObject = this.n;
    paramInt4 = paramInt2;
    if (localObject != null)
    {
      paramInt4 = paramInt2;
      if (this.m == null)
      {
        paramInt4 = paramInt2;
        if (((View)localObject).getVisibility() != 8) {
          paramInt4 = paramInt2 + e(this.n, paramInt2, i2, i3, paramBoolean);
        }
      }
    }
    localObject = this.m;
    if (localObject != null) {
      e((View)localObject, paramInt4, i2, i3, paramBoolean);
    }
    if (paramBoolean) {
      paramInt1 = getPaddingLeft();
    } else {
      paramInt1 = paramInt3 - paramInt1 - getPaddingRight();
    }
    localObject = this.c;
    if (localObject != null) {
      e((View)localObject, paramInt1, i2, i3, paramBoolean ^ true);
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i1 = View.MeasureSpec.getMode(paramInt1);
    int i2 = 1073741824;
    if (i1 == 1073741824)
    {
      if (View.MeasureSpec.getMode(paramInt2) != 0)
      {
        int i3 = View.MeasureSpec.getSize(paramInt1);
        i1 = this.e;
        if (i1 <= 0) {
          i1 = View.MeasureSpec.getSize(paramInt2);
        }
        int i4 = getPaddingTop() + getPaddingBottom();
        paramInt1 = i3 - getPaddingLeft() - getPaddingRight();
        int i5 = i1 - i4;
        int i6 = View.MeasureSpec.makeMeasureSpec(i5, -2147483648);
        localObject = this.k;
        int i7 = 0;
        paramInt2 = paramInt1;
        if (localObject != null)
        {
          paramInt1 = c((View)localObject, paramInt1, i6, 0);
          localObject = (ViewGroup.MarginLayoutParams)this.k.getLayoutParams();
          paramInt2 = paramInt1 - (((ViewGroup.MarginLayoutParams)localObject).leftMargin + ((ViewGroup.MarginLayoutParams)localObject).rightMargin);
        }
        localObject = this.c;
        paramInt1 = paramInt2;
        if (localObject != null)
        {
          paramInt1 = paramInt2;
          if (((View)localObject).getParent() == this) {
            paramInt1 = c(this.c, paramInt2, i6, 0);
          }
        }
        localObject = this.n;
        paramInt2 = paramInt1;
        int i8;
        if (localObject != null)
        {
          paramInt2 = paramInt1;
          if (this.m == null) {
            if (this.v)
            {
              paramInt2 = View.MeasureSpec.makeMeasureSpec(0, 0);
              this.n.measure(paramInt2, i6);
              i8 = this.n.getMeasuredWidth();
              if (i8 <= paramInt1) {
                i6 = 1;
              } else {
                i6 = 0;
              }
              paramInt2 = paramInt1;
              if (i6 != 0) {
                paramInt2 = paramInt1 - i8;
              }
              localObject = this.n;
              if (i6 != 0) {
                paramInt1 = 0;
              } else {
                paramInt1 = 8;
              }
              ((View)localObject).setVisibility(paramInt1);
            }
            else
            {
              paramInt2 = c((View)localObject, paramInt1, i6, 0);
            }
          }
        }
        localObject = this.m;
        if (localObject != null)
        {
          localObject = ((View)localObject).getLayoutParams();
          i8 = ((ViewGroup.LayoutParams)localObject).width;
          if (i8 != -2) {
            paramInt1 = 1073741824;
          } else {
            paramInt1 = -2147483648;
          }
          i6 = paramInt2;
          if (i8 >= 0) {
            i6 = Math.min(i8, paramInt2);
          }
          i8 = ((ViewGroup.LayoutParams)localObject).height;
          if (i8 != -2) {
            paramInt2 = i2;
          } else {
            paramInt2 = -2147483648;
          }
          i2 = i5;
          if (i8 >= 0) {
            i2 = Math.min(i8, i5);
          }
          this.m.measure(View.MeasureSpec.makeMeasureSpec(i6, paramInt1), View.MeasureSpec.makeMeasureSpec(i2, paramInt2));
        }
        if (this.e <= 0)
        {
          i2 = getChildCount();
          paramInt2 = 0;
          paramInt1 = i7;
          while (paramInt1 < i2)
          {
            i6 = getChildAt(paramInt1).getMeasuredHeight() + i4;
            i1 = paramInt2;
            if (i6 > paramInt2) {
              i1 = i6;
            }
            paramInt1++;
            paramInt2 = i1;
          }
          setMeasuredDimension(i3, paramInt2);
        }
        else
        {
          setMeasuredDimension(i3, i1);
        }
        return;
      }
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(getClass().getSimpleName());
      ((StringBuilder)localObject).append(" can only be used with android:layout_height=\"wrap_content\"");
      throw new IllegalStateException(((StringBuilder)localObject).toString());
    }
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append(getClass().getSimpleName());
    ((StringBuilder)localObject).append(" can only be used with android:layout_width=\"match_parent\" (or fill_parent)");
    throw new IllegalStateException(((StringBuilder)localObject).toString());
  }
  
  public void setContentHeight(int paramInt)
  {
    this.e = paramInt;
  }
  
  public void setCustomView(View paramView)
  {
    Object localObject = this.m;
    if (localObject != null) {
      removeView((View)localObject);
    }
    this.m = paramView;
    if (paramView != null)
    {
      localObject = this.n;
      if (localObject != null)
      {
        removeView((View)localObject);
        this.n = null;
      }
    }
    if (paramView != null) {
      addView(paramView);
    }
    requestLayout();
  }
  
  public void setSubtitle(CharSequence paramCharSequence)
  {
    this.j = paramCharSequence;
    i();
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    this.i = paramCharSequence;
    i();
    a0.o0(this, paramCharSequence);
  }
  
  public void setTitleOptional(boolean paramBoolean)
  {
    if (paramBoolean != this.v) {
      requestLayout();
    }
    this.v = paramBoolean;
  }
  
  public boolean shouldDelayChildPressedState()
  {
    return false;
  }
  
  class a
    implements View.OnClickListener
  {
    a(b paramb) {}
    
    public void onClick(View paramView)
    {
      paramb.a();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.widget.ActionBarContextView
 * JD-Core Version:    0.7.0.1
 */
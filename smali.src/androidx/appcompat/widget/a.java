package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import androidx.core.view.a0;
import androidx.core.view.a1;
import androidx.core.view.b1;
import d.j;

abstract class a
  extends ViewGroup
{
  protected final a a = new a();
  protected final Context b;
  protected ActionMenuView c;
  protected ActionMenuPresenter d;
  protected int e;
  protected a1 f;
  private boolean g;
  private boolean h;
  
  a(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  a(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramAttributeSet = new TypedValue();
    if ((paramContext.getTheme().resolveAttribute(d.a.a, paramAttributeSet, true)) && (paramAttributeSet.resourceId != 0)) {
      this.b = new ContextThemeWrapper(paramContext, paramAttributeSet.resourceId);
    } else {
      this.b = paramContext;
    }
  }
  
  protected static int d(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (paramBoolean) {
      paramInt1 -= paramInt2;
    } else {
      paramInt1 += paramInt2;
    }
    return paramInt1;
  }
  
  protected int c(View paramView, int paramInt1, int paramInt2, int paramInt3)
  {
    paramView.measure(View.MeasureSpec.makeMeasureSpec(paramInt1, -2147483648), paramInt2);
    return Math.max(0, paramInt1 - paramView.getMeasuredWidth() - paramInt3);
  }
  
  protected int e(View paramView, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    int i = paramView.getMeasuredWidth();
    int j = paramView.getMeasuredHeight();
    paramInt2 += (paramInt3 - j) / 2;
    if (paramBoolean) {
      paramView.layout(paramInt1 - i, paramInt2, paramInt1, j + paramInt2);
    } else {
      paramView.layout(paramInt1, paramInt2, paramInt1 + i, j + paramInt2);
    }
    paramInt1 = i;
    if (paramBoolean) {
      paramInt1 = -i;
    }
    return paramInt1;
  }
  
  public a1 f(int paramInt, long paramLong)
  {
    a1 locala1 = this.f;
    if (locala1 != null) {
      locala1.c();
    }
    if (paramInt == 0)
    {
      if (getVisibility() != 0) {
        setAlpha(0.0F);
      }
      locala1 = a0.d(this).b(1.0F);
      locala1.f(paramLong);
      locala1.h(this.a.d(locala1, paramInt));
      return locala1;
    }
    locala1 = a0.d(this).b(0.0F);
    locala1.f(paramLong);
    locala1.h(this.a.d(locala1, paramInt));
    return locala1;
  }
  
  public int getAnimatedVisibility()
  {
    if (this.f != null) {
      return this.a.b;
    }
    return getVisibility();
  }
  
  public int getContentHeight()
  {
    return this.e;
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    Object localObject = getContext().obtainStyledAttributes(null, j.a, d.a.c, 0);
    setContentHeight(((TypedArray)localObject).getLayoutDimension(j.j, 0));
    ((TypedArray)localObject).recycle();
    localObject = this.d;
    if (localObject != null) {
      ((ActionMenuPresenter)localObject).x(paramConfiguration);
    }
  }
  
  public boolean onHoverEvent(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getActionMasked();
    if (i == 9) {
      this.h = false;
    }
    if (!this.h)
    {
      boolean bool = super.onHoverEvent(paramMotionEvent);
      if ((i == 9) && (!bool)) {
        this.h = true;
      }
    }
    if ((i == 10) || (i == 3)) {
      this.h = false;
    }
    return true;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getActionMasked();
    if (i == 0) {
      this.g = false;
    }
    if (!this.g)
    {
      boolean bool = super.onTouchEvent(paramMotionEvent);
      if ((i == 0) && (!bool)) {
        this.g = true;
      }
    }
    if ((i == 1) || (i == 3)) {
      this.g = false;
    }
    return true;
  }
  
  public void setContentHeight(int paramInt)
  {
    this.e = paramInt;
    requestLayout();
  }
  
  public void setVisibility(int paramInt)
  {
    if (paramInt != getVisibility())
    {
      a1 locala1 = this.f;
      if (locala1 != null) {
        locala1.c();
      }
      super.setVisibility(paramInt);
    }
  }
  
  protected class a
    implements b1
  {
    private boolean a = false;
    int b;
    
    protected a() {}
    
    public void a(View paramView)
    {
      this.a = true;
    }
    
    public void b(View paramView)
    {
      if (this.a) {
        return;
      }
      paramView = a.this;
      paramView.f = null;
      a.b(paramView, this.b);
    }
    
    public void c(View paramView)
    {
      a.a(a.this, 0);
      this.a = false;
    }
    
    public a d(a1 parama1, int paramInt)
    {
      a.this.f = parama1;
      this.b = paramInt;
      return this;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.widget.a
 * JD-Core Version:    0.7.0.1
 */
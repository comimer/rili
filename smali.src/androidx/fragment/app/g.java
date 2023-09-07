package androidx.fragment.app;

import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnApplyWindowInsetsListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import androidx.core.view.a0;
import androidx.core.view.e1;
import d0.c;
import java.util.ArrayList;

public final class g
  extends FrameLayout
{
  private ArrayList<View> a;
  private ArrayList<View> b;
  private View.OnApplyWindowInsetsListener c;
  private boolean d = true;
  
  g(Context paramContext, AttributeSet paramAttributeSet, FragmentManager paramFragmentManager)
  {
    super(paramContext, paramAttributeSet);
    String str = paramAttributeSet.getClassAttribute();
    Object localObject1 = paramContext.obtainStyledAttributes(paramAttributeSet, c.h);
    Object localObject2 = str;
    if (str == null) {
      localObject2 = ((TypedArray)localObject1).getString(c.i);
    }
    str = ((TypedArray)localObject1).getString(c.j);
    ((TypedArray)localObject1).recycle();
    int i = getId();
    localObject1 = paramFragmentManager.h0(i);
    if ((localObject2 != null) && (localObject1 == null))
    {
      if (i <= 0)
      {
        if (str != null)
        {
          paramContext = new StringBuilder();
          paramContext.append(" with tag ");
          paramContext.append(str);
          paramContext = paramContext.toString();
        }
        else
        {
          paramContext = "";
        }
        paramAttributeSet = new StringBuilder();
        paramAttributeSet.append("FragmentContainerView must have an android:id to add Fragment ");
        paramAttributeSet.append((String)localObject2);
        paramAttributeSet.append(paramContext);
        throw new IllegalStateException(paramAttributeSet.toString());
      }
      localObject2 = paramFragmentManager.s0().a(paramContext.getClassLoader(), (String)localObject2);
      ((Fragment)localObject2).onInflate(paramContext, paramAttributeSet, null);
      paramFragmentManager.m().t(true).d(this, (Fragment)localObject2, str).k();
    }
    paramFragmentManager.W0(this);
  }
  
  private void a(View paramView)
  {
    ArrayList localArrayList = this.b;
    if ((localArrayList != null) && (localArrayList.contains(paramView)))
    {
      if (this.a == null) {
        this.a = new ArrayList();
      }
      this.a.add(paramView);
    }
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    if (FragmentManager.B0(paramView) != null)
    {
      super.addView(paramView, paramInt, paramLayoutParams);
      return;
    }
    paramLayoutParams = new StringBuilder();
    paramLayoutParams.append("Views added to a FragmentContainerView must be associated with a Fragment. View ");
    paramLayoutParams.append(paramView);
    paramLayoutParams.append(" is not associated with a Fragment.");
    throw new IllegalStateException(paramLayoutParams.toString());
  }
  
  protected boolean addViewInLayout(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams, boolean paramBoolean)
  {
    if (FragmentManager.B0(paramView) != null) {
      return super.addViewInLayout(paramView, paramInt, paramLayoutParams, paramBoolean);
    }
    paramLayoutParams = new StringBuilder();
    paramLayoutParams.append("Views added to a FragmentContainerView must be associated with a Fragment. View ");
    paramLayoutParams.append(paramView);
    paramLayoutParams.append(" is not associated with a Fragment.");
    throw new IllegalStateException(paramLayoutParams.toString());
  }
  
  public WindowInsets dispatchApplyWindowInsets(WindowInsets paramWindowInsets)
  {
    e1 locale1 = e1.v(paramWindowInsets);
    Object localObject = this.c;
    if (localObject != null) {
      localObject = e1.v(((View.OnApplyWindowInsetsListener)localObject).onApplyWindowInsets(this, paramWindowInsets));
    } else {
      localObject = a0.X(this, locale1);
    }
    if (!((e1)localObject).o())
    {
      int i = getChildCount();
      for (int j = 0; j < i; j++) {
        a0.f(getChildAt(j), (e1)localObject);
      }
    }
    return paramWindowInsets;
  }
  
  protected void dispatchDraw(Canvas paramCanvas)
  {
    if ((this.d) && (this.a != null)) {
      for (int i = 0; i < this.a.size(); i++) {
        super.drawChild(paramCanvas, (View)this.a.get(i), getDrawingTime());
      }
    }
    super.dispatchDraw(paramCanvas);
  }
  
  protected boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    if (this.d)
    {
      ArrayList localArrayList = this.a;
      if ((localArrayList != null) && (localArrayList.size() > 0) && (this.a.contains(paramView))) {
        return false;
      }
    }
    return super.drawChild(paramCanvas, paramView, paramLong);
  }
  
  public void endViewTransition(View paramView)
  {
    ArrayList localArrayList = this.b;
    if (localArrayList != null)
    {
      localArrayList.remove(paramView);
      localArrayList = this.a;
      if ((localArrayList != null) && (localArrayList.remove(paramView))) {
        this.d = true;
      }
    }
    super.endViewTransition(paramView);
  }
  
  public WindowInsets onApplyWindowInsets(WindowInsets paramWindowInsets)
  {
    return paramWindowInsets;
  }
  
  public void removeAllViewsInLayout()
  {
    for (int i = getChildCount() - 1; i >= 0; i--) {
      a(getChildAt(i));
    }
    super.removeAllViewsInLayout();
  }
  
  protected void removeDetachedView(View paramView, boolean paramBoolean)
  {
    if (paramBoolean) {
      a(paramView);
    }
    super.removeDetachedView(paramView, paramBoolean);
  }
  
  public void removeView(View paramView)
  {
    a(paramView);
    super.removeView(paramView);
  }
  
  public void removeViewAt(int paramInt)
  {
    a(getChildAt(paramInt));
    super.removeViewAt(paramInt);
  }
  
  public void removeViewInLayout(View paramView)
  {
    a(paramView);
    super.removeViewInLayout(paramView);
  }
  
  public void removeViews(int paramInt1, int paramInt2)
  {
    for (int i = paramInt1; i < paramInt1 + paramInt2; i++) {
      a(getChildAt(i));
    }
    super.removeViews(paramInt1, paramInt2);
  }
  
  public void removeViewsInLayout(int paramInt1, int paramInt2)
  {
    for (int i = paramInt1; i < paramInt1 + paramInt2; i++) {
      a(getChildAt(i));
    }
    super.removeViewsInLayout(paramInt1, paramInt2);
  }
  
  void setDrawDisappearingViewsLast(boolean paramBoolean)
  {
    this.d = paramBoolean;
  }
  
  public void setLayoutTransition(LayoutTransition paramLayoutTransition)
  {
    throw new UnsupportedOperationException("FragmentContainerView does not support Layout Transitions or animateLayoutChanges=\"true\".");
  }
  
  public void setOnApplyWindowInsetsListener(View.OnApplyWindowInsetsListener paramOnApplyWindowInsetsListener)
  {
    this.c = paramOnApplyWindowInsetsListener;
  }
  
  public void startViewTransition(View paramView)
  {
    if (paramView.getParent() == this)
    {
      if (this.b == null) {
        this.b = new ArrayList();
      }
      this.b.add(paramView);
    }
    super.startViewTransition(paramView);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.fragment.app.g
 * JD-Core Version:    0.7.0.1
 */
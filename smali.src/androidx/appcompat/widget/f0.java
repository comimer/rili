package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.AbsListView;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.core.view.a1;
import androidx.core.widget.i;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;

class f0
  extends ListView
{
  private final Rect a = new Rect();
  private int b = 0;
  private int c = 0;
  private int d = 0;
  private int e = 0;
  private int f;
  private Field g;
  private a h;
  private boolean i;
  private boolean j;
  private boolean k;
  private a1 l;
  private i m;
  b n;
  
  f0(Context paramContext, boolean paramBoolean)
  {
    super(paramContext, null, d.a.B);
    this.j = paramBoolean;
    setCacheColorHint(0);
    try
    {
      paramContext = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
      this.g = paramContext;
      paramContext.setAccessible(true);
    }
    catch (NoSuchFieldException paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  private void a()
  {
    this.k = false;
    setPressed(false);
    drawableStateChanged();
    Object localObject = getChildAt(this.f - getFirstVisiblePosition());
    if (localObject != null) {
      ((View)localObject).setPressed(false);
    }
    localObject = this.l;
    if (localObject != null)
    {
      ((a1)localObject).c();
      this.l = null;
    }
  }
  
  private void b(View paramView, int paramInt)
  {
    performItemClick(paramView, paramInt, getItemIdAtPosition(paramInt));
  }
  
  private void c(Canvas paramCanvas)
  {
    if (!this.a.isEmpty())
    {
      Drawable localDrawable = getSelector();
      if (localDrawable != null)
      {
        localDrawable.setBounds(this.a);
        localDrawable.draw(paramCanvas);
      }
    }
  }
  
  private void f(int paramInt, View paramView)
  {
    Rect localRect = this.a;
    localRect.set(paramView.getLeft(), paramView.getTop(), paramView.getRight(), paramView.getBottom());
    localRect.left -= this.b;
    localRect.top -= this.c;
    localRect.right += this.d;
    localRect.bottom += this.e;
    try
    {
      boolean bool = this.g.getBoolean(this);
      if (paramView.isEnabled() != bool)
      {
        paramView = this.g;
        if (!bool) {
          bool = true;
        } else {
          bool = false;
        }
        paramView.set(this, Boolean.valueOf(bool));
        if (paramInt != -1) {
          refreshDrawableState();
        }
      }
    }
    catch (IllegalAccessException paramView)
    {
      paramView.printStackTrace();
    }
  }
  
  private void g(int paramInt, View paramView)
  {
    Drawable localDrawable = getSelector();
    boolean bool = true;
    int i1;
    if ((localDrawable != null) && (paramInt != -1)) {
      i1 = 1;
    } else {
      i1 = 0;
    }
    if (i1 != 0) {
      localDrawable.setVisible(false, false);
    }
    f(paramInt, paramView);
    if (i1 != 0)
    {
      paramView = this.a;
      float f1 = paramView.exactCenterX();
      float f2 = paramView.exactCenterY();
      if (getVisibility() != 0) {
        bool = false;
      }
      localDrawable.setVisible(bool, false);
      androidx.core.graphics.drawable.a.k(localDrawable, f1, f2);
    }
  }
  
  private void h(int paramInt, View paramView, float paramFloat1, float paramFloat2)
  {
    g(paramInt, paramView);
    paramView = getSelector();
    if ((paramView != null) && (paramInt != -1)) {
      androidx.core.graphics.drawable.a.k(paramView, paramFloat1, paramFloat2);
    }
  }
  
  private void i(View paramView, int paramInt, float paramFloat1, float paramFloat2)
  {
    this.k = true;
    drawableHotspotChanged(paramFloat1, paramFloat2);
    if (!isPressed()) {
      setPressed(true);
    }
    layoutChildren();
    int i1 = this.f;
    if (i1 != -1)
    {
      View localView = getChildAt(i1 - getFirstVisiblePosition());
      if ((localView != null) && (localView != paramView) && (localView.isPressed())) {
        localView.setPressed(false);
      }
    }
    this.f = paramInt;
    paramView.drawableHotspotChanged(paramFloat1 - paramView.getLeft(), paramFloat2 - paramView.getTop());
    if (!paramView.isPressed()) {
      paramView.setPressed(true);
    }
    h(paramInt, paramView, paramFloat1, paramFloat2);
    setSelectorEnabled(false);
    refreshDrawableState();
  }
  
  private boolean j()
  {
    return this.k;
  }
  
  private void k()
  {
    Drawable localDrawable = getSelector();
    if ((localDrawable != null) && (j()) && (isPressed())) {
      localDrawable.setState(getDrawableState());
    }
  }
  
  private void setSelectorEnabled(boolean paramBoolean)
  {
    a locala = this.h;
    if (locala != null) {
      locala.a(paramBoolean);
    }
  }
  
  public int d(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    paramInt3 = getListPaddingTop();
    paramInt2 = getListPaddingBottom();
    int i1 = getDividerHeight();
    Object localObject = getDivider();
    ListAdapter localListAdapter = getAdapter();
    if (localListAdapter == null) {
      return paramInt3 + paramInt2;
    }
    paramInt3 += paramInt2;
    if ((i1 <= 0) || (localObject == null)) {
      i1 = 0;
    }
    int i2 = localListAdapter.getCount();
    int i3 = 0;
    int i4 = i3;
    paramInt2 = i4;
    localObject = null;
    int i5 = i4;
    i4 = i3;
    while (i4 < i2)
    {
      int i6 = localListAdapter.getItemViewType(i4);
      i3 = i5;
      if (i6 != i5)
      {
        localObject = null;
        i3 = i6;
      }
      View localView = localListAdapter.getView(i4, (View)localObject, this);
      ViewGroup.LayoutParams localLayoutParams = localView.getLayoutParams();
      localObject = localLayoutParams;
      if (localLayoutParams == null)
      {
        localObject = generateDefaultLayoutParams();
        localView.setLayoutParams((ViewGroup.LayoutParams)localObject);
      }
      i5 = ((ViewGroup.LayoutParams)localObject).height;
      if (i5 > 0) {
        i5 = View.MeasureSpec.makeMeasureSpec(i5, 1073741824);
      } else {
        i5 = View.MeasureSpec.makeMeasureSpec(0, 0);
      }
      localView.measure(paramInt1, i5);
      localView.forceLayout();
      i5 = paramInt3;
      if (i4 > 0) {
        i5 = paramInt3 + i1;
      }
      paramInt3 = i5 + localView.getMeasuredHeight();
      if (paramInt3 >= paramInt4)
      {
        paramInt1 = paramInt4;
        if (paramInt5 >= 0)
        {
          paramInt1 = paramInt4;
          if (i4 > paramInt5)
          {
            paramInt1 = paramInt4;
            if (paramInt2 > 0)
            {
              paramInt1 = paramInt4;
              if (paramInt3 != paramInt4) {
                paramInt1 = paramInt2;
              }
            }
          }
        }
        return paramInt1;
      }
      i6 = paramInt2;
      if (paramInt5 >= 0)
      {
        i6 = paramInt2;
        if (i4 >= paramInt5) {
          i6 = paramInt3;
        }
      }
      i4++;
      i5 = i3;
      localObject = localView;
      paramInt2 = i6;
    }
    return paramInt3;
  }
  
  protected void dispatchDraw(Canvas paramCanvas)
  {
    c(paramCanvas);
    super.dispatchDraw(paramCanvas);
  }
  
  protected void drawableStateChanged()
  {
    if (this.n != null) {
      return;
    }
    super.drawableStateChanged();
    setSelectorEnabled(true);
    k();
  }
  
  public boolean e(MotionEvent paramMotionEvent, int paramInt)
  {
    int i1 = paramMotionEvent.getActionMasked();
    if (i1 != 1) {
      if (i1 != 2) {
        if (i1 == 3) {}
      }
    }
    boolean bool1;
    boolean bool2;
    for (;;)
    {
      bool1 = false;
      bool2 = true;
      break;
      label48:
      do
      {
        bool1 = false;
        bool2 = bool1;
        break;
        bool2 = true;
        break label48;
        bool2 = false;
        i2 = paramMotionEvent.findPointerIndex(paramInt);
      } while (i2 < 0);
      paramInt = (int)paramMotionEvent.getX(i2);
      int i2 = (int)paramMotionEvent.getY(i2);
      int i3 = pointToPosition(paramInt, i2);
      if (i3 == -1)
      {
        bool1 = true;
        break;
      }
      View localView = getChildAt(i3 - getFirstVisiblePosition());
      i(localView, i3, paramInt, i2);
      if (i1 == 1) {
        b(localView, i3);
      }
    }
    if ((!bool2) || (bool1)) {
      a();
    }
    if (bool2)
    {
      if (this.m == null) {
        this.m = new i(this);
      }
      this.m.m(true);
      this.m.onTouch(this, paramMotionEvent);
    }
    else
    {
      paramMotionEvent = this.m;
      if (paramMotionEvent != null) {
        paramMotionEvent.m(false);
      }
    }
    return bool2;
  }
  
  public boolean hasFocus()
  {
    boolean bool;
    if ((!this.j) && (!super.hasFocus())) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public boolean hasWindowFocus()
  {
    boolean bool;
    if ((!this.j) && (!super.hasWindowFocus())) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public boolean isFocused()
  {
    boolean bool;
    if ((!this.j) && (!super.isFocused())) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public boolean isInTouchMode()
  {
    boolean bool;
    if (((this.j) && (this.i)) || (super.isInTouchMode())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  protected void onDetachedFromWindow()
  {
    this.n = null;
    super.onDetachedFromWindow();
  }
  
  public boolean onHoverEvent(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.getActionMasked();
    if ((i1 == 10) && (this.n == null))
    {
      b localb = new b();
      this.n = localb;
      localb.b();
    }
    boolean bool = super.onHoverEvent(paramMotionEvent);
    if ((i1 != 9) && (i1 != 7))
    {
      setSelection(-1);
    }
    else
    {
      i1 = pointToPosition((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY());
      if ((i1 != -1) && (i1 != getSelectedItemPosition()))
      {
        paramMotionEvent = getChildAt(i1 - getFirstVisiblePosition());
        if (paramMotionEvent.isEnabled()) {
          setSelectionFromTop(i1, paramMotionEvent.getTop() - getTop());
        }
        k();
      }
    }
    return bool;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 0) {
      this.f = pointToPosition((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY());
    }
    b localb = this.n;
    if (localb != null) {
      localb.a();
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  void setListSelectionHidden(boolean paramBoolean)
  {
    this.i = paramBoolean;
  }
  
  public void setSelector(Drawable paramDrawable)
  {
    if (paramDrawable != null) {
      localObject = new a(paramDrawable);
    } else {
      localObject = null;
    }
    this.h = ((a)localObject);
    super.setSelector((Drawable)localObject);
    Object localObject = new Rect();
    if (paramDrawable != null) {
      paramDrawable.getPadding((Rect)localObject);
    }
    this.b = ((Rect)localObject).left;
    this.c = ((Rect)localObject).top;
    this.d = ((Rect)localObject).right;
    this.e = ((Rect)localObject).bottom;
  }
  
  private static class a
    extends androidx.appcompat.graphics.drawable.a
  {
    private boolean a = true;
    
    a(Drawable paramDrawable)
    {
      super();
    }
    
    void a(boolean paramBoolean)
    {
      this.a = paramBoolean;
    }
    
    public void draw(Canvas paramCanvas)
    {
      if (this.a) {
        super.draw(paramCanvas);
      }
    }
    
    public void setHotspot(float paramFloat1, float paramFloat2)
    {
      if (this.a) {
        super.setHotspot(paramFloat1, paramFloat2);
      }
    }
    
    public void setHotspotBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      if (this.a) {
        super.setHotspotBounds(paramInt1, paramInt2, paramInt3, paramInt4);
      }
    }
    
    public boolean setState(int[] paramArrayOfInt)
    {
      if (this.a) {
        return super.setState(paramArrayOfInt);
      }
      return false;
    }
    
    public boolean setVisible(boolean paramBoolean1, boolean paramBoolean2)
    {
      if (this.a) {
        return super.setVisible(paramBoolean1, paramBoolean2);
      }
      return false;
    }
  }
  
  private class b
    implements Runnable
  {
    b() {}
    
    public void a()
    {
      f0 localf0 = f0.this;
      localf0.n = null;
      localf0.removeCallbacks(this);
    }
    
    public void b()
    {
      f0.this.post(this);
    }
    
    public void run()
    {
      f0 localf0 = f0.this;
      localf0.n = null;
      localf0.drawableStateChanged();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.widget.f0
 * JD-Core Version:    0.7.0.1
 */
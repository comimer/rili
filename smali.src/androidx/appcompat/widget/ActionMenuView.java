package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewDebug.ExportedProperty;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout.LayoutParams;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.b;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.g.a;
import androidx.appcompat.view.menu.g.b;
import androidx.appcompat.view.menu.i;
import androidx.appcompat.view.menu.m.a;
import androidx.appcompat.view.menu.n;

public class ActionMenuView
  extends i0
  implements g.b, n
{
  private g a;
  private Context b;
  private int c;
  private boolean d;
  private ActionMenuPresenter e;
  private m.a f;
  g.a g;
  private boolean h;
  private int i;
  private int j;
  private int k;
  e l;
  
  public ActionMenuView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ActionMenuView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setBaselineAligned(false);
    float f1 = paramContext.getResources().getDisplayMetrics().density;
    this.j = ((int)(56.0F * f1));
    this.k = ((int)(f1 * 4.0F));
    this.b = paramContext;
    this.c = 0;
  }
  
  static int l(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    c localc = (c)paramView.getLayoutParams();
    int m = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(paramInt3) - paramInt4, View.MeasureSpec.getMode(paramInt3));
    ActionMenuItemView localActionMenuItemView;
    if ((paramView instanceof ActionMenuItemView)) {
      localActionMenuItemView = (ActionMenuItemView)paramView;
    } else {
      localActionMenuItemView = null;
    }
    boolean bool = true;
    if ((localActionMenuItemView != null) && (localActionMenuItemView.c())) {
      paramInt3 = 1;
    } else {
      paramInt3 = 0;
    }
    paramInt4 = 2;
    if ((paramInt2 > 0) && ((paramInt3 == 0) || (paramInt2 >= 2)))
    {
      paramView.measure(View.MeasureSpec.makeMeasureSpec(paramInt2 * paramInt1, -2147483648), m);
      int n = paramView.getMeasuredWidth();
      int i1 = n / paramInt1;
      paramInt2 = i1;
      if (n % paramInt1 != 0) {
        paramInt2 = i1 + 1;
      }
      if ((paramInt3 != 0) && (paramInt2 < 2)) {
        paramInt2 = paramInt4;
      }
    }
    else
    {
      paramInt2 = 0;
    }
    if ((localc.a) || (paramInt3 == 0)) {
      bool = false;
    }
    localc.d = bool;
    localc.b = paramInt2;
    paramView.measure(View.MeasureSpec.makeMeasureSpec(paramInt1 * paramInt2, 1073741824), m);
    return paramInt2;
  }
  
  private void m(int paramInt1, int paramInt2)
  {
    int m = View.MeasureSpec.getMode(paramInt2);
    paramInt1 = View.MeasureSpec.getSize(paramInt1);
    int n = View.MeasureSpec.getSize(paramInt2);
    int i1 = getPaddingLeft();
    int i2 = getPaddingRight();
    int i3 = getPaddingTop() + getPaddingBottom();
    int i4 = ViewGroup.getChildMeasureSpec(paramInt2, i3, -2);
    int i5 = paramInt1 - (i1 + i2);
    paramInt1 = this.j;
    int i6 = i5 / paramInt1;
    if (i6 == 0)
    {
      setMeasuredDimension(i5, 0);
      return;
    }
    int i7 = paramInt1 + i5 % paramInt1 / i6;
    int i8 = getChildCount();
    i2 = 0;
    paramInt1 = i2;
    int i9 = paramInt1;
    paramInt2 = i9;
    i1 = paramInt2;
    int i10 = i1;
    long l1 = 0L;
    int i11 = i1;
    int i12 = paramInt2;
    int i13 = paramInt1;
    i1 = i2;
    paramInt1 = i6;
    i2 = n;
    Object localObject;
    c localc;
    while (i13 < i8)
    {
      localObject = getChildAt(i13);
      if (((View)localObject).getVisibility() == 8)
      {
        paramInt2 = i10;
      }
      else
      {
        boolean bool = localObject instanceof ActionMenuItemView;
        i12++;
        if (bool)
        {
          paramInt2 = this.k;
          ((View)localObject).setPadding(paramInt2, 0, paramInt2, 0);
        }
        localc = (c)((View)localObject).getLayoutParams();
        localc.f = false;
        localc.c = 0;
        localc.b = 0;
        localc.d = false;
        localc.leftMargin = 0;
        localc.rightMargin = 0;
        if ((bool) && (((ActionMenuItemView)localObject).c())) {
          bool = true;
        } else {
          bool = false;
        }
        localc.e = bool;
        if (localc.a) {
          paramInt2 = 1;
        } else {
          paramInt2 = paramInt1;
        }
        n = l((View)localObject, i7, paramInt2, i4, i3);
        i11 = Math.max(i11, n);
        paramInt2 = i10;
        if (localc.d) {
          paramInt2 = i10 + 1;
        }
        if (localc.a) {
          i9 = 1;
        }
        paramInt1 -= n;
        i1 = Math.max(i1, ((View)localObject).getMeasuredHeight());
        if (n == 1) {
          l1 |= 1 << i13;
        }
      }
      i13++;
      i10 = paramInt2;
    }
    if ((i9 != 0) && (i12 == 2)) {
      i13 = 1;
    } else {
      i13 = 0;
    }
    paramInt2 = 0;
    n = paramInt1;
    i6 = i13;
    i13 = i5;
    while ((i10 > 0) && (n > 0))
    {
      i5 = 2147483647;
      int i14 = 0;
      i3 = 0;
      long l3;
      for (long l2 = 0L; i3 < i8; l2 = l3)
      {
        localObject = (c)getChildAt(i3).getLayoutParams();
        int i15;
        if (!((c)localObject).d)
        {
          paramInt1 = i14;
          i15 = i5;
          l3 = l2;
        }
        else
        {
          int i16 = ((c)localObject).b;
          if (i16 < i5)
          {
            l3 = 1L << i3;
            i15 = i16;
            paramInt1 = 1;
          }
          else
          {
            paramInt1 = i14;
            i15 = i5;
            l3 = l2;
            if (i16 == i5)
            {
              paramInt1 = i14 + 1;
              l3 = l2 | 1L << i3;
              i15 = i5;
            }
          }
        }
        i3++;
        i14 = paramInt1;
        i5 = i15;
      }
      paramInt1 = paramInt2;
      paramInt2 = i1;
      l1 |= l2;
      if (i14 > n) {
        break label749;
      }
      for (paramInt1 = 0; paramInt1 < i8; paramInt1++)
      {
        localObject = getChildAt(paramInt1);
        localc = (c)((View)localObject).getLayoutParams();
        long l4 = 1 << paramInt1;
        if ((l2 & l4) == 0L)
        {
          l3 = l1;
          if (localc.b == i5 + 1) {
            l3 = l1 | l4;
          }
          l1 = l3;
        }
        else
        {
          if ((i6 != 0) && (localc.e) && (n == 1))
          {
            i1 = this.k;
            ((View)localObject).setPadding(i1 + i7, 0, i1, 0);
          }
          localc.b += 1;
          localc.f = true;
          n--;
        }
      }
      i1 = paramInt2;
      paramInt2 = 1;
    }
    paramInt1 = paramInt2;
    paramInt2 = i1;
    label749:
    if ((i9 == 0) && (i12 == 1)) {
      i1 = 1;
    } else {
      i1 = 0;
    }
    if ((n > 0) && (l1 != 0L) && ((n < i12 - 1) || (i1 != 0) || (i11 > 1)))
    {
      float f1 = Long.bitCount(l1);
      if (i1 == 0)
      {
        float f2 = f1;
        if ((l1 & 1L) != 0L)
        {
          f2 = f1;
          if (!((c)getChildAt(0).getLayoutParams()).e) {
            f2 = f1 - 0.5F;
          }
        }
        i1 = i8 - 1;
        f1 = f2;
        if ((l1 & 1 << i1) != 0L)
        {
          f1 = f2;
          if (!((c)getChildAt(i1).getLayoutParams()).e) {
            f1 = f2 - 0.5F;
          }
        }
      }
      if (f1 > 0.0F) {
        i9 = (int)(n * i7 / f1);
      } else {
        i9 = 0;
      }
      i10 = 0;
      for (;;)
      {
        i1 = paramInt1;
        if (i10 >= i8) {
          break;
        }
        if ((l1 & 1 << i10) == 0L)
        {
          i1 = paramInt1;
        }
        else
        {
          localObject = getChildAt(i10);
          localc = (c)((View)localObject).getLayoutParams();
          if ((localObject instanceof ActionMenuItemView))
          {
            localc.c = i9;
            localc.f = true;
            if ((i10 == 0) && (!localc.e)) {
              localc.leftMargin = (-i9 / 2);
            }
            i1 = 1;
          }
          else if (localc.a)
          {
            localc.c = i9;
            localc.f = true;
            localc.rightMargin = (-i9 / 2);
            i1 = 1;
          }
          else
          {
            if (i10 != 0) {
              localc.leftMargin = (i9 / 2);
            }
            i1 = paramInt1;
            if (i10 != i8 - 1)
            {
              localc.rightMargin = (i9 / 2);
              i1 = paramInt1;
            }
          }
        }
        i10++;
        paramInt1 = i1;
      }
    }
    i1 = paramInt1;
    if (i1 != 0) {
      for (paramInt1 = 0; paramInt1 < i8; paramInt1++)
      {
        localObject = getChildAt(paramInt1);
        localc = (c)((View)localObject).getLayoutParams();
        if (localc.f) {
          ((View)localObject).measure(View.MeasureSpec.makeMeasureSpec(localc.b * i7 + localc.c, 1073741824), i4);
        }
      }
    }
    if (m != 1073741824) {
      paramInt1 = paramInt2;
    } else {
      paramInt1 = i2;
    }
    setMeasuredDimension(i13, paramInt1);
  }
  
  public boolean a(i parami)
  {
    return this.a.performItemAction(parami, 0);
  }
  
  public void b()
  {
    ActionMenuPresenter localActionMenuPresenter = this.e;
    if (localActionMenuPresenter != null) {
      localActionMenuPresenter.q();
    }
  }
  
  protected c c()
  {
    c localc = new c(-2, -2);
    localc.gravity = 16;
    return localc;
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof c;
  }
  
  public c d(AttributeSet paramAttributeSet)
  {
    return new c(getContext(), paramAttributeSet);
  }
  
  public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    return false;
  }
  
  protected c e(ViewGroup.LayoutParams paramLayoutParams)
  {
    if (paramLayoutParams != null)
    {
      if ((paramLayoutParams instanceof c)) {
        paramLayoutParams = new c((c)paramLayoutParams);
      } else {
        paramLayoutParams = new c(paramLayoutParams);
      }
      if (paramLayoutParams.gravity <= 0) {
        paramLayoutParams.gravity = 16;
      }
      return paramLayoutParams;
    }
    return c();
  }
  
  public c f()
  {
    c localc = c();
    localc.a = true;
    return localc;
  }
  
  protected boolean g(int paramInt)
  {
    boolean bool1 = false;
    if (paramInt == 0) {
      return false;
    }
    View localView1 = getChildAt(paramInt - 1);
    View localView2 = getChildAt(paramInt);
    boolean bool2 = bool1;
    if (paramInt < getChildCount())
    {
      bool2 = bool1;
      if ((localView1 instanceof a)) {
        bool2 = false | ((a)localView1).a();
      }
    }
    bool1 = bool2;
    if (paramInt > 0)
    {
      bool1 = bool2;
      if ((localView2 instanceof a)) {
        bool1 = bool2 | ((a)localView2).b();
      }
    }
    return bool1;
  }
  
  public Menu getMenu()
  {
    if (this.a == null)
    {
      Object localObject1 = getContext();
      Object localObject2 = new g((Context)localObject1);
      this.a = ((g)localObject2);
      ((g)localObject2).setCallback(new d());
      localObject2 = new ActionMenuPresenter((Context)localObject1);
      this.e = ((ActionMenuPresenter)localObject2);
      ((ActionMenuPresenter)localObject2).B(true);
      localObject1 = this.e;
      localObject2 = this.f;
      if (localObject2 == null) {
        localObject2 = new b();
      }
      ((b)localObject1).setCallback((m.a)localObject2);
      this.a.addMenuPresenter(this.e, this.b);
      this.e.z(this);
    }
    return this.a;
  }
  
  public Drawable getOverflowIcon()
  {
    getMenu();
    return this.e.s();
  }
  
  public int getPopupTheme()
  {
    return this.c;
  }
  
  public int getWindowAnimations()
  {
    return 0;
  }
  
  public boolean h()
  {
    ActionMenuPresenter localActionMenuPresenter = this.e;
    boolean bool;
    if ((localActionMenuPresenter != null) && (localActionMenuPresenter.t())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean i()
  {
    ActionMenuPresenter localActionMenuPresenter = this.e;
    boolean bool;
    if ((localActionMenuPresenter != null) && (localActionMenuPresenter.v())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public void initialize(g paramg)
  {
    this.a = paramg;
  }
  
  public boolean j()
  {
    ActionMenuPresenter localActionMenuPresenter = this.e;
    boolean bool;
    if ((localActionMenuPresenter != null) && (localActionMenuPresenter.w())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean k()
  {
    return this.d;
  }
  
  public g n()
  {
    return this.a;
  }
  
  public void o(m.a parama, g.a parama1)
  {
    this.f = parama;
    this.g = parama1;
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    paramConfiguration = this.e;
    if (paramConfiguration != null)
    {
      paramConfiguration.updateMenuView(false);
      if (this.e.w())
      {
        this.e.t();
        this.e.C();
      }
    }
  }
  
  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    b();
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (!this.h)
    {
      super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
      return;
    }
    int m = getChildCount();
    int n = (paramInt4 - paramInt2) / 2;
    int i1 = getDividerWidth();
    int i2 = paramInt3 - paramInt1;
    paramInt1 = i2 - getPaddingRight() - getPaddingLeft();
    paramBoolean = e1.b(this);
    paramInt2 = 0;
    paramInt4 = 0;
    paramInt3 = 0;
    Object localObject1;
    Object localObject2;
    int i3;
    int i5;
    while (paramInt2 < m)
    {
      localObject1 = getChildAt(paramInt2);
      if (((View)localObject1).getVisibility() != 8)
      {
        localObject2 = (c)((View)localObject1).getLayoutParams();
        if (((c)localObject2).a)
        {
          i3 = ((View)localObject1).getMeasuredWidth();
          paramInt4 = i3;
          if (g(paramInt2)) {
            paramInt4 = i3 + i1;
          }
          int i4 = ((View)localObject1).getMeasuredHeight();
          if (paramBoolean)
          {
            i5 = getPaddingLeft() + ((LinearLayout.LayoutParams)localObject2).leftMargin;
            i3 = i5 + paramInt4;
          }
          else
          {
            i3 = getWidth() - getPaddingRight() - ((LinearLayout.LayoutParams)localObject2).rightMargin;
            i5 = i3 - paramInt4;
          }
          int i6 = n - i4 / 2;
          ((View)localObject1).layout(i5, i6, i3, i4 + i6);
          paramInt1 -= paramInt4;
          paramInt4 = 1;
        }
        else
        {
          paramInt1 -= ((View)localObject1).getMeasuredWidth() + ((LinearLayout.LayoutParams)localObject2).leftMargin + ((LinearLayout.LayoutParams)localObject2).rightMargin;
          g(paramInt2);
          paramInt3++;
        }
      }
      paramInt2++;
    }
    if ((m == 1) && (paramInt4 == 0))
    {
      localObject1 = getChildAt(0);
      paramInt1 = ((View)localObject1).getMeasuredWidth();
      paramInt2 = ((View)localObject1).getMeasuredHeight();
      paramInt3 = i2 / 2 - paramInt1 / 2;
      paramInt4 = n - paramInt2 / 2;
      ((View)localObject1).layout(paramInt3, paramInt4, paramInt1 + paramInt3, paramInt2 + paramInt4);
      return;
    }
    paramInt2 = paramInt3 - (paramInt4 ^ 0x1);
    if (paramInt2 > 0) {
      paramInt1 /= paramInt2;
    } else {
      paramInt1 = 0;
    }
    paramInt4 = Math.max(0, paramInt1);
    if (paramBoolean)
    {
      paramInt3 = getWidth() - getPaddingRight();
      paramInt1 = 0;
      while (paramInt1 < m)
      {
        localObject2 = getChildAt(paramInt1);
        localObject1 = (c)((View)localObject2).getLayoutParams();
        paramInt2 = paramInt3;
        if (((View)localObject2).getVisibility() != 8) {
          if (((c)localObject1).a)
          {
            paramInt2 = paramInt3;
          }
          else
          {
            paramInt2 = paramInt3 - ((LinearLayout.LayoutParams)localObject1).rightMargin;
            paramInt3 = ((View)localObject2).getMeasuredWidth();
            i5 = ((View)localObject2).getMeasuredHeight();
            i3 = n - i5 / 2;
            ((View)localObject2).layout(paramInt2 - paramInt3, i3, paramInt2, i5 + i3);
            paramInt2 -= paramInt3 + ((LinearLayout.LayoutParams)localObject1).leftMargin + paramInt4;
          }
        }
        paramInt1++;
        paramInt3 = paramInt2;
      }
    }
    paramInt3 = getPaddingLeft();
    paramInt1 = 0;
    while (paramInt1 < m)
    {
      localObject2 = getChildAt(paramInt1);
      localObject1 = (c)((View)localObject2).getLayoutParams();
      paramInt2 = paramInt3;
      if (((View)localObject2).getVisibility() != 8) {
        if (((c)localObject1).a)
        {
          paramInt2 = paramInt3;
        }
        else
        {
          paramInt2 = paramInt3 + ((LinearLayout.LayoutParams)localObject1).leftMargin;
          i5 = ((View)localObject2).getMeasuredWidth();
          paramInt3 = ((View)localObject2).getMeasuredHeight();
          i3 = n - paramInt3 / 2;
          ((View)localObject2).layout(paramInt2, i3, paramInt2 + i5, paramInt3 + i3);
          paramInt2 += i5 + ((LinearLayout.LayoutParams)localObject1).rightMargin + paramInt4;
        }
      }
      paramInt1++;
      paramInt3 = paramInt2;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    boolean bool1 = this.h;
    boolean bool2;
    if (View.MeasureSpec.getMode(paramInt1) == 1073741824) {
      bool2 = true;
    } else {
      bool2 = false;
    }
    this.h = bool2;
    if (bool1 != bool2) {
      this.i = 0;
    }
    int m = View.MeasureSpec.getSize(paramInt1);
    Object localObject;
    if (this.h)
    {
      localObject = this.a;
      if ((localObject != null) && (m != this.i))
      {
        this.i = m;
        ((g)localObject).onItemsChanged(true);
      }
    }
    int n = getChildCount();
    if ((this.h) && (n > 0))
    {
      m(paramInt1, paramInt2);
    }
    else
    {
      for (m = 0; m < n; m++)
      {
        localObject = (c)getChildAt(m).getLayoutParams();
        ((LinearLayout.LayoutParams)localObject).rightMargin = 0;
        ((LinearLayout.LayoutParams)localObject).leftMargin = 0;
      }
      super.onMeasure(paramInt1, paramInt2);
    }
  }
  
  public boolean p()
  {
    ActionMenuPresenter localActionMenuPresenter = this.e;
    boolean bool;
    if ((localActionMenuPresenter != null) && (localActionMenuPresenter.C())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public void setExpandedActionViewsExclusive(boolean paramBoolean)
  {
    this.e.y(paramBoolean);
  }
  
  public void setOnMenuItemClickListener(e parame)
  {
    this.l = parame;
  }
  
  public void setOverflowIcon(Drawable paramDrawable)
  {
    getMenu();
    this.e.A(paramDrawable);
  }
  
  public void setOverflowReserved(boolean paramBoolean)
  {
    this.d = paramBoolean;
  }
  
  public void setPopupTheme(int paramInt)
  {
    if (this.c != paramInt)
    {
      this.c = paramInt;
      if (paramInt == 0) {
        this.b = getContext();
      } else {
        this.b = new ContextThemeWrapper(getContext(), paramInt);
      }
    }
  }
  
  public void setPresenter(ActionMenuPresenter paramActionMenuPresenter)
  {
    this.e = paramActionMenuPresenter;
    paramActionMenuPresenter.z(this);
  }
  
  public static abstract interface a
  {
    public abstract boolean a();
    
    public abstract boolean b();
  }
  
  private static class b
    implements m.a
  {
    public boolean a(g paramg)
    {
      return false;
    }
    
    public void onCloseMenu(g paramg, boolean paramBoolean) {}
  }
  
  public static class c
    extends i0.a
  {
    @ViewDebug.ExportedProperty
    public boolean a;
    @ViewDebug.ExportedProperty
    public int b;
    @ViewDebug.ExportedProperty
    public int c;
    @ViewDebug.ExportedProperty
    public boolean d;
    @ViewDebug.ExportedProperty
    public boolean e;
    boolean f;
    
    public c(int paramInt1, int paramInt2)
    {
      super(paramInt2);
      this.a = false;
    }
    
    public c(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
    }
    
    public c(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public c(c paramc)
    {
      super();
      this.a = paramc.a;
    }
  }
  
  private class d
    implements g.a
  {
    d() {}
    
    public boolean onMenuItemSelected(g paramg, MenuItem paramMenuItem)
    {
      paramg = ActionMenuView.this.l;
      boolean bool;
      if ((paramg != null) && (paramg.onMenuItemClick(paramMenuItem))) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    public void onMenuModeChange(g paramg)
    {
      g.a locala = ActionMenuView.this.g;
      if (locala != null) {
        locala.onMenuModeChange(paramg);
      }
    }
  }
  
  public static abstract interface e
  {
    public abstract boolean onMenuItemClick(MenuItem paramMenuItem);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.widget.ActionMenuView
 * JD-Core Version:    0.7.0.1
 */
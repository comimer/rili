package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.PopupWindow.OnDismissListener;
import androidx.appcompat.view.menu.p;
import androidx.core.view.a0;
import androidx.core.widget.k;
import d.a;
import d.j;
import java.lang.reflect.Method;

public class l0
  implements p
{
  private static Method M;
  private static Method N;
  private final f D = new f();
  private final e E = new e();
  private final c F = new c();
  private Runnable G;
  final Handler H;
  private final Rect I = new Rect();
  private Rect J;
  private boolean K;
  PopupWindow L;
  private Context a;
  private ListAdapter b;
  f0 c;
  private int d = -2;
  private int e = -2;
  private int f;
  private int g;
  private int h = 1002;
  private boolean i;
  private boolean j;
  private boolean k;
  private int l = 0;
  private boolean m = false;
  private boolean n = false;
  int o = 2147483647;
  private View p;
  private int q = 0;
  private DataSetObserver r;
  private View v;
  private Drawable w;
  private AdapterView.OnItemClickListener x;
  private AdapterView.OnItemSelectedListener y;
  final g z = new g();
  
  static
  {
    if (Build.VERSION.SDK_INT <= 28)
    {
      try
      {
        M = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", new Class[] { Boolean.TYPE });
      }
      catch (NoSuchMethodException localNoSuchMethodException1)
      {
        Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
      }
      try
      {
        N = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", new Class[] { Rect.class });
      }
      catch (NoSuchMethodException localNoSuchMethodException2)
      {
        Log.i("ListPopupWindow", "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well.");
      }
    }
  }
  
  public l0(Context paramContext)
  {
    this(paramContext, null, a.F);
  }
  
  public l0(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, 0);
  }
  
  public l0(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    this.a = paramContext;
    this.H = new Handler(paramContext.getMainLooper());
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, j.l1, paramInt1, paramInt2);
    this.f = localTypedArray.getDimensionPixelOffset(j.m1, 0);
    int i1 = localTypedArray.getDimensionPixelOffset(j.n1, 0);
    this.g = i1;
    if (i1 != 0) {
      this.i = true;
    }
    localTypedArray.recycle();
    paramContext = new o(paramContext, paramAttributeSet, paramInt1, paramInt2);
    this.L = paramContext;
    paramContext.setInputMethodMode(1);
  }
  
  private void J(boolean paramBoolean)
  {
    if (Build.VERSION.SDK_INT <= 28)
    {
      Method localMethod = M;
      if (localMethod != null) {
        try
        {
          localMethod.invoke(this.L, new Object[] { Boolean.valueOf(paramBoolean) });
        }
        catch (Exception localException)
        {
          Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
        }
      }
    }
    else
    {
      k0.a(this.L, paramBoolean);
    }
  }
  
  private int m()
  {
    Object localObject1 = this.c;
    boolean bool = true;
    Object localObject2;
    int i1;
    int i2;
    if (localObject1 == null)
    {
      localObject1 = this.a;
      this.G = new a();
      localObject2 = o((Context)localObject1, this.K ^ true);
      this.c = ((f0)localObject2);
      Object localObject3 = this.w;
      if (localObject3 != null) {
        ((f0)localObject2).setSelector((Drawable)localObject3);
      }
      this.c.setAdapter(this.b);
      this.c.setOnItemClickListener(this.x);
      this.c.setFocusable(true);
      this.c.setFocusableInTouchMode(true);
      this.c.setOnItemSelectedListener(new b());
      this.c.setOnScrollListener(this.E);
      localObject2 = this.y;
      if (localObject2 != null) {
        this.c.setOnItemSelectedListener((AdapterView.OnItemSelectedListener)localObject2);
      }
      localObject2 = this.c;
      localObject3 = this.p;
      if (localObject3 != null)
      {
        localObject1 = new LinearLayout((Context)localObject1);
        ((LinearLayout)localObject1).setOrientation(1);
        LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0F);
        i1 = this.q;
        if (i1 != 0)
        {
          if (i1 != 1)
          {
            localObject2 = new StringBuilder();
            ((StringBuilder)localObject2).append("Invalid hint position ");
            ((StringBuilder)localObject2).append(this.q);
            Log.e("ListPopupWindow", ((StringBuilder)localObject2).toString());
          }
          else
          {
            ((ViewGroup)localObject1).addView((View)localObject2, localLayoutParams);
            ((ViewGroup)localObject1).addView((View)localObject3);
          }
        }
        else
        {
          ((ViewGroup)localObject1).addView((View)localObject3);
          ((ViewGroup)localObject1).addView((View)localObject2, localLayoutParams);
        }
        i1 = this.e;
        if (i1 >= 0)
        {
          i2 = -2147483648;
        }
        else
        {
          i1 = 0;
          i2 = i1;
        }
        ((View)localObject3).measure(View.MeasureSpec.makeMeasureSpec(i1, i2), 0);
        localObject2 = (LinearLayout.LayoutParams)((View)localObject3).getLayoutParams();
        i1 = ((View)localObject3).getMeasuredHeight() + ((LinearLayout.LayoutParams)localObject2).topMargin + ((LinearLayout.LayoutParams)localObject2).bottomMargin;
      }
      else
      {
        i1 = 0;
        localObject1 = localObject2;
      }
      this.L.setContentView((View)localObject1);
    }
    else
    {
      localObject1 = (ViewGroup)this.L.getContentView();
      localObject2 = this.p;
      if (localObject2 != null)
      {
        localObject1 = (LinearLayout.LayoutParams)((View)localObject2).getLayoutParams();
        i1 = ((View)localObject2).getMeasuredHeight() + ((LinearLayout.LayoutParams)localObject1).topMargin + ((LinearLayout.LayoutParams)localObject1).bottomMargin;
      }
      else
      {
        i1 = 0;
      }
    }
    localObject1 = this.L.getBackground();
    int i4;
    if (localObject1 != null)
    {
      ((Drawable)localObject1).getPadding(this.I);
      localObject1 = this.I;
      i3 = ((Rect)localObject1).top;
      i2 = ((Rect)localObject1).bottom + i3;
      i4 = i2;
      if (!this.i)
      {
        this.g = (-i3);
        i4 = i2;
      }
    }
    else
    {
      this.I.setEmpty();
      i4 = 0;
    }
    if (this.L.getInputMethodMode() != 2) {
      bool = false;
    }
    int i3 = q(p(), this.g, bool);
    if ((!this.m) && (this.d != -1))
    {
      i2 = this.e;
      if (i2 != -2)
      {
        if (i2 != -1)
        {
          i2 = View.MeasureSpec.makeMeasureSpec(i2, 1073741824);
        }
        else
        {
          i2 = this.a.getResources().getDisplayMetrics().widthPixels;
          localObject1 = this.I;
          i2 = View.MeasureSpec.makeMeasureSpec(i2 - (((Rect)localObject1).left + ((Rect)localObject1).right), 1073741824);
        }
      }
      else
      {
        i2 = this.a.getResources().getDisplayMetrics().widthPixels;
        localObject1 = this.I;
        i2 = View.MeasureSpec.makeMeasureSpec(i2 - (((Rect)localObject1).left + ((Rect)localObject1).right), -2147483648);
      }
      i3 = this.c.d(i2, 0, -1, i3 - i1, -1);
      i2 = i1;
      if (i3 > 0) {
        i2 = i1 + (i4 + (this.c.getPaddingTop() + this.c.getPaddingBottom()));
      }
      return i3 + i2;
    }
    return i3 + i4;
  }
  
  private int q(View paramView, int paramInt, boolean paramBoolean)
  {
    return this.L.getMaxAvailableHeight(paramView, paramInt, paramBoolean);
  }
  
  private void y()
  {
    Object localObject = this.p;
    if (localObject != null)
    {
      localObject = ((View)localObject).getParent();
      if ((localObject instanceof ViewGroup)) {
        ((ViewGroup)localObject).removeView(this.p);
      }
    }
  }
  
  public void A(int paramInt)
  {
    this.L.setAnimationStyle(paramInt);
  }
  
  public void B(int paramInt)
  {
    Object localObject = this.L.getBackground();
    if (localObject != null)
    {
      ((Drawable)localObject).getPadding(this.I);
      localObject = this.I;
      this.e = (((Rect)localObject).left + ((Rect)localObject).right + paramInt);
    }
    else
    {
      M(paramInt);
    }
  }
  
  public void C(int paramInt)
  {
    this.l = paramInt;
  }
  
  public void D(Rect paramRect)
  {
    if (paramRect != null) {
      paramRect = new Rect(paramRect);
    } else {
      paramRect = null;
    }
    this.J = paramRect;
  }
  
  public void E(int paramInt)
  {
    this.L.setInputMethodMode(paramInt);
  }
  
  public void F(boolean paramBoolean)
  {
    this.K = paramBoolean;
    this.L.setFocusable(paramBoolean);
  }
  
  public void G(PopupWindow.OnDismissListener paramOnDismissListener)
  {
    this.L.setOnDismissListener(paramOnDismissListener);
  }
  
  public void H(AdapterView.OnItemClickListener paramOnItemClickListener)
  {
    this.x = paramOnItemClickListener;
  }
  
  public void I(boolean paramBoolean)
  {
    this.k = true;
    this.j = paramBoolean;
  }
  
  public void K(int paramInt)
  {
    this.q = paramInt;
  }
  
  public void L(int paramInt)
  {
    f0 localf0 = this.c;
    if ((isShowing()) && (localf0 != null))
    {
      localf0.setListSelectionHidden(false);
      localf0.setSelection(paramInt);
      if (localf0.getChoiceMode() != 0) {
        localf0.setItemChecked(paramInt, true);
      }
    }
  }
  
  public void M(int paramInt)
  {
    this.e = paramInt;
  }
  
  public int b()
  {
    return this.f;
  }
  
  public void c(int paramInt)
  {
    this.f = paramInt;
  }
  
  public void dismiss()
  {
    this.L.dismiss();
    y();
    this.L.setContentView(null);
    this.c = null;
    this.H.removeCallbacks(this.z);
  }
  
  public void f(int paramInt)
  {
    this.g = paramInt;
    this.i = true;
  }
  
  public Drawable getBackground()
  {
    return this.L.getBackground();
  }
  
  public int h()
  {
    if (!this.i) {
      return 0;
    }
    return this.g;
  }
  
  public void i(ListAdapter paramListAdapter)
  {
    DataSetObserver localDataSetObserver = this.r;
    if (localDataSetObserver == null)
    {
      this.r = new d();
    }
    else
    {
      ListAdapter localListAdapter = this.b;
      if (localListAdapter != null) {
        localListAdapter.unregisterDataSetObserver(localDataSetObserver);
      }
    }
    this.b = paramListAdapter;
    if (paramListAdapter != null) {
      paramListAdapter.registerDataSetObserver(this.r);
    }
    paramListAdapter = this.c;
    if (paramListAdapter != null) {
      paramListAdapter.setAdapter(this.b);
    }
  }
  
  public boolean isShowing()
  {
    return this.L.isShowing();
  }
  
  public ListView k()
  {
    return this.c;
  }
  
  public void n()
  {
    f0 localf0 = this.c;
    if (localf0 != null)
    {
      localf0.setListSelectionHidden(true);
      localf0.requestLayout();
    }
  }
  
  f0 o(Context paramContext, boolean paramBoolean)
  {
    return new f0(paramContext, paramBoolean);
  }
  
  public View p()
  {
    return this.v;
  }
  
  public Object r()
  {
    if (!isShowing()) {
      return null;
    }
    return this.c.getSelectedItem();
  }
  
  public long s()
  {
    if (!isShowing()) {
      return -9223372036854775808L;
    }
    return this.c.getSelectedItemId();
  }
  
  public void setBackgroundDrawable(Drawable paramDrawable)
  {
    this.L.setBackgroundDrawable(paramDrawable);
  }
  
  public void show()
  {
    int i1 = m();
    boolean bool1 = w();
    k.b(this.L, this.h);
    boolean bool2 = this.L.isShowing();
    boolean bool3 = true;
    int i2;
    int i3;
    Object localObject;
    if (bool2)
    {
      if (!a0.O(p())) {
        return;
      }
      i2 = this.e;
      if (i2 == -1)
      {
        i3 = -1;
      }
      else
      {
        i3 = i2;
        if (i2 == -2) {
          i3 = p().getWidth();
        }
      }
      i2 = this.d;
      if (i2 == -1)
      {
        if (!bool1) {
          i1 = -1;
        }
        if (bool1)
        {
          localObject = this.L;
          if (this.e == -1) {
            i2 = -1;
          } else {
            i2 = 0;
          }
          ((PopupWindow)localObject).setWidth(i2);
          this.L.setHeight(0);
        }
        else
        {
          localObject = this.L;
          if (this.e == -1) {
            i2 = -1;
          } else {
            i2 = 0;
          }
          ((PopupWindow)localObject).setWidth(i2);
          this.L.setHeight(-1);
        }
      }
      else if (i2 != -2)
      {
        i1 = i2;
      }
      localObject = this.L;
      if ((this.n) || (this.m)) {
        bool3 = false;
      }
      ((PopupWindow)localObject).setOutsideTouchable(bool3);
      localObject = this.L;
      View localView = p();
      i2 = this.f;
      int i4 = this.g;
      if (i3 < 0) {
        i3 = -1;
      }
      if (i1 < 0) {
        i1 = -1;
      }
      ((PopupWindow)localObject).update(localView, i2, i4, i3, i1);
    }
    else
    {
      i2 = this.e;
      if (i2 == -1)
      {
        i3 = -1;
      }
      else
      {
        i3 = i2;
        if (i2 == -2) {
          i3 = p().getWidth();
        }
      }
      i2 = this.d;
      if (i2 == -1) {
        i1 = -1;
      } else if (i2 != -2) {
        i1 = i2;
      }
      this.L.setWidth(i3);
      this.L.setHeight(i1);
      J(true);
      localObject = this.L;
      if ((!this.n) && (!this.m)) {
        bool3 = true;
      } else {
        bool3 = false;
      }
      ((PopupWindow)localObject).setOutsideTouchable(bool3);
      this.L.setTouchInterceptor(this.D);
      if (this.k) {
        k.a(this.L, this.j);
      }
      if (Build.VERSION.SDK_INT <= 28)
      {
        localObject = N;
        if (localObject != null) {
          try
          {
            ((Method)localObject).invoke(this.L, new Object[] { this.J });
          }
          catch (Exception localException)
          {
            Log.e("ListPopupWindow", "Could not invoke setEpicenterBounds on PopupWindow", localException);
          }
        }
      }
      else
      {
        j0.a(this.L, this.J);
      }
      k.c(this.L, p(), this.f, this.g, this.l);
      this.c.setSelection(-1);
      if ((!this.K) || (this.c.isInTouchMode())) {
        n();
      }
      if (!this.K) {
        this.H.post(this.F);
      }
    }
  }
  
  public int t()
  {
    if (!isShowing()) {
      return -1;
    }
    return this.c.getSelectedItemPosition();
  }
  
  public View u()
  {
    if (!isShowing()) {
      return null;
    }
    return this.c.getSelectedView();
  }
  
  public int v()
  {
    return this.e;
  }
  
  public boolean w()
  {
    boolean bool;
    if (this.L.getInputMethodMode() == 2) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean x()
  {
    return this.K;
  }
  
  public void z(View paramView)
  {
    this.v = paramView;
  }
  
  class a
    implements Runnable
  {
    a() {}
    
    public void run()
    {
      View localView = l0.this.p();
      if ((localView != null) && (localView.getWindowToken() != null)) {
        l0.this.show();
      }
    }
  }
  
  class b
    implements AdapterView.OnItemSelectedListener
  {
    b() {}
    
    public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
    {
      if (paramInt != -1)
      {
        paramAdapterView = l0.this.c;
        if (paramAdapterView != null) {
          paramAdapterView.setListSelectionHidden(false);
        }
      }
    }
    
    public void onNothingSelected(AdapterView<?> paramAdapterView) {}
  }
  
  private class c
    implements Runnable
  {
    c() {}
    
    public void run()
    {
      l0.this.n();
    }
  }
  
  private class d
    extends DataSetObserver
  {
    d() {}
    
    public void onChanged()
    {
      if (l0.this.isShowing()) {
        l0.this.show();
      }
    }
    
    public void onInvalidated()
    {
      l0.this.dismiss();
    }
  }
  
  private class e
    implements AbsListView.OnScrollListener
  {
    e() {}
    
    public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3) {}
    
    public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
    {
      if ((paramInt == 1) && (!l0.this.w()) && (l0.this.L.getContentView() != null))
      {
        paramAbsListView = l0.this;
        paramAbsListView.H.removeCallbacks(paramAbsListView.z);
        l0.this.z.run();
      }
    }
  }
  
  private class f
    implements View.OnTouchListener
  {
    f() {}
    
    public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
    {
      int i = paramMotionEvent.getAction();
      int j = (int)paramMotionEvent.getX();
      int k = (int)paramMotionEvent.getY();
      if (i == 0)
      {
        paramView = l0.this.L;
        if ((paramView != null) && (paramView.isShowing()) && (j >= 0) && (j < l0.this.L.getWidth()) && (k >= 0) && (k < l0.this.L.getHeight()))
        {
          paramView = l0.this;
          paramView.H.postDelayed(paramView.z, 250L);
          break label126;
        }
      }
      if (i == 1)
      {
        paramView = l0.this;
        paramView.H.removeCallbacks(paramView.z);
      }
      label126:
      return false;
    }
  }
  
  private class g
    implements Runnable
  {
    g() {}
    
    public void run()
    {
      Object localObject = l0.this.c;
      if ((localObject != null) && (a0.O((View)localObject)) && (l0.this.c.getCount() > l0.this.c.getChildCount()))
      {
        int i = l0.this.c.getChildCount();
        localObject = l0.this;
        if (i <= ((l0)localObject).o)
        {
          ((l0)localObject).L.setInputMethodMode(2);
          l0.this.show();
        }
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.widget.l0
 * JD-Core Version:    0.7.0.1
 */
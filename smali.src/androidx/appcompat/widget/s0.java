package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityRecord;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.AbsListView.LayoutParams;
import android.widget.AbsSpinner;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.BaseAdapter;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.appcompat.app.a.d;

public class s0
  extends HorizontalScrollView
  implements AdapterView.OnItemSelectedListener
{
  private static final Interpolator j = new DecelerateInterpolator();
  Runnable a;
  private c b;
  i0 c;
  private Spinner d;
  private boolean e;
  int f;
  int g;
  private int h;
  private int i;
  
  private Spinner b()
  {
    AppCompatSpinner localAppCompatSpinner = new AppCompatSpinner(getContext(), null, d.a.h);
    localAppCompatSpinner.setLayoutParams(new i0.a(-2, -1));
    localAppCompatSpinner.setOnItemSelectedListener(this);
    return localAppCompatSpinner;
  }
  
  private boolean d()
  {
    Spinner localSpinner = this.d;
    boolean bool;
    if ((localSpinner != null) && (localSpinner.getParent() == this)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private void e()
  {
    if (d()) {
      return;
    }
    if (this.d == null) {
      this.d = b();
    }
    removeView(this.c);
    addView(this.d, new ViewGroup.LayoutParams(-2, -1));
    if (this.d.getAdapter() == null) {
      this.d.setAdapter(new b());
    }
    Runnable localRunnable = this.a;
    if (localRunnable != null)
    {
      removeCallbacks(localRunnable);
      this.a = null;
    }
    this.d.setSelection(this.i);
  }
  
  private boolean f()
  {
    if (!d()) {
      return false;
    }
    removeView(this.d);
    addView(this.c, new ViewGroup.LayoutParams(-2, -1));
    setTabSelected(this.d.getSelectedItemPosition());
    return false;
  }
  
  public void a(int paramInt)
  {
    Object localObject = this.c.getChildAt(paramInt);
    Runnable localRunnable = this.a;
    if (localRunnable != null) {
      removeCallbacks(localRunnable);
    }
    localObject = new a((View)localObject);
    this.a = ((Runnable)localObject);
    post((Runnable)localObject);
  }
  
  d c(a.d paramd, boolean paramBoolean)
  {
    paramd = new d(getContext(), paramd, paramBoolean);
    if (paramBoolean)
    {
      paramd.setBackgroundDrawable(null);
      paramd.setLayoutParams(new AbsListView.LayoutParams(-1, this.h));
    }
    else
    {
      paramd.setFocusable(true);
      if (this.b == null) {
        this.b = new c();
      }
      paramd.setOnClickListener(this.b);
    }
    return paramd;
  }
  
  public void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    Runnable localRunnable = this.a;
    if (localRunnable != null) {
      post(localRunnable);
    }
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    paramConfiguration = h.a.b(getContext());
    setContentHeight(paramConfiguration.f());
    this.g = paramConfiguration.e();
  }
  
  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    Runnable localRunnable = this.a;
    if (localRunnable != null) {
      removeCallbacks(localRunnable);
    }
  }
  
  public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    ((d)paramView).b().e();
  }
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    int k = View.MeasureSpec.getMode(paramInt1);
    paramInt2 = 1;
    boolean bool;
    if (k == 1073741824) {
      bool = true;
    } else {
      bool = false;
    }
    setFillViewport(bool);
    int m = this.c.getChildCount();
    if ((m > 1) && ((k == 1073741824) || (k == -2147483648)))
    {
      if (m > 2) {
        this.f = ((int)(View.MeasureSpec.getSize(paramInt1) * 0.4F));
      } else {
        this.f = (View.MeasureSpec.getSize(paramInt1) / 2);
      }
      this.f = Math.min(this.f, this.g);
    }
    else
    {
      this.f = -1;
    }
    k = View.MeasureSpec.makeMeasureSpec(this.h, 1073741824);
    if ((bool) || (!this.e)) {
      paramInt2 = 0;
    }
    if (paramInt2 != 0)
    {
      this.c.measure(0, k);
      if (this.c.getMeasuredWidth() > View.MeasureSpec.getSize(paramInt1)) {
        e();
      } else {
        f();
      }
    }
    else
    {
      f();
    }
    paramInt2 = getMeasuredWidth();
    super.onMeasure(paramInt1, k);
    paramInt1 = getMeasuredWidth();
    if ((bool) && (paramInt2 != paramInt1)) {
      setTabSelected(this.i);
    }
  }
  
  public void onNothingSelected(AdapterView<?> paramAdapterView) {}
  
  public void setAllowCollapse(boolean paramBoolean)
  {
    this.e = paramBoolean;
  }
  
  public void setContentHeight(int paramInt)
  {
    this.h = paramInt;
    requestLayout();
  }
  
  public void setTabSelected(int paramInt)
  {
    this.i = paramInt;
    int k = this.c.getChildCount();
    for (int m = 0; m < k; m++)
    {
      localObject = this.c.getChildAt(m);
      boolean bool;
      if (m == paramInt) {
        bool = true;
      } else {
        bool = false;
      }
      ((View)localObject).setSelected(bool);
      if (bool) {
        a(paramInt);
      }
    }
    Object localObject = this.d;
    if ((localObject != null) && (paramInt >= 0)) {
      ((AdapterView)localObject).setSelection(paramInt);
    }
  }
  
  class a
    implements Runnable
  {
    a(View paramView) {}
    
    public void run()
    {
      int i = this.a.getLeft();
      int j = (s0.this.getWidth() - this.a.getWidth()) / 2;
      s0.this.smoothScrollTo(i - j, 0);
      s0.this.a = null;
    }
  }
  
  private class b
    extends BaseAdapter
  {
    b() {}
    
    public int getCount()
    {
      return s0.this.c.getChildCount();
    }
    
    public Object getItem(int paramInt)
    {
      return ((s0.d)s0.this.c.getChildAt(paramInt)).b();
    }
    
    public long getItemId(int paramInt)
    {
      return paramInt;
    }
    
    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      if (paramView == null) {
        paramView = s0.this.c((a.d)getItem(paramInt), true);
      } else {
        ((s0.d)paramView).a((a.d)getItem(paramInt));
      }
      return paramView;
    }
  }
  
  private class c
    implements View.OnClickListener
  {
    c() {}
    
    public void onClick(View paramView)
    {
      ((s0.d)paramView).b().e();
      int i = s0.this.c.getChildCount();
      for (int j = 0; j < i; j++)
      {
        View localView = s0.this.c.getChildAt(j);
        boolean bool;
        if (localView == paramView) {
          bool = true;
        } else {
          bool = false;
        }
        localView.setSelected(bool);
      }
    }
  }
  
  private class d
    extends LinearLayout
  {
    private final int[] a;
    private a.d b;
    private TextView c;
    private ImageView d;
    private View e;
    
    public d(Context paramContext, a.d paramd, boolean paramBoolean)
    {
      super(null, i);
      this$1 = new int[1];
      s0.this[0] = 16842964;
      this.a = s0.this;
      this.b = paramd;
      this$1 = z0.v(paramContext, null, s0.this, i, 0);
      if (s0.this.s(0)) {
        setBackgroundDrawable(s0.this.g(0));
      }
      s0.this.w();
      if (paramBoolean) {
        setGravity(8388627);
      }
      c();
    }
    
    public void a(a.d paramd)
    {
      this.b = paramd;
      c();
    }
    
    public a.d b()
    {
      return this.b;
    }
    
    public void c()
    {
      a.d locald = this.b;
      Object localObject1 = locald.b();
      Object localObject2 = null;
      if (localObject1 != null)
      {
        localObject2 = ((View)localObject1).getParent();
        if (localObject2 != this)
        {
          if (localObject2 != null) {
            ((ViewGroup)localObject2).removeView((View)localObject1);
          }
          addView((View)localObject1);
        }
        this.e = ((View)localObject1);
        localObject2 = this.c;
        if (localObject2 != null) {
          ((View)localObject2).setVisibility(8);
        }
        localObject2 = this.d;
        if (localObject2 != null)
        {
          ((ImageView)localObject2).setVisibility(8);
          this.d.setImageDrawable(null);
        }
      }
      else
      {
        localObject1 = this.e;
        if (localObject1 != null)
        {
          removeView((View)localObject1);
          this.e = null;
        }
        Drawable localDrawable = locald.c();
        localObject1 = locald.d();
        Object localObject3;
        Object localObject4;
        if (localDrawable != null)
        {
          if (this.d == null)
          {
            localObject3 = new AppCompatImageView(getContext());
            localObject4 = new LinearLayout.LayoutParams(-2, -2);
            ((LinearLayout.LayoutParams)localObject4).gravity = 16;
            ((View)localObject3).setLayoutParams((ViewGroup.LayoutParams)localObject4);
            addView((View)localObject3, 0);
            this.d = ((ImageView)localObject3);
          }
          this.d.setImageDrawable(localDrawable);
          this.d.setVisibility(0);
        }
        else
        {
          localObject3 = this.d;
          if (localObject3 != null)
          {
            ((ImageView)localObject3).setVisibility(8);
            this.d.setImageDrawable(null);
          }
        }
        boolean bool = TextUtils.isEmpty((CharSequence)localObject1) ^ true;
        if (bool)
        {
          if (this.c == null)
          {
            localObject4 = new AppCompatTextView(getContext(), null, d.a.e);
            ((TextView)localObject4).setEllipsize(TextUtils.TruncateAt.END);
            localObject3 = new LinearLayout.LayoutParams(-2, -2);
            ((LinearLayout.LayoutParams)localObject3).gravity = 16;
            ((View)localObject4).setLayoutParams((ViewGroup.LayoutParams)localObject3);
            addView((View)localObject4);
            this.c = ((TextView)localObject4);
          }
          this.c.setText((CharSequence)localObject1);
          this.c.setVisibility(0);
        }
        else
        {
          localObject1 = this.c;
          if (localObject1 != null)
          {
            ((View)localObject1).setVisibility(8);
            this.c.setText(null);
          }
        }
        localObject1 = this.d;
        if (localObject1 != null) {
          ((View)localObject1).setContentDescription(locald.a());
        }
        if (!bool) {
          localObject2 = locald.a();
        }
        c1.a(this, (CharSequence)localObject2);
      }
    }
    
    public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
    {
      super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
      paramAccessibilityEvent.setClassName("androidx.appcompat.app.ActionBar$Tab");
    }
    
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
    {
      super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
      paramAccessibilityNodeInfo.setClassName("androidx.appcompat.app.ActionBar$Tab");
    }
    
    public void onMeasure(int paramInt1, int paramInt2)
    {
      super.onMeasure(paramInt1, paramInt2);
      if (s0.this.f > 0)
      {
        paramInt1 = getMeasuredWidth();
        int i = s0.this.f;
        if (paramInt1 > i) {
          super.onMeasure(View.MeasureSpec.makeMeasureSpec(i, 1073741824), paramInt2);
        }
      }
    }
    
    public void setSelected(boolean paramBoolean)
    {
      int i;
      if (isSelected() != paramBoolean) {
        i = 1;
      } else {
        i = 0;
      }
      super.setSelected(paramBoolean);
      if ((i != 0) && (paramBoolean)) {
        sendAccessibilityEvent(4);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.widget.s0
 * JD-Core Version:    0.7.0.1
 */
package com.android.calendar.homepage;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import androidx.viewpager.widget.ViewPager.j;
import com.android.calendar.common.Utils;
import com.miui.calendar.util.h0;
import com.miui.calendar.util.v;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.y;
import com.miui.calendar.util.z;
import com.miui.calendar.view.InfiniteViewPager;
import com.miui.calendar.view.f;
import java.util.Calendar;

public class YearFrameLayout
  extends FrameLayout
  implements ViewPager.j
{
  private Context a;
  private InfiniteViewPager b;
  private c2[] c = new c2[3];
  private int d;
  private int e;
  private int f = 0;
  private int g = 0;
  private boolean h;
  private boolean i;
  private int j;
  private int k;
  private View l;
  private a m;
  
  public YearFrameLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, -1);
    this.a = paramContext;
    f();
  }
  
  public YearFrameLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private void c()
  {
    int n = this.b.getCurrentItem();
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append(">> afterPagerStateIdled() << ");
    ((StringBuilder)localObject).append(n);
    z.a("Cal:D:YearFrameLayout", ((StringBuilder)localObject).toString());
    localObject = Calendar.getInstance();
    if (x0.x0()) {
      n = this.j - this.f;
    } else {
      n = this.j + this.f;
    }
    ((Calendar)localObject).set(1, n);
    localObject = com.android.calendar.common.k.a((Calendar)localObject);
    e(((Calendar)localObject).get(1));
    setContentDescription(getContext().getString(2131886122, new Object[] { Integer.valueOf(((Calendar)localObject).get(1)) }));
    sendAccessibilityEvent(4);
  }
  
  private int d(int paramInt)
  {
    int n = h0.a(paramInt, this.f);
    paramInt = n;
    if (x0.x0()) {
      paramInt = -n;
    }
    return paramInt;
  }
  
  private void f()
  {
    View localView = View.inflate(this.a, 2131558655, this);
    this.b = ((InfiniteViewPager)localView.findViewById(2131363523));
    Object localObject = localView.findViewById(2131363397);
    this.l = ((View)localObject);
    ((View)localObject).setOnClickListener(new z1(this));
    v.e(this.l);
    localObject = (TextView)localView.findViewById(2131363395);
    if (!y.a()) {
      ((TextView)localObject).setText(String.valueOf(Calendar.getInstance().get(5)));
    }
    g(0);
  }
  
  private void g(int paramInt)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("initViewPager(): deltaPosition = ");
    ((StringBuilder)localObject).append(paramInt);
    z.a("Cal:D:YearFrameLayout", ((StringBuilder)localObject).toString());
    if (!this.i)
    {
      this.i = true;
      this.j = Utils.X().get(1);
      this.k = Utils.V().get(1);
      this.l.setVisibility(8);
      for (int n = 0; n < 3; n++)
      {
        this.c[n] = new c2(this.a, this.j + n);
        this.c[n].setOnMonthClickListener(new y1(this));
      }
      ScrollView[] arrayOfScrollView = new ScrollView[3];
      for (n = 0; n < 3; n++)
      {
        localObject = new ScrollView(this.a);
        arrayOfScrollView[n] = localObject;
        ((View)localObject).setHorizontalScrollBarEnabled(false);
        arrayOfScrollView[n].setVerticalScrollBarEnabled(false);
        arrayOfScrollView[n].addView(this.c[n]);
      }
      this.b.T(new com.miui.calendar.view.k(new f(this.a, arrayOfScrollView)), paramInt);
      this.b.c(this);
      t0.p(this.a).T(this.k);
    }
    else
    {
      this.b.setCurrentItemInfinite(paramInt);
    }
    h0.b(this.b);
    h(paramInt);
  }
  
  private void h(int paramInt)
  {
    int n = this.b.getOffsetAmount() + paramInt;
    this.e = n;
    this.d = this.b.S(n);
    this.f = paramInt;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("initViewPosition(): deltaPosition = ");
    localStringBuilder.append(paramInt);
    z.a("Cal:D:YearFrameLayout", localStringBuilder.toString());
  }
  
  private void l(int paramInt)
  {
    this.e = paramInt;
    this.d = this.b.S(paramInt);
    this.f = (paramInt - this.b.getOffsetAmount());
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("updateViewPosition(): mVirtualPosition = ");
    localStringBuilder.append(this.e);
    localStringBuilder.append(" mRealPosition = ");
    localStringBuilder.append(this.d);
    localStringBuilder.append(" mDeltaPosition = ");
    localStringBuilder.append(this.f);
    z.a("Cal:D:YearFrameLayout", localStringBuilder.toString());
  }
  
  public void e(int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("goTo(): year = ");
    localStringBuilder.append(paramInt);
    z.a("Cal:D:YearFrameLayout", localStringBuilder.toString());
    this.k = paramInt;
    int n = this.f;
    int i1 = paramInt - this.j;
    int i2;
    if (n != i1) {
      i2 = 1;
    } else {
      i2 = 0;
    }
    if (x0.x0()) {
      if (n != -i1) {
        i2 = 1;
      } else {
        i2 = 0;
      }
    }
    if (i2 != 0) {
      if (Math.abs(n - i1) == 1) {
        this.b.setCurrentItemInfinite(i1);
      } else {
        g(i1);
      }
    }
    if (this.g == 0) {
      k();
    }
    t0.p(this.a).T(this.k);
    if (paramInt != this.j) {
      this.l.setVisibility(0);
    } else {
      this.l.setVisibility(8);
    }
  }
  
  public void k()
  {
    for (int n = 0; n < 3; n++)
    {
      c2 localc2 = this.c[n];
      if (localc2 != null)
      {
        localc2.setYear(this.j + d(n));
        localc2.f();
      }
    }
  }
  
  public void onPageScrollStateChanged(int paramInt)
  {
    this.g = paramInt;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("onPageScrollStateChanged ");
    localStringBuilder.append(this.g);
    z.a("Cal:D:YearFrameLayout", localStringBuilder.toString());
    if ((this.h) && (paramInt == 0)) {
      c();
    }
  }
  
  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {}
  
  public void onPageSelected(int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(">> onPageSelected() << ");
    localStringBuilder.append(paramInt);
    z.a("Cal:D:YearFrameLayout", localStringBuilder.toString());
    if (paramInt == this.e)
    {
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("onPageSelected(): same position = ");
      localStringBuilder.append(paramInt);
      z.a("Cal:D:YearFrameLayout", localStringBuilder.toString());
      this.h = false;
      return;
    }
    l(paramInt);
    this.h = true;
    if (x0.x0()) {
      paramInt = this.j - this.f;
    } else {
      paramInt = this.j + this.f;
    }
    e(paramInt);
  }
  
  public void setOnMonthClickListener(a parama)
  {
    this.m = parama;
  }
  
  public static abstract interface a
  {
    public abstract void a(int paramInt1, int paramInt2);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.homepage.YearFrameLayout
 * JD-Core Version:    0.7.0.1
 */
package com.miui.calendar.huangli;

import a4.c;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import androidx.viewpager.widget.ViewPager;
import androidx.viewpager.widget.ViewPager.j;
import com.android.calendar.common.Utils;
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.h0;
import com.miui.calendar.util.y;
import com.miui.calendar.util.z;
import com.miui.calendar.view.InfiniteViewPager;
import com.miui.calendar.view.f;
import java.util.Calendar;
import miuix.appcompat.app.m;

public class HuangLiDetailActivity
  extends com.android.calendar.common.b
  implements ViewPager.j
{
  private InfiniteViewPager b;
  private HuangLiView c;
  private int d = 0;
  private int e = 0;
  private HuangLiView[] f;
  private long g;
  private miuix.appcompat.app.a h;
  
  private int a0(int paramInt)
  {
    return h0.a(paramInt, this.d);
  }
  
  private void c0()
  {
    Object localObject = getIntent();
    if ((localObject != null) && (((Intent)localObject).getData() != null))
    {
      localObject = ((Intent)localObject).getData();
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("parseIntent(): url:");
      localStringBuilder.append(localObject);
      z.a("Cal:D:HuangLiDetailActivity", localStringBuilder.toString());
      localObject = ((Uri)localObject).getQueryParameter("timeInMillis");
      try
      {
        this.g = Long.parseLong((String)localObject);
      }
      catch (Exception localException)
      {
        z.d("Cal:D:HuangLiDetailActivity", "parseIntent()", localException);
      }
    }
    if (this.g == 0L) {
      this.g = System.currentTimeMillis();
    }
  }
  
  private void d0(Calendar paramCalendar)
  {
    if (this.h == null)
    {
      z.c("Cal:D:HuangLiDetailActivity", "actionBar is null");
      return;
    }
    paramCalendar = Utils.Q(this, paramCalendar.get(1), paramCalendar.get(2), paramCalendar.get(5), true, true);
    if (TextUtils.isEmpty(paramCalendar)) {
      z.c("Cal:D:HuangLiDetailActivity", "title is empty");
    }
    this.h.B(paramCalendar);
  }
  
  private void e0()
  {
    for (int i = 0; i < this.f.length; i++)
    {
      int j = a0(i);
      long l1 = this.g;
      long l2 = j;
      this.f[i].a(l1 + l2 * 86400000L);
    }
  }
  
  private void init()
  {
    for (int i = 0;; i++)
    {
      localObject = this.f;
      if (i >= localObject.length) {
        break;
      }
      localObject[i] = new HuangLiView(this);
    }
    e0();
    Object localObject = new InfiniteViewPager(this);
    this.b = ((InfiniteViewPager)localObject);
    ((ViewPager)localObject).c(this);
    this.b.T(new com.miui.calendar.view.k(new f(this, this.f)), this.d);
    localObject = new ViewGroup.LayoutParams(-1, -2);
    this.b.setLayoutParams((ViewGroup.LayoutParams)localObject);
    localObject = (FrameLayout)findViewById(2131362551);
    ((ViewGroup)localObject).addView(this.b);
    this.b.post(new c(this, (FrameLayout)localObject));
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    if (!y.p(this)) {
      Utils.x0(this);
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2131558615);
    c0();
    paramBundle = (HuangLiView)findViewById(2131362550);
    this.c = paramBundle;
    paramBundle.a(this.g);
    paramBundle = Calendar.getInstance();
    paramBundle.setTimeInMillis(this.g);
    this.h = J();
    d0(paramBundle);
    g0.d("huangli_activity_displayed");
    if (!DeviceUtils.M())
    {
      this.f = new HuangLiView[3];
      this.c.postDelayed(new a4.b(this), 500L);
      X();
    }
  }
  
  public void onPageScrollStateChanged(int paramInt)
  {
    if (paramInt == 1)
    {
      this.d = (this.b.getCurrentItem() - this.b.getOffsetAmount());
      e0();
    }
  }
  
  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {}
  
  public void onPageSelected(int paramInt)
  {
    long l1 = this.g;
    long l2 = this.b.getCurrentItem() - this.b.getOffsetAmount();
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeInMillis(l1 + l2 * 86400000L);
    if (!com.android.calendar.common.k.h(localCalendar))
    {
      this.b.setCurrentItemInfinite(this.e);
      return;
    }
    this.e = (this.b.getCurrentItem() - this.b.getOffsetAmount());
    d0(localCalendar);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.huangli.HuangLiDetailActivity
 * JD-Core Version:    0.7.0.1
 */
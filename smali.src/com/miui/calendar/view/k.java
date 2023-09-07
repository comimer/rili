package com.miui.calendar.view;

import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.b;
import com.miui.calendar.util.z;

public class k
  extends b
{
  private b c;
  
  public k(b paramb)
  {
    this.c = paramb;
  }
  
  public void a(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    int i = paramInt % t();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("destroyItem(): virtual position: ");
    localStringBuilder.append(paramInt);
    z.a("Cal:D:PagerAdapter", localStringBuilder.toString());
    localStringBuilder = new StringBuilder();
    localStringBuilder.append("destroyItem(): real position: ");
    localStringBuilder.append(i);
    z.a("Cal:D:PagerAdapter", localStringBuilder.toString());
    this.c.a(paramViewGroup, i, paramObject);
  }
  
  public void c(ViewGroup paramViewGroup)
  {
    this.c.c(paramViewGroup);
  }
  
  public int d()
  {
    return (t() + 1) * 1000;
  }
  
  public int e(Object paramObject)
  {
    return this.c.e(paramObject);
  }
  
  public CharSequence f(int paramInt)
  {
    int i = t();
    return this.c.f(paramInt % i);
  }
  
  public float g(int paramInt)
  {
    return this.c.g(paramInt);
  }
  
  public Object h(ViewGroup paramViewGroup, int paramInt)
  {
    int i = paramInt % t();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("instantiateItem(): virtual position: ");
    localStringBuilder.append(paramInt);
    z.a("Cal:D:PagerAdapter", localStringBuilder.toString());
    localStringBuilder = new StringBuilder();
    localStringBuilder.append("instantiateItem(): real position: ");
    localStringBuilder.append(i);
    z.a("Cal:D:PagerAdapter", localStringBuilder.toString());
    return this.c.h(paramViewGroup, i);
  }
  
  public boolean i(View paramView, Object paramObject)
  {
    return this.c.i(paramView, paramObject);
  }
  
  public void l(Parcelable paramParcelable, ClassLoader paramClassLoader)
  {
    this.c.l(paramParcelable, paramClassLoader);
  }
  
  public Parcelable m()
  {
    return this.c.m();
  }
  
  public void o(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    this.c.o(paramViewGroup, paramInt, paramObject);
  }
  
  public void r(ViewGroup paramViewGroup)
  {
    this.c.r(paramViewGroup);
  }
  
  public int t()
  {
    return this.c.d();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.view.k
 * JD-Core Version:    0.7.0.1
 */
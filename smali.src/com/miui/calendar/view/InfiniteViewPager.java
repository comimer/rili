package com.miui.calendar.view;

import android.content.Context;
import android.util.AttributeSet;
import androidx.viewpager.widget.ViewPager;
import androidx.viewpager.widget.a;
import androidx.viewpager.widget.b;

public class InfiniteViewPager
  extends a
{
  private a r0;
  
  public InfiniteViewPager(Context paramContext)
  {
    super(paramContext);
  }
  
  public InfiniteViewPager(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public int S(int paramInt)
  {
    int i = paramInt;
    if ((getAdapter() instanceof k)) {
      i = paramInt % ((k)getAdapter()).t();
    }
    return i;
  }
  
  public void T(b paramb, int paramInt)
  {
    super.setAdapter(paramb);
    setCurrentItemInfinite(paramInt);
  }
  
  public void U(int paramInt, boolean paramBoolean)
  {
    N(getOffsetAmount() + paramInt % getAdapter().d(), paramBoolean);
  }
  
  public int getOffsetAmount()
  {
    if ((getAdapter() instanceof k)) {
      return ((k)getAdapter()).t() * 1000;
    }
    return 0;
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    a locala = this.r0;
    if (locala != null) {
      locala.a();
    }
  }
  
  public void setCurrentItemInfinite(int paramInt)
  {
    U(paramInt, false);
  }
  
  public void setOnSizeChangedListener(a parama)
  {
    this.r0 = parama;
  }
  
  public static abstract interface a
  {
    public abstract void a();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.view.InfiniteViewPager
 * JD-Core Version:    0.7.0.1
 */
package com.miui.calendar.view;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.b;

public class f<T extends View>
  extends b
{
  private T[] c;
  
  public f(Context paramContext, T[] paramArrayOfT)
  {
    this.c = paramArrayOfT;
  }
  
  public void a(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    paramObject = this.c[paramInt];
    if (paramObject.getParent() == null) {
      paramViewGroup.removeView(paramObject);
    }
  }
  
  public int d()
  {
    return this.c.length;
  }
  
  public Object h(ViewGroup paramViewGroup, int paramInt)
  {
    View localView = this.c[paramInt];
    if ((localView.getParent() instanceof ViewGroup)) {
      ((ViewGroup)localView.getParent()).removeView(localView);
    }
    paramViewGroup.addView(localView, 0);
    return localView;
  }
  
  public boolean i(View paramView, Object paramObject)
  {
    boolean bool;
    if (paramView == paramObject) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.view.f
 * JD-Core Version:    0.7.0.1
 */
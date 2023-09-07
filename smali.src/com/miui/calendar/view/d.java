package com.miui.calendar.view;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.widget.ViewSwitcher;
import com.miui.calendar.util.c0;

public class d
  extends ViewSwitcher
{
  private Handler a;
  private int b = -1;
  private b c;
  private long d = 5000L;
  
  public d(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    b();
  }
  
  private void b()
  {
    this.a = new a(this);
  }
  
  public int getCurrentViewIndex()
  {
    int i = this.b;
    int j = i;
    if (i == -1) {
      j = 0;
    }
    return j;
  }
  
  public void setOnViewScrollListener(b paramb)
  {
    this.c = paramb;
  }
  
  private static class a
    extends c0<d>
  {
    public a(d paramd)
    {
      super();
    }
    
    public void handleMessage(Message paramMessage)
    {
      super.handleMessage(paramMessage);
      paramMessage = (d)c();
      if (paramMessage == null) {
        return;
      }
      d.a(paramMessage);
      throw null;
    }
  }
  
  public static abstract interface b {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.view.d
 * JD-Core Version:    0.7.0.1
 */
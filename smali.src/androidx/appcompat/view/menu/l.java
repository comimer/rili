package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow.OnDismissListener;
import androidx.core.view.a0;
import androidx.core.view.e;

public class l
{
  private final Context a;
  private final g b;
  private final boolean c;
  private final int d;
  private final int e;
  private View f;
  private int g = 8388611;
  private boolean h;
  private m.a i;
  private k j;
  private PopupWindow.OnDismissListener k;
  private final PopupWindow.OnDismissListener l = new a();
  
  public l(Context paramContext, g paramg, View paramView, boolean paramBoolean, int paramInt)
  {
    this(paramContext, paramg, paramView, paramBoolean, paramInt, 0);
  }
  
  public l(Context paramContext, g paramg, View paramView, boolean paramBoolean, int paramInt1, int paramInt2)
  {
    this.a = paramContext;
    this.b = paramg;
    this.f = paramView;
    this.c = paramBoolean;
    this.d = paramInt1;
    this.e = paramInt2;
  }
  
  private k a()
  {
    Object localObject = ((WindowManager)this.a.getSystemService("window")).getDefaultDisplay();
    Point localPoint = new Point();
    ((Display)localObject).getRealSize(localPoint);
    int m;
    if (Math.min(localPoint.x, localPoint.y) >= this.a.getResources().getDimensionPixelSize(d.d.c)) {
      m = 1;
    } else {
      m = 0;
    }
    if (m != 0) {
      localObject = new d(this.a, this.f, this.d, this.e, this.c);
    } else {
      localObject = new q(this.a, this.b, this.f, this.d, this.e, this.c);
    }
    ((k)localObject).a(this.b);
    ((k)localObject).j(this.l);
    ((k)localObject).e(this.f);
    ((m)localObject).setCallback(this.i);
    ((k)localObject).g(this.h);
    ((k)localObject).h(this.g);
    return localObject;
  }
  
  private void l(int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    k localk = c();
    localk.l(paramBoolean2);
    if (paramBoolean1)
    {
      int m = paramInt1;
      if ((e.b(this.g, a0.z(this.f)) & 0x7) == 5) {
        m = paramInt1 - this.f.getWidth();
      }
      localk.i(m);
      localk.m(paramInt2);
      paramInt1 = (int)(this.a.getResources().getDisplayMetrics().density * 48.0F / 2.0F);
      localk.f(new Rect(m - paramInt1, paramInt2 - paramInt1, m + paramInt1, paramInt2 + paramInt1));
    }
    localk.show();
  }
  
  public void b()
  {
    if (d()) {
      this.j.dismiss();
    }
  }
  
  public k c()
  {
    if (this.j == null) {
      this.j = a();
    }
    return this.j;
  }
  
  public boolean d()
  {
    k localk = this.j;
    boolean bool;
    if ((localk != null) && (localk.isShowing())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  protected void e()
  {
    this.j = null;
    PopupWindow.OnDismissListener localOnDismissListener = this.k;
    if (localOnDismissListener != null) {
      localOnDismissListener.onDismiss();
    }
  }
  
  public void f(View paramView)
  {
    this.f = paramView;
  }
  
  public void g(boolean paramBoolean)
  {
    this.h = paramBoolean;
    k localk = this.j;
    if (localk != null) {
      localk.g(paramBoolean);
    }
  }
  
  public void h(int paramInt)
  {
    this.g = paramInt;
  }
  
  public void i(PopupWindow.OnDismissListener paramOnDismissListener)
  {
    this.k = paramOnDismissListener;
  }
  
  public void j(m.a parama)
  {
    this.i = parama;
    k localk = this.j;
    if (localk != null) {
      localk.setCallback(parama);
    }
  }
  
  public void k()
  {
    if (m()) {
      return;
    }
    throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
  }
  
  public boolean m()
  {
    if (d()) {
      return true;
    }
    if (this.f == null) {
      return false;
    }
    l(0, 0, false, false);
    return true;
  }
  
  public boolean n(int paramInt1, int paramInt2)
  {
    if (d()) {
      return true;
    }
    if (this.f == null) {
      return false;
    }
    l(paramInt1, paramInt2, true, true);
    return true;
  }
  
  class a
    implements PopupWindow.OnDismissListener
  {
    a() {}
    
    public void onDismiss()
    {
      l.this.e();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.view.menu.l
 * JD-Core Version:    0.7.0.1
 */
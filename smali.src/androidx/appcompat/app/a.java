package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import d.j;
import h.b;
import h.b.a;

public abstract class a
{
  public abstract void A(int paramInt);
  
  public abstract void B(CharSequence paramCharSequence);
  
  public void C(CharSequence paramCharSequence) {}
  
  public b D(b.a parama)
  {
    return null;
  }
  
  public boolean g()
  {
    return false;
  }
  
  public boolean h()
  {
    return false;
  }
  
  public void i(boolean paramBoolean) {}
  
  public abstract View j();
  
  public abstract int k();
  
  public abstract Context l();
  
  public abstract CharSequence m();
  
  public boolean n()
  {
    return false;
  }
  
  public abstract boolean o();
  
  public void p(Configuration paramConfiguration) {}
  
  void q() {}
  
  public boolean r(int paramInt, KeyEvent paramKeyEvent)
  {
    return false;
  }
  
  public boolean s(KeyEvent paramKeyEvent)
  {
    return false;
  }
  
  public boolean t()
  {
    return false;
  }
  
  public abstract void u(Drawable paramDrawable);
  
  public abstract void v(int paramInt);
  
  public void w(boolean paramBoolean) {}
  
  public abstract void x(int paramInt);
  
  public abstract void y(boolean paramBoolean);
  
  public abstract void z(CharSequence paramCharSequence);
  
  public static class a
    extends ViewGroup.MarginLayoutParams
  {
    public int a;
    
    public a(int paramInt)
    {
      this(-2, -1, paramInt);
    }
    
    public a(int paramInt1, int paramInt2)
    {
      super(paramInt2);
      this.a = 8388627;
    }
    
    public a(int paramInt1, int paramInt2, int paramInt3)
    {
      super(paramInt2);
      this.a = paramInt3;
    }
    
    public a(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      this.a = 0;
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, j.t);
      this.a = paramContext.getInt(j.u, 0);
      paramContext.recycle();
    }
    
    public a(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
      this.a = 0;
    }
    
    public a(a parama)
    {
      super();
      this.a = 0;
      this.a = parama.a;
    }
  }
  
  public static abstract interface b
  {
    public abstract void onMenuVisibilityChanged(boolean paramBoolean);
  }
  
  @Deprecated
  public static abstract interface c
  {
    public abstract boolean onNavigationItemSelected(int paramInt, long paramLong);
  }
  
  @Deprecated
  public static abstract class d
  {
    public abstract CharSequence a();
    
    public abstract View b();
    
    public abstract Drawable c();
    
    public abstract CharSequence d();
    
    public abstract void e();
  }
  
  @Deprecated
  public static abstract interface e {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.app.a
 * JD-Core Version:    0.7.0.1
 */
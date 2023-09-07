package h;

import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;

public abstract class b
{
  private Object a;
  private boolean b;
  
  public abstract void a();
  
  public abstract View b();
  
  public abstract Menu c();
  
  public abstract MenuInflater d();
  
  public abstract CharSequence e();
  
  public Object f()
  {
    return this.a;
  }
  
  public abstract CharSequence g();
  
  public boolean h()
  {
    return this.b;
  }
  
  public abstract void i();
  
  public abstract boolean j();
  
  public abstract void k(View paramView);
  
  public abstract void l(int paramInt);
  
  public abstract void m(CharSequence paramCharSequence);
  
  public void n(Object paramObject)
  {
    this.a = paramObject;
  }
  
  public abstract void o(int paramInt);
  
  public abstract void p(CharSequence paramCharSequence);
  
  public void q(boolean paramBoolean)
  {
    this.b = paramBoolean;
  }
  
  public static abstract interface a
  {
    public abstract boolean a(b paramb, Menu paramMenu);
    
    public abstract boolean b(b paramb, Menu paramMenu);
    
    public abstract boolean c(b paramb, MenuItem paramMenuItem);
    
    public abstract void d(b paramb);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     h.b
 * JD-Core Version:    0.7.0.1
 */
package androidx.core.view;

import android.content.Context;
import android.util.Log;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

public abstract class b
{
  private final Context a;
  private a b;
  private b c;
  
  public b(Context paramContext)
  {
    this.a = paramContext;
  }
  
  public boolean a()
  {
    return false;
  }
  
  public boolean b()
  {
    return true;
  }
  
  public abstract View c();
  
  public View d(MenuItem paramMenuItem)
  {
    return c();
  }
  
  public boolean e()
  {
    return false;
  }
  
  public void f(SubMenu paramSubMenu) {}
  
  public boolean g()
  {
    return false;
  }
  
  public void h()
  {
    this.c = null;
    this.b = null;
  }
  
  public void i(a parama)
  {
    this.b = parama;
  }
  
  public void j(b paramb)
  {
    if ((this.c != null) && (paramb != null))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this ");
      localStringBuilder.append(getClass().getSimpleName());
      localStringBuilder.append(" instance while it is still in use somewhere else?");
      Log.w("ActionProvider(support)", localStringBuilder.toString());
    }
    this.c = paramb;
  }
  
  public static abstract interface a {}
  
  public static abstract interface b
  {
    public abstract void onActionProviderVisibilityChanged(boolean paramBoolean);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.view.b
 * JD-Core Version:    0.7.0.1
 */
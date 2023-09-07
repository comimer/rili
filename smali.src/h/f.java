package h;

import android.content.Context;
import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.menu.j;
import androidx.appcompat.view.menu.o;
import java.util.ArrayList;
import n.g;
import u.a;

public class f
  extends ActionMode
{
  final Context a;
  final b b;
  
  public f(Context paramContext, b paramb)
  {
    this.a = paramContext;
    this.b = paramb;
  }
  
  public void finish()
  {
    this.b.a();
  }
  
  public View getCustomView()
  {
    return this.b.b();
  }
  
  public Menu getMenu()
  {
    return new o(this.a, (a)this.b.c());
  }
  
  public MenuInflater getMenuInflater()
  {
    return this.b.d();
  }
  
  public CharSequence getSubtitle()
  {
    return this.b.e();
  }
  
  public Object getTag()
  {
    return this.b.f();
  }
  
  public CharSequence getTitle()
  {
    return this.b.g();
  }
  
  public boolean getTitleOptionalHint()
  {
    return this.b.h();
  }
  
  public void invalidate()
  {
    this.b.i();
  }
  
  public boolean isTitleOptional()
  {
    return this.b.j();
  }
  
  public void setCustomView(View paramView)
  {
    this.b.k(paramView);
  }
  
  public void setSubtitle(int paramInt)
  {
    this.b.l(paramInt);
  }
  
  public void setSubtitle(CharSequence paramCharSequence)
  {
    this.b.m(paramCharSequence);
  }
  
  public void setTag(Object paramObject)
  {
    this.b.n(paramObject);
  }
  
  public void setTitle(int paramInt)
  {
    this.b.o(paramInt);
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    this.b.p(paramCharSequence);
  }
  
  public void setTitleOptionalHint(boolean paramBoolean)
  {
    this.b.q(paramBoolean);
  }
  
  public static class a
    implements b.a
  {
    final ActionMode.Callback a;
    final Context b;
    final ArrayList<f> c;
    final g<Menu, Menu> d;
    
    public a(Context paramContext, ActionMode.Callback paramCallback)
    {
      this.b = paramContext;
      this.a = paramCallback;
      this.c = new ArrayList();
      this.d = new g();
    }
    
    private Menu f(Menu paramMenu)
    {
      Menu localMenu = (Menu)this.d.get(paramMenu);
      Object localObject = localMenu;
      if (localMenu == null)
      {
        localObject = new o(this.b, (a)paramMenu);
        this.d.put(paramMenu, localObject);
      }
      return localObject;
    }
    
    public boolean a(b paramb, Menu paramMenu)
    {
      return this.a.onCreateActionMode(e(paramb), f(paramMenu));
    }
    
    public boolean b(b paramb, Menu paramMenu)
    {
      return this.a.onPrepareActionMode(e(paramb), f(paramMenu));
    }
    
    public boolean c(b paramb, MenuItem paramMenuItem)
    {
      return this.a.onActionItemClicked(e(paramb), new j(this.b, (u.b)paramMenuItem));
    }
    
    public void d(b paramb)
    {
      this.a.onDestroyActionMode(e(paramb));
    }
    
    public ActionMode e(b paramb)
    {
      int i = this.c.size();
      for (int j = 0; j < i; j++)
      {
        f localf = (f)this.c.get(j);
        if ((localf != null) && (localf.b == paramb)) {
          return localf;
        }
      }
      paramb = new f(this.b, paramb);
      this.c.add(paramb);
      return paramb;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     h.f
 * JD-Core Version:    0.7.0.1
 */
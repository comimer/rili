package h;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.menu.g.a;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

public class e
  extends b
  implements g.a
{
  private Context c;
  private ActionBarContextView d;
  private b.a e;
  private WeakReference<View> f;
  private boolean g;
  private boolean h;
  private androidx.appcompat.view.menu.g i;
  
  public e(Context paramContext, ActionBarContextView paramActionBarContextView, b.a parama, boolean paramBoolean)
  {
    this.c = paramContext;
    this.d = paramActionBarContextView;
    this.e = parama;
    paramContext = new androidx.appcompat.view.menu.g(paramActionBarContextView.getContext()).setDefaultShowAsAction(1);
    this.i = paramContext;
    paramContext.setCallback(this);
    this.h = paramBoolean;
  }
  
  public void a()
  {
    if (this.g) {
      return;
    }
    this.g = true;
    this.e.d(this);
  }
  
  public View b()
  {
    Object localObject = this.f;
    if (localObject != null) {
      localObject = (View)((Reference)localObject).get();
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  public Menu c()
  {
    return this.i;
  }
  
  public MenuInflater d()
  {
    return new g(this.d.getContext());
  }
  
  public CharSequence e()
  {
    return this.d.getSubtitle();
  }
  
  public CharSequence g()
  {
    return this.d.getTitle();
  }
  
  public void i()
  {
    this.e.b(this, this.i);
  }
  
  public boolean j()
  {
    return this.d.j();
  }
  
  public void k(View paramView)
  {
    this.d.setCustomView(paramView);
    if (paramView != null) {
      paramView = new WeakReference(paramView);
    } else {
      paramView = null;
    }
    this.f = paramView;
  }
  
  public void l(int paramInt)
  {
    m(this.c.getString(paramInt));
  }
  
  public void m(CharSequence paramCharSequence)
  {
    this.d.setSubtitle(paramCharSequence);
  }
  
  public void o(int paramInt)
  {
    p(this.c.getString(paramInt));
  }
  
  public boolean onMenuItemSelected(androidx.appcompat.view.menu.g paramg, MenuItem paramMenuItem)
  {
    return this.e.c(this, paramMenuItem);
  }
  
  public void onMenuModeChange(androidx.appcompat.view.menu.g paramg)
  {
    i();
    this.d.l();
  }
  
  public void p(CharSequence paramCharSequence)
  {
    this.d.setTitle(paramCharSequence);
  }
  
  public void q(boolean paramBoolean)
  {
    super.q(paramBoolean);
    this.d.setTitleOptional(paramBoolean);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     h.e
 * JD-Core Version:    0.7.0.1
 */
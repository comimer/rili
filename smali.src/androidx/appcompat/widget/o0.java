package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.transition.Transition;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.HeaderViewListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import androidx.appcompat.view.menu.ListMenuItemView;
import androidx.appcompat.view.menu.f;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.i;
import java.lang.reflect.Method;

public class o0
  extends l0
  implements m0
{
  private static Method P;
  private m0 O;
  
  static
  {
    try
    {
      if (Build.VERSION.SDK_INT <= 28) {
        P = PopupWindow.class.getDeclaredMethod("setTouchModal", new Class[] { Boolean.TYPE });
      }
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      Log.i("MenuPopupWindow", "Could not find method setTouchModal() on PopupWindow. Oh well.");
    }
  }
  
  public o0(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
  }
  
  public void N(Object paramObject)
  {
    this.L.setEnterTransition((Transition)paramObject);
  }
  
  public void O(Object paramObject)
  {
    this.L.setExitTransition((Transition)paramObject);
  }
  
  public void P(m0 paramm0)
  {
    this.O = paramm0;
  }
  
  public void Q(boolean paramBoolean)
  {
    if (Build.VERSION.SDK_INT <= 28)
    {
      Method localMethod = P;
      if (localMethod != null) {
        try
        {
          localMethod.invoke(this.L, new Object[] { Boolean.valueOf(paramBoolean) });
        }
        catch (Exception localException)
        {
          Log.i("MenuPopupWindow", "Could not invoke setTouchModal() on PopupWindow. Oh well.");
        }
      }
    }
    else
    {
      n0.a(this.L, paramBoolean);
    }
  }
  
  public void a(g paramg, MenuItem paramMenuItem)
  {
    m0 localm0 = this.O;
    if (localm0 != null) {
      localm0.a(paramg, paramMenuItem);
    }
  }
  
  public void j(g paramg, MenuItem paramMenuItem)
  {
    m0 localm0 = this.O;
    if (localm0 != null) {
      localm0.j(paramg, paramMenuItem);
    }
  }
  
  f0 o(Context paramContext, boolean paramBoolean)
  {
    paramContext = new a(paramContext, paramBoolean);
    paramContext.setHoverListener(this);
    return paramContext;
  }
  
  public static class a
    extends f0
  {
    final int o;
    final int p;
    private m0 q;
    private MenuItem r;
    
    public a(Context paramContext, boolean paramBoolean)
    {
      super(paramBoolean);
      if (1 == paramContext.getResources().getConfiguration().getLayoutDirection())
      {
        this.o = 21;
        this.p = 22;
      }
      else
      {
        this.o = 22;
        this.p = 21;
      }
    }
    
    public boolean onHoverEvent(MotionEvent paramMotionEvent)
    {
      if (this.q != null)
      {
        Object localObject1 = getAdapter();
        int i;
        if ((localObject1 instanceof HeaderViewListAdapter))
        {
          localObject1 = (HeaderViewListAdapter)localObject1;
          i = ((HeaderViewListAdapter)localObject1).getHeadersCount();
          localObject1 = (f)((HeaderViewListAdapter)localObject1).getWrappedAdapter();
        }
        else
        {
          i = 0;
          localObject1 = (f)localObject1;
        }
        MenuItem localMenuItem = null;
        Object localObject2 = localMenuItem;
        if (paramMotionEvent.getAction() != 10)
        {
          int j = pointToPosition((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY());
          localObject2 = localMenuItem;
          if (j != -1)
          {
            i = j - i;
            localObject2 = localMenuItem;
            if (i >= 0)
            {
              localObject2 = localMenuItem;
              if (i < ((f)localObject1).getCount()) {
                localObject2 = ((f)localObject1).c(i);
              }
            }
          }
        }
        localMenuItem = this.r;
        if (localMenuItem != localObject2)
        {
          localObject1 = ((f)localObject1).b();
          if (localMenuItem != null) {
            this.q.j((g)localObject1, localMenuItem);
          }
          this.r = ((MenuItem)localObject2);
          if (localObject2 != null) {
            this.q.a((g)localObject1, (MenuItem)localObject2);
          }
        }
      }
      return super.onHoverEvent(paramMotionEvent);
    }
    
    public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
    {
      ListMenuItemView localListMenuItemView = (ListMenuItemView)getSelectedView();
      if ((localListMenuItemView != null) && (paramInt == this.o))
      {
        if ((localListMenuItemView.isEnabled()) && (localListMenuItemView.getItemData().hasSubMenu())) {
          performItemClick(localListMenuItemView, getSelectedItemPosition(), getSelectedItemId());
        }
        return true;
      }
      if ((localListMenuItemView != null) && (paramInt == this.p))
      {
        setSelection(-1);
        paramKeyEvent = getAdapter();
        if ((paramKeyEvent instanceof HeaderViewListAdapter)) {
          paramKeyEvent = (f)((HeaderViewListAdapter)paramKeyEvent).getWrappedAdapter();
        } else {
          paramKeyEvent = (f)paramKeyEvent;
        }
        paramKeyEvent.b().close(false);
        return true;
      }
      return super.onKeyDown(paramInt, paramKeyEvent);
    }
    
    public void setHoverListener(m0 paramm0)
    {
      this.q = paramm0;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.widget.o0
 * JD-Core Version:    0.7.0.1
 */
package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

public class r
  extends g
  implements SubMenu
{
  private i mItem;
  private g mParentMenu;
  
  public r(Context paramContext, g paramg, i parami)
  {
    super(paramContext);
    this.mParentMenu = paramg;
    this.mItem = parami;
  }
  
  public boolean collapseItemActionView(i parami)
  {
    return this.mParentMenu.collapseItemActionView(parami);
  }
  
  boolean dispatchMenuItemSelected(g paramg, MenuItem paramMenuItem)
  {
    boolean bool;
    if ((!super.dispatchMenuItemSelected(paramg, paramMenuItem)) && (!this.mParentMenu.dispatchMenuItemSelected(paramg, paramMenuItem))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public boolean expandItemActionView(i parami)
  {
    return this.mParentMenu.expandItemActionView(parami);
  }
  
  public String getActionViewStatesKey()
  {
    Object localObject = this.mItem;
    int i;
    if (localObject != null) {
      i = ((i)localObject).getItemId();
    } else {
      i = 0;
    }
    if (i == 0) {
      return null;
    }
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append(super.getActionViewStatesKey());
    ((StringBuilder)localObject).append(":");
    ((StringBuilder)localObject).append(i);
    return ((StringBuilder)localObject).toString();
  }
  
  public MenuItem getItem()
  {
    return this.mItem;
  }
  
  public Menu getParentMenu()
  {
    return this.mParentMenu;
  }
  
  public g getRootMenu()
  {
    return this.mParentMenu.getRootMenu();
  }
  
  public boolean isGroupDividerEnabled()
  {
    return this.mParentMenu.isGroupDividerEnabled();
  }
  
  public boolean isQwertyMode()
  {
    return this.mParentMenu.isQwertyMode();
  }
  
  public boolean isShortcutsVisible()
  {
    return this.mParentMenu.isShortcutsVisible();
  }
  
  public void setCallback(g.a parama)
  {
    this.mParentMenu.setCallback(parama);
  }
  
  public void setGroupDividerEnabled(boolean paramBoolean)
  {
    this.mParentMenu.setGroupDividerEnabled(paramBoolean);
  }
  
  public SubMenu setHeaderIcon(int paramInt)
  {
    return (SubMenu)super.setHeaderIconInt(paramInt);
  }
  
  public SubMenu setHeaderIcon(Drawable paramDrawable)
  {
    return (SubMenu)super.setHeaderIconInt(paramDrawable);
  }
  
  public SubMenu setHeaderTitle(int paramInt)
  {
    return (SubMenu)super.setHeaderTitleInt(paramInt);
  }
  
  public SubMenu setHeaderTitle(CharSequence paramCharSequence)
  {
    return (SubMenu)super.setHeaderTitleInt(paramCharSequence);
  }
  
  public SubMenu setHeaderView(View paramView)
  {
    return (SubMenu)super.setHeaderViewInt(paramView);
  }
  
  public SubMenu setIcon(int paramInt)
  {
    this.mItem.setIcon(paramInt);
    return this;
  }
  
  public SubMenu setIcon(Drawable paramDrawable)
  {
    this.mItem.setIcon(paramDrawable);
    return this;
  }
  
  public void setQwertyMode(boolean paramBoolean)
  {
    this.mParentMenu.setQwertyMode(paramBoolean);
  }
  
  public void setShortcutsVisible(boolean paramBoolean)
  {
    this.mParentMenu.setShortcutsVisible(paramBoolean);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.view.menu.r
 * JD-Core Version:    0.7.0.1
 */
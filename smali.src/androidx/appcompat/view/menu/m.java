package androidx.appcompat.view.menu;

import android.content.Context;
import android.os.Parcelable;

public abstract interface m
{
  public abstract boolean collapseItemActionView(g paramg, i parami);
  
  public abstract boolean expandItemActionView(g paramg, i parami);
  
  public abstract boolean flagActionItems();
  
  public abstract int getId();
  
  public abstract void initForMenu(Context paramContext, g paramg);
  
  public abstract void onCloseMenu(g paramg, boolean paramBoolean);
  
  public abstract void onRestoreInstanceState(Parcelable paramParcelable);
  
  public abstract Parcelable onSaveInstanceState();
  
  public abstract boolean onSubMenuSelected(r paramr);
  
  public abstract void setCallback(a parama);
  
  public abstract void updateMenuView(boolean paramBoolean);
  
  public static abstract interface a
  {
    public abstract boolean a(g paramg);
    
    public abstract void onCloseMenu(g paramg, boolean paramBoolean);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.view.menu.m
 * JD-Core Version:    0.7.0.1
 */
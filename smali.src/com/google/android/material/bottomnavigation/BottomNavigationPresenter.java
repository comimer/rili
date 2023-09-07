package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.i;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.view.menu.m.a;
import androidx.appcompat.view.menu.n;
import androidx.appcompat.view.menu.r;
import com.google.android.material.badge.BadgeUtils;
import com.google.android.material.internal.ParcelableSparseArray;

public class BottomNavigationPresenter
  implements m
{
  private int id;
  private g menu;
  private BottomNavigationMenuView menuView;
  private boolean updateSuspended = false;
  
  public boolean collapseItemActionView(g paramg, i parami)
  {
    return false;
  }
  
  public boolean expandItemActionView(g paramg, i parami)
  {
    return false;
  }
  
  public boolean flagActionItems()
  {
    return false;
  }
  
  public int getId()
  {
    return this.id;
  }
  
  public n getMenuView(ViewGroup paramViewGroup)
  {
    return this.menuView;
  }
  
  public void initForMenu(Context paramContext, g paramg)
  {
    this.menu = paramg;
    this.menuView.initialize(paramg);
  }
  
  public void onCloseMenu(g paramg, boolean paramBoolean) {}
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if ((paramParcelable instanceof SavedState))
    {
      BottomNavigationMenuView localBottomNavigationMenuView = this.menuView;
      paramParcelable = (SavedState)paramParcelable;
      localBottomNavigationMenuView.tryRestoreSelectedItemId(paramParcelable.selectedItemId);
      paramParcelable = BadgeUtils.createBadgeDrawablesFromSavedStates(this.menuView.getContext(), paramParcelable.badgeSavedStates);
      this.menuView.setBadgeDrawables(paramParcelable);
    }
  }
  
  public Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState();
    localSavedState.selectedItemId = this.menuView.getSelectedItemId();
    localSavedState.badgeSavedStates = BadgeUtils.createParcelableBadgeStates(this.menuView.getBadgeDrawables());
    return localSavedState;
  }
  
  public boolean onSubMenuSelected(r paramr)
  {
    return false;
  }
  
  public void setBottomNavigationMenuView(BottomNavigationMenuView paramBottomNavigationMenuView)
  {
    this.menuView = paramBottomNavigationMenuView;
  }
  
  public void setCallback(m.a parama) {}
  
  public void setId(int paramInt)
  {
    this.id = paramInt;
  }
  
  public void setUpdateSuspended(boolean paramBoolean)
  {
    this.updateSuspended = paramBoolean;
  }
  
  public void updateMenuView(boolean paramBoolean)
  {
    if (this.updateSuspended) {
      return;
    }
    if (paramBoolean) {
      this.menuView.buildMenuView();
    } else {
      this.menuView.updateMenuView();
    }
  }
  
  static class SavedState
    implements Parcelable
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator()
    {
      public BottomNavigationPresenter.SavedState createFromParcel(Parcel paramAnonymousParcel)
      {
        return new BottomNavigationPresenter.SavedState(paramAnonymousParcel);
      }
      
      public BottomNavigationPresenter.SavedState[] newArray(int paramAnonymousInt)
      {
        return new BottomNavigationPresenter.SavedState[paramAnonymousInt];
      }
    };
    ParcelableSparseArray badgeSavedStates;
    int selectedItemId;
    
    SavedState() {}
    
    SavedState(Parcel paramParcel)
    {
      this.selectedItemId = paramParcel.readInt();
      this.badgeSavedStates = ((ParcelableSparseArray)paramParcel.readParcelable(getClass().getClassLoader()));
    }
    
    public int describeContents()
    {
      return 0;
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeInt(this.selectedItemId);
      paramParcel.writeParcelable(this.badgeSavedStates, 0);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.bottomnavigation.BottomNavigationPresenter
 * JD-Core Version:    0.7.0.1
 */
package com.google.android.material.badge;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewOverlay;
import android.widget.FrameLayout;
import com.google.android.material.internal.ParcelableSparseArray;

public class BadgeUtils
{
  public static final boolean USE_COMPAT_PARENT = false;
  
  public static void attachBadgeDrawable(BadgeDrawable paramBadgeDrawable, View paramView, FrameLayout paramFrameLayout)
  {
    setBadgeDrawableBounds(paramBadgeDrawable, paramView, paramFrameLayout);
    if (USE_COMPAT_PARENT) {
      paramFrameLayout.setForeground(paramBadgeDrawable);
    } else {
      paramView.getOverlay().add(paramBadgeDrawable);
    }
  }
  
  public static SparseArray<BadgeDrawable> createBadgeDrawablesFromSavedStates(Context paramContext, ParcelableSparseArray paramParcelableSparseArray)
  {
    SparseArray localSparseArray = new SparseArray(paramParcelableSparseArray.size());
    int i = 0;
    while (i < paramParcelableSparseArray.size())
    {
      int j = paramParcelableSparseArray.keyAt(i);
      BadgeDrawable.SavedState localSavedState = (BadgeDrawable.SavedState)paramParcelableSparseArray.valueAt(i);
      if (localSavedState != null)
      {
        localSparseArray.put(j, BadgeDrawable.createFromSavedState(paramContext, localSavedState));
        i++;
      }
      else
      {
        throw new IllegalArgumentException("BadgeDrawable's savedState cannot be null");
      }
    }
    return localSparseArray;
  }
  
  public static ParcelableSparseArray createParcelableBadgeStates(SparseArray<BadgeDrawable> paramSparseArray)
  {
    ParcelableSparseArray localParcelableSparseArray = new ParcelableSparseArray();
    int i = 0;
    while (i < paramSparseArray.size())
    {
      int j = paramSparseArray.keyAt(i);
      BadgeDrawable localBadgeDrawable = (BadgeDrawable)paramSparseArray.valueAt(i);
      if (localBadgeDrawable != null)
      {
        localParcelableSparseArray.put(j, localBadgeDrawable.getSavedState());
        i++;
      }
      else
      {
        throw new IllegalArgumentException("badgeDrawable cannot be null");
      }
    }
    return localParcelableSparseArray;
  }
  
  public static void detachBadgeDrawable(BadgeDrawable paramBadgeDrawable, View paramView, FrameLayout paramFrameLayout)
  {
    if (paramBadgeDrawable == null) {
      return;
    }
    if (USE_COMPAT_PARENT) {
      paramFrameLayout.setForeground(null);
    } else {
      paramView.getOverlay().remove(paramBadgeDrawable);
    }
  }
  
  public static void setBadgeDrawableBounds(BadgeDrawable paramBadgeDrawable, View paramView, FrameLayout paramFrameLayout)
  {
    Rect localRect = new Rect();
    Object localObject;
    if (USE_COMPAT_PARENT) {
      localObject = paramFrameLayout;
    } else {
      localObject = paramView;
    }
    ((View)localObject).getDrawingRect(localRect);
    paramBadgeDrawable.setBounds(localRect);
    paramBadgeDrawable.updateBadgeCoordinates(paramView, paramFrameLayout);
  }
  
  public static void updateBadgeBounds(Rect paramRect, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    paramRect.set((int)(paramFloat1 - paramFloat3), (int)(paramFloat2 - paramFloat4), (int)(paramFloat1 + paramFloat3), (int)(paramFloat2 + paramFloat4));
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.badge.BadgeUtils
 * JD-Core Version:    0.7.0.1
 */
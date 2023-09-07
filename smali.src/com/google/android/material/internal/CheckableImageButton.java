package com.google.android.material.internal;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityRecord;
import android.widget.Checkable;
import androidx.appcompat.widget.l;
import androidx.core.view.a0;
import androidx.core.view.accessibility.g;
import androidx.customview.view.AbsSavedState;

public class CheckableImageButton
  extends l
  implements Checkable
{
  private static final int[] DRAWABLE_STATE_CHECKED = { 16842912 };
  private boolean checkable = true;
  private boolean checked;
  private boolean pressable = true;
  
  public CheckableImageButton(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public CheckableImageButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, d.a.D);
  }
  
  public CheckableImageButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a0.l0(this, new androidx.core.view.a()
    {
      public void onInitializeAccessibilityEvent(View paramAnonymousView, AccessibilityEvent paramAnonymousAccessibilityEvent)
      {
        super.onInitializeAccessibilityEvent(paramAnonymousView, paramAnonymousAccessibilityEvent);
        paramAnonymousAccessibilityEvent.setChecked(CheckableImageButton.this.isChecked());
      }
      
      public void onInitializeAccessibilityNodeInfo(View paramAnonymousView, g paramAnonymousg)
      {
        super.onInitializeAccessibilityNodeInfo(paramAnonymousView, paramAnonymousg);
        paramAnonymousg.P(CheckableImageButton.this.isCheckable());
        paramAnonymousg.Q(CheckableImageButton.this.isChecked());
      }
    });
  }
  
  public boolean isCheckable()
  {
    return this.checkable;
  }
  
  public boolean isChecked()
  {
    return this.checked;
  }
  
  public boolean isPressable()
  {
    return this.pressable;
  }
  
  public int[] onCreateDrawableState(int paramInt)
  {
    if (this.checked)
    {
      int[] arrayOfInt = DRAWABLE_STATE_CHECKED;
      return View.mergeDrawableStates(super.onCreateDrawableState(paramInt + arrayOfInt.length), arrayOfInt);
    }
    return super.onCreateDrawableState(paramInt);
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof SavedState))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    paramParcelable = (SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    setChecked(paramParcelable.checked);
  }
  
  protected Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState(super.onSaveInstanceState());
    localSavedState.checked = this.checked;
    return localSavedState;
  }
  
  public void setCheckable(boolean paramBoolean)
  {
    if (this.checkable != paramBoolean)
    {
      this.checkable = paramBoolean;
      sendAccessibilityEvent(0);
    }
  }
  
  public void setChecked(boolean paramBoolean)
  {
    if ((this.checkable) && (this.checked != paramBoolean))
    {
      this.checked = paramBoolean;
      refreshDrawableState();
      sendAccessibilityEvent(2048);
    }
  }
  
  public void setPressable(boolean paramBoolean)
  {
    this.pressable = paramBoolean;
  }
  
  public void setPressed(boolean paramBoolean)
  {
    if (this.pressable) {
      super.setPressed(paramBoolean);
    }
  }
  
  public void toggle()
  {
    setChecked(this.checked ^ true);
  }
  
  static class SavedState
    extends AbsSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator()
    {
      public CheckableImageButton.SavedState createFromParcel(Parcel paramAnonymousParcel)
      {
        return new CheckableImageButton.SavedState(paramAnonymousParcel, null);
      }
      
      public CheckableImageButton.SavedState createFromParcel(Parcel paramAnonymousParcel, ClassLoader paramAnonymousClassLoader)
      {
        return new CheckableImageButton.SavedState(paramAnonymousParcel, paramAnonymousClassLoader);
      }
      
      public CheckableImageButton.SavedState[] newArray(int paramAnonymousInt)
      {
        return new CheckableImageButton.SavedState[paramAnonymousInt];
      }
    };
    boolean checked;
    
    public SavedState(Parcel paramParcel, ClassLoader paramClassLoader)
    {
      super(paramClassLoader);
      readFromParcel(paramParcel);
    }
    
    public SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    private void readFromParcel(Parcel paramParcel)
    {
      int i = paramParcel.readInt();
      boolean bool = true;
      if (i != 1) {
        bool = false;
      }
      this.checked = bool;
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeInt(this.checked);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.internal.CheckableImageButton
 * JD-Core Version:    0.7.0.1
 */
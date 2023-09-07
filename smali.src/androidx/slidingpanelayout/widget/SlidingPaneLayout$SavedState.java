package androidx.slidingpanelayout.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;
import androidx.customview.view.AbsSavedState;

class SlidingPaneLayout$SavedState
  extends AbsSavedState
{
  public static final Parcelable.Creator<SavedState> CREATOR = new a();
  boolean isOpen;
  
  SlidingPaneLayout$SavedState(Parcel paramParcel, ClassLoader paramClassLoader)
  {
    super(paramParcel, paramClassLoader);
    boolean bool;
    if (paramParcel.readInt() != 0) {
      bool = true;
    } else {
      bool = false;
    }
    this.isOpen = bool;
  }
  
  SlidingPaneLayout$SavedState(Parcelable paramParcelable)
  {
    super(paramParcelable);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeInt(this.isOpen);
  }
  
  static final class a
    implements Parcelable.ClassLoaderCreator<SlidingPaneLayout.SavedState>
  {
    public SlidingPaneLayout.SavedState a(Parcel paramParcel)
    {
      return new SlidingPaneLayout.SavedState(paramParcel, null);
    }
    
    public SlidingPaneLayout.SavedState b(Parcel paramParcel, ClassLoader paramClassLoader)
    {
      return new SlidingPaneLayout.SavedState(paramParcel, null);
    }
    
    public SlidingPaneLayout.SavedState[] c(int paramInt)
    {
      return new SlidingPaneLayout.SavedState[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.slidingpanelayout.widget.SlidingPaneLayout.SavedState
 * JD-Core Version:    0.7.0.1
 */
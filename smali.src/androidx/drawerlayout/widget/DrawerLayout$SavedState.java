package androidx.drawerlayout.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;
import androidx.customview.view.AbsSavedState;

public class DrawerLayout$SavedState
  extends AbsSavedState
{
  public static final Parcelable.Creator<SavedState> CREATOR = new a();
  int lockModeEnd;
  int lockModeLeft;
  int lockModeRight;
  int lockModeStart;
  int openDrawerGravity = 0;
  
  public DrawerLayout$SavedState(Parcel paramParcel, ClassLoader paramClassLoader)
  {
    super(paramParcel, paramClassLoader);
    this.openDrawerGravity = paramParcel.readInt();
    this.lockModeLeft = paramParcel.readInt();
    this.lockModeRight = paramParcel.readInt();
    this.lockModeStart = paramParcel.readInt();
    this.lockModeEnd = paramParcel.readInt();
  }
  
  public DrawerLayout$SavedState(Parcelable paramParcelable)
  {
    super(paramParcelable);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeInt(this.openDrawerGravity);
    paramParcel.writeInt(this.lockModeLeft);
    paramParcel.writeInt(this.lockModeRight);
    paramParcel.writeInt(this.lockModeStart);
    paramParcel.writeInt(this.lockModeEnd);
  }
  
  static final class a
    implements Parcelable.ClassLoaderCreator<DrawerLayout.SavedState>
  {
    public DrawerLayout.SavedState a(Parcel paramParcel)
    {
      return new DrawerLayout.SavedState(paramParcel, null);
    }
    
    public DrawerLayout.SavedState b(Parcel paramParcel, ClassLoader paramClassLoader)
    {
      return new DrawerLayout.SavedState(paramParcel, paramClassLoader);
    }
    
    public DrawerLayout.SavedState[] c(int paramInt)
    {
      return new DrawerLayout.SavedState[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.drawerlayout.widget.DrawerLayout.SavedState
 * JD-Core Version:    0.7.0.1
 */
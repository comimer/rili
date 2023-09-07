package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View.BaseSavedState;

class FragmentTabHost$SavedState
  extends View.BaseSavedState
{
  public static final Parcelable.Creator<SavedState> CREATOR = new a();
  String curTab;
  
  FragmentTabHost$SavedState(Parcel paramParcel)
  {
    super(paramParcel);
    this.curTab = paramParcel.readString();
  }
  
  FragmentTabHost$SavedState(Parcelable paramParcelable)
  {
    super(paramParcelable);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("FragmentTabHost.SavedState{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" curTab=");
    localStringBuilder.append(this.curTab);
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(this.curTab);
  }
  
  class a
    implements Parcelable.Creator<FragmentTabHost.SavedState>
  {
    public FragmentTabHost.SavedState a(Parcel paramParcel)
    {
      return new FragmentTabHost.SavedState(paramParcel);
    }
    
    public FragmentTabHost.SavedState[] b(int paramInt)
    {
      return new FragmentTabHost.SavedState[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.fragment.app.FragmentTabHost.SavedState
 * JD-Core Version:    0.7.0.1
 */
package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;

@SuppressLint({"BanParcelableUsage"})
final class FragmentManagerState
  implements Parcelable
{
  public static final Parcelable.Creator<FragmentManagerState> CREATOR = new a();
  ArrayList<FragmentState> mActive;
  ArrayList<String> mAdded;
  BackStackState[] mBackStack;
  int mBackStackIndex;
  ArrayList<FragmentManager.LaunchedFragmentInfo> mLaunchedFragments;
  String mPrimaryNavActiveWho = null;
  ArrayList<String> mResultKeys = new ArrayList();
  ArrayList<Bundle> mResults = new ArrayList();
  
  public FragmentManagerState() {}
  
  public FragmentManagerState(Parcel paramParcel)
  {
    this.mActive = paramParcel.createTypedArrayList(FragmentState.CREATOR);
    this.mAdded = paramParcel.createStringArrayList();
    this.mBackStack = ((BackStackState[])paramParcel.createTypedArray(BackStackState.CREATOR));
    this.mBackStackIndex = paramParcel.readInt();
    this.mPrimaryNavActiveWho = paramParcel.readString();
    this.mResultKeys = paramParcel.createStringArrayList();
    this.mResults = paramParcel.createTypedArrayList(Bundle.CREATOR);
    this.mLaunchedFragments = paramParcel.createTypedArrayList(FragmentManager.LaunchedFragmentInfo.CREATOR);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeTypedList(this.mActive);
    paramParcel.writeStringList(this.mAdded);
    paramParcel.writeTypedArray(this.mBackStack, paramInt);
    paramParcel.writeInt(this.mBackStackIndex);
    paramParcel.writeString(this.mPrimaryNavActiveWho);
    paramParcel.writeStringList(this.mResultKeys);
    paramParcel.writeTypedList(this.mResults);
    paramParcel.writeTypedList(this.mLaunchedFragments);
  }
  
  class a
    implements Parcelable.Creator<FragmentManagerState>
  {
    public FragmentManagerState a(Parcel paramParcel)
    {
      return new FragmentManagerState(paramParcel);
    }
    
    public FragmentManagerState[] b(int paramInt)
    {
      return new FragmentManagerState[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.fragment.app.FragmentManagerState
 * JD-Core Version:    0.7.0.1
 */
package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;

@SuppressLint({"BanParcelableUsage"})
final class BackStackState
  implements Parcelable
{
  public static final Parcelable.Creator<BackStackState> CREATOR = new a();
  private static final String TAG = "FragmentManager";
  final int mBreadCrumbShortTitleRes;
  final CharSequence mBreadCrumbShortTitleText;
  final int mBreadCrumbTitleRes;
  final CharSequence mBreadCrumbTitleText;
  final int[] mCurrentMaxLifecycleStates;
  final ArrayList<String> mFragmentWhos;
  final int mIndex;
  final String mName;
  final int[] mOldMaxLifecycleStates;
  final int[] mOps;
  final boolean mReorderingAllowed;
  final ArrayList<String> mSharedElementSourceNames;
  final ArrayList<String> mSharedElementTargetNames;
  final int mTransition;
  
  public BackStackState(Parcel paramParcel)
  {
    this.mOps = paramParcel.createIntArray();
    this.mFragmentWhos = paramParcel.createStringArrayList();
    this.mOldMaxLifecycleStates = paramParcel.createIntArray();
    this.mCurrentMaxLifecycleStates = paramParcel.createIntArray();
    this.mTransition = paramParcel.readInt();
    this.mName = paramParcel.readString();
    this.mIndex = paramParcel.readInt();
    this.mBreadCrumbTitleRes = paramParcel.readInt();
    this.mBreadCrumbTitleText = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    this.mBreadCrumbShortTitleRes = paramParcel.readInt();
    this.mBreadCrumbShortTitleText = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    this.mSharedElementSourceNames = paramParcel.createStringArrayList();
    this.mSharedElementTargetNames = paramParcel.createStringArrayList();
    boolean bool;
    if (paramParcel.readInt() != 0) {
      bool = true;
    } else {
      bool = false;
    }
    this.mReorderingAllowed = bool;
  }
  
  public BackStackState(a parama)
  {
    int i = parama.c.size();
    this.mOps = new int[i * 5];
    if (parama.i)
    {
      this.mFragmentWhos = new ArrayList(i);
      this.mOldMaxLifecycleStates = new int[i];
      this.mCurrentMaxLifecycleStates = new int[i];
      int j = 0;
      int n;
      for (int k = 0; j < i; k = n + 1)
      {
        s.a locala = (s.a)parama.c.get(j);
        Object localObject = this.mOps;
        int m = k + 1;
        localObject[k] = locala.a;
        ArrayList localArrayList = this.mFragmentWhos;
        localObject = locala.b;
        if (localObject != null) {
          localObject = ((Fragment)localObject).mWho;
        } else {
          localObject = null;
        }
        localArrayList.add(localObject);
        localObject = this.mOps;
        n = m + 1;
        localObject[m] = locala.c;
        k = n + 1;
        localObject[n] = locala.d;
        n = k + 1;
        localObject[k] = locala.e;
        localObject[n] = locala.f;
        this.mOldMaxLifecycleStates[j] = locala.g.ordinal();
        this.mCurrentMaxLifecycleStates[j] = locala.h.ordinal();
        j++;
      }
      this.mTransition = parama.h;
      this.mName = parama.k;
      this.mIndex = parama.v;
      this.mBreadCrumbTitleRes = parama.l;
      this.mBreadCrumbTitleText = parama.m;
      this.mBreadCrumbShortTitleRes = parama.n;
      this.mBreadCrumbShortTitleText = parama.o;
      this.mSharedElementSourceNames = parama.p;
      this.mSharedElementTargetNames = parama.q;
      this.mReorderingAllowed = parama.r;
      return;
    }
    throw new IllegalStateException("Not on back stack");
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public a instantiate(FragmentManager paramFragmentManager)
  {
    a locala = new a(paramFragmentManager);
    int i = 0;
    int j = 0;
    while (i < this.mOps.length)
    {
      s.a locala1 = new s.a();
      Object localObject = this.mOps;
      int k = i + 1;
      locala1.a = localObject[i];
      if (FragmentManager.H0(2))
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("Instantiate ");
        ((StringBuilder)localObject).append(locala);
        ((StringBuilder)localObject).append(" op #");
        ((StringBuilder)localObject).append(j);
        ((StringBuilder)localObject).append(" base fragment #");
        ((StringBuilder)localObject).append(this.mOps[k]);
        Log.v("FragmentManager", ((StringBuilder)localObject).toString());
      }
      localObject = (String)this.mFragmentWhos.get(j);
      if (localObject != null) {
        locala1.b = paramFragmentManager.g0((String)localObject);
      } else {
        locala1.b = null;
      }
      locala1.g = androidx.lifecycle.Lifecycle.State.values()[this.mOldMaxLifecycleStates[j]];
      locala1.h = androidx.lifecycle.Lifecycle.State.values()[this.mCurrentMaxLifecycleStates[j]];
      localObject = this.mOps;
      int m = k + 1;
      i = localObject[k];
      locala1.c = i;
      int n = m + 1;
      k = localObject[m];
      locala1.d = k;
      m = n + 1;
      n = localObject[n];
      locala1.e = n;
      int i1 = localObject[m];
      locala1.f = i1;
      locala.d = i;
      locala.e = k;
      locala.f = n;
      locala.g = i1;
      locala.f(locala1);
      j++;
      i = m + 1;
    }
    locala.h = this.mTransition;
    locala.k = this.mName;
    locala.v = this.mIndex;
    locala.i = true;
    locala.l = this.mBreadCrumbTitleRes;
    locala.m = this.mBreadCrumbTitleText;
    locala.n = this.mBreadCrumbShortTitleRes;
    locala.o = this.mBreadCrumbShortTitleText;
    locala.p = this.mSharedElementSourceNames;
    locala.q = this.mSharedElementTargetNames;
    locala.r = this.mReorderingAllowed;
    locala.v(1);
    return locala;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeIntArray(this.mOps);
    paramParcel.writeStringList(this.mFragmentWhos);
    paramParcel.writeIntArray(this.mOldMaxLifecycleStates);
    paramParcel.writeIntArray(this.mCurrentMaxLifecycleStates);
    paramParcel.writeInt(this.mTransition);
    paramParcel.writeString(this.mName);
    paramParcel.writeInt(this.mIndex);
    paramParcel.writeInt(this.mBreadCrumbTitleRes);
    TextUtils.writeToParcel(this.mBreadCrumbTitleText, paramParcel, 0);
    paramParcel.writeInt(this.mBreadCrumbShortTitleRes);
    TextUtils.writeToParcel(this.mBreadCrumbShortTitleText, paramParcel, 0);
    paramParcel.writeStringList(this.mSharedElementSourceNames);
    paramParcel.writeStringList(this.mSharedElementTargetNames);
    paramParcel.writeInt(this.mReorderingAllowed);
  }
  
  class a
    implements Parcelable.Creator<BackStackState>
  {
    public BackStackState a(Parcel paramParcel)
    {
      return new BackStackState(paramParcel);
    }
    
    public BackStackState[] b(int paramInt)
    {
      return new BackStackState[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.fragment.app.BackStackState
 * JD-Core Version:    0.7.0.1
 */
package com.google.android.material.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;
import android.util.SparseArray;

public class ParcelableSparseArray
  extends SparseArray<Parcelable>
  implements Parcelable
{
  public static final Parcelable.Creator<ParcelableSparseArray> CREATOR = new Parcelable.ClassLoaderCreator()
  {
    public ParcelableSparseArray createFromParcel(Parcel paramAnonymousParcel)
    {
      return new ParcelableSparseArray(paramAnonymousParcel, null);
    }
    
    public ParcelableSparseArray createFromParcel(Parcel paramAnonymousParcel, ClassLoader paramAnonymousClassLoader)
    {
      return new ParcelableSparseArray(paramAnonymousParcel, paramAnonymousClassLoader);
    }
    
    public ParcelableSparseArray[] newArray(int paramAnonymousInt)
    {
      return new ParcelableSparseArray[paramAnonymousInt];
    }
  };
  
  public ParcelableSparseArray() {}
  
  public ParcelableSparseArray(Parcel paramParcel, ClassLoader paramClassLoader)
  {
    int i = paramParcel.readInt();
    int[] arrayOfInt = new int[i];
    paramParcel.readIntArray(arrayOfInt);
    paramParcel = paramParcel.readParcelableArray(paramClassLoader);
    for (int j = 0; j < i; j++) {
      put(arrayOfInt[j], paramParcel[j]);
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = size();
    int[] arrayOfInt = new int[i];
    Parcelable[] arrayOfParcelable = new Parcelable[i];
    for (int j = 0; j < i; j++)
    {
      arrayOfInt[j] = keyAt(j);
      arrayOfParcelable[j] = ((Parcelable)valueAt(j));
    }
    paramParcel.writeInt(i);
    paramParcel.writeIntArray(arrayOfInt);
    paramParcel.writeParcelableArray(arrayOfParcelable, paramInt);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.internal.ParcelableSparseArray
 * JD-Core Version:    0.7.0.1
 */
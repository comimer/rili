package com.google.android.material.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.SparseIntArray;

public class ParcelableSparseIntArray
  extends SparseIntArray
  implements Parcelable
{
  public static final Parcelable.Creator<ParcelableSparseIntArray> CREATOR = new Parcelable.Creator()
  {
    public ParcelableSparseIntArray createFromParcel(Parcel paramAnonymousParcel)
    {
      int i = paramAnonymousParcel.readInt();
      ParcelableSparseIntArray localParcelableSparseIntArray = new ParcelableSparseIntArray(i);
      int[] arrayOfInt1 = new int[i];
      int[] arrayOfInt2 = new int[i];
      paramAnonymousParcel.readIntArray(arrayOfInt1);
      paramAnonymousParcel.readIntArray(arrayOfInt2);
      for (int j = 0; j < i; j++) {
        localParcelableSparseIntArray.put(arrayOfInt1[j], arrayOfInt2[j]);
      }
      return localParcelableSparseIntArray;
    }
    
    public ParcelableSparseIntArray[] newArray(int paramAnonymousInt)
    {
      return new ParcelableSparseIntArray[paramAnonymousInt];
    }
  };
  
  public ParcelableSparseIntArray() {}
  
  public ParcelableSparseIntArray(int paramInt)
  {
    super(paramInt);
  }
  
  public ParcelableSparseIntArray(SparseIntArray paramSparseIntArray)
  {
    for (int i = 0; i < paramSparseIntArray.size(); i++) {
      put(paramSparseIntArray.keyAt(i), paramSparseIntArray.valueAt(i));
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int[] arrayOfInt1 = new int[size()];
    int[] arrayOfInt2 = new int[size()];
    for (paramInt = 0; paramInt < size(); paramInt++)
    {
      arrayOfInt1[paramInt] = keyAt(paramInt);
      arrayOfInt2[paramInt] = valueAt(paramInt);
    }
    paramParcel.writeInt(size());
    paramParcel.writeIntArray(arrayOfInt1);
    paramParcel.writeIntArray(arrayOfInt2);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.internal.ParcelableSparseIntArray
 * JD-Core Version:    0.7.0.1
 */
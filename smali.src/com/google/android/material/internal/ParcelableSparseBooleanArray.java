package com.google.android.material.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.SparseBooleanArray;

public class ParcelableSparseBooleanArray
  extends SparseBooleanArray
  implements Parcelable
{
  public static final Parcelable.Creator<ParcelableSparseBooleanArray> CREATOR = new Parcelable.Creator()
  {
    public ParcelableSparseBooleanArray createFromParcel(Parcel paramAnonymousParcel)
    {
      int i = paramAnonymousParcel.readInt();
      ParcelableSparseBooleanArray localParcelableSparseBooleanArray = new ParcelableSparseBooleanArray(i);
      int[] arrayOfInt = new int[i];
      boolean[] arrayOfBoolean = new boolean[i];
      paramAnonymousParcel.readIntArray(arrayOfInt);
      paramAnonymousParcel.readBooleanArray(arrayOfBoolean);
      for (int j = 0; j < i; j++) {
        localParcelableSparseBooleanArray.put(arrayOfInt[j], arrayOfBoolean[j]);
      }
      return localParcelableSparseBooleanArray;
    }
    
    public ParcelableSparseBooleanArray[] newArray(int paramAnonymousInt)
    {
      return new ParcelableSparseBooleanArray[paramAnonymousInt];
    }
  };
  
  public ParcelableSparseBooleanArray() {}
  
  public ParcelableSparseBooleanArray(int paramInt)
  {
    super(paramInt);
  }
  
  public ParcelableSparseBooleanArray(SparseBooleanArray paramSparseBooleanArray)
  {
    super(paramSparseBooleanArray.size());
    for (int i = 0; i < paramSparseBooleanArray.size(); i++) {
      put(paramSparseBooleanArray.keyAt(i), paramSparseBooleanArray.valueAt(i));
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int[] arrayOfInt = new int[size()];
    boolean[] arrayOfBoolean = new boolean[size()];
    for (paramInt = 0; paramInt < size(); paramInt++)
    {
      arrayOfInt[paramInt] = keyAt(paramInt);
      arrayOfBoolean[paramInt] = valueAt(paramInt);
    }
    paramParcel.writeInt(size());
    paramParcel.writeIntArray(arrayOfInt);
    paramParcel.writeBooleanArray(arrayOfBoolean);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.internal.ParcelableSparseBooleanArray
 * JD-Core Version:    0.7.0.1
 */
package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.io.Serializable;

public class ObservableLong
  extends b
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator<ObservableLong> CREATOR = new a();
  static final long serialVersionUID = 1L;
  private long mValue;
  
  public ObservableLong() {}
  
  public ObservableLong(long paramLong)
  {
    this.mValue = paramLong;
  }
  
  public ObservableLong(j... paramVarArgs)
  {
    super(paramVarArgs);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public long get()
  {
    return this.mValue;
  }
  
  public void set(long paramLong)
  {
    if (paramLong != this.mValue)
    {
      this.mValue = paramLong;
      notifyChange();
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(this.mValue);
  }
  
  class a
    implements Parcelable.Creator<ObservableLong>
  {
    public ObservableLong a(Parcel paramParcel)
    {
      return new ObservableLong(paramParcel.readLong());
    }
    
    public ObservableLong[] b(int paramInt)
    {
      return new ObservableLong[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.databinding.ObservableLong
 * JD-Core Version:    0.7.0.1
 */
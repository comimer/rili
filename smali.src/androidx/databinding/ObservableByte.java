package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.io.Serializable;

public class ObservableByte
  extends b
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator<ObservableByte> CREATOR = new a();
  static final long serialVersionUID = 1L;
  private byte mValue;
  
  public ObservableByte() {}
  
  public ObservableByte(byte paramByte)
  {
    this.mValue = ((byte)paramByte);
  }
  
  public ObservableByte(j... paramVarArgs)
  {
    super(paramVarArgs);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public byte get()
  {
    return this.mValue;
  }
  
  public void set(byte paramByte)
  {
    if (paramByte != this.mValue)
    {
      this.mValue = ((byte)paramByte);
      notifyChange();
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeByte(this.mValue);
  }
  
  class a
    implements Parcelable.Creator<ObservableByte>
  {
    public ObservableByte a(Parcel paramParcel)
    {
      return new ObservableByte(paramParcel.readByte());
    }
    
    public ObservableByte[] b(int paramInt)
    {
      return new ObservableByte[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.databinding.ObservableByte
 * JD-Core Version:    0.7.0.1
 */
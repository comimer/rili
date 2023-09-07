package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.io.Serializable;

public class ObservableShort
  extends b
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator<ObservableShort> CREATOR = new a();
  static final long serialVersionUID = 1L;
  private short mValue;
  
  public ObservableShort() {}
  
  public ObservableShort(short paramShort)
  {
    this.mValue = ((short)paramShort);
  }
  
  public ObservableShort(j... paramVarArgs)
  {
    super(paramVarArgs);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public short get()
  {
    return this.mValue;
  }
  
  public void set(short paramShort)
  {
    if (paramShort != this.mValue)
    {
      this.mValue = ((short)paramShort);
      notifyChange();
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.mValue);
  }
  
  class a
    implements Parcelable.Creator<ObservableShort>
  {
    public ObservableShort a(Parcel paramParcel)
    {
      return new ObservableShort((short)paramParcel.readInt());
    }
    
    public ObservableShort[] b(int paramInt)
    {
      return new ObservableShort[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.databinding.ObservableShort
 * JD-Core Version:    0.7.0.1
 */
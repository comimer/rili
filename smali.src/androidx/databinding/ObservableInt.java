package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.io.Serializable;

public class ObservableInt
  extends b
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator<ObservableInt> CREATOR = new a();
  static final long serialVersionUID = 1L;
  private int mValue;
  
  public ObservableInt() {}
  
  public ObservableInt(int paramInt)
  {
    this.mValue = paramInt;
  }
  
  public ObservableInt(j... paramVarArgs)
  {
    super(paramVarArgs);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int get()
  {
    return this.mValue;
  }
  
  public void set(int paramInt)
  {
    if (paramInt != this.mValue)
    {
      this.mValue = paramInt;
      notifyChange();
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.mValue);
  }
  
  class a
    implements Parcelable.Creator<ObservableInt>
  {
    public ObservableInt a(Parcel paramParcel)
    {
      return new ObservableInt(paramParcel.readInt());
    }
    
    public ObservableInt[] b(int paramInt)
    {
      return new ObservableInt[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.databinding.ObservableInt
 * JD-Core Version:    0.7.0.1
 */
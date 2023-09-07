package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.io.Serializable;

public class ObservableDouble
  extends b
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator<ObservableDouble> CREATOR = new a();
  static final long serialVersionUID = 1L;
  private double mValue;
  
  public ObservableDouble() {}
  
  public ObservableDouble(double paramDouble)
  {
    this.mValue = paramDouble;
  }
  
  public ObservableDouble(j... paramVarArgs)
  {
    super(paramVarArgs);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public double get()
  {
    return this.mValue;
  }
  
  public void set(double paramDouble)
  {
    if (paramDouble != this.mValue)
    {
      this.mValue = paramDouble;
      notifyChange();
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeDouble(this.mValue);
  }
  
  class a
    implements Parcelable.Creator<ObservableDouble>
  {
    public ObservableDouble a(Parcel paramParcel)
    {
      return new ObservableDouble(paramParcel.readDouble());
    }
    
    public ObservableDouble[] b(int paramInt)
    {
      return new ObservableDouble[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.databinding.ObservableDouble
 * JD-Core Version:    0.7.0.1
 */
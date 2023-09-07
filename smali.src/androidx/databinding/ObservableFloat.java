package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.io.Serializable;

public class ObservableFloat
  extends b
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator<ObservableFloat> CREATOR = new a();
  static final long serialVersionUID = 1L;
  private float mValue;
  
  public ObservableFloat() {}
  
  public ObservableFloat(float paramFloat)
  {
    this.mValue = paramFloat;
  }
  
  public ObservableFloat(j... paramVarArgs)
  {
    super(paramVarArgs);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public float get()
  {
    return this.mValue;
  }
  
  public void set(float paramFloat)
  {
    if (paramFloat != this.mValue)
    {
      this.mValue = paramFloat;
      notifyChange();
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeFloat(this.mValue);
  }
  
  class a
    implements Parcelable.Creator<ObservableFloat>
  {
    public ObservableFloat a(Parcel paramParcel)
    {
      return new ObservableFloat(paramParcel.readFloat());
    }
    
    public ObservableFloat[] b(int paramInt)
    {
      return new ObservableFloat[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.databinding.ObservableFloat
 * JD-Core Version:    0.7.0.1
 */
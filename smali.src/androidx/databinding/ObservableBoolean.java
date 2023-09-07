package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.io.Serializable;

public class ObservableBoolean
  extends b
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator<ObservableBoolean> CREATOR = new a();
  static final long serialVersionUID = 1L;
  private boolean mValue;
  
  public ObservableBoolean() {}
  
  public ObservableBoolean(boolean paramBoolean)
  {
    this.mValue = paramBoolean;
  }
  
  public ObservableBoolean(j... paramVarArgs)
  {
    super(paramVarArgs);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean get()
  {
    return this.mValue;
  }
  
  public void set(boolean paramBoolean)
  {
    if (paramBoolean != this.mValue)
    {
      this.mValue = paramBoolean;
      notifyChange();
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.mValue);
  }
  
  class a
    implements Parcelable.Creator<ObservableBoolean>
  {
    public ObservableBoolean a(Parcel paramParcel)
    {
      int i = paramParcel.readInt();
      boolean bool = true;
      if (i != 1) {
        bool = false;
      }
      return new ObservableBoolean(bool);
    }
    
    public ObservableBoolean[] b(int paramInt)
    {
      return new ObservableBoolean[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.databinding.ObservableBoolean
 * JD-Core Version:    0.7.0.1
 */
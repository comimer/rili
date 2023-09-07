package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class ObservableParcelable<T extends Parcelable>
  extends ObservableField<T>
  implements Parcelable
{
  public static final Parcelable.Creator<ObservableParcelable> CREATOR = new a();
  static final long serialVersionUID = 1L;
  
  public ObservableParcelable() {}
  
  public ObservableParcelable(T paramT)
  {
    super(paramT);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable((Parcelable)get(), 0);
  }
  
  class a
    implements Parcelable.Creator<ObservableParcelable>
  {
    public ObservableParcelable a(Parcel paramParcel)
    {
      return new ObservableParcelable(paramParcel.readParcelable(getClass().getClassLoader()));
    }
    
    public ObservableParcelable[] b(int paramInt)
    {
      return new ObservableParcelable[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.databinding.ObservableParcelable
 * JD-Core Version:    0.7.0.1
 */
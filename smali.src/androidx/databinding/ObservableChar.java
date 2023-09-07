package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.io.Serializable;

public class ObservableChar
  extends b
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator<ObservableChar> CREATOR = new a();
  static final long serialVersionUID = 1L;
  private char mValue;
  
  public ObservableChar() {}
  
  public ObservableChar(char paramChar)
  {
    this.mValue = ((char)paramChar);
  }
  
  public ObservableChar(j... paramVarArgs)
  {
    super(paramVarArgs);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public char get()
  {
    return this.mValue;
  }
  
  public void set(char paramChar)
  {
    if (paramChar != this.mValue)
    {
      this.mValue = ((char)paramChar);
      notifyChange();
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.mValue);
  }
  
  class a
    implements Parcelable.Creator<ObservableChar>
  {
    public ObservableChar a(Parcel paramParcel)
    {
      return new ObservableChar((char)paramParcel.readInt());
    }
    
    public ObservableChar[] b(int paramInt)
    {
      return new ObservableChar[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.databinding.ObservableChar
 * JD-Core Version:    0.7.0.1
 */
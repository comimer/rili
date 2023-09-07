package androidx.versionedparcelable;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

@SuppressLint({"BanParcelableUsage"})
public class ParcelImpl
  implements Parcelable
{
  public static final Parcelable.Creator<ParcelImpl> CREATOR = new a();
  private final b mParcel;
  
  protected ParcelImpl(Parcel paramParcel)
  {
    this.mParcel = new a(paramParcel).u();
  }
  
  public ParcelImpl(b paramb)
  {
    this.mParcel = paramb;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public <T extends b> T getVersionedParcel()
  {
    return this.mParcel;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    new a(paramParcel).L(this.mParcel);
  }
  
  static final class a
    implements Parcelable.Creator<ParcelImpl>
  {
    public ParcelImpl a(Parcel paramParcel)
    {
      return new ParcelImpl(paramParcel);
    }
    
    public ParcelImpl[] b(int paramInt)
    {
      return new ParcelImpl[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.versionedparcelable.ParcelImpl
 * JD-Core Version:    0.7.0.1
 */
package androidx.versionedparcelable;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.util.SparseIntArray;
import java.lang.reflect.Method;

class a
  extends VersionedParcel
{
  private final SparseIntArray d = new SparseIntArray();
  private final Parcel e;
  private final int f;
  private final int g;
  private final String h;
  private int i = -1;
  private int j;
  private int k = -1;
  
  a(Parcel paramParcel)
  {
    this(paramParcel, paramParcel.dataPosition(), paramParcel.dataSize(), "", new n.a(), new n.a(), new n.a());
  }
  
  private a(Parcel paramParcel, int paramInt1, int paramInt2, String paramString, n.a<String, Method> parama1, n.a<String, Method> parama2, n.a<String, Class> parama)
  {
    super(parama1, parama2, parama);
    this.e = paramParcel;
    this.f = paramInt1;
    this.g = paramInt2;
    this.j = paramInt1;
    this.h = paramString;
  }
  
  public void A(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte != null)
    {
      this.e.writeInt(paramArrayOfByte.length);
      this.e.writeByteArray(paramArrayOfByte);
    }
    else
    {
      this.e.writeInt(-1);
    }
  }
  
  protected void C(CharSequence paramCharSequence)
  {
    TextUtils.writeToParcel(paramCharSequence, this.e, 0);
  }
  
  public void E(int paramInt)
  {
    this.e.writeInt(paramInt);
  }
  
  public void G(Parcelable paramParcelable)
  {
    this.e.writeParcelable(paramParcelable, 0);
  }
  
  public void I(String paramString)
  {
    this.e.writeString(paramString);
  }
  
  public void a()
  {
    int m = this.i;
    if (m >= 0)
    {
      int n = this.d.get(m);
      m = this.e.dataPosition();
      this.e.setDataPosition(n);
      this.e.writeInt(m - n);
      this.e.setDataPosition(m);
    }
  }
  
  protected VersionedParcel b()
  {
    Parcel localParcel = this.e;
    int m = localParcel.dataPosition();
    int n = this.j;
    int i1 = n;
    if (n == this.f) {
      i1 = this.g;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.h);
    localStringBuilder.append("  ");
    return new a(localParcel, m, i1, localStringBuilder.toString(), this.a, this.b, this.c);
  }
  
  public boolean g()
  {
    boolean bool;
    if (this.e.readInt() != 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public byte[] i()
  {
    int m = this.e.readInt();
    if (m < 0) {
      return null;
    }
    byte[] arrayOfByte = new byte[m];
    this.e.readByteArray(arrayOfByte);
    return arrayOfByte;
  }
  
  protected CharSequence k()
  {
    return (CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(this.e);
  }
  
  public boolean m(int paramInt)
  {
    boolean bool;
    for (;;)
    {
      int m = this.j;
      int n = this.g;
      bool = true;
      if (m >= n) {
        break;
      }
      m = this.k;
      if (m == paramInt) {
        return true;
      }
      if (String.valueOf(m).compareTo(String.valueOf(paramInt)) > 0) {
        return false;
      }
      this.e.setDataPosition(this.j);
      m = this.e.readInt();
      this.k = this.e.readInt();
      this.j += m;
    }
    if (this.k != paramInt) {
      bool = false;
    }
    return bool;
  }
  
  public int o()
  {
    return this.e.readInt();
  }
  
  public <T extends Parcelable> T q()
  {
    return this.e.readParcelable(getClass().getClassLoader());
  }
  
  public String s()
  {
    return this.e.readString();
  }
  
  public void w(int paramInt)
  {
    a();
    this.i = paramInt;
    this.d.put(paramInt, this.e.dataPosition());
    E(0);
    E(paramInt);
  }
  
  public void y(boolean paramBoolean)
  {
    this.e.writeInt(paramBoolean);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.versionedparcelable.a
 * JD-Core Version:    0.7.0.1
 */
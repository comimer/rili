package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.os.Parcelable;
import androidx.versionedparcelable.VersionedParcel;

public class IconCompatParcelizer
{
  public static IconCompat read(VersionedParcel paramVersionedParcel)
  {
    IconCompat localIconCompat = new IconCompat();
    localIconCompat.a = paramVersionedParcel.p(localIconCompat.a, 1);
    localIconCompat.c = paramVersionedParcel.j(localIconCompat.c, 2);
    localIconCompat.d = paramVersionedParcel.r(localIconCompat.d, 3);
    localIconCompat.e = paramVersionedParcel.p(localIconCompat.e, 4);
    localIconCompat.f = paramVersionedParcel.p(localIconCompat.f, 5);
    localIconCompat.g = ((ColorStateList)paramVersionedParcel.r(localIconCompat.g, 6));
    localIconCompat.i = paramVersionedParcel.t(localIconCompat.i, 7);
    localIconCompat.j = paramVersionedParcel.t(localIconCompat.j, 8);
    localIconCompat.k();
    return localIconCompat;
  }
  
  public static void write(IconCompat paramIconCompat, VersionedParcel paramVersionedParcel)
  {
    paramVersionedParcel.x(true, true);
    paramIconCompat.l(paramVersionedParcel.f());
    int i = paramIconCompat.a;
    if (-1 != i) {
      paramVersionedParcel.F(i, 1);
    }
    Object localObject = paramIconCompat.c;
    if (localObject != null) {
      paramVersionedParcel.B((byte[])localObject, 2);
    }
    localObject = paramIconCompat.d;
    if (localObject != null) {
      paramVersionedParcel.H((Parcelable)localObject, 3);
    }
    i = paramIconCompat.e;
    if (i != 0) {
      paramVersionedParcel.F(i, 4);
    }
    i = paramIconCompat.f;
    if (i != 0) {
      paramVersionedParcel.F(i, 5);
    }
    localObject = paramIconCompat.g;
    if (localObject != null) {
      paramVersionedParcel.H((Parcelable)localObject, 6);
    }
    localObject = paramIconCompat.i;
    if (localObject != null) {
      paramVersionedParcel.J((String)localObject, 7);
    }
    paramIconCompat = paramIconCompat.j;
    if (paramIconCompat != null) {
      paramVersionedParcel.J(paramIconCompat, 8);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.graphics.drawable.IconCompatParcelizer
 * JD-Core Version:    0.7.0.1
 */
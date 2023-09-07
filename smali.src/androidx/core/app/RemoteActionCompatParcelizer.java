package androidx.core.app;

import android.app.PendingIntent;
import androidx.core.graphics.drawable.IconCompat;
import androidx.versionedparcelable.VersionedParcel;

public class RemoteActionCompatParcelizer
{
  public static RemoteActionCompat read(VersionedParcel paramVersionedParcel)
  {
    RemoteActionCompat localRemoteActionCompat = new RemoteActionCompat();
    localRemoteActionCompat.a = ((IconCompat)paramVersionedParcel.v(localRemoteActionCompat.a, 1));
    localRemoteActionCompat.b = paramVersionedParcel.l(localRemoteActionCompat.b, 2);
    localRemoteActionCompat.c = paramVersionedParcel.l(localRemoteActionCompat.c, 3);
    localRemoteActionCompat.d = ((PendingIntent)paramVersionedParcel.r(localRemoteActionCompat.d, 4));
    localRemoteActionCompat.e = paramVersionedParcel.h(localRemoteActionCompat.e, 5);
    localRemoteActionCompat.f = paramVersionedParcel.h(localRemoteActionCompat.f, 6);
    return localRemoteActionCompat;
  }
  
  public static void write(RemoteActionCompat paramRemoteActionCompat, VersionedParcel paramVersionedParcel)
  {
    paramVersionedParcel.x(false, false);
    paramVersionedParcel.M(paramRemoteActionCompat.a, 1);
    paramVersionedParcel.D(paramRemoteActionCompat.b, 2);
    paramVersionedParcel.D(paramRemoteActionCompat.c, 3);
    paramVersionedParcel.H(paramRemoteActionCompat.d, 4);
    paramVersionedParcel.z(paramRemoteActionCompat.e, 5);
    paramVersionedParcel.z(paramRemoteActionCompat.f, 6);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.app.RemoteActionCompatParcelizer
 * JD-Core Version:    0.7.0.1
 */
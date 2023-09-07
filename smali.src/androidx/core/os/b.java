package androidx.core.os;

import android.os.Bundle;
import android.os.IBinder;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Landroidx/core/os/b;", "", "Landroid/os/Bundle;", "bundle", "", "key", "Landroid/os/IBinder;", "value", "Lkotlin/u;", "a", "<init>", "()V", "core-ktx_release"}, k=1, mv={1, 6, 0})
final class b
{
  public static final b a = new b();
  
  public static final void a(Bundle paramBundle, String paramString, IBinder paramIBinder)
  {
    r.f(paramBundle, "bundle");
    r.f(paramString, "key");
    paramBundle.putBinder(paramString, paramIBinder);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.os.b
 * JD-Core Version:    0.7.0.1
 */
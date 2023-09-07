package androidx.core.os;

import android.os.Bundle;
import android.util.Size;
import android.util.SizeF;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Landroidx/core/os/c;", "", "Landroid/os/Bundle;", "bundle", "", "key", "Landroid/util/Size;", "value", "Lkotlin/u;", "a", "Landroid/util/SizeF;", "b", "<init>", "()V", "core-ktx_release"}, k=1, mv={1, 6, 0})
final class c
{
  public static final c a = new c();
  
  public static final void a(Bundle paramBundle, String paramString, Size paramSize)
  {
    r.f(paramBundle, "bundle");
    r.f(paramString, "key");
    paramBundle.putSize(paramString, paramSize);
  }
  
  public static final void b(Bundle paramBundle, String paramString, SizeF paramSizeF)
  {
    r.f(paramBundle, "bundle");
    r.f(paramString, "key");
    paramBundle.putSizeF(paramString, paramSizeF);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.os.c
 * JD-Core Version:    0.7.0.1
 */
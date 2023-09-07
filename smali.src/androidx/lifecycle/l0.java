package androidx.lifecycle;

import g0.a;
import g0.a.a;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Landroidx/lifecycle/n0;", "owner", "Lg0/a;", "a", "lifecycle-viewmodel_release"}, k=2, mv={1, 6, 0})
public final class l0
{
  public static final a a(n0 paramn0)
  {
    r.f(paramn0, "owner");
    if ((paramn0 instanceof i))
    {
      paramn0 = ((i)paramn0).getDefaultViewModelCreationExtras();
      r.e(paramn0, "{\n        owner.defaultV…ModelCreationExtras\n    }");
    }
    else
    {
      paramn0 = a.a.b;
    }
    return paramn0;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.lifecycle.l0
 * JD-Core Version:    0.7.0.1
 */
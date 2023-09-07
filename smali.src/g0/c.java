package g0;

import androidx.lifecycle.i0;
import androidx.lifecycle.k0.b;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.reflect.d;
import w7.l;

@Metadata(bv={}, d1={""}, d2={"Lg0/c;", "", "Landroidx/lifecycle/i0;", "T", "Lkotlin/reflect/d;", "clazz", "Lkotlin/Function1;", "Lg0/a;", "initializer", "Lkotlin/u;", "a", "Landroidx/lifecycle/k0$b;", "b", "<init>", "()V", "lifecycle-viewmodel_release"}, k=1, mv={1, 6, 0})
public final class c
{
  private final List<f<?>> a = new ArrayList();
  
  public final <T extends i0> void a(d<T> paramd, l<? super a, ? extends T> paraml)
  {
    r.f(paramd, "clazz");
    r.f(paraml, "initializer");
    this.a.add(new f(v7.a.b(paramd), paraml));
  }
  
  public final k0.b b()
  {
    Object localObject = this.a.toArray(new f[0]);
    if (localObject != null)
    {
      localObject = (f[])localObject;
      return new b((f[])Arrays.copyOf((Object[])localObject, localObject.length));
    }
    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     g0.c
 * JD-Core Version:    0.7.0.1
 */
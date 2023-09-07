package g0;

import androidx.lifecycle.i0;
import androidx.lifecycle.k0.b;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import w7.l;

@Metadata(bv={}, d1={""}, d2={"Lg0/b;", "Landroidx/lifecycle/k0$b;", "Landroidx/lifecycle/i0;", "T", "Ljava/lang/Class;", "modelClass", "Lg0/a;", "extras", "b", "(Ljava/lang/Class;Lg0/a;)Landroidx/lifecycle/i0;", "", "Lg0/f;", "initializers", "<init>", "([Lg0/f;)V", "lifecycle-viewmodel_release"}, k=1, mv={1, 6, 0})
public final class b
  implements k0.b
{
  private final f<?>[] b;
  
  public b(f<?>... paramVarArgs)
  {
    this.b = paramVarArgs;
  }
  
  public <T extends i0> T b(Class<T> paramClass, a parama)
  {
    r.f(paramClass, "modelClass");
    r.f(parama, "extras");
    f[] arrayOff = this.b;
    int i = arrayOff.length;
    int j = 0;
    Object localObject = null;
    while (j < i)
    {
      f localf = arrayOff[j];
      if (r.a(localf.a(), paramClass))
      {
        localObject = localf.b().invoke(parama);
        if ((localObject instanceof i0)) {
          localObject = (i0)localObject;
        } else {
          localObject = null;
        }
      }
      j++;
    }
    if (localObject != null) {
      return localObject;
    }
    parama = new StringBuilder();
    parama.append("No initializer set for given class ");
    parama.append(paramClass.getName());
    throw new IllegalArgumentException(parama.toString());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     g0.b
 * JD-Core Version:    0.7.0.1
 */
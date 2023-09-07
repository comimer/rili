package g0;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lg0/d;", "Lg0/a;", "T", "Lg0/a$b;", "key", "t", "Lkotlin/u;", "c", "(Lg0/a$b;Ljava/lang/Object;)V", "a", "(Lg0/a$b;)Ljava/lang/Object;", "initialExtras", "<init>", "(Lg0/a;)V", "lifecycle-viewmodel_release"}, k=1, mv={1, 6, 0})
public final class d
  extends a
{
  public d(a parama)
  {
    b().putAll(parama.b());
  }
  
  public <T> T a(a.b<T> paramb)
  {
    r.f(paramb, "key");
    return b().get(paramb);
  }
  
  public final <T> void c(a.b<T> paramb, T paramT)
  {
    r.f(paramb, "key");
    b().put(paramb, paramT);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     g0.d
 * JD-Core Version:    0.7.0.1
 */
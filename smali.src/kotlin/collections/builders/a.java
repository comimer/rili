package kotlin.collections.builders;

import java.util.Map.Entry;
import kotlin.Metadata;
import kotlin.collections.g;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/collections/builders/a;", "", "E", "K", "V", "Lkotlin/collections/g;", "element", "", "c", "(Ljava/util/Map$Entry;)Z", "h", "<init>", "()V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public abstract class a<E extends Map.Entry<? extends K, ? extends V>, K, V>
  extends g<E>
{
  public final boolean c(E paramE)
  {
    r.f(paramE, "element");
    return h(paramE);
  }
  
  public abstract boolean h(Map.Entry<? extends K, ? extends V> paramEntry);
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.collections.builders.a
 * JD-Core Version:    0.7.0.1
 */
package kotlin.collections;

import java.util.Iterator;
import kotlin.Metadata;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/collections/h0;", "T", "", "Lkotlin/collections/g0;", "", "iterator", "Lkotlin/Function0;", "iteratorFactory", "<init>", "(Lw7/a;)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public final class h0<T>
  implements Iterable<g0<? extends T>>, x7.a
{
  private final w7.a<Iterator<T>> a;
  
  public h0(w7.a<? extends Iterator<? extends T>> parama)
  {
    this.a = parama;
  }
  
  public Iterator<g0<T>> iterator()
  {
    return new i0((Iterator)this.a.invoke());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.collections.h0
 * JD-Core Version:    0.7.0.1
 */
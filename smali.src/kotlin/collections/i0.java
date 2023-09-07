package kotlin.collections;

import java.util.Iterator;
import kotlin.Metadata;
import x7.a;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/collections/i0;", "T", "", "Lkotlin/collections/g0;", "", "hasNext", "b", "a", "Ljava/util/Iterator;", "iterator", "", "I", "index", "<init>", "(Ljava/util/Iterator;)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public final class i0<T>
  implements Iterator<g0<? extends T>>, a
{
  private final Iterator<T> a;
  private int b;
  
  public i0(Iterator<? extends T> paramIterator)
  {
    this.a = paramIterator;
  }
  
  public final g0<T> b()
  {
    int i = this.b;
    this.b = (i + 1);
    if (i < 0) {
      t.t();
    }
    return new g0(i, this.a.next());
  }
  
  public final boolean hasNext()
  {
    return this.a.hasNext();
  }
  
  public void remove()
  {
    throw new UnsupportedOperationException("Operation is not supported for read-only collection");
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.collections.i0
 * JD-Core Version:    0.7.0.1
 */
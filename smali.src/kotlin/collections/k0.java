package kotlin.collections;

import java.util.Iterator;
import kotlin.Metadata;
import x7.a;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/collections/k0;", "", "", "nextLong", "<init>", "()V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public abstract class k0
  implements Iterator<Long>, a
{
  public abstract long nextLong();
  
  public void remove()
  {
    throw new UnsupportedOperationException("Operation is not supported for read-only collection");
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.collections.k0
 * JD-Core Version:    0.7.0.1
 */
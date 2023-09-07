package kotlin.collections;

import java.util.Iterator;
import kotlin.Metadata;
import x7.a;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/collections/j0;", "", "", "nextInt", "<init>", "()V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public abstract class j0
  implements Iterator<Integer>, a
{
  public abstract int nextInt();
  
  public void remove()
  {
    throw new UnsupportedOperationException("Operation is not supported for read-only collection");
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.collections.j0
 * JD-Core Version:    0.7.0.1
 */
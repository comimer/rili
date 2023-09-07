package kotlin.collections;

import java.util.ListIterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import x7.a;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/collections/e0;", "", "", "", "hasNext", "hasPrevious", "", "nextIndex", "previousIndex", "b", "c", "<init>", "()V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public final class e0
  implements ListIterator, a
{
  public static final e0 a = new e0();
  
  public Void b()
  {
    throw new NoSuchElementException();
  }
  
  public Void c()
  {
    throw new NoSuchElementException();
  }
  
  public boolean hasNext()
  {
    return false;
  }
  
  public boolean hasPrevious()
  {
    return false;
  }
  
  public int nextIndex()
  {
    return 0;
  }
  
  public int previousIndex()
  {
    return -1;
  }
  
  public void remove()
  {
    throw new UnsupportedOperationException("Operation is not supported for read-only collection");
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.collections.e0
 * JD-Core Version:    0.7.0.1
 */
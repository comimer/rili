package kotlin.collections;

import java.util.Enumeration;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import x7.a;

@Metadata(bv={}, d1={""}, d2={"T", "Ljava/util/Enumeration;", "", "x", "kotlin-stdlib"}, k=5, mv={1, 7, 1}, xs="kotlin/collections/CollectionsKt")
class x
  extends w
{
  public static <T> Iterator<T> x(Enumeration<T> paramEnumeration)
  {
    r.f(paramEnumeration, "<this>");
    return new a(paramEnumeration);
  }
  
  @Metadata(bv={}, d1={""}, d2={"kotlin/collections/x$a", "", "", "hasNext", "next", "()Ljava/lang/Object;", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  public static final class a
    implements Iterator<T>, a
  {
    a(Enumeration<T> paramEnumeration) {}
    
    public boolean hasNext()
    {
      return this.a.hasMoreElements();
    }
    
    public T next()
    {
      return this.a.nextElement();
    }
    
    public void remove()
    {
      throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.collections.x
 * JD-Core Version:    0.7.0.1
 */
package kotlin.collections;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"T", "", "", "v", "(Ljava/lang/Iterable;)Ljava/lang/Integer;", "default", "u", "", "w", "kotlin-stdlib"}, k=5, mv={1, 7, 1}, xs="kotlin/collections/CollectionsKt")
class w
  extends v
{
  public static <T> int u(Iterable<? extends T> paramIterable, int paramInt)
  {
    r.f(paramIterable, "<this>");
    if ((paramIterable instanceof Collection)) {
      paramInt = ((Collection)paramIterable).size();
    }
    return paramInt;
  }
  
  public static final <T> Integer v(Iterable<? extends T> paramIterable)
  {
    r.f(paramIterable, "<this>");
    if ((paramIterable instanceof Collection)) {
      paramIterable = Integer.valueOf(((Collection)paramIterable).size());
    } else {
      paramIterable = null;
    }
    return paramIterable;
  }
  
  public static <T> List<T> w(Iterable<? extends Iterable<? extends T>> paramIterable)
  {
    r.f(paramIterable, "<this>");
    ArrayList localArrayList = new ArrayList();
    paramIterable = paramIterable.iterator();
    while (paramIterable.hasNext()) {
      t.A(localArrayList, (Iterable)paramIterable.next());
    }
    return localArrayList;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.collections.w
 * JD-Core Version:    0.7.0.1
 */
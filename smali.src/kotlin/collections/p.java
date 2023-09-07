package kotlin.collections;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"T", "", "", "b", "", "source", "a", "kotlin-stdlib"}, k=2, mv={1, 7, 1})
public final class p
{
  public static final <T> Collection<T> a(Iterable<? extends T> paramIterable1, Iterable<? extends T> paramIterable2)
  {
    r.f(paramIterable1, "<this>");
    r.f(paramIterable2, "source");
    if ((paramIterable1 instanceof Set)) {
      paramIterable1 = (Collection)paramIterable1;
    } else if ((paramIterable1 instanceof Collection))
    {
      if (((paramIterable2 instanceof Collection)) && (((Collection)paramIterable2).size() < 2))
      {
        paramIterable1 = (Collection)paramIterable1;
      }
      else
      {
        paramIterable2 = (Collection)paramIterable1;
        if (b(paramIterable2)) {
          paramIterable1 = CollectionsKt___CollectionsKt.C0(paramIterable1);
        } else {
          paramIterable1 = paramIterable2;
        }
      }
    }
    else if (s.b) {
      paramIterable1 = CollectionsKt___CollectionsKt.C0(paramIterable1);
    } else {
      paramIterable1 = t.E0(paramIterable1);
    }
    return paramIterable1;
  }
  
  private static final <T> boolean b(Collection<? extends T> paramCollection)
  {
    boolean bool;
    if ((s.b) && (paramCollection.size() > 2) && ((paramCollection instanceof ArrayList))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.collections.p
 * JD-Core Version:    0.7.0.1
 */
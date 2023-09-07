package q7;

import java.util.Comparator;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lq7/f;", "Ljava/util/Comparator;", "", "", "Lkotlin/Comparator;", "a", "b", "", "reversed", "<init>", "()V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
final class f
  implements Comparator<Comparable<? super Object>>
{
  public static final f a = new f();
  
  public int a(Comparable<Object> paramComparable1, Comparable<Object> paramComparable2)
  {
    r.f(paramComparable1, "a");
    r.f(paramComparable2, "b");
    return paramComparable2.compareTo(paramComparable1);
  }
  
  public final Comparator<Comparable<Object>> reversed()
  {
    return e.a;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     q7.f
 * JD-Core Version:    0.7.0.1
 */
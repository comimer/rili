package kotlin.collections;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"T", "element", "", "e", "(Ljava/lang/Object;)Ljava/util/List;", "E", "", "c", "", "capacity", "d", "builder", "a", "", "", "isVarargs", "", "b", "([Ljava/lang/Object;Z)[Ljava/lang/Object;", "kotlin-stdlib"}, k=5, mv={1, 7, 1}, xs="kotlin/collections/CollectionsKt")
class u
{
  public static <E> List<E> a(List<E> paramList)
  {
    r.f(paramList, "builder");
    return ((ListBuilder)paramList).build();
  }
  
  public static final <T> Object[] b(T[] paramArrayOfT, boolean paramBoolean)
  {
    r.f(paramArrayOfT, "<this>");
    if ((!paramBoolean) || (!r.a(paramArrayOfT.getClass(), [Ljava.lang.Object.class)))
    {
      paramArrayOfT = Arrays.copyOf(paramArrayOfT, paramArrayOfT.length, [Ljava.lang.Object.class);
      r.e(paramArrayOfT, "copyOf(this, this.size, Array<Any?>::class.java)");
    }
    return paramArrayOfT;
  }
  
  public static <E> List<E> c()
  {
    return new ListBuilder();
  }
  
  public static <E> List<E> d(int paramInt)
  {
    return new ListBuilder(paramInt);
  }
  
  public static <T> List<T> e(T paramT)
  {
    paramT = Collections.singletonList(paramT);
    r.e(paramT, "singletonList(element)");
    return paramT;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.collections.u
 * JD-Core Version:    0.7.0.1
 */
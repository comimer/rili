package kotlin.collections;

import b8.c;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"", "", "index", "L", "(Ljava/util/List;I)I", "M", "T", "", "K", "(Ljava/util/List;)Ljava/util/List;", "kotlin-stdlib"}, k=5, mv={1, 7, 1}, xs="kotlin/collections/CollectionsKt")
class b0
  extends a0
{
  public static <T> List<T> K(List<T> paramList)
  {
    r.f(paramList, "<this>");
    return new s0(paramList);
  }
  
  private static final int L(List<?> paramList, int paramInt)
  {
    if (new c(0, t.l(paramList)).m(paramInt)) {
      return t.l(paramList) - paramInt;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Element index ");
    localStringBuilder.append(paramInt);
    localStringBuilder.append(" must be in range [");
    localStringBuilder.append(new c(0, t.l(paramList)));
    localStringBuilder.append("].");
    throw new IndexOutOfBoundsException(localStringBuilder.toString());
  }
  
  private static final int M(List<?> paramList, int paramInt)
  {
    if (new c(0, paramList.size()).m(paramInt)) {
      return paramList.size() - paramInt;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Position index ");
    localStringBuilder.append(paramInt);
    localStringBuilder.append(" must be in range [");
    localStringBuilder.append(new c(0, paramList.size()));
    localStringBuilder.append("].");
    throw new IndexOutOfBoundsException(localStringBuilder.toString());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.collections.b0
 * JD-Core Version:    0.7.0.1
 */
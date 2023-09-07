package kotlin.collections;

import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;
import q7.a;
import w7.l;

@Metadata(d1={""}, d2={"<anonymous>", "", "T", "K", "", "it", "invoke", "(Ljava/lang/Object;)Ljava/lang/Integer;"}, k=3, mv={1, 7, 1}, xi=176)
public final class CollectionsKt__CollectionsKt$binarySearchBy$1
  extends Lambda
  implements l<Object, Integer>
{
  public CollectionsKt__CollectionsKt$binarySearchBy$1(l<Object, Comparable<Object>> paraml, Comparable<Object> paramComparable)
  {
    super(1);
  }
  
  public final Integer invoke(Object paramObject)
  {
    return Integer.valueOf(a.a((Comparable)this.$selector.invoke(paramObject), this.$key));
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.collections.CollectionsKt__CollectionsKt.binarySearchBy.1
 * JD-Core Version:    0.7.0.1
 */
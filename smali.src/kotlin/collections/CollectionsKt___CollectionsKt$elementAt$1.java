package kotlin.collections;

import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;
import w7.l;

@Metadata(d1={""}, d2={"<anonymous>", "T", "it", "", "invoke", "(I)Ljava/lang/Object;"}, k=3, mv={1, 7, 1}, xi=48)
final class CollectionsKt___CollectionsKt$elementAt$1
  extends Lambda
  implements l<Integer, Object>
{
  CollectionsKt___CollectionsKt$elementAt$1(int paramInt)
  {
    super(1);
  }
  
  public final Object invoke(int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Collection doesn't contain element at index ");
    localStringBuilder.append(this.$index);
    localStringBuilder.append('.');
    throw new IndexOutOfBoundsException(localStringBuilder.toString());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.collections.CollectionsKt___CollectionsKt.elementAt.1
 * JD-Core Version:    0.7.0.1
 */
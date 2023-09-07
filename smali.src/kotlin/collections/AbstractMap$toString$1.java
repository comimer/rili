package kotlin.collections;

import java.util.Map.Entry;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.r;
import w7.l;

@Metadata(d1={""}, d2={"<anonymous>", "", "K", "V", "it", "", "invoke"}, k=3, mv={1, 7, 1}, xi=48)
final class AbstractMap$toString$1
  extends Lambda
  implements l<Map.Entry<Object, Object>, CharSequence>
{
  AbstractMap$toString$1(c<Object, Object> paramc)
  {
    super(1);
  }
  
  public final CharSequence invoke(Map.Entry<Object, Object> paramEntry)
  {
    r.f(paramEntry, "it");
    return c.c(null, paramEntry);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.collections.AbstractMap.toString.1
 * JD-Core Version:    0.7.0.1
 */
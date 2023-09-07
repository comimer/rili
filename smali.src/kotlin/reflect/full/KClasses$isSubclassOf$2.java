package kotlin.reflect.full;

import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.r;
import kotlin.reflect.d;
import w7.l;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/reflect/d;", "kotlin.jvm.PlatformType", "it", "", "invoke", "(Lkotlin/reflect/d;)Ljava/lang/Boolean;", "<anonymous>"}, k=3, mv={1, 7, 1})
final class KClasses$isSubclassOf$2
  extends Lambda
  implements l<d<?>, Boolean>
{
  KClasses$isSubclassOf$2(d<?> paramd)
  {
    super(1);
  }
  
  public final Boolean invoke(d<?> paramd)
  {
    return Boolean.valueOf(r.a(paramd, this.$base));
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.reflect.full.KClasses.isSubclassOf.2
 * JD-Core Version:    0.7.0.1
 */
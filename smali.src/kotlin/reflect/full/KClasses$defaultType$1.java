package kotlin.reflect.full;

import java.lang.reflect.Type;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.d;
import kotlin.reflect.jvm.internal.KClassImpl;
import w7.a;

@Metadata(d1={""}, d2={"<anonymous>", "Ljava/lang/reflect/Type;", "invoke"}, k=3, mv={1, 7, 1}, xi=48)
final class KClasses$defaultType$1
  extends Lambda
  implements a<Type>
{
  KClasses$defaultType$1(d<?> paramd)
  {
    super(0);
  }
  
  public final Type invoke()
  {
    return ((KClassImpl)this.$this_defaultType).d();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.reflect.full.KClasses.defaultType.1
 * JD-Core Version:    0.7.0.1
 */
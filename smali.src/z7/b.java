package z7;

import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.reflect.l;

@Metadata(bv={}, d1={""}, d2={"Lz7/b;", "V", "Lz7/d;", "", "Lkotlin/reflect/l;", "property", "oldValue", "newValue", "", "d", "(Lkotlin/reflect/l;Ljava/lang/Object;Ljava/lang/Object;)Z", "Lkotlin/u;", "c", "(Lkotlin/reflect/l;Ljava/lang/Object;Ljava/lang/Object;)V", "thisRef", "a", "(Ljava/lang/Object;Lkotlin/reflect/l;)Ljava/lang/Object;", "value", "b", "(Ljava/lang/Object;Lkotlin/reflect/l;Ljava/lang/Object;)V", "initialValue", "<init>", "(Ljava/lang/Object;)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public abstract class b<V>
  implements d<Object, V>
{
  private V a;
  
  public b(V paramV)
  {
    this.a = paramV;
  }
  
  public V a(Object paramObject, l<?> paraml)
  {
    r.f(paraml, "property");
    return this.a;
  }
  
  public void b(Object paramObject, l<?> paraml, V paramV)
  {
    r.f(paraml, "property");
    paramObject = this.a;
    if (!d(paraml, paramObject, paramV)) {
      return;
    }
    this.a = paramV;
    c(paraml, paramObject, paramV);
  }
  
  protected void c(l<?> paraml, V paramV1, V paramV2)
  {
    r.f(paraml, "property");
  }
  
  protected boolean d(l<?> paraml, V paramV1, V paramV2)
  {
    r.f(paraml, "property");
    return true;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     z7.b
 * JD-Core Version:    0.7.0.1
 */
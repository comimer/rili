package kotlin.reflect;

import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.NotImplementedError;
import kotlin.collections.t;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/reflect/s;", "Ljava/lang/reflect/TypeVariable;", "Ljava/lang/reflect/GenericDeclaration;", "", "", "getName", "getGenericDeclaration", "", "Ljava/lang/reflect/Type;", "getBounds", "()[Ljava/lang/reflect/Type;", "getTypeName", "other", "", "equals", "", "hashCode", "toString", "Lkotlin/reflect/q;", "a", "Lkotlin/reflect/q;", "typeParameter", "<init>", "(Lkotlin/reflect/q;)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
final class s
  implements TypeVariable<GenericDeclaration>, Type
{
  private final q a;
  
  public s(q paramq)
  {
    this.a = paramq;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof TypeVariable))
    {
      String str = getName();
      paramObject = (TypeVariable)paramObject;
      if ((r.a(str, paramObject.getName())) && (r.a(getGenericDeclaration(), paramObject.getGenericDeclaration()))) {
        return true;
      }
    }
    boolean bool = false;
    return bool;
  }
  
  public Type[] getBounds()
  {
    Object localObject1 = this.a.getUpperBounds();
    Object localObject2 = new ArrayList(t.u((Iterable)localObject1, 10));
    localObject1 = ((Iterable)localObject1).iterator();
    while (((Iterator)localObject1).hasNext()) {
      ((Collection)localObject2).add(TypesJVMKt.a((p)((Iterator)localObject1).next(), true));
    }
    localObject2 = ((Collection)localObject2).toArray(new Type[0]);
    r.d(localObject2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
    return (Type[])localObject2;
  }
  
  public GenericDeclaration getGenericDeclaration()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("getGenericDeclaration() is not yet supported for type variables created from KType: ");
    localStringBuilder.append(this.a);
    String str = localStringBuilder.toString();
    localStringBuilder = new StringBuilder();
    localStringBuilder.append("An operation is not implemented: ");
    localStringBuilder.append(str);
    throw new NotImplementedError(localStringBuilder.toString());
  }
  
  public String getName()
  {
    return this.a.getName();
  }
  
  public String getTypeName()
  {
    return getName();
  }
  
  public int hashCode()
  {
    return getName().hashCode() ^ getGenericDeclaration().hashCode();
  }
  
  public String toString()
  {
    return getTypeName();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.reflect.s
 * JD-Core Version:    0.7.0.1
 */
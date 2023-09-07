package kotlin.reflect;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/reflect/a;", "Ljava/lang/reflect/GenericArrayType;", "", "Ljava/lang/reflect/Type;", "getGenericComponentType", "", "getTypeName", "other", "", "equals", "", "hashCode", "toString", "a", "Ljava/lang/reflect/Type;", "elementType", "<init>", "(Ljava/lang/reflect/Type;)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
final class a
  implements GenericArrayType, Type
{
  private final Type a;
  
  public a(Type paramType)
  {
    this.a = paramType;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool;
    if (((paramObject instanceof GenericArrayType)) && (r.a(getGenericComponentType(), ((GenericArrayType)paramObject).getGenericComponentType()))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public Type getGenericComponentType()
  {
    return this.a;
  }
  
  public String getTypeName()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(TypesJVMKt.b(this.a));
    localStringBuilder.append("[]");
    return localStringBuilder.toString();
  }
  
  public int hashCode()
  {
    return getGenericComponentType().hashCode();
  }
  
  public String toString()
  {
    return getTypeName();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.reflect.a
 * JD-Core Version:    0.7.0.1
 */
package kotlin.reflect;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.j;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.r;
import w7.l;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/reflect/ParameterizedTypeImpl;", "Ljava/lang/reflect/ParameterizedType;", "", "Ljava/lang/reflect/Type;", "getRawType", "getOwnerType", "", "getActualTypeArguments", "()[Ljava/lang/reflect/Type;", "", "getTypeName", "other", "", "equals", "", "hashCode", "toString", "Ljava/lang/Class;", "a", "Ljava/lang/Class;", "rawType", "b", "Ljava/lang/reflect/Type;", "ownerType", "c", "[Ljava/lang/reflect/Type;", "typeArguments", "", "<init>", "(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/List;)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
final class ParameterizedTypeImpl
  implements ParameterizedType, Type
{
  private final Class<?> a;
  private final Type b;
  private final Type[] c;
  
  public ParameterizedTypeImpl(Class<?> paramClass, Type paramType, List<? extends Type> paramList)
  {
    this.a = paramClass;
    this.b = paramType;
    paramClass = paramList.toArray(new Type[0]);
    r.d(paramClass, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
    this.c = ((Type[])paramClass);
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof ParameterizedType))
    {
      Class localClass = this.a;
      paramObject = (ParameterizedType)paramObject;
      if ((r.a(localClass, paramObject.getRawType())) && (r.a(this.b, paramObject.getOwnerType())) && (Arrays.equals(getActualTypeArguments(), paramObject.getActualTypeArguments()))) {
        return true;
      }
    }
    boolean bool = false;
    return bool;
  }
  
  public Type[] getActualTypeArguments()
  {
    return this.c;
  }
  
  public Type getOwnerType()
  {
    return this.b;
  }
  
  public Type getRawType()
  {
    return this.a;
  }
  
  public String getTypeName()
  {
    Object localObject1 = new StringBuilder();
    Object localObject2 = this.b;
    if (localObject2 != null)
    {
      ((StringBuilder)localObject1).append(TypesJVMKt.b((Type)localObject2));
      ((StringBuilder)localObject1).append("$");
      ((StringBuilder)localObject1).append(this.a.getSimpleName());
    }
    else
    {
      ((StringBuilder)localObject1).append(TypesJVMKt.b(this.a));
    }
    localObject2 = this.c;
    int i;
    if (localObject2.length == 0) {
      i = 1;
    } else {
      i = 0;
    }
    if ((i ^ 0x1) != 0) {
      j.H((Object[])localObject2, (Appendable)localObject1, null, "<", ">", 0, null, getTypeName.1.1.INSTANCE, 50, null);
    }
    localObject1 = ((StringBuilder)localObject1).toString();
    r.e(localObject1, "StringBuilder().apply(builderAction).toString()");
    return localObject1;
  }
  
  public int hashCode()
  {
    int i = this.a.hashCode();
    Type localType = this.b;
    int j;
    if (localType != null) {
      j = localType.hashCode();
    } else {
      j = 0;
    }
    return i ^ j ^ Arrays.hashCode(getActualTypeArguments());
  }
  
  public String toString()
  {
    return getTypeName();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.reflect.ParameterizedTypeImpl
 * JD-Core Version:    0.7.0.1
 */
package kotlin.reflect;

import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/reflect/t;", "Ljava/lang/reflect/WildcardType;", "", "", "Ljava/lang/reflect/Type;", "getUpperBounds", "()[Ljava/lang/reflect/Type;", "getLowerBounds", "", "getTypeName", "other", "", "equals", "", "hashCode", "toString", "a", "Ljava/lang/reflect/Type;", "upperBound", "b", "lowerBound", "<init>", "(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V", "c", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
final class t
  implements WildcardType, Type
{
  public static final a c = new a(null);
  private static final t d = new t(null, null);
  private final Type a;
  private final Type b;
  
  public t(Type paramType1, Type paramType2)
  {
    this.a = paramType1;
    this.b = paramType2;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof WildcardType))
    {
      Type[] arrayOfType = getUpperBounds();
      paramObject = (WildcardType)paramObject;
      if ((Arrays.equals(arrayOfType, paramObject.getUpperBounds())) && (Arrays.equals(getLowerBounds(), paramObject.getLowerBounds()))) {
        return true;
      }
    }
    boolean bool = false;
    return bool;
  }
  
  public Type[] getLowerBounds()
  {
    Object localObject = this.b;
    if (localObject == null) {
      localObject = (Type[])new Type[0];
    } else {
      localObject = new Type[] { localObject };
    }
    return localObject;
  }
  
  public String getTypeName()
  {
    Object localObject;
    if (this.b != null)
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("? super ");
      ((StringBuilder)localObject).append(TypesJVMKt.b(this.b));
      localObject = ((StringBuilder)localObject).toString();
    }
    else
    {
      localObject = this.a;
      if ((localObject != null) && (!r.a(localObject, Object.class)))
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("? extends ");
        ((StringBuilder)localObject).append(TypesJVMKt.b(this.a));
        localObject = ((StringBuilder)localObject).toString();
      }
      else
      {
        localObject = "?";
      }
    }
    return localObject;
  }
  
  public Type[] getUpperBounds()
  {
    Type localType = this.a;
    Object localObject = localType;
    if (localType == null) {
      localObject = Object.class;
    }
    return new Type[] { localObject };
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(getUpperBounds()) ^ Arrays.hashCode(getLowerBounds());
  }
  
  public String toString()
  {
    return getTypeName();
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lkotlin/reflect/t$a;", "", "Lkotlin/reflect/t;", "STAR", "Lkotlin/reflect/t;", "a", "()Lkotlin/reflect/t;", "<init>", "()V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  public static final class a
  {
    public final t a()
    {
      return t.a();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.reflect.t
 * JD-Core Version:    0.7.0.1
 */
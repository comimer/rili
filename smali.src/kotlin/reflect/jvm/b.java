package kotlin.reflect.jvm;

import java.lang.reflect.Type;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.reflect.TypesJVMKt;
import kotlin.reflect.jvm.internal.KTypeImpl;
import kotlin.reflect.p;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/reflect/p;", "Ljava/lang/reflect/Type;", "a", "(Lkotlin/reflect/p;)Ljava/lang/reflect/Type;", "javaType", "kotlin-reflection"}, k=2, mv={1, 7, 1})
public final class b
{
  public static final Type a(p paramp)
  {
    r.f(paramp, "<this>");
    Type localType1 = ((KTypeImpl)paramp).j();
    Type localType2 = localType1;
    if (localType1 == null) {
      localType2 = TypesJVMKt.f(paramp);
    }
    return localType2;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.reflect.jvm.b
 * JD-Core Version:    0.7.0.1
 */
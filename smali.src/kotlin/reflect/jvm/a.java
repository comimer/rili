package kotlin.reflect.jvm;

import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.t;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.v;
import kotlin.reflect.e;
import kotlin.reflect.jvm.internal.KTypeImpl;
import kotlin.reflect.jvm.internal.KotlinReflectionInternalError;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.f;
import kotlin.reflect.jvm.internal.impl.types.b0;
import kotlin.reflect.jvm.internal.impl.types.x0;
import kotlin.reflect.p;
import kotlin.reflect.q;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/reflect/p;", "Lkotlin/reflect/d;", "b", "(Lkotlin/reflect/p;)Lkotlin/reflect/d;", "getJvmErasure$annotations", "(Lkotlin/reflect/p;)V", "jvmErasure", "Lkotlin/reflect/e;", "a", "(Lkotlin/reflect/e;)Lkotlin/reflect/d;", "kotlin-reflection"}, k=2, mv={1, 7, 1})
public final class a
{
  public static final kotlin.reflect.d<?> a(e parame)
  {
    r.f(parame, "<this>");
    if ((parame instanceof kotlin.reflect.d))
    {
      parame = (kotlin.reflect.d)parame;
    }
    else
    {
      if (!(parame instanceof q)) {
        break label208;
      }
      List localList = ((q)parame).getUpperBounds();
      Iterator localIterator = localList.iterator();
      int i;
      do
      {
        boolean bool = localIterator.hasNext();
        parame = null;
        Object localObject1 = null;
        if (!bool) {
          break;
        }
        localObject2 = localIterator.next();
        parame = (p)localObject2;
        r.d(parame, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KTypeImpl");
        f localf = ((KTypeImpl)parame).l().K0().b();
        parame = localObject1;
        if ((localf instanceof kotlin.reflect.jvm.internal.impl.descriptors.d)) {
          parame = (kotlin.reflect.jvm.internal.impl.descriptors.d)localf;
        }
        if ((parame != null) && (parame.g() != ClassKind.INTERFACE) && (parame.g() != ClassKind.ANNOTATION_CLASS)) {
          i = 1;
        } else {
          i = 0;
        }
      } while (i == 0);
      parame = (e)localObject2;
      localObject2 = (p)parame;
      parame = (e)localObject2;
      if (localObject2 == null) {
        parame = (p)t.a0(localList);
      }
      if (parame != null)
      {
        localObject2 = b(parame);
        parame = (e)localObject2;
        if (localObject2 != null) {}
      }
      else
      {
        parame = v.b(Object.class);
      }
    }
    return parame;
    label208:
    Object localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append("Cannot calculate JVM erasure for type: ");
    ((StringBuilder)localObject2).append(parame);
    throw new KotlinReflectionInternalError(((StringBuilder)localObject2).toString());
  }
  
  public static final kotlin.reflect.d<?> b(p paramp)
  {
    r.f(paramp, "<this>");
    Object localObject = paramp.h();
    if (localObject != null)
    {
      localObject = a((e)localObject);
      if (localObject != null) {
        return localObject;
      }
    }
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Cannot calculate JVM erasure for type: ");
    ((StringBuilder)localObject).append(paramp);
    throw new KotlinReflectionInternalError(((StringBuilder)localObject).toString());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.reflect.jvm.a
 * JD-Core Version:    0.7.0.1
 */
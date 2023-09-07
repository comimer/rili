package kotlin.reflect;

import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.FunctionReferenceImpl;
import w7.l;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/reflect/p;", "", "forceWrapper", "Ljava/lang/reflect/Type;", "c", "Ljava/lang/Class;", "jClass", "", "Lkotlin/reflect/r;", "arguments", "e", "type", "", "h", "f", "(Lkotlin/reflect/p;)Ljava/lang/reflect/Type;", "getJavaType$annotations", "(Lkotlin/reflect/p;)V", "javaType", "g", "(Lkotlin/reflect/r;)Ljava/lang/reflect/Type;", "(Lkotlin/reflect/r;)V", "kotlin-stdlib"}, k=2, mv={1, 7, 1})
public final class TypesJVMKt
{
  private static final Type c(p paramp, boolean paramBoolean)
  {
    Object localObject1 = paramp.h();
    if ((localObject1 instanceof q)) {
      return new s((q)localObject1);
    }
    if ((localObject1 instanceof d))
    {
      localObject1 = (d)localObject1;
      if (paramBoolean) {
        localObject1 = v7.a.c((d)localObject1);
      } else {
        localObject1 = v7.a.b((d)localObject1);
      }
      Object localObject2 = paramp.c();
      if (((List)localObject2).isEmpty()) {
        return localObject1;
      }
      if (((Class)localObject1).isArray())
      {
        if (((Class)localObject1).getComponentType().isPrimitive()) {
          return localObject1;
        }
        localObject2 = (r)kotlin.collections.t.w0((List)localObject2);
        if (localObject2 != null)
        {
          paramp = ((r)localObject2).a();
          localObject2 = ((r)localObject2).b();
          int i;
          if (paramp == null) {
            i = -1;
          } else {
            i = a.a[paramp.ordinal()];
          }
          paramp = (p)localObject1;
          if (i != -1)
          {
            paramp = (p)localObject1;
            if (i != 1)
            {
              if ((i != 2) && (i != 3)) {
                throw new NoWhenBranchMatchedException();
              }
              kotlin.jvm.internal.r.c(localObject2);
              paramp = d((p)localObject2, false, 1, null);
              if ((paramp instanceof Class)) {
                paramp = (p)localObject1;
              } else {
                paramp = new a(paramp);
              }
            }
          }
          return paramp;
        }
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append("kotlin.Array must have exactly one type argument: ");
        ((StringBuilder)localObject1).append(paramp);
        throw new IllegalArgumentException(((StringBuilder)localObject1).toString());
      }
      return e((Class)localObject1, (List)localObject2);
    }
    localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("Unsupported type classifier: ");
    ((StringBuilder)localObject1).append(paramp);
    throw new UnsupportedOperationException(((StringBuilder)localObject1).toString());
  }
  
  private static final Type e(Class<?> paramClass, List<r> paramList)
  {
    Object localObject1 = paramClass.getDeclaringClass();
    if (localObject1 == null)
    {
      localObject1 = new ArrayList(kotlin.collections.t.u(paramList, 10));
      paramList = paramList.iterator();
      while (paramList.hasNext()) {
        ((Collection)localObject1).add(g((r)paramList.next()));
      }
      return new ParameterizedTypeImpl(paramClass, null, (List)localObject1);
    }
    if (Modifier.isStatic(paramClass.getModifiers()))
    {
      localObject2 = new ArrayList(kotlin.collections.t.u(paramList, 10));
      paramList = paramList.iterator();
      while (paramList.hasNext()) {
        ((Collection)localObject2).add(g((r)paramList.next()));
      }
      return new ParameterizedTypeImpl(paramClass, (Type)localObject1, (List)localObject2);
    }
    int i = paramClass.getTypeParameters().length;
    localObject1 = e((Class)localObject1, paramList.subList(i, paramList.size()));
    Object localObject2 = paramList.subList(0, i);
    paramList = new ArrayList(kotlin.collections.t.u((Iterable)localObject2, 10));
    localObject2 = ((Iterable)localObject2).iterator();
    while (((Iterator)localObject2).hasNext()) {
      paramList.add(g((r)((Iterator)localObject2).next()));
    }
    return new ParameterizedTypeImpl(paramClass, (Type)localObject1, paramList);
  }
  
  public static final Type f(p paramp)
  {
    kotlin.jvm.internal.r.f(paramp, "<this>");
    if ((paramp instanceof kotlin.jvm.internal.s))
    {
      Type localType = ((kotlin.jvm.internal.s)paramp).j();
      if (localType != null) {
        return localType;
      }
    }
    return d(paramp, false, 1, null);
  }
  
  private static final Type g(r paramr)
  {
    KVariance localKVariance = paramr.d();
    if (localKVariance == null) {
      return t.c.a();
    }
    paramr = paramr.c();
    kotlin.jvm.internal.r.c(paramr);
    int i = a.a[localKVariance.ordinal()];
    if (i != 1)
    {
      if (i != 2)
      {
        if (i == 3) {
          paramr = new t(c(paramr, true), null);
        } else {
          throw new NoWhenBranchMatchedException();
        }
      }
      else {
        paramr = c(paramr, true);
      }
    }
    else {
      paramr = new t(null, c(paramr, true));
    }
    return paramr;
  }
  
  private static final String h(Type paramType)
  {
    if ((paramType instanceof Class))
    {
      Object localObject = (Class)paramType;
      if (((Class)localObject).isArray())
      {
        paramType = kotlin.sequences.k.h(paramType, typeToString.unwrap.1.INSTANCE);
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append(((Class)kotlin.sequences.k.w(paramType)).getName());
        ((StringBuilder)localObject).append(kotlin.text.k.u("[]", kotlin.sequences.k.m(paramType)));
        paramType = ((StringBuilder)localObject).toString();
      }
      else
      {
        paramType = ((Class)localObject).getName();
      }
      kotlin.jvm.internal.r.e(paramType, "{\n        if (type.isArr…   } else type.name\n    }");
    }
    else
    {
      paramType = paramType.toString();
    }
    return paramType;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.reflect.TypesJVMKt
 * JD-Core Version:    0.7.0.1
 */
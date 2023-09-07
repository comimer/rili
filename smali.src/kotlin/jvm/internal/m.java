package kotlin.jvm.internal;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.m0;
import kotlin.jvm.KotlinReflectionNotSupportedError;
import w7.b;
import w7.e;
import w7.f;
import w7.g;
import w7.h;
import w7.i;
import w7.j;
import w7.n;
import w7.o;
import w7.q;
import w7.s;
import w7.u;
import w7.v;
import w7.w;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/jvm/internal/m;", "Lkotlin/reflect/d;", "", "Lkotlin/jvm/internal/l;", "", "o", "other", "", "equals", "", "hashCode", "", "toString", "Ljava/lang/Class;", "a", "Ljava/lang/Class;", "d", "()Ljava/lang/Class;", "jClass", "i", "()Ljava/lang/String;", "simpleName", "b", "qualifiedName", "", "Lkotlin/reflect/p;", "e", "()Ljava/util/List;", "getSupertypes$annotations", "()V", "supertypes", "<init>", "(Ljava/lang/Class;)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public final class m
  implements kotlin.reflect.d<Object>, l
{
  public static final a b = new a(null);
  private static final Map<Class<? extends kotlin.c<?>>, Integer> c;
  private static final HashMap<String, String> d;
  private static final HashMap<String, String> e;
  private static final HashMap<String, String> f;
  private static final Map<String, String> g;
  private final Class<?> a;
  
  static
  {
    int i = 0;
    Object localObject1 = kotlin.collections.t.m(new Class[] { w7.a.class, w7.l.class, w7.p.class, q.class, w7.r.class, s.class, w7.t.class, u.class, v.class, w.class, b.class, w7.c.class, w7.d.class, e.class, f.class, g.class, h.class, i.class, j.class, w7.k.class, w7.m.class, n.class, o.class });
    Object localObject2 = new ArrayList(kotlin.collections.t.u((Iterable)localObject1, 10));
    Object localObject3 = ((Iterable)localObject1).iterator();
    while (((Iterator)localObject3).hasNext())
    {
      localObject1 = ((Iterator)localObject3).next();
      if (i < 0) {
        kotlin.collections.t.t();
      }
      ((Collection)localObject2).add(kotlin.k.a((Class)localObject1, Integer.valueOf(i)));
      i++;
    }
    c = m0.q((Iterable)localObject2);
    localObject1 = new HashMap();
    ((HashMap)localObject1).put("boolean", "kotlin.Boolean");
    ((HashMap)localObject1).put("char", "kotlin.Char");
    ((HashMap)localObject1).put("byte", "kotlin.Byte");
    ((HashMap)localObject1).put("short", "kotlin.Short");
    ((HashMap)localObject1).put("int", "kotlin.Int");
    ((HashMap)localObject1).put("float", "kotlin.Float");
    ((HashMap)localObject1).put("long", "kotlin.Long");
    ((HashMap)localObject1).put("double", "kotlin.Double");
    d = (HashMap)localObject1;
    localObject3 = new HashMap();
    ((HashMap)localObject3).put("java.lang.Boolean", "kotlin.Boolean");
    ((HashMap)localObject3).put("java.lang.Character", "kotlin.Char");
    ((HashMap)localObject3).put("java.lang.Byte", "kotlin.Byte");
    ((HashMap)localObject3).put("java.lang.Short", "kotlin.Short");
    ((HashMap)localObject3).put("java.lang.Integer", "kotlin.Int");
    ((HashMap)localObject3).put("java.lang.Float", "kotlin.Float");
    ((HashMap)localObject3).put("java.lang.Long", "kotlin.Long");
    ((HashMap)localObject3).put("java.lang.Double", "kotlin.Double");
    e = (HashMap)localObject3;
    localObject2 = new HashMap();
    ((HashMap)localObject2).put("java.lang.Object", "kotlin.Any");
    ((HashMap)localObject2).put("java.lang.String", "kotlin.String");
    ((HashMap)localObject2).put("java.lang.CharSequence", "kotlin.CharSequence");
    ((HashMap)localObject2).put("java.lang.Throwable", "kotlin.Throwable");
    ((HashMap)localObject2).put("java.lang.Cloneable", "kotlin.Cloneable");
    ((HashMap)localObject2).put("java.lang.Number", "kotlin.Number");
    ((HashMap)localObject2).put("java.lang.Comparable", "kotlin.Comparable");
    ((HashMap)localObject2).put("java.lang.Enum", "kotlin.Enum");
    ((HashMap)localObject2).put("java.lang.annotation.Annotation", "kotlin.Annotation");
    ((HashMap)localObject2).put("java.lang.Iterable", "kotlin.collections.Iterable");
    ((HashMap)localObject2).put("java.util.Iterator", "kotlin.collections.Iterator");
    ((HashMap)localObject2).put("java.util.Collection", "kotlin.collections.Collection");
    ((HashMap)localObject2).put("java.util.List", "kotlin.collections.List");
    ((HashMap)localObject2).put("java.util.Set", "kotlin.collections.Set");
    ((HashMap)localObject2).put("java.util.ListIterator", "kotlin.collections.ListIterator");
    ((HashMap)localObject2).put("java.util.Map", "kotlin.collections.Map");
    ((HashMap)localObject2).put("java.util.Map$Entry", "kotlin.collections.Map.Entry");
    ((HashMap)localObject2).put("kotlin.jvm.internal.StringCompanionObject", "kotlin.String.Companion");
    ((HashMap)localObject2).put("kotlin.jvm.internal.EnumCompanionObject", "kotlin.Enum.Companion");
    ((HashMap)localObject2).putAll((Map)localObject1);
    ((HashMap)localObject2).putAll((Map)localObject3);
    localObject1 = ((HashMap)localObject1).values();
    r.e(localObject1, "primitiveFqNames.values");
    localObject1 = ((Iterable)localObject1).iterator();
    Object localObject4;
    while (((Iterator)localObject1).hasNext())
    {
      localObject3 = (String)((Iterator)localObject1).next();
      localObject4 = new StringBuilder();
      ((StringBuilder)localObject4).append("kotlin.jvm.internal.");
      r.e(localObject3, "kotlinName");
      ((StringBuilder)localObject4).append(kotlin.text.k.F0((String)localObject3, '.', null, 2, null));
      ((StringBuilder)localObject4).append("CompanionObject");
      localObject4 = ((StringBuilder)localObject4).toString();
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append((String)localObject3);
      localStringBuilder.append(".Companion");
      localObject3 = kotlin.k.a(localObject4, localStringBuilder.toString());
      ((Map)localObject2).put(((Pair)localObject3).getFirst(), ((Pair)localObject3).getSecond());
    }
    localObject1 = c.entrySet().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject3 = (Map.Entry)((Iterator)localObject1).next();
      localObject4 = (Class)((Map.Entry)localObject3).getKey();
      i = ((Number)((Map.Entry)localObject3).getValue()).intValue();
      localObject4 = ((Class)localObject4).getName();
      localObject3 = new StringBuilder();
      ((StringBuilder)localObject3).append("kotlin.Function");
      ((StringBuilder)localObject3).append(i);
      ((HashMap)localObject2).put(localObject4, ((StringBuilder)localObject3).toString());
    }
    f = (HashMap)localObject2;
    localObject1 = new LinkedHashMap(m0.e(((Map)localObject2).size()));
    localObject2 = ((Map)localObject2).entrySet().iterator();
    while (((Iterator)localObject2).hasNext())
    {
      localObject3 = (Map.Entry)((Iterator)localObject2).next();
      ((Map)localObject1).put(((Map.Entry)localObject3).getKey(), kotlin.text.k.F0((String)((Map.Entry)localObject3).getValue(), '.', null, 2, null));
    }
    g = (Map)localObject1;
  }
  
  public m(Class<?> paramClass)
  {
    this.a = paramClass;
  }
  
  private final Void o()
  {
    throw new KotlinReflectionNotSupportedError();
  }
  
  public String b()
  {
    return b.a(d());
  }
  
  public Class<?> d()
  {
    return this.a;
  }
  
  public List<kotlin.reflect.p> e()
  {
    o();
    throw new KotlinNothingValueException();
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool;
    if (((paramObject instanceof m)) && (r.a(v7.a.c(this), v7.a.c((kotlin.reflect.d)paramObject)))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public int hashCode()
  {
    return v7.a.c(this).hashCode();
  }
  
  public String i()
  {
    return b.b(d());
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(d().toString());
    localStringBuilder.append(" (Kotlin reflection is not available)");
    return localStringBuilder.toString();
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lkotlin/jvm/internal/m$a;", "", "Ljava/lang/Class;", "jClass", "", "b", "a", "", "Lkotlin/c;", "", "FUNCTION_CLASSES", "Ljava/util/Map;", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "classFqNames", "Ljava/util/HashMap;", "primitiveFqNames", "primitiveWrapperFqNames", "simpleNames", "<init>", "()V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  public static final class a
  {
    public final String a(Class<?> paramClass)
    {
      r.f(paramClass, "jClass");
      boolean bool = paramClass.isAnonymousClass();
      Object localObject1 = null;
      Object localObject2 = null;
      if (bool)
      {
        localObject2 = localObject1;
      }
      else if (paramClass.isLocalClass())
      {
        localObject2 = localObject1;
      }
      else if (paramClass.isArray())
      {
        localObject1 = paramClass.getComponentType();
        paramClass = (Class<?>)localObject2;
        if (((Class)localObject1).isPrimitive())
        {
          localObject1 = (String)m.k().get(((Class)localObject1).getName());
          paramClass = (Class<?>)localObject2;
          if (localObject1 != null)
          {
            paramClass = new StringBuilder();
            paramClass.append((String)localObject1);
            paramClass.append("Array");
            paramClass = paramClass.toString();
          }
        }
        localObject2 = paramClass;
        if (paramClass == null) {
          localObject2 = "kotlin.Array";
        }
      }
      else
      {
        localObject1 = (String)m.k().get(paramClass.getName());
        localObject2 = localObject1;
        if (localObject1 == null) {
          localObject2 = paramClass.getCanonicalName();
        }
      }
      return localObject2;
    }
    
    public final String b(Class<?> paramClass)
    {
      r.f(paramClass, "jClass");
      boolean bool = paramClass.isAnonymousClass();
      Object localObject1 = "Array";
      Object localObject2 = null;
      Object localObject3 = null;
      if (bool) {
        localObject2 = localObject3;
      }
      for (;;)
      {
        break;
        if (paramClass.isLocalClass())
        {
          localObject3 = paramClass.getSimpleName();
          localObject2 = paramClass.getEnclosingMethod();
          if (localObject2 != null)
          {
            r.e(localObject3, "name");
            localObject1 = new StringBuilder();
            ((StringBuilder)localObject1).append(((Method)localObject2).getName());
            ((StringBuilder)localObject1).append('$');
            localObject1 = kotlin.text.k.D0((String)localObject3, ((StringBuilder)localObject1).toString(), null, 2, null);
            localObject2 = localObject1;
            if (localObject1 != null) {
              break;
            }
          }
          else
          {
            localObject2 = paramClass.getEnclosingConstructor();
            if (localObject2 != null)
            {
              r.e(localObject3, "name");
              paramClass = new StringBuilder();
              paramClass.append(((Constructor)localObject2).getName());
              paramClass.append('$');
              localObject2 = kotlin.text.k.D0((String)localObject3, paramClass.toString(), null, 2, null);
            }
            else
            {
              r.e(localObject3, "name");
              localObject2 = kotlin.text.k.C0((String)localObject3, '$', null, 2, null);
            }
          }
        }
        else if (paramClass.isArray())
        {
          localObject3 = paramClass.getComponentType();
          paramClass = (Class<?>)localObject2;
          if (((Class)localObject3).isPrimitive())
          {
            localObject3 = (String)m.n().get(((Class)localObject3).getName());
            paramClass = (Class<?>)localObject2;
            if (localObject3 != null)
            {
              paramClass = new StringBuilder();
              paramClass.append((String)localObject3);
              paramClass.append("Array");
              paramClass = paramClass.toString();
            }
          }
          localObject2 = paramClass;
          if (paramClass == null) {
            localObject2 = localObject1;
          }
        }
        else
        {
          localObject1 = (String)m.n().get(paramClass.getName());
          localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = paramClass.getSimpleName();
          }
        }
      }
      return localObject2;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.jvm.internal.m
 * JD-Core Version:    0.7.0.1
 */
package v7;

import java.lang.annotation.Annotation;
import kotlin.Metadata;
import kotlin.jvm.internal.l;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.v;
import kotlin.reflect.d;

@Metadata(bv={}, d1={""}, d2={"T", "Lkotlin/reflect/d;", "Ljava/lang/Class;", "b", "(Lkotlin/reflect/d;)Ljava/lang/Class;", "getJavaClass$annotations", "(Lkotlin/reflect/d;)V", "java", "", "d", "javaPrimitiveType", "c", "javaObjectType", "e", "(Ljava/lang/Class;)Lkotlin/reflect/d;", "kotlin", "", "a", "(Ljava/lang/annotation/Annotation;)Lkotlin/reflect/d;", "annotationClass", "kotlin-stdlib"}, k=2, mv={1, 7, 1})
public final class a
{
  public static final <T extends Annotation> d<? extends T> a(T paramT)
  {
    r.f(paramT, "<this>");
    paramT = paramT.annotationType();
    r.e(paramT, "this as java.lang.annota…otation).annotationType()");
    paramT = e(paramT);
    r.d(paramT, "null cannot be cast to non-null type kotlin.reflect.KClass<out T of kotlin.jvm.JvmClassMappingKt.<get-annotationClass>>");
    return paramT;
  }
  
  public static final <T> Class<T> b(d<T> paramd)
  {
    r.f(paramd, "<this>");
    paramd = ((l)paramd).d();
    r.d(paramd, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-java>>");
    return paramd;
  }
  
  public static final <T> Class<T> c(d<T> paramd)
  {
    r.f(paramd, "<this>");
    paramd = ((l)paramd).d();
    if (!paramd.isPrimitive())
    {
      r.d(paramd, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-javaObjectType>>");
      return paramd;
    }
    String str = paramd.getName();
    switch (str.hashCode())
    {
    default: 
      break;
    case 109413500: 
      if (str.equals("short")) {
        paramd = Short.class;
      }
      break;
    case 97526364: 
      if (str.equals("float")) {
        paramd = Float.class;
      }
      break;
    case 64711720: 
      if (str.equals("boolean")) {
        paramd = Boolean.class;
      }
      break;
    case 3625364: 
      if (str.equals("void")) {
        paramd = Void.class;
      }
      break;
    case 3327612: 
      if (str.equals("long")) {
        paramd = Long.class;
      }
      break;
    case 3052374: 
      if (str.equals("char")) {
        paramd = Character.class;
      }
      break;
    case 3039496: 
      if (str.equals("byte")) {
        paramd = Byte.class;
      }
      break;
    case 104431: 
      if (str.equals("int")) {
        paramd = Integer.class;
      }
      break;
    case -1325958191: 
      if (str.equals("double")) {
        paramd = Double.class;
      }
      break;
    }
    r.d(paramd, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-javaObjectType>>");
    return paramd;
  }
  
  public static final <T> Class<T> d(d<T> paramd)
  {
    r.f(paramd, "<this>");
    paramd = ((l)paramd).d();
    if (paramd.isPrimitive())
    {
      r.d(paramd, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-javaPrimitiveType>>");
      return paramd;
    }
    paramd = paramd.getName();
    switch (paramd.hashCode())
    {
    default: 
      break;
    case 761287205: 
      if (paramd.equals("java.lang.Double")) {
        paramd = Double.TYPE;
      }
      break;
    case 399092968: 
      if (paramd.equals("java.lang.Void")) {
        paramd = Void.TYPE;
      }
      break;
    case 398795216: 
      if (paramd.equals("java.lang.Long")) {
        paramd = Long.TYPE;
      }
      break;
    case 398507100: 
      if (paramd.equals("java.lang.Byte")) {
        paramd = Byte.TYPE;
      }
      break;
    case 344809556: 
      if (paramd.equals("java.lang.Boolean")) {
        paramd = Boolean.TYPE;
      }
      break;
    case 155276373: 
      if (paramd.equals("java.lang.Character")) {
        paramd = Character.TYPE;
      }
      break;
    case -515992664: 
      if (paramd.equals("java.lang.Short")) {
        paramd = Short.TYPE;
      }
      break;
    case -527879800: 
      if (paramd.equals("java.lang.Float")) {
        paramd = Float.TYPE;
      }
      break;
    case -2056817302: 
      if (paramd.equals("java.lang.Integer")) {
        paramd = Integer.TYPE;
      }
      break;
    }
    paramd = null;
    return paramd;
  }
  
  public static final <T> d<T> e(Class<T> paramClass)
  {
    r.f(paramClass, "<this>");
    return v.b(paramClass);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     v7.a
 * JD-Core Version:    0.7.0.1
 */
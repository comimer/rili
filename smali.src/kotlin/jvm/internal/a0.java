package kotlin.jvm.internal;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import w7.h;
import w7.i;
import w7.j;
import w7.k;
import w7.l;
import w7.m;
import w7.n;
import w7.o;
import w7.q;
import w7.s;
import w7.t;
import w7.u;
import w7.v;
import w7.w;

public class a0
{
  public static Collection a(Object paramObject)
  {
    if (((paramObject instanceof x7.a)) && (!(paramObject instanceof x7.b))) {
      r(paramObject, "kotlin.collections.MutableCollection");
    }
    return h(paramObject);
  }
  
  public static Iterable b(Object paramObject)
  {
    if (((paramObject instanceof x7.a)) && (!(paramObject instanceof x7.c))) {
      r(paramObject, "kotlin.collections.MutableIterable");
    }
    return i(paramObject);
  }
  
  public static Iterator c(Object paramObject)
  {
    if (((paramObject instanceof x7.a)) && (!(paramObject instanceof x7.d))) {
      r(paramObject, "kotlin.collections.MutableIterator");
    }
    return j(paramObject);
  }
  
  public static List d(Object paramObject)
  {
    if (((paramObject instanceof x7.a)) && (!(paramObject instanceof x7.e))) {
      r(paramObject, "kotlin.collections.MutableList");
    }
    return k(paramObject);
  }
  
  public static Map e(Object paramObject)
  {
    if (((paramObject instanceof x7.a)) && (!(paramObject instanceof x7.f))) {
      r(paramObject, "kotlin.collections.MutableMap");
    }
    return l(paramObject);
  }
  
  public static Set f(Object paramObject)
  {
    if (((paramObject instanceof x7.a)) && (!(paramObject instanceof x7.g))) {
      r(paramObject, "kotlin.collections.MutableSet");
    }
    return m(paramObject);
  }
  
  public static Object g(Object paramObject, int paramInt)
  {
    if ((paramObject != null) && (!o(paramObject, paramInt)))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("kotlin.jvm.functions.Function");
      localStringBuilder.append(paramInt);
      r(paramObject, localStringBuilder.toString());
    }
    return paramObject;
  }
  
  public static Collection h(Object paramObject)
  {
    try
    {
      paramObject = (Collection)paramObject;
      return paramObject;
    }
    catch (ClassCastException paramObject)
    {
      throw q(paramObject);
    }
  }
  
  public static Iterable i(Object paramObject)
  {
    try
    {
      paramObject = (Iterable)paramObject;
      return paramObject;
    }
    catch (ClassCastException paramObject)
    {
      throw q(paramObject);
    }
  }
  
  public static Iterator j(Object paramObject)
  {
    try
    {
      paramObject = (Iterator)paramObject;
      return paramObject;
    }
    catch (ClassCastException paramObject)
    {
      throw q(paramObject);
    }
  }
  
  public static List k(Object paramObject)
  {
    try
    {
      paramObject = (List)paramObject;
      return paramObject;
    }
    catch (ClassCastException paramObject)
    {
      throw q(paramObject);
    }
  }
  
  public static Map l(Object paramObject)
  {
    try
    {
      paramObject = (Map)paramObject;
      return paramObject;
    }
    catch (ClassCastException paramObject)
    {
      throw q(paramObject);
    }
  }
  
  public static Set m(Object paramObject)
  {
    try
    {
      paramObject = (Set)paramObject;
      return paramObject;
    }
    catch (ClassCastException paramObject)
    {
      throw q(paramObject);
    }
  }
  
  public static int n(Object paramObject)
  {
    if ((paramObject instanceof p)) {
      return ((p)paramObject).getArity();
    }
    if ((paramObject instanceof w7.a)) {
      return 0;
    }
    if ((paramObject instanceof l)) {
      return 1;
    }
    if ((paramObject instanceof w7.p)) {
      return 2;
    }
    if ((paramObject instanceof q)) {
      return 3;
    }
    if ((paramObject instanceof w7.r)) {
      return 4;
    }
    if ((paramObject instanceof s)) {
      return 5;
    }
    if ((paramObject instanceof t)) {
      return 6;
    }
    if ((paramObject instanceof u)) {
      return 7;
    }
    if ((paramObject instanceof v)) {
      return 8;
    }
    if ((paramObject instanceof w)) {
      return 9;
    }
    if ((paramObject instanceof w7.b)) {
      return 10;
    }
    if ((paramObject instanceof w7.c)) {
      return 11;
    }
    if ((paramObject instanceof w7.d)) {
      return 12;
    }
    if ((paramObject instanceof w7.e)) {
      return 13;
    }
    if ((paramObject instanceof w7.f)) {
      return 14;
    }
    if ((paramObject instanceof w7.g)) {
      return 15;
    }
    if ((paramObject instanceof h)) {
      return 16;
    }
    if ((paramObject instanceof i)) {
      return 17;
    }
    if ((paramObject instanceof j)) {
      return 18;
    }
    if ((paramObject instanceof k)) {
      return 19;
    }
    if ((paramObject instanceof m)) {
      return 20;
    }
    if ((paramObject instanceof n)) {
      return 21;
    }
    if ((paramObject instanceof o)) {
      return 22;
    }
    return -1;
  }
  
  public static boolean o(Object paramObject, int paramInt)
  {
    boolean bool;
    if (((paramObject instanceof kotlin.c)) && (n(paramObject) == paramInt)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private static <T extends Throwable> T p(T paramT)
  {
    return r.n(paramT, a0.class.getName());
  }
  
  public static ClassCastException q(ClassCastException paramClassCastException)
  {
    throw ((ClassCastException)p(paramClassCastException));
  }
  
  public static void r(Object paramObject, String paramString)
  {
    if (paramObject == null) {
      paramObject = "null";
    } else {
      paramObject = paramObject.getClass().getName();
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramObject);
    localStringBuilder.append(" cannot be cast to ");
    localStringBuilder.append(paramString);
    s(localStringBuilder.toString());
  }
  
  public static void s(String paramString)
  {
    throw q(new ClassCastException(paramString));
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.jvm.internal.a0
 * JD-Core Version:    0.7.0.1
 */
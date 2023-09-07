package com.miui.calendar.util;

import com.google.gson.Gson;
import java.lang.reflect.Type;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"T", "", "json", "Ljava/lang/Class;", "clazz", "a", "(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;", "Ljava/lang/reflect/Type;", "type", "b", "(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;", "data", "c", "(Ljava/lang/Object;)Ljava/lang/String;", "common_release"}, k=2, mv={1, 7, 1})
public final class x
{
  public static final <T> T a(String paramString, Class<T> paramClass)
  {
    r.f(paramClass, "clazz");
    return new Gson().fromJson(paramString, paramClass);
  }
  
  public static final <T> T b(String paramString, Type paramType)
  {
    r.f(paramType, "type");
    return new Gson().fromJson(paramString, paramType);
  }
  
  public static final <T> String c(T paramT)
  {
    return new Gson().toJson(paramT);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.x
 * JD-Core Version:    0.7.0.1
 */
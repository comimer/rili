package kotlin.reflect;

import java.util.List;
import java.util.Map;
import kotlin.Metadata;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/reflect/c;", "R", "Lkotlin/reflect/b;", "", "", "args", "call", "([Ljava/lang/Object;)Ljava/lang/Object;", "", "Lkotlin/reflect/KParameter;", "callBy", "(Ljava/util/Map;)Ljava/lang/Object;", "", "getName", "()Ljava/lang/String;", "name", "", "getParameters", "()Ljava/util/List;", "parameters", "Lkotlin/reflect/p;", "getReturnType", "()Lkotlin/reflect/p;", "returnType", "Lkotlin/reflect/q;", "getTypeParameters", "getTypeParameters$annotations", "()V", "typeParameters", "Lkotlin/reflect/KVisibility;", "getVisibility", "()Lkotlin/reflect/KVisibility;", "getVisibility$annotations", "visibility", "", "isFinal", "()Z", "isFinal$annotations", "isOpen", "isOpen$annotations", "isAbstract", "isAbstract$annotations", "isSuspend", "isSuspend$annotations", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public abstract interface c<R>
  extends b
{
  public abstract R call(Object... paramVarArgs);
  
  public abstract R callBy(Map<KParameter, ? extends Object> paramMap);
  
  public abstract String getName();
  
  public abstract List<KParameter> getParameters();
  
  public abstract p getReturnType();
  
  public abstract List<q> getTypeParameters();
  
  public abstract KVisibility getVisibility();
  
  public abstract boolean isAbstract();
  
  public abstract boolean isFinal();
  
  public abstract boolean isOpen();
  
  public abstract boolean isSuspend();
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.reflect.c
 * JD-Core Version:    0.7.0.1
 */
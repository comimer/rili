package kotlin.coroutines.jvm.internal;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.Metadata;

@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.TYPE})
@Metadata(bv={}, d1={""}, d2={"Lkotlin/coroutines/jvm/internal/d;", "", "", "v", "()I", "version", "", "f", "()Ljava/lang/String;", "sourceFile", "", "l", "()[I", "lineNumbers", "m", "methodName", "c", "className", "", "localNames", "spilled", "indexToLabel", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public @interface d
{
  String c() default "";
  
  String f() default "";
  
  int[] l() default {};
  
  String m() default "";
  
  int v() default 1;
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.coroutines.jvm.internal.d
 * JD-Core Version:    0.7.0.1
 */
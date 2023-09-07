package kotlin;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.TYPE})
@Metadata(d1={""}, d2={"Lkotlin/Metadata;", "", "kind", "", "metadataVersion", "", "bytecodeVersion", "data1", "", "", "data2", "extraString", "packageName", "extraInt", "bv$annotations", "()V", "bv", "()[I", "d1", "()[Ljava/lang/String;", "d2", "xi$annotations", "xi", "()I", "xs", "()Ljava/lang/String;", "k", "mv", "pn$annotations", "pn", "kotlin-stdlib"}, k=1, mv={1, 7, 1}, xi=48)
public @interface Metadata
{
  int[] bv() default {1, 0, 3};
  
  String[] d1() default {};
  
  String[] d2() default {};
  
  int k() default 1;
  
  int[] mv() default {};
  
  String pn() default "";
  
  int xi() default 0;
  
  String xs() default "";
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.Metadata
 * JD-Core Version:    0.7.0.1
 */
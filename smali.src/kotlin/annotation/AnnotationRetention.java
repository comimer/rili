package kotlin.annotation;

import kotlin.Metadata;

@Metadata(d1={""}, d2={"Lkotlin/annotation/AnnotationRetention;", "", "(Ljava/lang/String;I)V", "SOURCE", "BINARY", "RUNTIME", "kotlin-stdlib"}, k=1, mv={1, 7, 1}, xi=48)
public enum AnnotationRetention
{
  static
  {
    BINARY = new AnnotationRetention("BINARY", 1);
    RUNTIME = new AnnotationRetention("RUNTIME", 2);
  }
  
  private AnnotationRetention() {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.annotation.AnnotationRetention
 * JD-Core Version:    0.7.0.1
 */
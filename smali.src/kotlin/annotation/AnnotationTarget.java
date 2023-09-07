package kotlin.annotation;

import kotlin.Metadata;

@Metadata(d1={""}, d2={"Lkotlin/annotation/AnnotationTarget;", "", "(Ljava/lang/String;I)V", "CLASS", "ANNOTATION_CLASS", "TYPE_PARAMETER", "PROPERTY", "FIELD", "LOCAL_VARIABLE", "VALUE_PARAMETER", "CONSTRUCTOR", "FUNCTION", "PROPERTY_GETTER", "PROPERTY_SETTER", "TYPE", "EXPRESSION", "FILE", "TYPEALIAS", "kotlin-stdlib"}, k=1, mv={1, 7, 1}, xi=48)
public enum AnnotationTarget
{
  static
  {
    ANNOTATION_CLASS = new AnnotationTarget("ANNOTATION_CLASS", 1);
    TYPE_PARAMETER = new AnnotationTarget("TYPE_PARAMETER", 2);
    PROPERTY = new AnnotationTarget("PROPERTY", 3);
    FIELD = new AnnotationTarget("FIELD", 4);
    LOCAL_VARIABLE = new AnnotationTarget("LOCAL_VARIABLE", 5);
    VALUE_PARAMETER = new AnnotationTarget("VALUE_PARAMETER", 6);
    CONSTRUCTOR = new AnnotationTarget("CONSTRUCTOR", 7);
    FUNCTION = new AnnotationTarget("FUNCTION", 8);
    PROPERTY_GETTER = new AnnotationTarget("PROPERTY_GETTER", 9);
    PROPERTY_SETTER = new AnnotationTarget("PROPERTY_SETTER", 10);
    TYPE = new AnnotationTarget("TYPE", 11);
    EXPRESSION = new AnnotationTarget("EXPRESSION", 12);
    FILE = new AnnotationTarget("FILE", 13);
    TYPEALIAS = new AnnotationTarget("TYPEALIAS", 14);
  }
  
  private AnnotationTarget() {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.annotation.AnnotationTarget
 * JD-Core Version:    0.7.0.1
 */
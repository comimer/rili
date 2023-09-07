package kotlin.reflect;

import kotlin.Metadata;

@Metadata(d1={""}, d2={"Lkotlin/reflect/KVisibility;", "", "(Ljava/lang/String;I)V", "PUBLIC", "PROTECTED", "INTERNAL", "PRIVATE", "kotlin-stdlib"}, k=1, mv={1, 7, 1}, xi=48)
public enum KVisibility
{
  static
  {
    PROTECTED = new KVisibility("PROTECTED", 1);
    INTERNAL = new KVisibility("INTERNAL", 2);
    PRIVATE = new KVisibility("PRIVATE", 3);
  }
  
  private KVisibility() {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.reflect.KVisibility
 * JD-Core Version:    0.7.0.1
 */
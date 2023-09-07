package androidx.annotation;

public enum RestrictTo$Scope
{
  static
  {
    Scope localScope1 = new Scope("LIBRARY", 0);
    LIBRARY = localScope1;
    Scope localScope2 = new Scope("LIBRARY_GROUP", 1);
    LIBRARY_GROUP = localScope2;
    Scope localScope3 = new Scope("LIBRARY_GROUP_PREFIX", 2);
    LIBRARY_GROUP_PREFIX = localScope3;
    Scope localScope4 = new Scope("GROUP_ID", 3);
    GROUP_ID = localScope4;
    Scope localScope5 = new Scope("TESTS", 4);
    TESTS = localScope5;
    Scope localScope6 = new Scope("SUBCLASSES", 5);
    SUBCLASSES = localScope6;
    $VALUES = new Scope[] { localScope1, localScope2, localScope3, localScope4, localScope5, localScope6 };
  }
  
  private RestrictTo$Scope() {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.annotation.RestrictTo.Scope
 * JD-Core Version:    0.7.0.1
 */
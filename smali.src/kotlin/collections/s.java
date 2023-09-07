package kotlin.collections;

import kotlin.Metadata;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/collections/s;", "", "", "b", "Z", "brittleContainsOptimizationEnabled", "<init>", "()V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public final class s
{
  public static final s a = new s();
  public static final boolean b;
  
  static
  {
    String str = System.getProperty("kotlin.collections.convert_arg_to_set_in_removeAll");
    boolean bool;
    if (str != null) {
      bool = Boolean.parseBoolean(str);
    } else {
      bool = false;
    }
    b = bool;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.collections.s
 * JD-Core Version:    0.7.0.1
 */
package kotlin.reflect;

import kotlin.Metadata;

@Metadata(d1={""}, d2={"Lkotlin/reflect/KVariance;", "", "(Ljava/lang/String;I)V", "INVARIANT", "IN", "OUT", "kotlin-stdlib"}, k=1, mv={1, 7, 1}, xi=48)
public enum KVariance
{
  static
  {
    IN = new KVariance("IN", 1);
    OUT = new KVariance("OUT", 2);
  }
  
  private KVariance() {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.reflect.KVariance
 * JD-Core Version:    0.7.0.1
 */
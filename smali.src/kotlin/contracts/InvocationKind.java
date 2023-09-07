package kotlin.contracts;

import kotlin.Metadata;

@Metadata(d1={""}, d2={"Lkotlin/contracts/InvocationKind;", "", "(Ljava/lang/String;I)V", "AT_MOST_ONCE", "AT_LEAST_ONCE", "EXACTLY_ONCE", "UNKNOWN", "kotlin-stdlib"}, k=1, mv={1, 7, 1}, xi=48)
public enum InvocationKind
{
  static
  {
    AT_LEAST_ONCE = new InvocationKind("AT_LEAST_ONCE", 1);
    EXACTLY_ONCE = new InvocationKind("EXACTLY_ONCE", 2);
    UNKNOWN = new InvocationKind("UNKNOWN", 3);
  }
  
  private InvocationKind() {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.contracts.InvocationKind
 * JD-Core Version:    0.7.0.1
 */
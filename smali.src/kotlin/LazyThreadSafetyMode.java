package kotlin;

@Metadata(d1={""}, d2={"Lkotlin/LazyThreadSafetyMode;", "", "(Ljava/lang/String;I)V", "SYNCHRONIZED", "PUBLICATION", "NONE", "kotlin-stdlib"}, k=1, mv={1, 7, 1}, xi=48)
public enum LazyThreadSafetyMode
{
  static
  {
    PUBLICATION = new LazyThreadSafetyMode("PUBLICATION", 1);
    NONE = new LazyThreadSafetyMode("NONE", 2);
  }
  
  private LazyThreadSafetyMode() {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.LazyThreadSafetyMode
 * JD-Core Version:    0.7.0.1
 */
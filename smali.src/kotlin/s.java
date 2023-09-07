package kotlin;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/s;", "", "", "j", "(S)Ljava/lang/String;", "", "i", "(S)I", "", "other", "", "h", "(SLjava/lang/Object;)Z", "", "a", "S", "getData$annotations", "()V", "data", "c", "(S)S", "b", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public final class s
  implements Comparable<s>
{
  public static final a b = new a(null);
  private final short a;
  
  public static short c(short paramShort)
  {
    return paramShort;
  }
  
  public static boolean h(short paramShort, Object paramObject)
  {
    if (!(paramObject instanceof s)) {
      return false;
    }
    return paramShort == ((s)paramObject).k();
  }
  
  public static int i(short paramShort)
  {
    return paramShort;
  }
  
  public static String j(short paramShort)
  {
    return String.valueOf(paramShort & 0xFFFF);
  }
  
  public boolean equals(Object paramObject)
  {
    return h(this.a, paramObject);
  }
  
  public int hashCode()
  {
    return i(this.a);
  }
  
  public String toString()
  {
    return j(this.a);
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lkotlin/s$a;", "", "Lkotlin/s;", "MAX_VALUE", "S", "MIN_VALUE", "", "SIZE_BITS", "I", "SIZE_BYTES", "<init>", "()V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  public static final class a {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.s
 * JD-Core Version:    0.7.0.1
 */
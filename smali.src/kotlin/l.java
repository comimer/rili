package kotlin;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/l;", "", "", "j", "(B)Ljava/lang/String;", "", "i", "(B)I", "", "other", "", "h", "(BLjava/lang/Object;)Z", "", "a", "B", "getData$annotations", "()V", "data", "c", "(B)B", "b", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public final class l
  implements Comparable<l>
{
  public static final a b = new a(null);
  private final byte a;
  
  public static byte c(byte paramByte)
  {
    return paramByte;
  }
  
  public static boolean h(byte paramByte, Object paramObject)
  {
    if (!(paramObject instanceof l)) {
      return false;
    }
    return paramByte == ((l)paramObject).k();
  }
  
  public static int i(byte paramByte)
  {
    return paramByte;
  }
  
  public static String j(byte paramByte)
  {
    return String.valueOf(paramByte & 0xFF);
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
  
  @Metadata(bv={}, d1={""}, d2={"Lkotlin/l$a;", "", "Lkotlin/l;", "MAX_VALUE", "B", "MIN_VALUE", "", "SIZE_BITS", "I", "SIZE_BYTES", "<init>", "()V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  public static final class a {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.l
 * JD-Core Version:    0.7.0.1
 */
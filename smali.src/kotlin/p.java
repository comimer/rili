package kotlin;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/p;", "", "", "j", "(J)Ljava/lang/String;", "", "i", "(J)I", "", "other", "", "h", "(JLjava/lang/Object;)Z", "", "a", "J", "getData$annotations", "()V", "data", "c", "(J)J", "b", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public final class p
  implements Comparable<p>
{
  public static final a b = new a(null);
  private final long a;
  
  public static long c(long paramLong)
  {
    return paramLong;
  }
  
  public static boolean h(long paramLong, Object paramObject)
  {
    if (!(paramObject instanceof p)) {
      return false;
    }
    return paramLong == ((p)paramObject).k();
  }
  
  public static int i(long paramLong)
  {
    return (int)(paramLong ^ paramLong >>> 32);
  }
  
  public static String j(long paramLong)
  {
    return v.c(paramLong);
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
  
  @Metadata(bv={}, d1={""}, d2={"Lkotlin/p$a;", "", "Lkotlin/p;", "MAX_VALUE", "J", "MIN_VALUE", "", "SIZE_BITS", "I", "SIZE_BYTES", "<init>", "()V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  public static final class a {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.p
 * JD-Core Version:    0.7.0.1
 */
package kotlin;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/n;", "", "", "j", "(I)Ljava/lang/String;", "", "i", "(I)I", "", "other", "", "h", "(ILjava/lang/Object;)Z", "a", "I", "getData$annotations", "()V", "data", "c", "b", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public final class n
  implements Comparable<n>
{
  public static final a b = new a(null);
  private final int a;
  
  public static int c(int paramInt)
  {
    return paramInt;
  }
  
  public static boolean h(int paramInt, Object paramObject)
  {
    if (!(paramObject instanceof n)) {
      return false;
    }
    return paramInt == ((n)paramObject).k();
  }
  
  public static int i(int paramInt)
  {
    return paramInt;
  }
  
  public static String j(int paramInt)
  {
    return String.valueOf(paramInt & 0xFFFFFFFF);
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
  
  @Metadata(bv={}, d1={""}, d2={"Lkotlin/n$a;", "", "Lkotlin/n;", "MAX_VALUE", "I", "MIN_VALUE", "", "SIZE_BITS", "SIZE_BYTES", "<init>", "()V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  public static final class a {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.n
 * JD-Core Version:    0.7.0.1
 */
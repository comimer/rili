package n;

class c
{
  static final int[] a = new int[0];
  static final long[] b = new long[0];
  static final Object[] c = new Object[0];
  
  static int a(int[] paramArrayOfInt, int paramInt1, int paramInt2)
  {
    paramInt1--;
    int i = 0;
    while (i <= paramInt1)
    {
      int j = i + paramInt1 >>> 1;
      int k = paramArrayOfInt[j];
      if (k < paramInt2) {
        i = j + 1;
      } else if (k > paramInt2) {
        paramInt1 = j - 1;
      } else {
        return j;
      }
    }
    return i;
  }
  
  static int b(long[] paramArrayOfLong, int paramInt, long paramLong)
  {
    paramInt--;
    int i = 0;
    while (i <= paramInt)
    {
      int j = i + paramInt >>> 1;
      boolean bool = paramArrayOfLong[j] < paramLong;
      if (bool) {
        i = j + 1;
      } else if (bool) {
        paramInt = j - 1;
      } else {
        return j;
      }
    }
    return i;
  }
  
  public static boolean c(Object paramObject1, Object paramObject2)
  {
    boolean bool;
    if ((paramObject1 != paramObject2) && ((paramObject1 == null) || (!paramObject1.equals(paramObject2)))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public static int d(int paramInt)
  {
    for (int i = 4; i < 32; i++)
    {
      int j = (1 << i) - 12;
      if (paramInt <= j) {
        return j;
      }
    }
    return paramInt;
  }
  
  public static int e(int paramInt)
  {
    return d(paramInt * 4) / 4;
  }
  
  public static int f(int paramInt)
  {
    return d(paramInt * 8) / 8;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     n.c
 * JD-Core Version:    0.7.0.1
 */
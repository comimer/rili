package androidx.core.util;

import java.util.Locale;

public final class h
{
  public static void a(boolean paramBoolean)
  {
    if (paramBoolean) {
      return;
    }
    throw new IllegalArgumentException();
  }
  
  public static void b(boolean paramBoolean, Object paramObject)
  {
    if (paramBoolean) {
      return;
    }
    throw new IllegalArgumentException(String.valueOf(paramObject));
  }
  
  public static int c(int paramInt1, int paramInt2, int paramInt3, String paramString)
  {
    if (paramInt1 >= paramInt2)
    {
      if (paramInt1 <= paramInt3) {
        return paramInt1;
      }
      throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%d, %d] (too high)", new Object[] { paramString, Integer.valueOf(paramInt2), Integer.valueOf(paramInt3) }));
    }
    throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%d, %d] (too low)", new Object[] { paramString, Integer.valueOf(paramInt2), Integer.valueOf(paramInt3) }));
  }
  
  public static int d(int paramInt)
  {
    if (paramInt >= 0) {
      return paramInt;
    }
    throw new IllegalArgumentException();
  }
  
  public static int e(int paramInt, String paramString)
  {
    if (paramInt >= 0) {
      return paramInt;
    }
    throw new IllegalArgumentException(paramString);
  }
  
  public static int f(int paramInt1, int paramInt2)
  {
    if ((paramInt1 & paramInt2) == paramInt1) {
      return paramInt1;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Requested flags 0x");
    localStringBuilder.append(Integer.toHexString(paramInt1));
    localStringBuilder.append(", but only 0x");
    localStringBuilder.append(Integer.toHexString(paramInt2));
    localStringBuilder.append(" are allowed");
    throw new IllegalArgumentException(localStringBuilder.toString());
  }
  
  public static <T> T g(T paramT)
  {
    paramT.getClass();
    return paramT;
  }
  
  public static <T> T h(T paramT, Object paramObject)
  {
    if (paramT != null) {
      return paramT;
    }
    throw new NullPointerException(String.valueOf(paramObject));
  }
  
  public static void i(boolean paramBoolean, String paramString)
  {
    if (paramBoolean) {
      return;
    }
    throw new IllegalStateException(paramString);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.util.h
 * JD-Core Version:    0.7.0.1
 */
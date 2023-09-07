package androidx.work;

import android.util.Log;

public abstract class k
{
  private static k a;
  private static final int b = 20;
  
  public k(int paramInt) {}
  
  public static k c()
  {
    try
    {
      if (a == null)
      {
        localObject1 = new androidx/work/k$a;
        ((a)localObject1).<init>(3);
        a = (k)localObject1;
      }
      Object localObject1 = a;
      return localObject1;
    }
    finally {}
  }
  
  public static void e(k paramk)
  {
    try
    {
      a = paramk;
      return;
    }
    finally
    {
      paramk = finally;
      throw paramk;
    }
  }
  
  public static String f(String paramString)
  {
    int i = paramString.length();
    StringBuilder localStringBuilder = new StringBuilder(23);
    localStringBuilder.append("WM-");
    int j = b;
    if (i >= j) {
      localStringBuilder.append(paramString.substring(0, j));
    } else {
      localStringBuilder.append(paramString);
    }
    return localStringBuilder.toString();
  }
  
  public abstract void a(String paramString1, String paramString2, Throwable... paramVarArgs);
  
  public abstract void b(String paramString1, String paramString2, Throwable... paramVarArgs);
  
  public abstract void d(String paramString1, String paramString2, Throwable... paramVarArgs);
  
  public abstract void g(String paramString1, String paramString2, Throwable... paramVarArgs);
  
  public abstract void h(String paramString1, String paramString2, Throwable... paramVarArgs);
  
  public static class a
    extends k
  {
    private int c;
    
    public a(int paramInt)
    {
      super();
      this.c = paramInt;
    }
    
    public void a(String paramString1, String paramString2, Throwable... paramVarArgs)
    {
      if (this.c <= 3) {
        if ((paramVarArgs != null) && (paramVarArgs.length >= 1)) {
          Log.d(paramString1, paramString2, paramVarArgs[0]);
        } else {
          Log.d(paramString1, paramString2);
        }
      }
    }
    
    public void b(String paramString1, String paramString2, Throwable... paramVarArgs)
    {
      if (this.c <= 6) {
        if ((paramVarArgs != null) && (paramVarArgs.length >= 1)) {
          Log.e(paramString1, paramString2, paramVarArgs[0]);
        } else {
          Log.e(paramString1, paramString2);
        }
      }
    }
    
    public void d(String paramString1, String paramString2, Throwable... paramVarArgs)
    {
      if (this.c <= 4) {
        if ((paramVarArgs != null) && (paramVarArgs.length >= 1)) {
          Log.i(paramString1, paramString2, paramVarArgs[0]);
        } else {
          Log.i(paramString1, paramString2);
        }
      }
    }
    
    public void g(String paramString1, String paramString2, Throwable... paramVarArgs)
    {
      if (this.c <= 2) {
        if ((paramVarArgs != null) && (paramVarArgs.length >= 1)) {
          Log.v(paramString1, paramString2, paramVarArgs[0]);
        } else {
          Log.v(paramString1, paramString2);
        }
      }
    }
    
    public void h(String paramString1, String paramString2, Throwable... paramVarArgs)
    {
      if (this.c <= 5) {
        if ((paramVarArgs != null) && (paramVarArgs.length >= 1)) {
          Log.w(paramString1, paramString2, paramVarArgs[0]);
        } else {
          Log.w(paramString1, paramString2);
        }
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.k
 * JD-Core Version:    0.7.0.1
 */
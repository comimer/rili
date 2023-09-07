package androidx.core.graphics;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import androidx.core.content.res.e.c;
import androidx.core.provider.g.b;
import java.util.concurrent.ConcurrentHashMap;

class l
{
  @SuppressLint({"BanConcurrentHashMap"})
  private ConcurrentHashMap<Long, e.c> a = new ConcurrentHashMap();
  
  private static <T> T d(T[] paramArrayOfT, int paramInt, b<T> paramb)
  {
    int i;
    if ((paramInt & 0x1) == 0) {
      i = 400;
    } else {
      i = 700;
    }
    int j;
    if ((paramInt & 0x2) != 0) {
      j = 1;
    } else {
      j = 0;
    }
    Object localObject = null;
    int k = 2147483647;
    int m = paramArrayOfT.length;
    paramInt = 0;
    while (paramInt < m)
    {
      T ? = paramArrayOfT[paramInt];
      int n = Math.abs(paramb.a(?) - i);
      int i1;
      if (paramb.b(?) == j) {
        i1 = 0;
      } else {
        i1 = 1;
      }
      n = n * 2 + i1;
      if (localObject != null)
      {
        i1 = k;
        if (k <= n) {}
      }
      else
      {
        localObject = ?;
        i1 = n;
      }
      paramInt++;
      k = i1;
    }
    return localObject;
  }
  
  public Typeface a(Context paramContext, e.c paramc, Resources paramResources, int paramInt)
  {
    throw null;
  }
  
  public Typeface b(Context paramContext, CancellationSignal paramCancellationSignal, g.b[] paramArrayOfb, int paramInt)
  {
    throw null;
  }
  
  /* Error */
  public Typeface c(Context paramContext, Resources paramResources, int paramInt1, java.lang.String paramString, int paramInt2)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 53	androidx/core/graphics/m:d	(Landroid/content/Context;)Ljava/io/File;
    //   4: astore_1
    //   5: aload_1
    //   6: ifnonnull +5 -> 11
    //   9: aconst_null
    //   10: areturn
    //   11: aload_1
    //   12: aload_2
    //   13: iload_3
    //   14: invokestatic 56	androidx/core/graphics/m:b	(Ljava/io/File;Landroid/content/res/Resources;I)Z
    //   17: istore 6
    //   19: iload 6
    //   21: ifne +10 -> 31
    //   24: aload_1
    //   25: invokevirtual 62	java/io/File:delete	()Z
    //   28: pop
    //   29: aconst_null
    //   30: areturn
    //   31: aload_1
    //   32: invokevirtual 66	java/io/File:getPath	()Ljava/lang/String;
    //   35: invokestatic 72	android/graphics/Typeface:createFromFile	(Ljava/lang/String;)Landroid/graphics/Typeface;
    //   38: astore_2
    //   39: aload_1
    //   40: invokevirtual 62	java/io/File:delete	()Z
    //   43: pop
    //   44: aload_2
    //   45: areturn
    //   46: astore_2
    //   47: aload_1
    //   48: invokevirtual 62	java/io/File:delete	()Z
    //   51: pop
    //   52: aload_2
    //   53: athrow
    //   54: astore_2
    //   55: aload_1
    //   56: invokevirtual 62	java/io/File:delete	()Z
    //   59: pop
    //   60: aconst_null
    //   61: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	62	0	this	l
    //   0	62	1	paramContext	Context
    //   0	62	2	paramResources	Resources
    //   0	62	3	paramInt1	int
    //   0	62	4	paramString	java.lang.String
    //   0	62	5	paramInt2	int
    //   17	3	6	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   11	19	46	finally
    //   31	39	46	finally
    //   11	19	54	java/lang/RuntimeException
    //   31	39	54	java/lang/RuntimeException
  }
  
  protected g.b e(g.b[] paramArrayOfb, int paramInt)
  {
    return (g.b)d(paramArrayOfb, paramInt, new a());
  }
  
  class a
    implements l.b<g.b>
  {
    a() {}
    
    public int c(g.b paramb)
    {
      return paramb.e();
    }
    
    public boolean d(g.b paramb)
    {
      return paramb.f();
    }
  }
  
  private static abstract interface b<T>
  {
    public abstract int a(T paramT);
    
    public abstract boolean b(T paramT);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.graphics.l
 * JD-Core Version:    0.7.0.1
 */
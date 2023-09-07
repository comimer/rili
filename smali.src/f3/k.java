package f3;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.os.Handler;
import android.os.Looper;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;
import r2.l;

public final class k
{
  private static final char[] a = "0123456789abcdef".toCharArray();
  private static final char[] b = new char[64];
  private static volatile Handler c;
  
  public static void a()
  {
    if (r()) {
      return;
    }
    throw new IllegalArgumentException("You must call this method on the main thread");
  }
  
  public static boolean b(Object paramObject1, Object paramObject2)
  {
    if (paramObject1 == null)
    {
      boolean bool;
      if (paramObject2 == null) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    if ((paramObject1 instanceof l)) {
      return ((l)paramObject1).a(paramObject2);
    }
    return paramObject1.equals(paramObject2);
  }
  
  public static boolean c(Object paramObject1, Object paramObject2)
  {
    boolean bool;
    if (paramObject1 == null)
    {
      if (paramObject2 == null) {
        bool = true;
      } else {
        bool = false;
      }
    }
    else {
      bool = paramObject1.equals(paramObject2);
    }
    return bool;
  }
  
  private static String d(byte[] paramArrayOfByte, char[] paramArrayOfChar)
  {
    for (int i = 0; i < paramArrayOfByte.length; i++)
    {
      int j = paramArrayOfByte[i] & 0xFF;
      int k = i * 2;
      char[] arrayOfChar = a;
      paramArrayOfChar[k] = ((char)arrayOfChar[(j >>> 4)]);
      paramArrayOfChar[(k + 1)] = ((char)arrayOfChar[(j & 0xF)]);
    }
    return new String(paramArrayOfChar);
  }
  
  public static <T> Queue<T> e(int paramInt)
  {
    return new ArrayDeque(paramInt);
  }
  
  public static int f(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    return paramInt1 * paramInt2 * h(paramConfig);
  }
  
  @TargetApi(19)
  public static int g(Bitmap paramBitmap)
  {
    if (!paramBitmap.isRecycled()) {
      try
      {
        int i = paramBitmap.getAllocationByteCount();
        return i;
      }
      catch (NullPointerException localNullPointerException)
      {
        return paramBitmap.getHeight() * paramBitmap.getRowBytes();
      }
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Cannot obtain size for recycled Bitmap: ");
    localStringBuilder.append(paramBitmap);
    localStringBuilder.append("[");
    localStringBuilder.append(paramBitmap.getWidth());
    localStringBuilder.append("x");
    localStringBuilder.append(paramBitmap.getHeight());
    localStringBuilder.append("] ");
    localStringBuilder.append(paramBitmap.getConfig());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  private static int h(Bitmap.Config paramConfig)
  {
    Bitmap.Config localConfig = paramConfig;
    if (paramConfig == null) {
      localConfig = Bitmap.Config.ARGB_8888;
    }
    int i = a.a[localConfig.ordinal()];
    int j = 4;
    if (i != 1)
    {
      if ((i != 2) && (i != 3))
      {
        if (i == 4) {
          j = 8;
        }
      }
      else {
        j = 2;
      }
    }
    else {
      j = 1;
    }
    return j;
  }
  
  public static <T> List<T> i(Collection<T> paramCollection)
  {
    ArrayList localArrayList = new ArrayList(paramCollection.size());
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext())
    {
      paramCollection = localIterator.next();
      if (paramCollection != null) {
        localArrayList.add(paramCollection);
      }
    }
    return localArrayList;
  }
  
  private static Handler j()
  {
    if (c == null) {
      try
      {
        if (c == null)
        {
          Handler localHandler = new android/os/Handler;
          localHandler.<init>(Looper.getMainLooper());
          c = localHandler;
        }
      }
      finally {}
    }
    return c;
  }
  
  public static int k(float paramFloat)
  {
    return l(paramFloat, 17);
  }
  
  public static int l(float paramFloat, int paramInt)
  {
    return n(Float.floatToIntBits(paramFloat), paramInt);
  }
  
  public static int m(int paramInt)
  {
    return n(paramInt, 17);
  }
  
  public static int n(int paramInt1, int paramInt2)
  {
    return paramInt2 * 31 + paramInt1;
  }
  
  public static int o(Object paramObject, int paramInt)
  {
    int i;
    if (paramObject == null) {
      i = 0;
    } else {
      i = paramObject.hashCode();
    }
    return n(i, paramInt);
  }
  
  public static int p(boolean paramBoolean, int paramInt)
  {
    return n(paramBoolean, paramInt);
  }
  
  public static boolean q()
  {
    return r() ^ true;
  }
  
  public static boolean r()
  {
    boolean bool;
    if (Looper.myLooper() == Looper.getMainLooper()) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private static boolean s(int paramInt)
  {
    boolean bool;
    if ((paramInt <= 0) && (paramInt != -2147483648)) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public static boolean t(int paramInt1, int paramInt2)
  {
    boolean bool;
    if ((s(paramInt1)) && (s(paramInt2))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static void u(Runnable paramRunnable)
  {
    j().post(paramRunnable);
  }
  
  public static void v(Runnable paramRunnable)
  {
    j().removeCallbacks(paramRunnable);
  }
  
  public static String w(byte[] paramArrayOfByte)
  {
    synchronized (b)
    {
      paramArrayOfByte = d(paramArrayOfByte, ???);
      return paramArrayOfByte;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     f3.k
 * JD-Core Version:    0.7.0.1
 */
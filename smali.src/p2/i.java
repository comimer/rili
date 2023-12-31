package p2;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.content.res.Resources;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;

public final class i
{
  private final int a;
  private final int b;
  private final Context c;
  private final int d;
  
  i(a parama)
  {
    this.c = parama.a;
    int i;
    if (e(parama.b)) {
      i = parama.h / 2;
    } else {
      i = parama.h;
    }
    this.d = i;
    int j = c(parama.b, parama.f, parama.g);
    float f1 = parama.c.b() * parama.c.a() * 4;
    int k = Math.round(parama.e * f1);
    int m = Math.round(f1 * parama.d);
    int n = j - i;
    int i1 = m + k;
    if (i1 <= n)
    {
      this.b = m;
      this.a = k;
    }
    else
    {
      float f2 = n;
      float f3 = parama.e;
      f1 = parama.d;
      f2 /= (f3 + f1);
      this.b = Math.round(f1 * f2);
      this.a = Math.round(f2 * parama.e);
    }
    if (Log.isLoggable("MemorySizeCalculator", 3))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Calculation complete, Calculated memory cache size: ");
      localStringBuilder.append(f(this.b));
      localStringBuilder.append(", pool size: ");
      localStringBuilder.append(f(this.a));
      localStringBuilder.append(", byte array size: ");
      localStringBuilder.append(f(i));
      localStringBuilder.append(", memory class limited? ");
      boolean bool;
      if (i1 > j) {
        bool = true;
      } else {
        bool = false;
      }
      localStringBuilder.append(bool);
      localStringBuilder.append(", max size: ");
      localStringBuilder.append(f(j));
      localStringBuilder.append(", memoryClass: ");
      localStringBuilder.append(parama.b.getMemoryClass());
      localStringBuilder.append(", isLowMemoryDevice: ");
      localStringBuilder.append(e(parama.b));
      Log.d("MemorySizeCalculator", localStringBuilder.toString());
    }
  }
  
  private static int c(ActivityManager paramActivityManager, float paramFloat1, float paramFloat2)
  {
    int i = paramActivityManager.getMemoryClass();
    boolean bool = e(paramActivityManager);
    float f = i * 1024 * 1024;
    if (bool) {
      paramFloat1 = paramFloat2;
    }
    return Math.round(f * paramFloat1);
  }
  
  @TargetApi(19)
  static boolean e(ActivityManager paramActivityManager)
  {
    return paramActivityManager.isLowRamDevice();
  }
  
  private String f(int paramInt)
  {
    return Formatter.formatFileSize(this.c, paramInt);
  }
  
  public int a()
  {
    return this.d;
  }
  
  public int b()
  {
    return this.a;
  }
  
  public int d()
  {
    return this.b;
  }
  
  public static final class a
  {
    static final int i = 1;
    final Context a;
    ActivityManager b;
    i.c c;
    float d = 2.0F;
    float e = i;
    float f = 0.4F;
    float g = 0.33F;
    int h = 4194304;
    
    public a(Context paramContext)
    {
      this.a = paramContext;
      this.b = ((ActivityManager)paramContext.getSystemService("activity"));
      this.c = new i.b(paramContext.getResources().getDisplayMetrics());
      if (i.e(this.b)) {
        this.e = 0.0F;
      }
    }
    
    public i a()
    {
      return new i(this);
    }
  }
  
  private static final class b
    implements i.c
  {
    private final DisplayMetrics a;
    
    b(DisplayMetrics paramDisplayMetrics)
    {
      this.a = paramDisplayMetrics;
    }
    
    public int a()
    {
      return this.a.heightPixels;
    }
    
    public int b()
    {
      return this.a.widthPixels;
    }
  }
  
  static abstract interface c
  {
    public abstract int a();
    
    public abstract int b();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     p2.i
 * JD-Core Version:    0.7.0.1
 */
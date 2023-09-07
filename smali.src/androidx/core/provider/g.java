package androidx.core.provider;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.Handler;
import androidx.core.util.h;

public class g
{
  public static Typeface a(Context paramContext, CancellationSignal paramCancellationSignal, b[] paramArrayOfb)
  {
    return androidx.core.graphics.g.b(paramContext, paramCancellationSignal, paramArrayOfb, 0);
  }
  
  public static a b(Context paramContext, CancellationSignal paramCancellationSignal, e parame)
    throws PackageManager.NameNotFoundException
  {
    return d.e(paramContext, parame, paramCancellationSignal);
  }
  
  public static Typeface c(Context paramContext, e parame, int paramInt1, boolean paramBoolean, int paramInt2, Handler paramHandler, c paramc)
  {
    paramHandler = new a(paramc, paramHandler);
    if (paramBoolean) {
      return f.e(paramContext, parame, paramHandler, paramInt1, paramInt2);
    }
    return f.d(paramContext, parame, paramInt1, null, paramHandler);
  }
  
  public static class a
  {
    private final int a;
    private final g.b[] b;
    
    @Deprecated
    public a(int paramInt, g.b[] paramArrayOfb)
    {
      this.a = paramInt;
      this.b = paramArrayOfb;
    }
    
    static a a(int paramInt, g.b[] paramArrayOfb)
    {
      return new a(paramInt, paramArrayOfb);
    }
    
    public g.b[] b()
    {
      return this.b;
    }
    
    public int c()
    {
      return this.a;
    }
  }
  
  public static class b
  {
    private final Uri a;
    private final int b;
    private final int c;
    private final boolean d;
    private final int e;
    
    @Deprecated
    public b(Uri paramUri, int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3)
    {
      this.a = ((Uri)h.g(paramUri));
      this.b = paramInt1;
      this.c = paramInt2;
      this.d = paramBoolean;
      this.e = paramInt3;
    }
    
    static b a(Uri paramUri, int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3)
    {
      return new b(paramUri, paramInt1, paramInt2, paramBoolean, paramInt3);
    }
    
    public int b()
    {
      return this.e;
    }
    
    public int c()
    {
      return this.b;
    }
    
    public Uri d()
    {
      return this.a;
    }
    
    public int e()
    {
      return this.c;
    }
    
    public boolean f()
    {
      return this.d;
    }
  }
  
  public static class c
  {
    public void a(int paramInt)
    {
      throw null;
    }
    
    public void b(Typeface paramTypeface)
    {
      throw null;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.provider.g
 * JD-Core Version:    0.7.0.1
 */
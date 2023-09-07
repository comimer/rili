package androidx.core.provider;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.Typeface;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

class f
{
  static final n.e<String, Typeface> a = new n.e(16);
  private static final ExecutorService b = h.a("fonts-androidx", 10, 10000);
  static final Object c = new Object();
  static final n.g<String, ArrayList<androidx.core.util.a<e>>> d = new n.g();
  
  private static String a(e parame, int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(parame.d());
    localStringBuilder.append("-");
    localStringBuilder.append(paramInt);
    return localStringBuilder.toString();
  }
  
  @SuppressLint({"WrongConstant"})
  private static int b(g.a parama)
  {
    int i = parama.c();
    int j = -3;
    int k = 1;
    if (i != 0)
    {
      if (parama.c() != 1) {
        return -3;
      }
      return -2;
    }
    parama = parama.b();
    i = k;
    if (parama != null) {
      if (parama.length == 0)
      {
        i = k;
      }
      else
      {
        int m = parama.length;
        int n = 0;
        for (k = 0;; k++)
        {
          i = n;
          if (k >= m) {
            break;
          }
          i = parama[k].b();
          if (i != 0)
          {
            if (i < 0) {
              k = j;
            } else {
              k = i;
            }
            return k;
          }
        }
      }
    }
    return i;
  }
  
  static e c(String paramString, Context paramContext, e parame, int paramInt)
  {
    n.e locale = a;
    Typeface localTypeface = (Typeface)locale.c(paramString);
    if (localTypeface != null) {
      return new e(localTypeface);
    }
    try
    {
      parame = d.e(paramContext, parame, null);
      int i = b(parame);
      if (i != 0) {
        return new e(i);
      }
      paramContext = androidx.core.graphics.g.b(paramContext, null, parame.b(), paramInt);
      if (paramContext != null)
      {
        locale.d(paramString, paramContext);
        return new e(paramContext);
      }
      return new e(-3);
    }
    catch (PackageManager.NameNotFoundException paramString) {}
    return new e(-1);
  }
  
  static Typeface d(final Context paramContext, final e parame, final int paramInt, Executor paramExecutor, a arg4)
  {
    String str = a(parame, paramInt);
    Object localObject = (Typeface)a.c(str);
    if (localObject != null)
    {
      ???.b(new e((Typeface)localObject));
      return localObject;
    }
    b localb = new b(???);
    synchronized (c)
    {
      localObject = d;
      ArrayList localArrayList = (ArrayList)((n.g)localObject).get(str);
      if (localArrayList != null)
      {
        localArrayList.add(localb);
        return null;
      }
      localArrayList = new java/util/ArrayList;
      localArrayList.<init>();
      localArrayList.add(localb);
      ((n.g)localObject).put(str, localArrayList);
      parame = new c(str, paramContext, parame, paramInt);
      paramContext = paramExecutor;
      if (paramExecutor == null) {
        paramContext = b;
      }
      h.b(paramContext, parame, new d(str));
      return null;
    }
  }
  
  static Typeface e(final Context paramContext, final e parame, a parama, final int paramInt1, int paramInt2)
  {
    String str = a(parame, paramInt1);
    Typeface localTypeface = (Typeface)a.c(str);
    if (localTypeface != null)
    {
      parama.b(new e(localTypeface));
      return localTypeface;
    }
    if (paramInt2 == -1)
    {
      paramContext = c(str, paramContext, parame, paramInt1);
      parama.b(paramContext);
      return paramContext.a;
    }
    paramContext = new a(str, paramContext, parame, paramInt1);
    try
    {
      paramContext = (e)h.c(b, paramContext, paramInt2);
      parama.b(paramContext);
      paramContext = paramContext.a;
      return paramContext;
    }
    catch (InterruptedException paramContext)
    {
      parama.b(new e(-3));
    }
    return null;
  }
  
  class a
    implements Callable<f.e>
  {
    a(Context paramContext, e parame, int paramInt) {}
    
    public f.e a()
    {
      return f.c(f.this, paramContext, parame, paramInt1);
    }
  }
  
  class b
    implements androidx.core.util.a<f.e>
  {
    b() {}
    
    public void a(f.e parame)
    {
      f.e locale = parame;
      if (parame == null) {
        locale = new f.e(-3);
      }
      f.this.b(locale);
    }
  }
  
  class c
    implements Callable<f.e>
  {
    c(Context paramContext, e parame, int paramInt) {}
    
    public f.e a()
    {
      try
      {
        f.e locale = f.c(f.this, paramContext, parame, paramInt);
        return locale;
      }
      finally {}
      return new f.e(-3);
    }
  }
  
  class d
    implements androidx.core.util.a<f.e>
  {
    d() {}
    
    public void a(f.e parame)
    {
      synchronized (f.c)
      {
        n.g localg = f.d;
        ArrayList localArrayList = (ArrayList)localg.get(f.this);
        if (localArrayList == null) {
          return;
        }
        localg.remove(f.this);
        for (int i = 0; i < localArrayList.size(); i++) {
          ((androidx.core.util.a)localArrayList.get(i)).accept(parame);
        }
        return;
      }
    }
  }
  
  static final class e
  {
    final Typeface a;
    final int b;
    
    e(int paramInt)
    {
      this.a = null;
      this.b = paramInt;
    }
    
    @SuppressLint({"WrongConstant"})
    e(Typeface paramTypeface)
    {
      this.a = paramTypeface;
      this.b = 0;
    }
    
    @SuppressLint({"WrongConstant"})
    boolean a()
    {
      boolean bool;
      if (this.b == 0) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.provider.f
 * JD-Core Version:    0.7.0.1
 */
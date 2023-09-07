package androidx.emoji2.text;

import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.database.ContentObserver;
import android.graphics.Typeface;
import android.os.Handler;
import androidx.core.graphics.m;
import androidx.core.provider.e;
import androidx.core.provider.g.a;
import androidx.core.provider.g.b;
import androidx.core.util.h;
import java.nio.ByteBuffer;
import java.util.concurrent.Executor;
import java.util.concurrent.ThreadPoolExecutor;

public class i
  extends d.c
{
  private static final a j = new a();
  
  public i(Context paramContext, e parame)
  {
    super(new b(paramContext, parame, j));
  }
  
  public i c(Executor paramExecutor)
  {
    ((b)a()).f(paramExecutor);
    return this;
  }
  
  public static class a
  {
    public Typeface a(Context paramContext, g.b paramb)
      throws PackageManager.NameNotFoundException
    {
      return androidx.core.provider.g.a(paramContext, null, new g.b[] { paramb });
    }
    
    public g.a b(Context paramContext, e parame)
      throws PackageManager.NameNotFoundException
    {
      return androidx.core.provider.g.b(paramContext, null, parame);
    }
    
    public void c(Context paramContext, ContentObserver paramContentObserver)
    {
      paramContext.getContentResolver().unregisterContentObserver(paramContentObserver);
    }
  }
  
  private static class b
    implements d.g
  {
    private final Context a;
    private final e b;
    private final i.a c;
    private final Object d = new Object();
    private Handler e;
    private Executor f;
    private ThreadPoolExecutor g;
    d.h h;
    private ContentObserver i;
    private Runnable j;
    
    b(Context paramContext, e parame, i.a parama)
    {
      h.h(paramContext, "Context cannot be null");
      h.h(parame, "FontRequest cannot be null");
      this.a = paramContext.getApplicationContext();
      this.b = parame;
      this.c = parama;
    }
    
    private void b()
    {
      synchronized (this.d)
      {
        this.h = null;
        Object localObject2 = this.i;
        if (localObject2 != null)
        {
          this.c.c(this.a, (ContentObserver)localObject2);
          this.i = null;
        }
        localObject2 = this.e;
        if (localObject2 != null) {
          ((Handler)localObject2).removeCallbacks(this.j);
        }
        this.e = null;
        localObject2 = this.g;
        if (localObject2 != null) {
          ((ThreadPoolExecutor)localObject2).shutdown();
        }
        this.f = null;
        this.g = null;
        return;
      }
    }
    
    private g.b e()
    {
      try
      {
        Object localObject = this.c.b(this.a, this.b);
        if (((g.a)localObject).c() == 0)
        {
          localObject = ((g.a)localObject).b();
          if ((localObject != null) && (localObject.length != 0)) {
            return localObject[0];
          }
          throw new RuntimeException("fetchFonts failed (empty result)");
        }
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("fetchFonts failed (");
        localStringBuilder.append(((g.a)localObject).c());
        localStringBuilder.append(")");
        throw new RuntimeException(localStringBuilder.toString());
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        throw new RuntimeException("provider not found", localNameNotFoundException);
      }
    }
    
    public void a(d.h paramh)
    {
      h.h(paramh, "LoaderCallback cannot be null");
      synchronized (this.d)
      {
        this.h = paramh;
        d();
        return;
      }
    }
    
    void c()
    {
      synchronized (this.d)
      {
        if (this.h == null) {
          return;
        }
        try
        {
          ??? = e();
          int k = ((g.b)???).b();
          if (k == 2) {
            for (;;)
            {
              synchronized (this.d) {}
              localb = finally;
            }
          }
          if (k == 0) {
            try
            {
              androidx.core.os.g.a("EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface");
              ??? = this.c.a(this.a, localb);
              Object localObject2 = m.e(this.a, null, localb.d());
              if ((localObject2 != null) && (??? != null))
              {
                localObject2 = l.b((Typeface)???, (ByteBuffer)localObject2);
                androidx.core.os.g.b();
                synchronized (this.d)
                {
                  localh = this.h;
                  if (localh != null) {
                    localh.b((l)localObject2);
                  }
                  b();
                }
              }
              ??? = new java/lang/RuntimeException;
              ((RuntimeException)???).<init>("Unable to open file.");
              throw ((Throwable)???);
            }
            finally
            {
              androidx.core.os.g.b();
            }
          }
          RuntimeException localRuntimeException = new java/lang/RuntimeException;
          ??? = new java/lang/StringBuilder;
          ((StringBuilder)???).<init>();
          ((StringBuilder)???).append("fetchFonts result is not OK. (");
          ((StringBuilder)???).append(k);
          ((StringBuilder)???).append(")");
          localRuntimeException.<init>(((StringBuilder)???).toString());
          throw localRuntimeException;
        }
        finally
        {
          synchronized (this.d)
          {
            d.h localh = this.h;
            if (localh != null) {
              localh.a(localThrowable);
            }
            b();
            return;
          }
        }
      }
    }
    
    void d()
    {
      synchronized (this.d)
      {
        if (this.h == null) {
          return;
        }
        if (this.f == null)
        {
          localObject2 = b.b("emojiCompat");
          this.g = ((ThreadPoolExecutor)localObject2);
          this.f = ((Executor)localObject2);
        }
        Executor localExecutor = this.f;
        Object localObject2 = new androidx/emoji2/text/j;
        ((j)localObject2).<init>(this);
        localExecutor.execute((Runnable)localObject2);
        return;
      }
    }
    
    public void f(Executor paramExecutor)
    {
      synchronized (this.d)
      {
        this.f = paramExecutor;
        return;
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.emoji2.text.i
 * JD-Core Version:    0.7.0.1
 */
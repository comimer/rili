package com.android.calendar.syncer;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.d;
import kotlin.text.k;
import kotlin.u;
import okhttp3.a0;
import okhttp3.b0;
import okhttp3.e;
import okhttp3.n;
import okhttp3.v;
import okhttp3.x;
import okhttp3.y.a;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/b;", "Ljava/lang/Runnable;", "Lkotlin/u;", "a", "c", "b", "run", "Ljava/io/InputStream;", "data", "Lokhttp3/v;", "contentType", "", "eTag", "", "lastModified", "g", "(Ljava/io/InputStream;Lokhttp3/v;Ljava/lang/String;Ljava/lang/Long;)V", "", "httpCode", "Ljava/net/URL;", "target", "f", "Ljava/lang/Exception;", "Lkotlin/Exception;", "error", "e", "Landroid/content/Context;", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "context", "Landroid/net/Uri;", "Landroid/net/Uri;", "d", "()Landroid/net/Uri;", "setUrl", "(Landroid/net/Uri;)V", "url", "I", "redirectCount", "Ljava/lang/Long;", "getIfModifiedSince", "()Ljava/lang/Long;", "h", "(Ljava/lang/Long;)V", "ifModifiedSince", "Ljava/lang/String;", "getIfNoneMatch", "()Ljava/lang/String;", "i", "(Ljava/lang/String;)V", "ifNoneMatch", "getUsername", "l", "username", "getPassword", "k", "password", "", "Z", "getInForeground", "()Z", "j", "(Z)V", "inForeground", "<init>", "(Landroid/content/Context;Landroid/net/Uri;)V", "syncer_release"}, k=1, mv={1, 7, 1})
public class b
  implements Runnable
{
  public static final a i = new a(null);
  private final Context a;
  private Uri b;
  private int c;
  private Long d;
  private String e;
  private String f;
  private String g;
  private boolean h;
  
  public b(Context paramContext, Uri paramUri)
  {
    this.a = paramContext;
    this.b = paramUri;
  }
  
  /* Error */
  private final void a()
  {
    // Byte code:
    //   0: new 105	java/io/File
    //   3: astore_1
    //   4: aload_1
    //   5: aload_0
    //   6: getfield 101	com/android/calendar/syncer/b:b	Landroid/net/Uri;
    //   9: invokevirtual 110	android/net/Uri:getPath	()Ljava/lang/String;
    //   12: invokestatic 116	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   15: invokespecial 118	java/io/File:<init>	(Ljava/lang/String;)V
    //   18: aload_0
    //   19: getfield 120	com/android/calendar/syncer/b:d	Ljava/lang/Long;
    //   22: astore_2
    //   23: aload_2
    //   24: ifnull +26 -> 50
    //   27: aload_2
    //   28: invokevirtual 126	java/lang/Number:longValue	()J
    //   31: lstore_3
    //   32: aload_1
    //   33: invokevirtual 128	java/io/File:lastModified	()J
    //   36: lload_3
    //   37: lcmp
    //   38: ifgt +12 -> 50
    //   41: aload_0
    //   42: sipush 304
    //   45: aconst_null
    //   46: invokevirtual 131	com/android/calendar/syncer/b:f	(ILjava/net/URL;)V
    //   49: return
    //   50: new 133	java/io/FileInputStream
    //   53: astore_2
    //   54: aload_2
    //   55: aload_1
    //   56: invokespecial 136	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   59: aload_0
    //   60: aload_2
    //   61: aconst_null
    //   62: aconst_null
    //   63: aload_1
    //   64: invokevirtual 128	java/io/File:lastModified	()J
    //   67: invokestatic 141	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   70: invokevirtual 143	com/android/calendar/syncer/b:g	(Ljava/io/InputStream;Lokhttp3/v;Ljava/lang/String;Ljava/lang/Long;)V
    //   73: getstatic 147	kotlin/u:a	Lkotlin/u;
    //   76: astore_1
    //   77: aload_2
    //   78: aconst_null
    //   79: invokestatic 152	kotlin/io/a:a	(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    //   82: goto +22 -> 104
    //   85: astore_1
    //   86: aload_1
    //   87: athrow
    //   88: astore 5
    //   90: aload_2
    //   91: aload_1
    //   92: invokestatic 152	kotlin/io/a:a	(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    //   95: aload 5
    //   97: athrow
    //   98: astore_2
    //   99: aload_0
    //   100: aload_2
    //   101: invokevirtual 155	com/android/calendar/syncer/b:e	(Ljava/lang/Exception;)V
    //   104: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	105	0	this	b
    //   3	74	1	localObject1	Object
    //   85	7	1	localThrowable	Throwable
    //   22	69	2	localObject2	Object
    //   98	3	2	localException	Exception
    //   31	6	3	l	long
    //   88	8	5	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   59	77	85	finally
    //   86	88	88	finally
    //   0	23	98	java/lang/Exception
    //   27	49	98	java/lang/Exception
    //   50	59	98	java/lang/Exception
    //   77	82	98	java/lang/Exception
    //   90	98	98	java/lang/Exception
  }
  
  private final void b()
  {
    try
    {
      Object localObject1 = new okhttp3/y$a;
      ((y.a)localObject1).<init>();
      localObject1 = ((y.a)localObject1).a("Accept", "text/calendar, */*;q=0.9");
      Object localObject2 = this.b.toString();
      r.e(localObject2, "url.toString()");
      localObject1 = ((y.a)localObject1).l((String)localObject2);
      Object localObject3 = this.f;
      if ((localObject3 != null) && (this.g != null))
      {
        r.c(localObject3);
        localObject2 = this.g;
        r.c(localObject2);
        ((y.a)localObject1).a("Authorization", n.a((String)localObject3, (String)localObject2, d.b));
      }
      localObject2 = this.d;
      if (localObject2 != null)
      {
        long l = ((Number)localObject2).longValue();
        localObject2 = new java/util/Date;
        ((Date)localObject2).<init>(l);
        localObject2 = com.android.calendar.syncer.net.a.a((Date)localObject2);
        r.e(localObject2, "format(Date(it))");
        ((y.a)localObject1).a("If-Modified-Since", (String)localObject2);
      }
      localObject2 = this.e;
      if (localObject2 != null) {
        ((y.a)localObject1).a("If-None-Match", (String)localObject2);
      }
      localObject2 = com.android.calendar.syncer.net.b.d.a(this.a).c().a(((y.a)localObject1).b()).s();
      try
      {
        Object localObject5;
        if (((a0)localObject2).isSuccessful())
        {
          localObject1 = ((a0)localObject2).c();
          if (localObject1 != null)
          {
            localObject3 = ((b0)localObject1).c();
            v localv = ((b0)localObject1).q();
            localObject5 = a0.z((a0)localObject2, "ETag", null, 2, null);
            localObject1 = a0.z((a0)localObject2, "Last-Modified", null, 2, null);
            if (localObject1 != null)
            {
              localObject1 = com.android.calendar.syncer.net.a.b((String)localObject1);
              if (localObject1 != null)
              {
                localObject1 = Long.valueOf(((Date)localObject1).getTime());
                break label244;
              }
            }
            localObject1 = null;
            label244:
            g((InputStream)localObject3, localv, (String)localObject5, (Long)localObject1);
            localObject1 = u.a;
          }
        }
        else
        {
          if ((!((a0)localObject2).V()) && (((a0)localObject2).m() != 304))
          {
            localObject3 = new java/io/IOException;
            localObject1 = new java/lang/StringBuilder;
            ((StringBuilder)localObject1).<init>();
            ((StringBuilder)localObject1).append("HTTP ");
            ((StringBuilder)localObject1).append(((a0)localObject2).m());
            ((StringBuilder)localObject1).append(' ');
            ((StringBuilder)localObject1).append(((a0)localObject2).W());
            ((IOException)localObject3).<init>(((StringBuilder)localObject1).toString());
            throw ((Throwable)localObject3);
          }
          int j = ((a0)localObject2).m();
          localObject3 = a0.z((a0)localObject2, "Location", null, 2, null);
          if (localObject3 != null)
          {
            localObject1 = new java/net/URL;
            localObject5 = new java/net/URL;
            ((URL)localObject5).<init>(this.b.toString());
            ((URL)localObject1).<init>((URL)localObject5, (String)localObject3);
          }
          else
          {
            localObject1 = null;
          }
          f(j, (URL)localObject1);
          localObject1 = u.a;
        }
        kotlin.io.a.a((Closeable)localObject2, null);
      }
      finally
      {
        try
        {
          throw localThrowable;
        }
        finally
        {
          kotlin.io.a.a((Closeable)localObject2, localThrowable);
        }
      }
      return;
    }
    catch (Exception localException)
    {
      e(localException);
    }
  }
  
  private final void c()
  {
    InputStream localInputStream = this.a.getContentResolver().openInputStream(this.b);
    if (localInputStream != null)
    {
      g(localInputStream, null, null, null);
      return;
    }
    throw new IOException("read input stream failed.");
  }
  
  public final Uri d()
  {
    return this.b;
  }
  
  public void e(Exception paramException)
  {
    throw null;
  }
  
  public void f(int paramInt, URL paramURL)
  {
    if (paramURL != null)
    {
      paramURL = paramURL.toString();
      if (paramURL != null)
      {
        paramURL = Uri.parse(paramURL);
        r.e(paramURL, "parse(urlString)");
        this.b = paramURL;
        paramInt = this.c + 1;
        this.c = paramInt;
        if (paramInt < 5) {
          b();
        } else {
          e(new IOException("More than 5 redirect"));
        }
      }
    }
  }
  
  public void g(InputStream paramInputStream, v paramv, String paramString, Long paramLong)
  {
    throw null;
  }
  
  public final void h(Long paramLong)
  {
    this.d = paramLong;
  }
  
  public final void i(String paramString)
  {
    this.e = paramString;
  }
  
  public final void j(boolean paramBoolean)
  {
    this.h = paramBoolean;
  }
  
  public final void k(String paramString)
  {
    this.g = paramString;
  }
  
  public final void l(String paramString)
  {
    this.f = paramString;
  }
  
  public void run()
  {
    if (k.p(this.b.getScheme(), "file", true)) {
      a();
    } else if (k.p(this.b.getScheme(), "content", true)) {
      c();
    } else {
      b();
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/b$a;", "", "", "MAX_REDIRECT_COUNT", "I", "", "MIME_CALENDAR_OR_OTHER", "Ljava/lang/String;", "<init>", "()V", "syncer_release"}, k=1, mv={1, 7, 1})
  public static final class a {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.syncer.b
 * JD-Core Version:    0.7.0.1
 */
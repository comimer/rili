package l2;

import android.annotation.TargetApi;
import android.os.StrictMode;
import android.os.StrictMode.ThreadPolicy;
import android.os.StrictMode.ThreadPolicy.Builder;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.io.Writer;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class a
  implements Closeable
{
  private final File a;
  private final File b;
  private final File c;
  private final File d;
  private final int e;
  private long f;
  private final int g;
  private long h = 0L;
  private Writer i;
  private final LinkedHashMap<String, d> j = new LinkedHashMap(0, 0.75F, true);
  private int k;
  private long l = 0L;
  final ThreadPoolExecutor m = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new b(null));
  private final Callable<Void> n = new a();
  
  private a(File paramFile, int paramInt1, int paramInt2, long paramLong)
  {
    this.a = paramFile;
    this.e = paramInt1;
    this.b = new File(paramFile, "journal");
    this.c = new File(paramFile, "journal.tmp");
    this.d = new File(paramFile, "journal.bkp");
    this.g = paramInt2;
    this.f = paramLong;
  }
  
  @TargetApi(26)
  private static void E(Writer paramWriter)
    throws IOException
  {
    StrictMode.ThreadPolicy localThreadPolicy = StrictMode.getThreadPolicy();
    StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(localThreadPolicy).permitUnbufferedIo().build());
    try
    {
      paramWriter.close();
      return;
    }
    finally
    {
      StrictMode.setThreadPolicy(localThreadPolicy);
    }
  }
  
  private void H(c paramc, boolean paramBoolean)
    throws IOException
  {
    try
    {
      Object localObject = c.c(paramc);
      if (d.g((d)localObject) == paramc)
      {
        int i1 = 0;
        int i2 = i1;
        if (paramBoolean)
        {
          i2 = i1;
          if (!d.e((d)localObject))
          {
            for (int i3 = 0;; i3++)
            {
              i2 = i1;
              if (i3 >= this.g) {
                break label128;
              }
              if (c.d(paramc)[i3] == 0) {
                break;
              }
              if (!((d)localObject).k(i3).exists())
              {
                paramc.a();
                return;
              }
            }
            paramc.a();
            paramc = new java/lang/IllegalStateException;
            localObject = new java/lang/StringBuilder;
            ((StringBuilder)localObject).<init>();
            ((StringBuilder)localObject).append("Newly created entry didn't create value for index ");
            ((StringBuilder)localObject).append(i3);
            paramc.<init>(((StringBuilder)localObject).toString());
            throw paramc;
          }
        }
        label128:
        long l2;
        while (i2 < this.g)
        {
          File localFile = ((d)localObject).k(i2);
          if (paramBoolean)
          {
            if (localFile.exists())
            {
              paramc = ((d)localObject).j(i2);
              localFile.renameTo(paramc);
              long l1 = d.a(localObject)[i2];
              l2 = paramc.length();
              d.a((d)localObject)[i2] = l2;
              this.h = (this.h - l1 + l2);
            }
          }
          else {
            W(localFile);
          }
          i2++;
        }
        this.k += 1;
        d.h((d)localObject, null);
        if ((d.e((d)localObject) | paramBoolean))
        {
          d.f((d)localObject, true);
          this.i.append("CLEAN");
          this.i.append(' ');
          this.i.append(d.b((d)localObject));
          this.i.append(((d)localObject).l());
          this.i.append('\n');
          if (paramBoolean)
          {
            l2 = this.l;
            this.l = (1L + l2);
            d.d((d)localObject, l2);
          }
        }
        else
        {
          this.j.remove(d.b((d)localObject));
          this.i.append("REMOVE");
          this.i.append(' ');
          this.i.append(d.b((d)localObject));
          this.i.append('\n');
        }
        c0(this.i);
        if ((this.h > this.f) || (h0())) {
          this.m.submit(this.n);
        }
        return;
      }
      paramc = new java/lang/IllegalStateException;
      paramc.<init>();
      throw paramc;
    }
    finally {}
  }
  
  private static void W(File paramFile)
    throws IOException
  {
    if ((paramFile.exists()) && (!paramFile.delete())) {
      throw new IOException();
    }
  }
  
  private c a0(String paramString, long paramLong)
    throws IOException
  {
    try
    {
      z();
      d locald = (d)this.j.get(paramString);
      if (paramLong != -1L) {
        if (locald != null)
        {
          long l1 = d.c(locald);
          if (l1 == paramLong) {}
        }
        else
        {
          return null;
        }
      }
      if (locald == null)
      {
        locald = new l2/a$d;
        locald.<init>(this, paramString, null);
        this.j.put(paramString, locald);
      }
      else
      {
        localc = d.g(locald);
        if (localc != null) {
          return null;
        }
      }
      c localc = new l2/a$c;
      localc.<init>(this, locald, null);
      d.h(locald, localc);
      this.i.append("DIRTY");
      this.i.append(' ');
      this.i.append(paramString);
      this.i.append('\n');
      c0(this.i);
      return localc;
    }
    finally {}
  }
  
  @TargetApi(26)
  private static void c0(Writer paramWriter)
    throws IOException
  {
    StrictMode.ThreadPolicy localThreadPolicy = StrictMode.getThreadPolicy();
    StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(localThreadPolicy).permitUnbufferedIo().build());
    try
    {
      paramWriter.flush();
      return;
    }
    finally
    {
      StrictMode.setThreadPolicy(localThreadPolicy);
    }
  }
  
  private boolean h0()
  {
    int i1 = this.k;
    boolean bool;
    if ((i1 >= 2000) && (i1 >= this.j.size())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static a i0(File paramFile, int paramInt1, int paramInt2, long paramLong)
    throws IOException
  {
    if (paramLong > 0L)
    {
      if (paramInt2 > 0)
      {
        Object localObject1 = new File(paramFile, "journal.bkp");
        if (((File)localObject1).exists())
        {
          localObject2 = new File(paramFile, "journal");
          if (((File)localObject2).exists()) {
            ((File)localObject1).delete();
          } else {
            t0((File)localObject1, (File)localObject2, false);
          }
        }
        Object localObject2 = new a(paramFile, paramInt1, paramInt2, paramLong);
        if (((a)localObject2).b.exists()) {
          try
          {
            ((a)localObject2).p0();
            ((a)localObject2).l0();
            return localObject2;
          }
          catch (IOException localIOException)
          {
            PrintStream localPrintStream = System.out;
            localObject1 = new StringBuilder();
            ((StringBuilder)localObject1).append("DiskLruCache ");
            ((StringBuilder)localObject1).append(paramFile);
            ((StringBuilder)localObject1).append(" is corrupt: ");
            ((StringBuilder)localObject1).append(localIOException.getMessage());
            ((StringBuilder)localObject1).append(", removing");
            localPrintStream.println(((StringBuilder)localObject1).toString());
            ((a)localObject2).V();
          }
        }
        paramFile.mkdirs();
        paramFile = new a(paramFile, paramInt1, paramInt2, paramLong);
        paramFile.r0();
        return paramFile;
      }
      throw new IllegalArgumentException("valueCount <= 0");
    }
    throw new IllegalArgumentException("maxSize <= 0");
  }
  
  private void l0()
    throws IOException
  {
    W(this.c);
    Iterator localIterator = this.j.values().iterator();
    while (localIterator.hasNext())
    {
      d locald = (d)localIterator.next();
      c localc = d.g(locald);
      int i1 = 0;
      int i2 = 0;
      if (localc == null)
      {
        while (i2 < this.g)
        {
          this.h += d.a(locald)[i2];
          i2++;
        }
      }
      else
      {
        d.h(locald, null);
        for (i2 = i1; i2 < this.g; i2++)
        {
          W(locald.j(i2));
          W(locald.k(i2));
        }
        localIterator.remove();
      }
    }
  }
  
  private void p0()
    throws IOException
  {
    b localb = new b(new FileInputStream(this.b), c.a);
    try
    {
      String str1 = localb.j();
      String str2 = localb.j();
      Object localObject2 = localb.j();
      Object localObject3 = localb.j();
      Object localObject4 = localb.j();
      FileOutputStream localFileOutputStream;
      if (("libcore.io.DiskLruCache".equals(str1)) && ("1".equals(str2)) && (Integer.toString(this.e).equals(localObject2)) && (Integer.toString(this.g).equals(localObject3)))
      {
        boolean bool = "".equals(localObject4);
        if (bool)
        {
          int i1 = 0;
          try
          {
            for (;;)
            {
              q0(localb.j());
              i1++;
            }
            localObject2 = new java/io/IOException;
          }
          catch (EOFException localEOFException)
          {
            this.k = (i1 - this.j.size());
            if (localb.e())
            {
              r0();
            }
            else
            {
              localObject4 = new java/io/BufferedWriter;
              localObject3 = new java/io/OutputStreamWriter;
              localFileOutputStream = new java/io/FileOutputStream;
              localFileOutputStream.<init>(this.b, true);
              ((OutputStreamWriter)localObject3).<init>(localFileOutputStream, c.a);
              ((BufferedWriter)localObject4).<init>((Writer)localObject3);
              this.i = ((Writer)localObject4);
            }
            return;
          }
        }
      }
      StringBuilder localStringBuilder = new java/lang/StringBuilder;
      localStringBuilder.<init>();
      localStringBuilder.append("unexpected journal header: [");
      localStringBuilder.append(localFileOutputStream);
      localStringBuilder.append(", ");
      localStringBuilder.append(str2);
      localStringBuilder.append(", ");
      localStringBuilder.append((String)localObject3);
      localStringBuilder.append(", ");
      localStringBuilder.append((String)localObject4);
      localStringBuilder.append("]");
      ((IOException)localObject2).<init>(localStringBuilder.toString());
      throw ((Throwable)localObject2);
    }
    finally
    {
      c.a(localb);
    }
  }
  
  private void q0(String paramString)
    throws IOException
  {
    int i1 = paramString.indexOf(' ');
    if (i1 != -1)
    {
      int i2 = i1 + 1;
      int i3 = paramString.indexOf(' ', i2);
      if (i3 == -1)
      {
        localObject1 = paramString.substring(i2);
        localObject2 = localObject1;
        if (i1 == 6)
        {
          localObject2 = localObject1;
          if (paramString.startsWith("REMOVE")) {
            this.j.remove(localObject1);
          }
        }
      }
      else
      {
        localObject2 = paramString.substring(i2, i3);
      }
      d locald = (d)this.j.get(localObject2);
      Object localObject1 = locald;
      if (locald == null)
      {
        localObject1 = new d((String)localObject2, null);
        this.j.put(localObject2, localObject1);
      }
      if ((i3 != -1) && (i1 == 5) && (paramString.startsWith("CLEAN")))
      {
        paramString = paramString.substring(i3 + 1).split(" ");
        d.f((d)localObject1, true);
        d.h((d)localObject1, null);
        d.i((d)localObject1, paramString);
      }
      else if ((i3 == -1) && (i1 == 5) && (paramString.startsWith("DIRTY")))
      {
        d.h((d)localObject1, new c((d)localObject1, null));
      }
      else
      {
        if ((i3 != -1) || (i1 != 4) || (!paramString.startsWith("READ"))) {
          break label250;
        }
      }
      return;
      label250:
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("unexpected journal line: ");
      ((StringBuilder)localObject2).append(paramString);
      throw new IOException(((StringBuilder)localObject2).toString());
    }
    Object localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append("unexpected journal line: ");
    ((StringBuilder)localObject2).append(paramString);
    throw new IOException(((StringBuilder)localObject2).toString());
  }
  
  /* Error */
  private void r0()
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 214	l2/a:i	Ljava/io/Writer;
    //   6: astore_1
    //   7: aload_1
    //   8: ifnull +7 -> 15
    //   11: aload_1
    //   12: invokestatic 470	l2/a:E	(Ljava/io/Writer;)V
    //   15: new 414	java/io/BufferedWriter
    //   18: astore_1
    //   19: new 416	java/io/OutputStreamWriter
    //   22: astore_2
    //   23: new 418	java/io/FileOutputStream
    //   26: astore_3
    //   27: aload_3
    //   28: aload_0
    //   29: getfield 99	l2/a:c	Ljava/io/File;
    //   32: invokespecial 471	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   35: aload_2
    //   36: aload_3
    //   37: getstatic 385	l2/c:a	Ljava/nio/charset/Charset;
    //   40: invokespecial 424	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    //   43: aload_1
    //   44: aload_2
    //   45: invokespecial 426	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   48: aload_1
    //   49: ldc_w 392
    //   52: invokevirtual 474	java/io/Writer:write	(Ljava/lang/String;)V
    //   55: aload_1
    //   56: ldc_w 476
    //   59: invokevirtual 474	java/io/Writer:write	(Ljava/lang/String;)V
    //   62: aload_1
    //   63: ldc_w 400
    //   66: invokevirtual 474	java/io/Writer:write	(Ljava/lang/String;)V
    //   69: aload_1
    //   70: ldc_w 476
    //   73: invokevirtual 474	java/io/Writer:write	(Ljava/lang/String;)V
    //   76: aload_1
    //   77: aload_0
    //   78: getfield 86	l2/a:e	I
    //   81: invokestatic 405	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   84: invokevirtual 474	java/io/Writer:write	(Ljava/lang/String;)V
    //   87: aload_1
    //   88: ldc_w 476
    //   91: invokevirtual 474	java/io/Writer:write	(Ljava/lang/String;)V
    //   94: aload_1
    //   95: aload_0
    //   96: getfield 105	l2/a:g	I
    //   99: invokestatic 405	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   102: invokevirtual 474	java/io/Writer:write	(Ljava/lang/String;)V
    //   105: aload_1
    //   106: ldc_w 476
    //   109: invokevirtual 474	java/io/Writer:write	(Ljava/lang/String;)V
    //   112: aload_1
    //   113: ldc_w 476
    //   116: invokevirtual 474	java/io/Writer:write	(Ljava/lang/String;)V
    //   119: aload_0
    //   120: getfield 54	l2/a:j	Ljava/util/LinkedHashMap;
    //   123: invokevirtual 352	java/util/LinkedHashMap:values	()Ljava/util/Collection;
    //   126: invokeinterface 358 1 0
    //   131: astore_2
    //   132: aload_2
    //   133: invokeinterface 363 1 0
    //   138: ifeq +128 -> 266
    //   141: aload_2
    //   142: invokeinterface 367 1 0
    //   147: checkcast 16	l2/a$d
    //   150: astore_3
    //   151: aload_3
    //   152: invokestatic 151	l2/a$d:g	(Ll2/a$d;)Ll2/a$c;
    //   155: ifnull +52 -> 207
    //   158: new 170	java/lang/StringBuilder
    //   161: astore 4
    //   163: aload 4
    //   165: invokespecial 171	java/lang/StringBuilder:<init>	()V
    //   168: aload 4
    //   170: ldc_w 478
    //   173: invokevirtual 177	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   176: pop
    //   177: aload 4
    //   179: aload_3
    //   180: invokestatic 225	l2/a$d:b	(Ll2/a$d;)Ljava/lang/String;
    //   183: invokevirtual 177	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   186: pop
    //   187: aload 4
    //   189: bipush 10
    //   191: invokevirtual 481	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   194: pop
    //   195: aload_1
    //   196: aload 4
    //   198: invokevirtual 184	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   201: invokevirtual 474	java/io/Writer:write	(Ljava/lang/String;)V
    //   204: goto -72 -> 132
    //   207: new 170	java/lang/StringBuilder
    //   210: astore 4
    //   212: aload 4
    //   214: invokespecial 171	java/lang/StringBuilder:<init>	()V
    //   217: aload 4
    //   219: ldc_w 483
    //   222: invokevirtual 177	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   225: pop
    //   226: aload 4
    //   228: aload_3
    //   229: invokestatic 225	l2/a$d:b	(Ll2/a$d;)Ljava/lang/String;
    //   232: invokevirtual 177	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   235: pop
    //   236: aload 4
    //   238: aload_3
    //   239: invokevirtual 227	l2/a$d:l	()Ljava/lang/String;
    //   242: invokevirtual 177	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   245: pop
    //   246: aload 4
    //   248: bipush 10
    //   250: invokevirtual 481	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   253: pop
    //   254: aload_1
    //   255: aload 4
    //   257: invokevirtual 184	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   260: invokevirtual 474	java/io/Writer:write	(Ljava/lang/String;)V
    //   263: goto -131 -> 132
    //   266: aload_1
    //   267: invokestatic 470	l2/a:E	(Ljava/io/Writer;)V
    //   270: aload_0
    //   271: getfield 95	l2/a:b	Ljava/io/File;
    //   274: invokevirtual 164	java/io/File:exists	()Z
    //   277: ifeq +15 -> 292
    //   280: aload_0
    //   281: getfield 95	l2/a:b	Ljava/io/File;
    //   284: aload_0
    //   285: getfield 103	l2/a:d	Ljava/io/File;
    //   288: iconst_1
    //   289: invokestatic 298	l2/a:t0	(Ljava/io/File;Ljava/io/File;Z)V
    //   292: aload_0
    //   293: getfield 99	l2/a:c	Ljava/io/File;
    //   296: aload_0
    //   297: getfield 95	l2/a:b	Ljava/io/File;
    //   300: iconst_0
    //   301: invokestatic 298	l2/a:t0	(Ljava/io/File;Ljava/io/File;Z)V
    //   304: aload_0
    //   305: getfield 103	l2/a:d	Ljava/io/File;
    //   308: invokevirtual 254	java/io/File:delete	()Z
    //   311: pop
    //   312: new 414	java/io/BufferedWriter
    //   315: astore_1
    //   316: new 416	java/io/OutputStreamWriter
    //   319: astore_3
    //   320: new 418	java/io/FileOutputStream
    //   323: astore_2
    //   324: aload_2
    //   325: aload_0
    //   326: getfield 95	l2/a:b	Ljava/io/File;
    //   329: iconst_1
    //   330: invokespecial 421	java/io/FileOutputStream:<init>	(Ljava/io/File;Z)V
    //   333: aload_3
    //   334: aload_2
    //   335: getstatic 385	l2/c:a	Ljava/nio/charset/Charset;
    //   338: invokespecial 424	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    //   341: aload_1
    //   342: aload_3
    //   343: invokespecial 426	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   346: aload_0
    //   347: aload_1
    //   348: putfield 214	l2/a:i	Ljava/io/Writer;
    //   351: aload_0
    //   352: monitorexit
    //   353: return
    //   354: astore_2
    //   355: aload_1
    //   356: invokestatic 470	l2/a:E	(Ljava/io/Writer;)V
    //   359: aload_2
    //   360: athrow
    //   361: astore_1
    //   362: aload_0
    //   363: monitorexit
    //   364: aload_1
    //   365: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	366	0	this	a
    //   6	350	1	localObject1	Object
    //   361	4	1	localObject2	Object
    //   22	313	2	localObject3	Object
    //   354	6	2	localObject4	Object
    //   26	317	3	localObject5	Object
    //   161	95	4	localStringBuilder	StringBuilder
    // Exception table:
    //   from	to	target	type
    //   48	132	354	finally
    //   132	204	354	finally
    //   207	263	354	finally
    //   2	7	361	finally
    //   11	15	361	finally
    //   15	48	361	finally
    //   266	292	361	finally
    //   292	351	361	finally
    //   355	361	361	finally
  }
  
  private static void t0(File paramFile1, File paramFile2, boolean paramBoolean)
    throws IOException
  {
    if (paramBoolean) {
      W(paramFile2);
    }
    if (paramFile1.renameTo(paramFile2)) {
      return;
    }
    throw new IOException();
  }
  
  private void u0()
    throws IOException
  {
    while (this.h > this.f) {
      s0((String)((Map.Entry)this.j.entrySet().iterator().next()).getKey());
    }
  }
  
  private void z()
  {
    if (this.i != null) {
      return;
    }
    throw new IllegalStateException("cache is closed");
  }
  
  public void V()
    throws IOException
  {
    close();
    c.b(this.a);
  }
  
  public c Z(String paramString)
    throws IOException
  {
    return a0(paramString, -1L);
  }
  
  public void close()
    throws IOException
  {
    try
    {
      Object localObject1 = this.i;
      if (localObject1 == null) {
        return;
      }
      localObject1 = new java/util/ArrayList;
      ((ArrayList)localObject1).<init>(this.j.values());
      localObject1 = ((ArrayList)localObject1).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        d locald = (d)((Iterator)localObject1).next();
        if (d.g(locald) != null) {
          d.g(locald).a();
        }
      }
      u0();
      E(this.i);
      this.i = null;
      return;
    }
    finally {}
  }
  
  public e d0(String paramString)
    throws IOException
  {
    try
    {
      z();
      d locald = (d)this.j.get(paramString);
      if (locald == null) {
        return null;
      }
      boolean bool = d.e(locald);
      if (!bool) {
        return null;
      }
      File[] arrayOfFile = locald.c;
      int i1 = arrayOfFile.length;
      for (int i2 = 0; i2 < i1; i2++)
      {
        bool = arrayOfFile[i2].exists();
        if (!bool) {
          return null;
        }
      }
      this.k += 1;
      this.i.append("READ");
      this.i.append(' ');
      this.i.append(paramString);
      this.i.append('\n');
      if (h0()) {
        this.m.submit(this.n);
      }
      paramString = new e(paramString, d.c(locald), locald.c, d.a(locald), null);
      return paramString;
    }
    finally {}
  }
  
  public boolean s0(String paramString)
    throws IOException
  {
    try
    {
      z();
      Object localObject = (d)this.j.get(paramString);
      int i1 = 0;
      if ((localObject != null) && (d.g((d)localObject) == null))
      {
        while (i1 < this.g)
        {
          File localFile = ((d)localObject).j(i1);
          if ((localFile.exists()) && (!localFile.delete()))
          {
            localObject = new java/io/IOException;
            paramString = new java/lang/StringBuilder;
            paramString.<init>();
            paramString.append("failed to delete ");
            paramString.append(localFile);
            ((IOException)localObject).<init>(paramString.toString());
            throw ((Throwable)localObject);
          }
          this.h -= d.a(localObject)[i1];
          d.a((d)localObject)[i1] = 0L;
          i1++;
        }
        this.k += 1;
        this.i.append("REMOVE");
        this.i.append(' ');
        this.i.append(paramString);
        this.i.append('\n');
        this.j.remove(paramString);
        if (h0()) {
          this.m.submit(this.n);
        }
        return true;
      }
      return false;
    }
    finally {}
  }
  
  class a
    implements Callable<Void>
  {
    a() {}
    
    public Void a()
      throws Exception
    {
      synchronized (a.this)
      {
        if (a.c(a.this) == null) {
          return null;
        }
        a.e(a.this);
        if (a.q(a.this))
        {
          a.s(a.this);
          a.x(a.this, 0);
        }
        return null;
      }
    }
  }
  
  private static final class b
    implements ThreadFactory
  {
    public Thread newThread(Runnable paramRunnable)
    {
      try
      {
        Thread localThread = new java/lang/Thread;
        localThread.<init>(paramRunnable, "glide-disk-lru-cache-thread");
        localThread.setPriority(1);
        return localThread;
      }
      finally
      {
        paramRunnable = finally;
        throw paramRunnable;
      }
    }
  }
  
  public final class c
  {
    private final a.d a;
    private final boolean[] b;
    private boolean c;
    
    private c(a.d paramd)
    {
      this.a = paramd;
      if (a.d.e(paramd)) {
        this$1 = null;
      } else {
        this$1 = new boolean[a.d(a.this)];
      }
      this.b = a.this;
    }
    
    public void a()
      throws IOException
    {
      a.m(a.this, this, false);
    }
    
    public void b()
    {
      if (!this.c) {}
      try
      {
        a();
        label11:
        return;
      }
      catch (IOException localIOException)
      {
        break label11;
      }
    }
    
    public void e()
      throws IOException
    {
      a.m(a.this, this, true);
      this.c = true;
    }
    
    public File f(int paramInt)
      throws IOException
    {
      synchronized (a.this)
      {
        if (a.d.g(this.a) == this)
        {
          if (!a.d.e(this.a)) {
            this.b[paramInt] = true;
          }
          localObject1 = this.a.k(paramInt);
          a.j(a.this).mkdirs();
          return localObject1;
        }
        Object localObject1 = new java/lang/IllegalStateException;
        ((IllegalStateException)localObject1).<init>();
        throw ((Throwable)localObject1);
      }
    }
  }
  
  private final class d
  {
    private final String a;
    private final long[] b;
    File[] c;
    File[] d;
    private boolean e;
    private a.c f;
    private long g;
    
    private d(String paramString)
    {
      this.a = paramString;
      this.b = new long[a.d(a.this)];
      this.c = new File[a.d(a.this)];
      this.d = new File[a.d(a.this)];
      paramString = new StringBuilder(paramString);
      paramString.append('.');
      int i = paramString.length();
      for (int j = 0; j < a.d(a.this); j++)
      {
        paramString.append(j);
        this.c[j] = new File(a.j(a.this), paramString.toString());
        paramString.append(".tmp");
        this.d[j] = new File(a.j(a.this), paramString.toString());
        paramString.setLength(i);
      }
    }
    
    private IOException m(String[] paramArrayOfString)
      throws IOException
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("unexpected journal line: ");
      localStringBuilder.append(Arrays.toString(paramArrayOfString));
      throw new IOException(localStringBuilder.toString());
    }
    
    private void n(String[] paramArrayOfString)
      throws IOException
    {
      if (paramArrayOfString.length == a.d(a.this))
      {
        int i = 0;
        try
        {
          while (i < paramArrayOfString.length)
          {
            this.b[i] = Long.parseLong(paramArrayOfString[i]);
            i++;
          }
          return;
        }
        catch (NumberFormatException localNumberFormatException)
        {
          throw m(paramArrayOfString);
        }
      }
      throw m(paramArrayOfString);
    }
    
    public File j(int paramInt)
    {
      return this.c[paramInt];
    }
    
    public File k(int paramInt)
    {
      return this.d[paramInt];
    }
    
    public String l()
      throws IOException
    {
      StringBuilder localStringBuilder = new StringBuilder();
      for (long l : this.b)
      {
        localStringBuilder.append(' ');
        localStringBuilder.append(l);
      }
      return localStringBuilder.toString();
    }
  }
  
  public final class e
  {
    private final String a;
    private final long b;
    private final long[] c;
    private final File[] d;
    
    private e(String paramString, long paramLong, File[] paramArrayOfFile, long[] paramArrayOfLong)
    {
      this.a = paramString;
      this.b = paramLong;
      this.d = paramArrayOfFile;
      this.c = paramArrayOfLong;
    }
    
    public File a(int paramInt)
    {
      return this.d[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     l2.a
 * JD-Core Version:    0.7.0.1
 */
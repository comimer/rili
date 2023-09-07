package h3;

import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
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
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class a
  implements Closeable
{
  static final Pattern o = Pattern.compile("[a-z0-9_-]{1,64}");
  private static final OutputStream p = new b();
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
  final ThreadPoolExecutor m = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue());
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
  
  private void E()
  {
    if (this.i != null) {
      return;
    }
    throw new IllegalStateException("cache is closed");
  }
  
  private void H(c paramc, boolean paramBoolean)
    throws IOException
  {
    try
    {
      Object localObject1 = c.b(paramc);
      if (d.g((d)localObject1) == paramc)
      {
        int i1 = 0;
        int i2 = i1;
        if (paramBoolean)
        {
          i2 = i1;
          if (!d.e((d)localObject1))
          {
            for (int i3 = 0;; i3++)
            {
              i2 = i1;
              if (i3 >= this.g) {
                break label128;
              }
              if (c.c(paramc)[i3] == 0) {
                break;
              }
              if (!((d)localObject1).k(i3).exists())
              {
                paramc.a();
                return;
              }
            }
            paramc.a();
            paramc = new java/lang/IllegalStateException;
            localObject1 = new java/lang/StringBuilder;
            ((StringBuilder)localObject1).<init>();
            ((StringBuilder)localObject1).append("Newly created entry didn't create value for index ");
            ((StringBuilder)localObject1).append(i3);
            paramc.<init>(((StringBuilder)localObject1).toString());
            throw paramc;
          }
        }
        label128:
        Object localObject2;
        long l1;
        while (i2 < this.g)
        {
          localObject2 = ((d)localObject1).k(i2);
          if (paramBoolean)
          {
            if (((File)localObject2).exists())
            {
              paramc = ((d)localObject1).j(i2);
              ((File)localObject2).renameTo(paramc);
              l1 = d.a(localObject1)[i2];
              long l2 = paramc.length();
              d.a((d)localObject1)[i2] = l2;
              this.h = (this.h - l1 + l2);
            }
          }
          else {
            W((File)localObject2);
          }
          i2++;
        }
        this.k += 1;
        d.h((d)localObject1, null);
        if ((d.e((d)localObject1) | paramBoolean))
        {
          d.f((d)localObject1, true);
          localObject2 = this.i;
          paramc = new java/lang/StringBuilder;
          paramc.<init>();
          paramc.append("CLEAN ");
          paramc.append(d.b((d)localObject1));
          paramc.append(((d)localObject1).l());
          paramc.append('\n');
          ((Writer)localObject2).write(paramc.toString());
          if (paramBoolean)
          {
            l1 = this.l;
            this.l = (1L + l1);
            d.d((d)localObject1, l1);
          }
        }
        else
        {
          this.j.remove(d.b((d)localObject1));
          paramc = this.i;
          localObject2 = new java/lang/StringBuilder;
          ((StringBuilder)localObject2).<init>();
          ((StringBuilder)localObject2).append("REMOVE ");
          ((StringBuilder)localObject2).append(d.b((d)localObject1));
          ((StringBuilder)localObject2).append('\n');
          paramc.write(((StringBuilder)localObject2).toString());
        }
        this.i.flush();
        if ((this.h > this.f) || (d0())) {
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
      E();
      u0(paramString);
      Object localObject = (d)this.j.get(paramString);
      if (paramLong != -1L) {
        if (localObject != null)
        {
          long l1 = d.c((d)localObject);
          if (l1 == paramLong) {}
        }
        else
        {
          return null;
        }
      }
      if (localObject == null)
      {
        localObject = new h3/a$d;
        ((d)localObject).<init>(this, paramString, null);
        this.j.put(paramString, localObject);
      }
      else
      {
        localc = d.g((d)localObject);
        if (localc != null) {
          return null;
        }
      }
      c localc = new h3/a$c;
      localc.<init>(this, (d)localObject, null);
      d.h((d)localObject, localc);
      localObject = this.i;
      StringBuilder localStringBuilder = new java/lang/StringBuilder;
      localStringBuilder.<init>();
      localStringBuilder.append("DIRTY ");
      localStringBuilder.append(paramString);
      localStringBuilder.append('\n');
      ((Writer)localObject).write(localStringBuilder.toString());
      this.i.flush();
      return localc;
    }
    finally {}
  }
  
  private boolean d0()
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
  
  public static a h0(File paramFile, int paramInt1, int paramInt2, long paramLong)
    throws IOException
  {
    if (paramLong > 0L)
    {
      if (paramInt2 > 0)
      {
        Object localObject1 = new File(paramFile, "journal.bkp");
        Object localObject2;
        if (((File)localObject1).exists())
        {
          localObject2 = new File(paramFile, "journal");
          if (((File)localObject2).exists()) {
            ((File)localObject1).delete();
          } else {
            s0((File)localObject1, (File)localObject2, false);
          }
        }
        localObject1 = new a(paramFile, paramInt1, paramInt2, paramLong);
        if (((a)localObject1).b.exists()) {
          try
          {
            ((a)localObject1).l0();
            ((a)localObject1).i0();
            localObject3 = new java/io/BufferedWriter;
            OutputStreamWriter localOutputStreamWriter = new java/io/OutputStreamWriter;
            localObject2 = new java/io/FileOutputStream;
            ((FileOutputStream)localObject2).<init>(((a)localObject1).b, true);
            localOutputStreamWriter.<init>((OutputStream)localObject2, c.a);
            ((BufferedWriter)localObject3).<init>(localOutputStreamWriter);
            ((a)localObject1).i = ((Writer)localObject3);
            return localObject1;
          }
          catch (IOException localIOException)
          {
            Object localObject3 = System.out;
            localObject2 = new StringBuilder();
            ((StringBuilder)localObject2).append("DiskLruCache ");
            ((StringBuilder)localObject2).append(paramFile);
            ((StringBuilder)localObject2).append(" is corrupt: ");
            ((StringBuilder)localObject2).append(localIOException.getMessage());
            ((StringBuilder)localObject2).append(", removing");
            ((PrintStream)localObject3).println(((StringBuilder)localObject2).toString());
            ((a)localObject1).V();
          }
        }
        paramFile.mkdirs();
        paramFile = new a(paramFile, paramInt1, paramInt2, paramLong);
        paramFile.q0();
        return paramFile;
      }
      throw new IllegalArgumentException("valueCount <= 0");
    }
    throw new IllegalArgumentException("maxSize <= 0");
  }
  
  private void i0()
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
  
  private void l0()
    throws IOException
  {
    b localb = new b(new FileInputStream(this.b), c.a);
    try
    {
      String str1 = localb.e();
      String str2 = localb.e();
      Object localObject1 = localb.e();
      String str3 = localb.e();
      String str4 = localb.e();
      if (("libcore.io.DiskLruCache".equals(str1)) && ("1".equals(str2)) && (Integer.toString(this.e).equals(localObject1)) && (Integer.toString(this.g).equals(str3)))
      {
        boolean bool = "".equals(str4);
        if (bool)
        {
          int i1 = 0;
          try
          {
            for (;;)
            {
              p0(localb.e());
              i1++;
            }
            localObject1 = new java/io/IOException;
          }
          catch (EOFException localEOFException)
          {
            this.k = (i1 - this.j.size());
            return;
          }
        }
      }
      StringBuilder localStringBuilder = new java/lang/StringBuilder;
      localStringBuilder.<init>();
      localStringBuilder.append("unexpected journal header: [");
      localStringBuilder.append(str1);
      localStringBuilder.append(", ");
      localStringBuilder.append(str2);
      localStringBuilder.append(", ");
      localStringBuilder.append(str3);
      localStringBuilder.append(", ");
      localStringBuilder.append(localEOFException);
      localStringBuilder.append("]");
      ((IOException)localObject1).<init>(localStringBuilder.toString());
      throw ((Throwable)localObject1);
    }
    finally
    {
      c.a(localb);
    }
  }
  
  private void p0(String paramString)
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
          break label252;
        }
      }
      return;
      label252:
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
  private void q0()
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 128	h3/a:i	Ljava/io/Writer;
    //   6: astore_1
    //   7: aload_1
    //   8: ifnull +7 -> 15
    //   11: aload_1
    //   12: invokevirtual 463	java/io/Writer:close	()V
    //   15: new 297	java/io/BufferedWriter
    //   18: astore_1
    //   19: new 299	java/io/OutputStreamWriter
    //   22: astore_2
    //   23: new 301	java/io/FileOutputStream
    //   26: astore_3
    //   27: aload_3
    //   28: aload_0
    //   29: getfield 117	h3/a:c	Ljava/io/File;
    //   32: invokespecial 464	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   35: aload_2
    //   36: aload_3
    //   37: getstatic 309	h3/c:a	Ljava/nio/charset/Charset;
    //   40: invokespecial 312	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    //   43: aload_1
    //   44: aload_2
    //   45: invokespecial 315	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   48: aload_1
    //   49: ldc_w 393
    //   52: invokevirtual 216	java/io/Writer:write	(Ljava/lang/String;)V
    //   55: aload_1
    //   56: ldc_w 466
    //   59: invokevirtual 216	java/io/Writer:write	(Ljava/lang/String;)V
    //   62: aload_1
    //   63: ldc_w 401
    //   66: invokevirtual 216	java/io/Writer:write	(Ljava/lang/String;)V
    //   69: aload_1
    //   70: ldc_w 466
    //   73: invokevirtual 216	java/io/Writer:write	(Ljava/lang/String;)V
    //   76: aload_1
    //   77: aload_0
    //   78: getfield 104	h3/a:e	I
    //   81: invokestatic 406	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   84: invokevirtual 216	java/io/Writer:write	(Ljava/lang/String;)V
    //   87: aload_1
    //   88: ldc_w 466
    //   91: invokevirtual 216	java/io/Writer:write	(Ljava/lang/String;)V
    //   94: aload_1
    //   95: aload_0
    //   96: getfield 123	h3/a:g	I
    //   99: invokestatic 406	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   102: invokevirtual 216	java/io/Writer:write	(Ljava/lang/String;)V
    //   105: aload_1
    //   106: ldc_w 466
    //   109: invokevirtual 216	java/io/Writer:write	(Ljava/lang/String;)V
    //   112: aload_1
    //   113: ldc_w 466
    //   116: invokevirtual 216	java/io/Writer:write	(Ljava/lang/String;)V
    //   119: aload_0
    //   120: getfield 75	h3/a:j	Ljava/util/LinkedHashMap;
    //   123: invokevirtual 360	java/util/LinkedHashMap:values	()Ljava/util/Collection;
    //   126: invokeinterface 366 1 0
    //   131: astore_3
    //   132: aload_3
    //   133: invokeinterface 371 1 0
    //   138: ifeq +127 -> 265
    //   141: aload_3
    //   142: invokeinterface 375 1 0
    //   147: checkcast 18	h3/a$d
    //   150: astore_2
    //   151: aload_2
    //   152: invokestatic 145	h3/a$d:g	(Lh3/a$d;)Lh3/a$c;
    //   155: ifnull +52 -> 207
    //   158: new 162	java/lang/StringBuilder
    //   161: astore 4
    //   163: aload 4
    //   165: invokespecial 163	java/lang/StringBuilder:<init>	()V
    //   168: aload 4
    //   170: ldc_w 272
    //   173: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   176: pop
    //   177: aload 4
    //   179: aload_2
    //   180: invokestatic 206	h3/a$d:b	(Lh3/a$d;)Ljava/lang/String;
    //   183: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   186: pop
    //   187: aload 4
    //   189: bipush 10
    //   191: invokevirtual 211	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   194: pop
    //   195: aload_1
    //   196: aload 4
    //   198: invokevirtual 176	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   201: invokevirtual 216	java/io/Writer:write	(Ljava/lang/String;)V
    //   204: goto -72 -> 132
    //   207: new 162	java/lang/StringBuilder
    //   210: astore 4
    //   212: aload 4
    //   214: invokespecial 163	java/lang/StringBuilder:<init>	()V
    //   217: aload 4
    //   219: ldc 203
    //   221: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   224: pop
    //   225: aload 4
    //   227: aload_2
    //   228: invokestatic 206	h3/a$d:b	(Lh3/a$d;)Ljava/lang/String;
    //   231: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   234: pop
    //   235: aload 4
    //   237: aload_2
    //   238: invokevirtual 208	h3/a$d:l	()Ljava/lang/String;
    //   241: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   244: pop
    //   245: aload 4
    //   247: bipush 10
    //   249: invokevirtual 211	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   252: pop
    //   253: aload_1
    //   254: aload 4
    //   256: invokevirtual 176	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   259: invokevirtual 216	java/io/Writer:write	(Ljava/lang/String;)V
    //   262: goto -130 -> 132
    //   265: aload_1
    //   266: invokevirtual 463	java/io/Writer:close	()V
    //   269: aload_0
    //   270: getfield 113	h3/a:b	Ljava/io/File;
    //   273: invokevirtual 158	java/io/File:exists	()Z
    //   276: ifeq +15 -> 291
    //   279: aload_0
    //   280: getfield 113	h3/a:b	Ljava/io/File;
    //   283: aload_0
    //   284: getfield 121	h3/a:d	Ljava/io/File;
    //   287: iconst_1
    //   288: invokestatic 287	h3/a:s0	(Ljava/io/File;Ljava/io/File;Z)V
    //   291: aload_0
    //   292: getfield 117	h3/a:c	Ljava/io/File;
    //   295: aload_0
    //   296: getfield 113	h3/a:b	Ljava/io/File;
    //   299: iconst_0
    //   300: invokestatic 287	h3/a:s0	(Ljava/io/File;Ljava/io/File;Z)V
    //   303: aload_0
    //   304: getfield 121	h3/a:d	Ljava/io/File;
    //   307: invokevirtual 244	java/io/File:delete	()Z
    //   310: pop
    //   311: new 297	java/io/BufferedWriter
    //   314: astore_2
    //   315: new 299	java/io/OutputStreamWriter
    //   318: astore_1
    //   319: new 301	java/io/FileOutputStream
    //   322: astore_3
    //   323: aload_3
    //   324: aload_0
    //   325: getfield 113	h3/a:b	Ljava/io/File;
    //   328: iconst_1
    //   329: invokespecial 304	java/io/FileOutputStream:<init>	(Ljava/io/File;Z)V
    //   332: aload_1
    //   333: aload_3
    //   334: getstatic 309	h3/c:a	Ljava/nio/charset/Charset;
    //   337: invokespecial 312	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    //   340: aload_2
    //   341: aload_1
    //   342: invokespecial 315	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   345: aload_0
    //   346: aload_2
    //   347: putfield 128	h3/a:i	Ljava/io/Writer;
    //   350: aload_0
    //   351: monitorexit
    //   352: return
    //   353: astore_2
    //   354: aload_1
    //   355: invokevirtual 463	java/io/Writer:close	()V
    //   358: aload_2
    //   359: athrow
    //   360: astore_1
    //   361: aload_0
    //   362: monitorexit
    //   363: aload_1
    //   364: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	365	0	this	a
    //   6	349	1	localObject1	Object
    //   360	4	1	localObject2	Object
    //   22	325	2	localObject3	Object
    //   353	6	2	localObject4	Object
    //   26	308	3	localObject5	Object
    //   161	94	4	localStringBuilder	StringBuilder
    // Exception table:
    //   from	to	target	type
    //   48	132	353	finally
    //   132	204	353	finally
    //   207	262	353	finally
    //   2	7	360	finally
    //   11	15	360	finally
    //   15	48	360	finally
    //   265	291	360	finally
    //   291	350	360	finally
    //   354	360	360	finally
  }
  
  private static void s0(File paramFile1, File paramFile2, boolean paramBoolean)
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
  
  private void t0()
    throws IOException
  {
    while (this.h > this.f) {
      r0((String)((Map.Entry)this.j.entrySet().iterator().next()).getKey());
    }
  }
  
  private void u0(String paramString)
  {
    if (o.matcher(paramString).matches()) {
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("keys must match regex [a-z0-9_-]{1,64}: \"");
    localStringBuilder.append(paramString);
    localStringBuilder.append("\"");
    throw new IllegalArgumentException(localStringBuilder.toString());
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
  
  public e c0(String paramString)
    throws IOException
  {
    for (;;)
    {
      d locald;
      InputStream[] arrayOfInputStream;
      Writer localWriter;
      StringBuilder localStringBuilder;
      try
      {
        E();
        u0(paramString);
        locald = (d)this.j.get(paramString);
        if (locald == null) {
          return null;
        }
        boolean bool = d.e(locald);
        if (!bool) {
          return null;
        }
        arrayOfInputStream = new InputStream[this.g];
        i1 = 0;
        i2 = 0;
      }
      finally {}
      try
      {
        if (i2 < this.g)
        {
          arrayOfInputStream[i2] = new FileInputStream(locald.j(i2));
          i2++;
          continue;
        }
        this.k += 1;
        localWriter = this.i;
        localStringBuilder = new java/lang/StringBuilder;
        localStringBuilder.<init>();
        localStringBuilder.append("READ ");
        localStringBuilder.append(paramString);
        localStringBuilder.append('\n');
        localWriter.append(localStringBuilder.toString());
        if (d0()) {
          this.m.submit(this.n);
        }
        paramString = new e(paramString, d.c(locald), arrayOfInputStream, d.a(locald), null);
        return paramString;
      }
      catch (FileNotFoundException paramString)
      {
        i2 = i1;
        continue;
      }
      if (i2 >= this.g) {
        continue;
      }
      paramString = arrayOfInputStream[i2];
      if (paramString == null) {
        continue;
      }
      c.a(paramString);
      i2++;
    }
    return null;
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
      t0();
      this.i.close();
      this.i = null;
      return;
    }
    finally {}
  }
  
  public void flush()
    throws IOException
  {
    try
    {
      E();
      t0();
      this.i.flush();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public boolean r0(String paramString)
    throws IOException
  {
    try
    {
      E();
      u0(paramString);
      Object localObject1 = (d)this.j.get(paramString);
      int i1 = 0;
      if ((localObject1 != null) && (d.g((d)localObject1) == null))
      {
        while (i1 < this.g)
        {
          localObject2 = ((d)localObject1).j(i1);
          if ((((File)localObject2).exists()) && (!((File)localObject2).delete()))
          {
            localObject1 = new java/io/IOException;
            paramString = new java/lang/StringBuilder;
            paramString.<init>();
            paramString.append("failed to delete ");
            paramString.append(localObject2);
            ((IOException)localObject1).<init>(paramString.toString());
            throw ((Throwable)localObject1);
          }
          this.h -= d.a(localObject1)[i1];
          d.a((d)localObject1)[i1] = 0L;
          i1++;
        }
        this.k += 1;
        localObject1 = this.i;
        Object localObject2 = new java/lang/StringBuilder;
        ((StringBuilder)localObject2).<init>();
        ((StringBuilder)localObject2).append("REMOVE ");
        ((StringBuilder)localObject2).append(paramString);
        ((StringBuilder)localObject2).append('\n');
        ((Writer)localObject1).append(((StringBuilder)localObject2).toString());
        this.j.remove(paramString);
        if (d0()) {
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
        a.d(a.this);
        if (a.m(a.this))
        {
          a.x(a.this);
          a.z(a.this, 0);
        }
        return null;
      }
    }
  }
  
  static final class b
    extends OutputStream
  {
    public void write(int paramInt)
      throws IOException
    {}
  }
  
  public final class c
  {
    private final a.d a;
    private final boolean[] b;
    private boolean c;
    private boolean d;
    
    private c(a.d paramd)
    {
      this.a = paramd;
      if (a.d.e(paramd)) {
        this$1 = null;
      } else {
        this$1 = new boolean[a.e(a.this)];
      }
      this.b = a.this;
    }
    
    public void a()
      throws IOException
    {
      a.s(a.this, this, false);
    }
    
    public void e()
      throws IOException
    {
      if (this.c)
      {
        a.s(a.this, this, false);
        a.this.r0(a.d.b(this.a));
      }
      else
      {
        a.s(a.this, this, true);
      }
      this.d = true;
    }
    
    public OutputStream f(int paramInt)
      throws IOException
    {
      synchronized (a.this)
      {
        if (a.d.g(this.a) == this)
        {
          if (!a.d.e(this.a)) {
            this.b[paramInt] = true;
          }
          Object localObject1 = this.a.k(paramInt);
          try
          {
            FileOutputStream localFileOutputStream1 = new java/io/FileOutputStream;
            localFileOutputStream1.<init>((File)localObject1);
          }
          catch (FileNotFoundException localFileNotFoundException1)
          {
            a.j(a.this).mkdirs();
          }
          try
          {
            FileOutputStream localFileOutputStream2 = new FileOutputStream((File)localObject1);
            localObject1 = new h3/a$c$a;
            ((a)localObject1).<init>(this, localFileOutputStream2, null);
            return localObject1;
          }
          catch (FileNotFoundException localFileNotFoundException2)
          {
            localObject2 = a.q();
            return localObject2;
          }
        }
        Object localObject2 = new java/lang/IllegalStateException;
        ((IllegalStateException)localObject2).<init>();
        throw ((Throwable)localObject2);
      }
    }
    
    private class a
      extends FilterOutputStream
    {
      private a(OutputStream paramOutputStream)
      {
        super();
      }
      
      public void close()
      {
        try
        {
          this.out.close();
        }
        catch (IOException localIOException)
        {
          a.c.d(a.c.this, true);
        }
      }
      
      public void flush()
      {
        try
        {
          this.out.flush();
        }
        catch (IOException localIOException)
        {
          a.c.d(a.c.this, true);
        }
      }
      
      public void write(int paramInt)
      {
        try
        {
          this.out.write(paramInt);
        }
        catch (IOException localIOException)
        {
          a.c.d(a.c.this, true);
        }
      }
      
      public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
      {
        try
        {
          this.out.write(paramArrayOfByte, paramInt1, paramInt2);
        }
        catch (IOException paramArrayOfByte)
        {
          a.c.d(a.c.this, true);
        }
      }
    }
  }
  
  private final class d
  {
    private final String a;
    private final long[] b;
    private boolean c;
    private a.c d;
    private long e;
    
    private d(String paramString)
    {
      this.a = paramString;
      this.b = new long[a.e(a.this)];
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
      if (paramArrayOfString.length == a.e(a.this))
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
      File localFile = a.j(a.this);
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(this.a);
      localStringBuilder.append(".");
      localStringBuilder.append(paramInt);
      return new File(localFile, localStringBuilder.toString());
    }
    
    public File k(int paramInt)
    {
      File localFile = a.j(a.this);
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(this.a);
      localStringBuilder.append(".");
      localStringBuilder.append(paramInt);
      localStringBuilder.append(".tmp");
      return new File(localFile, localStringBuilder.toString());
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
    implements Closeable
  {
    private final String a;
    private final long b;
    private final InputStream[] c;
    private final long[] d;
    
    private e(String paramString, long paramLong, InputStream[] paramArrayOfInputStream, long[] paramArrayOfLong)
    {
      this.a = paramString;
      this.b = paramLong;
      this.c = paramArrayOfInputStream;
      this.d = paramArrayOfLong;
    }
    
    public InputStream c(int paramInt)
    {
      return this.c[paramInt];
    }
    
    public void close()
    {
      InputStream[] arrayOfInputStream = this.c;
      int i = arrayOfInputStream.length;
      for (int j = 0; j < i; j++) {
        c.a(arrayOfInputStream[j]);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     h3.a
 * JD-Core Version:    0.7.0.1
 */
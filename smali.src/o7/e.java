package o7;

import java.io.IOException;
import java.io.InputStream;
import java.io.PipedInputStream;
import java.io.PipedOutputStream;
import javax.activation.MimeType;
import javax.activation.MimeTypeParseException;
import javax.activation.UnsupportedDataTypeException;

public class e
{
  private static final a[] k = new a[0];
  private static d l;
  private g a;
  private g b = null;
  private Object c = null;
  private String d = null;
  private b e;
  private a[] f;
  private c g;
  private c h;
  private d i;
  private String j;
  
  public e(Object paramObject, String paramString)
  {
    this.a = null;
    this.e = null;
    this.f = k;
    this.g = null;
    this.h = null;
    this.j = null;
    this.i = l;
  }
  
  public e(g paramg)
  {
    this.e = null;
    this.f = k;
    this.g = null;
    this.h = null;
    this.j = null;
    this.a = paramg;
    this.i = l;
  }
  
  private String c()
  {
    try
    {
      if (this.j == null)
      {
        str = f();
        try
        {
          MimeType localMimeType = new javax/activation/MimeType;
          localMimeType.<init>(str);
          this.j = localMimeType.getBaseType();
        }
        catch (MimeTypeParseException localMimeTypeParseException)
        {
          this.j = str;
        }
      }
      String str = this.j;
      return str;
    }
    finally {}
  }
  
  private b d()
  {
    try
    {
      b localb = this.e;
      if (localb != null) {
        return localb;
      }
      localb = b.c();
      return localb;
    }
    finally {}
  }
  
  private c g()
  {
    try
    {
      Object localObject1 = l;
      if (localObject1 != this.i)
      {
        this.i = ((d)localObject1);
        this.h = null;
        this.g = null;
        this.f = k;
      }
      localObject1 = this.g;
      if (localObject1 != null) {
        return localObject1;
      }
      localObject1 = c();
      if (this.h == null)
      {
        localObject3 = l;
        if (localObject3 != null) {
          this.h = ((d)localObject3).a((String)localObject1);
        }
      }
      Object localObject3 = this.h;
      if (localObject3 != null) {
        this.g = ((c)localObject3);
      }
      if (this.g == null) {
        if (this.a != null) {
          this.g = d().b((String)localObject1, this.a);
        } else {
          this.g = d().a((String)localObject1);
        }
      }
      localObject1 = this.a;
      if (localObject1 != null)
      {
        localObject3 = new o7/h;
        ((h)localObject3).<init>(this.g, (g)localObject1);
        this.g = ((c)localObject3);
      }
      else
      {
        localObject1 = new o7/k;
        ((k)localObject1).<init>(this.g, this.c, this.d);
        this.g = ((c)localObject1);
      }
      localObject1 = this.g;
      return localObject1;
    }
    finally {}
  }
  
  public Object e()
    throws IOException
  {
    Object localObject = this.c;
    if (localObject != null) {
      return localObject;
    }
    return g().b(h());
  }
  
  public String f()
  {
    g localg = this.a;
    if (localg != null) {
      return localg.a();
    }
    return this.d;
  }
  
  public g h()
  {
    g localg1 = this.a;
    g localg2 = localg1;
    if (localg1 == null)
    {
      if (this.b == null) {
        this.b = new f(this);
      }
      localg2 = this.b;
    }
    return localg2;
  }
  
  public InputStream i()
    throws IOException
  {
    Object localObject = this.a;
    if (localObject != null)
    {
      localObject = ((g)localObject).b();
    }
    else
    {
      final c localc = g();
      if (localc == null) {
        break label125;
      }
      if (((localc instanceof k)) && (((k)localc).c() == null))
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("no object DCH for MIME type ");
        ((StringBuilder)localObject).append(c());
        throw new UnsupportedDataTypeException(((StringBuilder)localObject).toString());
      }
      final PipedOutputStream localPipedOutputStream = new PipedOutputStream();
      localObject = new PipedInputStream(localPipedOutputStream);
      new Thread(new a(localc, localPipedOutputStream), "DataHandler.getInputStream").start();
    }
    return localObject;
    label125:
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("no DCH for MIME type ");
    ((StringBuilder)localObject).append(c());
    throw new UnsupportedDataTypeException(((StringBuilder)localObject).toString());
  }
  
  class a
    implements Runnable
  {
    a(c paramc, PipedOutputStream paramPipedOutputStream) {}
    
    /* Error */
    public void run()
    {
      // Byte code:
      //   0: aload_0
      //   1: getfield 23	o7/e$a:a	Lo7/c;
      //   4: aload_0
      //   5: getfield 21	o7/e$a:c	Lo7/e;
      //   8: invokestatic 35	o7/e:a	(Lo7/e;)Ljava/lang/Object;
      //   11: aload_0
      //   12: getfield 21	o7/e$a:c	Lo7/e;
      //   15: invokestatic 38	o7/e:b	(Lo7/e;)Ljava/lang/String;
      //   18: aload_0
      //   19: getfield 25	o7/e$a:b	Ljava/io/PipedOutputStream;
      //   22: invokeinterface 43 4 0
      //   27: aload_0
      //   28: getfield 25	o7/e$a:b	Ljava/io/PipedOutputStream;
      //   31: invokevirtual 48	java/io/PipedOutputStream:close	()V
      //   34: goto +13 -> 47
      //   37: astore_1
      //   38: aload_0
      //   39: getfield 25	o7/e$a:b	Ljava/io/PipedOutputStream;
      //   42: invokevirtual 48	java/io/PipedOutputStream:close	()V
      //   45: aload_1
      //   46: athrow
      //   47: return
      //   48: astore_1
      //   49: goto -22 -> 27
      //   52: astore_1
      //   53: goto -6 -> 47
      //   56: astore_2
      //   57: goto -12 -> 45
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	60	0	this	a
      //   37	9	1	localObject	Object
      //   48	1	1	localIOException1	IOException
      //   52	1	1	localIOException2	IOException
      //   56	1	2	localIOException3	IOException
      // Exception table:
      //   from	to	target	type
      //   0	27	37	finally
      //   0	27	48	java/io/IOException
      //   27	34	52	java/io/IOException
      //   38	45	56	java/io/IOException
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     o7.e
 * JD-Core Version:    0.7.0.1
 */
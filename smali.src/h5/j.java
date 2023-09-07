package h5;

import com.sun.mail.iap.ProtocolException;
import com.sun.mail.iap.d;
import com.sun.mail.imap.protocol.e;
import com.sun.mail.util.f;
import javax.mail.MessagingException;
import javax.mail.g;
import javax.mail.i;

public class j
  extends i
  implements d
{
  private final int d;
  private boolean e;
  private boolean f;
  private boolean g;
  private boolean h;
  private volatile boolean i;
  private volatile boolean j;
  private final Object k;
  protected f l;
  private d m;
  
  private e V()
    throws ProtocolException
  {
    throw null;
  }
  
  /* Error */
  private void q()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokespecial 40	javax/mail/g:d	()Z
    //   6: ifne +15 -> 21
    //   9: aload_0
    //   10: getfield 42	h5/j:l	Lcom/sun/mail/util/f;
    //   13: ldc 44
    //   15: invokevirtual 50	com/sun/mail/util/f:b	(Ljava/lang/String;)V
    //   18: aload_0
    //   19: monitorexit
    //   20: return
    //   21: aload_0
    //   22: getfield 52	h5/j:k	Ljava/lang/Object;
    //   25: astore_1
    //   26: aload_1
    //   27: monitorenter
    //   28: aload_0
    //   29: getfield 54	h5/j:j	Z
    //   32: istore_2
    //   33: aload_0
    //   34: iconst_0
    //   35: putfield 54	h5/j:j	Z
    //   38: aload_0
    //   39: iconst_0
    //   40: putfield 56	h5/j:i	Z
    //   43: aload_1
    //   44: monitorexit
    //   45: aload_0
    //   46: getfield 42	h5/j:l	Lcom/sun/mail/util/f;
    //   49: getstatic 62	java/util/logging/Level:FINE	Ljava/util/logging/Level;
    //   52: invokevirtual 65	com/sun/mail/util/f:f	(Ljava/util/logging/Level;)Z
    //   55: ifeq +37 -> 92
    //   58: aload_0
    //   59: getfield 42	h5/j:l	Lcom/sun/mail/util/f;
    //   62: astore_3
    //   63: new 67	java/lang/StringBuilder
    //   66: astore_1
    //   67: aload_1
    //   68: invokespecial 70	java/lang/StringBuilder:<init>	()V
    //   71: aload_1
    //   72: ldc 72
    //   74: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   77: pop
    //   78: aload_1
    //   79: iload_2
    //   80: invokevirtual 79	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   83: pop
    //   84: aload_3
    //   85: aload_1
    //   86: invokevirtual 83	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   89: invokevirtual 50	com/sun/mail/util/f:b	(Ljava/lang/String;)V
    //   92: iload_2
    //   93: ifeq +10 -> 103
    //   96: aload_0
    //   97: getfield 85	h5/j:g	Z
    //   100: ifeq +8 -> 108
    //   103: aload_0
    //   104: iload_2
    //   105: invokespecial 89	h5/j:s	(Z)V
    //   108: aload_0
    //   109: iload_2
    //   110: invokespecial 92	h5/j:x	(Z)V
    //   113: aload_0
    //   114: invokespecial 95	javax/mail/g:close	()V
    //   117: aload_0
    //   118: getfield 42	h5/j:l	Lcom/sun/mail/util/f;
    //   121: ldc 97
    //   123: invokevirtual 50	com/sun/mail/util/f:b	(Ljava/lang/String;)V
    //   126: aload_0
    //   127: monitorexit
    //   128: return
    //   129: astore_3
    //   130: aload_1
    //   131: monitorexit
    //   132: aload_3
    //   133: athrow
    //   134: astore_1
    //   135: aload_0
    //   136: monitorexit
    //   137: aload_1
    //   138: athrow
    //   139: astore_1
    //   140: goto -23 -> 117
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	143	0	this	j
    //   134	4	1	localObject2	Object
    //   139	1	1	localMessagingException	MessagingException
    //   32	78	2	bool	boolean
    //   62	23	3	localf	f
    //   129	4	3	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   28	45	129	finally
    //   130	132	129	finally
    //   2	18	134	finally
    //   21	28	134	finally
    //   45	92	134	finally
    //   96	103	134	finally
    //   103	108	134	finally
    //   108	113	134	finally
    //   113	117	134	finally
    //   117	126	134	finally
    //   132	134	134	finally
    //   113	117	139	javax/mail/MessagingException
  }
  
  private void s(boolean paramBoolean)
  {
    throw null;
  }
  
  private void x(boolean paramBoolean)
  {
    throw null;
  }
  
  e E()
    throws ProtocolException
  {
    e locale = V();
    locale.e(this);
    locale.a(this.m);
    return locale;
  }
  
  boolean H()
  {
    return this.f;
  }
  
  boolean W()
  {
    return a.a(null);
  }
  
  boolean Z()
  {
    return this.e;
  }
  
  boolean a0()
  {
    throw null;
  }
  
  void c0(e parame)
  {
    if (parame == null) {
      return;
    }
    parame.e(this.m);
    parame.a(this);
    throw null;
  }
  
  public void close()
    throws MessagingException
  {
    try
    {
      q();
      s(true);
      x(true);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  void d0(b paramb, e parame)
  {
    throw null;
  }
  
  protected void finalize()
    throws Throwable
  {
    if (!this.h) {
      synchronized (this.k)
      {
        this.i = true;
        this.j = true;
        this.g = true;
      }
    }
    try
    {
      close();
      return;
    }
    finally
    {
      super.finalize();
    }
  }
  
  int z()
  {
    return this.d;
  }
  
  static class a {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     h5.j
 * JD-Core Version:    0.7.0.1
 */
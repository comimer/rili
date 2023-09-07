package h5;

import com.sun.mail.iap.ProtocolException;
import com.sun.mail.imap.protocol.e;
import com.sun.mail.util.f;
import java.util.Hashtable;
import java.util.logging.Level;
import javax.mail.MessagingException;

public class b
  extends javax.mail.b
  implements com.sun.mail.iap.d
{
  protected volatile String d;
  protected volatile boolean e;
  protected volatile String[] f;
  protected volatile e g;
  protected final Object h;
  protected Hashtable<Long, d> i;
  private volatile boolean j;
  private boolean k;
  private int l;
  protected f m;
  
  private void s(boolean paramBoolean)
  {
    E(paramBoolean);
    this.i = null;
    this.e = false;
    this.f = null;
    this.j = false;
    this.l = 0;
    this.h.notifyAll();
    m(3);
  }
  
  /* Error */
  private void x(boolean paramBoolean1, boolean paramBoolean2)
    throws MessagingException
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 45	h5/b:h	Ljava/lang/Object;
    //   4: astore_3
    //   5: aload_3
    //   6: monitorenter
    //   7: aload_0
    //   8: getfield 41	h5/b:j	Z
    //   11: ifne +28 -> 39
    //   14: aload_0
    //   15: getfield 63	h5/b:k	Z
    //   18: ifne +6 -> 24
    //   21: goto +18 -> 39
    //   24: new 65	java/lang/IllegalStateException
    //   27: astore 4
    //   29: aload 4
    //   31: ldc 67
    //   33: invokespecial 71	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   36: aload 4
    //   38: athrow
    //   39: iconst_1
    //   40: istore 5
    //   42: aload_0
    //   43: iconst_1
    //   44: putfield 63	h5/b:k	Z
    //   47: aload_0
    //   48: getfield 41	h5/b:j	Z
    //   51: ifne +6 -> 57
    //   54: aload_3
    //   55: monitorexit
    //   56: return
    //   57: aload_0
    //   58: invokevirtual 74	h5/b:H	()V
    //   61: iload_2
    //   62: ifeq +42 -> 104
    //   65: aload_0
    //   66: getfield 76	h5/b:m	Lcom/sun/mail/util/f;
    //   69: getstatic 82	java/util/logging/Level:FINE	Ljava/util/logging/Level;
    //   72: ldc 84
    //   74: aload_0
    //   75: getfield 86	h5/b:d	Ljava/lang/String;
    //   78: invokevirtual 91	com/sun/mail/util/f:i	(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    //   81: iload 5
    //   83: istore_1
    //   84: aload_0
    //   85: getfield 93	h5/b:g	Lcom/sun/mail/imap/protocol/e;
    //   88: ifnull +222 -> 310
    //   91: aload_0
    //   92: getfield 93	h5/b:g	Lcom/sun/mail/imap/protocol/e;
    //   95: invokevirtual 97	com/sun/mail/imap/protocol/e:g	()V
    //   98: iload 5
    //   100: istore_1
    //   101: goto +209 -> 310
    //   104: aload_0
    //   105: getfield 101	javax/mail/b:a	Ljavax/mail/i;
    //   108: checkcast 103	h5/j
    //   111: invokevirtual 107	h5/j:a0	()Z
    //   114: ifeq +53 -> 167
    //   117: aload_0
    //   118: getfield 76	h5/b:m	Lcom/sun/mail/util/f;
    //   121: ldc 109
    //   123: invokevirtual 112	com/sun/mail/util/f:b	(Ljava/lang/String;)V
    //   126: iload_1
    //   127: ifeq +17 -> 144
    //   130: aload_0
    //   131: getfield 93	h5/b:g	Lcom/sun/mail/imap/protocol/e;
    //   134: ifnull +10 -> 144
    //   137: aload_0
    //   138: getfield 93	h5/b:g	Lcom/sun/mail/imap/protocol/e;
    //   141: invokevirtual 114	com/sun/mail/imap/protocol/e:f	()V
    //   144: iload 5
    //   146: istore_1
    //   147: aload_0
    //   148: getfield 93	h5/b:g	Lcom/sun/mail/imap/protocol/e;
    //   151: ifnull +159 -> 310
    //   154: aload_0
    //   155: getfield 93	h5/b:g	Lcom/sun/mail/imap/protocol/e;
    //   158: invokevirtual 116	com/sun/mail/imap/protocol/e:s	()V
    //   161: iload 5
    //   163: istore_1
    //   164: goto +146 -> 310
    //   167: iload_1
    //   168: ifne +122 -> 290
    //   171: aload_0
    //   172: getfield 118	javax/mail/b:b	I
    //   175: istore 6
    //   177: iload 6
    //   179: iconst_2
    //   180: if_icmpne +110 -> 290
    //   183: aload_0
    //   184: getfield 93	h5/b:g	Lcom/sun/mail/imap/protocol/e;
    //   187: ifnull +28 -> 215
    //   190: aload_0
    //   191: getfield 93	h5/b:g	Lcom/sun/mail/imap/protocol/e;
    //   194: ldc 120
    //   196: invokevirtual 124	com/sun/mail/imap/protocol/e:p	(Ljava/lang/String;)Z
    //   199: ifeq +16 -> 215
    //   202: aload_0
    //   203: getfield 93	h5/b:g	Lcom/sun/mail/imap/protocol/e;
    //   206: invokevirtual 126	com/sun/mail/imap/protocol/e:x	()V
    //   209: iload 5
    //   211: istore_1
    //   212: goto +98 -> 310
    //   215: aload_0
    //   216: getfield 93	h5/b:g	Lcom/sun/mail/imap/protocol/e;
    //   219: astore 4
    //   221: iload 5
    //   223: istore_1
    //   224: aload 4
    //   226: ifnull +84 -> 310
    //   229: aload_0
    //   230: getfield 93	h5/b:g	Lcom/sun/mail/imap/protocol/e;
    //   233: aload_0
    //   234: getfield 86	h5/b:d	Ljava/lang/String;
    //   237: invokevirtual 129	com/sun/mail/imap/protocol/e:h	(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/j;
    //   240: pop
    //   241: iconst_1
    //   242: istore 6
    //   244: goto +8 -> 252
    //   247: astore 4
    //   249: iconst_0
    //   250: istore 6
    //   252: iload 5
    //   254: istore_1
    //   255: iload 6
    //   257: ifeq +53 -> 310
    //   260: iload 5
    //   262: istore_1
    //   263: aload_0
    //   264: getfield 93	h5/b:g	Lcom/sun/mail/imap/protocol/e;
    //   267: ifnull +43 -> 310
    //   270: aload_0
    //   271: getfield 93	h5/b:g	Lcom/sun/mail/imap/protocol/e;
    //   274: invokevirtual 114	com/sun/mail/imap/protocol/e:f	()V
    //   277: iload 5
    //   279: istore_1
    //   280: goto +30 -> 310
    //   283: astore 4
    //   285: iconst_0
    //   286: istore_1
    //   287: goto +23 -> 310
    //   290: iload 5
    //   292: istore_1
    //   293: aload_0
    //   294: getfield 93	h5/b:g	Lcom/sun/mail/imap/protocol/e;
    //   297: ifnull +13 -> 310
    //   300: aload_0
    //   301: getfield 93	h5/b:g	Lcom/sun/mail/imap/protocol/e;
    //   304: invokevirtual 114	com/sun/mail/imap/protocol/e:f	()V
    //   307: iload 5
    //   309: istore_1
    //   310: aload_0
    //   311: getfield 41	h5/b:j	Z
    //   314: ifeq +8 -> 322
    //   317: aload_0
    //   318: iload_1
    //   319: invokespecial 131	h5/b:s	(Z)V
    //   322: aload_3
    //   323: monitorexit
    //   324: return
    //   325: astore 4
    //   327: goto +25 -> 352
    //   330: astore 7
    //   332: new 57	javax/mail/MessagingException
    //   335: astore 4
    //   337: aload 4
    //   339: aload 7
    //   341: invokevirtual 137	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   344: aload 7
    //   346: invokespecial 140	javax/mail/MessagingException:<init>	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   349: aload 4
    //   351: athrow
    //   352: aload_0
    //   353: getfield 41	h5/b:j	Z
    //   356: ifeq +8 -> 364
    //   359: aload_0
    //   360: iconst_1
    //   361: invokespecial 131	h5/b:s	(Z)V
    //   364: aload 4
    //   366: athrow
    //   367: astore 4
    //   369: aload_3
    //   370: monitorexit
    //   371: aload 4
    //   373: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	374	0	this	b
    //   0	374	1	paramBoolean1	boolean
    //   0	374	2	paramBoolean2	boolean
    //   4	366	3	localObject1	Object
    //   27	198	4	localObject2	Object
    //   247	1	4	localCommandFailedException	com.sun.mail.iap.CommandFailedException
    //   283	1	4	localProtocolException1	ProtocolException
    //   325	1	4	localObject3	Object
    //   335	30	4	localMessagingException	MessagingException
    //   367	5	4	localObject4	Object
    //   40	268	5	bool	boolean
    //   175	81	6	n	int
    //   330	15	7	localProtocolException2	ProtocolException
    // Exception table:
    //   from	to	target	type
    //   229	241	247	com/sun/mail/iap/CommandFailedException
    //   183	209	283	com/sun/mail/iap/ProtocolException
    //   215	221	283	com/sun/mail/iap/ProtocolException
    //   229	241	283	com/sun/mail/iap/ProtocolException
    //   263	277	283	com/sun/mail/iap/ProtocolException
    //   57	61	325	finally
    //   65	81	325	finally
    //   84	98	325	finally
    //   104	126	325	finally
    //   130	144	325	finally
    //   147	161	325	finally
    //   171	177	325	finally
    //   183	209	325	finally
    //   215	221	325	finally
    //   229	241	325	finally
    //   263	277	325	finally
    //   293	307	325	finally
    //   332	352	325	finally
    //   57	61	330	com/sun/mail/iap/ProtocolException
    //   65	81	330	com/sun/mail/iap/ProtocolException
    //   84	98	330	com/sun/mail/iap/ProtocolException
    //   104	126	330	com/sun/mail/iap/ProtocolException
    //   130	144	330	com/sun/mail/iap/ProtocolException
    //   147	161	330	com/sun/mail/iap/ProtocolException
    //   171	177	330	com/sun/mail/iap/ProtocolException
    //   293	307	330	com/sun/mail/iap/ProtocolException
    //   7	21	367	finally
    //   24	39	367	finally
    //   42	56	367	finally
    //   310	322	367	finally
    //   322	324	367	finally
    //   352	364	367	finally
    //   364	367	367	finally
    //   369	371	367	finally
  }
  
  protected void E(boolean paramBoolean)
  {
    if (this.g != null)
    {
      this.g.e(this);
      if (paramBoolean)
      {
        ((j)this.a).d0(this, this.g);
      }
      else
      {
        this.g.g();
        ((j)this.a).d0(this, null);
      }
      this.g = null;
    }
  }
  
  void H()
    throws ProtocolException
  {
    for (;;)
    {
      int n = this.l;
      if (n != 0)
      {
        if (n == 1)
        {
          this.m.c("waitIfIdle: abort IDLE");
          this.g.q();
          this.l = 2;
        }
        else
        {
          this.m.i(Level.FINEST, "waitIfIdle: idleState {0}", Integer.valueOf(n));
        }
        try
        {
          f localf = this.m;
          Object localObject = Level.FINEST;
          if (localf.f((Level)localObject))
          {
            localf = this.m;
            StringBuilder localStringBuilder = new java/lang/StringBuilder;
            localStringBuilder.<init>();
            localStringBuilder.append("waitIfIdle: wait to be not idle: ");
            localStringBuilder.append(Thread.currentThread());
            localf.c(localStringBuilder.toString());
          }
          this.h.wait();
          if (this.m.f((Level)localObject))
          {
            localf = this.m;
            localObject = new java/lang/StringBuilder;
            ((StringBuilder)localObject).<init>();
            ((StringBuilder)localObject).append("waitIfIdle: wait done, idleState ");
            ((StringBuilder)localObject).append(this.l);
            ((StringBuilder)localObject).append(": ");
            ((StringBuilder)localObject).append(Thread.currentThread());
            localf.c(((StringBuilder)localObject).toString());
          }
        }
        catch (InterruptedException localInterruptedException)
        {
          Thread.currentThread().interrupt();
          throw new ProtocolException("Interrupted waitIfIdle", localInterruptedException);
        }
      }
    }
  }
  
  public void c(boolean paramBoolean)
    throws MessagingException
  {
    try
    {
      x(paramBoolean, false);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public String d()
  {
    return this.d;
  }
  
  /* Error */
  public boolean isOpen()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 45	h5/b:h	Ljava/lang/Object;
    //   6: astore_1
    //   7: aload_1
    //   8: monitorenter
    //   9: aload_0
    //   10: getfield 41	h5/b:j	Z
    //   13: istore_2
    //   14: iload_2
    //   15: ifeq +8 -> 23
    //   18: aload_0
    //   19: iconst_0
    //   20: invokevirtual 220	h5/b:z	(Z)V
    //   23: aload_1
    //   24: monitorexit
    //   25: aload_0
    //   26: getfield 41	h5/b:j	Z
    //   29: istore_2
    //   30: aload_0
    //   31: monitorexit
    //   32: iload_2
    //   33: ireturn
    //   34: astore_3
    //   35: aload_1
    //   36: monitorexit
    //   37: aload_3
    //   38: athrow
    //   39: astore_1
    //   40: aload_0
    //   41: monitorexit
    //   42: aload_1
    //   43: athrow
    //   44: astore_3
    //   45: goto -22 -> 23
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	48	0	this	b
    //   39	4	1	localObject2	Object
    //   13	20	2	bool	boolean
    //   34	4	3	localObject3	Object
    //   44	1	3	localProtocolException	ProtocolException
    // Exception table:
    //   from	to	target	type
    //   9	14	34	finally
    //   18	23	34	finally
    //   23	25	34	finally
    //   35	37	34	finally
    //   2	9	39	finally
    //   25	30	39	finally
    //   37	39	39	finally
    //   18	23	44	com/sun/mail/iap/ProtocolException
  }
  
  protected void z(boolean paramBoolean)
    throws ProtocolException
  {
    if (this.g == null) {
      return;
    }
    if (System.currentTimeMillis() - this.g.b() > 1000L)
    {
      H();
      if (this.g != null) {
        this.g.t();
      }
    }
    if ((paramBoolean) && (((j)this.a).W()))
    {
      Object localObject1 = null;
      try
      {
        locale = ((j)this.a).E();
        localObject1 = locale;
        if (System.currentTimeMillis() - locale.b() > 1000L)
        {
          localObject1 = locale;
          locale.t();
        }
      }
      finally
      {
        e locale;
        ((j)this.a).c0(localObject1);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     h5.b
 * JD-Core Version:    0.7.0.1
 */
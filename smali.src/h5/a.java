package h5;

import com.sun.mail.imap.protocol.b;
import com.sun.mail.util.h;
import javax.mail.MessagingException;
import o7.g;

public class a
  extends javax.mail.internet.d
{
  private static final boolean s = h.b("mail.mime.decodefilename", false);
  private d n;
  private b o;
  private String p;
  private String q;
  private boolean r = false;
  
  protected a(b paramb, String paramString, d paramd)
  {
    this.o = paramb;
    this.p = paramString;
    this.n = paramd;
    this.q = new javax.mail.internet.a(paramb.a, paramb.b, paramb.e).toString();
  }
  
  public String a()
    throws MessagingException
  {
    return this.q;
  }
  
  public String f()
    throws MessagingException
  {
    return this.o.c;
  }
  
  /* Error */
  protected java.io.InputStream i()
    throws MessagingException
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 39	h5/a:n	Lh5/d;
    //   4: invokevirtual 80	h5/d:F	()Z
    //   7: istore_1
    //   8: aload_0
    //   9: getfield 39	h5/a:n	Lh5/d;
    //   12: invokevirtual 84	h5/d:D	()Ljava/lang/Object;
    //   15: astore_2
    //   16: aload_2
    //   17: monitorenter
    //   18: aload_0
    //   19: getfield 39	h5/a:n	Lh5/d;
    //   22: invokevirtual 88	h5/d:G	()Lcom/sun/mail/imap/protocol/e;
    //   25: astore_3
    //   26: aload_0
    //   27: getfield 39	h5/a:n	Lh5/d;
    //   30: invokevirtual 91	h5/d:A	()V
    //   33: aload_3
    //   34: invokevirtual 95	com/sun/mail/imap/protocol/e:r	()Z
    //   37: ifeq +73 -> 110
    //   40: aload_0
    //   41: getfield 39	h5/a:n	Lh5/d;
    //   44: invokevirtual 99	h5/d:C	()I
    //   47: istore 4
    //   49: iconst_m1
    //   50: istore 5
    //   52: iload 4
    //   54: iconst_m1
    //   55: if_icmpeq +55 -> 110
    //   58: new 101	h5/c
    //   61: astore 6
    //   63: aload_0
    //   64: getfield 39	h5/a:n	Lh5/d;
    //   67: astore 7
    //   69: aload_0
    //   70: getfield 37	h5/a:p	Ljava/lang/String;
    //   73: astore_3
    //   74: aload 7
    //   76: invokevirtual 104	h5/d:I	()Z
    //   79: ifeq +6 -> 85
    //   82: goto +12 -> 94
    //   85: aload_0
    //   86: getfield 35	h5/a:o	Lcom/sun/mail/imap/protocol/b;
    //   89: getfield 107	com/sun/mail/imap/protocol/b:d	I
    //   92: istore 5
    //   94: aload 6
    //   96: aload 7
    //   98: aload_3
    //   99: iload 5
    //   101: iload_1
    //   102: invokespecial 110	h5/c:<init>	(Lh5/d;Ljava/lang/String;IZ)V
    //   105: aload_2
    //   106: monitorexit
    //   107: aload 6
    //   109: areturn
    //   110: aload_0
    //   111: getfield 39	h5/a:n	Lh5/d;
    //   114: invokevirtual 113	h5/d:H	()I
    //   117: istore 5
    //   119: iload_1
    //   120: ifeq +17 -> 137
    //   123: aload_3
    //   124: iload 5
    //   126: aload_0
    //   127: getfield 37	h5/a:p	Ljava/lang/String;
    //   130: invokevirtual 117	com/sun/mail/imap/protocol/e:u	(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/a;
    //   133: astore_3
    //   134: goto +14 -> 148
    //   137: aload_3
    //   138: iload 5
    //   140: aload_0
    //   141: getfield 37	h5/a:p	Ljava/lang/String;
    //   144: invokevirtual 120	com/sun/mail/imap/protocol/e:j	(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/a;
    //   147: astore_3
    //   148: aload_3
    //   149: ifnull +11 -> 160
    //   152: aload_3
    //   153: invokevirtual 125	com/sun/mail/imap/protocol/a:b	()Ljava/io/ByteArrayInputStream;
    //   156: astore_3
    //   157: goto +5 -> 162
    //   160: aconst_null
    //   161: astore_3
    //   162: aload_2
    //   163: monitorexit
    //   164: aload_3
    //   165: astore_2
    //   166: aload_3
    //   167: ifnonnull +21 -> 188
    //   170: aload_0
    //   171: getfield 39	h5/a:n	Lh5/d;
    //   174: invokevirtual 128	h5/d:B	()V
    //   177: new 130	java/io/ByteArrayInputStream
    //   180: dup
    //   181: iconst_0
    //   182: newarray byte
    //   184: invokespecial 133	java/io/ByteArrayInputStream:<init>	([B)V
    //   187: astore_2
    //   188: aload_2
    //   189: areturn
    //   190: astore_3
    //   191: goto +47 -> 238
    //   194: astore 7
    //   196: new 63	javax/mail/MessagingException
    //   199: astore_3
    //   200: aload_3
    //   201: aload 7
    //   203: invokevirtual 138	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   206: aload 7
    //   208: invokespecial 141	javax/mail/MessagingException:<init>	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   211: aload_3
    //   212: athrow
    //   213: astore_3
    //   214: new 143	javax/mail/FolderClosedException
    //   217: astore 7
    //   219: aload 7
    //   221: aload_0
    //   222: getfield 39	h5/a:n	Lh5/d;
    //   225: invokevirtual 148	javax/mail/Message:i	()Ljavax/mail/b;
    //   228: aload_3
    //   229: invokevirtual 138	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   232: invokespecial 151	javax/mail/FolderClosedException:<init>	(Ljavax/mail/b;Ljava/lang/String;)V
    //   235: aload 7
    //   237: athrow
    //   238: aload_2
    //   239: monitorexit
    //   240: aload_3
    //   241: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	242	0	this	a
    //   7	113	1	bool	boolean
    //   15	224	2	localObject1	Object
    //   25	142	3	localObject2	Object
    //   190	1	3	localObject3	Object
    //   199	13	3	localMessagingException	MessagingException
    //   213	28	3	localConnectionException	com.sun.mail.iap.ConnectionException
    //   47	9	4	i	int
    //   50	89	5	j	int
    //   61	47	6	localc	c
    //   67	30	7	locald	d
    //   194	13	7	localProtocolException	com.sun.mail.iap.ProtocolException
    //   217	19	7	localFolderClosedException	javax.mail.FolderClosedException
    // Exception table:
    //   from	to	target	type
    //   18	49	190	finally
    //   58	82	190	finally
    //   85	94	190	finally
    //   94	105	190	finally
    //   105	107	190	finally
    //   110	119	190	finally
    //   123	134	190	finally
    //   137	148	190	finally
    //   152	157	190	finally
    //   162	164	190	finally
    //   196	213	190	finally
    //   214	238	190	finally
    //   238	240	190	finally
    //   18	49	194	com/sun/mail/iap/ProtocolException
    //   58	82	194	com/sun/mail/iap/ProtocolException
    //   85	94	194	com/sun/mail/iap/ProtocolException
    //   94	105	194	com/sun/mail/iap/ProtocolException
    //   110	119	194	com/sun/mail/iap/ProtocolException
    //   123	134	194	com/sun/mail/iap/ProtocolException
    //   137	148	194	com/sun/mail/iap/ProtocolException
    //   152	157	194	com/sun/mail/iap/ProtocolException
    //   18	49	213	com/sun/mail/iap/ConnectionException
    //   58	82	213	com/sun/mail/iap/ConnectionException
    //   85	94	213	com/sun/mail/iap/ConnectionException
    //   94	105	213	com/sun/mail/iap/ConnectionException
    //   110	119	213	com/sun/mail/iap/ConnectionException
    //   123	134	213	com/sun/mail/iap/ConnectionException
    //   137	148	213	com/sun/mail/iap/ConnectionException
    //   152	157	213	com/sun/mail/iap/ConnectionException
  }
  
  public o7.e j()
    throws MessagingException
  {
    try
    {
      if (this.b == null)
      {
        Object localObject2;
        if (this.o.a())
        {
          locale = new o7/e;
          localObject2 = new h5/e;
          ((e)localObject2).<init>(this, this.o.f, this.p, this.n);
          locale.<init>((g)localObject2);
          this.b = locale;
        }
        else if ((this.o.b()) && (this.n.K()) && (this.o.g != null))
        {
          locale = new o7/e;
          f localf = new h5/f;
          localObject2 = this.n;
          b localb = this.o;
          localf.<init>((d)localObject2, localb.f[0], localb.g, this.p);
          locale.<init>(localf, this.q);
          this.b = locale;
        }
      }
      o7.e locale = super.j();
      return locale;
    }
    finally {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     h5.a
 * JD-Core Version:    0.7.0.1
 */
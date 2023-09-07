package h5;

import com.sun.mail.iap.ConnectionException;
import com.sun.mail.iap.ProtocolException;
import com.sun.mail.iap.a;
import com.sun.mail.imap.protocol.e;
import com.sun.mail.util.FolderClosedIOException;
import com.sun.mail.util.MessageRemovedIOException;
import java.io.IOException;
import java.io.InputStream;
import javax.mail.Flags.a;
import javax.mail.FolderClosedException;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.b;

public class c
  extends InputStream
{
  private d a;
  private String b;
  private int c;
  private int d;
  private int e;
  private byte[] f;
  private int g;
  private int h;
  private boolean i;
  private boolean j;
  private a k;
  
  public c(d paramd, String paramString, int paramInt, boolean paramBoolean)
  {
    this.a = paramd;
    this.b = paramString;
    this.e = paramInt;
    this.j = paramBoolean;
    this.c = 0;
    this.d = paramd.C();
  }
  
  private void c()
  {
    if (this.j) {
      return;
    }
    try
    {
      Object localObject = this.a.i();
      if ((localObject != null) && (((b)localObject).e() != 1))
      {
        localObject = this.a;
        Flags.a locala = Flags.a.g;
        if (!((d)localObject).x(locala)) {
          this.a.q(locala, true);
        }
      }
      label54:
      return;
    }
    catch (MessagingException localMessagingException)
    {
      break label54;
    }
  }
  
  /* Error */
  private void d()
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 77	h5/c:i	Z
    //   4: ifne +450 -> 454
    //   7: aload_0
    //   8: getfield 32	h5/c:e	I
    //   11: istore_1
    //   12: iload_1
    //   13: iconst_m1
    //   14: if_icmpeq +14 -> 28
    //   17: aload_0
    //   18: getfield 36	h5/c:c	I
    //   21: iload_1
    //   22: if_icmplt +6 -> 28
    //   25: goto +429 -> 454
    //   28: aload_0
    //   29: getfield 79	h5/c:k	Lcom/sun/mail/iap/a;
    //   32: ifnonnull +21 -> 53
    //   35: aload_0
    //   36: new 81	com/sun/mail/iap/a
    //   39: dup
    //   40: aload_0
    //   41: getfield 44	h5/c:d	I
    //   44: bipush 64
    //   46: iadd
    //   47: invokespecial 84	com/sun/mail/iap/a:<init>	(I)V
    //   50: putfield 79	h5/c:k	Lcom/sun/mail/iap/a;
    //   53: aload_0
    //   54: getfield 28	h5/c:a	Lh5/d;
    //   57: invokevirtual 88	h5/d:D	()Ljava/lang/Object;
    //   60: astore_2
    //   61: aload_2
    //   62: monitorenter
    //   63: aload_0
    //   64: getfield 28	h5/c:a	Lh5/d;
    //   67: invokevirtual 92	h5/d:G	()Lcom/sun/mail/imap/protocol/e;
    //   70: astore_3
    //   71: aload_0
    //   72: getfield 28	h5/c:a	Lh5/d;
    //   75: invokevirtual 96	javax/mail/Message:p	()Z
    //   78: ifne +312 -> 390
    //   81: aload_0
    //   82: getfield 28	h5/c:a	Lh5/d;
    //   85: invokevirtual 99	h5/d:H	()I
    //   88: istore 4
    //   90: aload_0
    //   91: getfield 44	h5/c:d	I
    //   94: istore 5
    //   96: aload_0
    //   97: getfield 32	h5/c:e	I
    //   100: istore 6
    //   102: iload 5
    //   104: istore_1
    //   105: iload 6
    //   107: iconst_m1
    //   108: if_icmpeq +28 -> 136
    //   111: aload_0
    //   112: getfield 36	h5/c:c	I
    //   115: istore 7
    //   117: iload 5
    //   119: istore_1
    //   120: iload 7
    //   122: iload 5
    //   124: iadd
    //   125: iload 6
    //   127: if_icmple +9 -> 136
    //   130: iload 6
    //   132: iload 7
    //   134: isub
    //   135: istore_1
    //   136: aload_0
    //   137: getfield 34	h5/c:j	Z
    //   140: ifeq +26 -> 166
    //   143: aload_3
    //   144: iload 4
    //   146: aload_0
    //   147: getfield 30	h5/c:b	Ljava/lang/String;
    //   150: aload_0
    //   151: getfield 36	h5/c:c	I
    //   154: iload_1
    //   155: aload_0
    //   156: getfield 79	h5/c:k	Lcom/sun/mail/iap/a;
    //   159: invokevirtual 105	com/sun/mail/imap/protocol/e:v	(ILjava/lang/String;IILcom/sun/mail/iap/a;)Lcom/sun/mail/imap/protocol/a;
    //   162: astore_3
    //   163: goto +23 -> 186
    //   166: aload_3
    //   167: iload 4
    //   169: aload_0
    //   170: getfield 30	h5/c:b	Ljava/lang/String;
    //   173: aload_0
    //   174: getfield 36	h5/c:c	I
    //   177: iload_1
    //   178: aload_0
    //   179: getfield 79	h5/c:k	Lcom/sun/mail/iap/a;
    //   182: invokevirtual 107	com/sun/mail/imap/protocol/e:k	(ILjava/lang/String;IILcom/sun/mail/iap/a;)Lcom/sun/mail/imap/protocol/a;
    //   185: astore_3
    //   186: iconst_0
    //   187: istore 8
    //   189: iconst_0
    //   190: istore 6
    //   192: iconst_0
    //   193: istore 9
    //   195: aload_3
    //   196: ifnull +18 -> 214
    //   199: aload_3
    //   200: invokevirtual 112	com/sun/mail/imap/protocol/a:a	()Lcom/sun/mail/iap/a;
    //   203: astore 10
    //   205: aload 10
    //   207: astore 11
    //   209: aload 10
    //   211: ifnonnull +18 -> 229
    //   214: aload_0
    //   215: invokespecial 114	h5/c:e	()V
    //   218: new 81	com/sun/mail/iap/a
    //   221: astore 11
    //   223: aload 11
    //   225: iconst_0
    //   226: invokespecial 84	com/sun/mail/iap/a:<init>	(I)V
    //   229: aload_2
    //   230: monitorexit
    //   231: aload_0
    //   232: getfield 36	h5/c:c	I
    //   235: ifne +7 -> 242
    //   238: aload_0
    //   239: invokespecial 116	h5/c:c	()V
    //   242: aload_0
    //   243: aload 11
    //   245: invokevirtual 119	com/sun/mail/iap/a:a	()[B
    //   248: putfield 121	h5/c:f	[B
    //   251: aload_0
    //   252: aload 11
    //   254: invokevirtual 123	com/sun/mail/iap/a:c	()I
    //   257: putfield 125	h5/c:h	I
    //   260: aload 11
    //   262: invokevirtual 127	com/sun/mail/iap/a:b	()I
    //   265: istore 4
    //   267: aload_3
    //   268: ifnull +12 -> 280
    //   271: aload_3
    //   272: invokevirtual 128	com/sun/mail/imap/protocol/a:c	()I
    //   275: istore 5
    //   277: goto +9 -> 286
    //   280: aload_0
    //   281: getfield 36	h5/c:c	I
    //   284: istore 5
    //   286: iload 5
    //   288: ifge +39 -> 327
    //   291: aload_0
    //   292: getfield 36	h5/c:c	I
    //   295: ifne +21 -> 316
    //   298: iload 4
    //   300: iload_1
    //   301: if_icmpeq +6 -> 307
    //   304: iconst_1
    //   305: istore 9
    //   307: aload_0
    //   308: iload 9
    //   310: putfield 77	h5/c:i	Z
    //   313: goto +42 -> 355
    //   316: aload_0
    //   317: iconst_1
    //   318: putfield 77	h5/c:i	Z
    //   321: iload 6
    //   323: istore_1
    //   324: goto +45 -> 369
    //   327: iload 5
    //   329: aload_0
    //   330: getfield 36	h5/c:c	I
    //   333: if_icmpne +28 -> 361
    //   336: iload 8
    //   338: istore 9
    //   340: iload 4
    //   342: iload_1
    //   343: if_icmpge +6 -> 349
    //   346: iconst_1
    //   347: istore 9
    //   349: aload_0
    //   350: iload 9
    //   352: putfield 77	h5/c:i	Z
    //   355: iload 4
    //   357: istore_1
    //   358: goto +11 -> 369
    //   361: aload_0
    //   362: iconst_1
    //   363: putfield 77	h5/c:i	Z
    //   366: iload 6
    //   368: istore_1
    //   369: aload_0
    //   370: aload_0
    //   371: getfield 125	h5/c:h	I
    //   374: iload_1
    //   375: iadd
    //   376: putfield 130	h5/c:g	I
    //   379: aload_0
    //   380: aload_0
    //   381: getfield 36	h5/c:c	I
    //   384: iload_1
    //   385: iadd
    //   386: putfield 36	h5/c:c	I
    //   389: return
    //   390: new 132	com/sun/mail/util/MessageRemovedIOException
    //   393: astore_3
    //   394: aload_3
    //   395: ldc 134
    //   397: invokespecial 137	com/sun/mail/util/MessageRemovedIOException:<init>	(Ljava/lang/String;)V
    //   400: aload_3
    //   401: athrow
    //   402: astore_3
    //   403: goto +47 -> 450
    //   406: astore 11
    //   408: new 139	com/sun/mail/util/FolderClosedIOException
    //   411: astore_3
    //   412: aload_3
    //   413: aload 11
    //   415: invokevirtual 142	javax/mail/FolderClosedException:getFolder	()Ljavax/mail/b;
    //   418: aload 11
    //   420: invokevirtual 148	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   423: invokespecial 151	com/sun/mail/util/FolderClosedIOException:<init>	(Ljavax/mail/b;Ljava/lang/String;)V
    //   426: aload_3
    //   427: athrow
    //   428: astore_3
    //   429: aload_0
    //   430: invokespecial 114	h5/c:e	()V
    //   433: new 71	java/io/IOException
    //   436: astore 11
    //   438: aload 11
    //   440: aload_3
    //   441: invokevirtual 148	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   444: invokespecial 152	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   447: aload 11
    //   449: athrow
    //   450: aload_2
    //   451: monitorexit
    //   452: aload_3
    //   453: athrow
    //   454: aload_0
    //   455: getfield 36	h5/c:c	I
    //   458: ifne +7 -> 465
    //   461: aload_0
    //   462: invokespecial 116	h5/c:c	()V
    //   465: aload_0
    //   466: aconst_null
    //   467: putfield 79	h5/c:k	Lcom/sun/mail/iap/a;
    //   470: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	471	0	this	c
    //   11	375	1	m	int
    //   60	391	2	localObject1	Object
    //   70	331	3	localObject2	Object
    //   402	1	3	localObject3	Object
    //   411	16	3	localFolderClosedIOException	FolderClosedIOException
    //   428	25	3	localProtocolException	ProtocolException
    //   88	268	4	n	int
    //   94	240	5	i1	int
    //   100	267	6	i2	int
    //   115	20	7	i3	int
    //   187	150	8	bool1	boolean
    //   193	158	9	bool2	boolean
    //   203	7	10	locala1	a
    //   207	54	11	locala2	a
    //   406	13	11	localFolderClosedException	FolderClosedException
    //   436	12	11	localIOException	IOException
    // Exception table:
    //   from	to	target	type
    //   63	102	402	finally
    //   111	117	402	finally
    //   136	163	402	finally
    //   166	186	402	finally
    //   199	205	402	finally
    //   214	229	402	finally
    //   229	231	402	finally
    //   390	402	402	finally
    //   408	428	402	finally
    //   429	450	402	finally
    //   450	452	402	finally
    //   63	102	406	javax/mail/FolderClosedException
    //   111	117	406	javax/mail/FolderClosedException
    //   136	163	406	javax/mail/FolderClosedException
    //   166	186	406	javax/mail/FolderClosedException
    //   390	402	406	javax/mail/FolderClosedException
    //   63	102	428	com/sun/mail/iap/ProtocolException
    //   111	117	428	com/sun/mail/iap/ProtocolException
    //   136	163	428	com/sun/mail/iap/ProtocolException
    //   166	186	428	com/sun/mail/iap/ProtocolException
    //   390	402	428	com/sun/mail/iap/ProtocolException
  }
  
  private void e()
    throws MessageRemovedIOException, FolderClosedIOException
  {
    try
    {
      synchronized (this.a.D())
      {
        this.a.G().t();
      }
    }
    catch (FolderClosedException localFolderClosedException)
    {
      localFolderClosedIOException = new com/sun/mail/util/FolderClosedIOException;
      localFolderClosedIOException.<init>(localFolderClosedException.getFolder(), localFolderClosedException.getMessage());
      throw localFolderClosedIOException;
    }
    catch (ConnectionException localConnectionException)
    {
      FolderClosedIOException localFolderClosedIOException = new com/sun/mail/util/FolderClosedIOException;
      localFolderClosedIOException.<init>(this.a.i(), localConnectionException.getMessage());
      throw localFolderClosedIOException;
      throw localFolderClosedIOException;
    }
    catch (ProtocolException localProtocolException)
    {
      label27:
      break label27;
    }
    if (!this.a.p()) {
      return;
    }
    throw new MessageRemovedIOException();
  }
  
  public int available()
    throws IOException
  {
    try
    {
      int m = this.g;
      int n = this.h;
      return m - n;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public int read()
    throws IOException
  {
    try
    {
      if (this.h >= this.g)
      {
        d();
        int m = this.h;
        n = this.g;
        if (m >= n) {
          return -1;
        }
      }
      byte[] arrayOfByte = this.f;
      int n = this.h;
      this.h = (n + 1);
      n = arrayOfByte[n];
      return n & 0xFF;
    }
    finally {}
  }
  
  public int read(byte[] paramArrayOfByte)
    throws IOException
  {
    return read(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    try
    {
      int m = this.g - this.h;
      int n = m;
      if (m <= 0)
      {
        d();
        m = this.g;
        n = this.h;
        m -= n;
        n = m;
        if (m <= 0) {
          return -1;
        }
      }
      m = paramInt2;
      if (n < paramInt2) {
        m = n;
      }
      System.arraycopy(this.f, this.h, paramArrayOfByte, paramInt1, m);
      this.h += m;
      return m;
    }
    finally {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     h5.c
 * JD-Core Version:    0.7.0.1
 */
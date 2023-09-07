package h5;

import com.sun.mail.iap.ConnectionException;
import com.sun.mail.iap.ProtocolException;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.Hashtable;
import java.util.Locale;
import javax.mail.Address;
import javax.mail.Flags;
import javax.mail.Flags.a;
import javax.mail.FolderClosedException;
import javax.mail.Message;
import javax.mail.Message.RecipientType;
import javax.mail.MessageRemovedException;
import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.a;
import o7.g;

public class d
  extends MimeMessage
{
  private volatile boolean A = false;
  private Hashtable<String, String> B = new Hashtable(1);
  protected com.sun.mail.imap.protocol.b p;
  protected com.sun.mail.imap.protocol.c q;
  private Date r;
  private long s = -1L;
  private Boolean t;
  private volatile long u = -1L;
  private volatile long v = -1L;
  protected String w;
  private String x;
  private String y;
  private volatile boolean z = false;
  
  protected d(javax.mail.h paramh)
  {
    super(paramh);
  }
  
  private boolean J(String paramString)
  {
    if (this.z) {
      return true;
    }
    return this.B.containsKey(paramString.toUpperCase(Locale.ENGLISH));
  }
  
  /* Error */
  private void L()
    throws MessagingException
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 77	h5/d:p	Lcom/sun/mail/imap/protocol/b;
    //   6: astore_1
    //   7: aload_1
    //   8: ifnull +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: invokevirtual 81	h5/d:D	()Ljava/lang/Object;
    //   18: astore_1
    //   19: aload_1
    //   20: monitorenter
    //   21: aload_0
    //   22: invokevirtual 85	h5/d:G	()Lcom/sun/mail/imap/protocol/e;
    //   25: astore_2
    //   26: aload_0
    //   27: invokevirtual 87	h5/d:A	()V
    //   30: aload_2
    //   31: aload_0
    //   32: invokevirtual 91	h5/d:H	()I
    //   35: invokevirtual 97	com/sun/mail/imap/protocol/e:l	(I)Lcom/sun/mail/imap/protocol/b;
    //   38: astore_2
    //   39: aload_0
    //   40: aload_2
    //   41: putfield 77	h5/d:p	Lcom/sun/mail/imap/protocol/b;
    //   44: aload_2
    //   45: ifnull +8 -> 53
    //   48: aload_1
    //   49: monitorexit
    //   50: aload_0
    //   51: monitorexit
    //   52: return
    //   53: aload_0
    //   54: invokevirtual 99	h5/d:B	()V
    //   57: new 71	javax/mail/MessagingException
    //   60: astore_2
    //   61: aload_2
    //   62: ldc 101
    //   64: invokespecial 104	javax/mail/MessagingException:<init>	(Ljava/lang/String;)V
    //   67: aload_2
    //   68: athrow
    //   69: astore_2
    //   70: goto +42 -> 112
    //   73: astore_3
    //   74: aload_0
    //   75: invokevirtual 99	h5/d:B	()V
    //   78: new 71	javax/mail/MessagingException
    //   81: astore_2
    //   82: aload_2
    //   83: aload_3
    //   84: invokevirtual 110	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   87: aload_3
    //   88: invokespecial 113	javax/mail/MessagingException:<init>	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   91: aload_2
    //   92: athrow
    //   93: astore_2
    //   94: new 115	javax/mail/FolderClosedException
    //   97: astore_3
    //   98: aload_3
    //   99: aload_0
    //   100: getfield 121	javax/mail/Message:c	Ljavax/mail/b;
    //   103: aload_2
    //   104: invokevirtual 110	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   107: invokespecial 124	javax/mail/FolderClosedException:<init>	(Ljavax/mail/b;Ljava/lang/String;)V
    //   110: aload_3
    //   111: athrow
    //   112: aload_1
    //   113: monitorexit
    //   114: aload_2
    //   115: athrow
    //   116: astore_1
    //   117: aload_0
    //   118: monitorexit
    //   119: aload_1
    //   120: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	121	0	this	d
    //   6	107	1	localObject1	Object
    //   116	4	1	localObject2	Object
    //   25	43	2	localObject3	Object
    //   69	1	2	localObject4	Object
    //   81	11	2	localMessagingException	MessagingException
    //   93	22	2	localConnectionException	ConnectionException
    //   73	15	3	localProtocolException	ProtocolException
    //   97	14	3	localFolderClosedException	FolderClosedException
    // Exception table:
    //   from	to	target	type
    //   21	44	69	finally
    //   48	50	69	finally
    //   53	69	69	finally
    //   74	93	69	finally
    //   94	112	69	finally
    //   112	114	69	finally
    //   21	44	73	com/sun/mail/iap/ProtocolException
    //   21	44	93	com/sun/mail/iap/ConnectionException
    //   2	7	116	finally
    //   14	21	116	finally
    //   114	116	116	finally
  }
  
  /* Error */
  private void M()
    throws MessagingException
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 128	h5/d:q	Lcom/sun/mail/imap/protocol/c;
    //   6: astore_1
    //   7: aload_1
    //   8: ifnull +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: invokevirtual 81	h5/d:D	()Ljava/lang/Object;
    //   18: astore_1
    //   19: aload_1
    //   20: monitorenter
    //   21: aload_0
    //   22: invokevirtual 85	h5/d:G	()Lcom/sun/mail/imap/protocol/e;
    //   25: astore_2
    //   26: aload_0
    //   27: invokevirtual 87	h5/d:A	()V
    //   30: aload_0
    //   31: invokevirtual 91	h5/d:H	()I
    //   34: istore_3
    //   35: aload_2
    //   36: iload_3
    //   37: ldc 130
    //   39: invokevirtual 134	com/sun/mail/imap/protocol/e:i	(ILjava/lang/String;)[Lcom/sun/mail/iap/c;
    //   42: astore 4
    //   44: iconst_0
    //   45: istore 5
    //   47: iload 5
    //   49: aload 4
    //   51: arraylength
    //   52: if_icmpge +149 -> 201
    //   55: aload 4
    //   57: iload 5
    //   59: aaload
    //   60: astore 6
    //   62: aload 6
    //   64: ifnull +131 -> 195
    //   67: aload 6
    //   69: instanceof 136
    //   72: ifeq +123 -> 195
    //   75: aload 6
    //   77: checkcast 136	com/sun/mail/imap/protocol/d
    //   80: invokevirtual 140	com/sun/mail/imap/protocol/f:i	()I
    //   83: iload_3
    //   84: if_icmpeq +6 -> 90
    //   87: goto +108 -> 195
    //   90: aload 4
    //   92: iload 5
    //   94: aaload
    //   95: checkcast 136	com/sun/mail/imap/protocol/d
    //   98: astore 6
    //   100: aload 6
    //   102: invokevirtual 142	com/sun/mail/imap/protocol/d:l	()I
    //   105: istore 7
    //   107: iconst_0
    //   108: istore 8
    //   110: iload 8
    //   112: iload 7
    //   114: if_icmpge +81 -> 195
    //   117: aload 6
    //   119: iload 8
    //   121: invokevirtual 146	com/sun/mail/imap/protocol/d:k	(I)Lcom/sun/mail/imap/protocol/h;
    //   124: astore 9
    //   126: aload 9
    //   128: instanceof 148
    //   131: ifeq +15 -> 146
    //   134: aload_0
    //   135: aload 9
    //   137: checkcast 148	com/sun/mail/imap/protocol/c
    //   140: putfield 128	h5/d:q	Lcom/sun/mail/imap/protocol/c;
    //   143: goto +46 -> 189
    //   146: aload 9
    //   148: instanceof 150
    //   151: ifeq +18 -> 169
    //   154: aload_0
    //   155: aload 9
    //   157: checkcast 150	com/sun/mail/imap/protocol/g
    //   160: invokevirtual 154	com/sun/mail/imap/protocol/g:a	()Ljava/util/Date;
    //   163: putfield 156	h5/d:r	Ljava/util/Date;
    //   166: goto +23 -> 189
    //   169: aload 9
    //   171: instanceof 158
    //   174: ifeq +15 -> 189
    //   177: aload_0
    //   178: aload 9
    //   180: checkcast 158	com/sun/mail/imap/protocol/l
    //   183: getfield 160	com/sun/mail/imap/protocol/l:a	J
    //   186: putfield 34	h5/d:s	J
    //   189: iinc 8 1
    //   192: goto -82 -> 110
    //   195: iinc 5 1
    //   198: goto -151 -> 47
    //   201: aload_2
    //   202: aload 4
    //   204: invokevirtual 166	com/sun/mail/iap/b:d	([Lcom/sun/mail/iap/c;)V
    //   207: aload_2
    //   208: aload 4
    //   210: aload 4
    //   212: arraylength
    //   213: iconst_1
    //   214: isub
    //   215: aaload
    //   216: invokevirtual 169	com/sun/mail/iap/b:c	(Lcom/sun/mail/iap/c;)V
    //   219: aload_1
    //   220: monitorexit
    //   221: aload_0
    //   222: getfield 128	h5/d:q	Lcom/sun/mail/imap/protocol/c;
    //   225: astore_1
    //   226: aload_1
    //   227: ifnull +6 -> 233
    //   230: aload_0
    //   231: monitorexit
    //   232: return
    //   233: new 71	javax/mail/MessagingException
    //   236: astore_1
    //   237: aload_1
    //   238: ldc 171
    //   240: invokespecial 104	javax/mail/MessagingException:<init>	(Ljava/lang/String;)V
    //   243: aload_1
    //   244: athrow
    //   245: astore 4
    //   247: goto +47 -> 294
    //   250: astore 4
    //   252: aload_0
    //   253: invokevirtual 99	h5/d:B	()V
    //   256: new 71	javax/mail/MessagingException
    //   259: astore_2
    //   260: aload_2
    //   261: aload 4
    //   263: invokevirtual 110	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   266: aload 4
    //   268: invokespecial 113	javax/mail/MessagingException:<init>	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   271: aload_2
    //   272: athrow
    //   273: astore 4
    //   275: new 115	javax/mail/FolderClosedException
    //   278: astore_2
    //   279: aload_2
    //   280: aload_0
    //   281: getfield 121	javax/mail/Message:c	Ljavax/mail/b;
    //   284: aload 4
    //   286: invokevirtual 110	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   289: invokespecial 124	javax/mail/FolderClosedException:<init>	(Ljavax/mail/b;Ljava/lang/String;)V
    //   292: aload_2
    //   293: athrow
    //   294: aload_1
    //   295: monitorexit
    //   296: aload 4
    //   298: athrow
    //   299: astore_1
    //   300: aload_0
    //   301: monitorexit
    //   302: aload_1
    //   303: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	304	0	this	d
    //   6	289	1	localObject1	Object
    //   299	4	1	localObject2	Object
    //   25	268	2	localObject3	Object
    //   34	51	3	i	int
    //   42	169	4	arrayOfc	com.sun.mail.iap.c[]
    //   245	1	4	localObject4	Object
    //   250	17	4	localProtocolException	ProtocolException
    //   273	24	4	localConnectionException	ConnectionException
    //   45	151	5	j	int
    //   60	58	6	localObject5	Object
    //   105	10	7	k	int
    //   108	82	8	m	int
    //   124	55	9	localh	com.sun.mail.imap.protocol.h
    // Exception table:
    //   from	to	target	type
    //   21	44	245	finally
    //   47	55	245	finally
    //   67	87	245	finally
    //   90	107	245	finally
    //   117	143	245	finally
    //   146	166	245	finally
    //   169	189	245	finally
    //   201	219	245	finally
    //   219	221	245	finally
    //   252	273	245	finally
    //   275	294	245	finally
    //   294	296	245	finally
    //   21	44	250	com/sun/mail/iap/ProtocolException
    //   47	55	250	com/sun/mail/iap/ProtocolException
    //   67	87	250	com/sun/mail/iap/ProtocolException
    //   90	107	250	com/sun/mail/iap/ProtocolException
    //   117	143	250	com/sun/mail/iap/ProtocolException
    //   146	166	250	com/sun/mail/iap/ProtocolException
    //   169	189	250	com/sun/mail/iap/ProtocolException
    //   201	219	250	com/sun/mail/iap/ProtocolException
    //   21	44	273	com/sun/mail/iap/ConnectionException
    //   47	55	273	com/sun/mail/iap/ConnectionException
    //   67	87	273	com/sun/mail/iap/ConnectionException
    //   90	107	273	com/sun/mail/iap/ConnectionException
    //   117	143	273	com/sun/mail/iap/ConnectionException
    //   146	166	273	com/sun/mail/iap/ConnectionException
    //   169	189	273	com/sun/mail/iap/ConnectionException
    //   201	219	273	com/sun/mail/iap/ConnectionException
    //   2	7	299	finally
    //   14	21	299	finally
    //   221	226	299	finally
    //   233	245	299	finally
    //   296	299	299	finally
  }
  
  /* Error */
  private void N()
    throws MessagingException
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 176	javax/mail/internet/MimeMessage:h	Ljavax/mail/Flags;
    //   6: astore_1
    //   7: aload_1
    //   8: ifnull +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: invokevirtual 81	h5/d:D	()Ljava/lang/Object;
    //   18: astore_1
    //   19: aload_1
    //   20: monitorenter
    //   21: aload_0
    //   22: invokevirtual 85	h5/d:G	()Lcom/sun/mail/imap/protocol/e;
    //   25: astore_2
    //   26: aload_0
    //   27: invokevirtual 87	h5/d:A	()V
    //   30: aload_2
    //   31: aload_0
    //   32: invokevirtual 91	h5/d:H	()I
    //   35: invokevirtual 180	com/sun/mail/imap/protocol/e:m	(I)Ljavax/mail/Flags;
    //   38: astore_2
    //   39: aload_0
    //   40: aload_2
    //   41: putfield 176	javax/mail/internet/MimeMessage:h	Ljavax/mail/Flags;
    //   44: aload_2
    //   45: ifnonnull +16 -> 61
    //   48: new 182	javax/mail/Flags
    //   51: astore_2
    //   52: aload_2
    //   53: invokespecial 184	javax/mail/Flags:<init>	()V
    //   56: aload_0
    //   57: aload_2
    //   58: putfield 176	javax/mail/internet/MimeMessage:h	Ljavax/mail/Flags;
    //   61: aload_1
    //   62: monitorexit
    //   63: aload_0
    //   64: monitorexit
    //   65: return
    //   66: astore_2
    //   67: goto +42 -> 109
    //   70: astore_2
    //   71: aload_0
    //   72: invokevirtual 99	h5/d:B	()V
    //   75: new 71	javax/mail/MessagingException
    //   78: astore_3
    //   79: aload_3
    //   80: aload_2
    //   81: invokevirtual 110	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   84: aload_2
    //   85: invokespecial 113	javax/mail/MessagingException:<init>	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   88: aload_3
    //   89: athrow
    //   90: astore_3
    //   91: new 115	javax/mail/FolderClosedException
    //   94: astore_2
    //   95: aload_2
    //   96: aload_0
    //   97: getfield 121	javax/mail/Message:c	Ljavax/mail/b;
    //   100: aload_3
    //   101: invokevirtual 110	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   104: invokespecial 124	javax/mail/FolderClosedException:<init>	(Ljavax/mail/b;Ljava/lang/String;)V
    //   107: aload_2
    //   108: athrow
    //   109: aload_1
    //   110: monitorexit
    //   111: aload_2
    //   112: athrow
    //   113: astore_1
    //   114: aload_0
    //   115: monitorexit
    //   116: aload_1
    //   117: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	118	0	this	d
    //   6	104	1	localObject1	Object
    //   113	4	1	localObject2	Object
    //   25	33	2	localObject3	Object
    //   66	1	2	localObject4	Object
    //   70	15	2	localProtocolException	ProtocolException
    //   94	18	2	localFolderClosedException	FolderClosedException
    //   78	11	3	localMessagingException	MessagingException
    //   90	11	3	localConnectionException	ConnectionException
    // Exception table:
    //   from	to	target	type
    //   21	44	66	finally
    //   48	61	66	finally
    //   61	63	66	finally
    //   71	90	66	finally
    //   91	109	66	finally
    //   109	111	66	finally
    //   21	44	70	com/sun/mail/iap/ProtocolException
    //   48	61	70	com/sun/mail/iap/ProtocolException
    //   21	44	90	com/sun/mail/iap/ConnectionException
    //   48	61	90	com/sun/mail/iap/ConnectionException
    //   2	7	113	finally
    //   14	21	113	finally
    //   111	113	113	finally
  }
  
  private void O(String paramString)
  {
    this.B.put(paramString.toUpperCase(Locale.ENGLISH), paramString);
  }
  
  private String Q(String paramString)
  {
    if (this.w == null) {
      return paramString;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.w);
    localStringBuilder.append(".");
    localStringBuilder.append(paramString);
    return localStringBuilder.toString();
  }
  
  private InternetAddress[] z(InternetAddress[] paramArrayOfInternetAddress)
  {
    if (paramArrayOfInternetAddress == null) {
      return null;
    }
    return (InternetAddress[])paramArrayOfInternetAddress.clone();
  }
  
  protected void A()
    throws MessageRemovedException
  {
    if (!this.b) {
      return;
    }
    throw new MessageRemovedException();
  }
  
  protected void B()
    throws MessageRemovedException, FolderClosedException
  {
    try
    {
      synchronized (D())
      {
        G().t();
      }
    }
    catch (ConnectionException localConnectionException)
    {
      FolderClosedException localFolderClosedException = new javax/mail/FolderClosedException;
      localFolderClosedException.<init>(this.c, localConnectionException.getMessage());
      throw localFolderClosedException;
      throw localFolderClosedException;
    }
    catch (ProtocolException localProtocolException)
    {
      label21:
      break label21;
    }
    if (!this.b) {
      return;
    }
    throw new MessageRemovedException();
  }
  
  protected int C()
  {
    return ((j)this.c.j()).z();
  }
  
  protected Object D()
  {
    return ((b)this.c).h;
  }
  
  /* Error */
  public long E()
    throws MessagingException
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 38	h5/d:v	J
    //   6: ldc2_w 31
    //   9: lcmp
    //   10: ifeq +12 -> 22
    //   13: aload_0
    //   14: getfield 38	h5/d:v	J
    //   17: lstore_1
    //   18: aload_0
    //   19: monitorexit
    //   20: lload_1
    //   21: lreturn
    //   22: aload_0
    //   23: invokevirtual 81	h5/d:D	()Ljava/lang/Object;
    //   26: astore_3
    //   27: aload_3
    //   28: monitorenter
    //   29: aload_0
    //   30: invokevirtual 85	h5/d:G	()Lcom/sun/mail/imap/protocol/e;
    //   33: astore 4
    //   35: aload_0
    //   36: invokevirtual 87	h5/d:A	()V
    //   39: aload 4
    //   41: aload_0
    //   42: invokevirtual 91	h5/d:H	()I
    //   45: invokevirtual 241	com/sun/mail/imap/protocol/e:n	(I)Lcom/sun/mail/imap/protocol/i;
    //   48: astore 4
    //   50: aload 4
    //   52: ifnull +12 -> 64
    //   55: aload_0
    //   56: aload 4
    //   58: getfield 244	com/sun/mail/imap/protocol/i:a	J
    //   61: putfield 38	h5/d:v	J
    //   64: aload_3
    //   65: monitorexit
    //   66: aload_0
    //   67: getfield 38	h5/d:v	J
    //   70: lstore_1
    //   71: aload_0
    //   72: monitorexit
    //   73: lload_1
    //   74: lreturn
    //   75: astore 4
    //   77: goto +49 -> 126
    //   80: astore 4
    //   82: new 71	javax/mail/MessagingException
    //   85: astore 5
    //   87: aload 5
    //   89: aload 4
    //   91: invokevirtual 110	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   94: aload 4
    //   96: invokespecial 113	javax/mail/MessagingException:<init>	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   99: aload 5
    //   101: athrow
    //   102: astore 5
    //   104: new 115	javax/mail/FolderClosedException
    //   107: astore 4
    //   109: aload 4
    //   111: aload_0
    //   112: getfield 121	javax/mail/Message:c	Ljavax/mail/b;
    //   115: aload 5
    //   117: invokevirtual 110	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   120: invokespecial 124	javax/mail/FolderClosedException:<init>	(Ljavax/mail/b;Ljava/lang/String;)V
    //   123: aload 4
    //   125: athrow
    //   126: aload_3
    //   127: monitorexit
    //   128: aload 4
    //   130: athrow
    //   131: astore_3
    //   132: aload_0
    //   133: monitorexit
    //   134: aload_3
    //   135: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	136	0	this	d
    //   17	57	1	l	long
    //   26	101	3	localObject1	Object
    //   131	4	3	localObject2	Object
    //   33	24	4	localObject3	Object
    //   75	1	4	localObject4	Object
    //   80	15	4	localProtocolException	ProtocolException
    //   107	22	4	localFolderClosedException	FolderClosedException
    //   85	15	5	localMessagingException	MessagingException
    //   102	14	5	localConnectionException	ConnectionException
    // Exception table:
    //   from	to	target	type
    //   29	50	75	finally
    //   55	64	75	finally
    //   64	66	75	finally
    //   82	102	75	finally
    //   104	126	75	finally
    //   126	128	75	finally
    //   29	50	80	com/sun/mail/iap/ProtocolException
    //   55	64	80	com/sun/mail/iap/ProtocolException
    //   29	50	102	com/sun/mail/iap/ConnectionException
    //   55	64	102	com/sun/mail/iap/ConnectionException
    //   2	18	131	finally
    //   22	29	131	finally
    //   66	71	131	finally
    //   128	131	131	finally
  }
  
  public boolean F()
  {
    try
    {
      Boolean localBoolean = this.t;
      if (localBoolean == null)
      {
        bool = ((j)this.c.j()).H();
        return bool;
      }
      boolean bool = localBoolean.booleanValue();
      return bool;
    }
    finally {}
  }
  
  protected com.sun.mail.imap.protocol.e G()
    throws ProtocolException, FolderClosedException
  {
    ((b)this.c).H();
    com.sun.mail.imap.protocol.e locale = ((b)this.c).g;
    if (locale != null) {
      return locale;
    }
    throw new FolderClosedException(this.c);
  }
  
  protected int H()
  {
    ((b)this.c).getClass();
    k();
    throw null;
  }
  
  protected boolean I()
  {
    return ((j)this.c.j()).Z();
  }
  
  protected boolean K()
    throws FolderClosedException
  {
    com.sun.mail.imap.protocol.e locale = ((b)this.c).g;
    if (locale != null) {
      return locale.r();
    }
    throw new FolderClosedException(this.c);
  }
  
  public void P(boolean paramBoolean)
  {
    try
    {
      this.t = Boolean.valueOf(paramBoolean);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public String a()
    throws MessagingException
  {
    try
    {
      A();
      if (this.A)
      {
        localObject1 = super.a();
        return localObject1;
      }
      if (this.x == null)
      {
        L();
        localObject1 = new javax/mail/internet/a;
        com.sun.mail.imap.protocol.b localb = this.p;
        ((a)localObject1).<init>(localb.a, localb.b, localb.e);
        this.x = ((a)localObject1).toString();
      }
      Object localObject1 = this.x;
      return localObject1;
    }
    finally {}
  }
  
  public int b()
    throws MessagingException
  {
    A();
    if (this.s == -1L) {
      M();
    }
    long l = this.s;
    if (l > 2147483647L) {
      return 2147483647;
    }
    return (int)l;
  }
  
  /* Error */
  public String[] e(String paramString)
    throws MessagingException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 87	h5/d:A	()V
    //   4: aload_0
    //   5: aload_1
    //   6: invokespecial 314	h5/d:J	(Ljava/lang/String;)Z
    //   9: ifeq +12 -> 21
    //   12: aload_0
    //   13: getfield 317	javax/mail/internet/MimeMessage:g	Ljavax/mail/internet/c;
    //   16: aload_1
    //   17: invokevirtual 321	javax/mail/internet/c:c	(Ljava/lang/String;)[Ljava/lang/String;
    //   20: areturn
    //   21: aload_0
    //   22: invokevirtual 81	h5/d:D	()Ljava/lang/Object;
    //   25: astore_2
    //   26: aload_2
    //   27: monitorenter
    //   28: aload_0
    //   29: invokevirtual 85	h5/d:G	()Lcom/sun/mail/imap/protocol/e;
    //   32: astore_3
    //   33: aload_0
    //   34: invokevirtual 87	h5/d:A	()V
    //   37: aload_3
    //   38: invokevirtual 278	com/sun/mail/imap/protocol/e:r	()Z
    //   41: ifeq +77 -> 118
    //   44: aload_0
    //   45: invokevirtual 91	h5/d:H	()I
    //   48: istore 4
    //   50: new 195	java/lang/StringBuilder
    //   53: astore 5
    //   55: aload 5
    //   57: invokespecial 196	java/lang/StringBuilder:<init>	()V
    //   60: aload 5
    //   62: ldc_w 323
    //   65: invokevirtual 200	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   68: pop
    //   69: aload 5
    //   71: aload_1
    //   72: invokevirtual 200	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   75: pop
    //   76: aload 5
    //   78: ldc_w 325
    //   81: invokevirtual 200	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   84: pop
    //   85: aload_3
    //   86: iload 4
    //   88: aload_0
    //   89: aload 5
    //   91: invokevirtual 205	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   94: invokespecial 327	h5/d:Q	(Ljava/lang/String;)Ljava/lang/String;
    //   97: invokevirtual 330	com/sun/mail/imap/protocol/e:u	(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/a;
    //   100: astore_3
    //   101: aload_3
    //   102: ifnull +11 -> 113
    //   105: aload_3
    //   106: invokevirtual 335	com/sun/mail/imap/protocol/a:b	()Ljava/io/ByteArrayInputStream;
    //   109: astore_3
    //   110: goto +70 -> 180
    //   113: aconst_null
    //   114: astore_3
    //   115: goto +65 -> 180
    //   118: aload_0
    //   119: invokevirtual 91	h5/d:H	()I
    //   122: istore 4
    //   124: new 195	java/lang/StringBuilder
    //   127: astore 5
    //   129: aload 5
    //   131: invokespecial 196	java/lang/StringBuilder:<init>	()V
    //   134: aload 5
    //   136: ldc_w 337
    //   139: invokevirtual 200	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   142: pop
    //   143: aload 5
    //   145: aload_1
    //   146: invokevirtual 200	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   149: pop
    //   150: aload 5
    //   152: ldc_w 325
    //   155: invokevirtual 200	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   158: pop
    //   159: aload_3
    //   160: iload 4
    //   162: aload 5
    //   164: invokevirtual 205	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   167: invokevirtual 341	com/sun/mail/imap/protocol/e:o	(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/k;
    //   170: astore_3
    //   171: aload_3
    //   172: ifnull -59 -> 113
    //   175: aload_3
    //   176: invokevirtual 345	com/sun/mail/imap/protocol/k:a	()Ljava/io/ByteArrayInputStream;
    //   179: astore_3
    //   180: aload_2
    //   181: monitorexit
    //   182: aload_3
    //   183: ifnonnull +5 -> 188
    //   186: aconst_null
    //   187: areturn
    //   188: aload_0
    //   189: getfield 317	javax/mail/internet/MimeMessage:g	Ljavax/mail/internet/c;
    //   192: ifnonnull +14 -> 206
    //   195: aload_0
    //   196: new 319	javax/mail/internet/c
    //   199: dup
    //   200: invokespecial 346	javax/mail/internet/c:<init>	()V
    //   203: putfield 317	javax/mail/internet/MimeMessage:g	Ljavax/mail/internet/c;
    //   206: aload_0
    //   207: getfield 317	javax/mail/internet/MimeMessage:g	Ljavax/mail/internet/c;
    //   210: aload_3
    //   211: invokevirtual 349	javax/mail/internet/c:e	(Ljava/io/InputStream;)V
    //   214: aload_0
    //   215: aload_1
    //   216: invokespecial 351	h5/d:O	(Ljava/lang/String;)V
    //   219: aload_0
    //   220: getfield 317	javax/mail/internet/MimeMessage:g	Ljavax/mail/internet/c;
    //   223: aload_1
    //   224: invokevirtual 321	javax/mail/internet/c:c	(Ljava/lang/String;)[Ljava/lang/String;
    //   227: areturn
    //   228: astore_1
    //   229: goto +42 -> 271
    //   232: astore_1
    //   233: aload_0
    //   234: invokevirtual 99	h5/d:B	()V
    //   237: new 71	javax/mail/MessagingException
    //   240: astore_3
    //   241: aload_3
    //   242: aload_1
    //   243: invokevirtual 110	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   246: aload_1
    //   247: invokespecial 113	javax/mail/MessagingException:<init>	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   250: aload_3
    //   251: athrow
    //   252: astore_3
    //   253: new 115	javax/mail/FolderClosedException
    //   256: astore_1
    //   257: aload_1
    //   258: aload_0
    //   259: getfield 121	javax/mail/Message:c	Ljavax/mail/b;
    //   262: aload_3
    //   263: invokevirtual 110	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   266: invokespecial 124	javax/mail/FolderClosedException:<init>	(Ljavax/mail/b;Ljava/lang/String;)V
    //   269: aload_1
    //   270: athrow
    //   271: aload_2
    //   272: monitorexit
    //   273: aload_1
    //   274: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	275	0	this	d
    //   0	275	1	paramString	String
    //   25	247	2	localObject1	Object
    //   32	219	3	localObject2	Object
    //   252	11	3	localConnectionException	ConnectionException
    //   48	113	4	i	int
    //   53	110	5	localStringBuilder	StringBuilder
    // Exception table:
    //   from	to	target	type
    //   28	101	228	finally
    //   105	110	228	finally
    //   118	171	228	finally
    //   175	180	228	finally
    //   180	182	228	finally
    //   233	252	228	finally
    //   253	271	228	finally
    //   271	273	228	finally
    //   28	101	232	com/sun/mail/iap/ProtocolException
    //   105	110	232	com/sun/mail/iap/ProtocolException
    //   118	171	232	com/sun/mail/iap/ProtocolException
    //   175	180	232	com/sun/mail/iap/ProtocolException
    //   28	101	252	com/sun/mail/iap/ConnectionException
    //   105	110	252	com/sun/mail/iap/ConnectionException
    //   118	171	252	com/sun/mail/iap/ConnectionException
    //   175	180	252	com/sun/mail/iap/ConnectionException
  }
  
  public String f()
    throws MessagingException
  {
    A();
    if (this.A) {
      return super.f();
    }
    L();
    return this.p.c;
  }
  
  public String g(String paramString1, String paramString2)
    throws MessagingException
  {
    A();
    if (e(paramString1) == null) {
      return null;
    }
    return this.g.b(paramString1, paramString2);
  }
  
  public Flags h()
    throws MessagingException
  {
    try
    {
      A();
      N();
      Flags localFlags = super.h();
      return localFlags;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public Address[] j()
    throws MessagingException
  {
    A();
    if (this.A) {
      return super.j();
    }
    M();
    com.sun.mail.imap.protocol.c localc = this.q;
    InternetAddress[] arrayOfInternetAddress1 = localc.c;
    InternetAddress[] arrayOfInternetAddress2;
    if (arrayOfInternetAddress1 != null)
    {
      arrayOfInternetAddress2 = arrayOfInternetAddress1;
      if (arrayOfInternetAddress1.length != 0) {}
    }
    else
    {
      arrayOfInternetAddress2 = localc.d;
    }
    return z(arrayOfInternetAddress2);
  }
  
  public Date l()
    throws MessagingException
  {
    A();
    if (this.r == null) {
      M();
    }
    if (this.r == null) {
      return null;
    }
    return new Date(this.r.getTime());
  }
  
  public Address[] m(Message.RecipientType paramRecipientType)
    throws MessagingException
  {
    A();
    if (this.A) {
      return super.m(paramRecipientType);
    }
    M();
    if (paramRecipientType == Message.RecipientType.TO) {
      return z(this.q.e);
    }
    if (paramRecipientType == Message.RecipientType.CC) {
      return z(this.q.f);
    }
    if (paramRecipientType == Message.RecipientType.BCC) {
      return z(this.q.g);
    }
    return super.m(paramRecipientType);
  }
  
  public Date n()
    throws MessagingException
  {
    A();
    if (this.A) {
      return super.n();
    }
    M();
    if (this.q.a == null) {
      return null;
    }
    return new Date(this.q.a.getTime());
  }
  
  public String o()
    throws MessagingException
  {
    A();
    if (this.A) {
      return super.o();
    }
    String str = this.y;
    if (str != null) {
      return str;
    }
    M();
    str = this.q.b;
    if (str == null) {
      return null;
    }
    try
    {
      this.y = javax.mail.internet.h.d(javax.mail.internet.h.u(str));
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      this.y = this.q.b;
    }
    return this.y;
  }
  
  /* Error */
  public void r(Flags paramFlags, boolean paramBoolean)
    throws MessagingException
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 81	h5/d:D	()Ljava/lang/Object;
    //   6: astore_3
    //   7: aload_3
    //   8: monitorenter
    //   9: aload_0
    //   10: invokevirtual 85	h5/d:G	()Lcom/sun/mail/imap/protocol/e;
    //   13: astore 4
    //   15: aload_0
    //   16: invokevirtual 87	h5/d:A	()V
    //   19: aload 4
    //   21: aload_0
    //   22: invokevirtual 91	h5/d:H	()I
    //   25: aload_1
    //   26: iload_2
    //   27: invokevirtual 425	com/sun/mail/imap/protocol/e:w	(ILjavax/mail/Flags;Z)V
    //   30: aload_3
    //   31: monitorexit
    //   32: aload_0
    //   33: monitorexit
    //   34: return
    //   35: astore_1
    //   36: goto +43 -> 79
    //   39: astore_1
    //   40: new 71	javax/mail/MessagingException
    //   43: astore 4
    //   45: aload 4
    //   47: aload_1
    //   48: invokevirtual 110	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   51: aload_1
    //   52: invokespecial 113	javax/mail/MessagingException:<init>	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   55: aload 4
    //   57: athrow
    //   58: astore 4
    //   60: new 115	javax/mail/FolderClosedException
    //   63: astore_1
    //   64: aload_1
    //   65: aload_0
    //   66: getfield 121	javax/mail/Message:c	Ljavax/mail/b;
    //   69: aload 4
    //   71: invokevirtual 110	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   74: invokespecial 124	javax/mail/FolderClosedException:<init>	(Ljavax/mail/b;Ljava/lang/String;)V
    //   77: aload_1
    //   78: athrow
    //   79: aload_3
    //   80: monitorexit
    //   81: aload_1
    //   82: athrow
    //   83: astore_1
    //   84: aload_0
    //   85: monitorexit
    //   86: aload_1
    //   87: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	88	0	this	d
    //   0	88	1	paramFlags	Flags
    //   0	88	2	paramBoolean	boolean
    //   6	74	3	localObject1	Object
    //   13	43	4	localObject2	Object
    //   58	12	4	localConnectionException	ConnectionException
    // Exception table:
    //   from	to	target	type
    //   9	30	35	finally
    //   30	32	35	finally
    //   40	58	35	finally
    //   60	79	35	finally
    //   79	81	35	finally
    //   9	30	39	com/sun/mail/iap/ProtocolException
    //   9	30	58	com/sun/mail/iap/ConnectionException
    //   2	9	83	finally
    //   81	83	83	finally
  }
  
  /* Error */
  protected java.io.InputStream t()
    throws MessagingException
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 42	h5/d:A	Z
    //   4: ifeq +8 -> 12
    //   7: aload_0
    //   8: invokespecial 428	javax/mail/internet/MimeMessage:t	()Ljava/io/InputStream;
    //   11: areturn
    //   12: aconst_null
    //   13: astore_1
    //   14: aload_0
    //   15: invokevirtual 430	h5/d:F	()Z
    //   18: istore_2
    //   19: aload_0
    //   20: invokevirtual 81	h5/d:D	()Ljava/lang/Object;
    //   23: astore_3
    //   24: aload_3
    //   25: monitorenter
    //   26: aload_0
    //   27: invokevirtual 85	h5/d:G	()Lcom/sun/mail/imap/protocol/e;
    //   30: astore 4
    //   32: aload_0
    //   33: invokevirtual 87	h5/d:A	()V
    //   36: aload 4
    //   38: invokevirtual 278	com/sun/mail/imap/protocol/e:r	()Z
    //   41: ifeq +76 -> 117
    //   44: aload_0
    //   45: invokevirtual 432	h5/d:C	()I
    //   48: istore 5
    //   50: iconst_m1
    //   51: istore 6
    //   53: iload 5
    //   55: iconst_m1
    //   56: if_icmpeq +61 -> 117
    //   59: new 434	h5/c
    //   62: astore_1
    //   63: aload_0
    //   64: ldc_w 436
    //   67: invokespecial 327	h5/d:Q	(Ljava/lang/String;)Ljava/lang/String;
    //   70: astore 4
    //   72: iload 6
    //   74: istore 5
    //   76: aload_0
    //   77: getfield 77	h5/d:p	Lcom/sun/mail/imap/protocol/b;
    //   80: ifnull +23 -> 103
    //   83: iload 6
    //   85: istore 5
    //   87: aload_0
    //   88: invokevirtual 438	h5/d:I	()Z
    //   91: ifne +12 -> 103
    //   94: aload_0
    //   95: getfield 77	h5/d:p	Lcom/sun/mail/imap/protocol/b;
    //   98: getfield 440	com/sun/mail/imap/protocol/b:d	I
    //   101: istore 5
    //   103: aload_1
    //   104: aload_0
    //   105: aload 4
    //   107: iload 5
    //   109: iload_2
    //   110: invokespecial 443	h5/c:<init>	(Lh5/d;Ljava/lang/String;IZ)V
    //   113: aload_3
    //   114: monitorexit
    //   115: aload_1
    //   116: areturn
    //   117: aload 4
    //   119: invokevirtual 278	com/sun/mail/imap/protocol/e:r	()Z
    //   122: ifeq +60 -> 182
    //   125: iload_2
    //   126: ifeq +24 -> 150
    //   129: aload 4
    //   131: aload_0
    //   132: invokevirtual 91	h5/d:H	()I
    //   135: aload_0
    //   136: ldc_w 436
    //   139: invokespecial 327	h5/d:Q	(Ljava/lang/String;)Ljava/lang/String;
    //   142: invokevirtual 330	com/sun/mail/imap/protocol/e:u	(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/a;
    //   145: astore 4
    //   147: goto +21 -> 168
    //   150: aload 4
    //   152: aload_0
    //   153: invokevirtual 91	h5/d:H	()I
    //   156: aload_0
    //   157: ldc_w 436
    //   160: invokespecial 327	h5/d:Q	(Ljava/lang/String;)Ljava/lang/String;
    //   163: invokevirtual 445	com/sun/mail/imap/protocol/e:j	(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/a;
    //   166: astore 4
    //   168: aload 4
    //   170: ifnull +37 -> 207
    //   173: aload 4
    //   175: invokevirtual 335	com/sun/mail/imap/protocol/a:b	()Ljava/io/ByteArrayInputStream;
    //   178: astore_1
    //   179: goto +28 -> 207
    //   182: aload 4
    //   184: aload_0
    //   185: invokevirtual 91	h5/d:H	()I
    //   188: ldc_w 436
    //   191: invokevirtual 341	com/sun/mail/imap/protocol/e:o	(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/k;
    //   194: astore 4
    //   196: aload 4
    //   198: ifnull +9 -> 207
    //   201: aload 4
    //   203: invokevirtual 345	com/sun/mail/imap/protocol/k:a	()Ljava/io/ByteArrayInputStream;
    //   206: astore_1
    //   207: aload_3
    //   208: monitorexit
    //   209: aload_1
    //   210: astore 4
    //   212: aload_1
    //   213: ifnonnull +19 -> 232
    //   216: aload_0
    //   217: invokevirtual 99	h5/d:B	()V
    //   220: new 447	java/io/ByteArrayInputStream
    //   223: dup
    //   224: iconst_0
    //   225: newarray byte
    //   227: invokespecial 450	java/io/ByteArrayInputStream:<init>	([B)V
    //   230: astore 4
    //   232: aload 4
    //   234: areturn
    //   235: astore_1
    //   236: goto +48 -> 284
    //   239: astore 4
    //   241: aload_0
    //   242: invokevirtual 99	h5/d:B	()V
    //   245: new 71	javax/mail/MessagingException
    //   248: astore_1
    //   249: aload_1
    //   250: aload 4
    //   252: invokevirtual 110	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   255: aload 4
    //   257: invokespecial 113	javax/mail/MessagingException:<init>	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   260: aload_1
    //   261: athrow
    //   262: astore_1
    //   263: new 115	javax/mail/FolderClosedException
    //   266: astore 4
    //   268: aload 4
    //   270: aload_0
    //   271: getfield 121	javax/mail/Message:c	Ljavax/mail/b;
    //   274: aload_1
    //   275: invokevirtual 110	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   278: invokespecial 124	javax/mail/FolderClosedException:<init>	(Ljavax/mail/b;Ljava/lang/String;)V
    //   281: aload 4
    //   283: athrow
    //   284: aload_3
    //   285: monitorexit
    //   286: aload_1
    //   287: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	288	0	this	d
    //   13	200	1	localObject1	Object
    //   235	1	1	localObject2	Object
    //   248	13	1	localMessagingException	MessagingException
    //   262	25	1	localConnectionException	ConnectionException
    //   18	108	2	bool	boolean
    //   23	262	3	localObject3	Object
    //   30	203	4	localObject4	Object
    //   239	17	4	localProtocolException	ProtocolException
    //   266	16	4	localFolderClosedException	FolderClosedException
    //   48	60	5	i	int
    //   51	33	6	j	int
    // Exception table:
    //   from	to	target	type
    //   26	50	235	finally
    //   59	72	235	finally
    //   76	83	235	finally
    //   87	103	235	finally
    //   103	113	235	finally
    //   113	115	235	finally
    //   117	125	235	finally
    //   129	147	235	finally
    //   150	168	235	finally
    //   173	179	235	finally
    //   182	196	235	finally
    //   201	207	235	finally
    //   207	209	235	finally
    //   241	262	235	finally
    //   263	284	235	finally
    //   284	286	235	finally
    //   26	50	239	com/sun/mail/iap/ProtocolException
    //   59	72	239	com/sun/mail/iap/ProtocolException
    //   76	83	239	com/sun/mail/iap/ProtocolException
    //   87	103	239	com/sun/mail/iap/ProtocolException
    //   103	113	239	com/sun/mail/iap/ProtocolException
    //   117	125	239	com/sun/mail/iap/ProtocolException
    //   129	147	239	com/sun/mail/iap/ProtocolException
    //   150	168	239	com/sun/mail/iap/ProtocolException
    //   173	179	239	com/sun/mail/iap/ProtocolException
    //   182	196	239	com/sun/mail/iap/ProtocolException
    //   201	207	239	com/sun/mail/iap/ProtocolException
    //   26	50	262	com/sun/mail/iap/ConnectionException
    //   59	72	262	com/sun/mail/iap/ConnectionException
    //   76	83	262	com/sun/mail/iap/ConnectionException
    //   87	103	262	com/sun/mail/iap/ConnectionException
    //   103	113	262	com/sun/mail/iap/ConnectionException
    //   117	125	262	com/sun/mail/iap/ConnectionException
    //   129	147	262	com/sun/mail/iap/ConnectionException
    //   150	168	262	com/sun/mail/iap/ConnectionException
    //   173	179	262	com/sun/mail/iap/ConnectionException
    //   182	196	262	com/sun/mail/iap/ConnectionException
    //   201	207	262	com/sun/mail/iap/ConnectionException
  }
  
  public o7.e u()
    throws MessagingException
  {
    try
    {
      A();
      if ((this.d == null) && (!this.A))
      {
        L();
        Object localObject1;
        if (this.x == null)
        {
          localObject1 = new javax/mail/internet/a;
          localObject2 = this.p;
          ((a)localObject1).<init>(((com.sun.mail.imap.protocol.b)localObject2).a, ((com.sun.mail.imap.protocol.b)localObject2).b, ((com.sun.mail.imap.protocol.b)localObject2).e);
          this.x = ((a)localObject1).toString();
        }
        if (this.p.a())
        {
          localObject1 = new o7/e;
          localObject2 = new h5/e;
          ((e)localObject2).<init>(this, this.p.f, this.w, this);
          ((o7.e)localObject1).<init>((g)localObject2);
          this.d = ((o7.e)localObject1);
        }
        else if ((this.p.b()) && (K()) && (this.p.g != null))
        {
          o7.e locale = new o7/e;
          f localf = new h5/f;
          localObject2 = this.p;
          localObject1 = localObject2.f[0];
          com.sun.mail.imap.protocol.c localc = ((com.sun.mail.imap.protocol.b)localObject2).g;
          if (this.w == null)
          {
            localObject2 = "1";
          }
          else
          {
            localObject2 = new java/lang/StringBuilder;
            ((StringBuilder)localObject2).<init>();
            ((StringBuilder)localObject2).append(this.w);
            ((StringBuilder)localObject2).append(".1");
            localObject2 = ((StringBuilder)localObject2).toString();
          }
          localf.<init>(this, (com.sun.mail.imap.protocol.b)localObject1, localc, (String)localObject2);
          locale.<init>(localf, this.x);
          this.d = locale;
        }
      }
      Object localObject2 = super.u();
      return localObject2;
    }
    finally {}
  }
  
  public boolean x(Flags.a parama)
    throws MessagingException
  {
    try
    {
      A();
      N();
      boolean bool = super.x(parama);
      return bool;
    }
    finally
    {
      parama = finally;
      throw parama;
    }
  }
  
  javax.mail.h y()
  {
    return null;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     h5.d
 * JD-Core Version:    0.7.0.1
 */
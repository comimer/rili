package com.sun.mail.smtp;

import com.sun.mail.util.a;
import com.sun.mail.util.e;
import com.sun.mail.util.f;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.charset.StandardCharsets;
import java.util.logging.Level;
import javax.mail.MessagingException;
import javax.mail.g;
import javax.mail.j;

public class d
  extends j
{
  private static final String[] m = { "Bcc", "Content-Length" };
  private static final byte[] n = { 13, 10 };
  private static final String[] o = new String[0];
  private static char[] p = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70 };
  private boolean d;
  private f e;
  private String f;
  private int g;
  private boolean h;
  private BufferedInputStream i;
  private e j;
  private OutputStream k;
  private Socket l;
  
  private void E(byte[] paramArrayOfByte)
    throws MessagingException
  {
    try
    {
      this.k.write(paramArrayOfByte);
      this.k.write(n);
      this.k.flush();
      return;
    }
    catch (IOException paramArrayOfByte)
    {
      throw new MessagingException("Can't send command to SMTP host", paramArrayOfByte);
    }
  }
  
  private byte[] H(String paramString)
  {
    if (this.h) {
      return paramString.getBytes(StandardCharsets.UTF_8);
    }
    return a.b(paramString);
  }
  
  /* Error */
  private void q()
    throws MessagingException
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 108	com/sun/mail/smtp/d:l	Ljava/net/Socket;
    //   4: astore_1
    //   5: aload_1
    //   6: ifnull +7 -> 13
    //   9: aload_1
    //   10: invokevirtual 113	java/net/Socket:close	()V
    //   13: aload_0
    //   14: aconst_null
    //   15: putfield 108	com/sun/mail/smtp/d:l	Ljava/net/Socket;
    //   18: aload_0
    //   19: aconst_null
    //   20: putfield 71	com/sun/mail/smtp/d:k	Ljava/io/OutputStream;
    //   23: aload_0
    //   24: aconst_null
    //   25: putfield 115	com/sun/mail/smtp/d:i	Ljava/io/BufferedInputStream;
    //   28: aload_0
    //   29: aconst_null
    //   30: putfield 117	com/sun/mail/smtp/d:j	Lcom/sun/mail/util/e;
    //   33: aload_0
    //   34: invokespecial 122	javax/mail/g:d	()Z
    //   37: ifeq +7 -> 44
    //   40: aload_0
    //   41: invokespecial 123	javax/mail/g:close	()V
    //   44: return
    //   45: astore_1
    //   46: goto +17 -> 63
    //   49: astore_2
    //   50: new 67	javax/mail/MessagingException
    //   53: astore_1
    //   54: aload_1
    //   55: ldc 125
    //   57: aload_2
    //   58: invokespecial 85	javax/mail/MessagingException:<init>	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   61: aload_1
    //   62: athrow
    //   63: aload_0
    //   64: aconst_null
    //   65: putfield 108	com/sun/mail/smtp/d:l	Ljava/net/Socket;
    //   68: aload_0
    //   69: aconst_null
    //   70: putfield 71	com/sun/mail/smtp/d:k	Ljava/io/OutputStream;
    //   73: aload_0
    //   74: aconst_null
    //   75: putfield 115	com/sun/mail/smtp/d:i	Ljava/io/BufferedInputStream;
    //   78: aload_0
    //   79: aconst_null
    //   80: putfield 117	com/sun/mail/smtp/d:j	Lcom/sun/mail/util/e;
    //   83: aload_0
    //   84: invokespecial 122	javax/mail/g:d	()Z
    //   87: ifeq +7 -> 94
    //   90: aload_0
    //   91: invokespecial 123	javax/mail/g:close	()V
    //   94: aload_1
    //   95: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	96	0	this	d
    //   4	6	1	localSocket	Socket
    //   45	1	1	localObject	Object
    //   53	42	1	localMessagingException	MessagingException
    //   49	9	2	localIOException	IOException
    // Exception table:
    //   from	to	target	type
    //   0	5	45	finally
    //   9	13	45	finally
    //   50	63	45	finally
    //   0	5	49	java/io/IOException
    //   9	13	49	java/io/IOException
  }
  
  private boolean s(String paramString)
  {
    boolean bool;
    if ((paramString != null) && (paramString.length() >= 4) && (paramString.charAt(3) == '-')) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  /* Error */
  public void close()
    throws MessagingException
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokespecial 122	javax/mail/g:d	()Z
    //   6: istore_1
    //   7: iload_1
    //   8: ifne +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: getfield 108	com/sun/mail/smtp/d:l	Ljava/net/Socket;
    //   18: ifnull +85 -> 103
    //   21: aload_0
    //   22: ldc 137
    //   24: invokevirtual 141	com/sun/mail/smtp/d:z	(Ljava/lang/String;)V
    //   27: aload_0
    //   28: getfield 143	com/sun/mail/smtp/d:d	Z
    //   31: ifeq +72 -> 103
    //   34: aload_0
    //   35: invokevirtual 146	com/sun/mail/smtp/d:x	()I
    //   38: istore_2
    //   39: iload_2
    //   40: sipush 221
    //   43: if_icmpeq +60 -> 103
    //   46: iload_2
    //   47: iconst_m1
    //   48: if_icmpeq +55 -> 103
    //   51: aload_0
    //   52: getfield 148	com/sun/mail/smtp/d:e	Lcom/sun/mail/util/f;
    //   55: getstatic 154	java/util/logging/Level:FINE	Ljava/util/logging/Level;
    //   58: invokevirtual 159	com/sun/mail/util/f:f	(Ljava/util/logging/Level;)Z
    //   61: ifeq +42 -> 103
    //   64: aload_0
    //   65: getfield 148	com/sun/mail/smtp/d:e	Lcom/sun/mail/util/f;
    //   68: astore_3
    //   69: new 161	java/lang/StringBuilder
    //   72: astore 4
    //   74: aload 4
    //   76: invokespecial 163	java/lang/StringBuilder:<init>	()V
    //   79: aload 4
    //   81: ldc 165
    //   83: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   86: pop
    //   87: aload 4
    //   89: iload_2
    //   90: invokevirtual 172	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   93: pop
    //   94: aload_3
    //   95: aload 4
    //   97: invokevirtual 176	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   100: invokevirtual 178	com/sun/mail/util/f:b	(Ljava/lang/String;)V
    //   103: aload_0
    //   104: invokespecial 180	com/sun/mail/smtp/d:q	()V
    //   107: aload_0
    //   108: monitorexit
    //   109: return
    //   110: astore_3
    //   111: aload_0
    //   112: invokespecial 180	com/sun/mail/smtp/d:q	()V
    //   115: aload_3
    //   116: athrow
    //   117: astore_3
    //   118: aload_0
    //   119: monitorexit
    //   120: aload_3
    //   121: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	122	0	this	d
    //   6	2	1	bool	boolean
    //   38	52	2	i1	int
    //   68	27	3	localf	f
    //   110	6	3	localObject1	Object
    //   117	4	3	localObject2	Object
    //   72	24	4	localStringBuilder	StringBuilder
    // Exception table:
    //   from	to	target	type
    //   14	39	110	finally
    //   51	103	110	finally
    //   2	7	117	finally
    //   103	107	117	finally
    //   111	117	117	finally
  }
  
  protected void finalize()
    throws Throwable
  {
    try
    {
      try
      {
        q();
        label4:
        super.finalize();
      }
      finally
      {
        super.finalize();
      }
    }
    catch (MessagingException localMessagingException)
    {
      break label4;
    }
  }
  
  protected int x()
    throws MessagingException
  {
    Object localObject = new StringBuilder(100);
    try
    {
      String str;
      do
      {
        str = this.j.c();
        if (str == null)
        {
          str = ((StringBuilder)localObject).toString();
          localObject = str;
          if (str.length() == 0) {
            localObject = "[EOF]";
          }
          this.f = ((String)localObject);
          this.g = -1;
          this.e.i(Level.FINE, "EOF: {0}", localObject);
          return -1;
        }
        ((StringBuilder)localObject).append(str);
        ((StringBuilder)localObject).append("\n");
      } while (s(str));
      localObject = ((StringBuilder)localObject).toString();
      if (((String)localObject).length() >= 3) {
        try
        {
          i1 = Integer.parseInt(((String)localObject).substring(0, 3));
        }
        catch (StringIndexOutOfBoundsException localStringIndexOutOfBoundsException)
        {
          try
          {
            close();
          }
          catch (MessagingException localMessagingException1)
          {
            this.e.j(Level.FINE, "close failed", localMessagingException1);
          }
        }
        catch (NumberFormatException localNumberFormatException)
        {
          try
          {
            close();
          }
          catch (MessagingException localMessagingException2)
          {
            this.e.j(Level.FINE, "close failed", localMessagingException2);
          }
        }
      }
      int i1 = -1;
      if (i1 == -1) {
        this.e.i(Level.FINE, "bad server response: {0}", localObject);
      }
      this.f = ((String)localObject);
      this.g = i1;
      return i1;
    }
    catch (IOException localIOException)
    {
      this.e.j(Level.FINE, "exception reading response", localIOException);
      this.f = "";
      this.g = 0;
      throw new MessagingException("Exception reading response", localIOException);
    }
  }
  
  protected void z(String paramString)
    throws MessagingException
  {
    E(H(paramString));
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.sun.mail.smtp.d
 * JD-Core Version:    0.7.0.1
 */
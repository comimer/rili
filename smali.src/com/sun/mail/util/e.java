package com.sun.mail.util;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CodingErrorAction;
import java.nio.charset.StandardCharsets;

public class e
  extends FilterInputStream
{
  private static boolean d = h.b("mail.mime.allowutf8", false);
  private static int e = 1048576;
  private boolean a;
  private byte[] b = null;
  private CharsetDecoder c;
  
  public e(InputStream paramInputStream)
  {
    this(paramInputStream, false);
  }
  
  public e(InputStream paramInputStream, boolean paramBoolean)
  {
    super(paramInputStream);
    this.a = paramBoolean;
    if ((!paramBoolean) && (d))
    {
      paramInputStream = StandardCharsets.UTF_8.newDecoder();
      this.c = paramInputStream;
      paramInputStream.onMalformedInput(CodingErrorAction.REPORT);
      this.c.onUnmappableCharacter(CodingErrorAction.REPORT);
    }
  }
  
  public String c()
    throws IOException
  {
    Object localObject1 = this.b;
    Object localObject2 = localObject1;
    if (localObject1 == null)
    {
      localObject2 = new byte[''];
      this.b = ((byte[])localObject2);
    }
    int i = localObject2.length;
    int j = 0;
    int k;
    for (;;)
    {
      k = this.in.read();
      if ((k == -1) || (k == 10)) {
        break;
      }
      int m = 1;
      if (k == 13)
      {
        if (this.in.markSupported()) {
          this.in.mark(2);
        }
        i = this.in.read();
        if (i == 13) {
          i = this.in.read();
        } else {
          m = 0;
        }
        if (i == 10) {
          break;
        }
        if (this.in.markSupported())
        {
          this.in.reset();
          break;
        }
        if (!(this.in instanceof PushbackInputStream)) {
          this.in = new PushbackInputStream(this.in, 2);
        }
        if (i != -1) {
          ((PushbackInputStream)this.in).unread(i);
        }
        if (m == 0) {
          break;
        }
        ((PushbackInputStream)this.in).unread(13);
        break;
      }
      m = i - 1;
      localObject1 = localObject2;
      i = m;
      if (m < 0)
      {
        i = localObject2.length;
        m = e;
        if (i < m) {
          localObject2 = new byte[localObject2.length * 2];
        } else {
          localObject2 = new byte[localObject2.length + m];
        }
        i = localObject2.length - j - 1;
        System.arraycopy(this.b, 0, localObject2, 0, j);
        this.b = ((byte[])localObject2);
        localObject1 = localObject2;
      }
      localObject1[j] = ((byte)(byte)k);
      j++;
      localObject2 = localObject1;
    }
    if ((k == -1) && (j == 0)) {
      return null;
    }
    if (this.a) {
      return new String((byte[])localObject2, 0, j, StandardCharsets.UTF_8);
    }
    if (d) {}
    try
    {
      localObject1 = this.c.decode(ByteBuffer.wrap((byte[])localObject2, 0, j)).toString();
      return localObject1;
    }
    catch (CharacterCodingException localCharacterCodingException)
    {
      label348:
      break label348;
    }
    return new String((byte[])localObject2, 0, 0, j);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.sun.mail.util.e
 * JD-Core Version:    0.7.0.1
 */
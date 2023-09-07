package com.sun.mail.util;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public class i
  extends k
{
  public i(InputStream paramInputStream)
  {
    super(paramInputStream);
  }
  
  public int read()
    throws IOException
  {
    int i = this.in.read();
    if (i == 95) {
      return 32;
    }
    if (i == 61)
    {
      this.a[0] = ((byte)(byte)this.in.read());
      this.a[1] = ((byte)(byte)this.in.read());
      try
      {
        i = a.d(this.a, 0, 2, 16);
        return i;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("QDecoder: Error in QP stream ");
        localStringBuilder.append(localNumberFormatException.getMessage());
        throw new DecodingException(localStringBuilder.toString());
      }
    }
    return i;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.sun.mail.util.i
 * JD-Core Version:    0.7.0.1
 */
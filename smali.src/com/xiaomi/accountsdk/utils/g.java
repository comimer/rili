package com.xiaomi.accountsdk.utils;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;

public final class g
{
  public static void a(InputStream paramInputStream)
  {
    if (paramInputStream != null) {}
    try
    {
      paramInputStream.close();
      label8:
      return;
    }
    catch (IOException paramInputStream)
    {
      break label8;
    }
  }
  
  public static void b(OutputStream paramOutputStream)
  {
    if (paramOutputStream != null) {}
    try
    {
      paramOutputStream.flush();
    }
    catch (IOException localIOException)
    {
      try
      {
        for (;;)
        {
          paramOutputStream.close();
          label12:
          return;
          localIOException = localIOException;
        }
      }
      catch (IOException paramOutputStream)
      {
        break label12;
      }
    }
  }
  
  public static void c(Reader paramReader)
  {
    if (paramReader != null) {}
    try
    {
      paramReader.close();
      label8:
      return;
    }
    catch (IOException paramReader)
    {
      break label8;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.utils.g
 * JD-Core Version:    0.7.0.1
 */
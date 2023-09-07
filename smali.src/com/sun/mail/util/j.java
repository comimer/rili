package com.sun.mail.util;

import java.io.IOException;
import java.io.OutputStream;

public class j
  extends l
{
  private static String g = "=_?\"#$%&'(),.:;<>@[\\]^`{|}~";
  private static String h = "=_?";
  private String f;
  
  public j(OutputStream paramOutputStream, boolean paramBoolean)
  {
    super(paramOutputStream, 2147483647);
    if (paramBoolean) {
      paramOutputStream = g;
    } else {
      paramOutputStream = h;
    }
    this.f = paramOutputStream;
  }
  
  public static int d(byte[] paramArrayOfByte, boolean paramBoolean)
  {
    String str;
    if (paramBoolean) {
      str = g;
    } else {
      str = h;
    }
    int i = 0;
    int j = 0;
    while (i < paramArrayOfByte.length)
    {
      int k = paramArrayOfByte[i] & 0xFF;
      if ((k >= 32) && (k < 127) && (str.indexOf(k) < 0)) {
        j++;
      } else {
        j += 3;
      }
      i++;
    }
    return j;
  }
  
  public void write(int paramInt)
    throws IOException
  {
    paramInt &= 0xFF;
    if (paramInt == 32) {
      c(95, false);
    } else if ((paramInt >= 32) && (paramInt < 127) && (this.f.indexOf(paramInt) < 0)) {
      c(paramInt, false);
    } else {
      c(paramInt, true);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.sun.mail.util.j
 * JD-Core Version:    0.7.0.1
 */
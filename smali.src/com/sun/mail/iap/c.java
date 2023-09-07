package com.sun.mail.iap;

import java.nio.charset.StandardCharsets;

public class c
{
  private static String e = " (){%*\"\\";
  protected int a;
  protected int b;
  protected byte[] c;
  protected boolean d;
  
  private Object b(boolean paramBoolean1, boolean paramBoolean2)
  {
    g();
    byte[] arrayOfByte = this.c;
    int i = this.a;
    int j = arrayOfByte[i];
    int m;
    if (j == 34)
    {
      i++;
      this.a = i;
      j = i;
      int k;
      for (;;)
      {
        k = this.a;
        m = this.b;
        if (k >= m) {
          break;
        }
        arrayOfByte = this.c;
        int n = arrayOfByte[k];
        if (n == 34) {
          break;
        }
        if (n == 92) {
          this.a = (k + 1);
        }
        m = this.a;
        if (m != j) {
          arrayOfByte[j] = ((byte)arrayOfByte[m]);
        }
        j++;
        this.a = (m + 1);
      }
      if (k >= m) {
        return null;
      }
      this.a = (k + 1);
      if (paramBoolean2) {
        return h(this.c, i, j);
      }
      return new a(this.c, i, j - i);
    }
    if (j == 123)
    {
      i++;
      for (this.a = i;; this.a = (j + 1))
      {
        arrayOfByte = this.c;
        j = this.a;
        if (arrayOfByte[j] == 125) {
          break;
        }
      }
      try
      {
        j = com.sun.mail.util.a.c(arrayOfByte, i, j);
        m = this.a + 3;
        i = m + j;
        this.a = i;
        if (paramBoolean2) {
          return h(this.c, m, i);
        }
        return new a(this.c, m, j);
      }
      catch (NumberFormatException localNumberFormatException)
      {
        return null;
      }
    }
    if (paramBoolean1)
    {
      String str = e(e);
      if (paramBoolean2) {
        return str;
      }
      return new a(this.c, i, this.a);
    }
    if ((j != 78) && (j != 110)) {
      return null;
    }
    this.a = (i + 3);
    return null;
  }
  
  private String e(String paramString)
  {
    g();
    int i = this.a;
    if (i >= this.b) {
      return null;
    }
    for (;;)
    {
      int j = this.a;
      if (j >= this.b) {
        break;
      }
      j = this.c[j] & 0xFF;
      if ((j < 32) || (paramString.indexOf((char)j) >= 0) || (j == 127)) {
        break;
      }
      this.a += 1;
    }
    return h(this.c, i, this.a);
  }
  
  private String h(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.d) {
      paramArrayOfByte = new String(paramArrayOfByte, paramInt1, paramInt2 - paramInt1, StandardCharsets.UTF_8);
    } else {
      paramArrayOfByte = com.sun.mail.util.a.e(paramArrayOfByte, paramInt1, paramInt2);
    }
    return paramArrayOfByte;
  }
  
  public boolean a(char paramChar)
  {
    g();
    int i = this.a;
    if ((i < this.b) && (this.c[i] == (byte)paramChar))
    {
      this.a = (i + 1);
      return true;
    }
    return false;
  }
  
  public byte c()
  {
    int i = this.a;
    if (i < this.b) {
      return this.c[i];
    }
    return 0;
  }
  
  public byte d()
  {
    int i = this.a;
    if (i < this.b)
    {
      byte[] arrayOfByte = this.c;
      this.a = (i + 1);
      return arrayOfByte[i];
    }
    return 0;
  }
  
  public String f()
  {
    return (String)b(false, true);
  }
  
  public void g()
  {
    for (;;)
    {
      int i = this.a;
      if ((i >= this.b) || (this.c[i] != 32)) {
        break;
      }
      this.a = (i + 1);
    }
  }
  
  public String toString()
  {
    return h(this.c, 0, this.b);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.sun.mail.iap.c
 * JD-Core Version:    0.7.0.1
 */
package com.android.ex.chips;

import android.net.Uri;
import android.text.util.Rfc822Token;
import android.text.util.Rfc822Tokenizer;

public class r
{
  private final int a;
  private boolean b;
  private final String c;
  private final String d;
  private final int e;
  private final String f;
  private final long g;
  private final Long h;
  private final long i;
  private final Uri j;
  private final boolean k;
  private boolean l;
  private byte[] m;
  private int n;
  private String o;
  private final String p;
  private final String[] q;
  private boolean r;
  
  protected r(int paramInt1, String paramString1, String paramString2, int paramInt2, String paramString3, long paramLong1, Long paramLong, long paramLong2, Uri paramUri, boolean paramBoolean1, boolean paramBoolean2, String paramString4, String[] paramArrayOfString)
  {
    this(paramInt1, paramString1, paramString2, paramInt2, paramString3, paramLong1, paramLong, paramLong2, paramUri, true, paramBoolean1, paramBoolean2, paramString4, paramArrayOfString);
  }
  
  protected r(int paramInt1, String paramString1, String paramString2, int paramInt2, String paramString3, long paramLong1, Long paramLong, long paramLong2, Uri paramUri, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, String paramString4, String[] paramArrayOfString)
  {
    this.a = paramInt1;
    this.b = paramBoolean2;
    this.c = paramString1;
    this.d = paramString2;
    this.e = paramInt2;
    this.f = paramString3;
    this.g = paramLong1;
    this.h = paramLong;
    this.i = paramLong2;
    this.j = paramUri;
    this.k = paramBoolean1;
    this.m = null;
    this.l = paramBoolean3;
    this.p = paramString4;
    this.n = 0;
    this.o = null;
    this.q = paramArrayOfString;
  }
  
  public static r a(String paramString, boolean paramBoolean)
  {
    Rfc822Token[] arrayOfRfc822Token = Rfc822Tokenizer.tokenize(paramString);
    if (arrayOfRfc822Token.length > 0) {
      paramString = arrayOfRfc822Token[0].getAddress();
    }
    return new r(0, paramString, paramString, -1, null, -1L, null, -1L, null, true, paramBoolean, null, null);
  }
  
  public static r b(String paramString, boolean paramBoolean)
  {
    return new r(0, paramString, paramString, -1, null, -1L, null, -1L, null, true, paramBoolean, null, null);
  }
  
  public static r c(String paramString1, String paramString2, boolean paramBoolean)
  {
    return new r(0, paramString1, paramString2, -1, null, -2L, null, -2L, null, true, paramBoolean, null, null);
  }
  
  public static r d(String[] paramArrayOfString)
  {
    return new r(1, "", "", 0, "", -1L, null, -1L, null, true, false, null, paramArrayOfString);
  }
  
  public static r e(String paramString1, int paramInt1, String paramString2, int paramInt2, String paramString3, long paramLong1, Long paramLong, long paramLong2, String paramString4, boolean paramBoolean, String paramString5)
  {
    String str = y(paramInt1, paramString1, paramString2);
    if (paramString4 != null) {
      paramString1 = Uri.parse(paramString4);
    } else {
      paramString1 = null;
    }
    return new r(0, str, paramString2, paramInt2, paramString3, paramLong1, paramLong, paramLong2, paramString1, false, paramBoolean, paramString5, null);
  }
  
  public static r f(String paramString1, int paramInt1, String paramString2, int paramInt2, String paramString3, long paramLong1, Long paramLong, long paramLong2, String paramString4, boolean paramBoolean, String paramString5)
  {
    String str = y(paramInt1, paramString1, paramString2);
    if (paramString4 != null) {
      paramString1 = Uri.parse(paramString4);
    } else {
      paramString1 = null;
    }
    return new r(0, str, paramString2, paramInt2, paramString3, paramLong1, paramLong, paramLong2, paramString1, true, paramBoolean, paramString5, null);
  }
  
  public static boolean u(long paramLong)
  {
    boolean bool;
    if ((paramLong != -1L) && (paramLong != -2L)) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  private static String y(int paramInt, String paramString1, String paramString2)
  {
    if (paramInt <= 20) {
      paramString1 = paramString2;
    }
    return paramString1;
  }
  
  public void A(byte[] paramArrayOfByte)
  {
    try
    {
      this.m = paramArrayOfByte;
      return;
    }
    finally
    {
      paramArrayOfByte = finally;
      throw paramArrayOfByte;
    }
  }
  
  public boolean B()
  {
    return this.k;
  }
  
  public long g()
  {
    return this.g;
  }
  
  public long h()
  {
    return this.i;
  }
  
  public String i()
  {
    return this.d;
  }
  
  public String j()
  {
    return this.f;
  }
  
  public int k()
  {
    return this.e;
  }
  
  public Long l()
  {
    return this.h;
  }
  
  public String m()
  {
    return this.c;
  }
  
  public int n()
  {
    return this.a;
  }
  
  public int o()
  {
    return this.n;
  }
  
  public String p()
  {
    return this.o;
  }
  
  public String q()
  {
    return this.p;
  }
  
  public String[] r()
  {
    return this.q;
  }
  
  public byte[] s()
  {
    try
    {
      byte[] arrayOfByte = this.m;
      return arrayOfByte;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public Uri t()
  {
    return this.j;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.c);
    localStringBuilder.append(" <");
    localStringBuilder.append(this.d);
    localStringBuilder.append(">, isValid=");
    localStringBuilder.append(this.l);
    return localStringBuilder.toString();
  }
  
  public boolean v()
  {
    return this.b;
  }
  
  public boolean w()
  {
    int i1 = this.a;
    boolean bool1 = true;
    boolean bool2 = bool1;
    if (i1 != 0)
    {
      bool2 = bool1;
      if (i1 != 1) {
        if (i1 == 2) {
          bool2 = bool1;
        } else {
          bool2 = false;
        }
      }
    }
    return bool2;
  }
  
  public boolean x()
  {
    return this.l;
  }
  
  public void z(boolean paramBoolean)
  {
    this.r = paramBoolean;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.ex.chips.r
 * JD-Core Version:    0.7.0.1
 */
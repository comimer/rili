package com.miui.calendar.util;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;

public class r0
{
  private static final int[] c = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };
  private static final int[] d = { -3, 3, 2, 1, 0, -1, -2 };
  private Calendar a;
  public boolean b = false;
  
  public r0()
  {
    x(TimeZone.getDefault());
  }
  
  public r0(r0 paramr0)
  {
    E(paramr0);
  }
  
  public r0(String paramString)
  {
    if (paramString != null)
    {
      x(TimeZone.getTimeZone(paramString));
      return;
    }
    throw new NullPointerException("timezoneId is null!");
  }
  
  private boolean A(String paramString)
  {
    int i = paramString.length();
    if (i >= 8)
    {
      boolean bool = false;
      int j = i(paramString, 0, 1000);
      int k = i(paramString, 1, 100);
      int m = i(paramString, 2, 10);
      int n = i(paramString, 3, 1);
      int i1 = i(paramString, 4, 10);
      int i2 = i(paramString, 5, 1);
      int i3 = i(paramString, 6, 10);
      int i4 = i(paramString, 7, 1);
      this.b = true;
      int i5;
      int i6;
      int i7;
      if (i > 8)
      {
        if (i >= 15)
        {
          b(paramString, 8, 'T');
          this.b = false;
          i5 = i(paramString, 9, 10) + i(paramString, 10, 1);
          i6 = i(paramString, 11, 10) + i(paramString, 12, 1);
          i7 = i(paramString, 13, 10) + i(paramString, 14, 1);
          if (i > 15)
          {
            b(paramString, 15, 'Z');
            i = i7;
            bool = true;
            i7 = i5;
            i5 = i;
          }
          else
          {
            i = i5;
            i5 = i7;
            i7 = i;
          }
        }
        else
        {
          localStringBuilder = new StringBuilder();
          localStringBuilder.append("String is too short: \"");
          localStringBuilder.append(paramString);
          localStringBuilder.append("\" If there are more than 8 characters there must be at least 15.");
          throw new IllegalArgumentException(localStringBuilder.toString());
        }
      }
      else
      {
        i7 = 0;
        i6 = i7;
        i5 = i6;
      }
      this.a.set(j + k + m + n, i1 + i2 - 1, i3 + i4, i7, i6, i5);
      return bool;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("String is too short: \"");
    localStringBuilder.append(paramString);
    localStringBuilder.append("\" Expected at least 8 characters.");
    throw new IllegalArgumentException(localStringBuilder.toString());
  }
  
  private void b(String paramString, int paramInt, char paramChar)
  {
    char c1 = paramString.charAt(paramInt);
    if (c1 == paramChar) {
      return;
    }
    throw new IllegalArgumentException(String.format("Unexpected character 0x%02d at pos=%d.  Expected 0x%02d ('%c').", new Object[] { Integer.valueOf(c1), Integer.valueOf(paramInt), Integer.valueOf(paramChar), Character.valueOf(paramChar) }));
  }
  
  public static int d(r0 paramr01, r0 paramr02)
  {
    return paramr01.h().compareTo(paramr02.h());
  }
  
  private static int i(String paramString, int paramInt1, int paramInt2)
  {
    char c1 = paramString.charAt(paramInt1);
    if (Character.isDigit(c1)) {
      return Character.getNumericValue(c1) * paramInt2;
    }
    paramString = new StringBuilder();
    paramString.append("Parse error at pos=");
    paramString.append(paramInt1);
    throw new IllegalArgumentException(paramString.toString());
  }
  
  public static String j()
  {
    return TimeZone.getDefault().getID();
  }
  
  public static int n(long paramLong1, long paramLong2)
  {
    double d1 = paramLong2 * 1000L;
    return (int)Math.floor((paramLong1 + d1) / 86400000.0D) + 2440588;
  }
  
  private void x(TimeZone paramTimeZone)
  {
    this.a = Calendar.getInstance(paramTimeZone);
    C(0, 0, 0, 1, 0, 1970);
    this.a.set(14, 0);
  }
  
  public void B(int paramInt1, int paramInt2, int paramInt3)
  {
    this.a.set(paramInt3, paramInt2, paramInt1);
    this.b = true;
  }
  
  public void C(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    this.a.set(paramInt6, paramInt5, paramInt4, paramInt3, paramInt2, paramInt1);
    this.b = false;
  }
  
  public void D(long paramLong)
  {
    paramLong /= 1000L;
    this.a.setTimeInMillis(paramLong * 1000L);
    this.b = false;
  }
  
  public void E(r0 paramr0)
  {
    this.a = ((Calendar)paramr0.h().clone());
    this.b = paramr0.b;
  }
  
  public void F(int paramInt)
  {
    this.a.set(11, paramInt);
  }
  
  public long G(int paramInt)
  {
    long l = (paramInt - 2440588) * 86400000L;
    D(l);
    int i = n(l, l());
    int j = q();
    this.a.set(5, j + (paramInt - i));
    this.a.set(11, 0);
    this.a.set(12, 0);
    this.a.set(13, 0);
    this.a.set(14, 0);
    return P(true);
  }
  
  public void H(int paramInt)
  {
    this.a.set(12, paramInt);
  }
  
  public void I(int paramInt)
  {
    this.a.set(2, paramInt);
  }
  
  public void J(int paramInt)
  {
    this.a.set(5, paramInt);
  }
  
  public void K(int paramInt)
  {
    this.a.set(13, paramInt);
  }
  
  public void L(String paramString)
  {
    int i = v();
    int j = p();
    int k = q();
    int m = m();
    int n = o();
    int i1 = r();
    this.a.clear();
    this.a.setTimeZone(TimeZone.getTimeZone(paramString));
    this.a.set(i, j, k, m, n, i1);
  }
  
  public void M()
  {
    D(System.currentTimeMillis());
  }
  
  public void N(int paramInt)
  {
    this.a.set(1, paramInt);
  }
  
  public void O(String paramString)
  {
    this.a.setTimeZone(TimeZone.getTimeZone(paramString));
  }
  
  public long P(boolean paramBoolean)
  {
    return this.a.getTimeInMillis();
  }
  
  public boolean a(r0 paramr0)
  {
    boolean bool;
    if (d(this, paramr0) < 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public void c(String paramString)
  {
    if (paramString != null)
    {
      this.a.clear();
      this.a.setTimeZone(TimeZone.getTimeZone(paramString));
      this.b = false;
      return;
    }
    throw new NullPointerException("timezone is null!");
  }
  
  public String e(String paramString)
  {
    paramString = new SimpleDateFormat(paramString, Locale.getDefault());
    paramString.setTimeZone(this.a.getTimeZone());
    return paramString.format(this.a.getTime());
  }
  
  public String f()
  {
    if (this.b) {
      return e("yyyyMMdd");
    }
    if (this.a.getTimeZone().getID().equals("UTC")) {
      return e("yyyyMMdd'T'HHmmss'Z'");
    }
    return e("yyyyMMdd'T'HHmmss");
  }
  
  public int g(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("bad field=");
      localStringBuilder.append(paramInt);
      throw new RuntimeException(localStringBuilder.toString());
    case 9: 
      throw new RuntimeException("WEEK_NUM not implemented");
    case 8: 
      paramInt = this.a.get(1);
      if ((paramInt % 4 == 0) && ((paramInt % 100 != 0) || (paramInt % 400 == 0))) {
        paramInt = 365;
      } else {
        paramInt = 364;
      }
      return paramInt;
    case 7: 
      return 6;
    case 6: 
      return 9999;
    case 5: 
      return 11;
    case 4: 
      paramInt = c[this.a.get(2)];
      int i = 28;
      if (paramInt != 28) {
        return paramInt;
      }
      int j = this.a.get(1);
      paramInt = i;
      if (j % 4 == 0) {
        if (j % 100 == 0)
        {
          paramInt = i;
          if (j % 400 != 0) {}
        }
        else
        {
          paramInt = 29;
        }
      }
      return paramInt;
    case 3: 
      return 23;
    }
    return 59;
  }
  
  public Calendar h()
  {
    return this.a;
  }
  
  public int k()
  {
    int i;
    if (this.a.get(16) != 0) {
      i = 1;
    } else {
      i = 0;
    }
    return i;
  }
  
  public long l()
  {
    return this.a.get(15) / 1000 + this.a.get(16) / 1000;
  }
  
  public int m()
  {
    return this.a.get(11);
  }
  
  public int o()
  {
    return this.a.get(12);
  }
  
  public int p()
  {
    return this.a.get(2);
  }
  
  public int q()
  {
    return this.a.get(5);
  }
  
  public int r()
  {
    return this.a.get(13);
  }
  
  public String s()
  {
    return this.a.getTimeZone().getID();
  }
  
  public int t()
  {
    return this.a.get(7) - 1;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.a.getTime());
    localStringBuilder.append(" ");
    localStringBuilder.append(this.a.toString());
    return localStringBuilder.toString();
  }
  
  public int u()
  {
    int i = w();
    int[] arrayOfInt = d;
    i += arrayOfInt[t()];
    if ((i >= 0) && (i <= 364)) {
      i /= 7;
    }
    for (;;)
    {
      return i + 1;
      r0 localr0 = new r0(this);
      localr0.J(localr0.q() + arrayOfInt[t()]);
      localr0.y(true);
      i = localr0.w() / 7;
    }
  }
  
  public int v()
  {
    return this.a.get(1);
  }
  
  public int w()
  {
    return this.a.get(6) - 1;
  }
  
  public long y(boolean paramBoolean)
  {
    return P(paramBoolean);
  }
  
  public boolean z(String paramString)
  {
    if (paramString != null)
    {
      if (A(paramString))
      {
        this.a.setTimeZone(TimeZone.getTimeZone("UTC"));
        return true;
      }
      return false;
    }
    throw new IllegalArgumentException("time string is null");
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.r0
 * JD-Core Version:    0.7.0.1
 */
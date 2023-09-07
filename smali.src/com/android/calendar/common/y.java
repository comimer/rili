package com.android.calendar.common;

import com.miui.calendar.util.x0;
import java.util.TimeZone;

public class y
  implements Comparable<y>
{
  public final String a;
  private final String b;
  private final int c;
  private final boolean d;
  private String e;
  
  public y(String paramString1, String paramString2, long paramLong)
  {
    this.a = paramString1;
    this.b = paramString2;
    paramString1 = TimeZone.getTimeZone(paramString1);
    this.d = paramString1.useDaylightTime();
    this.c = paramString1.getOffset(paramLong);
  }
  
  public void b()
  {
    if (this.e != null) {
      return;
    }
    int i = Math.abs(this.c);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("GMT");
    if (this.c < 0) {
      localStringBuilder.append('-');
    } else {
      localStringBuilder.append('+');
    }
    localStringBuilder.append(i / 3600000L);
    localStringBuilder.append(':');
    i = i / 60000 % 60;
    if (i < 10) {
      localStringBuilder.append('0');
    }
    localStringBuilder.append(i);
    localStringBuilder.insert(0, "(");
    localStringBuilder.append(") ");
    if (x0.x0()) {
      localStringBuilder.insert(0, this.b);
    } else {
      localStringBuilder.append(this.b);
    }
    if (this.d) {
      if (x0.x0()) {
        localStringBuilder.insert(0, "☀ ");
      } else {
        localStringBuilder.append(" ☀");
      }
    }
    this.e = localStringBuilder.toString();
  }
  
  public int c(y paramy)
  {
    int i = this.c;
    int j = paramy.c;
    if (i == j) {
      return 0;
    }
    if (i < j) {
      i = -1;
    } else {
      i = 1;
    }
    return i;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if (getClass() != paramObject.getClass()) {
      return false;
    }
    paramObject = (y)paramObject;
    String str = this.b;
    if (str == null)
    {
      if (paramObject.b != null) {
        return false;
      }
    }
    else if (!str.equals(paramObject.b)) {
      return false;
    }
    str = this.a;
    if (str == null)
    {
      if (paramObject.a != null) {
        return false;
      }
    }
    else if (!str.equals(paramObject.a)) {
      return false;
    }
    return this.c == paramObject.c;
  }
  
  public int hashCode()
  {
    String str = this.b;
    int i = 0;
    int j;
    if (str == null) {
      j = 0;
    } else {
      j = str.hashCode();
    }
    str = this.a;
    if (str != null) {
      i = str.hashCode();
    }
    return ((j + 31) * 31 + i) * 31 + this.c;
  }
  
  public String toString()
  {
    if (this.e == null) {
      b();
    }
    return this.e;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.common.y
 * JD-Core Version:    0.7.0.1
 */
package com.miui.calendar.util.calendarcommon2;

public class a
{
  public int a = 1;
  public int b;
  public int c;
  public int d;
  public int e;
  public int f;
  
  public long a()
  {
    return this.a * 1000 * (this.b * 604800 + this.c * 86400 + this.d * 3600 + this.e * 60 + this.f);
  }
  
  public void b(String paramString)
    throws DateException
  {
    this.a = 1;
    this.b = 0;
    this.c = 0;
    this.d = 0;
    this.e = 0;
    this.f = 0;
    int i = paramString.length();
    if (i < 1) {
      return;
    }
    int j = paramString.charAt(0);
    if (j == 45) {
      this.a = -1;
    }
    while (j == 43)
    {
      j = 1;
      break;
    }
    j = 0;
    if (i < j) {
      return;
    }
    if (paramString.charAt(j) == 'P')
    {
      int k = j + 1;
      j = k;
      if (paramString.charAt(k) == 'T') {
        j = k + 1;
      }
      int m = 0;
      k = j;
      j = m;
      while (k < i)
      {
        char c1 = paramString.charAt(k);
        if ((c1 >= '0') && (c1 <= '9'))
        {
          j = j * 10 + (c1 - '0');
        }
        else
        {
          if (c1 == 'W') {
            this.b = j;
          }
          for (;;)
          {
            j = 0;
            break label249;
            if (c1 == 'H')
            {
              this.d = j;
            }
            else if (c1 == 'M')
            {
              this.e = j;
            }
            else if (c1 == 'S')
            {
              this.f = j;
            }
            else
            {
              if (c1 != 'D') {
                break;
              }
              this.c = j;
            }
          }
          if (c1 != 'T') {
            break label255;
          }
        }
        label249:
        k++;
        continue;
        label255:
        localStringBuilder = new StringBuilder();
        localStringBuilder.append("Duration.parse(str='");
        localStringBuilder.append(paramString);
        localStringBuilder.append("') unexpected char '");
        localStringBuilder.append(c1);
        localStringBuilder.append("' at index=");
        localStringBuilder.append(k);
        throw new DateException(localStringBuilder.toString());
      }
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Duration.parse(str='");
    localStringBuilder.append(paramString);
    localStringBuilder.append("') expected 'P' at index=");
    localStringBuilder.append(j);
    throw new DateException(localStringBuilder.toString());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.calendarcommon2.a
 * JD-Core Version:    0.7.0.1
 */
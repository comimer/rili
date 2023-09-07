package com.google.gson.internal.bind.util;

import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;

public class ISO8601Utils
{
  private static final TimeZone TIMEZONE_UTC = TimeZone.getTimeZone("UTC");
  private static final String UTC_ID = "UTC";
  
  private static boolean checkOffset(String paramString, int paramInt, char paramChar)
  {
    boolean bool;
    if ((paramInt < paramString.length()) && (paramString.charAt(paramInt) == paramChar)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static String format(Date paramDate)
  {
    return format(paramDate, false, TIMEZONE_UTC);
  }
  
  public static String format(Date paramDate, boolean paramBoolean)
  {
    return format(paramDate, paramBoolean, TIMEZONE_UTC);
  }
  
  public static String format(Date paramDate, boolean paramBoolean, TimeZone paramTimeZone)
  {
    GregorianCalendar localGregorianCalendar = new GregorianCalendar(paramTimeZone, Locale.US);
    localGregorianCalendar.setTime(paramDate);
    int i;
    if (paramBoolean) {
      i = 4;
    } else {
      i = 0;
    }
    if (paramTimeZone.getRawOffset() == 0) {
      j = 1;
    } else {
      j = 6;
    }
    paramDate = new StringBuilder(19 + i + j);
    padInt(paramDate, localGregorianCalendar.get(1), 4);
    char c1 = '-';
    paramDate.append('-');
    padInt(paramDate, localGregorianCalendar.get(2) + 1, 2);
    paramDate.append('-');
    padInt(paramDate, localGregorianCalendar.get(5), 2);
    paramDate.append('T');
    padInt(paramDate, localGregorianCalendar.get(11), 2);
    paramDate.append(':');
    padInt(paramDate, localGregorianCalendar.get(12), 2);
    paramDate.append(':');
    padInt(paramDate, localGregorianCalendar.get(13), 2);
    if (paramBoolean)
    {
      paramDate.append('.');
      padInt(paramDate, localGregorianCalendar.get(14), 3);
    }
    int j = paramTimeZone.getOffset(localGregorianCalendar.getTimeInMillis());
    if (j != 0)
    {
      int k = j / 60000;
      i = Math.abs(k / 60);
      k = Math.abs(k % 60);
      char c2;
      if (j < 0)
      {
        c2 = c1;
      }
      else
      {
        j = 43;
        c2 = j;
      }
      paramDate.append(c2);
      padInt(paramDate, i, 2);
      paramDate.append(':');
      padInt(paramDate, k, 2);
    }
    else
    {
      paramDate.append('Z');
    }
    return paramDate.toString();
  }
  
  private static int indexOfNonDigit(String paramString, int paramInt)
  {
    while (paramInt < paramString.length())
    {
      int i = paramString.charAt(paramInt);
      if ((i >= 48) && (i <= 57)) {
        paramInt++;
      } else {
        return paramInt;
      }
    }
    return paramString.length();
  }
  
  private static void padInt(StringBuilder paramStringBuilder, int paramInt1, int paramInt2)
  {
    String str = Integer.toString(paramInt1);
    for (paramInt1 = paramInt2 - str.length(); paramInt1 > 0; paramInt1--) {
      paramStringBuilder.append('0');
    }
    paramStringBuilder.append(str);
  }
  
  public static Date parse(String paramString, ParsePosition paramParsePosition)
    throws ParseException
  {
    label421:
    Object localObject2;
    try
    {
      int i = paramParsePosition.getIndex();
      int j = i + 4;
      int k = parseInt(paramString, i, j);
      i = j;
      if (checkOffset(paramString, j, '-')) {
        i = j + 1;
      }
      j = i + 2;
      int m = parseInt(paramString, i, j);
      i = j;
      if (checkOffset(paramString, j, '-')) {
        i = j + 1;
      }
      int n = i + 2;
      int i1 = parseInt(paramString, i, n);
      boolean bool = checkOffset(paramString, n, 'T');
      if ((!bool) && (paramString.length() <= n))
      {
        localObject1 = new java/util/GregorianCalendar;
        ((GregorianCalendar)localObject1).<init>(k, m - 1, i1);
        paramParsePosition.setIndex(n);
        return ((Calendar)localObject1).getTime();
      }
      if (bool)
      {
        i = n + 1;
        i2 = i + 2;
        j = parseInt(paramString, i, i2);
        i = i2;
        if (checkOffset(paramString, i2, ':')) {
          i = i2 + 1;
        }
        i2 = i + 2;
        n = parseInt(paramString, i, i2);
        i = i2;
        if (checkOffset(paramString, i2, ':')) {
          i = i2 + 1;
        }
        if (paramString.length() > i)
        {
          i2 = paramString.charAt(i);
          if ((i2 != 90) && (i2 != 43) && (i2 != 45))
          {
            int i3 = i + 2;
            i = parseInt(paramString, i, i3);
            i2 = i;
            if (i > 59)
            {
              i2 = i;
              if (i < 63) {
                i2 = 59;
              }
            }
            if (checkOffset(paramString, i3, '.'))
            {
              i3++;
              int i4 = indexOfNonDigit(paramString, i3 + 1);
              i5 = Math.min(i4, i3 + 3);
              i = parseInt(paramString, i3, i5);
              i5 -= i3;
              if (i5 != 1)
              {
                if (i5 == 2) {
                  i *= 10;
                }
              }
              else {
                i *= 100;
              }
              i3 = n;
              i5 = i;
              i = j;
              n = i4;
              j = i3;
              break label421;
            }
            i5 = n;
            i = j;
            n = i3;
            i3 = 0;
            j = i5;
            i5 = i3;
            break label421;
          }
        }
        i2 = n;
        n = i;
        i = j;
        j = i2;
      }
      else
      {
        i = 0;
        j = 0;
      }
      int i5 = 0;
      int i2 = 0;
      if (paramString.length() > n)
      {
        char c = paramString.charAt(n);
        if (c == 'Z')
        {
          localObject1 = TIMEZONE_UTC;
          n++;
        }
        else
        {
          if ((c != '+') && (c != '-'))
          {
            localObject1 = new java/lang/IndexOutOfBoundsException;
            localObject2 = new java/lang/StringBuilder;
            ((StringBuilder)localObject2).<init>();
            ((StringBuilder)localObject2).append("Invalid time zone indicator '");
            ((StringBuilder)localObject2).append(c);
            ((StringBuilder)localObject2).append("'");
            ((IndexOutOfBoundsException)localObject1).<init>(((StringBuilder)localObject2).toString());
            throw ((Throwable)localObject1);
          }
          localObject1 = paramString.substring(n);
          if (((String)localObject1).length() < 5)
          {
            localObject2 = new java/lang/StringBuilder;
            ((StringBuilder)localObject2).<init>();
            ((StringBuilder)localObject2).append((String)localObject1);
            ((StringBuilder)localObject2).append("00");
            localObject1 = ((StringBuilder)localObject2).toString();
          }
          n += ((String)localObject1).length();
          if ((!"+0000".equals(localObject1)) && (!"+00:00".equals(localObject1)))
          {
            localObject2 = new java/lang/StringBuilder;
            ((StringBuilder)localObject2).<init>();
            ((StringBuilder)localObject2).append("GMT");
            ((StringBuilder)localObject2).append((String)localObject1);
            localObject2 = ((StringBuilder)localObject2).toString();
            localObject1 = TimeZone.getTimeZone((String)localObject2);
            localObject3 = ((TimeZone)localObject1).getID();
            if ((!((String)localObject3).equals(localObject2)) && (!((String)localObject3).replace(":", "").equals(localObject2)))
            {
              IndexOutOfBoundsException localIndexOutOfBoundsException2 = new java/lang/IndexOutOfBoundsException;
              localObject3 = new java/lang/StringBuilder;
              ((StringBuilder)localObject3).<init>();
              ((StringBuilder)localObject3).append("Mismatching time zone indicator: ");
              ((StringBuilder)localObject3).append((String)localObject2);
              ((StringBuilder)localObject3).append(" given, resolves to ");
              ((StringBuilder)localObject3).append(((TimeZone)localObject1).getID());
              localIndexOutOfBoundsException2.<init>(((StringBuilder)localObject3).toString());
              throw localIndexOutOfBoundsException2;
            }
          }
          else
          {
            localObject1 = TIMEZONE_UTC;
          }
        }
        localObject2 = new java/util/GregorianCalendar;
        ((GregorianCalendar)localObject2).<init>((TimeZone)localObject1);
        ((Calendar)localObject2).setLenient(false);
        ((Calendar)localObject2).set(1, k);
        ((Calendar)localObject2).set(2, m - 1);
        ((Calendar)localObject2).set(5, i1);
        ((Calendar)localObject2).set(11, i);
        ((Calendar)localObject2).set(12, j);
        ((Calendar)localObject2).set(13, i2);
        ((Calendar)localObject2).set(14, i5);
        paramParsePosition.setIndex(n);
        return ((Calendar)localObject2).getTime();
      }
      Object localObject1 = new java/lang/IllegalArgumentException;
      ((IllegalArgumentException)localObject1).<init>("No time zone indicator");
      throw ((Throwable)localObject1);
    }
    catch (IllegalArgumentException localIllegalArgumentException) {}catch (NumberFormatException localNumberFormatException) {}catch (IndexOutOfBoundsException localIndexOutOfBoundsException1) {}
    if (paramString == null)
    {
      paramString = null;
    }
    else
    {
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append('"');
      ((StringBuilder)localObject2).append(paramString);
      ((StringBuilder)localObject2).append('"');
      paramString = ((StringBuilder)localObject2).toString();
    }
    Object localObject3 = localIndexOutOfBoundsException1.getMessage();
    if (localObject3 != null)
    {
      localObject2 = localObject3;
      if (!((String)localObject3).isEmpty()) {}
    }
    else
    {
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("(");
      ((StringBuilder)localObject2).append(localIndexOutOfBoundsException1.getClass().getName());
      ((StringBuilder)localObject2).append(")");
      localObject2 = ((StringBuilder)localObject2).toString();
    }
    localObject3 = new StringBuilder();
    ((StringBuilder)localObject3).append("Failed to parse date [");
    ((StringBuilder)localObject3).append(paramString);
    ((StringBuilder)localObject3).append("]: ");
    ((StringBuilder)localObject3).append((String)localObject2);
    paramString = new ParseException(((StringBuilder)localObject3).toString(), paramParsePosition.getIndex());
    paramString.initCause(localIndexOutOfBoundsException1);
    throw paramString;
  }
  
  private static int parseInt(String paramString, int paramInt1, int paramInt2)
    throws NumberFormatException
  {
    if ((paramInt1 >= 0) && (paramInt2 <= paramString.length()) && (paramInt1 <= paramInt2))
    {
      int i;
      int j;
      StringBuilder localStringBuilder;
      if (paramInt1 < paramInt2)
      {
        i = paramInt1 + 1;
        j = Character.digit(paramString.charAt(paramInt1), 10);
        if (j >= 0)
        {
          j = -j;
        }
        else
        {
          localStringBuilder = new StringBuilder();
          localStringBuilder.append("Invalid number: ");
          localStringBuilder.append(paramString.substring(paramInt1, paramInt2));
          throw new NumberFormatException(localStringBuilder.toString());
        }
      }
      else
      {
        j = 0;
        i = paramInt1;
      }
      while (i < paramInt2)
      {
        int k = Character.digit(paramString.charAt(i), 10);
        if (k >= 0)
        {
          j = j * 10 - k;
          i++;
        }
        else
        {
          localStringBuilder = new StringBuilder();
          localStringBuilder.append("Invalid number: ");
          localStringBuilder.append(paramString.substring(paramInt1, paramInt2));
          throw new NumberFormatException(localStringBuilder.toString());
        }
      }
      return -j;
    }
    throw new NumberFormatException(paramString);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.gson.internal.bind.util.ISO8601Utils
 * JD-Core Version:    0.7.0.1
 */
package com.google.gson.internal;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Locale;

public class PreJava9DateFormatProvider
{
  private static String getDateFormatPattern(int paramInt)
  {
    if (paramInt != 0)
    {
      if (paramInt != 1)
      {
        if (paramInt != 2)
        {
          if (paramInt == 3) {
            return "M/d/yy";
          }
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append("Unknown DateFormat style: ");
          localStringBuilder.append(paramInt);
          throw new IllegalArgumentException(localStringBuilder.toString());
        }
        return "MMM d, y";
      }
      return "MMMM d, y";
    }
    return "EEEE, MMMM d, y";
  }
  
  private static String getDatePartOfDateTimePattern(int paramInt)
  {
    if (paramInt != 0)
    {
      if (paramInt != 1)
      {
        if (paramInt != 2)
        {
          if (paramInt == 3) {
            return "M/d/yy";
          }
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append("Unknown DateFormat style: ");
          localStringBuilder.append(paramInt);
          throw new IllegalArgumentException(localStringBuilder.toString());
        }
        return "MMM d, yyyy";
      }
      return "MMMM d, yyyy";
    }
    return "EEEE, MMMM d, yyyy";
  }
  
  private static String getTimePartOfDateTimePattern(int paramInt)
  {
    if ((paramInt != 0) && (paramInt != 1))
    {
      if (paramInt != 2)
      {
        if (paramInt == 3) {
          return "h:mm a";
        }
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown DateFormat style: ");
        localStringBuilder.append(paramInt);
        throw new IllegalArgumentException(localStringBuilder.toString());
      }
      return "h:mm:ss a";
    }
    return "h:mm:ss a z";
  }
  
  public static DateFormat getUSDateFormat(int paramInt)
  {
    return new SimpleDateFormat(getDateFormatPattern(paramInt), Locale.US);
  }
  
  public static DateFormat getUSDateTimeFormat(int paramInt1, int paramInt2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(getDatePartOfDateTimePattern(paramInt1));
    localStringBuilder.append(" ");
    localStringBuilder.append(getTimePartOfDateTimePattern(paramInt2));
    return new SimpleDateFormat(localStringBuilder.toString(), Locale.US);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.gson.internal.PreJava9DateFormatProvider
 * JD-Core Version:    0.7.0.1
 */
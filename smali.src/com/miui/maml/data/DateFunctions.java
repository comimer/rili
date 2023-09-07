package com.miui.maml.data;

import com.miui.maml.util.Utils;
import java.time.DayOfWeek;
import java.time.Instant;
import java.time.LocalDate;
import java.time.Month;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.chrono.ChronoZonedDateTime;
import java.time.chrono.IsoChronology;
import java.time.temporal.ChronoUnit;

public class DateFunctions
  extends Expression.FunctionImpl
{
  public static final int REPEAT_MONTH = 2;
  public static final int REPEAT_NO = 0;
  public static final int REPEAT_WEEK = 3;
  public static final int REPEAT_YEAR = 1;
  
  public DateFunctions(int paramInt)
  {
    super(paramInt);
  }
  
  private LocalDate changeYear(LocalDate paramLocalDate, int paramInt)
  {
    int i;
    if ((!IsoChronology.INSTANCE.isLeapYear(paramInt)) && (paramLocalDate.getMonthValue() == 2) && (paramLocalDate.getDayOfMonth() == 29)) {
      i = 1;
    } else {
      i = 0;
    }
    Month localMonth = paramLocalDate.getMonth();
    int j = paramLocalDate.getDayOfMonth();
    int k = j;
    if (i != 0) {
      k = j - 1;
    }
    return LocalDate.of(paramInt, localMonth, k);
  }
  
  private long diffDateMonth(LocalDate paramLocalDate1, LocalDate paramLocalDate2)
  {
    int i = paramLocalDate1.getDayOfMonth();
    int j = paramLocalDate2.lengthOfMonth();
    int k = paramLocalDate2.getDayOfMonth();
    int m = j - k;
    int n = paramLocalDate2.plusMonths(1L).lengthOfMonth();
    if (i >= k)
    {
      if (i > j) {
        return m;
      }
      return i - k;
    }
    if (i > n) {
      return m + n;
    }
    return m + i;
  }
  
  private long diffDateYear(LocalDate paramLocalDate1, LocalDate paramLocalDate2)
  {
    if ((paramLocalDate1.getMonthValue() <= paramLocalDate2.getMonthValue()) && ((paramLocalDate1.getMonthValue() != paramLocalDate2.getMonthValue()) || (paramLocalDate1.getDayOfMonth() < paramLocalDate2.getDayOfMonth())))
    {
      paramLocalDate1 = changeYear(paramLocalDate1, paramLocalDate2.getYear() + 1);
      return ChronoUnit.DAYS.between(paramLocalDate2, paramLocalDate1);
    }
    paramLocalDate1 = changeYear(paramLocalDate1, paramLocalDate2.getYear());
    if ((!paramLocalDate2.isLeapYear()) && (paramLocalDate1.getMonth() == Month.FEBRUARY) && (paramLocalDate1.getDayOfMonth() == 29)) {
      return paramLocalDate1.getDayOfYear() - 1 - paramLocalDate2.getDayOfYear();
    }
    return paramLocalDate1.getDayOfYear() - paramLocalDate2.getDayOfYear();
  }
  
  static void load()
  {
    Expression.FunctionExpression.registerFunction("diffDate", new DateFunctions(3));
  }
  
  long diffDate(long paramLong1, long paramLong2, int paramInt)
  {
    return diffDate(long2LocalDate(paramLong1), long2LocalDate(paramLong2), paramInt);
  }
  
  long diffDate(LocalDate paramLocalDate1, LocalDate paramLocalDate2, int paramInt)
  {
    if (1 == paramInt) {
      return diffDateYear(paramLocalDate1, paramLocalDate2);
    }
    if (2 == paramInt) {
      return diffDateMonth(paramLocalDate1, paramLocalDate2);
    }
    if (3 == paramInt)
    {
      paramInt = paramLocalDate1.getDayOfWeek().getValue();
      int i = paramLocalDate2.getDayOfWeek().getValue();
      if (paramInt >= i) {}
      for (;;)
      {
        return paramInt - i;
        paramInt += 7;
      }
    }
    return paramLocalDate1.toEpochDay() - paramLocalDate2.toEpochDay();
  }
  
  public double evaluate(Expression[] paramArrayOfExpression, Variables paramVariables)
  {
    return diffDate(paramArrayOfExpression[0].evaluate(), paramArrayOfExpression[1].evaluate(), (int)paramArrayOfExpression[2].evaluate());
  }
  
  public String evaluateStr(Expression[] paramArrayOfExpression, Variables paramVariables)
  {
    return Utils.doubleToString(evaluate(paramArrayOfExpression, paramVariables));
  }
  
  long localDate2Long(LocalDate paramLocalDate)
  {
    return paramLocalDate.atStartOfDay(ZoneId.systemDefault()).toInstant().toEpochMilli();
  }
  
  LocalDate long2LocalDate(long paramLong)
  {
    return Instant.ofEpochMilli(paramLong).atZone(ZoneId.systemDefault()).toLocalDate();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.data.DateFunctions
 * JD-Core Version:    0.7.0.1
 */
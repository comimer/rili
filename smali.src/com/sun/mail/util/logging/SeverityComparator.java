package com.sun.mail.util.logging;

import java.io.Serializable;
import java.util.Comparator;
import java.util.logging.Level;
import java.util.logging.LogRecord;

public class SeverityComparator
  implements Comparator<LogRecord>, Serializable
{
  private static final Comparator<LogRecord> INSTANCE = new SeverityComparator();
  private static final long serialVersionUID = -2620442245251791965L;
  
  private int compare(long paramLong1, long paramLong2)
  {
    boolean bool = paramLong1 < paramLong2;
    int i;
    if (bool) {
      i = -1;
    } else if (i > 0) {
      i = 1;
    } else {
      i = 0;
    }
    return i;
  }
  
  private int compare(Level paramLevel1, Level paramLevel2)
  {
    int i;
    if (paramLevel1 == paramLevel2) {
      i = 0;
    } else {
      i = compare(paramLevel1.intValue(), paramLevel2.intValue());
    }
    return i;
  }
  
  static SeverityComparator getInstance()
  {
    return (SeverityComparator)INSTANCE;
  }
  
  private static String toString(Object paramObject1, Object paramObject2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramObject1);
    localStringBuilder.append(", ");
    localStringBuilder.append(paramObject2);
    return localStringBuilder.toString();
  }
  
  public Throwable apply(Throwable paramThrowable)
  {
    Object localObject1 = null;
    int i = 0;
    Throwable localThrowable = paramThrowable;
    Object localObject2 = localObject1;
    while (paramThrowable != null)
    {
      if (isNormal(paramThrowable)) {
        localObject2 = paramThrowable;
      }
      Object localObject3 = localObject1;
      if (localObject2 == null)
      {
        localObject3 = localObject1;
        if ((paramThrowable instanceof Error)) {
          localObject3 = paramThrowable;
        }
      }
      i++;
      if (i == 65536)
      {
        localObject1 = localObject3;
        break label80;
      }
      localObject1 = paramThrowable.getCause();
      localThrowable = paramThrowable;
      paramThrowable = (Throwable)localObject1;
      localObject1 = localObject3;
    }
    paramThrowable = localThrowable;
    label80:
    if (localObject1 != null) {
      paramThrowable = (Throwable)localObject1;
    } else if (localObject2 != null) {
      paramThrowable = (Throwable)localObject2;
    }
    return paramThrowable;
  }
  
  public final int applyThenCompare(Throwable paramThrowable1, Throwable paramThrowable2)
  {
    int i;
    if (paramThrowable1 == paramThrowable2) {
      i = 0;
    } else {
      i = compareThrowable(apply(paramThrowable1), apply(paramThrowable2));
    }
    return i;
  }
  
  public int compare(LogRecord paramLogRecord1, LogRecord paramLogRecord2)
  {
    if ((paramLogRecord1 != null) && (paramLogRecord2 != null))
    {
      if (paramLogRecord1 == paramLogRecord2) {
        return 0;
      }
      int i = compare(paramLogRecord1.getLevel(), paramLogRecord2.getLevel());
      int j = i;
      if (i == 0)
      {
        i = applyThenCompare(paramLogRecord1.getThrown(), paramLogRecord2.getThrown());
        j = i;
        if (i == 0)
        {
          i = compare(paramLogRecord1.getSequenceNumber(), paramLogRecord2.getSequenceNumber());
          j = i;
          if (i == 0) {
            j = compare(paramLogRecord1.getMillis(), paramLogRecord2.getMillis());
          }
        }
      }
      return j;
    }
    throw new NullPointerException(toString(paramLogRecord1, paramLogRecord2));
  }
  
  public int compareThrowable(Throwable paramThrowable1, Throwable paramThrowable2)
  {
    int i = 0;
    int j = 0;
    int k = 0;
    if (paramThrowable1 == paramThrowable2) {
      return 0;
    }
    int m = 1;
    int n = 1;
    if (paramThrowable1 == null)
    {
      if (isNormal(paramThrowable2)) {
        k = n;
      } else {
        k = -1;
      }
      return k;
    }
    if (paramThrowable2 == null)
    {
      k = m;
      if (isNormal(paramThrowable1)) {
        k = -1;
      }
      return k;
    }
    if (paramThrowable1.getClass() == paramThrowable2.getClass()) {
      return 0;
    }
    if (isNormal(paramThrowable1))
    {
      if (!isNormal(paramThrowable2)) {
        k = -1;
      }
      return k;
    }
    if (isNormal(paramThrowable2)) {
      return 1;
    }
    if ((paramThrowable1 instanceof Error)) {
      return paramThrowable2 instanceof Error ^ true;
    }
    if ((paramThrowable1 instanceof RuntimeException))
    {
      if ((paramThrowable2 instanceof Error)) {
        k = -1;
      } else if ((paramThrowable2 instanceof RuntimeException)) {
        k = i;
      } else {
        k = 1;
      }
      return k;
    }
    if (!(paramThrowable2 instanceof Error))
    {
      k = j;
      if (!(paramThrowable2 instanceof RuntimeException)) {}
    }
    else
    {
      k = -1;
    }
    return k;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool = false;
    if ((paramObject != null) && (paramObject.getClass() == getClass())) {
      bool = true;
    }
    return bool;
  }
  
  public int hashCode()
  {
    return getClass().hashCode() * 31;
  }
  
  public boolean isNormal(Throwable paramThrowable)
  {
    if (paramThrowable == null) {
      return false;
    }
    for (paramThrowable = paramThrowable.getClass(); paramThrowable != Throwable.class; paramThrowable = paramThrowable.getSuperclass()) {
      if (Error.class.isAssignableFrom(paramThrowable))
      {
        if (paramThrowable.getName().equals("java.lang.ThreadDeath")) {
          return true;
        }
      }
      else if (paramThrowable.getName().contains("Interrupt")) {
        return true;
      }
    }
    return false;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.sun.mail.util.logging.SeverityComparator
 * JD-Core Version:    0.7.0.1
 */
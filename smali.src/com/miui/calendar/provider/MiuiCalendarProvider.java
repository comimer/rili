package com.miui.calendar.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Build.VERSION;
import android.util.SparseArray;
import com.miui.calendar.holiday.model.HolidaySchema;
import com.miui.calendar.util.DaysOffUtils;
import com.miui.calendar.util.DaysOffUtils.DaysOffScheme;
import com.miui.calendar.util.z;
import com.miui.calendar.util.z0;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import o1.i;
import z3.d;

public class MiuiCalendarProvider
  extends ContentProvider
{
  private static final UriMatcher a;
  private static final SparseArray<String> b;
  
  static
  {
    Object localObject = new UriMatcher(-1);
    a = (UriMatcher)localObject;
    ((UriMatcher)localObject).addURI("com.miui.calendar", "daysoff", 1);
    ((UriMatcher)localObject).addURI("com.miui.calendar", "daysoff/#", 2);
    ((UriMatcher)localObject).addURI("com.miui.calendar", "holiday", 3);
    ((UriMatcher)localObject).addURI("com.miui.calendar", "ctaPermission", 4);
    ((UriMatcher)localObject).addURI("com.miui.calendar", "noticePermission", 5);
    localObject = new SparseArray();
    b = (SparseArray)localObject;
    ((SparseArray)localObject).append(0, "元旦");
    ((SparseArray)localObject).append(1, "春节");
    ((SparseArray)localObject).append(2, "清明节");
    ((SparseArray)localObject).append(3, "劳动节");
    ((SparseArray)localObject).append(4, "端午节");
    ((SparseArray)localObject).append(5, "中秋节");
    ((SparseArray)localObject).append(6, "国庆节");
  }
  
  private List<HolidaySchema> b(List<HolidaySchema> paramList)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      HolidaySchema localHolidaySchema = (HolidaySchema)localIterator.next();
      Object localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("nation name:");
      ((StringBuilder)localObject1).append(localHolidaySchema.name);
      ((StringBuilder)localObject1).append(" holidayId:");
      ((StringBuilder)localObject1).append(localHolidaySchema.holidayId);
      ((StringBuilder)localObject1).append(" date:");
      ((StringBuilder)localObject1).append(localHolidaySchema.date);
      z.a("Cal:D:MiuiCalendarProvider", ((StringBuilder)localObject1).toString());
      localObject1 = new ArrayList();
      Object localObject2 = new Date();
      ((Date)localObject2).setTime(localHolidaySchema.holidayMillis);
      Object localObject3 = Calendar.getInstance();
      ((Calendar)localObject3).setTime((Date)localObject2);
      int i = ((Calendar)localObject3).get(6);
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("day of year:");
      ((StringBuilder)localObject2).append(i);
      z.a("Cal:D:MiuiCalendarProvider", ((StringBuilder)localObject2).toString());
      int j = ((Calendar)localObject3).get(1);
      localObject3 = new StringBuilder();
      ((StringBuilder)localObject3).append("current year:");
      ((StringBuilder)localObject3).append(j);
      z.a("Cal:D:MiuiCalendarProvider", ((StringBuilder)localObject3).toString());
      localObject3 = Calendar.getInstance();
      if (i < 10)
      {
        ((Calendar)localObject3).clear();
        int k = j - 1;
        ((Calendar)localObject3).set(1, k);
        ((Calendar)localObject3).roll(6, -1);
        int m = ((Calendar)localObject3).get(6);
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append("last day of year:");
        ((StringBuilder)localObject2).append(m);
        z.a("Cal:D:MiuiCalendarProvider", ((StringBuilder)localObject2).toString());
        n = m - (10 - i);
        i += 10;
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append("start:");
        ((StringBuilder)localObject2).append(n);
        ((StringBuilder)localObject2).append(" end:");
        ((StringBuilder)localObject2).append(i);
        z.a("Cal:D:MiuiCalendarProvider", ((StringBuilder)localObject2).toString());
        while (n <= m)
        {
          ((Calendar)localObject3).clear();
          if (DaysOffUtils.g(getContext()).e(k, n) == 1)
          {
            ((Calendar)localObject3).set(1, k);
            ((Calendar)localObject3).set(6, n);
            ((List)localObject1).add(Long.valueOf(((Calendar)localObject3).getTimeInMillis()));
          }
          n++;
        }
        for (n = 1; n < i; n++)
        {
          ((Calendar)localObject3).clear();
          if (DaysOffUtils.g(getContext()).e(j, n) == 1)
          {
            ((Calendar)localObject3).set(1, j);
            ((Calendar)localObject3).set(6, n);
            ((List)localObject1).add(Long.valueOf(((Calendar)localObject3).getTimeInMillis()));
          }
        }
      }
      int n = i - 10;
      i = i + 10 - 1;
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("start:");
      ((StringBuilder)localObject2).append(n);
      ((StringBuilder)localObject2).append(" end:");
      ((StringBuilder)localObject2).append(i);
      z.a("Cal:D:MiuiCalendarProvider", ((StringBuilder)localObject2).toString());
      while (n < i)
      {
        ((Calendar)localObject3).clear();
        if (DaysOffUtils.g(getContext()).e(j, n) == 1)
        {
          ((Calendar)localObject3).set(1, j);
          ((Calendar)localObject3).set(6, n);
          ((List)localObject1).add(Long.valueOf(((Calendar)localObject3).getTimeInMillis()));
        }
        n++;
      }
      if (!((List)localObject1).isEmpty())
      {
        localHolidaySchema.start = ((int)(((Long)((List)localObject1).get(0)).longValue() / 1000L));
        localHolidaySchema.end = ((int)(((Long)((List)localObject1).get(((List)localObject1).size() - 1)).longValue() / 1000L));
      }
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("holidaySchema range:[");
      ((StringBuilder)localObject1).append(localHolidaySchema.start);
      ((StringBuilder)localObject1).append("-");
      ((StringBuilder)localObject1).append(localHolidaySchema.end);
      ((StringBuilder)localObject1).append("]");
      z.a("Cal:D:MiuiCalendarProvider", ((StringBuilder)localObject1).toString());
    }
    return paramList;
  }
  
  private long d(Uri paramUri)
  {
    try
    {
      long l = Long.parseLong((String)paramUri.getPathSegments().get(1));
      return l;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Invalid id in uri: ");
      localStringBuilder.append(paramUri);
      throw new IllegalArgumentException(localStringBuilder.toString(), localNumberFormatException);
    }
  }
  
  private List<HolidaySchema> e(ArrayList<HolidaySchema> paramArrayList)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramArrayList.iterator();
    if (localIterator.hasNext())
    {
      paramArrayList = (HolidaySchema)localIterator.next();
      for (int i = 0;; i++)
      {
        SparseArray localSparseArray = b;
        if (i >= localSparseArray.size()) {
          break;
        }
        if (paramArrayList.name.contains((CharSequence)localSparseArray.get(i)))
        {
          paramArrayList.holidayId = localSparseArray.keyAt(i);
          localArrayList.add(paramArrayList);
          break;
        }
      }
    }
    Collections.sort(localArrayList, new i4.a());
    return b(localArrayList);
  }
  
  public int delete(Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    return 0;
  }
  
  public String getType(Uri paramUri)
  {
    return null;
  }
  
  public Uri insert(Uri paramUri, ContentValues paramContentValues)
  {
    return null;
  }
  
  public boolean onCreate()
  {
    return true;
  }
  
  public Cursor query(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    int i = a.match(paramUri);
    int j;
    if (i != 1)
    {
      if (i != 2)
      {
        if (i != 3)
        {
          if (i != 4)
          {
            if (i != 5)
            {
              paramArrayOfString1 = new StringBuilder();
              paramArrayOfString1.append("Cannot query URI: ");
              paramArrayOfString1.append(paramUri);
              z.c("Cal:D:MiuiCalendarProvider", paramArrayOfString1.toString());
              return null;
            }
            z.a("Cal:D:MiuiCalendarProvider", "case CHECK_NOTICE_PERMISSION");
            paramUri = new MatrixCursor(new String[] { "is_agree_with_notice" });
            boolean bool;
            if (Build.VERSION.SDK_INT >= 33)
            {
              if (androidx.core.content.a.a(getContext(), "android.permission.POST_NOTIFICATIONS") == 0) {
                bool = true;
              } else {
                bool = false;
              }
            }
            else {
              bool = i.a(getContext());
            }
            paramUri.addRow(new Object[] { Boolean.valueOf(bool) });
            return paramUri;
          }
          z.a("Cal:D:MiuiCalendarProvider", "case CHECK_CTA_PERMISSION");
          paramUri = new MatrixCursor(new String[] { "is_agree_with_cta" });
          paramUri.addRow(new Object[] { Boolean.valueOf(z0.i(getContext())) });
          return paramUri;
        }
        z.a("Cal:D:MiuiCalendarProvider", "case HOLIDAY");
        if ((!z0.m()) && (!z0.i(getContext()))) {
          return null;
        }
        paramString1 = new MatrixCursor(new String[] { "holiday_id", "holiday_name", "holiday_date", "holiday_start", "holiday_end" });
        paramUri = e(d.h(getContext()).b()).iterator();
        while (paramUri.hasNext())
        {
          paramArrayOfString1 = (HolidaySchema)paramUri.next();
          paramString1.addRow(new Object[] { Integer.valueOf(paramArrayOfString1.holidayId), paramArrayOfString1.name, Integer.valueOf((int)paramArrayOfString1.date), Integer.valueOf(paramArrayOfString1.start), Integer.valueOf(paramArrayOfString1.end) });
        }
        return paramString1;
      }
      paramArrayOfString1 = new MatrixCursor(new String[] { "daysoff_year", "daysoff_dayofyear", "daysoff_type" });
      long l = d(paramUri);
      paramUri = Calendar.getInstance();
      paramUri.setTimeInMillis(l);
      j = paramUri.get(1);
      i = paramUri.get(6);
      paramArrayOfString1.addRow(new Object[] { Integer.valueOf(j), Integer.valueOf(i), Integer.valueOf(DaysOffUtils.g(getContext()).e(j, i)) });
      return paramArrayOfString1;
    }
    paramString1 = new MatrixCursor(new String[] { "daysoff_year", "daysoff_dayofyear", "daysoff_type" });
    paramArrayOfString1 = DaysOffUtils.g(getContext()).a();
    if ((paramArrayOfString1 != null) && (paramArrayOfString1.size() > 0)) {
      for (i = 0; i < paramArrayOfString1.size(); i++)
      {
        paramUri = (DaysOffUtils.DaysOffScheme)paramArrayOfString1.valueAt(i);
        paramArrayOfString2 = paramUri.workday;
        int k;
        int m;
        if ((paramArrayOfString2 != null) && (paramArrayOfString2.length > 0))
        {
          k = paramArrayOfString2.length;
          for (j = 0; j < k; j++)
          {
            m = paramArrayOfString2[j];
            paramString1.addRow(new Object[] { Integer.valueOf(paramUri.year), Integer.valueOf(m), Integer.valueOf(2) });
          }
        }
        paramArrayOfString2 = paramUri.freeday;
        if ((paramArrayOfString2 != null) && (paramArrayOfString2.length > 0))
        {
          k = paramArrayOfString2.length;
          for (j = 0; j < k; j++)
          {
            m = paramArrayOfString2[j];
            paramString1.addRow(new Object[] { Integer.valueOf(paramUri.year), Integer.valueOf(m), Integer.valueOf(1) });
          }
        }
      }
    }
    return paramString1;
  }
  
  public int update(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    return 0;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.provider.MiuiCalendarProvider
 * JD-Core Version:    0.7.0.1
 */
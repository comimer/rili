package z3;

import android.content.Context;
import android.text.TextUtils;
import com.miui.calendar.util.a0;
import com.miui.calendar.util.y;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import miui.os.Build;

public class f
{
  private static SimpleDateFormat a = new SimpleDateFormat("yyyyMMdd");
  private static Date b = new Date();
  private static com.miui.calendar.holiday.utils.Calendar c = new com.miui.calendar.holiday.utils.Calendar();
  
  public static ArrayList<String> a(Context paramContext, long paramLong)
  {
    return b(paramContext, paramLong, false);
  }
  
  public static ArrayList<String> b(Context paramContext, long paramLong, boolean paramBoolean)
  {
    k localk = k.d();
    c.setTimeInMillis(paramLong);
    ArrayList localArrayList = c(paramContext, paramLong, paramBoolean);
    if ((localArrayList != null) && (localArrayList.size() > 0) && (!TextUtils.isEmpty((CharSequence)localArrayList.get(0)))) {
      return localArrayList;
    }
    if (y.m(paramContext))
    {
      paramContext = localArrayList;
      if (localArrayList == null) {
        paramContext = new ArrayList();
      }
      paramContext.add(localk.f(c));
      return paramContext;
    }
    return new ArrayList();
  }
  
  public static ArrayList<String> c(Context paramContext, long paramLong, boolean paramBoolean)
  {
    if ((Build.checkRegion("CN")) && ((y.b()) || (y.c()) || (y.f(paramContext))))
    {
      paramContext = java.util.Calendar.getInstance();
      paramContext.setTimeInMillis(paramLong);
      int i = paramContext.get(1);
      int j = paramContext.get(2);
      int k = paramContext.get(5);
      ArrayList localArrayList = new ArrayList();
      if (e(paramContext, 4, 2, 1)) {
        localArrayList.add(e.e);
      } else if (e(paramContext, 5, 3, 1)) {
        localArrayList.add(e.d);
      } else if (e(paramContext, 10, 4, 5)) {
        localArrayList.add(e.f);
      }
      int m = (j + 1) * 100 + k;
      int n = -1;
      int i1 = m;
      if (i == 2020)
      {
        i2 = m;
        if (m == 607) {
          i2 = -1;
        }
        i1 = i2;
        if (i2 == 707) {
          i1 = 607;
        }
      }
      if ((i < 1949) && (i1 == 1001)) {
        i1 = n;
      }
      if (paramBoolean) {
        paramContext = (String)e.g.get(Integer.valueOf(i1));
      } else {
        paramContext = (String)e.b.get(Integer.valueOf(i1));
      }
      if (paramContext != null) {
        localArrayList.add(paramContext);
      }
      paramContext = a0.d(i, j, k);
      if (paramContext[3] == 1) {
        localArrayList.add(null);
      }
      n = paramContext[1];
      m = paramContext[2];
      int i2 = n * 100 + m;
      i1 = i2;
      if (n == 12)
      {
        i1 = i2;
        if (m == 29)
        {
          i1 = i2;
          if (a0.d(i, j, k + 1)[2] != 30) {
            i1 = i2 + 1;
          }
        }
      }
      paramContext = (String)e.c.get(Integer.valueOf(i1));
      if (paramContext != null) {
        localArrayList.add(paramContext);
      }
      return localArrayList;
    }
    return new ArrayList();
  }
  
  public static String d(long paramLong)
  {
    String str2;
    try
    {
      b.setTime(paramLong);
      String str1 = a.format(b);
    }
    catch (Exception localException)
    {
      str2 = "";
    }
    return (String)q.a.get(str2);
  }
  
  public static boolean e(java.util.Calendar paramCalendar, int paramInt1, int paramInt2, int paramInt3)
  {
    int i = paramCalendar.get(2);
    int j = paramCalendar.get(7);
    boolean bool1 = false;
    boolean bool2 = bool1;
    if (i == paramInt1)
    {
      bool2 = bool1;
      if (j == paramInt3)
      {
        i = paramCalendar.get(5);
        paramInt1 = (paramInt2 - 1) * 7;
        bool2 = bool1;
        if (i >= paramInt1 + 1)
        {
          bool2 = bool1;
          if (i <= paramInt2 * 7)
          {
            java.util.Calendar localCalendar = java.util.Calendar.getInstance();
            localCalendar.setTimeInMillis(paramCalendar.getTimeInMillis());
            localCalendar.set(5, 1);
            bool2 = bool1;
            if (i == (paramInt3 + 7 - localCalendar.get(7)) % 7 + paramInt1 + 1) {
              bool2 = true;
            }
          }
        }
      }
    }
    return bool2;
  }
  
  public static ArrayList<String> f(ArrayList<String> paramArrayList)
  {
    if (paramArrayList == null) {
      return new ArrayList();
    }
    if (paramArrayList.size() == 1) {
      return paramArrayList;
    }
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    ArrayList localArrayList3 = new ArrayList();
    ArrayList localArrayList4 = new ArrayList();
    ArrayList localArrayList5 = new ArrayList();
    if (paramArrayList.isEmpty()) {
      return paramArrayList;
    }
    for (int i = 0; i < paramArrayList.size(); i++)
    {
      String str = (String)paramArrayList.get(i);
      if (!TextUtils.isEmpty(str)) {
        if (e.h.contains(str)) {
          localArrayList1.add(str);
        } else if (e.i.contains(str)) {
          localArrayList2.add(str);
        } else if (q.a.values().contains(str)) {
          localArrayList3.add(str);
        } else if (e.j.contains(str)) {
          localArrayList4.add(str);
        } else {
          localArrayList5.add(str);
        }
      }
    }
    paramArrayList.clear();
    paramArrayList.addAll(localArrayList1);
    paramArrayList.addAll(localArrayList2);
    paramArrayList.addAll(localArrayList3);
    paramArrayList.addAll(localArrayList4);
    paramArrayList.addAll(localArrayList5);
    return paramArrayList;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     z3.f
 * JD-Core Version:    0.7.0.1
 */
package z3;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.util.ArrayMap;
import android.util.SparseIntArray;
import com.android.calendar.application.CalendarApplication;
import com.miui.calendar.holiday.utils.Calendar;
import miui.os.Build;
import miuix.core.util.e;
import miuix.core.util.e.d;
import miuix.core.util.e.e;
import miuix.core.util.f;

public class k
{
  private static final ArrayMap<String, int[][]> d;
  private static final int[][] e;
  private static final f<k> f = new b(null);
  private static final e.e<Calendar> g = e.b(new a(), 1);
  private static final SparseIntArray h = new SparseIntArray();
  private static c i;
  private String a;
  private Resources b = CalendarApplication.e().getApplicationContext().getResources();
  private boolean c;
  
  static
  {
    Object localObject = { -1, 2131887637 };
    int[] arrayOfInt1 = { 101, 2131887663 };
    int[] arrayOfInt2 = { 102, 2131887659 };
    int[] arrayOfInt3 = { 103, 2131887666 };
    int[] arrayOfInt4 = { 104, 2131887640 };
    int[] arrayOfInt5 = { 105, 2131887638 };
    int[] arrayOfInt6 = { 107, 2131887660 };
    int[] arrayOfInt7 = { 115, 2131887647 };
    int[] arrayOfInt8 = { 505, 2131887634 };
    int[] arrayOfInt9 = { 707, 2131887653 };
    int[] arrayOfInt10 = { 715, 2131887662 };
    int[] arrayOfInt11 = { 815, 2131887648 };
    int[] arrayOfInt12 = { 909, 2131887632 };
    int[] arrayOfInt13 = { 1015, 2131887671 };
    int[] arrayOfInt14 = { 1208, 2131887643 };
    e = new int[][] { localObject, arrayOfInt1, arrayOfInt2, arrayOfInt3, arrayOfInt4, arrayOfInt5, { 106, 2131887661 }, arrayOfInt6, arrayOfInt7, arrayOfInt8, arrayOfInt9, arrayOfInt10, arrayOfInt11, arrayOfInt12, arrayOfInt13, arrayOfInt14 };
    localObject = new ArrayMap();
    d = (ArrayMap)localObject;
    arrayOfInt1 = new int[] { 312, 2131887625 };
    arrayOfInt2 = new int[] { 1225, 2131887631 };
    ((ArrayMap)localObject).put("", new int[][] { { 101, 2131887652 }, { 214, 2131887670 }, { 308, 2131887642 }, arrayOfInt1, { 401, 2131887639 }, { 501, 2131887646 }, arrayOfInt2 });
    arrayOfInt1 = new int[] { 101, 2131887652 };
    arrayOfInt2 = new int[] { 214, 2131887670 };
    arrayOfInt3 = new int[] { 401, 2131887639 };
    arrayOfInt4 = new int[] { 501, 2131887646 };
    arrayOfInt5 = new int[] { 504, 2131887630 };
    arrayOfInt6 = new int[] { 601, 2131887629 };
    arrayOfInt7 = new int[] { 701, 2131887654 };
    arrayOfInt8 = new int[] { 910, 2131887665 };
    arrayOfInt9 = new int[] { 1001, 2131887650 };
    arrayOfInt10 = new int[] { 1225, 2131887631 };
    ((ArrayMap)localObject).put("CN", new int[][] { arrayOfInt1, arrayOfInt2, { 308, 2131887642 }, { 312, 2131887625 }, arrayOfInt3, arrayOfInt4, arrayOfInt5, arrayOfInt6, arrayOfInt7, { 801, 2131887627 }, arrayOfInt8, arrayOfInt9, arrayOfInt10 });
    ((ArrayMap)localObject).put("TW", new int[][] { { 101, 2131887652 }, { 214, 2131887670 }, { 228, 2131887655 }, { 308, 2131887642 }, { 312, 2131887625 }, { 314, 2131887624 }, { 329, 2131887668 }, { 401, 2131887639 }, { 404, 2131887667 }, { 501, 2131887646 }, { 715, 2131887623 }, { 903, 2131887626 }, { 928, 2131887665 }, { 1010, 2131887650 }, { 1024, 2131887669 }, { 1025, 2131887658 }, { 1112, 2131887651 }, { 1225, 2131887631 } });
    arrayOfInt1 = new int[] { 501, 2131887646 };
    ((ArrayMap)localObject).put("HK", new int[][] { { -1, 2131887636 }, { 101, 2131887652 }, { 214, 2131887670 }, arrayOfInt1, { 701, 2131887641 }, { 1001, 2131887650 }, { 1225, 2131887631 } });
  }
  
  private k()
  {
    this(Build.getRegion());
  }
  
  private k(String paramString)
  {
    g(paramString);
  }
  
  public static void c()
  {
    try
    {
      if (i != null)
      {
        CalendarApplication.e().getApplicationContext().unregisterReceiver(i);
        i = null;
      }
    }
    catch (NullPointerException localNullPointerException)
    {
      localNullPointerException.printStackTrace();
    }
  }
  
  public static k d()
  {
    return (k)f.c();
  }
  
  private void g(String paramString)
  {
    paramString = paramString.toUpperCase();
    this.a = paramString;
    boolean bool;
    if ((!"CN".equals(paramString)) && (!"HK".equals(this.a)) && (!"TW".equals(this.a))) {
      bool = false;
    } else {
      bool = true;
    }
    this.c = bool;
  }
  
  protected final int e(int paramInt)
  {
    SparseIntArray localSparseIntArray = h;
    int j = localSparseIntArray.get(paramInt, 0);
    int k = j;
    if (j == 0)
    {
      k = Calendar.solarTermDaysOfMonth(paramInt, 2);
      e.e locale = g;
      Calendar localCalendar = ((Calendar)locale.b()).set(paramInt, 2, k & 0xFF, 0, 0, 0, 0);
      if (localCalendar.get(10) < 15)
      {
        k = 15 - localCalendar.get(10);
      }
      else
      {
        if (localCalendar.isChineseLeapMonth()) {
          k = Calendar.leapDaysInChineseYear(paramInt);
        } else {
          k = Calendar.daysInChineseMonth(paramInt, localCalendar.get(6));
        }
        k = 15 + (k - localCalendar.get(10));
      }
      localCalendar.add(9, k);
      switch (localCalendar.get(14))
      {
      default: 
        break;
      case 7: 
        localCalendar.add(9, 1);
        break;
      case 6: 
        localCalendar.add(9, 2);
        break;
      case 5: 
        localCalendar.add(9, 3);
        break;
      case 4: 
        localCalendar.add(9, 4);
        break;
      case 3: 
        localCalendar.add(9, 5);
        break;
      case 2: 
        localCalendar.add(9, 6);
        break;
      case 1: 
        localCalendar.add(9, 7);
      }
      k = (localCalendar.get(5) + 1) * 100 + localCalendar.get(9);
      locale.a(localCalendar);
      localSparseIntArray.put(paramInt, k);
    }
    return k;
  }
  
  public String f(Calendar paramCalendar)
  {
    ArrayMap localArrayMap = d;
    int[][] arrayOfInt = (int[][])localArrayMap.get(this.a);
    Object localObject = arrayOfInt;
    if (arrayOfInt == null) {
      localObject = (int[][])localArrayMap.get("");
    }
    int j = (paramCalendar.get(5) + 1) * 100 + paramCalendar.get(9);
    int k = localObject.length;
    int n;
    for (int m = 0; m < k; m++)
    {
      arrayOfInt = localObject[m];
      n = arrayOfInt[0];
      if (n != -1)
      {
        if (n == j) {
          return this.b.getString(arrayOfInt[1]);
        }
      }
      else if (j == e(paramCalendar.get(1))) {
        return this.b.getString(arrayOfInt[1]);
      }
    }
    if ((this.c) && (!paramCalendar.outOfChineseCalendarRange()))
    {
      j = paramCalendar.get(6);
      k = paramCalendar.get(10);
      for (localObject : e) {
        if (localObject[0] != -1)
        {
          if ((!paramCalendar.isChineseLeapMonth()) && ((j + 1) * 100 + k == localObject[0])) {
            return this.b.getString(localObject[1]);
          }
        }
        else if (Calendar.daysInChineseYear(paramCalendar.get(2)) == paramCalendar.get(13)) {
          return this.b.getString(localObject[1]);
        }
      }
    }
    return "";
  }
  
  class a
    extends e.d<Calendar>
  {
    public Calendar e()
    {
      return new Calendar();
    }
  }
  
  private static class b
    extends f<k>
  {
    static
    {
      IntentFilter localIntentFilter = new IntentFilter();
      localIntentFilter.addAction("android.intent.action.TIME_SET");
      localIntentFilter.addAction("android.intent.action.DATE_CHANGED");
      localIntentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
      localIntentFilter.addAction("android.intent.action.LOCALE_CHANGED");
      k.c localc = new k.c(null);
      try
      {
        CalendarApplication.e().getApplicationContext().registerReceiver(localc, localIntentFilter);
      }
      catch (NullPointerException localNullPointerException)
      {
        localNullPointerException.printStackTrace();
      }
    }
    
    protected k g()
    {
      return new k(null);
    }
  }
  
  private static class c
    extends BroadcastReceiver
  {
    public void onReceive(Context paramContext, Intent paramIntent)
    {
      AsyncTask.execute(new l(paramIntent));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     z3.k
 * JD-Core Version:    0.7.0.1
 */
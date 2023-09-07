package o4;

import android.content.Context;
import android.content.pm.PackageManager;
import com.miui.calendar.util.i;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import r4.a;

public class b
{
  public static int a(List<a> paramList, long paramLong)
  {
    if (!i.d(paramList)) {
      for (int i = 0; i < paramList.size(); i++) {
        if ((paramList.get(i) != null) && (((a)paramList.get(i)).a == paramLong)) {
          return i;
        }
      }
    }
    return -1;
  }
  
  public static long b(List<a> paramList, int paramInt)
  {
    if ((!i.d(paramList)) && (paramInt >= 0) && (paramInt < paramList.size())) {
      return ((a)paramList.get(paramInt)).a;
    }
    return -1;
  }
  
  public static int c(List<a> paramList)
  {
    boolean bool = i.d(paramList);
    int i = 0;
    int j = 0;
    if (!bool)
    {
      paramList = paramList.iterator();
      for (;;)
      {
        i = j;
        if (!paramList.hasNext()) {
          break;
        }
        a locala = (a)paramList.next();
        if ((locala != null) && (locala.f != 1)) {
          j++;
        }
      }
    }
    return i;
  }
  
  public static boolean d(Context paramContext)
  {
    boolean bool1 = false;
    boolean bool2 = bool1;
    if (paramContext != null)
    {
      bool2 = bool1;
      if (paramContext.getPackageManager().resolveContentProvider("com.miui.todo.provider", 0) != null) {
        bool2 = true;
      }
    }
    return bool2;
  }
  
  public static void e(List<a> paramList)
  {
    if (i.d(paramList)) {
      return;
    }
    Collections.sort(paramList, new a());
  }
  
  class a
    implements Comparator<a>
  {
    public int a(a parama1, a parama2)
    {
      int i;
      if (parama1.g - parama2.g > 0L) {
        i = -1;
      } else {
        i = 1;
      }
      return i;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     o4.b
 * JD-Core Version:    0.7.0.1
 */
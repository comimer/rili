package z3;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import com.miui.calendar.util.a0;
import com.miui.calendar.util.y;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentMap;

public class b
{
  private static StringBuffer a = new StringBuffer();
  
  public static a.a a(Context paramContext, Calendar paramCalendar, Resources paramResources)
  {
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = f.b(paramContext, paramCalendar.getTimeInMillis(), true);
    if ((localArrayList2 != null) && (localArrayList2.size() > 0)) {
      for (int i = 0; i < localArrayList2.size(); i++)
      {
        paramContext = (String)localArrayList2.get(i);
        if ((!TextUtils.isEmpty(paramContext)) && (paramContext.length() <= 4)) {
          localArrayList1.add(paramContext);
        }
      }
    }
    paramContext = a0.o(paramResources, paramCalendar);
    if (paramContext != null) {
      localArrayList1.add(paramContext);
    }
    paramContext = f.d(paramCalendar.getTimeInMillis());
    if (!TextUtils.isEmpty(paramContext)) {
      localArrayList1.add(paramContext);
    }
    if (localArrayList1.size() > 0) {
      return new a.a(f.f(localArrayList1), true);
    }
    localArrayList1.add(g(paramCalendar, paramResources));
    return new a.a(localArrayList1, false);
  }
  
  private static a.a b(Context paramContext, Calendar paramCalendar, Resources paramResources)
  {
    String str = e(paramCalendar);
    ConcurrentMap localConcurrentMap = a.b();
    a.a locala = (a.a)localConcurrentMap.get(str);
    if ((localConcurrentMap.containsKey(str)) && (locala != null)) {
      return locala;
    }
    paramContext = a(paramContext, paramCalendar, paramResources);
    localConcurrentMap.put(str, paramContext);
    return paramContext;
  }
  
  public static List<String> c(Context paramContext, Calendar paramCalendar, Resources paramResources)
  {
    return b(paramContext, paramCalendar, paramResources).a;
  }
  
  public static boolean d(Context paramContext, Calendar paramCalendar, Resources paramResources)
  {
    return b(paramContext, paramCalendar, paramResources).b;
  }
  
  private static String e(Calendar paramCalendar)
  {
    if (a == null) {
      a = new StringBuffer();
    }
    a.setLength(0);
    StringBuffer localStringBuffer = a;
    localStringBuffer.append(paramCalendar.get(1));
    localStringBuffer.append("|");
    localStringBuffer.append(paramCalendar.get(2) + 1);
    localStringBuffer.append("|");
    localStringBuffer.append(paramCalendar.get(5));
    return localStringBuffer.toString();
  }
  
  public static String f(Context paramContext, Calendar paramCalendar)
  {
    boolean bool = y.a();
    String str1 = "";
    Object localObject = str1;
    if (bool)
    {
      String str2 = g(paramCalendar, paramContext.getResources());
      List localList = c(paramContext, paramCalendar, paramContext.getResources());
      localObject = str1;
      if (localList != null)
      {
        int i = localList.size();
        int j = 0;
        if (i >= 2)
        {
          ArrayList localArrayList = new ArrayList();
          for (i = 0; i < localList.size(); i++)
          {
            paramCalendar = (String)localList.get(i);
            if ((!TextUtils.isEmpty(paramCalendar)) && (e.h.contains(paramCalendar))) {
              localArrayList.add(paramCalendar);
            }
          }
          if (localArrayList.size() >= 2)
          {
            paramCalendar = new StringBuilder();
            paramCalendar.append("");
            paramCalendar.append(paramContext.getResources().getString(2131887617));
            paramCalendar = paramCalendar.toString();
            for (i = j; i < localArrayList.size(); i++)
            {
              localObject = paramCalendar;
              if (i != 0)
              {
                localObject = new StringBuilder();
                ((StringBuilder)localObject).append(paramCalendar);
                ((StringBuilder)localObject).append(paramContext.getResources().getString(2131887616));
                localObject = ((StringBuilder)localObject).toString();
              }
              paramCalendar = new StringBuilder();
              paramCalendar.append((String)localObject);
              paramCalendar.append((String)localList.get(i));
              paramCalendar = paramCalendar.toString();
            }
            localObject = paramCalendar;
          }
          else
          {
            localObject = str1;
            if (!TextUtils.isEmpty((CharSequence)localList.get(0)))
            {
              localObject = str1;
              if (!((String)localList.get(0)).equals(str2))
              {
                paramCalendar = new StringBuilder();
                paramCalendar.append("");
                paramCalendar.append(paramContext.getResources().getString(2131887617));
                paramCalendar.append((String)localList.get(0));
                localObject = paramCalendar.toString();
              }
            }
          }
        }
        else
        {
          localObject = str1;
          if (localList.size() == 1)
          {
            localObject = str1;
            if (!TextUtils.isEmpty((CharSequence)localList.get(0)))
            {
              localObject = str1;
              if (!((String)localList.get(0)).equals(str2))
              {
                paramCalendar = new StringBuilder();
                paramCalendar.append("");
                paramCalendar.append(paramContext.getResources().getString(2131887617));
                paramCalendar.append((String)localList.get(0));
                localObject = paramCalendar.toString();
              }
            }
          }
        }
      }
    }
    return localObject;
  }
  
  public static String g(Calendar paramCalendar, Resources paramResources)
  {
    paramCalendar = a0.d(paramCalendar.get(1), paramCalendar.get(2), paramCalendar.get(5));
    int i = paramCalendar[2];
    if (i == 1)
    {
      if (paramCalendar[3] == 1)
      {
        localStringBuilder = new StringBuilder();
        localStringBuilder.append(paramResources.getText(2131886329));
        localStringBuilder.append(a0.n(paramResources, paramCalendar[1]));
        localStringBuilder.append(paramResources.getText(2131886555));
        return localStringBuilder.toString();
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(a0.n(paramResources, paramCalendar[1]));
      localStringBuilder.append(paramResources.getText(2131886555));
      return localStringBuilder.toString();
    }
    return a0.k(paramResources, i);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     z3.b
 * JD-Core Version:    0.7.0.1
 */
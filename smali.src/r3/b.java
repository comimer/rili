package r3;

import android.content.Context;
import android.widget.BaseAdapter;
import com.miui.calendar.card.Card;
import com.miui.calendar.card.Card.ContainerType;
import com.miui.calendar.card.single.local.LocalSingleCard;
import com.miui.calendar.card.single.local.SummarySingleCard;
import com.miui.calendar.card.single.local.TodoSingleCard;
import com.miui.calendar.card.single.local.d;
import com.miui.calendar.card.single.local.i;
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.util.z;
import java.util.Calendar;
import java.util.Map;
import s3.a;

public class b
  extends c
{
  public static boolean g;
  
  public static a h(Context paramContext, Card.ContainerType paramContainerType, Calendar paramCalendar, BaseAdapter paramBaseAdapter, int paramInt)
  {
    if (paramInt != 1)
    {
      if (paramInt != 8)
      {
        if (paramInt != 12)
        {
          if (paramInt != 16)
          {
            if (paramInt != 19) {
              return null;
            }
            return new TodoSingleCard(paramContext, paramContainerType, paramCalendar, paramBaseAdapter);
          }
          return new com.miui.calendar.card.single.local.c(paramContext, paramContainerType, paramCalendar, paramBaseAdapter);
        }
        return new d(paramContext, paramContainerType, paramCalendar, paramBaseAdapter);
      }
      if (DeviceUtils.M())
      {
        z.m("Cal:D:LocalMultiCard", "createSingleCard() New MIUI Lite device not support card type:8");
        return null;
      }
      return new i(paramContext, paramContainerType, paramCalendar, paramBaseAdapter);
    }
    return new SummarySingleCard(paramContext, paramContainerType, paramCalendar, paramBaseAdapter);
  }
  
  public static a i(Context paramContext, Card.ContainerType paramContainerType, Calendar paramCalendar, BaseAdapter paramBaseAdapter, int paramInt, Map<String, a> paramMap)
  {
    String str = LocalSingleCard.p(paramInt);
    if ((paramMap != null) && (paramMap.containsKey(str)))
    {
      paramContext = new StringBuilder();
      paramContext.append("getSingleCard() card ");
      paramContext.append(str);
      paramContext.append(" from cache");
      z.a("Cal:D:LocalMultiCard", paramContext.toString());
      paramContext = (a)paramMap.get(str);
      paramContext.f(paramCalendar);
      return paramContext;
    }
    paramContext = h(paramContext, paramContainerType, paramCalendar, paramBaseAdapter, paramInt);
    if (paramContext != null)
    {
      paramContainerType = new StringBuilder();
      paramContainerType.append("getSingleCard() create new card ");
      paramContainerType.append(str);
      z.a("Cal:D:LocalMultiCard", paramContainerType.toString());
      paramMap.put(str, paramContext);
      return paramContext;
    }
    return null;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     r3.b
 * JD-Core Version:    0.7.0.1
 */
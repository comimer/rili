package r3;

import android.content.Context;
import android.widget.BaseAdapter;
import com.miui.calendar.card.Card;
import com.miui.calendar.card.Card.ContainerType;
import com.miui.calendar.card.schema.CustomCardSchema;
import com.miui.calendar.card.single.custom.ClassScheduleSingleCard;
import com.miui.calendar.card.single.custom.CustomSingleCard;
import com.miui.calendar.card.single.custom.FilmSingleCard;
import com.miui.calendar.card.single.custom.FortuneSingleCard;
import com.miui.calendar.card.single.custom.HealthSingleCard;
import com.miui.calendar.card.single.custom.HistorySingleCard;
import com.miui.calendar.card.single.custom.HoroscopeSingleCard;
import com.miui.calendar.card.single.custom.LotterySingleCard;
import com.miui.calendar.card.single.custom.ShiftSingleCard;
import com.miui.calendar.card.single.custom.ad.AdSingleCard;
import com.miui.calendar.card.single.custom.u;
import com.miui.calendar.card.single.custom.y;
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.util.q;
import com.miui.calendar.util.z;
import java.util.Calendar;
import java.util.Map;

public class a
  extends c
{
  public static boolean g;
  public static long h;
  public static long i;
  
  public static void h(Context paramContext)
  {
    q.h(paramContext, "custom_cards");
    q.h(paramContext, "show_manager");
    q.h(paramContext, "manager_card_title");
  }
  
  public static s3.a i(Context paramContext, Card.ContainerType paramContainerType, Calendar paramCalendar, BaseAdapter paramBaseAdapter, CustomCardSchema paramCustomCardSchema)
  {
    int j = paramCustomCardSchema.showType + 20;
    if ((DeviceUtils.M()) && (j != 20))
    {
      paramContext = new StringBuilder();
      paramContext.append("createSingleCard() New MIUI Lite device not support card type:");
      paramContext.append(j);
      z.m("Cal:D:CustomMultiCard", paramContext.toString());
      return null;
    }
    if (j != 20)
    {
      if (j != 21)
      {
        if (j != 28)
        {
          if (j != 29)
          {
            if (j != 32)
            {
              if (j != 42)
              {
                if (j != 47)
                {
                  if (j != 52)
                  {
                    if (j != 53)
                    {
                      if (j != 57)
                      {
                        if (j != 58)
                        {
                          paramContext = new StringBuilder();
                          paramContext.append("createSingleCard() unknown card type:");
                          paramContext.append(j);
                          z.m("Cal:D:CustomMultiCard", paramContext.toString());
                          return null;
                        }
                        return new ClassScheduleSingleCard(paramContext, paramContainerType, paramCalendar, paramBaseAdapter);
                      }
                      return new y(paramContext, paramContainerType, paramCalendar, paramBaseAdapter);
                    }
                    return new ShiftSingleCard(paramContext, paramContainerType, paramCalendar, paramBaseAdapter);
                  }
                  return new u(paramContext, paramContainerType, paramCalendar, paramBaseAdapter);
                }
                return new HistorySingleCard(paramContext, paramContainerType, paramCalendar, paramBaseAdapter);
              }
              return new FortuneSingleCard(paramContext, paramContainerType, paramCalendar, paramBaseAdapter);
            }
            return new HealthSingleCard(paramContext, paramContainerType, paramCalendar, paramBaseAdapter);
          }
          return new LotterySingleCard(paramContext, paramContainerType, paramCalendar, paramBaseAdapter);
        }
        return new HoroscopeSingleCard(paramContext, paramContainerType, paramCalendar, paramBaseAdapter);
      }
      return new FilmSingleCard(paramContext, paramContainerType, paramCalendar, paramBaseAdapter);
    }
    return AdSingleCard.N(paramContext, paramContainerType, paramCalendar, paramBaseAdapter, paramCustomCardSchema);
  }
  
  public static s3.a j(Context paramContext, Card.ContainerType paramContainerType, Calendar paramCalendar, BaseAdapter paramBaseAdapter, CustomCardSchema paramCustomCardSchema, Map<String, s3.a> paramMap)
  {
    String str = CustomSingleCard.y(paramCustomCardSchema.id);
    if (paramMap.containsKey(str))
    {
      s3.a locala = (s3.a)paramMap.get(str);
      if (locala.d(paramCustomCardSchema))
      {
        paramContext = new StringBuilder();
        paramContext.append("getSingleCard() card ");
        paramContext.append(str);
        paramContext.append(" from cache");
        z.a("Cal:D:CustomMultiCard", paramContext.toString());
        locala.f(paramCalendar);
        return locala;
      }
    }
    paramContainerType = i(paramContext, paramContainerType, paramCalendar, paramBaseAdapter, paramCustomCardSchema);
    if (paramContainerType != null)
    {
      paramContext = new StringBuilder();
      paramContext.append("getSingleCard() create new card ");
      paramContext.append(str);
      z.a("Cal:D:CustomMultiCard", paramContext.toString());
      paramMap.put(str, paramContainerType);
      return paramContainerType;
    }
    return null;
  }
  
  public static void k()
  {
    g = false;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     r3.a
 * JD-Core Version:    0.7.0.1
 */
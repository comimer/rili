package com.miui.calendar.card;

import java.util.HashSet;
import java.util.Set;

public class c
{
  public static Set<Integer> a;
  
  static
  {
    HashSet localHashSet = new HashSet();
    a = localHashSet;
    localHashSet.add(Integer.valueOf(21));
    a.add(Integer.valueOf(28));
    a.add(Integer.valueOf(29));
    a.add(Integer.valueOf(32));
    a.add(Integer.valueOf(42));
    a.add(Integer.valueOf(47));
    a.add(Integer.valueOf(52));
    a.add(Integer.valueOf(53));
    a.add(Integer.valueOf(57));
    a.add(Integer.valueOf(58));
  }
  
  public static String a(int paramInt)
  {
    if (paramInt != 20)
    {
      if (paramInt != 21)
      {
        if (paramInt != 28)
        {
          if (paramInt != 29)
          {
            if (paramInt != 32)
            {
              if (paramInt != 42)
              {
                if (paramInt != 47)
                {
                  if (paramInt != 60)
                  {
                    if (paramInt != 68)
                    {
                      if (paramInt != 52)
                      {
                        if (paramInt != 53)
                        {
                          if (paramInt != 57)
                          {
                            if (paramInt != 58) {
                              return "unknown_card";
                            }
                            return "class_schedule_card";
                          }
                          return "menstruation_card";
                        }
                        return "shift_card";
                      }
                      return "limit_card";
                    }
                    return "ad_app_download_card";
                  }
                  return "ad_large_image_card";
                }
                return "history_card";
              }
              return "fortune_card";
            }
            return "health_card";
          }
          return "lottery_card";
        }
        return "horoscope_card";
      }
      return "film_card";
    }
    return "advertisement_card";
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.card.c
 * JD-Core Version:    0.7.0.1
 */